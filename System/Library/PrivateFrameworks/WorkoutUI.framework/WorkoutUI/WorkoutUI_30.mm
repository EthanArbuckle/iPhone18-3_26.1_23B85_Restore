uint64_t one-time initialization function for powerAlerts()
{
  v0 = type metadata accessor for TargetZone.ZoneType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WorkoutUI0D11AlertTesterC04TestdF0VGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20CB6DA80;
  v5 = *MEMORY[0x277D7DE50];
  v31 = *(v1 + 104);
  v31(v3, v5, v0);
  v29 = v1 + 104;
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  v6 = static FIUIWorkoutActivityType.outdoorRun.getter();
  v7 = specialized static WorkoutAlertTester.alertAheadTarget(type:activityType:)(v3, v6, TargetZone.ZoneType.lowRangeValue(activityType:), TargetZone.ZoneType.aboveZoneValue(activityType:));

  v8 = v1 + 8;
  v9 = *(v1 + 8);
  v30 = v8;
  v9(v3, v0);
  *(v4 + 32) = 0xD000000000000018;
  *(v4 + 40) = 0x800000020CB9EEF0;
  *(v4 + 48) = v7;
  v27 = v9;
  v28 = 0x800000020CB9EF10;
  v10 = v5;
  v11 = v5;
  v12 = v31;
  v31(v3, v10, v0);
  v13 = static FIUIWorkoutActivityType.outdoorRun.getter();
  v14 = specialized static WorkoutAlertTester.alertAheadTarget(type:activityType:)(v3, v13, TargetZone.ZoneType.highRangeValue(activityType:), TargetZone.ZoneType.belowZoneValue(activityType:));

  v9(v3, v0);
  v15 = v28;
  *(v4 + 56) = 0xD000000000000019;
  *(v4 + 64) = v15;
  *(v4 + 72) = v14;
  v28 = 0x800000020CB9EF30;
  v12(v3, v11, v0);
  v16 = static FIUIWorkoutActivityType.outdoorRun.getter();
  v17 = specialized static WorkoutAlertTester.alertAheadTargetRange(type:activityType:)(v3, v16, TargetZone.ZoneType.aboveZoneValue(activityType:));

  v18 = v27;
  v27(v3, v0);
  v19 = v28;
  *(v4 + 80) = 0xD00000000000001ELL;
  *(v4 + 88) = v19;
  *(v4 + 96) = v17;
  v28 = 0x800000020CB9EF50;
  v20 = v31;
  v31(v3, v11, v0);
  v21 = static FIUIWorkoutActivityType.outdoorRun.getter();
  v22 = specialized static WorkoutAlertTester.alertAheadTargetRange(type:activityType:)(v3, v21, TargetZone.ZoneType.belowZoneValue(activityType:));

  v18(v3, v0);
  *(v4 + 104) = 0xD00000000000001FLL;
  *(v4 + 112) = v28;
  *(v4 + 120) = v22;
  v20(v3, *MEMORY[0x277D7DE68], v0);
  v23 = static FIUIWorkoutActivityType.outdoorRun.getter();
  v24 = specialized static WorkoutAlertTester.alertAheadTargetRange(type:activityType:)(v3, v23, TargetZone.ZoneType.withinZoneValue(activityType:));

  result = (v18)(v3, v0);
  *(v4 + 128) = 0xD00000000000001FLL;
  *(v4 + 136) = 0x800000020CB9EF70;
  *(v4 + 144) = v24;
  static WorkoutAlertTester.powerAlerts = v4;
  return result;
}

uint64_t (*static WorkoutAlertTester.powerAlerts.modify())()
{
  if (one-time initialization token for powerAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static WorkoutAlertTester.powerAlerts.modify;
}

uint64_t one-time initialization function for raceAlerts()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WorkoutUI0D11AlertTesterC04TestdF0VGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20CB6DA60;
  v1 = type metadata accessor for WorkoutAlertRace();
  v2 = objc_allocWithZone(v1);
  v3 = WorkoutAlertRace.init(type:)();
  strcpy((v0 + 32), "Race Off Route");
  *(v0 + 47) = -18;
  *(v0 + 48) = v3;
  v4 = objc_allocWithZone(v1);
  v5 = WorkoutAlertRace.init(type:)();
  strcpy((v0 + 56), "Race On Route");
  *(v0 + 70) = -4864;
  *(v0 + 72) = v5;
  v6 = objc_allocWithZone(v1);
  v7 = WorkoutAlertRace.init(type:)();
  strcpy((v0 + 80), "Race Expired");
  *(v0 + 93) = 0;
  *(v0 + 94) = -5120;
  *(v0 + 96) = v7;
  v8 = type metadata accessor for WorkoutAlertRaceComplete();
  v9 = objc_allocWithZone(v8);
  v10 = WorkoutAlertRaceComplete.init(type:raceTime:secondsAhead:)();
  *(v0 + 104) = 0xD000000000000019;
  *(v0 + 112) = 0x800000020CB9EE70;
  *(v0 + 120) = v10;
  v11 = objc_allocWithZone(v8);
  v12 = WorkoutAlertRaceComplete.init(type:raceTime:secondsAhead:)();
  *(v0 + 128) = 0xD00000000000001ALL;
  *(v0 + 136) = 0x800000020CB9EE90;
  *(v0 + 144) = v12;
  v13 = objc_allocWithZone(v1);
  v14 = WorkoutAlertRace.init(type:)();
  *(v0 + 152) = 0xD000000000000013;
  *(v0 + 160) = 0x800000020CB9EEB0;
  *(v0 + 168) = v14;
  v15 = objc_allocWithZone(v1);
  result = WorkoutAlertRace.init(type:)();
  *(v0 + 176) = 0xD000000000000011;
  *(v0 + 184) = 0x800000020CB9EED0;
  *(v0 + 192) = result;
  static WorkoutAlertTester.raceAlerts = v0;
  return result;
}

uint64_t static WorkoutAlertTester.raceOffRoute()()
{
  return static WorkoutAlertTester.raceOffRoute()();
}

{
  v0 = objc_allocWithZone(type metadata accessor for WorkoutAlertRace());
  return WorkoutAlertRace.init(type:)();
}

uint64_t static WorkoutAlertTester.raceRouteCompleteRaceWon()()
{
  return static WorkoutAlertTester.raceRouteCompleteRaceWon()();
}

{
  v0 = objc_allocWithZone(type metadata accessor for WorkoutAlertRaceComplete());
  return WorkoutAlertRaceComplete.init(type:raceTime:secondsAhead:)();
}

uint64_t (*static WorkoutAlertTester.raceAlerts.modify())()
{
  if (one-time initialization token for raceAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static WorkoutAlertTester.raceAlerts.modify;
}

uint64_t one-time initialization function for intervalAlerts()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WorkoutUI0D11AlertTesterC04TestdF0VGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20CB80530;
  v1 = specialized static WorkoutAlertTester.upcomingIntervalDistance()();
  *(v0 + 32) = 0xD000000000000011;
  *(v0 + 40) = 0x800000020CB9EC80;
  *(v0 + 48) = v1;
  v2 = specialized static WorkoutAlertTester.upcomingIntervalTime()();
  strcpy((v0 + 56), "Upcoming Time");
  *(v0 + 70) = -4864;
  *(v0 + 72) = v2;
  v3 = specialized static WorkoutAlertTester.upcomingIntervalOpenGoal()(MEMORY[0x277D7DE48]);
  *(v0 + 80) = 0xD000000000000012;
  *(v0 + 88) = 0x800000020CB9ECA0;
  *(v0 + 96) = v3;
  v4 = specialized static WorkoutAlertTester.upcomingIntervalEnd()();
  strcpy((v0 + 104), "Upcoming End");
  *(v0 + 117) = 0;
  *(v0 + 118) = -5120;
  *(v0 + 120) = v4;
  v5 = specialized static WorkoutAlertTester.upcomingIntervalOpenGoal()(MEMORY[0x277D7DE60]);
  *(v0 + 128) = 0xD00000000000001ALL;
  *(v0 + 136) = 0x800000020CB9ECC0;
  *(v0 + 144) = v5;
  v6 = specialized static WorkoutAlertTester.upcomingIntervalOpenGoal()(MEMORY[0x277D7DE40]);
  *(v0 + 152) = 0xD000000000000019;
  *(v0 + 160) = 0x800000020CB9ECE0;
  *(v0 + 168) = v6;
  v7 = specialized static WorkoutAlertTester.upcomingIntervalHeartRateRangeAlert()();
  *(v0 + 176) = 0xD000000000000017;
  *(v0 + 184) = 0x800000020CB9ED00;
  *(v0 + 192) = v7;
  v8 = specialized static WorkoutAlertTester.upcomingIntervalHeartRateZoneAlert()();
  *(v0 + 200) = 0xD000000000000016;
  *(v0 + 208) = 0x800000020CB9ED20;
  *(v0 + 216) = v8;
  v9 = MEMORY[0x277D7DE70];
  v10 = specialized static WorkoutAlertTester.upcomingIntervalOpenGoal()(MEMORY[0x277D7DE70]);
  *(v0 + 224) = 0xD00000000000001DLL;
  *(v0 + 232) = 0x800000020CB9ED40;
  *(v0 + 240) = v10;
  v11 = specialized static WorkoutAlertTester.upcomingIntervalOpenGoal()(v9);
  *(v0 + 248) = 0xD00000000000001CLL;
  *(v0 + 256) = 0x800000020CB9ED60;
  *(v0 + 264) = v11;
  v12 = specialized static WorkoutAlertTester.upcomingIntervalOpenGoal()(MEMORY[0x277D7DE50]);
  *(v0 + 272) = 0xD000000000000023;
  *(v0 + 280) = 0x800000020CB9ED80;
  *(v0 + 288) = v12;
  v13 = specialized static WorkoutAlertTester.upcomingIntervalOpenGoal()(MEMORY[0x277D7DE68]);
  *(v0 + 296) = 0xD000000000000022;
  *(v0 + 304) = 0x800000020CB9EDB0;
  *(v0 + 312) = v13;
  v14 = specialized static WorkoutAlertTester.upcomingIntervalCyclingPowerTargetAlert()();
  *(v0 + 320) = 0xD000000000000023;
  *(v0 + 328) = 0x800000020CB9EDE0;
  *(v0 + 336) = v14;
  v15 = specialized static WorkoutAlertTester.upcomingIntervalCyclingPowerRangeAlert()();
  *(v0 + 344) = 0xD000000000000022;
  *(v0 + 352) = 0x800000020CB9EE10;
  *(v0 + 360) = v15;
  result = specialized static WorkoutAlertTester.upcomingIntervalCyclingPowerZoneAlert()();
  *(v0 + 368) = 0xD000000000000021;
  *(v0 + 376) = 0x800000020CB9EE40;
  *(v0 + 384) = result;
  static WorkoutAlertTester.intervalAlerts = v0;
  return result;
}

uint64_t (*static WorkoutAlertTester.intervalAlerts.modify())()
{
  if (one-time initialization token for intervalAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static WorkoutAlertTester.intervalAlerts.modify;
}

uint64_t one-time initialization function for trackAlerts()
{
  v0 = type metadata accessor for TrackStatusAlertType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WorkoutUI0D11AlertTesterC04TestdF0VGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20CB5DA80;
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorRun.getter();
  v5 = objc_allocWithZone(type metadata accessor for WorkoutAlertLapChange());
  v6 = WorkoutAlertLapChange.init(activityType:lapNumber:lapDuration:lapDistance:)();
  strcpy((v4 + 32), "Lap Complete");
  *(v4 + 45) = 0;
  *(v4 + 46) = -5120;
  *(v4 + 48) = v6;
  (*(v1 + 104))(v3, *MEMORY[0x277D7E360], v0);
  v7 = objc_allocWithZone(type metadata accessor for WorkoutAlertTrackStatusChange());
  result = WorkoutAlertTrackStatusChange.init(trackStatusAlertType:)();
  *(v4 + 56) = 0x617254207466654CLL;
  *(v4 + 64) = 0xEA00000000006B63;
  *(v4 + 72) = result;
  static WorkoutAlertTester.trackAlerts = v4;
  return result;
}

uint64_t static WorkoutAlertTester.lapCompletion()()
{
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorRun.getter();
  v0 = objc_allocWithZone(type metadata accessor for WorkoutAlertLapChange());
  return WorkoutAlertLapChange.init(activityType:lapNumber:lapDuration:lapDistance:)();
}

uint64_t static WorkoutAlertTester.leftTrack()()
{
  v0 = type metadata accessor for TrackStatusAlertType();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D7E360], v1);
  v4 = objc_allocWithZone(type metadata accessor for WorkoutAlertTrackStatusChange());
  return WorkoutAlertTrackStatusChange.init(trackStatusAlertType:)();
}

uint64_t (*static WorkoutAlertTester.trackAlerts.modify())()
{
  if (one-time initialization token for trackAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static WorkoutAlertTester.trackAlerts.modify;
}

uint64_t one-time initialization function for heartRateAlerts()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WorkoutUI0D11AlertTesterC04TestdF0VGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20CB6DA80;
  type metadata accessor for HeartRateTargetZone();
  static HeartRateTargetZone.canonical()();
  v1 = type metadata accessor for WorkoutAlertHeartRateZone();
  v2 = objc_allocWithZone(v1);
  v3 = WorkoutAlertHeartRateZone.init(heartRateTargetZone:heartRate:)();
  *(v0 + 32) = 0xD000000000000015;
  *(v0 + 40) = 0x800000020CB9EBE0;
  *(v0 + 48) = v3;
  static HeartRateTargetZone.canonical()();
  v4 = objc_allocWithZone(v1);
  v5 = WorkoutAlertHeartRateZone.init(heartRateTargetZone:heartRate:)();
  *(v0 + 56) = 0xD000000000000016;
  *(v0 + 64) = 0x800000020CB9EC00;
  *(v0 + 72) = v5;
  static HeartRateTargetZone.canonical()();
  v6 = objc_allocWithZone(v1);
  v7 = WorkoutAlertHeartRateZone.init(heartRateTargetZone:heartRate:)();
  *(v0 + 80) = 0xD000000000000015;
  *(v0 + 88) = 0x800000020CB9EC20;
  *(v0 + 96) = v7;
  v8 = specialized static WorkoutAlertTester.upcomingIntervalDistanceWithDefaultHeartRateAlert()();
  *(v0 + 104) = 0xD000000000000018;
  *(v0 + 112) = 0x800000020CB9EC40;
  *(v0 + 120) = v8;
  result = specialized static WorkoutAlertTester.upcomingIntervalDistanceWithCustomHeartRateAlert()();
  *(v0 + 128) = 0xD00000000000001ALL;
  *(v0 + 136) = 0x800000020CB9EC60;
  *(v0 + 144) = result;
  static WorkoutAlertTester.heartRateAlerts = v0;
  return result;
}

uint64_t static WorkoutAlertTester.heartRateBelow()()
{
  return static WorkoutAlertTester.heartRateBelow()();
}

{
  type metadata accessor for HeartRateTargetZone();
  static HeartRateTargetZone.canonical()();
  v0 = objc_allocWithZone(type metadata accessor for WorkoutAlertHeartRateZone());
  return WorkoutAlertHeartRateZone.init(heartRateTargetZone:heartRate:)();
}

uint64_t (*static WorkoutAlertTester.heartRateAlerts.modify())()
{
  if (one-time initialization token for heartRateAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static WorkoutAlertTester.heartRateAlerts.modify;
}

uint64_t one-time initialization function for cadenceAlerts(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  v40 = a3;
  v44 = a2;
  v4 = type metadata accessor for TargetZone.ZoneType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WorkoutUI0D11AlertTesterC04TestdF0VGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20CB6DA80;
  v9 = *MEMORY[0x277D7DE58];
  v39 = *(v5 + 104);
  v42 = v5 + 104;
  v43 = v9;
  v39(v7, v9, v4);
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  v10 = a2();
  v11 = specialized static WorkoutAlertTester.alertAheadTarget(type:activityType:)(v7, v10, TargetZone.ZoneType.lowRangeValue(activityType:), TargetZone.ZoneType.aboveZoneValue(activityType:));

  v12 = *(v5 + 8);
  v41 = v5 + 8;
  v12(v7, v4);
  *(v8 + 32) = 0xD00000000000001ALL;
  *(v8 + 40) = 0x800000020CB9EB10;
  *(v8 + 48) = v11;
  v38 = 0x800000020CB9EB30;
  v13 = v9;
  v14 = v39;
  v15 = (v39)(v7, v13, v4);
  v16 = (v44)(v15);
  v17 = specialized static WorkoutAlertTester.alertAheadTarget(type:activityType:)(v7, v16, TargetZone.ZoneType.highRangeValue(activityType:), TargetZone.ZoneType.belowZoneValue(activityType:));

  v36 = v4;
  v37 = v12;
  v12(v7, v4);
  v18 = v38;
  *(v8 + 56) = 0xD00000000000001BLL;
  *(v8 + 64) = v18;
  *(v8 + 72) = v17;
  v38 = 0x800000020CB9EB50;
  v19 = (v14)(v7, v43, v4);
  v20 = v14;
  v21 = v44;
  v22 = (v44)(v19);
  v23 = specialized static WorkoutAlertTester.alertAheadTargetRange(type:activityType:)(v7, v22, TargetZone.ZoneType.aboveZoneValue(activityType:));

  v24 = v36;
  v12(v7, v36);
  v25 = v38;
  *(v8 + 80) = 0xD000000000000020;
  *(v8 + 88) = v25;
  *(v8 + 96) = v23;
  v38 = 0x800000020CB9EB80;
  v26 = (v20)(v7, v43, v24);
  v27 = v21;
  v28 = (v21)(v26);
  v29 = specialized static WorkoutAlertTester.alertAheadTargetRange(type:activityType:)(v7, v28, TargetZone.ZoneType.belowZoneValue(activityType:));

  v30 = v37;
  v37(v7, v24);
  *(v8 + 104) = 0xD000000000000021;
  *(v8 + 112) = v38;
  *(v8 + 120) = v29;
  v31 = (v20)(v7, *MEMORY[0x277D7DE70], v24);
  v32 = (v27)(v31);
  v33 = specialized static WorkoutAlertTester.alertAheadTargetRange(type:activityType:)(v7, v32, TargetZone.ZoneType.withinZoneValue(activityType:));

  result = v30(v7, v24);
  *(v8 + 128) = 0xD000000000000021;
  *(v8 + 136) = 0x800000020CB9EBB0;
  *(v8 + 144) = v33;
  *v40 = v8;
  return result;
}

uint64_t static WorkoutAlertTester.basicAlerts.getter(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static WorkoutAlertTester.basicAlerts.setter(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static WorkoutAlertTester.cyclingCadenceAlerts.modify())()
{
  if (one-time initialization token for cyclingCadenceAlerts != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static WorkoutAlertTester.cyclingCadenceAlerts.modify;
}

uint64_t key path getter for static WorkoutAlertTester.basicAlerts : WorkoutAlertTester.Type@<X0>(void *a1@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = *a2;
}

uint64_t key path setter for static WorkoutAlertTester.basicAlerts : WorkoutAlertTester.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = *a1;
  v8 = *a5;

  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v7;
}

uint64_t WorkoutAlertTester.init()()
{
  swift_unknownObjectWeakInit();
  WorkoutAlertTester.observeTestingNotifications()();
  return v0;
}

const void *WorkoutAlertTester.deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  outlined destroy of weak NLWorkoutAlertDelegate?(v0 + 16);
  return v0;
}

uint64_t WorkoutAlertTester.__deallocating_deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  outlined destroy of weak NLWorkoutAlertDelegate?(v0 + 16);

  return swift_deallocClassInstance();
}

void WorkoutAlertTester.observeTestingNotifications()()
{
  v1 = 0;
  do
  {
    v5 = outlined read-only object #0 of static WorkoutAlertNotification.allCases.getter[v1++ + 32];
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    v2 = 0xD00000000000002CLL;
    v3 = "Detail";
    switch(v5)
    {
      case 1:
        v2 = 0xD000000000000030;
        v3 = "tificationMoveRingCompletion";
        break;
      case 2:
        v2 = 0xD00000000000002DLL;
        v3 = "seRingCompletion";
        break;
      case 3:
        v2 = 0xD000000000000029;
        v3 = "tificationGoalHalfwayDistance";
        break;
      case 4:
        v2 = 0xD00000000000002BLL;
        v3 = "tificationGoalHalfwayTime";
        break;
      case 5:
        v2 = 0xD00000000000002ELL;
        v3 = "tificationGoalHalfwayEnergy";
        break;
      case 6:
        v2 = 0xD00000000000002ALL;
        v3 = "tificationGoalCompleteDistance";
        break;
      case 7:
        v2 = 0xD00000000000002CLL;
        v3 = "tificationGoalCompleteTime";
        break;
      case 8:
        v2 = 0xD000000000000023;
        v3 = "tificationGoalCompleteEnergy";
        break;
      case 9:
        v2 = 0xD00000000000002ALL;
        v3 = "tificationMilestone";
        break;
      case 10:
        v2 = 0xD000000000000028;
        v3 = "tificationMilestoneCycling";
        break;
      case 11:
        v2 = 0xD000000000000029;
        v3 = "tificationPaceAlertAhead";
        break;
      case 12:
        v2 = 0xD000000000000024;
        v3 = "tificationPaceAlertBehind";
        break;
      case 13:
        v2 = 0xD000000000000022;
        v3 = "tificationTimerStart";
        break;
      case 14:
        v2 = 0xD000000000000025;
        v3 = "tificationTimerEnd";
        break;
      case 15:
        v2 = 0xD000000000000027;
        v3 = "tificationMediaMoment";
        break;
      case 16:
        v2 = 0xD000000000000027;
        v3 = "tificationMilestoneTime";
        break;
      case 17:
        v2 = 0xD000000000000023;
        v3 = "tificationLapCompletion";
        break;
      case 18:
        v2 = 0xD000000000000021;
        v3 = "tificationLeftTrack";
        break;
      default:
        break;
    }

    v4 = MEMORY[0x20F30BAD0](v2, v3 | 0x8000000000000000);

    CFNotificationCenterAddObserver(v6, v0, @objc closure #1 in WorkoutAlertTester.observe(notification:), v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  while (v1 != 19);
}

void @objc closure #1 in WorkoutAlertTester.observe(notification:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in WorkoutAlertTester.observe(notification:)(a2, a3);
}

void WorkoutAlertTester.handleNotification(notification:)(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TrackStatusAlertType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TargetZone.ZoneType();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(*a1)
  {
    case 1:
      type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for HKActivitySummary);
      v13 = MEMORY[0x20F30C150](1);
      v14 = [objc_opt_self() ringCompletionAlertWithCompletedRing:1 activitySummary:v13];
      goto LABEL_17;
    case 2:
      v16 = specialized static WorkoutAlertTester.goalHalfway(goalType:)(1uLL);
      goto LABEL_27;
    case 3:
      v16 = specialized static WorkoutAlertTester.goalHalfway(goalType:)(2uLL);
      goto LABEL_27;
    case 4:
      v16 = specialized static WorkoutAlertTester.goalHalfway(goalType:)(3uLL);
      goto LABEL_27;
    case 5:
      v16 = specialized static WorkoutAlertTester.goalComplete(goalType:)(1uLL);
      goto LABEL_27;
    case 6:
      v16 = specialized static WorkoutAlertTester.goalComplete(goalType:)(2uLL);
      goto LABEL_27;
    case 7:
      v16 = specialized static WorkoutAlertTester.goalComplete(goalType:)(3uLL);
      goto LABEL_27;
    case 8:
      v28 = MEMORY[0x277D7E778];
      v29 = 600.0;
      v30 = 1.0;
      goto LABEL_26;
    case 9:
      v28 = MEMORY[0x277D7E780];
      v29 = 3000.0;
      v30 = 5.0;
LABEL_26:
      v16 = specialized static WorkoutAlertTester.milestone()(v28, v30, v29);
      goto LABEL_27;
    case 0xA:
      v23 = v10;
      (*(v9 + 104))(v12, *MEMORY[0x277D7DE40], v10);
      type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
      v24 = static FIUIWorkoutActivityType.outdoorRun.getter();
      v25 = TargetZone.ZoneType.lowRangeValue(activityType:);
      v26 = TargetZone.ZoneType.aboveZoneValue(activityType:);
      goto LABEL_24;
    case 0xB:
      v23 = v10;
      (*(v9 + 104))(v12, *MEMORY[0x277D7DE40], v10);
      type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
      v24 = static FIUIWorkoutActivityType.outdoorRun.getter();
      v25 = TargetZone.ZoneType.highRangeValue(activityType:);
      v26 = TargetZone.ZoneType.belowZoneValue(activityType:);
LABEL_24:
      v35 = specialized static WorkoutAlertTester.alertAheadTarget(type:activityType:)(v12, v24, v25, v26);

      (*(v9 + 8))(v12, v23);
      goto LABEL_28;
    case 0xC:
      v27 = objc_allocWithZone(type metadata accessor for TrainerTimerStartEventAlert());
      v16 = TrainerTimerStartEventAlert.init(startTime:duration:)();
      goto LABEL_27;
    case 0xD:
      v37 = objc_allocWithZone(type metadata accessor for TrainerTimerEndEventAlert());
      v16 = TrainerTimerEndEventAlert.init(duration:)();
      goto LABEL_27;
    case 0xE:
      v17 = [objc_opt_self() blueColor];
      v40.width = 1.0;
      v40.height = 1.0;
      UIGraphicsBeginImageContext(v40);
      v18 = UIGraphicsGetCurrentContext();
      if (!v18)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v19 = v18;
      v20 = [v17 CGColor];
      CGContextSetFillColorWithColor(v19, v20);

      v41.origin.x = 0.0;
      v41.origin.y = 0.0;
      v41.size.width = 1.0;
      v41.size.height = 1.0;
      CGContextFillRect(v19, v41);
      v21 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      if (!v21)
      {
LABEL_34:
        __break(1u);
        return;
      }

      v22 = objc_allocWithZone(type metadata accessor for MediaMomentAlert());
      v16 = MediaMomentAlert.init(backgroundArt:narratorName:startTime:duration:)();
LABEL_27:
      v35 = v16;
LABEL_28:
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong alertSource:v2 didTriggerAlert:v35];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    case 0xF:
      v31 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
      v32 = [objc_allocWithZone(MEMORY[0x277D0A808]) initWithHealthStore_];

      v33 = [objc_allocWithZone(MEMORY[0x277D0A7E8]) initWithUnitManager_];
      if (!v33)
      {
        goto LABEL_33;
      }

      v34 = objc_allocWithZone(type metadata accessor for WorkoutAlertTimeSplit());
      v16 = WorkoutAlertTimeSplit.init(workoutAlertType:elapsedTime:formattingManager:)();
      goto LABEL_27;
    case 0x10:
      type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
      static FIUIWorkoutActivityType.outdoorRun.getter();
      v15 = objc_allocWithZone(type metadata accessor for WorkoutAlertLapChange());
      v16 = WorkoutAlertLapChange.init(activityType:lapNumber:lapDuration:lapDistance:)();
      goto LABEL_27;
    case 0x11:
      (*(v5 + 104))(v7, *MEMORY[0x277D7E360], v4);
      v36 = objc_allocWithZone(type metadata accessor for WorkoutAlertTrackStatusChange());
      v16 = WorkoutAlertTrackStatusChange.init(trackStatusAlertType:)();
      goto LABEL_27;
    case 0x12:
      v16 = specialized static WorkoutAlertTester.segment()();
      goto LABEL_27;
    default:
      type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for HKActivitySummary);
      v13 = MEMORY[0x20F30C150](1);
      v14 = [objc_opt_self() ringCompletionAlertWithCompletedRing:0 activitySummary:v13];
LABEL_17:
      v35 = v14;

      goto LABEL_28;
  }
}

uint64_t static WorkoutAlertTester.customMilestone()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D7E798]) init];
  [v0 setSegmentIndex_];
  v1 = [objc_opt_self() mileUnit];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:1.5];

  [v0 setDistance_];
  [v0 setDuration_];
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorRun.getter();
  v3 = objc_allocWithZone(type metadata accessor for WorkoutAlertSegment());
  return WorkoutAlertSegment.init(workoutAlertType:segmentMarker:activityType:activityMoveMode:gpsAvailable:shouldHideTime:)();
}

uint64_t static WorkoutAlertTester.transcriptCompanionNotConnected()()
{
  String.workoutLocalized()();
  String.workoutLocalized()();
  v0 = objc_allocWithZone(type metadata accessor for TranscriptWorkoutAlert());
  return TranscriptWorkoutAlert.init(title:message:)();
}

id static WorkoutAlertTester.distanceSegment()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D7E798]) init];
  [v0 setSegmentIndex_];
  v1 = [objc_opt_self() meterUnitWithMetricPrefix_];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:5.0];

  [v0 setDistance_];
  [v0 setDuration_];
  return v0;
}

id static WorkoutAlertTester.energySegment()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D7E798]) init];
  [v0 setSegmentIndex_];
  v1 = [objc_opt_self() largeCalorieUnit];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:67.0];

  [v0 setActiveEnergyBurn_];
  [v0 setDuration_];
  return v0;
}

id static WorkoutAlertTester.moveMinutesSegment()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D7E798]) init];
  [v0 setSegmentIndex_];
  [v0 setDuration_];
  return v0;
}

uint64_t static WorkoutAlertTester.upcomingIntervalTimeAndDistance()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v20 = &v15 - v1;
  v2 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v2 - 8);
  v18 = type metadata accessor for StepType();
  v3 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CompletedWorkoutStep();
  v6 = *(v19 - 8);
  v7 = MEMORY[0x28223BE20](v19);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *MEMORY[0x277D7E710];
  v16 = *(v3 + 104);
  v16(v5, v7);
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  static NLSessionActivityGoal.makeOpenGoal()();
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  type metadata accessor for WorkoutStep();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  CompletedWorkoutStep.init(distance:duration:step:moveMode:distanceGoalAchievedDuration:)();
  (v16)(v5, v17, v18);
  static NLSessionActivityGoal.makeTimeAndDistanceGoal()();
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  v11 = v19;
  v10 = v20;
  (*(v6 + 16))(v20, v9, v19);
  (*(v6 + 56))(v10, 0, 1, v11);
  v12 = objc_allocWithZone(type metadata accessor for WorkoutAlertInterval());
  v13 = WorkoutAlertInterval.init(type:completedStep:nextStep:repetition:maxRepetitions:)();
  (*(v6 + 8))(v9, v11);
  return v13;
}

uint64_t static WorkoutAlertTester.upcomingIntervalWithCustomName()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v23 = &v18 - v1;
  v2 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for StepType();
  v20 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CompletedWorkoutStep();
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x277D7E710];
  v19 = *(v4 + 104);
  v19(v6, v11, v3, v8);
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  static NLSessionActivityGoal.makeOpenGoal()();
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  type metadata accessor for WorkoutStep();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  CompletedWorkoutStep.init(distance:duration:step:moveMode:distanceGoalAchievedDuration:)();
  (v19)(v6, v11, v20);
  static NLSessionActivityGoal.makeDistanceGoal(miles:)();
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  v12 = v21;
  v13 = v22;
  v14 = v23;
  (*(v21 + 16))(v23, v10, v22);
  (*(v12 + 56))(v14, 0, 1, v13);
  v15 = objc_allocWithZone(type metadata accessor for WorkoutAlertInterval());
  v16 = WorkoutAlertInterval.init(type:completedStep:nextStep:repetition:maxRepetitions:)();
  (*(v12 + 8))(v10, v13);
  return v16;
}

uint64_t specialized static WorkoutAlertTester.goalHalfway(goalType:)(unint64_t a1)
{
  if (a1 < 2)
  {
    v2 = objc_opt_self();
    v3 = [v2 meterUnitWithMetricPrefix_];
    v4 = [objc_opt_self() quantityWithUnit:v3 doubleValue:5.0];

    v5 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:a1 value:v4];
    v6 = v5;
    v7 = [v6 value];
    if (v7)
    {
      v8 = v7;
      v9 = &selRef_meterUnit;
LABEL_10:
      v18 = [v2 *v9];
      [v8 doubleValueForUnit_];
      v20 = v19;

      v21 = [objc_opt_self() goalProgressAlertWithGoal:v6 distanceType:1 alertType:7 currentValue:v20 * 0.5];
      return v21;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a1 == 2)
  {
    v2 = objc_opt_self();
    v10 = [v2 minuteUnit];
    v11 = [objc_opt_self() quantityWithUnit:v10 doubleValue:25.0];

    v12 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v11];
    v6 = v12;
    v13 = [v6 value];
    if (v13)
    {
      v8 = v13;
      v9 = &selRef_secondUnit;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (a1 == 3)
  {
    v2 = objc_opt_self();
    v9 = &selRef_largeCalorieUnit;
    v14 = [v2 largeCalorieUnit];
    v15 = [objc_opt_self() quantityWithUnit:v14 doubleValue:330.0];

    v16 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:3 value:v15];
    v6 = v16;
    v17 = [v6 value];
    if (v17)
    {
      v8 = v17;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static WorkoutAlertTester.goalComplete(goalType:)(unint64_t a1)
{
  if (a1 < 2)
  {
    v2 = objc_opt_self();
    v3 = [v2 meterUnitWithMetricPrefix_];
    v4 = [objc_opt_self() quantityWithUnit:v3 doubleValue:5.0];

    v5 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:a1 value:v4];
    v6 = v5;
    v7 = [v6 value];
    if (v7)
    {
      v8 = v7;
      v9 = &selRef_meterUnit;
LABEL_10:
      v18 = [v2 *v9];
      [v8 doubleValueForUnit_];
      v20 = v19;

      v21 = [objc_opt_self() goalProgressAlertWithGoal:v6 distanceType:1 alertType:13 currentValue:v20];
      return v21;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a1 == 2)
  {
    v2 = objc_opt_self();
    v10 = [v2 minuteUnit];
    v11 = [objc_opt_self() quantityWithUnit:v10 doubleValue:25.0];

    v12 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v11];
    v6 = v12;
    v13 = [v6 value];
    if (v13)
    {
      v8 = v13;
      v9 = &selRef_secondUnit;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (a1 == 3)
  {
    v2 = objc_opt_self();
    v9 = &selRef_largeCalorieUnit;
    v14 = [v2 largeCalorieUnit];
    v15 = [objc_opt_self() quantityWithUnit:v14 doubleValue:330.0];

    v16 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:3 value:v15];
    v6 = v16;
    v17 = [v6 value];
    if (v17)
    {
      v8 = v17;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static WorkoutAlertTester.milestone()(void (*a1)(void), double a2, double a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D7E798]) init];
  [v6 setSegmentIndex_];
  v7 = [objc_opt_self() mileUnit];
  v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:a2];

  [v6 setDistance_];
  [v6 setDuration_];
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  a1();
  v9 = objc_allocWithZone(type metadata accessor for WorkoutAlertSegment());
  return WorkoutAlertSegment.init(workoutAlertType:segmentMarker:activityType:activityMoveMode:gpsAvailable:shouldHideTime:)();
}

uint64_t specialized static WorkoutAlertTester.milestoneRowing()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D7E798]) init];
  [v0 setSegmentIndex_];
  v1 = [objc_opt_self() meterUnit];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:500.0];

  [v0 setDistance_];
  [v0 setDuration_];
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorRowing.getter();
  v3 = objc_allocWithZone(type metadata accessor for WorkoutAlertSegment());
  return WorkoutAlertSegment.init(workoutAlertType:segmentMarker:activityType:activityMoveMode:gpsAvailable:shouldHideTime:)();
}

uint64_t specialized static WorkoutAlertTester.segment()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D7E798]) init];
  [v0 setSegmentIndex_];
  v1 = [objc_opt_self() meterUnitWithMetricPrefix_];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:5.0];

  [v0 setDistance_];
  [v0 setDuration_];
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorRun.getter();
  v3 = objc_allocWithZone(type metadata accessor for WorkoutAlertSegment());
  return WorkoutAlertSegment.init(workoutAlertType:segmentMarker:activityType:activityMoveMode:gpsAvailable:shouldHideTime:)();
}

uint64_t specialized static WorkoutAlertTester.alertAheadTarget(type:activityType:)(uint64_t a1, void *a2, void (*a3)(void *), void (*a4)(void *))
{
  v8 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v8 - 8);
  v22 = type metadata accessor for TargetZone.State();
  v9 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TargetZone.ZoneType();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(a2);
  a4(a2);
  (*(v13 + 16))(v15, a1, v12);
  type metadata accessor for TargetZone();
  swift_allocObject();
  TargetZone.init(type:min:max:enabled:)();
  v16 = [objc_opt_self() mileUnit];
  dispatch thunk of TargetZone.state(forDistanceUnit:currentValue:)();

  v17 = type metadata accessor for WorkoutAlertZone();
  TargetZone.State.oldState.getter();
  static WorkoutAlertZone.type(for:)();
  Date.init()();
  objc_allocWithZone(v17);
  v18 = a2;
  v19 = WorkoutAlertZone.init(targetZone:alertValue:date:zoneAlertType:activityType:)();
  (*(v9 + 8))(v11, v22);
  return v19;
}

uint64_t specialized static WorkoutAlertTester.alertAheadTargetRange(type:activityType:)(uint64_t a1, void *a2, void (*a3)(void *))
{
  v6 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for TargetZone.State();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TargetZone.ZoneType();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TargetZone.ZoneType.lowRangeValue(activityType:)(a2);
  TargetZone.ZoneType.highRangeValue(activityType:)(a2);
  a3(a2);
  (*(v12 + 16))(v14, a1, v11);
  type metadata accessor for TargetZone();
  swift_allocObject();
  TargetZone.init(type:min:max:enabled:)();
  v15 = [objc_opt_self() mileUnit];
  dispatch thunk of TargetZone.state(forDistanceUnit:currentValue:)();

  v16 = type metadata accessor for WorkoutAlertZone();
  TargetZone.State.oldState.getter();
  static WorkoutAlertZone.type(for:)();
  Date.init()();
  objc_allocWithZone(v16);
  v17 = a2;
  v18 = WorkoutAlertZone.init(targetZone:alertValue:date:zoneAlertType:activityType:)();
  (*(v8 + 8))(v10, v7);
  return v18;
}

uint64_t specialized static WorkoutAlertTester.upcomingIntervalDistanceWithDefaultHeartRateAlert()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v27 = &v20 - v1;
  v2 = type metadata accessor for HeartRateZoneType();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v24 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for StepType();
  v21 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CompletedWorkoutStep();
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *MEMORY[0x277D7E710];
  v20 = *(v6 + 104);
  v20(v8, v12, v5);
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  static NLSessionActivityGoal.makeOpenGoal()();
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  type metadata accessor for WorkoutStep();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  CompletedWorkoutStep.init(distance:duration:step:moveMode:distanceGoalAchievedDuration:)();
  v20(v8, v12, v21);
  static NLSessionActivityGoal.makeDistanceGoal(miles:)();
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  (*(v25 + 104))(v24, *MEMORY[0x277D7E148], v26);
  v13 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
  HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)();
  WorkoutStep.heartRateTargetZone.setter();
  v15 = v22;
  v14 = v23;
  v16 = v27;
  (*(v22 + 16))(v27, v11, v23);
  (*(v15 + 56))(v16, 0, 1, v14);
  v17 = objc_allocWithZone(type metadata accessor for WorkoutAlertInterval());
  v18 = WorkoutAlertInterval.init(type:completedStep:nextStep:repetition:maxRepetitions:)();
  (*(v15 + 8))(v11, v14);
  return v18;
}

uint64_t specialized static WorkoutAlertTester.upcomingIntervalDistanceWithCustomHeartRateAlert()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v24 = &v19 - v1;
  v2 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for StepType();
  v21 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CompletedWorkoutStep();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x277D7E710];
  v20 = *(v4 + 104);
  v20(v6, v10, v3);
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  static NLSessionActivityGoal.makeOpenGoal()();
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  type metadata accessor for WorkoutStep();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  CompletedWorkoutStep.init(distance:duration:step:moveMode:distanceGoalAchievedDuration:)();
  v20(v6, v10, v21);
  static NLSessionActivityGoal.makeDistanceGoal(miles:)();
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  type metadata accessor for HeartRateTargetZone();
  static HeartRateTargetZone.canonical()();
  WorkoutStep.heartRateTargetZone.setter();
  v11 = v22;
  v12 = v24;
  v13 = v9;
  v14 = v9;
  v15 = v23;
  (*(v22 + 16))(v24, v14, v23);
  (*(v11 + 56))(v12, 0, 1, v15);
  v16 = objc_allocWithZone(type metadata accessor for WorkoutAlertInterval());
  v17 = WorkoutAlertInterval.init(type:completedStep:nextStep:repetition:maxRepetitions:)();
  (*(v11 + 8))(v13, v15);
  return v17;
}

uint64_t specialized static WorkoutAlertTester.upcomingIntervalDistance()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v19 = &v14 - v1;
  v2 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v2 - 8);
  v17 = type metadata accessor for StepType();
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CompletedWorkoutStep();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *MEMORY[0x277D7E710];
  v15 = *(v3 + 104);
  v15(v5);
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  static NLSessionActivityGoal.makeOpenGoal()();
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  type metadata accessor for WorkoutStep();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  CompletedWorkoutStep.init(distance:duration:step:moveMode:distanceGoalAchievedDuration:)();
  (v15)(v5, v16, v17);
  static NLSessionActivityGoal.makeDistanceGoal(miles:)();
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  v10 = v18;
  v9 = v19;
  (*(v6 + 16))(v19, v8, v18);
  (*(v6 + 56))(v9, 0, 1, v10);
  v11 = objc_allocWithZone(type metadata accessor for WorkoutAlertInterval());
  v12 = WorkoutAlertInterval.init(type:completedStep:nextStep:repetition:maxRepetitions:)();
  (*(v6 + 8))(v8, v10);
  return v12;
}

uint64_t specialized static WorkoutAlertTester.upcomingIntervalTime()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v30 = &v23 - v1;
  v2 = type metadata accessor for TargetZone.ZoneType();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for StepType();
  v23 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CompletedWorkoutStep();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 104);
  v12(v8, *MEMORY[0x277D7E710], v5);
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  static NLSessionActivityGoal.makeDistanceGoal(miles:)();
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  type metadata accessor for WorkoutStep();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  v27 = v11;
  CompletedWorkoutStep.init(distance:duration:step:moveMode:distanceGoalAchievedDuration:)();
  v12(v8, *MEMORY[0x277D7E708], v23);
  static NLSessionActivityGoal.makeTimeGoal(minutes:)();
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  (*(v25 + 104))(v24, *MEMORY[0x277D7DE48], v26);
  type metadata accessor for TargetZone();
  swift_allocObject();
  TargetZone.init(type:min:max:enabled:)();
  v13 = WorkoutStep.targetZones.modify();
  v15 = v14;
  MEMORY[0x20F30BCF0]();
  if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v13(v31, 0);
  v17 = v27;
  v16 = v28;
  v19 = v29;
  v18 = v30;
  (*(v28 + 16))(v30, v27, v29);
  (*(v16 + 56))(v18, 0, 1, v19);
  v20 = objc_allocWithZone(type metadata accessor for WorkoutAlertInterval());
  v21 = WorkoutAlertInterval.init(type:completedStep:nextStep:repetition:maxRepetitions:)();
  (*(v16 + 8))(v17, v19);
  return v21;
}

uint64_t specialized static WorkoutAlertTester.upcomingIntervalEnd()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v15 - v1;
  v3 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for StepType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CompletedWorkoutStep();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D7E710], v4);
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  static NLSessionActivityGoal.makeDistanceGoal(miles:)();
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  type metadata accessor for WorkoutStep();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  CompletedWorkoutStep.init(distance:duration:step:moveMode:distanceGoalAchievedDuration:)();
  (*(v9 + 16))(v2, v11, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v12 = objc_allocWithZone(type metadata accessor for WorkoutAlertInterval());
  v13 = WorkoutAlertInterval.init(type:completedStep:nextStep:repetition:maxRepetitions:)();
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t specialized static WorkoutAlertTester.upcomingIntervalOpenGoal()(unsigned int *a1)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = &v24 - v2;
  v3 = type metadata accessor for TargetZone.ZoneType();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for StepType();
  v25 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CompletedWorkoutStep();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x277D7E710];
  v24 = *(v7 + 104);
  v24(v9, v13, v6);
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  static NLSessionActivityGoal.makeDistanceGoal(miles:)();
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  type metadata accessor for WorkoutStep();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  v30 = v12;
  CompletedWorkoutStep.init(distance:duration:step:moveMode:distanceGoalAchievedDuration:)();
  v24(v9, v13, v25);
  static NLSessionActivityGoal.makeOpenGoal()();
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  (*(v27 + 104))(v26, *v29, v28);
  type metadata accessor for TargetZone();
  swift_allocObject();
  TargetZone.init(type:min:max:enabled:)();
  v14 = WorkoutStep.targetZones.modify();
  v16 = v15;
  MEMORY[0x20F30BCF0]();
  if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v14(v34, 0);
  v18 = v30;
  v17 = v31;
  v20 = v32;
  v19 = v33;
  (*(v31 + 16))(v33, v30, v32);
  (*(v17 + 56))(v19, 0, 1, v20);
  v21 = objc_allocWithZone(type metadata accessor for WorkoutAlertInterval());
  v22 = WorkoutAlertInterval.init(type:completedStep:nextStep:repetition:maxRepetitions:)();
  (*(v17 + 8))(v18, v20);
  return v22;
}

uint64_t specialized static WorkoutAlertTester.upcomingIntervalHeartRateRangeAlert()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v27 = &v20 - v1;
  v2 = type metadata accessor for HeartRateZoneType();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v24 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for StepType();
  v21 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CompletedWorkoutStep();
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *MEMORY[0x277D7E710];
  v20 = *(v6 + 104);
  v20(v8, v12, v5);
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  static NLSessionActivityGoal.makeDistanceGoal(miles:)();
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  type metadata accessor for WorkoutStep();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  CompletedWorkoutStep.init(distance:duration:step:moveMode:distanceGoalAchievedDuration:)();
  v20(v8, v12, v21);
  static NLSessionActivityGoal.makeOpenGoal()();
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  (*(v25 + 104))(v24, *MEMORY[0x277D7E140], v26);
  v13 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
  HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)();
  WorkoutStep.heartRateTargetZone.setter();
  v15 = v22;
  v14 = v23;
  v16 = v27;
  (*(v22 + 16))(v27, v11, v23);
  (*(v15 + 56))(v16, 0, 1, v14);
  v17 = objc_allocWithZone(type metadata accessor for WorkoutAlertInterval());
  v18 = WorkoutAlertInterval.init(type:completedStep:nextStep:repetition:maxRepetitions:)();
  (*(v15 + 8))(v11, v14);
  return v18;
}

uint64_t specialized static WorkoutAlertTester.upcomingIntervalHeartRateZoneAlert()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v27 = &v20 - v1;
  v2 = type metadata accessor for HeartRateZoneType();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v24 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for StepType();
  v21 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CompletedWorkoutStep();
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *MEMORY[0x277D7E710];
  v20 = *(v6 + 104);
  v20(v8, v12, v5);
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  static NLSessionActivityGoal.makeDistanceGoal(miles:)();
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  type metadata accessor for WorkoutStep();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  CompletedWorkoutStep.init(distance:duration:step:moveMode:distanceGoalAchievedDuration:)();
  v20(v8, v12, v21);
  static NLSessionActivityGoal.makeOpenGoal()();
  static FIUIWorkoutActivityType.outdoorRun.getter();
  UUID.init()();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  (*(v25 + 104))(v24, *MEMORY[0x277D7E148], v26);
  v13 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
  HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)();
  WorkoutStep.heartRateTargetZone.setter();
  v15 = v22;
  v14 = v23;
  v16 = v27;
  (*(v22 + 16))(v27, v11, v23);
  (*(v15 + 56))(v16, 0, 1, v14);
  v17 = objc_allocWithZone(type metadata accessor for WorkoutAlertInterval());
  v18 = WorkoutAlertInterval.init(type:completedStep:nextStep:repetition:maxRepetitions:)();
  (*(v15 + 8))(v11, v14);
  return v18;
}

uint64_t specialized static WorkoutAlertTester.upcomingIntervalCyclingPowerTargetAlert()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v31 = &v24 - v1;
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for StepType();
  v25 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for CompletedWorkoutStep();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v24 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x277D7E710];
  v11 = *(v6 + 104);
  v11(v8, v10, v5);
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  static NLSessionActivityGoal.makeDistanceGoal(miles:)();
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorCycle.getter();
  UUID.init()();
  type metadata accessor for WorkoutStep();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  v12 = v24;
  CompletedWorkoutStep.init(distance:duration:step:moveMode:distanceGoalAchievedDuration:)();
  v11(v8, v10, v25);
  static NLSessionActivityGoal.makeOpenGoal()();
  static FIUIWorkoutActivityType.outdoorCycle.getter();
  UUID.init()();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5value_11WorkoutCore10TargetZoneC0E4TypeO4modetMd) + 48);
  v14 = v27;
  *v27 = 0x4062C00000000000;
  v15 = *MEMORY[0x277D7DE50];
  v16 = type metadata accessor for TargetZone.ZoneType();
  (*(*(v16 - 8) + 104))(&v14[v13], v15, v16);
  (*(v29 + 104))(v14, *MEMORY[0x277D7E428], v30);
  v17 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
  PowerZonesAlertTargetZone.init(type:)();
  WorkoutStep.powerZonesAlertTargetZone.setter();
  v18 = v26;
  v19 = v31;
  v20 = v28;
  (*(v26 + 16))(v31, v12, v28);
  (*(v18 + 56))(v19, 0, 1, v20);
  v21 = objc_allocWithZone(type metadata accessor for WorkoutAlertInterval());
  v22 = WorkoutAlertInterval.init(type:completedStep:nextStep:repetition:maxRepetitions:)();
  (*(v18 + 8))(v12, v20);
  return v22;
}

uint64_t specialized static WorkoutAlertTester.upcomingIntervalCyclingPowerRangeAlert()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v31 = &v24 - v1;
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for StepType();
  v25 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for CompletedWorkoutStep();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v24 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x277D7E710];
  v11 = *(v6 + 104);
  v11(v8, v10, v5);
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  static NLSessionActivityGoal.makeDistanceGoal(miles:)();
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorCycle.getter();
  UUID.init()();
  type metadata accessor for WorkoutStep();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  v12 = v24;
  CompletedWorkoutStep.init(distance:duration:step:moveMode:distanceGoalAchievedDuration:)();
  v11(v8, v10, v25);
  static NLSessionActivityGoal.makeOpenGoal()();
  static FIUIWorkoutActivityType.outdoorCycle.getter();
  UUID.init()();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdG5range_11WorkoutCore10TargetZoneC0E4TypeO4modetMd) + 48);
  v14 = v27;
  *v27 = xmmword_20CB80540;
  v15 = *MEMORY[0x277D7DE68];
  v16 = type metadata accessor for TargetZone.ZoneType();
  (*(*(v16 - 8) + 104))(&v14[v13], v15, v16);
  (*(v29 + 104))(v14, *MEMORY[0x277D7E420], v30);
  v17 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
  PowerZonesAlertTargetZone.init(type:)();
  WorkoutStep.powerZonesAlertTargetZone.setter();
  v18 = v26;
  v19 = v31;
  v20 = v28;
  (*(v26 + 16))(v31, v12, v28);
  (*(v18 + 56))(v19, 0, 1, v20);
  v21 = objc_allocWithZone(type metadata accessor for WorkoutAlertInterval());
  v22 = WorkoutAlertInterval.init(type:completedStep:nextStep:repetition:maxRepetitions:)();
  (*(v18 + 8))(v12, v20);
  return v22;
}

uint64_t specialized static WorkoutAlertTester.upcomingIntervalCyclingPowerZoneAlert()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore09CompletedA4StepVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v30 = &v23 - v1;
  v2 = type metadata accessor for PowerZonesAlertZoneType();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for StepType();
  v24 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CompletedWorkoutStep();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x28223BE20](v9);
  v23 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x277D7E710];
  v12 = *(v6 + 104);
  v12(v8, v11, v5);
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  static NLSessionActivityGoal.makeDistanceGoal(miles:)();
  type metadata accessor for HKActivitySummary(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  static FIUIWorkoutActivityType.outdoorCycle.getter();
  UUID.init()();
  type metadata accessor for WorkoutStep();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  v13 = v23;
  CompletedWorkoutStep.init(distance:duration:step:moveMode:distanceGoalAchievedDuration:)();
  v12(v8, v11, v24);
  static NLSessionActivityGoal.makeOpenGoal()();
  static FIUIWorkoutActivityType.outdoorCycle.getter();
  UUID.init()();
  swift_allocObject();
  WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
  v15 = v27;
  v14 = v28;
  *v27 = xmmword_20CB80550;
  (*(v14 + 104))(v15, *MEMORY[0x277D7E430], v29);
  v16 = objc_allocWithZone(type metadata accessor for PowerZonesAlertTargetZone());
  PowerZonesAlertTargetZone.init(type:)();
  WorkoutStep.powerZonesAlertTargetZone.setter();
  v18 = v25;
  v17 = v26;
  v19 = v30;
  (*(v25 + 16))(v30, v13, v26);
  (*(v18 + 56))(v19, 0, 1, v17);
  v20 = objc_allocWithZone(type metadata accessor for WorkoutAlertInterval());
  v21 = WorkoutAlertInterval.init(type:completedStep:nextStep:repetition:maxRepetitions:)();
  (*(v18 + 8))(v13, v17);
  return v21;
}

uint64_t type metadata accessor for HKActivitySummary(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutAlertTester.TestWorkoutAlert(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutAlertTester.TestWorkoutAlert(uint64_t result, int a2, int a3)
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

uint64_t specialized closure #1 in WorkoutAlertTester.observe(notification:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    type metadata accessor for WorkoutAlertTester();
    swift_unknownObjectRetain();
    if (swift_dynamicCastClass() && a2)
    {
      v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      WorkoutAlertNotification.init(rawValue:)(v3);
      if (v5 != 19)
      {
        v4 = v5;
        WorkoutAlertTester.handleNotification(notification:)(&v4);
      }

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id ExternalProvider.sourceImage.getter()
{
  v0 = dispatch thunk of ExternalProvider.sourceImageData.getter();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D755B8]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = [v3 initWithData_];

  outlined consume of Data._Representation(v0, v2);
  return v5;
}

void ExternalProvider.formattedSyncDate.getter()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  ExternalProvider.syncStartDate.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  v6 = [v4 stringWithDayNameAndShortMonthFromDate_];

  if (v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

id static UIFont.systemFont(ofSize:weight:design:symbolicTraits:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = objc_opt_self();
  v9 = [v8 systemFontOfSize:a3 weight:a4];
  v10 = [v9 fontDescriptor];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = [v10 fontDescriptorWithDesign_];
  if (v13)
  {
    v14 = v13;

    v10 = v14;
  }

  v15 = [v8 fontWithDescriptor:v10 size:0.0];

  return v15;
}

uint64_t getEnumTagSinglePayload for AdjustedListRowSeparatorLeading(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AdjustedListRowSeparatorLeading(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t protocol witness for ViewModifier.body(content:) in conformance AdjustedListRowSeparatorLeading@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = static HorizontalAlignment.listRowSeparatorLeading.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB031AdjustedListRowSeparatorLeadingVGMd);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB031AdjustedListRowSeparatorLeadingVGAA017_AlignmentWritingF0VGMd);
  v10 = (a2 + *(result + 36));
  *v10 = v6;
  v10[1] = partial apply for closure #1 in AdjustedListRowSeparatorLeading.body(content:);
  v10[2] = v7;
  return result;
}

double partial apply for closure #1 in AdjustedListRowSeparatorLeading.body(content:)()
{
  v1 = *(v0 + 16);
  v2 = static HorizontalAlignment.leading.getter();
  MEMORY[0x20F3089E0](v2);
  if (v1)
  {
    return result + 30.0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AdjustedListRowSeparatorLeading>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AdjustedListRowSeparatorLeading>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AdjustedListRowSeparatorLeading>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB031AdjustedListRowSeparatorLeadingVGAA017_AlignmentWritingF0VGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<AdjustedListRowSeparatorLeading> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AdjustedListRowSeparatorLeading>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AdjustedListRowSeparatorLeading> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AdjustedListRowSeparatorLeading> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AdjustedListRowSeparatorLeading> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB031AdjustedListRowSeparatorLeadingVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AdjustedListRowSeparatorLeading> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TrainingLoadViewModel?(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TrainingLoadViewModel?(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of TrainingLoadViewModel?(a3, &_sScPSgMd);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TrainingLoadViewModel?(a3, &_sScPSgMd);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TrainingLoadViewModel?(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TrainingLoadViewModel?(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of TrainingLoadViewModel?(a3, &_sScPSgMd);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TrainingLoadViewModel?(a3, &_sScPSgMd);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

int *TrainingLoadWidgetTimelineProvider.placeholder(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C66F000, v6, v7, "Requesting a new placeholder for Training Load Widget", v8, 2u);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  static Date.now.getter();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = WorkoutUIBundle.super.isa;
  v23._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x45554C41564F4ELL;
  v10._object = 0xE700000000000000;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v23);

  v14 = WorkoutUIBundle.super.isa;
  v24._object = 0xE000000000000000;
  v15._object = 0x800000020CB9F360;
  v15._countAndFlagsBits = 0xD00000000000002CLL;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v24);

  v19 = static Color.gray.getter();
  result = type metadata accessor for TrainingLoadDayEntry();
  v21 = a1 + result[5];
  *v21 = 0;
  *(v21 + 8) = 1;
  *(a1 + result[6]) = v13;
  *(a1 + result[7]) = v18;
  *(a1 + result[8]) = v19;
  return result;
}

uint64_t TrainingLoadWidgetTimelineProvider.getSnapshot(in:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = v6;
    v17 = a3;
    v18 = a4;
    v19 = v16;
    *v16 = 0;
    _os_log_impl(&dword_20C66F000, v14, v15, "Requesting a new snapshot for Training Load Widget", v16, 2u);
    v20 = v19;
    a4 = v18;
    a3 = v17;
    v6 = v23;
    MEMORY[0x20F30E080](v20, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  static Date.now.getter();
  TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:)(v9, v24, v25, a3, a4);
  return (*(v7 + 8))(v9, v6);
}

uint64_t TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v62 = a5;
  v63 = a4;
  v61 = a3;
  v7 = type metadata accessor for TimelineProviderContext();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v49 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v55 = v13;
  v56 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = type metadata accessor for Logger();
  v53 = *(v17 - 8);
  v54 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v20 = *(v12 + 16);
  v58 = a1;
  v64 = v11;
  v20(v16, a1, v11);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v57 = v12;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v50 = v20;
    v25 = v24;
    v26 = swift_slowAlloc();
    v52 = v8;
    v49 = v26;
    v67 = v26;
    *v25 = 136315138;
    lazy protocol witness table accessor for type TrainingLoadDayEntry and conformance TrainingLoadDayEntry(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v27 = v64;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = a2;
    v30 = v29;
    (*(v12 + 8))(v16, v27);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v67);
    a2 = v51;

    *(v25 + 4) = v31;
    _os_log_impl(&dword_20C66F000, v21, v22, "Generating entry at date: %s", v25, 0xCu);
    v32 = v49;
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x20F30E080](v32, -1, -1);
    v33 = v25;
    v20 = v50;
    MEMORY[0x20F30E080](v33, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v16, v64);
  }

  (*(v53 + 8))(v19, v54);
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v65, 1, 1, v34);
  v35 = v56;
  v36 = v64;
  v20(v56, v58, v64);
  v38 = v59;
  v37 = v60;
  (*(v59 + 16))(v66, a2, v60);
  v39 = v57;
  v40 = (*(v57 + 80) + 40) & ~*(v57 + 80);
  v41 = (v55 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (*(v38 + 80) + v41 + 16) & ~*(v38 + 80);
  v43 = swift_allocObject();
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  v44 = v62;
  *(v43 + 4) = v62;
  (*(v39 + 32))(&v43[v40], v35, v36);
  v45 = &v43[v41];
  v46 = v63;
  *v45 = v61;
  *(v45 + 1) = v46;
  (*(v38 + 32))(&v43[v42], v66, v37);
  v47 = v44;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v65, &async function pointer to partial apply for closure #1 in TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:), v43);
}

uint64_t TrainingLoadWidgetTimelineProvider.getTimeline(in:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = a2;
  v27 = a3;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = v7;
    v17 = a1;
    v18 = v6;
    v19 = a4;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_20C66F000, v14, v15, "Requesting a new timeline for Training Load Widget", v16, 2u);
    v21 = v20;
    a4 = v19;
    v6 = v18;
    a1 = v17;
    v7 = v25;
    MEMORY[0x20F30E080](v21, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  static Date.now.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v26;
  *(v22 + 24) = v27;

  TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:)(v9, a1, partial apply for closure #1 in TrainingLoadWidgetTimelineProvider.getTimeline(in:completion:), v22, a4);

  return (*(v7 + 8))(v9, v6);
}

uint64_t closure #1 in TrainingLoadWidgetTimelineProvider.getTimeline(in:completion:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v21 = a3;
  v22 = a2;
  v19 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for TimelineReloadPolicy();
  MEMORY[0x28223BE20](v10 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WidgetKit8TimelineVy9WorkoutUI20TrainingLoadDayEntryVGMd);
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = &v19 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WorkoutUI20TrainingLoadDayEntryVGMd);
  v14 = *(type metadata accessor for TrainingLoadDayEntry() - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20CB5DA70;
  outlined init with copy of TrainingLoadDayEntry(v19, v16 + v15);
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v17 = *(v4 + 8);
  v17(v6, v3);
  static TimelineReloadPolicy.after(_:)();
  v17(v9, v3);
  lazy protocol witness table accessor for type TrainingLoadDayEntry and conformance TrainingLoadDayEntry(&lazy protocol witness table cache variable for type TrainingLoadDayEntry and conformance TrainingLoadDayEntry, type metadata accessor for TrainingLoadDayEntry);
  Timeline.init(entries:policy:)();
  v22(v13);
  return (*(v11 + 8))(v13, v20);
}

uint64_t TrainingLoadWidgetTimelineProvider.relevance()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WidgetKit0A18RelevanceAttributeVyytGMd);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15RelevantContextVSgMd);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for RelevantContext.SleepCondition();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelVSgMd);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = type metadata accessor for RelevantContext.Group();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v7 = type metadata accessor for RelevantContext();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v2[25] = v8;
  v2[26] = *(v8 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](TrainingLoadWidgetTimelineProvider.relevance(), 0, 0);
}

uint64_t TrainingLoadWidgetTimelineProvider.relevance()()
{
  static WOLog.trainingLoad.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20C66F000, v1, v2, "Requesting new relevance for Training Load Widget", v3, 2u);
    MEMORY[0x20F30E080](v3, -1, -1);
  }

  v4 = v0[31];
  v5 = v0[25];
  v6 = v0[26];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];

  v10 = *(v6 + 8);
  v0[32] = v10;
  v10(v4, v5);
  static RelevantContext.Group.named(_:)();
  static RelevantContext.group(_:)();
  (*(v8 + 8))(v7, v9);
  if (FIShouldTrackTrainingLoad())
  {
    static Date.now.getter();
    v11 = swift_task_alloc();
    v0[33] = v11;
    *v11 = v0;
    v11[1] = TrainingLoadWidgetTimelineProvider.relevance();
    v12 = v0[15];
    v13 = v0[13];
    v14 = v0[3];

    return TrainingLoadWidgetTimelineProvider.queryTrainingLoadViewModel(for:)(v12, v13, v14);
  }

  else
  {
    static WOLog.trainingLoad.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20C66F000, v16, v17, "Tracking Training Load is Disabled. Widget is not relevant", v18, 2u);
      MEMORY[0x20F30E080](v18, -1, -1);
    }

    v19 = v0[27];
    v20 = v0[25];
    v21 = v0[22];
    v22 = v0[19];
    v23 = v0[20];
    v25 = v0[24];

    v10(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WidgetKit0D18RelevanceAttributeVyytGGMd);
    *(swift_allocObject() + 16) = xmmword_20CB5DA70;
    (*(v23 + 16))(v21, v25, v22);
    WidgetRelevanceAttribute<A>.init(context:)();
    WidgetRelevance.init(_:)();
    (*(v23 + 8))(v25, v22);

    v24 = v0[1];

    return v24();
  }
}

{
  v2 = *v1;

  v3 = v2[13];
  v4 = v2[12];
  v5 = v2[11];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = TrainingLoadWidgetTimelineProvider.relevance();
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = TrainingLoadWidgetTimelineProvider.relevance();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  v4 = *(ViewModel - 8);
  (*(v4 + 56))(v1, 0, 1, ViewModel);
  outlined init with copy of TrainingLoadViewModel?(v1, v2, &_s9WorkoutUI21TrainingLoadViewModelVSgMd);
  v5 = (*(v4 + 48))(v2, 1, ViewModel);
  v6 = *(v0 + 112);
  if (v5 == 1)
  {
    outlined destroy of TrainingLoadViewModel?(v6, &_s9WorkoutUI21TrainingLoadViewModelVSgMd);
LABEL_4:
    static WOLog.trainingLoad.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20C66F000, v8, v9, "Insufficient data to display training load. Widget is not relevant", v10, 2u);
      MEMORY[0x20F30E080](v10, -1, -1);
    }

    v11 = *(v0 + 256);
    v12 = *(v0 + 224);
    v13 = *(v0 + 200);
    v14 = *(v0 + 176);
    v15 = *(v0 + 152);
    v16 = *(v0 + 160);
    v33 = *(v0 + 120);
    v32 = *(v0 + 192);

    v11(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WidgetKit0D18RelevanceAttributeVyytGGMd);
    *(swift_allocObject() + 16) = xmmword_20CB5DA70;
    (*(v16 + 16))(v14, v32, v15);
    WidgetRelevanceAttribute<A>.init(context:)();
    WidgetRelevance.init(_:)();
    outlined destroy of TrainingLoadViewModel?(v33, &_s9WorkoutUI21TrainingLoadViewModelVSgMd);
    (*(v16 + 8))(v32, v15);

    v17 = *(v0 + 8);

    return v17();
  }

  v7 = *(v6 + *(ViewModel + 36) + 8);
  outlined destroy of TrainingLoadViewModel(v6, type metadata accessor for TrainingLoadViewModel);
  if (v7)
  {
    goto LABEL_4;
  }

  v19 = *(v0 + 192);
  v20 = *(v0 + 152);
  v21 = *(v0 + 160);
  v23 = *(v0 + 72);
  v22 = *(v0 + 80);
  v24 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10AppIntents15RelevantContextVGMd);
  *(v0 + 272) = *(v21 + 72);
  v25 = *(v21 + 80);
  *(v0 + 312) = v25;
  v26 = (v25 + 32) & ~v25;
  v27 = swift_allocObject();
  *(v0 + 280) = v27;
  *(v27 + 16) = xmmword_20CB5DA80;
  v28 = *(v21 + 16);
  *(v0 + 288) = v28;
  *(v0 + 296) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v28(v27 + v26, v19, v20);
  static RelevantContext.SleepCondition.wakeup.getter();
  static RelevantContext.sleep(_:)();
  (*(v23 + 8))(v22, v24);
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *v29 = v0;
  v29[1] = TrainingLoadWidgetTimelineProvider.relevance();
  v30 = *(v0 + 56);
  v31 = *(v0 + 24);

  return TrainingLoadWidgetTimelineProvider.recentWorkoutRelevanceContext()(v30, v31);
}

{

  return MEMORY[0x2822009F8](TrainingLoadWidgetTimelineProvider.relevance(), 0, 0);
}

{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 56);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v46 = *(v2 + 32);
    v46(*(v0 + 184), v3, v1);
    static WOLog.trainingLoad.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20C66F000, v19, v20, "Relevance for Training Load Widget detected a recent workout", v21, 2u);
      MEMORY[0x20F30E080](v21, -1, -1);
    }

    v41 = *(v0 + 288);
    v22 = *(v0 + 312);
    v42 = *(v0 + 280);
    v44 = *(v0 + 272);
    v40 = *(v0 + 256);
    v23 = *(v0 + 240);
    v24 = *(v0 + 200);
    v25 = *(v0 + 176);
    v26 = *(v0 + 184);
    v28 = *(v0 + 152);
    v27 = *(v0 + 160);

    v40(v23, v24);
    v41(v25, v26, v28);
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1uLL, 3, 1, v42);
    v30 = v26;
    v4 = v29;
    (*(v27 + 8))(v30, v28);
    *(v4 + 16) = 3;
    v46(v4 + ((v22 + 32) & ~v22) + 2 * v44, v25, v28);
    v5 = *(v4 + 16);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:

    v10 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  outlined destroy of TrainingLoadViewModel?(v3, &_s10AppIntents15RelevantContextVSgMd);
  v4 = *(v0 + 280);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = *(v0 + 160);
  v7 = *(v0 + 40);
  v8 = (*(v0 + 312) + 32) & ~*(v0 + 312);
  v47 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v9 = 0;
  v10 = v47;
  v43 = v4 + v8;
  v45 = v5;
  do
  {
    v11 = *(v0 + 288);
    v13 = *(v0 + 168);
    v12 = *(v0 + 176);
    v14 = *(v0 + 152);
    v11(v12, v43 + *(v0 + 272) * v9, v14);
    v11(v13, v12, v14);
    WidgetRelevanceAttribute<A>.init(context:)();
    (*(v6 + 8))(v12, v14);
    v16 = *(v47 + 16);
    v15 = *(v47 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
    }

    v17 = *(v0 + 48);
    v18 = *(v0 + 32);
    ++v9;
    *(v47 + 16) = v16 + 1;
    (*(v7 + 32))(v47 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v17, v18);
  }

  while (v45 != v9);

LABEL_12:
  static WOLog.trainingLoad.getter();

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = *(v10 + 16);

    _os_log_impl(&dword_20C66F000, v31, v32, "Returning %ld contexts.", v33, 0xCu);
    MEMORY[0x20F30E080](v33, -1, -1);
  }

  else
  {
  }

  v34 = *(v0 + 192);
  v35 = *(v0 + 152);
  v36 = *(v0 + 160);
  v37 = *(v0 + 120);
  (*(v0 + 256))(*(v0 + 232), *(v0 + 200));
  WidgetRelevance.init(_:)();
  outlined destroy of TrainingLoadViewModel?(v37, &_s9WorkoutUI21TrainingLoadViewModelVSgMd);
  (*(v36 + 8))(v34, v35);

  v38 = *(v0 + 8);

  return v38();
}

{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  v4 = *(ViewModel - 8);
  (*(v4 + 56))(v1, 1, 1, ViewModel);
  outlined init with copy of TrainingLoadViewModel?(v1, v2, &_s9WorkoutUI21TrainingLoadViewModelVSgMd);
  v5 = (*(v4 + 48))(v2, 1, ViewModel);
  v6 = *(v0 + 112);
  if (v5 == 1)
  {
    outlined destroy of TrainingLoadViewModel?(v6, &_s9WorkoutUI21TrainingLoadViewModelVSgMd);
LABEL_4:
    static WOLog.trainingLoad.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20C66F000, v8, v9, "Insufficient data to display training load. Widget is not relevant", v10, 2u);
      MEMORY[0x20F30E080](v10, -1, -1);
    }

    v11 = *(v0 + 256);
    v12 = *(v0 + 224);
    v13 = *(v0 + 200);
    v14 = *(v0 + 176);
    v15 = *(v0 + 152);
    v16 = *(v0 + 160);
    v33 = *(v0 + 120);
    v32 = *(v0 + 192);

    v11(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WidgetKit0D18RelevanceAttributeVyytGGMd);
    *(swift_allocObject() + 16) = xmmword_20CB5DA70;
    (*(v16 + 16))(v14, v32, v15);
    WidgetRelevanceAttribute<A>.init(context:)();
    WidgetRelevance.init(_:)();
    outlined destroy of TrainingLoadViewModel?(v33, &_s9WorkoutUI21TrainingLoadViewModelVSgMd);
    (*(v16 + 8))(v32, v15);

    v17 = *(v0 + 8);

    return v17();
  }

  v7 = *(v6 + *(ViewModel + 36) + 8);
  outlined destroy of TrainingLoadViewModel(v6, type metadata accessor for TrainingLoadViewModel);
  if (v7)
  {
    goto LABEL_4;
  }

  v19 = *(v0 + 192);
  v20 = *(v0 + 152);
  v21 = *(v0 + 160);
  v23 = *(v0 + 72);
  v22 = *(v0 + 80);
  v24 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10AppIntents15RelevantContextVGMd);
  *(v0 + 272) = *(v21 + 72);
  v25 = *(v21 + 80);
  *(v0 + 312) = v25;
  v26 = (v25 + 32) & ~v25;
  v27 = swift_allocObject();
  *(v0 + 280) = v27;
  *(v27 + 16) = xmmword_20CB5DA80;
  v28 = *(v21 + 16);
  *(v0 + 288) = v28;
  *(v0 + 296) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v28(v27 + v26, v19, v20);
  static RelevantContext.SleepCondition.wakeup.getter();
  static RelevantContext.sleep(_:)();
  (*(v23 + 8))(v22, v24);
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *v29 = v0;
  v29[1] = TrainingLoadWidgetTimelineProvider.relevance();
  v30 = *(v0 + 56);
  v31 = *(v0 + 24);

  return TrainingLoadWidgetTimelineProvider.recentWorkoutRelevanceContext()(v30, v31);
}

uint64_t TrainingLoadWidgetTimelineProvider.queryTrainingLoadViewModel(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  v3[5] = SampleDaySummaryCollection;
  v3[6] = *(SampleDaySummaryCollection - 8);
  v3[7] = swift_task_alloc();
  DataType = type metadata accessor for TrainingLoadDataType();
  v3[8] = DataType;
  v3[9] = *(DataType - 8);
  v3[10] = swift_task_alloc();
  SummaryQueryDescriptor = type metadata accessor for TrainingLoadSummaryQueryDescriptor();
  v3[11] = SummaryQueryDescriptor;
  v3[12] = *(SummaryQueryDescriptor - 8);
  v3[13] = swift_task_alloc();
  v3[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV5lower_AC5uppertMd);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  v3[18] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  v8 = type metadata accessor for DayIndex();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v9 = type metadata accessor for Calendar.Identifier();
  v3[26] = v9;
  v3[27] = *(v9 - 8);
  v3[28] = swift_task_alloc();
  v10 = type metadata accessor for Calendar();
  v3[29] = v10;
  v3[30] = *(v10 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v11 = type metadata accessor for GregorianDayRange();
  v3[33] = v11;
  v3[34] = *(v11 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](TrainingLoadWidgetTimelineProvider.queryTrainingLoadViewModel(for:), 0, 0);
}

uint64_t TrainingLoadWidgetTimelineProvider.queryTrainingLoadViewModel(for:)()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  (*(v2 + 104))(v1, *MEMORY[0x277CC9830], v3);
  Calendar.init(identifier:)();
  (*(v2 + 8))(v1, v3);
  type metadata accessor for MainActor();
  v0[37] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](TrainingLoadWidgetTimelineProvider.queryTrainingLoadViewModel(for:), v5, v4);
}

{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[21];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[3];

  (*(v6 + 16))(v5, v8, v7);
  v9 = *(v4 + 16);
  v9(v1, v2, v3);
  DayIndex.init(date:calendar:)();
  static DayIndex.- infix(_:_:)();
  lazy protocol witness table accessor for type TrainingLoadDayEntry and conformance TrainingLoadDayEntry(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
  v10 = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (v10)
  {
    v29 = v9;
    v30 = v0[31];
    v33 = v0[30];
    v31 = v0[29];
    v32 = v0[32];
    v13 = v0[25];
    v27 = v13;
    v28 = v0[24];
    v14 = v0[22];
    v15 = v0[23];
    v16 = v0[18];
    v25 = v16;
    v26 = v0[17];
    v17 = v0[15];
    v18 = v0[16];
    v19 = v0[14];
    v20 = v15[2];
    v20(v18);
    (v20)(v18 + *(v19 + 48), v13, v14);
    outlined init with copy of TrainingLoadViewModel?(v18, v17, &_s9HealthKit8DayIndexV5lower_AC5uppertMd);
    v21 = *(v19 + 48);
    v22 = v15[4];
    v22(v16, v17, v14);
    v23 = v15[1];
    v23(v17 + v21, v14);
    outlined init with take of (lower: DayIndex, upper: DayIndex)(v18, v17);
    v22(v25 + *(v26 + 36), v17 + *(v19 + 48), v14);
    v23(v17, v14);
    v29(v30, v32, v31);
    GregorianDayRange.init(dayIndexRange:gregorianCalendar:)();
    v23(v28, v14);
    v23(v27, v14);
    (*(v33 + 8))(v32, v31);
    v10 = TrainingLoadWidgetTimelineProvider.queryTrainingLoadViewModel(for:);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  GregorianDayRange.dayIndexRange.getter();
  GregorianDayRange.gregorianCalendar.getter();
  *(v0 + 336) = *MEMORY[0x277D0FEE8];
  v3 = *(v2 + 104);
  *(v0 + 304) = v3;
  *(v0 + 312) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v3(v1);
  TrainingLoadSummaryQueryDescriptor.init(morningIndexRange:gregorianCalendar:typeOfLoad:)();
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  *v4 = v0;
  v4[1] = TrainingLoadWidgetTimelineProvider.queryTrainingLoadViewModel(for:);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);

  return MEMORY[0x2821688D8](v5, v6);
}

{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = TrainingLoadWidgetTimelineProvider.queryTrainingLoadViewModel(for:);
  }

  else
  {
    v2 = TrainingLoadWidgetTimelineProvider.queryTrainingLoadViewModel(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  v14 = *(v0 + 88);
  v15 = *(v0 + 104);
  v7 = *(v0 + 56);
  v8 = *(v0 + 48);
  v13 = *(v0 + 40);
  v9 = *(v0 + 16);
  (*(v0 + 304))(v6, *(v0 + 336), *(v0 + 64));
  (*(v3 + 16))(v1, v2, v4);
  SampleDaySummary = TrainingLoadSampleDaySummaryCollection.daySummaries.getter();
  TrainingLoadViewModel.init(dataType:dayRange:chronologicalTrainingLoadDaySummaries:)(v6, v1, SampleDaySummary, v9);
  (*(v8 + 8))(v7, v13);
  (*(v5 + 8))(v15, v14);
  (*(v3 + 8))(v2, v4);

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[36];
  v3 = v0[33];
  v2 = v0[34];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t TrainingLoadWidgetTimelineProvider.recentWorkoutRelevanceContext()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for Logger();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = type metadata accessor for RelevantContext.DateKind();
  v2[8] = v5;
  v2[9] = *(v5 - 8);
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for DateInterval();
  v2[11] = v6;
  v2[12] = *(v6 - 8);
  v2[13] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v2[14] = v7;
  v2[15] = *(v7 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v8 = swift_task_alloc();
  v2[18] = v8;
  *v8 = v2;
  v8[1] = TrainingLoadWidgetTimelineProvider.recentWorkoutRelevanceContext();

  return TrainingLoadWidgetTimelineProvider.fetchWorkoutsFromHealthKit()(a2);
}

uint64_t TrainingLoadWidgetTimelineProvider.recentWorkoutRelevanceContext()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = TrainingLoadWidgetTimelineProvider.recentWorkoutRelevanceContext();
  }

  else
  {
    v4 = TrainingLoadWidgetTimelineProvider.recentWorkoutRelevanceContext();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

unint64_t TrainingLoadWidgetTimelineProvider.recentWorkoutRelevanceContext()()
{
  v1 = v0[19];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_14:
    v6 = v0 + 6;

    static WOLog.trainingLoad.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20C66F000, v22, v23, "No last workout found", v24, 2u);
      MEMORY[0x20F30E080](v24, -1, -1);
    }

    v15 = v0 + 4;
    v16 = v0 + 3;
    goto LABEL_17;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_3:
  v3 = __OFSUB__(v2, 1);
  result = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else if ((v1 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v0[19] + 8 * result + 32);
      goto LABEL_8;
    }

    __break(1u);
    return result;
  }

  v5 = MEMORY[0x20F30C990](result, v0[19]);
LABEL_8:
  v6 = v0 + 17;

  v7 = [v5 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceNow.getter();
  if (fabs(v8) > 1800.0)
  {
    static WOLog.trainingLoad.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20C66F000, v9, v10, "Last workout not within window", v11, 2u);
      MEMORY[0x20F30E080](v11, -1, -1);
    }

    v12 = v0[7];
    v14 = v0[3];
    v13 = v0[4];

    (*(v13 + 8))(v12, v14);
    v15 = v0 + 15;
    v16 = v0 + 14;
LABEL_17:
    v21 = 1;
    goto LABEL_18;
  }

  v15 = v0 + 15;
  v16 = v0 + 14;
  v17 = v0[12];
  v18 = v0[13];
  v29 = v5;
  v20 = v0[9];
  v19 = v0[10];
  v30 = v0[8];
  v31 = v0[11];
  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  DateInterval.init(start:duration:)();
  static RelevantContext.DateKind.default.getter();
  static RelevantContext.date(interval:kind:)();

  (*(v20 + 8))(v19, v30);
  (*(v17 + 8))(v18, v31);
  v21 = 0;
LABEL_18:
  v25 = *v15;
  v26 = v0[2];
  (*(v25 + 8))(*v6, *v16);
  v27 = type metadata accessor for RelevantContext();
  (*(*(v27 - 8) + 56))(v26, v21, 1, v27);

  v28 = v0[1];

  return v28();
}

uint64_t TrainingLoadWidgetTimelineProvider.recentWorkoutRelevanceContext()()
{
  v1 = v0[20];
  static WOLog.trainingLoad.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[20];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20C66F000, v3, v4, "Getting recent workout relevance for widget failed with %@", v7, 0xCu);
    outlined destroy of TrainingLoadViewModel?(v8, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v8, -1, -1);
    MEMORY[0x20F30E080](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);
  v12 = type metadata accessor for RelevantContext();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

  v13 = v0[1];

  return v13();
}

uint64_t TrainingLoadWidgetTimelineProvider.fetchWorkoutsFromHealthKit()(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit23HKSampleQueryDescriptorVySo9HKWorkoutCGMd);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit17HKSamplePredicateVySo9HKWorkoutCGMd);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Calendar.Component();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v1[12] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v6 = type metadata accessor for Calendar.Identifier();
  v1[18] = v6;
  v1[19] = *(v6 - 8);
  v1[20] = swift_task_alloc();
  v7 = type metadata accessor for Calendar();
  v1[21] = v7;
  v1[22] = *(v7 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](TrainingLoadWidgetTimelineProvider.fetchWorkoutsFromHealthKit(), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = TrainingLoadWidgetTimelineProvider.fetchWorkoutsFromHealthKit();
  }

  else
  {
    *(v4 + 216) = a1;
    v5 = TrainingLoadWidgetTimelineProvider.fetchWorkoutsFromHealthKit();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t TrainingLoadWidgetTimelineProvider.fetchWorkoutsFromHealthKit()()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[14];
  v5 = v0[11];
  v26 = v0[12];
  v27 = v0[13];
  v6 = v0[10];
  v25 = v0[9];
  (*(v1 + 104))(v2, *MEMORY[0x277CC9830], v3);
  Calendar.init(identifier:)();
  (*(v1 + 8))(v2, v3);
  Date.init()();
  Calendar.startOfDay(for:)();
  (*(v6 + 104))(v5, *MEMORY[0x277CC9968], v25);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v6 + 8))(v5, v25);
  v7 = *(v4 + 48);
  if (v7(v26, 1, v27) == 1)
  {
    v9 = v0[12];
    v8 = v0[13];
    (*(v0[14] + 16))(v0[15], v0[17], v8);
    if (v7(v9, 1, v8) != 1)
    {
      outlined destroy of TrainingLoadViewModel?(v0[12], &_s10Foundation4DateVSgMd);
    }
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  }

  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  v13 = objc_opt_self();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v15 = Date._bridgeToObjectiveC()().super.isa;
  v16 = [v13 predicateForSamplesWithStartDate:isa endDate:v15 options:0];
  v0[24] = v16;

  type metadata accessor for HKSample(0, &lazy cache variable for type metadata for HKSample);
  v17 = v16;
  static HKSamplePredicate.workout(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9HealthKit17HKSamplePredicateVySo9HKWorkoutCGGMd);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20CB5DA70;
  (*(v11 + 16))(v19 + v18, v10, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14SortDescriptorVySo9HKWorkoutCGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14SortDescriptorVySo9HKWorkoutCGMd);
  *(swift_allocObject() + 16) = xmmword_20CB5DA70;
  KeyPath = swift_getKeyPath();
  MEMORY[0x20F302360](KeyPath, 1);
  type metadata accessor for HKSample(0, &lazy cache variable for type metadata for HKWorkout);
  HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
  v21 = swift_task_alloc();
  v0[25] = v21;
  *v21 = v0;
  v21[1] = TrainingLoadWidgetTimelineProvider.fetchWorkoutsFromHealthKit();
  v23 = v0[2];
  v22 = v0[3];

  return MEMORY[0x282120380](v23, v22);
}

{
  v1 = *(v0 + 176);
  v17 = *(v0 + 168);
  v18 = *(v0 + 184);
  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  v2 = *(v0 + 112);
  v14 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);

  (*(v9 + 8))(v6, v8);
  (*(v4 + 8))(v5, v7);
  v10 = *(v2 + 8);
  v10(v14, v3);
  v10(v15, v3);
  v10(v16, v3);
  (*(v1 + 8))(v18, v17);

  v11 = *(v0 + 8);
  v12 = *(v0 + 216);

  return v11(v12);
}

{
  v1 = *(v0 + 176);
  v16 = *(v0 + 168);
  v17 = *(v0 + 184);
  v14 = *(v0 + 128);
  v15 = *(v0 + 136);
  v2 = *(v0 + 112);
  v13 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);

  (*(v9 + 8))(v6, v8);
  (*(v4 + 8))(v5, v7);
  v10 = *(v2 + 8);
  v10(v13, v3);
  v10(v14, v3);
  v10(v15, v3);
  (*(v1 + 8))(v17, v16);

  v11 = *(v0 + 8);

  return v11();
}

void key path getter for HKSample.endDate : HKWorkout(id *a1)
{
  v1 = [*a1 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t closure #1 in TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v11 = type metadata accessor for Logger();
  v8[10] = v11;
  v8[11] = *(v11 - 8);
  v8[12] = swift_task_alloc();
  v12 = type metadata accessor for DayIndex();
  v8[13] = v12;
  v8[14] = *(v12 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  v8[17] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v8[18] = v13;
  v8[19] = *(v13 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = type metadata accessor for TrainingLoadDayEntry();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = type metadata accessor for TrainingLoadViewModel(0);
  v14 = swift_task_alloc();
  v8[25] = v14;
  v15 = swift_task_alloc();
  v8[26] = v15;
  *v15 = v8;
  v15[1] = closure #1 in TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:);

  return TrainingLoadWidgetTimelineProvider.queryTrainingLoadViewModel(for:)(v14, a5, a4);
}

uint64_t closure #1 in TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:)()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = closure #1 in TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:);
  }

  else
  {
    v2 = closure #1 in TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[24];
  v2 = v0[25];
  (*(v0[19] + 16))(v0[20], v0[6], v0[18]);
  v3 = *(v1 + 40);
  v4 = (v2 + *(v1 + 36));
  v35 = *v4;
  v34 = *(v4 + 8);
  if (*(v2 + v3 + 8))
  {
    object = *(v2 + v3 + 8);
    countAndFlagsBits = *(v2 + v3);
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = WorkoutUIBundle.super.isa;
    v37._object = 0xE000000000000000;
    v6._countAndFlagsBits = 0x45554C41564F4ELL;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v6._object = 0xE700000000000000;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v37._countAndFlagsBits = 0;
    v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v37);
    object = v9._object;
    countAndFlagsBits = v9._countAndFlagsBits;
  }

  v10 = v0[25];
  v11 = v0[23];
  v12 = v0[21];
  v27 = v0[24];
  v28 = v0[19];
  v29 = v0[18];
  v30 = v0[20];
  v13 = v0[16];
  v14 = v0[17];
  v15 = v0[14];
  v16 = v0[15];
  v17 = v0[13];
  v31 = v0[7];

  GregorianDayRange.dayIndexRange.getter();
  (*(v15 + 16))(v16, v14 + *(v13 + 36), v17);
  outlined destroy of TrainingLoadViewModel?(v14, &_sSNy9HealthKit8DayIndexVGMd);
  v18 = TrainingLoadViewModel.localizedDescription(onDay:)(v16);
  v20 = v19;
  (*(v15 + 8))(v16, v17);
  v21 = *(v10 + *(v27 + 56));
  (*(v28 + 32))(v11, v30, v29);
  v22 = v11 + v12[5];
  *v22 = v35;
  *(v22 + 8) = v34;
  v23 = (v11 + v12[6]);
  *v23 = countAndFlagsBits;
  v23[1] = object;
  v24 = (v11 + v12[7]);
  *v24 = v18;
  v24[1] = v20;
  *(v11 + v12[8]) = v21;

  v31(v11);
  outlined destroy of TrainingLoadViewModel(v11, type metadata accessor for TrainingLoadDayEntry);
  outlined destroy of TrainingLoadViewModel(v10, type metadata accessor for TrainingLoadViewModel);

  v25 = v0[1];

  return v25();
}

{
  v1 = v0[27];
  static WOLog.trainingLoad.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20C66F000, v3, v4, "Failed to get day summary collection with %@. Returning placeholder.", v6, 0xCu);
    outlined destroy of TrainingLoadViewModel?(v7, &_sSo8NSObjectCSgMd);
    MEMORY[0x20F30E080](v7, -1, -1);
    MEMORY[0x20F30E080](v6, -1, -1);
  }

  v10 = v0[27];
  v11 = v0[22];
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  v15 = v0[7];

  (*(v13 + 8))(v12, v14);
  TrainingLoadWidgetTimelineProvider.placeholder(in:)(v11);
  v15(v11);

  outlined destroy of TrainingLoadViewModel(v11, type metadata accessor for TrainingLoadDayEntry);

  v16 = v0[1];

  return v16();
}

uint64_t protocol witness for TimelineProvider.relevances() in conformance TrainingLoadWidgetTimelineProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for TimelineProvider.relevances() in conformance TrainingLoadWidgetTimelineProvider;

  return MEMORY[0x282136270](a1, a2, a3);
}

uint64_t protocol witness for TimelineProvider.relevances() in conformance TrainingLoadWidgetTimelineProvider()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for TimelineProvider.relevance() in conformance TrainingLoadWidgetTimelineProvider(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for TimelineProvider.relevance() in conformance TrainingLoadWidgetTimelineProvider;

  return TrainingLoadWidgetTimelineProvider.relevance()(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for HKSample(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined init with take of (lower: DayIndex, upper: DayIndex)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV5lower_AC5uppertMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for TimelineProviderContext() - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1 + v7;
  v14 = *(v1 + v7);
  v15 = *(v13 + 1);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for closure #1 in TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:);

  return closure #1 in TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:)(a1, v10, v11, v12, v1 + v6, v14, v15, v1 + v9);
}

uint64_t partial apply for closure #1 in TrainingLoadWidgetTimelineProvider.generateEntryUsing(date:context:completion:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t lazy protocol witness table accessor for type TrainingLoadDayEntry and conformance TrainingLoadDayEntry(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of TrainingLoadViewModel?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_21(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_21TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t outlined destroy of TrainingLoadViewModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of TrainingLoadViewModel?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_32(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_32TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_32TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for IntervalSingleStepConfigurationView()
{
  result = type metadata singleton initialization cache for IntervalSingleStepConfigurationView;
  if (!type metadata singleton initialization cache for IntervalSingleStepConfigurationView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalSingleStepConfigurationView()
{
  type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<IntervalWorkoutConfiguration>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservedObject<WorkoutBlock>();
      if (v2 <= 0x3F)
      {
        _sSo21FIUIFormattingManagerCMaTm_7(319, &lazy cache variable for type metadata for FIUIFormattingManager);
        if (v3 <= 0x3F)
        {
          type metadata accessor for HKActivityMoveMode(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for StepType();
            if (v5 <= 0x3F)
            {
              type metadata accessor for Binding<UUID?>();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for EnvironmentObject<IntervalWorkoutConfiguration>()
{
  if (!lazy cache variable for type metadata for EnvironmentObject<IntervalWorkoutConfiguration>)
  {
    type metadata accessor for IntervalWorkoutConfiguration();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentObject<IntervalWorkoutConfiguration>);
    }
  }
}

void type metadata accessor for ObservedObject<WorkoutBlock>()
{
  if (!lazy cache variable for type metadata for ObservedObject<WorkoutBlock>)
  {
    type metadata accessor for WorkoutBlock();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60]);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<WorkoutBlock>);
    }
  }
}

void type metadata accessor for Binding<UUID?>()
{
  if (!lazy cache variable for type metadata for Binding<UUID?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<UUID?>);
    }
  }
}

uint64_t IntervalSingleStepConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaFRd__lFQOyAA6ButtonVyACy07WorkoutB00N7StepRowVAP0n8SkippingoP0VGG_ACyAA08ModifiedD0VyAXyAP08Intervalo4EditF0VAA30_EnvironmentKeyWritingModifierVyAP28ConfigurationNavigationModelCSgGGA0_y0N4Core0snY0CSgGGAXyAP0so10ChooseGoalF0VA4_GGQo_AA0Z4LinkVyAUA15_G_GMd);
  MEMORY[0x28223BE20](v110);
  v111 = &v88 - v2;
  v3 = type metadata accessor for StepType();
  v103 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGGMd);
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v118 = &v88 - v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaBRd__lFQOyAA6ButtonVyAA19_ConditionalContentVy07WorkoutB00M7StepRowVAN0m8SkippingnO0VGG_AMyAA08ModifiedL0VyAVyAN08Intervaln4EditC0VAA30_EnvironmentKeyWritingModifierVyAN28ConfigurationNavigationModelCSgGGAZy0M4Core0rmX0CSgGGAVyAN0rn10ChooseGoalC0VA2_GGQo_Md);
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = &v88 - v7;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaDRd__lFQOyAA6ButtonVyACy07WorkoutB00M7StepRowVAN0m8SkippingnO0VGG_ACyAA08ModifiedD0VyAVyAN08Intervaln4EditE0VAA30_EnvironmentKeyWritingModifierVyAN28ConfigurationNavigationModelCSgGGAZy0M4Core0rmX0CSgGGAVyAN0rn10ChooseGoalE0VA2_GGQo_AA0Y4LinkVyASA13_GGMd);
  MEMORY[0x28223BE20](v117);
  v108 = &v88 - v8;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyAA08ModifiedD0VyAGy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGALy0G4Core0hgP0CSgGGAGyAH0hi10ChooseGoalK0VAPGGAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyAGyACyAH0gI3RowVAH0g8SkippingiZ0VGAA01_d5ShapeO0VyAA9RectangleVGGG_AA05PlainyW0VQo_GACyA1_AAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAAA0_Rd__lFQOyA5_yA10_G_A_Qo_AA0Q4LinkVyA10_A_GG_GMd);
  MEMORY[0x28223BE20](v121);
  v119 = &v88 - v9;
  v102 = type metadata accessor for PlainButtonStyle();
  v95 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v94 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IntervalSingleStepConfigurationView();
  v112 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v113 = v12;
  v114 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA012_ConditionalE0Vy07WorkoutB00G7StepRowVAH0g8SkippinghI0VGAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
  v91 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v90 = &v88 - v13;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAA012_ConditionalI0Vy07WorkoutB00K7StepRowVAL0k8SkippinglM0VGAA01_I13ShapeModifierVyAA9RectangleVGGG_AA05PlaingE0VQo_Md);
  v93 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v92 = &v88 - v14;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGALy0G4Core0hgP0CSgGGAGyAH0hi10ChooseGoalK0VAPGGAA0K0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyAGyACyAH0gI3RowVAH0g8SkippingiZ0VGAA01_d5ShapeO0VyAA9RectangleVGGG_AA05PlainyW0VQo__GMd);
  MEMORY[0x28223BE20](v97);
  v99 = &v88 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGMd);
  MEMORY[0x28223BE20](v115);
  v89 = &v88 - v16;
  v17 = type metadata accessor for UUID();
  v96 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v88 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v19);
  v21 = &v88 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v88 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v88 - v29;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyACyAF0fH3RowVAF0f8SkippinghY0VGAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainxV0VQo_GMd);
  MEMORY[0x28223BE20](v116);
  v98 = &v88 - v31;
  if ((static Platform.current.getter() & 1) == 0)
  {
    v118 = v1;
    v37 = WorkoutBlock.steps.getter();
    if (v37 >> 62)
    {
      v54 = v37;
      v55 = __CocoaSet.count.getter();
      v37 = v54;
      if (v55)
      {
LABEL_6:
        if ((v37 & 0xC000000000000001) != 0)
        {
          MEMORY[0x20F30C990](0, v37);
          swift_unknownObjectRelease();
        }

        else
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (!v38)
          {
            __break(1u);
            goto LABEL_32;
          }
        }

        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
        MEMORY[0x20F30B100](v39);
        v40 = WorkoutBlock.steps.getter();
        if (v40 >> 62)
        {
          v56 = v40;
          v57 = __CocoaSet.count.getter();
          v40 = v56;
          if (v57)
          {
LABEL_10:
            if ((v40 & 0xC000000000000001) == 0)
            {
              if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_34;
              }

              goto LABEL_13;
            }

LABEL_32:
            MEMORY[0x20F30C990](0);
LABEL_13:

            MEMORY[0x20F304900](v41);

            v42 = 0;
LABEL_19:
            v58 = v96;
            (*(v96 + 56))(v27, v42, 1, v17);
            v59 = *(v19 + 48);
            _s10Foundation4UUIDVSgWOcTm_2(v30, v21, &_s10Foundation4UUIDVSgMd);
            _s10Foundation4UUIDVSgWOcTm_2(v27, &v21[v59], &_s10Foundation4UUIDVSgMd);
            v60 = *(v58 + 48);
            if (v60(v21, 1, v17) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_2(v27, &_s10Foundation4UUIDVSgMd);
              _s10Foundation4UUIDVSgWOhTm_2(v30, &_s10Foundation4UUIDVSgMd);
              if (v60(&v21[v59], 1, v17) == 1)
              {
                _s10Foundation4UUIDVSgWOhTm_2(v21, &_s10Foundation4UUIDVSgMd);
                v61 = v119;
LABEL_28:
                v83 = v89;
                IntervalSingleStepConfigurationView.navigationDestination()(v89);
                _s10Foundation4UUIDVSgWOcTm_2(v83, v99, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGMd);
                swift_storeEnumTagMultiPayload();
                lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>();
                v84 = lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA012_ConditionalE0Vy07WorkoutB00G7StepRowVAH0g8SkippinghI0VGAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
                v85 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
                v122 = v100;
                v123 = v102;
                v124 = v84;
                v125 = v85;
                swift_getOpaqueTypeConformance2();
                v76 = v98;
                _ConditionalContent<>.init(storage:)();
                _s10Foundation4UUIDVSgWOhTm_2(v83, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGMd);
                goto LABEL_29;
              }
            }

            else
            {
              _s10Foundation4UUIDVSgWOcTm_2(v21, v24, &_s10Foundation4UUIDVSgMd);
              if (v60(&v21[v59], 1, v17) != 1)
              {
                v78 = v96;
                v79 = &v21[v59];
                v80 = v88;
                (*(v96 + 32))(v88, v79, v17);
                _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
                v81 = dispatch thunk of static Equatable.== infix(_:_:)();
                v82 = *(v78 + 8);
                v82(v80, v17);
                _s10Foundation4UUIDVSgWOhTm_2(v27, &_s10Foundation4UUIDVSgMd);
                _s10Foundation4UUIDVSgWOhTm_2(v30, &_s10Foundation4UUIDVSgMd);
                v82(v24, v17);
                _s10Foundation4UUIDVSgWOhTm_2(v21, &_s10Foundation4UUIDVSgMd);
                v61 = v119;
                v62 = v118;
                if (v81)
                {
                  goto LABEL_28;
                }

LABEL_26:
                v63 = v114;
                outlined init with copy of IntervalSingleStepConfigurationView(v62, v114, type metadata accessor for IntervalSingleStepConfigurationView);
                v64 = (*(v112 + 80) + 16) & ~*(v112 + 80);
                v65 = swift_allocObject();
                v66 = outlined init with take of IntervalSingleStepConfigurationView(v63, v65 + v64, type metadata accessor for IntervalSingleStepConfigurationView);
                MEMORY[0x28223BE20](v66);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0Vy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGAA01_D13ShapeModifierVyAA9RectangleVGGMd);
                lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
                v67 = v90;
                Button.init(action:label:)();
                v68 = v94;
                PlainButtonStyle.init()();
                v69 = lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA012_ConditionalE0Vy07WorkoutB00G7StepRowVAH0g8SkippinghI0VGAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
                v70 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
                v71 = v92;
                v72 = v100;
                v73 = v102;
                View.buttonStyle<A>(_:)();
                (*(v95 + 8))(v68, v73);
                (*(v91 + 8))(v67, v72);
                v74 = v93;
                v75 = v101;
                (*(v93 + 16))(v99, v71, v101);
                swift_storeEnumTagMultiPayload();
                lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>();
                v122 = v72;
                v123 = v73;
                v124 = v69;
                v125 = v70;
                swift_getOpaqueTypeConformance2();
                v76 = v98;
                _ConditionalContent<>.init(storage:)();
                v77 = v71;
                v61 = v119;
                (*(v74 + 8))(v77, v75);
LABEL_29:
                v52 = &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyACyAF0fH3RowVAF0f8SkippinghY0VGAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainxV0VQo_GMd;
                outlined init with copy of _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>(v76, v61, &_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyACyAF0fH3RowVAF0f8SkippinghY0VGAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainxV0VQo_GMd);
                swift_storeEnumTagMultiPayload();
                lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
                lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>> and conformance <> _ConditionalContent<A, B>();
                _ConditionalContent<>.init(storage:)();
                v53 = v76;
                return outlined destroy of _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>(v53, v52);
              }

              _s10Foundation4UUIDVSgWOhTm_2(v27, &_s10Foundation4UUIDVSgMd);
              _s10Foundation4UUIDVSgWOhTm_2(v30, &_s10Foundation4UUIDVSgMd);
              (*(v96 + 8))(v24, v17);
            }

            _s10Foundation4UUIDVSgWOhTm_2(v21, &_s10Foundation4UUIDVSg_ADtMd);
LABEL_25:
            v62 = v118;
            goto LABEL_26;
          }
        }

        else if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_10;
        }

        v42 = 1;
        goto LABEL_19;
      }
    }

    else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

  if (*v1)
  {
    v32 = v114;
    outlined init with copy of IntervalSingleStepConfigurationView(v1, v114, type metadata accessor for IntervalSingleStepConfigurationView);
    v33 = (*(v112 + 80) + 16) & ~*(v112 + 80);
    v34 = swift_allocObject();
    v35 = outlined init with take of IntervalSingleStepConfigurationView(v32, v34 + v33, type metadata accessor for IntervalSingleStepConfigurationView);
    MEMORY[0x28223BE20](v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E7StepRowVAD0e8SkippingfG0VGMd);
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow> and conformance <> _ConditionalContent<A, B>();
    Button.init(action:label:)();
    v36 = v103;
    (*(v103 + 104))(v5, *MEMORY[0x277D7E720], v3);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type StepType and conformance StepType, MEMORY[0x277D7E728]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v36 + 8))(v5, v3);
    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    EnvironmentObject.projectedValue.getter();
    swift_getKeyPath();
    EnvironmentObject.Wrapper.subscript.getter();

    MEMORY[0x28223BE20](v43);
    v44 = lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGGMd);
    v87 = lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>();
    v45 = v105;
    v46 = v106;
    v47 = v115;
    v48 = v118;
    View.navigationDestination<A>(isPresented:destination:)();

    (*(v104 + 8))(v48, v46);
    v49 = v107;
    v50 = v109;
    (*(v107 + 16))(v111, v45, v109);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVy07WorkoutB00G7StepRowVAF0g8SkippinghI0VGAEyAA08ModifiedF0VyAMyAF08IntervalH8EditViewVAA30_EnvironmentKeyWritingModifierVyAF013ConfigurationC5ModelCSgGGAQy0G4Core0lgS0CSgGGAMyAF0lh10ChooseGoalN0VAUGGGMd);
    v122 = v46;
    v123 = v47;
    v124 = v44;
    v125 = v87;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVy07WorkoutB00G7StepRowVAF0g8SkippinghI0VGAEyAA08ModifiedF0VyAMyAF08IntervalH8EditViewVAA30_EnvironmentKeyWritingModifierVyAF013ConfigurationC5ModelCSgGGAQy0G4Core0lgS0CSgGGAMyAF0lh10ChooseGoalN0VAUGGGMd);
    v51 = v108;
    _ConditionalContent<>.init(storage:)();
    (*(v49 + 8))(v45, v50);
    v52 = &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaDRd__lFQOyAA6ButtonVyACy07WorkoutB00M7StepRowVAN0m8SkippingnO0VGG_ACyAA08ModifiedD0VyAVyAN08Intervaln4EditE0VAA30_EnvironmentKeyWritingModifierVyAN28ConfigurationNavigationModelCSgGGAZy0M4Core0rmX0CSgGGAVyAN0rn10ChooseGoalE0VA2_GGQo_AA0Y4LinkVyASA13_GGMd;
    outlined init with copy of _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>(v51, v119, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaDRd__lFQOyAA6ButtonVyACy07WorkoutB00M7StepRowVAN0m8SkippingnO0VGG_ACyAA08ModifiedD0VyAVyAN08Intervaln4EditE0VAA30_EnvironmentKeyWritingModifierVyAN28ConfigurationNavigationModelCSgGGAZy0M4Core0rmX0CSgGGAVyAN0rn10ChooseGoalE0VA2_GGQo_AA0Y4LinkVyASA13_GGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v53 = v51;
    return outlined destroy of _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>(v53, v52);
  }

LABEL_34:
  type metadata accessor for ConfigurationNavigationModel();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t IntervalSingleStepConfigurationView.navigationDestination()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = type metadata accessor for StepType();
  v60 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v62 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IntervalStepChooseGoalView();
  MEMORY[0x28223BE20](v5);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGALy0G4Core0hgP0CSgGGAGyAH0hi10ChooseGoalK0VAPG_GMd);
  MEMORY[0x28223BE20](v13);
  v15 = (&v54 - v14);
  v16 = *(v1 + 5);
  v17 = WorkoutBlock.steps.getter();
  if (v17 >> 62)
  {
    v37 = v17;
    v38 = __CocoaSet.count.getter();
    v17 = v37;
    v63 = v13;
    v64 = v8;
    if (v38)
    {
LABEL_3:
      if ((v17 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F30C990](0, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v19)
        {
          __break(1u);
          goto LABEL_15;
        }
      }

      IntervalSingleStepConfigurationView.stepEditViewModel.getter();
      type metadata accessor for ConfigurationNavigationModel();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
      v20 = EnvironmentObject.init()();
      v61 = v21;
      v62 = v20;
      type metadata accessor for IntervalWorkoutConfiguration();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
      v22 = EnvironmentObject.init()();
      v59 = v23;
      v60 = v22;
      type metadata accessor for IntervalStepEditViewModel();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type IntervalStepEditViewModel and conformance IntervalStepEditViewModel, type metadata accessor for IntervalStepEditViewModel);
      v24 = ObservedObject.init(wrappedValue:)();
      v26 = *v2;
      if (*v2)
      {
        v27 = v24;
        v28 = v25;

        v29 = static ObservableObject.environmentStore.getter();
        v30 = *(v2 + 2);
        if (v30)
        {
          v31 = v29;
          v32 = v30;
          v33 = static ObservableObject.environmentStore.getter();
          v34 = v61;
          *v15 = v62;
          v15[1] = v34;
          v35 = v59;
          v15[2] = v60;
          v15[3] = v35;
          v15[4] = v27;
          v15[5] = v28;
          v15[6] = v31;
          v15[7] = v26;
          v15[8] = v33;
          v15[9] = v30;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feN0CSgGGMd);
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>();
          lazy protocol witness table accessor for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
          return _ConditionalContent<>.init(storage:)();
        }

        goto LABEL_16;
      }

LABEL_15:
      EnvironmentObject.error()();
      __break(1u);
LABEL_16:
      EnvironmentObject.error()();
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v63 = v13;
    v64 = v8;
    if (v18)
    {
      goto LABEL_3;
    }
  }

  v57 = v10;

  v39 = type metadata accessor for IntervalSingleStepConfigurationView();
  v40 = v60;
  (*(v60 + 16))(v62, &v2[*(v39 + 36)], v3);
  v41 = *(v2 + 2);
  v59 = v3;
  if (!v41)
  {
LABEL_17:
    type metadata accessor for IntervalWorkoutConfiguration();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_18;
  }

  v42 = v41;
  v56 = dispatch thunk of WorkoutConfiguration.activityType.getter();

  v43 = *(v2 + 6);
  v55 = *(v2 + 7);
  type metadata accessor for ConfigurationNavigationModel();
  v44 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  v45 = v42;
  v46 = v43;

  v58 = v44;
  *v7 = EnvironmentObject.init()();
  v7[1] = v47;
  (*(v40 + 32))(v7 + v5[5], v62, v59);
  v48 = v55;
  *(v7 + v5[6]) = v56;
  *(v7 + v5[7]) = v48;
  *(v7 + v5[8]) = v45;
  *(v7 + v5[9]) = v46;
  *(v7 + v5[10]) = v16;
  v49 = *v2;
  if (!*v2)
  {
LABEL_18:
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v50 = static ObservableObject.environmentStore.getter();
  v51 = v57;
  outlined init with take of IntervalSingleStepConfigurationView(v7, v57, type metadata accessor for IntervalStepChooseGoalView);
  v52 = (v51 + *(v64 + 36));
  *v52 = v50;
  v52[1] = v49;
  v53 = v61;
  outlined init with take of ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(v51, v61, &_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
  _s10Foundation4UUIDVSgWOcTm_2(v53, v15, &_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feN0CSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  return _s10Foundation4UUIDVSgWOhTm_2(v53, &_s7SwiftUI15ModifiedContentVy07WorkoutB026IntervalStepChooseGoalViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
}

uint64_t closure #1 in IntervalSingleStepConfigurationView.body.getter(char *a1)
{
  v2 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for StepType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 5);
  v8 = WorkoutBlock.steps.getter();
  if (v8 >> 62)
  {
    goto LABEL_6;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((v8 & 0xC000000000000001) == 0)
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v9)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      v10 = v8;
      v11 = __CocoaSet.count.getter();
      v8 = v10;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    MEMORY[0x20F30C990](0, v8);
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

LABEL_7:

  v12 = type metadata accessor for IntervalSingleStepConfigurationView();
  (*(v4 + 16))(v6, &a1[*(v12 + 36)], v3);
  _sSo21FIUIFormattingManagerCMaTm_7(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
  static NLSessionActivityGoal.makeOpenGoal()();
  v13 = *(a1 + 2);
  if (v13)
  {
    v14 = v13;
    dispatch thunk of WorkoutConfiguration.activityType.getter();

    UUID.init()();
    type metadata accessor for WorkoutStep();
    swift_allocObject();
    v15 = WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
    if (*a1)
    {
      v16 = v15;

      ConfigurationNavigationModel.choseStepForIntervalWorkout(_:modifyingBlock:)(v16, v7);

LABEL_10:
      MEMORY[0x28223BE20](v8);
      *&v20[-16] = a1;
      static Animation.default.getter();
      withAnimation<A>(_:_:)();
    }

    type metadata accessor for ConfigurationNavigationModel();
    v18 = &lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel;
    v19 = type metadata accessor for ConfigurationNavigationModel;
  }

  else
  {
    type metadata accessor for IntervalWorkoutConfiguration();
    v18 = &lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration;
    v19 = MEMORY[0x277D7D9A0];
  }

  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(v18, v19);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

unint64_t closure #1 in closure #1 in IntervalSingleStepConfigurationView.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v12 - v4;
  result = WorkoutBlock.steps.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    goto LABEL_9;
  }

  v9 = result;
  v10 = __CocoaSet.count.getter();
  result = v9;
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    MEMORY[0x20F304900](v7);

    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
LABEL_9:
    type metadata accessor for IntervalSingleStepConfigurationView();
    _s10Foundation4UUIDVSgWOcTm_2(v5, v2, &_s10Foundation4UUIDVSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
    Binding.wrappedValue.setter();
    return _s10Foundation4UUIDVSgWOhTm_2(v5, &_s10Foundation4UUIDVSgMd);
  }

  __break(1u);
  return result;
}

unint64_t IntervalSingleStepConfigurationView.stepLabel()()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutSkippingStepRow();
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB00F7StepRowVAF0f8SkippinggH0V_GMd);
  MEMORY[0x28223BE20](v5);
  v7 = (&v17 - v6);
  result = WorkoutBlock.steps.getter();
  if (result >> 62)
  {
    v13 = result;
    v14 = __CocoaSet.count.getter();
    result = v13;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_8:

    v15 = *(type metadata accessor for IntervalSingleStepConfigurationView() + 36);
    v16 = type metadata accessor for StepType();
    (*(*(v16 - 8) + 16))(v4, v1 + v15, v16);
    outlined init with copy of IntervalSingleStepConfigurationView(v4, v7, type metadata accessor for WorkoutSkippingStepRow);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type WorkoutStepRow and conformance WorkoutStepRow();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type WorkoutSkippingStepRow and conformance WorkoutSkippingStepRow, type metadata accessor for WorkoutSkippingStepRow);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of WorkoutSkippingStepRow(v4);
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    v9 = *(v1 + 48);
    type metadata accessor for WorkoutStep();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, MEMORY[0x277D7DD30]);

    v10 = v9;
    *v7 = ObservedObject.init(wrappedValue:)();
    v7[1] = v11;
    v7[2] = v10;
    v7[3] = 0;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type WorkoutStepRow and conformance WorkoutStepRow();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type WorkoutSkippingStepRow and conformance WorkoutSkippingStepRow, type metadata accessor for WorkoutSkippingStepRow);

    v12 = v10;
    _ConditionalContent<>.init(storage:)();
  }

  __break(1u);
  return result;
}

uint64_t closure #3 in IntervalSingleStepConfigurationView.body.getter(void *a1)
{
  v2 = type metadata accessor for StepType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntervalSingleStepConfigurationView();
  v6 = *(v3 + 104);
  v6(v5, *MEMORY[0x277D7E720], v2);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type StepType and conformance StepType, MEMORY[0x277D7E728]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (v10 == v9)
  {
    if (*a1)
    {
      goto LABEL_6;
    }

LABEL_8:
    type metadata accessor for ConfigurationNavigationModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v6(v5, *MEMORY[0x277D7E718], v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  result = (v7)(v5, v2);
  if (v10 != v9)
  {
    return result;
  }

  if (!*a1)
  {
    goto LABEL_8;
  }

LABEL_6:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v10) = 1;

  return static Published.subscript.setter();
}

uint64_t IntervalSingleStepConfigurationView.stepEditViewModel.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StepType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  MEMORY[0x28223BE20](v12);
  v42 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = WorkoutBlock.steps.getter();
  if (v17 >> 62)
  {
    v26 = v17;
    v27 = __CocoaSet.count.getter();
    v17 = v26;
    v43 = v8;
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_10:

    v28 = v1 + *(type metadata accessor for IntervalSingleStepConfigurationView() + 36);
    v39 = *(v3 + 16);
    v39(v5, v28, v2);
    v29 = v1[2];
    if (v29)
    {
      v30 = v29;
      v38 = dispatch thunk of WorkoutConfiguration.activityType.getter();

      v31 = v1[6];
      v41 = v1[7];
      v40 = v31;
      Binding.projectedValue.getter();
      type metadata accessor for IntervalStepEditViewModel();
      v21 = swift_allocObject();
      v21[4] = 0;
      *(v21 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel____lazy_storage___goalsForInterval) = 0;
      swift_beginAccess();
      type metadata accessor for WorkoutBlock();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60]);

      v21[2] = ObservedObject.init(wrappedValue:)();
      v21[3] = v32;
      swift_endAccess();
      v33 = v39;
      v39(v11, v5, v2);
      swift_beginAccess();
      v33(v43, v11, v2);
      Published.init(initialValue:)();
      v34 = *(v3 + 8);
      v34(v11, v2);
      swift_endAccess();
      v35 = v38;
      v21[4] = 0;
      v21[5] = v35;
      swift_beginAccess();
      v44 = 0;
      Published.init(initialValue:)();
      swift_endAccess();
      v34(v5, v2);
      v36 = v40;
      v21[6] = v41;
      *(v21 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager) = v36;
      outlined init with take of ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(v42, v21 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__currentEditingStepUUID, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
      return v21;
    }

    goto LABEL_15;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v43 = v8;
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x20F30C990](0);
    goto LABEL_6;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v17 + 32);

LABEL_6:

    v20 = v1[6];
    v42 = v1[7];
    type metadata accessor for IntervalSingleStepConfigurationView();
    v41 = v20;
    Binding.projectedValue.getter();
    type metadata accessor for IntervalStepEditViewModel();
    v21 = swift_allocObject();
    v21[4] = 0;
    *(v21 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel____lazy_storage___goalsForInterval) = 0;
    swift_beginAccess();
    type metadata accessor for WorkoutBlock();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, MEMORY[0x277D7DD60]);

    v21[2] = ObservedObject.init(wrappedValue:)();
    v21[3] = v22;
    swift_endAccess();
    v21[4] = v19;

    v21[5] = WorkoutStep.activityType.getter();
    WorkoutStep.stepType.getter();
    swift_beginAccess();
    (*(v3 + 16))(v43, v11, v2);
    Published.init(initialValue:)();
    (*(v3 + 8))(v11, v2);
    swift_endAccess();
    v23 = WorkoutStep.goal.getter();
    swift_beginAccess();
    v44 = v23;
    Published.init(initialValue:)();
    swift_endAccess();
    v24 = v41;
    v21[6] = v42;
    *(v21 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager) = v24;
    _s10Foundation4UUIDVSgWOcTm_2(v16, v21 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__currentEditingStepUUID, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
    v25 = WorkoutStep.activePowerZonesAlertTargetZone.getter();

    if (v25)
    {
      dispatch thunk of PowerZonesAlertTargetZone.loadPowerZonesAsynchronously()();
    }

    _s10Foundation4UUIDVSgWOhTm_2(v16, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
    return v21;
  }

  __break(1u);
LABEL_15:
  type metadata accessor for IntervalWorkoutConfiguration();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E7StepRowVAD0e8SkippingfG0VGMd);
    lazy protocol witness table accessor for type WorkoutStepRow and conformance WorkoutStepRow();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type WorkoutSkippingStepRow and conformance WorkoutSkippingStepRow, type metadata accessor for WorkoutSkippingStepRow);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feN0CSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore08IntervalG13ConfigurationCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
    lazy protocol witness table accessor for type IntervalStepEditView and conformance IntervalStepEditView();
    lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalStepEditView and conformance IntervalStepEditView()
{
  result = lazy protocol witness table cache variable for type IntervalStepEditView and conformance IntervalStepEditView;
  if (!lazy protocol witness table cache variable for type IntervalStepEditView and conformance IntervalStepEditView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalStepEditView and conformance IntervalStepEditView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyACyAF0fH3RowVAF0f8SkippinghY0VGAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainxV0VQo_GMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA012_ConditionalE0Vy07WorkoutB00G7StepRowVAH0g8SkippinghI0VGAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA012_ConditionalE0Vy07WorkoutB00G7StepRowVAH0g8SkippinghI0VGAA01_E13ShapeModifierVyAA9RectangleVGGGMd);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaDRd__lFQOyAA6ButtonVyACy07WorkoutB00M7StepRowVAN0m8SkippingnO0VGG_ACyAA08ModifiedD0VyAVyAN08Intervaln4EditE0VAA30_EnvironmentKeyWritingModifierVyAN28ConfigurationNavigationModelCSgGGAZy0M4Core0rmX0CSgGGAVyAN0rn10ChooseGoalE0VA2_GGQo_AA0Y4LinkVyASA13_GGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGMd);
    lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>> and conformance <> _ConditionalContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA19_ConditionalContentVy07WorkoutB00G7StepRowVAF0g8SkippinghI0VGAEyAA08ModifiedF0VyAMyAF08IntervalH8EditViewVAA30_EnvironmentKeyWritingModifierVyAF013ConfigurationC5ModelCSgGGAQy0G4Core0lgS0CSgGGAMyAF0lh10ChooseGoalN0VAUGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_66()
{
  v1 = (type metadata accessor for IntervalSingleStepConfigurationView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[11];
  v4 = type metadata accessor for StepType();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[12];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd) + 32);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in IntervalSingleStepConfigurationView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for IntervalSingleStepConfigurationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t partial apply for closure #2 in IntervalSingleStepConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  IntervalSingleStepConfigurationView.stepLabel()();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0Vy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGAA01_D13ShapeModifierVyAA9RectangleVGGMd);
  *(a1 + *(result + 36)) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0Vy07WorkoutB00F7StepRowVAF0f8SkippinggH0VGAA01_D13ShapeModifierVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>> and conformance Button<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of IntervalSingleStepConfigurationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOcTm_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_2(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_12(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of IntervalSingleStepConfigurationView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of WorkoutSkippingStepRow(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutSkippingStepRow();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_7(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyACyACyAA08ModifiedD0VyAEy07WorkoutB020IntervalStepEditViewVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfO0CSgGGAEyAF0gh10ChooseGoalJ0VANGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyAEyACyAF0fH3RowVAF0f8SkippinghY0VGAA01_d5ShapeN0VyAA9RectangleVGGG_AA05PlainxV0VQo_GACyA_AAE21navigationDestination11isPresented11destinationQrAA7BindingVySbG_qd__yXEtAaZRd__lFQOyA3_yA8_G_AYQo_AA0P4LinkVyA8_AYGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, <<opaque return type of View.buttonStyle<A>(_:)>>.0>, _ConditionalContent<<<opaque return type of View.navigationDestination<A>(isPresented:destination:)>>.0, NavigationLink<_ConditionalContent<WorkoutStepRow, WorkoutSkippingStepRow>, _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<IntervalStepChooseGoalView, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalStepEditView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for IntervalStepEditView(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t IntervalStepEditView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IntervalStepEditViewWatch();
  MEMORY[0x28223BE20](v3);
  v5 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
  MEMORY[0x28223BE20](v59);
  v60 = &v57 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd);
  MEMORY[0x28223BE20](v68);
  v58 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = &v57 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAH28ConfigurationNavigationModelCSgGGALy0G4Core0hgQ0CSgGGAGyAGyAH0hijK5WatchVAPGAVG_GMd);
  MEMORY[0x28223BE20](v66);
  v11 = &v57 - v10;
  v12 = static Platform.current.getter();
  v67 = v1;
  v13 = type metadata accessor for ConfigurationNavigationModel();
  v14 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_13(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);

  v62 = v13;
  v64 = v14;
  v15 = EnvironmentObject.init()();
  v17 = v16;
  v18 = type metadata accessor for IntervalWorkoutConfiguration();
  v19 = _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_13(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0]);
  v63 = v18;
  v65 = v19;
  v20 = EnvironmentObject.init()();
  v21 = v20;
  v23 = v22;
  v69 = a1;
  if (v12)
  {
    *(v5 + v3[6]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
    swift_storeEnumTagMultiPayload();
    *v5 = v15;
    v5[1] = v17;
    v5[2] = v21;
    v5[3] = v23;
    v24 = (v5 + v3[7]);
    type metadata accessor for IntervalStepEditViewModel();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_13(&lazy protocol witness table cache variable for type IntervalStepEditViewModel and conformance IntervalStepEditViewModel, type metadata accessor for IntervalStepEditViewModel);
    *v24 = ObservedObject.init(wrappedValue:)();
    v24[1] = v25;
    v26 = v5 + v3[8];
    LOBYTE(v70) = 0;
    State.init(wrappedValue:)();
    v27 = v73;
    *v26 = v72;
    *(v26 + 1) = v27;
    v28 = v5 + v3[9];
    LOBYTE(v70) = 0;
    State.init(wrappedValue:)();
    v29 = v73;
    *v28 = v72;
    *(v28 + 1) = v29;
    v30 = v67;
    v31 = *v67;
    if (*v67)
    {

      v32 = static ObservableObject.environmentStore.getter();
      v33 = v60;
      outlined init with take of IntervalStepEditViewWatch(v5, v60);
      v34 = (v33 + *(v59 + 36));
      *v34 = v32;
      v34[1] = v31;
      v35 = v30[2];
      if (v35)
      {
        v36 = v35;
        v37 = static ObservableObject.environmentStore.getter();
        v38 = v58;
        outlined init with take of ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(v33, v58, &_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
        v39 = (v38 + *(v68 + 36));
        *v39 = v37;
        v39[1] = v35;
        v40 = v61;
        outlined init with take of ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(v38, v61, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd);
        outlined init with copy of ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>(v40, v11);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
        _ConditionalContent<>.init(storage:)();
        return outlined destroy of ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>(v40);
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v60 = v20;
  v61 = v17;
  type metadata accessor for IntervalStepEditViewModel();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_13(&lazy protocol witness table cache variable for type IntervalStepEditViewModel and conformance IntervalStepEditViewModel, type metadata accessor for IntervalStepEditViewModel);
  v42 = ObservedObject.init(wrappedValue:)();
  v58 = v43;
  v59 = v42;
  v70 = 0;
  v71 = 1;
  State.init(wrappedValue:)();
  v44 = v67;
  v45 = *v67;
  if (!*v67)
  {
LABEL_8:
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_9;
  }

  v46 = v72;
  v47 = v74;
  LOBYTE(v72) = v73;

  v48 = static ObservableObject.environmentStore.getter();
  v49 = v44[2];
  if (v49)
  {
    v50 = v48;
    v51 = v72;
    v52 = v49;
    v53 = static ObservableObject.environmentStore.getter();
    v54 = v60;
    v55 = v61;
    *v11 = v15;
    *(v11 + 1) = v55;
    *(v11 + 2) = v54;
    *(v11 + 3) = v23;
    v56 = v58;
    *(v11 + 4) = v59;
    *(v11 + 5) = v56;
    *(v11 + 6) = v46;
    v11[56] = v51;
    *(v11 + 8) = v47;
    *(v11 + 9) = v50;
    *(v11 + 10) = v45;
    *(v11 + 11) = v53;
    *(v11 + 12) = v49;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
    return _ConditionalContent<>.init(storage:)();
  }

LABEL_9:
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t outlined init with take of IntervalStepEditViewWatch(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalStepEditViewWatch();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
    lazy protocol witness table accessor for type IntervalStepEditViewPhone and conformance IntervalStepEditViewPhone();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntervalStepEditViewPhone and conformance IntervalStepEditViewPhone()
{
  result = lazy protocol witness table cache variable for type IntervalStepEditViewPhone and conformance IntervalStepEditViewPhone;
  if (!lazy protocol witness table cache variable for type IntervalStepEditViewPhone and conformance IntervalStepEditViewPhone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalStepEditViewPhone and conformance IntervalStepEditViewPhone);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy11WorkoutCore08IntervalG13ConfigurationCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGMd);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_13(&lazy protocol witness table cache variable for type IntervalStepEditViewWatch and conformance IntervalStepEditViewWatch, type metadata accessor for IntervalStepEditViewWatch);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB028ConfigurationNavigationModelCSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_13(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAF28ConfigurationNavigationModelCSgGGAJy0F4Core0gfP0CSgGGAEyAEyAF0ghiJ5WatchVANGATGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewPhoneVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB025IntervalStepEditViewWatchVAA30_EnvironmentKeyWritingModifierVyAD28ConfigurationNavigationModelCSgGGAHy0E4Core0feO0CSgGGMR, lazy protocol witness table accessor for type ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IntervalStepEditViewPhone, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>, ModifiedContent<ModifiedContent<IntervalStepEditViewWatch, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<IntervalWorkoutConfiguration?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t IntervalStepEditViewModel.stepType.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t IntervalStepEditViewModel.selectedGoalType.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance IntervalStepEditViewModel.SelectedGoalType(uint64_t *a1, void *a2)
{
  v2 = *a1;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for NSObject);
    return static NSObject.== infix(_:_:)() & 1;
  }

  return result;
}

id IntervalStepEditViewModel.goalsForInterval.getter()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel____lazy_storage___goalsForInterval;
  if (*(v0 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel____lazy_storage___goalsForInterval))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel____lazy_storage___goalsForInterval);
  }

  else
  {
    v2 = closure #1 in IntervalStepEditViewModel.goalsForInterval.getter(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

id closure #1 in IntervalStepEditViewModel.goalsForInterval.getter(uint64_t a1)
{
  v29 = type metadata accessor for StepType();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.intervalWorkout.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v2;
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20C66F000, v9, v10, "getting goals for interval", v12, 2u);
    v13 = v12;
    v2 = v11;
    MEMORY[0x20F30E080](v13, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  type metadata accessor for IntervalWorkout();
  v14 = *(a1 + 40);
  v15 = static IntervalWorkout.supportedGoalTypes(for:activityMoveMode:)();
  v16 = *(v15 + 16);
  v31 = a1;
  if (v16)
  {
    v30 = v14;
    v32[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
    v17 = 0;
    v18 = *(a1 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager);
    v19 = (v2 + 8);
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      result = [v18 unitManager];
      if (!result)
      {
        break;
      }

      v21 = result;
      ++v17;
      static NLSessionActivityGoal.makeDefaultGoalForIntervals(goalType:activityType:stepType:unitManager:)();

      (*v19)(v4, v29);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v16 == v17)
      {

        v22 = v32[0];
        v14 = v30;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_10:
  v33 = v22;
  if ([v14 identifier] != 46)
  {
    return v22;
  }

  v23 = [v14 swimmingLocationType];
  v24 = v31;
  if (v23 != 1)
  {
    return v22;
  }

  v25 = type metadata accessor for WorkoutKitFeatures();
  v32[3] = v25;
  v32[4] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures, MEMORY[0x277CE3FD8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(v25 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE3FC0], v25);
  LOBYTE(v25) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v32);
  if ((v25 & 1) == 0)
  {
    return v22;
  }

  result = [*(v24 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel_formattingManager) unitManager];
  if (result)
  {
    v27 = result;
    _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for NLSessionActivityGoal);
    static NLSessionActivityGoal.makeDefaultTimeAndDistanceGoal(activityType:unitManager:)();

    MEMORY[0x20F30BCF0]();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_18:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return v33;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t IntervalStepEditViewModel.isEditing.getter()
{
  v31 = type metadata accessor for UUID();
  v1 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  if (!*(v0 + 32))
  {
    v22 = 0;
    return v22 & 1;
  }

  v28 = v3;
  v29 = v15;
  v30 = v4;
  outlined init with copy of Binding<UUID?>(v0 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__currentEditingStepUUID, v9, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);

  MEMORY[0x20F30B100](v7);
  v18 = outlined destroy of Binding<UUID?>(v9, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  MEMORY[0x20F304900](v18);
  v19 = v31;
  (*(v1 + 56))(v13, 0, 1, v31);
  v20 = *(v30 + 12);
  outlined init with copy of Binding<UUID?>(v17, v6, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of Binding<UUID?>(v13, &v6[v20], &_s10Foundation4UUIDVSgMd);
  v21 = *(v1 + 48);
  if (v21(v6, 1, v19) != 1)
  {
    v30 = v17;
    v23 = v29;
    outlined init with copy of Binding<UUID?>(v6, v29, &_s10Foundation4UUIDVSgMd);
    if (v21(&v6[v20], 1, v19) != 1)
    {
      v24 = &v6[v20];
      v25 = v28;
      (*(v1 + 32))(v28, v24, v19);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();

      v26 = *(v1 + 8);
      v26(v25, v19);
      outlined destroy of Binding<UUID?>(v13, &_s10Foundation4UUIDVSgMd);
      outlined destroy of Binding<UUID?>(v30, &_s10Foundation4UUIDVSgMd);
      v26(v23, v19);
      outlined destroy of Binding<UUID?>(v6, &_s10Foundation4UUIDVSgMd);
      return v22 & 1;
    }

    outlined destroy of Binding<UUID?>(v13, &_s10Foundation4UUIDVSgMd);
    outlined destroy of Binding<UUID?>(v30, &_s10Foundation4UUIDVSgMd);
    (*(v1 + 8))(v23, v19);
    goto LABEL_8;
  }

  outlined destroy of Binding<UUID?>(v13, &_s10Foundation4UUIDVSgMd);
  outlined destroy of Binding<UUID?>(v17, &_s10Foundation4UUIDVSgMd);
  if (v21(&v6[v20], 1, v19) != 1)
  {
LABEL_8:
    outlined destroy of Binding<UUID?>(v6, &_s10Foundation4UUIDVSg_ADtMd);
    v22 = 0;
    return v22 & 1;
  }

  outlined destroy of Binding<UUID?>(v6, &_s10Foundation4UUIDVSgMd);
  v22 = 1;
  return v22 & 1;
}

uint64_t closure #1 in IntervalStepEditViewModel.bindingTargetZones.getter@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutStep.targetZones.getter();
  *a1 = result;
  return result;
}

uint64_t closure #1 in IntervalStepEditViewModel.bindingStepGoal.getter@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutStep.goal.getter();
  *a1 = result;
  return result;
}

uint64_t IntervalStepEditViewModel.bindingStepType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StepType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  if (v8)
  {

    WorkoutStep.stepType.getter();
    v9 = (*(v5 + 88))(v7, v4);
    if (v9 == *MEMORY[0x277D7E718] || v9 == *MEMORY[0x277D7E720])
    {

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore8StepTypeOGMd);
      return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      type metadata accessor for MainActor();

      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      v16 = MEMORY[0x277D85700];
      v15[2] = v14;
      v15[3] = v16;
      v15[4] = v8;

      v17 = static MainActor.shared.getter();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = v16;
      v18[4] = v2;
      v18[5] = v8;
      Binding.init(get:set:)();

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore8StepTypeOGMd);
      return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
    }
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore8StepTypeOGMd);
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t closure #2 in IntervalStepEditViewModel.bindingStepType.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[1] = a5;
  v6 = type metadata accessor for StepType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  v14 = *(v7 + 16);
  v14(v16 - v12, a1, v6, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  (v14)(v9, v13, v6);

  static Published.subscript.setter();
  (*(v7 + 8))(v13, v6);
  (v14)(v13, a1, v6);
  return WorkoutStep.stepType.setter();
}

uint64_t closure #1 in IntervalStepEditViewModel.bindingStepDisplayName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutStep.displayName.getter();
  if (v3)
  {
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0xE000000000000000;
  if (v3)
  {
    v5 = v3;
  }

  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t closure #2 in IntervalStepEditViewModel.bindingStepDisplayName.getter(void *a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v12[0] = *a1;
  v12[1] = v6;
  static CharacterSet.whitespacesAndNewlines.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v7 = StringProtocol.trimmingCharacters(in:)();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
  }

  return WorkoutStep.displayName.setter();
}

uint64_t closure #1 in IntervalStepEditViewModel.bindingHeartRateTargetZone.getter@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutStep.heartRateTargetZoneWithDefault.getter();
  *a1 = result;
  return result;
}

uint64_t closure #1 in IntervalStepEditViewModel.bindingPowerZonesAlertTargetZone.getter@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutStep.powerZonesAlertTargetZoneWithDefault.getter();
  *a1 = result;
  return result;
}

uint64_t IntervalStepEditViewModel.isNewGoalType(_:)(void *a1)
{
  if (*(v1 + 32))
  {

    if ([a1 goalTypeIdentifier] == 2 && (v3 = WorkoutStep.goal.getter(), v4 = objc_msgSend(v3, sel_goalTypeIdentifier), v3, v4 == 2))
    {
      v5 = NLSessionActivityGoal.isTimeAndDistanceGoal()();
      v6 = WorkoutStep.goal.getter();
      v7 = NLSessionActivityGoal.isTimeAndDistanceGoal()();

      v8 = v5 ^ v7;
    }

    else
    {
      v9 = WorkoutStep.goal.getter();
      v10 = [v9 goalTypeIdentifier];

      v11 = [a1 goalTypeIdentifier];

      v8 = v10 != v11;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t IntervalStepEditViewModel.setGoal(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for StepType();
  MEMORY[0x28223BE20](v5 - 8);
  if (*(v2 + 32))
  {

    v6 = a1;
    WorkoutStep.goal.setter();
    v7 = WorkoutStep.goal.getter();
    swift_getKeyPath();
    swift_getKeyPath();

    v8 = v7;
    static Published.subscript.setter();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v9 = *(v2 + 40);
    UUID.init()();
    type metadata accessor for WorkoutStep();
    swift_allocObject();
    v10 = a1;
    v11 = WorkoutStep.init(_:goal:activityType:uuid:displayName:)();
    *(v2 + 32) = v11;
    swift_retain_n();

    v12 = WorkoutStep.goal.getter();
    swift_getKeyPath();
    swift_getKeyPath();

    v13 = v12;
    static Published.subscript.setter();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_20CB67B90;
    *(v14 + 32) = v11;

    WorkoutBlock.steps.setter();
  }
}

Swift::Void __swiftcall IntervalStepEditViewModel.skipStep()()
{
  v1 = v0;
  v54 = type metadata accessor for UUID();
  v2 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v50);
  v5 = &v44 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  MEMORY[0x28223BE20](v53);
  v52 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v12);
  v51 = &v44 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = type metadata accessor for StepType();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32))
  {

    WorkoutStep.stepType.getter();

    v24 = (*(v21 + 88))(v23, v20);
    if (v24 != *MEMORY[0x277D7E718] && v24 != *MEMORY[0x277D7E720])
    {
      (*(v21 + 8))(v23, v20);
      return;
    }

    v25 = *(v0 + 32);
    v47 = v11;
    if (v25)
    {

      MEMORY[0x20F304900](v26);

      v27 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v47 = v11;
  }

  v27 = 1;
LABEL_9:
  v28 = *(v2 + 56);
  v29 = v2;
  v30 = v54;
  v46 = v28;
  v28(v19, v27, 1, v54);
  v45 = OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__currentEditingStepUUID;
  v31 = v52;
  outlined init with copy of Binding<UUID?>(v1 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__currentEditingStepUUID, v52, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  MEMORY[0x20F30B100](v53);
  outlined destroy of Binding<UUID?>(v31, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
  v32 = *(v50 + 48);
  outlined init with copy of Binding<UUID?>(v19, v5, &_s10Foundation4UUIDVSgMd);
  v33 = v30;
  outlined init with copy of Binding<UUID?>(v16, &v5[v32], &_s10Foundation4UUIDVSgMd);
  v34 = *(v29 + 48);
  if (v34(v5, 1, v33) == 1)
  {
    outlined destroy of Binding<UUID?>(v16, &_s10Foundation4UUIDVSgMd);
    v35 = v54;
    outlined destroy of Binding<UUID?>(v19, &_s10Foundation4UUIDVSgMd);
    if (v34(&v5[v32], 1, v35) == 1)
    {
      outlined destroy of Binding<UUID?>(v5, &_s10Foundation4UUIDVSgMd);
LABEL_16:
      v42 = v47;
      v46(v47, 1, 1, v35);
      v43 = v52;
      outlined init with copy of Binding<UUID?>(v1 + v45, v52, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
      outlined init with copy of Binding<UUID?>(v42, v49, &_s10Foundation4UUIDVSgMd);
      Binding.wrappedValue.setter();
      outlined destroy of Binding<UUID?>(v43, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
      v37 = v42;
      v36 = &_s10Foundation4UUIDVSgMd;
      goto LABEL_17;
    }

LABEL_14:
    v36 = &_s10Foundation4UUIDVSg_ADtMd;
    v37 = v5;
LABEL_17:
    outlined destroy of Binding<UUID?>(v37, v36);
    goto LABEL_18;
  }

  outlined init with copy of Binding<UUID?>(v5, v51, &_s10Foundation4UUIDVSgMd);
  if (v34(&v5[v32], 1, v33) == 1)
  {
    outlined destroy of Binding<UUID?>(v16, &_s10Foundation4UUIDVSgMd);
    outlined destroy of Binding<UUID?>(v19, &_s10Foundation4UUIDVSgMd);
    (*(v29 + 8))(v51, v33);
    goto LABEL_14;
  }

  v38 = &v5[v32];
  v39 = v48;
  (*(v29 + 32))(v48, v38, v33);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v29 + 8);
  v41(v39, v33);
  outlined destroy of Binding<UUID?>(v16, &_s10Foundation4UUIDVSgMd);
  outlined destroy of Binding<UUID?>(v19, &_s10Foundation4UUIDVSgMd);
  v41(v51, v54);
  v35 = v54;
  outlined destroy of Binding<UUID?>(v5, &_s10Foundation4UUIDVSgMd);
  if (v40)
  {
    goto LABEL_16;
  }

LABEL_18:
  *(v1 + 32) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  v55 = 0;

  static Published.subscript.setter();
  swift_beginAccess();

  WorkoutBlock.steps.setter();
}

uint64_t IntervalStepEditViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__stepType;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore8StepTypeOGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__selectedGoalType;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI25IntervalStepEditViewModelC16SelectedGoalTypeOGMd);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  outlined destroy of Binding<UUID?>(v0 + OBJC_IVAR____TtC9WorkoutUI25IntervalStepEditViewModel__currentEditingStepUUID, &_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);

  return v0;
}

uint64_t IntervalStepEditViewModel.__deallocating_deinit()
{
  IntervalStepEditViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IntervalStepEditViewModel()
{
  result = type metadata singleton initialization cache for IntervalStepEditViewModel;
  if (!type metadata singleton initialization cache for IntervalStepEditViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalStepEditViewModel()
{
  type metadata accessor for Published<StepType>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<IntervalStepEditViewModel.SelectedGoalType>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Binding<UUID?>();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<StepType>()
{
  if (!lazy cache variable for type metadata for Published<StepType>)
  {
    type metadata accessor for StepType();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<StepType>);
    }
  }
}

void type metadata accessor for Published<IntervalStepEditViewModel.SelectedGoalType>()
{
  if (!lazy cache variable for type metadata for Published<IntervalStepEditViewModel.SelectedGoalType>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<IntervalStepEditViewModel.SelectedGoalType>);
    }
  }
}

uint64_t getEnumTagSinglePayload for IntervalStepEditViewModel.SelectedGoalType(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntervalStepEditViewModel.SelectedGoalType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for IntervalStepEditViewModel.SelectedGoalType(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for IntervalStepEditViewModel.SelectedGoalType(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance IntervalStepEditViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for IntervalStepEditViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t outlined init with copy of Binding<UUID?>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Binding<UUID?>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t key path getter for IntervalStepEditViewModel.stepType : IntervalStepEditViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for IntervalStepEditViewModel.stepType : IntervalStepEditViewModel(uint64_t a1)
{
  v2 = type metadata accessor for StepType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v5, v9, v2);

  static Published.subscript.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t key path getter for IntervalStepEditViewModel.selectedGoalType : IntervalStepEditViewModel@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for IntervalStepEditViewModel.selectedGoalType : IntervalStepEditViewModel(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return static Published.subscript.setter();
}

uint64_t _sSo8NSObjectCMaTm_0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t WorkoutNotificationIntervalView.intervalsComplete.getter()
{
  v1 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = *v0;
  if (*(v0 + 16))
  {
    result = 2;
  }

  else
  {
    result = 0;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](result, v6);
    goto LABEL_7;
  }

  if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_7:
    dispatch thunk of WorkoutNotificationUnit.type.getter();

    (*(v2 + 104))(v4, *MEMORY[0x277D7DB38], v1);
    lazy protocol witness table accessor for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType(&lazy protocol witness table cache variable for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType);
    v11 = dispatch thunk of static Equatable.== infix(_:_:)();
    v12 = *(v2 + 8);
    v12(v4, v1);
    v12(v8, v1);
    return (v11 & 1) == 0;
  }

  __break(1u);
  return result;
}

unint64_t WorkoutNotificationIntervalView.intervalBodyIndex.getter()
{
  v1 = *(v0 + 16);
  v8 = *v0;
  v2 = WorkoutNotificationIntervalView.intervalsComplete.getter();
  if (v1)
  {
    result = 2;
  }

  else
  {
    result = 0;
  }

  if ((v2 & 1) == 0)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F30C990](result);
    }

    else
    {
      if (result >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }
    }

    dispatch thunk of WorkoutNotificationUnit.key.getter();
    v5 = v4;

    if (v5)
    {

      v6 = 1;
      if (v1)
      {
LABEL_10:
        v7 = 2;
        return v6 + v7;
      }
    }

    else
    {
      v6 = 6;
      if (v1)
      {
        goto LABEL_10;
      }
    }

    v7 = 0;
    return v6 + v7;
  }

  return result;
}

uint64_t WorkoutNotificationIntervalView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMd);
  MEMORY[0x28223BE20](v2);
  v4 = (v22 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB00F22NotificationResultViewVyAA05EmptyI0VAA6VStackVyACyAA05TupleI0VyAF0fg4UnitI0V_APtGSgANyAA08ModifiedD0VyAF013MetricHeadingI0VyACyAA4TextVAA6HStackVyANyAXSg_AA5ImageVSgA_tGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeU0VGGSg_AZyARGtGGGGAHyArNyA14__ArTyAVyANyATyA1_AA022_EnvironmentKeyWritingV0VyA1_5ScaleOGGSg_A_A_tGGA9_yAA5ColorVGGSgtGG_GMd);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 48);
  *&v29[39] = *(v1 + 32);
  *&v29[41] = v13;
  v30[0] = *(v1 + 64);
  *(v30 + 9) = *(v1 + 73);
  v14 = *(v1 + 16);
  *&v29[35] = *v1;
  *&v29[37] = v14;
  v32 = *(v1 + 88);
  v15 = *(v1 + 80);
  v31 = v15;
  if (v32 == 1)
  {
    if (v15 != 11)
    {
LABEL_3:
      MetricPlatterConstants.init()(v4 + *(v2 + 56));
      WorkoutNotificationIntervalView.resultRow.getter(v29);
      v16 = *(&v29[7] + 1);
      v17 = *&v29[6];
      v4[2] = *&v29[4];
      v4[3] = v17;
      *(v4 + 57) = v16;
      v18 = *&v29[2];
      *v4 = *v29;
      v4[1] = v18;
      WorkoutNotificationIntervalView.nextInterval.getter((v4 + *(v2 + 52)));
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v4, v7, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD6VStackVyAD19_ConditionalContentVyAD05TupleE0VyAA0ac4UnitE0V_ANtGSgALyAD08ModifiedJ0VyAA013MetricHeadingE0VyAJyAD4TextVAD6HStackVyALyAVSg_AD5ImageVSgAYtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeT0VGGSg_AXyAPGtGGGGMd);
      lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD6VStackVyAD19_ConditionalContentVyAD05TupleE0VyAA0ac4UnitE0V_ANtGSgALyAD08ModifiedJ0VyAA013MetricHeadingE0VyAJyAD4TextVAD6HStackVyALyAVSg_AD5ImageVSgAYtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeT0VGGSg_AXyAPGtGGGGMd);
      lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>?)>> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMd);
      _ConditionalContent<>.init(storage:)();
      return _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v4, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMd);
    }
  }

  else
  {
    v22[0] = v10;
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(&v31, v29, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd);
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(&v31, &_s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGMd);
    (*(v9 + 8))(v12, v22[0]);
    if (LOBYTE(v29[0]) != 11)
    {
      goto LABEL_3;
    }
  }

  MetricPlatterConstants.init()(&v27[38]);
  v21 = static HorizontalAlignment.center.getter();
  v26 = 0;
  closure #1 in WorkoutNotificationIntervalView.nextIntervalNotification.getter(v24);
  memcpy(v28, v24, 0x112uLL);
  memcpy(v29, v24, 0x112uLL);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v28, &v23, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB00g16NotificationUnitF0V_AHtGSgAEyAA08ModifiedD0VyAF013MetricHeadingF0VyACyAA4TextVAA6HStackVyAEyAPSg_AA5ImageVSgAStGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeQ0VGGSg_ARyAJGtGGMd);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v29, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVy07WorkoutB00g16NotificationUnitF0V_AHtGSgAEyAA08ModifiedD0VyAF013MetricHeadingF0VyACyAA4TextVAA6HStackVyAEyAPSg_AA5ImageVSgAStGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeQ0VGGSg_ARyAJGtGGMd);
  memcpy(&v25[7], v28, 0x112uLL);
  v27[0] = v21;
  v27[1] = 0;
  LOBYTE(v27[2]) = v26;
  memcpy(&v27[2] + 1, v25, 0x119uLL);
  memcpy(v7, v27, 0x168uLL);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD6VStackVyAD19_ConditionalContentVyAD05TupleE0VyAA0ac4UnitE0V_ANtGSgALyAD08ModifiedJ0VyAA013MetricHeadingE0VyAJyAD4TextVAD6HStackVyALyAVSg_AD5ImageVSgAYtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeT0VGGSg_AXyAPGtGGGGMd);
  lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD6VStackVyAD19_ConditionalContentVyAD05TupleE0VyAA0ac4UnitE0V_ANtGSgALyAD08ModifiedJ0VyAA013MetricHeadingE0VyAJyAD4TextVAD6HStackVyALyAVSg_AD5ImageVSgAYtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeT0VGGSg_AXyAPGtGGGGMd);
  lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>?)>> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMd);
  return _ConditionalContent<>.init(storage:)();
}

void WorkoutNotificationIntervalView.resultRow.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 16) != 1)
  {
    goto LABEL_13;
  }

  v3 = *v1;
  v2 = v1[1];
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
      goto LABEL_4;
    }

LABEL_13:
    v5 = 0;
    v7 = 0;
    KeyPath = 0;
    v9 = 0;
    v13 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v14 = a1;
  v15 = __CocoaSet.count.getter();
  a1 = v14;
  if (v15 < 2)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = MEMORY[0x20F30C990](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v4 = a1;
    v5 = *(v3 + 32);
  }

  v6 = v2;
  static Color.white.getter();
  v7 = Color.opacity(_:)();

  KeyPath = swift_getKeyPath();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x20F30C990](1, v3);
LABEL_11:
    v10 = static Color.white.getter();
    v11 = swift_getKeyPath();

    v12 = v6;

    outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);

    v13 = v12;

    outlined copy of Environment<WorkoutViewStyle>.Content(v11, 0);

    outlined consume of Environment<WorkoutViewStyle>.Content(v11, 0);

    outlined consume of Environment<WorkoutViewStyle>.Content(KeyPath, 0);
    a1 = v4;
LABEL_14:
    *a1 = v5;
    *(a1 + 8) = v13;
    *(a1 + 16) = v7;
    *(a1 + 24) = KeyPath;
    *(a1 + 32) = 0;
    *(a1 + 40) = v9;
    *(a1 + 48) = v13;
    *(a1 + 56) = v10;
    *(a1 + 64) = v11;
    *(a1 + 72) = 0;
    return;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v9 = *(v3 + 40);

    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t WorkoutNotificationIntervalView.nextInterval.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  WorkoutNotificationIntervalView.intervalHeader.getter(&v28);
  WorkoutNotificationIntervalView.intervalBody.getter(&v24);
  WorkoutNotificationIntervalView.intervalAlert.getter(v7);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v7, v4, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGSgMd);
  v8 = v37;
  v39[8] = v36;
  v39[9] = v37;
  v9 = v38;
  v39[10] = v38;
  v10 = v32;
  v11 = v33;
  v39[4] = v32;
  v39[5] = v33;
  v13 = v34;
  v12 = v35;
  v39[6] = v34;
  v39[7] = v35;
  v14 = v28;
  v15 = v29;
  v39[0] = v28;
  v39[1] = v29;
  v17 = v30;
  v16 = v31;
  v39[2] = v30;
  v39[3] = v31;
  a1[8] = v36;
  a1[9] = v8;
  a1[4] = v10;
  a1[5] = v11;
  a1[6] = v13;
  a1[7] = v12;
  *a1 = v14;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v16;
  v18 = v26;
  v19 = v27[0];
  v40[2] = v26;
  v41[0] = v27[0];
  v20 = *(v27 + 9);
  *(v41 + 9) = *(v27 + 9);
  v21 = v24;
  v40[0] = v24;
  v40[1] = v25;
  a1[12] = v25;
  a1[13] = v18;
  a1[14] = v19;
  *(a1 + 233) = v20;
  a1[10] = v9;
  a1[11] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSg_ANyAD0e16NotificationUnitH0V_A4_tGSgACyAFyANyACyAqA022_EnvironmentKeyWritingP0VyAQ5ScaleOGGSg_A2OtGGAYyAA5ColorVGGSgtMd);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v4, a1 + *(v22 + 64), &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGSgMd);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v39, v44, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMd);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v40, v44, &_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGSgMd);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v7, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGSgMd);
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v4, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGSgMd);
  v42[2] = v26;
  v43[0] = v27[0];
  *(v43 + 9) = *(v27 + 9);
  v42[0] = v24;
  v42[1] = v25;
  _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v42, &_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGSgMd);
  v44[8] = v36;
  v44[9] = v37;
  v44[10] = v38;
  v44[4] = v32;
  v44[5] = v33;
  v44[6] = v34;
  v44[7] = v35;
  v44[0] = v28;
  v44[1] = v29;
  v44[2] = v30;
  v44[3] = v31;
  return _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v44, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMd);
}

__n128 WorkoutNotificationIntervalView.intervalHeader.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v38 = v1[2];
  v39 = v3;
  v40[0] = v1[4];
  *(v40 + 9) = *(v1 + 73);
  v4 = v1[1];
  v36 = *v1;
  v37 = v4;
  if (!(v36 >> 62))
  {
    v5 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v5 <= 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    MetricPlatterConstants.init()(v13 + 8);
    *&v14[16] = swift_getKeyPath();
    v14[24] = 0;
    closure #1 in WorkoutNotificationIntervalView.intervalHeader.getter(&v36, v12);
    v6 = static HierarchicalShapeStyle.secondary.getter();
    v23 = v13[2];
    *v24 = *v14;
    *&v24[9] = *&v14[9];
    v19 = v12[4];
    v20 = v12[5];
    v21 = v13[0];
    v22 = v13[1];
    v15 = v12[0];
    v16 = v12[1];
    v17 = v12[2];
    v18 = v12[3];
    *&v24[28] = v6;
    _s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgWOi_(&v15);
    v33 = v23;
    v34 = *v24;
    v35 = *&v24[16];
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    goto LABEL_8;
  }

  v5 = __CocoaSet.count.getter();
  if ((v37 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5 >= 3)
  {
    goto LABEL_7;
  }

LABEL_4:
  _s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgWOi0_(&v25);
LABEL_8:
  v7 = v34;
  *(a1 + 128) = v33;
  *(a1 + 144) = v7;
  *(a1 + 160) = v35;
  v8 = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v8;
  v9 = v32;
  *(a1 + 96) = v31;
  *(a1 + 112) = v9;
  v10 = v26;
  *a1 = v25;
  *(a1 + 16) = v10;
  result = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = result;
  return result;
}

void WorkoutNotificationIntervalView.intervalBody.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v47 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v42[-v7];
  v10 = *v1;
  v9 = v1[1];
  if (*v1 >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v10;
  v55 = v9;
  v12 = *(v1 + 4);
  v58 = *(v1 + 3);
  v59[0] = v12;
  *(v59 + 9) = *(v1 + 73);
  v13 = *(v1 + 1);
  v57 = *(v1 + 2);
  v56 = v13;
  if ((WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 1) >= v11)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v17 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
LABEL_21:
    *a1 = v21;
    *(a1 + 8) = v24;
    *(a1 + 16) = v22;
    *(a1 + 24) = v23;
    *(a1 + 32) = 0;
    *(a1 + 40) = v17;
    *(a1 + 48) = v24;
    *(a1 + 56) = v25;
    *(a1 + 64) = v26;
    *(a1 + 72) = 0;
    return;
  }

  v54 = v10;
  v55 = v9;
  v14 = *(v1 + 4);
  v58 = *(v1 + 3);
  v59[0] = v14;
  *(v59 + 9) = *(v1 + 73);
  v15 = *(v1 + 1);
  v57 = *(v1 + 2);
  v56 = v15;
  v16 = WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 1;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x20F30C990](v16, v10);
  }

  else
  {
    if (v16 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_25;
    }

    v17 = *(v10 + 8 * v16 + 32);
  }

  v54 = v10;
  v55 = v9;
  v18 = *(v1 + 4);
  v58 = *(v1 + 3);
  v59[0] = v18;
  *(v59 + 9) = *(v1 + 73);
  v19 = *(v1 + 1);
  v57 = *(v1 + 2);
  v56 = v19;
  v20 = WorkoutNotificationIntervalView.intervalBodyIndex.getter();
  if ((v10 & 0xC000000000000001) == 0)
  {
    if (v20 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v46 = *(v10 + 8 * v20 + 32);

      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v46 = MEMORY[0x20F30C990](v20, v10);
LABEL_12:
  v48 = v10;
  v49 = v9;
  v27 = *(v1 + 4);
  v52 = *(v1 + 3);
  v53[0] = v27;
  *(v53 + 9) = *(v1 + 73);
  v28 = *(v1 + 1);
  v51 = *(v1 + 2);
  v50 = v28;
  v44 = v9;
  WorkoutNotificationIntervalView.colorForStepGoalType(for:)();
  v22 = v29;
  KeyPath = swift_getKeyPath();
  dispatch thunk of WorkoutNotificationUnit.type.getter();
  v30 = v47;
  (*(v47 + 104))(v5, *MEMORY[0x277D7DB38], v3);
  lazy protocol witness table accessor for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType(&lazy protocol witness table cache variable for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v54 == v48 && v55 == v49)
  {
    v31 = *(v30 + 8);
    v31(v5, v3);
    v31(v8, v3);

    v21 = v46;
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v32 = v17;
    v33 = v22;
    v34 = *(v30 + 8);
    v34(v5, v3);
    v34(v8, v3);
    v22 = v33;
    v17 = v32;

    v21 = v46;
    if ((v43 & 1) == 0)
    {
      v25 = 0;
      goto LABEL_20;
    }
  }

  v35 = [objc_opt_self() keyColors];
  if (!v35)
  {
    goto LABEL_26;
  }

  v36 = v35;
  v37 = [v35 nonGradientTextColor];

  if (v37)
  {
    v25 = Color.init(uiColor:)();
LABEL_20:
    v38 = v44;
    v26 = swift_getKeyPath();
    LOBYTE(v54) = 0;
    LOBYTE(v48) = 0;

    v39 = v38;
    v40 = KeyPath;
    outlined copy of Environment<WorkoutViewStyle>.Content(KeyPath, 0);

    v41 = v39;
    v23 = v40;
    v24 = v41;
    outlined copy of Environment<WorkoutViewStyle>.Content(v26, 0);

    outlined consume of Environment<WorkoutViewStyle>.Content(v26, 0);

    outlined consume of Environment<WorkoutViewStyle>.Content(v23, 0);
    goto LABEL_21;
  }

LABEL_27:
  __break(1u);
}

unint64_t WorkoutNotificationIntervalView.intervalAlert.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGMd);
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = v1[3];
  v19[2] = v1[2];
  v19[3] = v6;
  v20[0] = v1[4];
  *(v20 + 9) = *(v1 + 73);
  v7 = v1[1];
  v19[0] = *v1;
  v19[1] = v7;
  v8 = *&v19[0];
  if (*&v19[0] >> 62)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((*&v19[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 2) < v9)
  {
    result = WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 2;
    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F30C990](result, v8);
    }

    else
    {
      if (result >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    v11 = COERCE_DOUBLE(dispatch thunk of WorkoutNotificationUnit.value.getter());
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      result = WorkoutNotificationIntervalView.intervalBodyIndex.getter();
      if ((~*&v11 & 0x7FF0000000000000) != 0)
      {
        if (v11 > -9.22337204e18)
        {
          if (v11 < 9.22337204e18)
          {
            if (!__OFADD__(result + 2, v11))
            {
              if ((result + 2 + v11) < v9)
              {
                v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI17MetricHeadingViewVy05SwiftB005TupleE0VyAD15ModifiedContentVyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AD4TextVSgATtGGMd);
                MetricPlatterConstants.init()(&v5[*(v14 + 36)]);
                v15 = &v5[*(v14 + 40)];
                *v15 = swift_getKeyPath();
                v15[8] = 0;
                closure #1 in WorkoutNotificationIntervalView.intervalAlert.getter(v19, v5, v11);
                *&v5[*(v3 + 36)] = static Color.white.getter();
                outlined init with take of ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>(v5, a1, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA05TupleH0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGGSg_AA4TextVSgATtGGAA016_ForegroundStyleN0VyAA5ColorVGGMd);
                return (*(v18 + 56))(a1, 0, 1, v3);
              }

              goto LABEL_14;
            }

LABEL_23:
            __break(1u);
            return result;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

LABEL_14:
  v16 = *(v18 + 56);

  return v16(a1, 1, 1, v3);
}

void *closure #1 in WorkoutNotificationIntervalView.nextIntervalNotification.getter@<X0>(void *a1@<X8>)
{
  if (WorkoutNotificationIntervalView.intervalsComplete.getter())
  {
    WorkoutNotificationIntervalView.intervalBody.getter(__src);
    _s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVy07WorkoutB00h16NotificationUnitG0V_AJtGSgAGyAA08ModifiedD0VyAH013MetricHeadingG0VyACyAA4TextVAA6HStackVyAGyARSg_AA5ImageVSgAUtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeR0VGGSg_ATyALGtG_GWOi_(__src);
    memcpy(__dst, __src, sizeof(__dst));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB0013MetricHeadingD0VyAA012_ConditionalF0VyAA4TextVAA6HStackVyACyALSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSg_ANyACyAF0g16NotificationUnitD0V_A4_tGSgGtGMd);
    lazy protocol witness table accessor for type TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>? and conformance <A> A?();
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB0013MetricHeadingD0VyAA012_ConditionalF0VyAA4TextVAA6HStackVyACyALSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSg_ANyACyAF0g16NotificationUnitD0V_A4_tGSgGtGMd);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    WorkoutNotificationIntervalView.intervalHeader.getter(&v17);
    v2 = static VerticalAlignment.center.getter();
    __src[0] = 1;
    WorkoutNotificationIntervalView.intervalBody.getter(v28);
    *(v39 + 7) = v28[0];
    *(&v39[1] + 7) = v28[1];
    *(&v39[2] + 7) = v28[2];
    *(&v39[3] + 7) = v29[0];
    v39[4] = *(v29 + 9);
    v30[0] = v2;
    v30[1] = 0;
    v31[0] = __src[0];
    *&v31[1] = v39[0];
    *&v31[65] = *(v29 + 9);
    *&v31[49] = v39[3];
    *&v31[33] = v39[2];
    *&v31[17] = v39[1];
    v14 = v25;
    v15 = v26;
    v16 = v27;
    v10 = v21;
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v6 = v17;
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v35[4] = *&v31[48];
    v35[5] = *&v31[64];
    v35[0] = v2;
    v35[1] = *v31;
    v35[2] = *&v31[16];
    v35[3] = *&v31[32];
    v32[0] = v17;
    v32[1] = v18;
    v32[2] = v19;
    v32[5] = v22;
    v32[6] = v23;
    v32[3] = v20;
    v32[4] = v21;
    v32[9] = v26;
    v32[10] = v27;
    v32[7] = v24;
    v32[8] = v25;
    *&v5[128] = v25;
    *&v5[144] = v26;
    *&v5[64] = v21;
    *&v5[80] = v22;
    *&v5[96] = v23;
    *&v5[112] = v24;
    *v5 = v17;
    *&v5[16] = v18;
    v36 = BYTE8(v29[1]);
    *&v5[32] = v19;
    *&v5[48] = v20;
    v33[4] = *&v31[48];
    v33[5] = *&v31[64];
    v34 = BYTE8(v29[1]);
    v33[0] = v2;
    v33[1] = *v31;
    v33[2] = *&v31[16];
    v33[3] = *&v31[32];
    *&v5[160] = v27;
    *&v5[176] = v2;
    *&v5[192] = *v31;
    *&v5[208] = *&v31[16];
    *&v5[224] = *&v31[32];
    *&v5[240] = *&v31[48];
    *&v5[256] = *&v31[64];
    v5[272] = BYTE8(v29[1]);
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(&v17, v39, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMd);
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v30, v39, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00f16NotificationUnitE0V_AHtGSgGMd);
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v32, v39, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMd);
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v33, v39, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00f16NotificationUnitE0V_AHtGSgGMd);
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v35, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00f16NotificationUnitE0V_AHtGSgGMd);
    v37[8] = v14;
    v37[9] = v15;
    v37[10] = v16;
    v37[4] = v10;
    v37[5] = v11;
    v37[6] = v12;
    v37[7] = v13;
    v37[0] = v6;
    v37[1] = v7;
    v37[2] = v8;
    v37[3] = v9;
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v37, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMd);
    memcpy(__src, v5, 0x111uLL);
    _s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVy07WorkoutB00h16NotificationUnitG0V_AJtGSgAGyAA08ModifiedD0VyAH013MetricHeadingG0VyACyAA4TextVAA6HStackVyAGyARSg_AA5ImageVSgAUtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeR0VGGSg_ATyALGtG_GWOi0_(__src);
    memcpy(v39, __src, 0x112uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB0013MetricHeadingD0VyAA012_ConditionalF0VyAA4TextVAA6HStackVyACyALSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSg_ANyACyAF0g16NotificationUnitD0V_A4_tGSgGtGMd);
    lazy protocol witness table accessor for type TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>? and conformance <A> A?();
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB0013MetricHeadingD0VyAA012_ConditionalF0VyAA4TextVAA6HStackVyACyALSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSg_ANyACyAF0g16NotificationUnitD0V_A4_tGSgGtGMd);
    _ConditionalContent<>.init(storage:)();
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v30, &_s7SwiftUI6HStackVyAA9TupleViewVy07WorkoutB00f16NotificationUnitE0V_AHtGSgGMd);
    _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(&v17, &_s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgMd);
    memcpy(v39, __dst, 0x112uLL);
  }

  return memcpy(a1, v39, 0x112uLL);
}

uint64_t closure #1 in WorkoutNotificationIntervalView.intervalHeader.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v11 = &v43[-v10];
  if (*(a1 + 16))
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = *a1;
  v14 = (*a1 & 0xC000000000000001) == 0;
  v46 = v12;
  v47 = a2;
  v45 = a1;
  if (v14)
  {
    if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    MEMORY[0x20F30C990](v9);
  }

  dispatch thunk of WorkoutNotificationUnit.type.getter();
  (*(v5 + 104))(v7, *MEMORY[0x277D7DB38], v4);
  lazy protocol witness table accessor for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType(&lazy protocol witness table cache variable for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v70 == v68 && v71 == v69)
  {
    v15 = *(v5 + 8);
    v15(v7, v4);
    v15(v11, v4);
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    v16(v11, v4);

    if ((v44 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v17 = dispatch thunk of WorkoutNotificationUnit.key.getter();
  if (!v18)
  {
LABEL_16:
    if (!(v13 >> 62))
    {
      v40 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_18;
    }

LABEL_23:
    v40 = __CocoaSet.count.getter();
LABEL_18:
    if ((v46 | 4) >= v40)
    {

      v34 = 0uLL;
      v39 = -1;
      v33 = 0uLL;
      v36 = 0uLL;
      v35 = 0uLL;
      v38 = 0uLL;
      v37 = 0uLL;
    }

    else
    {
      v41 = static VerticalAlignment.center.getter();
      v67 = 1;
      closure #1 in closure #1 in WorkoutNotificationIntervalView.intervalHeader.getter(v45, v55);
      v60 = v55[2];
      v61 = v55[3];
      v62 = *&v55[4];
      v58 = v55[0];
      v59 = v55[1];
      v63[2] = v55[2];
      v63[3] = v55[3];
      v64 = *&v55[4];
      v63[0] = v55[0];
      v63[1] = v55[1];
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(&v58, &v48, &_s7SwiftUI9TupleViewVyAA4TextVSg_AA5ImageVSgAFtGMd);
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v63, &_s7SwiftUI9TupleViewVyAA4TextVSg_AA5ImageVSgAFtGMd);
      *(v55 + 7) = v58;
      *(&v55[1] + 7) = v59;
      *(&v55[2] + 7) = v60;
      *(&v55[3] + 7) = v61;
      *(&v55[4] + 7) = v62;
      v65[0] = v41;
      v65[1] = 0;
      LOBYTE(v66[0]) = v67;
      *(v66 + 1) = v55[0];
      v66[4] = *(&v55[3] + 15);
      *(&v66[3] + 1) = v55[3];
      *(&v66[2] + 1) = v55[2];
      *(&v66[1] + 1) = v55[1];
      v48 = v41;
      v49 = v66[0];
      v50 = v66[1];
      v51 = v66[2];
      v52 = v66[3];
      v53 = v66[4];
      v67 = 1;
      v54 = 1;
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v65, v55, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd);
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v65, v55, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd);
      lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text?, Image?, Text?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd);
      _ConditionalContent<>.init(storage:)();

      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v65, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd);
      result = _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v65, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd);
      v33 = v55[1];
      v34 = v55[0];
      v36 = v55[2];
      v35 = v55[3];
      v38 = v55[4];
      v37 = v56;
      v39 = v57;
    }

    goto LABEL_21;
  }

  v19 = v17;
  v20 = v18;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = WorkoutUIBundle.super.isa;
  v72._object = 0xE000000000000000;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v22.value._object = 0xEB00000000656C62;
  v23._countAndFlagsBits = v19;
  v23._object = v20;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v72._countAndFlagsBits = 0;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v72);

  v55[0] = v25;
  lazy protocol witness table accessor for type String and conformance String();
  v26 = Text.init<A>(_:)();
  v28 = v27;
  v30 = v29 & 1;
  LOBYTE(v63[0]) = v29 & 1;
  LOBYTE(v58) = 0;
  *&v48 = v26;
  *(&v48 + 1) = v27;
  LOBYTE(v49) = v29 & 1;
  *(&v49 + 1) = v31;
  v54 = 0;
  outlined copy of Text.Storage(v26, v27, v29 & 1);

  outlined copy of Text.Storage(v26, v28, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd);
  lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text?, Image?, Text?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextVSg_AA5ImageVSgAHtGGMd);
  _ConditionalContent<>.init(storage:)();

  outlined consume of Text.Storage(v26, v28, v30);

  outlined consume of Text.Storage(v26, v28, v30);

  v33 = v55[1];
  v34 = v55[0];
  v36 = v55[2];
  v35 = v55[3];
  v38 = v55[4];
  v37 = v56;
  v39 = v57;
LABEL_21:
  v42 = v47;
  *v47 = v34;
  v42[1] = v33;
  v42[2] = v36;
  v42[3] = v35;
  v42[4] = v38;
  v42[5] = v37;
  *(v42 + 96) = v39;
  return result;
}

unint64_t closure #1 in closure #1 in WorkoutNotificationIntervalView.intervalHeader.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *a1;
  if (v7)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  *&v50 = v8 & 0xC000000000000001;
  if ((v8 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](v9, v8);
  }

  else
  {
    if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_58;
    }
  }

  v3 = dispatch thunk of WorkoutNotificationUnit.key.getter();
  v2 = v10;

  if (v2)
  {
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
LABEL_9:
      swift_beginAccess();
      v11 = WorkoutUIBundle.super.isa;
      v51._object = 0xE000000000000000;
      v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v12.value._object = 0xEB00000000656C62;
      v13._countAndFlagsBits = v3;
      v13._object = v2;
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      v51._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v51);

      lazy protocol witness table accessor for type String and conformance String();
      v15 = Text.init<A>(_:)();
      v17 = v16;
      v19 = v18;
      v21 = v20 & 1;
      outlined copy of Text.Storage(v15, v16, v20 & 1);

      goto LABEL_11;
    }

LABEL_58:
    swift_once();
    goto LABEL_9;
  }

  v15 = 0;
  v17 = 0;
  v21 = 0;
  v19 = 0;
LABEL_11:
  if (v7)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v50 == 0.0)
  {
    if (v22 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_60;
    }
  }

  else
  {
    MEMORY[0x20F30C990](v22, v8);
  }

  dispatch thunk of WorkoutNotificationUnit.key.getter();
  v5 = v23;

  if (v5)
  {
    v4 = Image.init(systemName:)();
  }

  else
  {
    v4 = 0;
  }

  if (v7)
  {
    v24 = 5;
  }

  else
  {
    v24 = 3;
  }

  if (v50 != 0.0)
  {
    MEMORY[0x20F30C990](v24, v8);
    goto LABEL_28;
  }

  if (v24 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_28:
  _ = dispatch thunk of WorkoutNotificationUnit.key.getter();
  v5 = v25;

  __8 = v15;
  if (!v5)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
LABEL_55:
    outlined copy of Text?(__8, v17, v21, v19);

    outlined copy of Text?(v27, v28, v29, v5);

    outlined consume of Text?(__8, v17, v21, v19);
    outlined consume of Text?(v27, v28, v29, v5);
    *a2 = __8;
    a2[1] = v17;
    a2[2] = v21;
    a2[3] = v19;
    a2[4] = v4;
    a2[5] = v27;
    a2[6] = v28;
    a2[7] = v29;
    a2[8] = v5;
    outlined consume of Text?(v27, v28, v29, v5);

    return outlined consume of Text?(__8, v17, v21, v19);
  }

  if (v7)
  {
    v26 = 6;
  }

  else
  {
    v26 = 4;
  }

  if (v50 != 0.0)
  {
    MEMORY[0x20F30C990](v26, v8);
    goto LABEL_37;
  }

  if (v26 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_37:
  v47 = COERCE_DOUBLE(dispatch thunk of WorkoutNotificationUnit.value.getter());
  v31 = v30;

  if (v31)
  {
LABEL_46:

    v27 = 0;
    v28 = 0;
    v29 = 0;
    v5 = 0;
    goto LABEL_55;
  }

  if (v7)
  {
    result = 7;
  }

  else
  {
    result = 5;
  }

  if (v50 != 0.0)
  {
    MEMORY[0x20F30C990](result, v8);
    goto LABEL_45;
  }

  if (result < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_45:
    v33 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    v35 = v34;

    if (v35)
    {
      goto LABEL_46;
    }

    v50 = *&v33;
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
LABEL_48:
      swift_beginAccess();
      v36 = WorkoutUIBundle.super.isa;
      v52._object = 0xE000000000000000;
      v37.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v37.value._object = 0xEB00000000656C62;
      v38._countAndFlagsBits = _;
      v38._object = v5;
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v52._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v37, v36, v39, v52);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      result = swift_allocObject();
      *(result + 16) = xmmword_20CB5DA80;
      if ((~*&v47 & 0x7FF0000000000000) != 0)
      {
        if (v47 > -9.22337204e18)
        {
          if (v47 < 9.22337204e18)
          {
            v40 = result;
            lazy protocol witness table accessor for type Int and conformance Int();
            v41 = BinaryInteger.formatted()();
            *(v40 + 56) = MEMORY[0x277D837D0];
            result = lazy protocol witness table accessor for type String and conformance String();
            *(v40 + 64) = result;
            *(v40 + 32) = v41;
            if ((~*&v50 & 0x7FF0000000000000) != 0)
            {
              if (v50 > -9.22337204e18)
              {
                if (v50 < 9.22337204e18)
                {
                  v42 = result;
                  v43 = BinaryInteger.formatted()();
                  *(v40 + 96) = MEMORY[0x277D837D0];
                  *(v40 + 104) = v42;
                  *(v40 + 72) = v43;
                  String.init(format:_:)();

                  lazy protocol witness table accessor for type String and conformance String();
                  StringProtocol.localizedUppercase.getter();

                  v27 = Text.init<A>(_:)();
                  v28 = v44;
                  v5 = v45;
                  v29 = v46 & 1;
                  outlined copy of Text.Storage(v27, v44, v46 & 1);

                  goto LABEL_55;
                }

                goto LABEL_68;
              }

LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
              goto LABEL_69;
            }

LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

LABEL_65:
          __break(1u);
          goto LABEL_66;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_65;
    }

LABEL_62:
    swift_once();
    goto LABEL_48;
  }

LABEL_69:
  __break(1u);
  return result;
}

void WorkoutNotificationIntervalView.colorForStepGoalType(for:)()
{
  v0 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v1 = *(v0 - 1);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of WorkoutNotificationUnit.type.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D7DB40])
  {
    v5 = [objc_opt_self() distanceColors];
    if (!v5)
    {
      __break(1u);
      goto LABEL_16;
    }

    v0 = v5;
    v6 = [v5 nonGradientTextColor];

    if (v6)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (v4 != *MEMORY[0x277D7DB28])
  {
    goto LABEL_9;
  }

  v7 = [objc_opt_self() keyColors];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v0 = v7;
  v8 = [v7 nonGradientTextColor];

  if (!v8)
  {
    __break(1u);
LABEL_9:
    if (v4 != *MEMORY[0x277D7DB00])
    {
      (*(v1 + 8))(v3, v0);
      return;
    }

    v9 = [objc_opt_self() elapsedTimeColors];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 nonGradientTextColor];

      if (v11)
      {
        goto LABEL_12;
      }

LABEL_18:
      __break(1u);
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  Color.init(uiColor:)();
}

unint64_t closure #1 in WorkoutNotificationIntervalView.intervalAlert.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v69 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v69 - v14;
  v15 = *a1;
  result = WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 3;
  v17 = v15 & 0xC000000000000001;
  v71 = a2;
  if ((v15 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F30C990](result, v15);
  }

  else
  {
    if (result >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  dispatch thunk of WorkoutNotificationUnit.key.getter();
  v19 = v18;

  if (v19)
  {
    v20 = Image.init(systemName:)();
    v21 = (v9 + *(v6 + 36));
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    v70 = v6;
    v23 = v15;
    v24 = v12;
    v25 = v17;
    v26 = *(v22 + 28);
    v27 = *MEMORY[0x277CE1050];
    v28 = type metadata accessor for Image.Scale();
    v29 = v21 + v26;
    v17 = v25;
    v12 = v24;
    v15 = v23;
    (*(*(v28 - 8) + 104))(v29, v27, v28);
    *v21 = swift_getKeyPath();
    *v9 = v20;
    v30 = v72;
    outlined init with take of ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>(v9, v72, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
    (*(v7 + 56))(v30, 0, 1, v70);
  }

  else
  {
    (*(v7 + 56))(v72, 1, 1, v6);
  }

  if (a3 != 2.0)
  {
    v33 = v12;
    goto LABEL_15;
  }

  v31 = *(a1 + 3);
  v77 = *(a1 + 2);
  v78 = v31;
  v79[0] = *(a1 + 4);
  *(v79 + 9) = *(a1 + 73);
  v32 = *(a1 + 1);
  v75 = *a1;
  v76 = v32;
  result = WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 4;
  if (v17)
  {
    MEMORY[0x20F30C990](result, v15);
    goto LABEL_13;
  }

  if (result >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_13:
  v33 = v12;
  v34 = WorkoutNotificationIntervalView.singleAlertTarget(for:)();
  v36 = v35;

  if (v36)
  {
    *&v75 = v34;
    *(&v75 + 1) = v36;
    lazy protocol witness table accessor for type String and conformance String();
    v37 = StringProtocol.localizedUppercase.getter();
    v39 = v38;

    v73 = v37;
    v74 = v39;
    v40 = Text.init<A>(_:)();
    v42 = v41;
    v44 = v43;
    v46 = v45 & 1;
    outlined copy of Text.Storage(v40, v41, v45 & 1);

    goto LABEL_16;
  }

LABEL_15:
  v40 = 0;
  v42 = 0;
  v46 = 0;
  v44 = 0;
LABEL_16:
  v69 = v44;
  v70 = v42;
  if (a3 != 3.0)
  {
    v50 = v46;
    v51 = v40;
    goto LABEL_28;
  }

  v47 = *(a1 + 3);
  v77 = *(a1 + 2);
  v78 = v47;
  v79[0] = *(a1 + 4);
  *(v79 + 9) = *(a1 + 73);
  v48 = *(a1 + 1);
  v75 = *a1;
  v76 = v48;
  result = WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 4;
  if (!v17)
  {
    if (result < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v49 = *(v15 + 8 * result + 32);

      goto LABEL_22;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v49 = MEMORY[0x20F30C990](result, v15);
LABEL_22:
  result = WorkoutNotificationIntervalView.intervalBodyIndex.getter() + 5;
  if (v17)
  {
    v50 = v46;
    v51 = v40;
    v52 = MEMORY[0x20F30C990](result, v15);
    goto LABEL_26;
  }

  if (result < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v50 = v46;
    v51 = v40;
    v52 = *(v15 + 8 * result + 32);

LABEL_26:
    v53 = WorkoutNotificationIntervalView.rangedAlertTarget(min:max:)(v49, v52);
    v55 = v54;

    if (v55)
    {
      *&v75 = v53;
      *(&v75 + 1) = v55;
      lazy protocol witness table accessor for type String and conformance String();
      v56 = Text.init<A>(_:)();
      v58 = v57;
      v60 = v59;
      v62 = v61 & 1;
      outlined copy of Text.Storage(v56, v57, v61 & 1);

LABEL_29:
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v72, v33, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd);
      v63 = v71;
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(v33, v71, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSg_AA4TextVSgAOtMd);
      v65 = (v63 + *(v64 + 48));
      v67 = v69;
      v66 = v70;
      *v65 = v51;
      v65[1] = v66;
      v65[2] = v50;
      v65[3] = v67;
      v68 = (v63 + *(v64 + 64));
      outlined copy of Text?(v51, v66, v50, v67);
      outlined copy of Text?(v56, v58, v62, v60);
      outlined consume of Text?(v51, v66, v50, v67);
      outlined consume of Text?(v56, v58, v62, v60);
      *v68 = v56;
      v68[1] = v58;
      v68[2] = v62;
      v68[3] = v60;
      _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v72, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd);
      outlined consume of Text?(v56, v58, v62, v60);
      outlined consume of Text?(v51, v66, v50, v67);
      return _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(v33, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGSgMd);
    }

LABEL_28:
    v56 = 0;
    v58 = 0;
    v62 = 0;
    v60 = 0;
    goto LABEL_29;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t WorkoutNotificationIntervalView.singleAlertTarget(for:)()
{
  v1 = type metadata accessor for TargetZone.ZoneType();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x28223BE20](v1);
  v42 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v41 = *(v0 + 8);
  dispatch thunk of WorkoutNotificationUnit.type.getter();
  (*(v4 + 104))(v8, *MEMORY[0x277D7DB28], v3);
  lazy protocol witness table accessor for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType(&lazy protocol witness table cache variable for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v46 == v48 && v47 == v49)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v13 = *(v4 + 8);
  v13(v8, v3);
  v13(v11, v3);

  if ((v12 & 1) == 0 || (v14 = dispatch thunk of WorkoutNotificationUnit.key.getter(), !v15))
  {
    result = dispatch thunk of WorkoutNotificationUnit.activityType.getter();
    if (!result)
    {
      return result;
    }

    v26 = result;
    dispatch thunk of WorkoutNotificationUnit.value.getter();
    if (v27)
    {

      return 0;
    }

    v28 = v45;
    dispatch thunk of WorkoutNotificationUnit.type.getter();
    v29 = (*(v4 + 88))(v28, v3);
    if (v29 == *MEMORY[0x277D7DB30])
    {
      v30 = MEMORY[0x277D7DE58];
    }

    else if (v29 == *MEMORY[0x277D7DAF8])
    {
      v30 = MEMORY[0x277D7DE40];
    }

    else
    {
      if (v29 != *MEMORY[0x277D7DB10])
      {

        v13(v28, v3);
        return 0;
      }

      v30 = MEMORY[0x277D7DE50];
    }

    v39 = v42;
    v38 = v43;
    v40 = v44;
    (*(v43 + 104))(v42, *v30, v44);
    v37 = TargetZone.ZoneType.valueAndUnitString(activityType:formattingManager:value:)();

    (*(v38 + 8))(v39, v40);
    return v37;
  }

  v16 = v14;
  v17 = v15;
  v18 = dispatch thunk of WorkoutNotificationUnit.value.getter();
  if ((v19 & 1) == 0)
  {
    v31 = *&v18;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v32 = WorkoutUIBundle.super.isa;
    v51._object = 0xE000000000000000;
    v33._countAndFlagsBits = v16;
    v33._object = v17;
    v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v34.value._object = 0xEB00000000656C62;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v51._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v51);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    result = swift_allocObject();
    *(result + 16) = xmmword_20CB5DA70;
    if ((~*&v31 & 0x7FF0000000000000) != 0)
    {
      if (v31 > -9.22337204e18)
      {
        if (v31 < 9.22337204e18)
        {
          v36 = MEMORY[0x277D83C10];
          *(result + 56) = MEMORY[0x277D83B88];
          *(result + 64) = v36;
          *(result + 32) = v31;
          v37 = String.init(format:_:)();

          return v37;
        }

LABEL_33:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = WorkoutUIBundle.super.isa;
  v50._object = 0xE000000000000000;
  v21._countAndFlagsBits = v16;
  v21._object = v17;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v22.value._object = 0xEB00000000656C62;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v50)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t WorkoutNotificationIntervalView.rangedAlertTarget(min:max:)(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = type metadata accessor for HeartRateZoneType();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TargetZone.ZoneType();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v2 + 8);
  result = dispatch thunk of WorkoutNotificationUnit.activityType.getter();
  if (result)
  {
    v14 = result;
    v15 = dispatch thunk of WorkoutNotificationUnit.value.getter();
    if (v16 & 1) != 0 || (v27 = *&v15, *&v17 = COERCE_DOUBLE(dispatch thunk of WorkoutNotificationUnit.value.getter()), (v18))
    {

      return 0;
    }

    v19 = v27;
    v31 = v17;
    v20 = *&v17;
    dispatch thunk of WorkoutNotificationUnit.type.getter();
    v21 = (*(v10 + 88))(v12, v9);
    if (v21 == *MEMORY[0x277D7DB30])
    {
      v22 = MEMORY[0x277D7DE58];
    }

    else
    {
      if (v21 == *MEMORY[0x277D7DB50])
      {
        result = (*(v28 + 104))(v5, *MEMORY[0x277D7E140], v3);
        if (v19 > v20)
        {
          __break(1u);
          return result;
        }

        v24 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
        v25 = HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)();
        v23 = MEMORY[0x20F305B10](v30, v14);

        return v23;
      }

      if (v21 == *MEMORY[0x277D7DAF8])
      {
        v22 = MEMORY[0x277D7DE40];
      }

      else
      {
        if (v21 != *MEMORY[0x277D7DB10])
        {

          (*(v10 + 8))(v12, v9);
          return 0;
        }

        v22 = MEMORY[0x277D7DE50];
      }
    }

    (*(v29 + 104))(v8, *v22, v6);
    type metadata accessor for TargetZone();
    swift_allocObject();
    TargetZone.init(type:min:max:enabled:)();

    v23 = TargetZone.displayString(formattingManager:activityType:)();

    return v23;
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutNotificationIntervalView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t storeEnumTagSinglePayload for WorkoutNotificationIntervalView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>?)>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>?)>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>?)>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB00E22NotificationResultViewVyAA05EmptyH0VAA6VStackVyACyAA05TupleH0VyAD0ef4UnitH0V_ANtGSgALyAA08ModifiedD0VyAD013MetricHeadingH0VyACyAA4TextVAA6HStackVyALyAVSg_AA5ImageVSgAYtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeT0VGGSg_AXyAPGtGGGGAFyApLyA12__ApRyATyALyARyA_AA022_EnvironmentKeyWritingU0VyA_5ScaleOGGSg_A2YtGGA7_yAA5ColorVGGSgtGGGMd);
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005EmptyE0VAD6VStackVyAD19_ConditionalContentVyAD05TupleE0VyAA0ac4UnitE0V_ANtGSgALyAD08ModifiedJ0VyAA013MetricHeadingE0VyAJyAD4TextVAD6HStackVyALyAVSg_AD5ImageVSgAYtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeT0VGGSg_AXyAPGtGGGGMd);
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>?)>> and conformance WorkoutNotificationResultView<A, B>, &_s9WorkoutUI0A22NotificationResultViewVy05SwiftB005TupleE0VyAA0ac4UnitE0V_AHtGSgAFyAD15ModifiedContentVyAA013MetricHeadingE0VyAD012_ConditionalJ0VyAD4TextVAD6HStackVyAFyARSg_AD5ImageVSgAUtGGGSgGAD24_ForegroundStyleModifierVyAD017HierarchicalShapeR0VGGSg_AjLyANyAFyALyAwD022_EnvironmentKeyWritingS0VyAW5ScaleOGGSg_A2UtGGA3_yAD5ColorVGGSgtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>>, WorkoutNotificationResultView<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>?)>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGSgMd);
    lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(&lazy protocol witness table cache variable for type TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB00e16NotificationUnitD0V_AFtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>? and conformance <A> A?);
  }

  return result;
}

double _s7SwiftUI15ModifiedContentVy07WorkoutB017MetricHeadingViewVyAA012_ConditionalD0VyAA4TextVAA6HStackVyAA05TupleH0VyAJSg_AA5ImageVSgAOtGGGSgGAA24_ForegroundStyleModifierVyAA017HierarchicalShapeO0VGGSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 255;
  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutNotificationResultView<EmptyView, VStack<_ConditionalContent<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?, TupleView<(ModifiedContent<MetricHeadingView<_ConditionalContent<Text, HStack<TupleView<(Text?, Image?, Text?)>>>?>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, HStack<TupleView<(WorkoutNotificationUnitView, WorkoutNotificationUnitView)>?>)>>>> and conformance WorkoutNotificationResultView<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t lazy protocol witness table accessor for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutNotificationUnit.NotificationUnitType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI11EnvironmentVy07WorkoutB00D9ViewStyleOGWOhTm_1(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<MetricHeadingView<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>?, Text?, Text?)>>, _ForegroundStyleModifier<Color>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void WKUIBreadcrumbMapView.routePolyline.setter(void *a1)
{
  v2 = OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_routePolyline;
  v3 = *&v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_routePolyline];
  *&v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_routePolyline] = a1;
  if (v3)
  {
    v4 = a1;
    [v1 removeOverlay_];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v1 addOverlay:v6 level:1];
  }

LABEL_4:
}

void WKUIBreadcrumbMapView.init(locationPositionPublisher:)()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPath] = 0;
  *&v0[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPathRenderer] = 0;
  *&v0[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_cancellable] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_routePolyline] = 0;
  v0[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_didReceiveInitialUpdate] = 0;
  v2 = [objc_allocWithZone(type metadata accessor for EmptyCLDelegate #1 in WKUIBreadcrumbMapView.init(locationPositionPublisher:)()) init];
  v3 = WOLocationBundlePath();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v7 = v2;
  v8 = static OS_dispatch_queue.main.getter();
  v9 = objc_allocWithZone(MEMORY[0x277CBFC10]);
  v10 = MEMORY[0x20F30BAD0](v4, v6);

  v11 = [v9 initWithEffectiveBundlePath:v10 delegate:v7 onQueue:v8];

  if (v11)
  {
    [v11 setActivityType_];
  }

  v12 = objc_opt_self();
  v13 = WOLocationBundle();
  v14 = MEMORY[0x20F30BAD0](0xD00000000000001BLL, 0x800000020CB9F460);
  v15 = [v12 newAssertionForBundle:v13 withReason:v14 level:1];

  if (v15)
  {
    *&v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_inUseAssertion] = v15;
    v21.receiver = v1;
    v21.super_class = type metadata accessor for WKUIBreadcrumbMapView();
    v16 = objc_msgSendSuper2(&v21, sel_initWithFrame_locationManager_, v11, 0.0, 0.0, 0.0, 0.0);
    if (v16)
    {
      v17 = v16;
      [v17 setDelegate_];
      [v17 setZoomEnabled_];
      [v17 setScrollEnabled_];
      [v17 setPitchEnabled_];
      [v17 setRotateEnabled_];
      [v17 setShowsAttribution_];
      [v17 setShowsUserLocation_];
      [v17 setUserTrackingMode_];
      [v17 setMapType_];
      v18 = [objc_opt_self() filterExcludingAllCategories];
      [v17 setPointOfInterestFilter_];

      v19 = [objc_allocWithZone(type metadata accessor for WKUIBreadcrumbPath()) init];
      [v17 addOverlay:v19 level:0];

      v20 = *&v17[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPath];
      *&v17[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPath] = v19;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall WKUIBreadcrumbMapView.set(routePoints:)(Swift::OpaquePointer routePoints)
{
  v3 = type metadata accessor for RoutePoint();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(routePoints._rawValue + 2);
  if (v7)
  {
    v23 = v1;
    v26 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v26;
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v11 = routePoints._rawValue + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v24 = *(v9 + 56);
    v25 = v10;
    v12 = (v9 - 8);
    do
    {
      v13 = v9;
      v25(v6, v11, v3);
      RoutePoint.coordinate.getter();
      v15 = v14;
      v17 = v16;
      (*v12)(v6, v3);
      v26 = v8;
      v19 = *(v8 + 16);
      v18 = *(v8 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v8 = v26;
      }

      *(v8 + 16) = v20;
      v21 = (v8 + 32 + 16 * v19);
      *v21 = v15;
      v21[1] = v17;
      v11 += v24;
      --v7;
      v9 = v13;
    }

    while (v7);
    v22 = [objc_opt_self() polylineWithCoordinates:v8 + 32 count:v20];

    WKUIBreadcrumbMapView.routePolyline.setter(v22);
  }

  else
  {

    WKUIBreadcrumbMapView.routePolyline.setter(0);
  }
}

Swift::Void __swiftcall WKUIBreadcrumbMapView.update(locations:)(Swift::OpaquePointer locations)
{
  rawValue = locations._rawValue;
  if (locations._rawValue >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((locations._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else if ((rawValue & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(rawValue + 8 * v5 + 32);
      goto LABEL_8;
    }

    __break(1u);
    return;
  }

  v6 = MEMORY[0x20F30C990](v5, rawValue);
LABEL_8:
  v7 = *&v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPath];
  if (v7)
  {
    v13 = v6;
    v8 = OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_didReceiveInitialUpdate;
    if (v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_didReceiveInitialUpdate])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      rawValue = swift_allocObject();
      *(rawValue + 16) = xmmword_20CB67B90;
      *(rawValue + 32) = v13;
      v9 = v13;
    }

    else
    {
    }

    v10 = *&v1[OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPathRenderer];
    v11 = v10;
    v12 = v7;
    WKUIBreadcrumbPath.addLocations(_:mapView:breadcrumbRenderer:)(rawValue, v1, v10);

    v1[v8] = 1;
  }

  else
  {
  }
}

id WKUIBreadcrumbMapView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id WKUIBreadcrumbMapView.__allocating_init(frame:locationManager:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 locationManager:{a2, a3, a4, a5}];

  return v7;
}

id WKUIBreadcrumbMapView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id specialized WKUIBreadcrumbMapView.mapView(_:rendererFor:)()
{
  type metadata accessor for WKUIBreadcrumbPath();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPathRenderer;
    v3 = *(v0 + OBJC_IVAR____TtC9WorkoutUI21WKUIBreadcrumbMapView_breadcrumbPathRenderer);
    if (v3)
    {

      return v3;
    }

    else
    {
      v16 = v1;
      v17 = type metadata accessor for WKUIBreadcrumbPathRenderer();
      v18 = objc_allocWithZone(v17);
      *&v18[OBJC_IVAR____TtC9WorkoutUI26WKUIBreadcrumbPathRenderer_crumbs] = v16;
      v23.receiver = v18;
      v23.super_class = v17;
      swift_unknownObjectRetain();
      v19 = objc_msgSendSuper2(&v23, sel_initWithOverlay_, v16);
      v20 = *(v0 + v2);
      *(v0 + v2) = v19;
      v21 = v19;

      return v21;
    }
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = objc_allocWithZone(MEMORY[0x277CD4F30]);
      swift_unknownObjectRetain();
      v8 = [v7 initWithPolyline_];
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 systemWhiteColor];
      [v10 setStrokeColor_];

      v12 = [v9 systemWhiteColor];
      v13 = [v12 colorWithAlphaComponent_];

      [v10 setFillColor_];
      [v10 setLineWidth_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_20CB61A40;
      _sSo17OS_dispatch_queueCMaTm_1(0, &lazy cache variable for type metadata for NSNumber);
      *(v14 + 32) = NSNumber.init(integerLiteral:)(2);
      *(v14 + 40) = NSNumber.init(integerLiteral:)(10);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v10 setLineDashPattern_];

      swift_unknownObjectRelease();
      return v10;
    }

    else
    {
      v22 = objc_allocWithZone(MEMORY[0x277CD4EE8]);

      return [v22 init];
    }
  }
}

uint64_t _sSo17OS_dispatch_queueCMaTm_1(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t WorkoutSummaryCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WorkoutNotification.isUserInteractive.getter()
{
  v0 = type metadata accessor for WorkoutNotification.NotificationType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v10 - v5;
  dispatch thunk of WorkoutNotification.notificationType.getter();
  (*(v1 + 104))(v3, *MEMORY[0x277D7D9F0], v0);
  lazy protocol witness table accessor for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType()
{
  result = lazy protocol witness table cache variable for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType;
  if (!lazy protocol witness table cache variable for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType)
  {
    type metadata accessor for WorkoutNotification.NotificationType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotification.NotificationType and conformance WorkoutNotification.NotificationType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuickStartWorkoutConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for QuickStartWorkoutConstants(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t ManagedConfigurationsUpcomingViewiOS.init(provider:viewModel:activityMoveMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  _sSo21FIUIFormattingManagerCMaTm_8(0, &lazy cache variable for type metadata for FIUIFormattingManager);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_4(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager);
  *a4 = EnvironmentObject.init()();
  *(a4 + 8) = v8;
  type metadata accessor for ConfigurationNavigationModel();
  lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  *(a4 + 16) = EnvironmentObject.init()();
  *(a4 + 24) = v9;
  _sSo21FIUIFormattingManagerCMaTm_8(0, &lazy cache variable for type metadata for HKHealthStore);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_4(&lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore, &lazy cache variable for type metadata for HKHealthStore);
  *(a4 + 32) = EnvironmentObject.init()();
  *(a4 + 40) = v10;
  type metadata accessor for WorkoutConfigurationOccurrenceStore();
  lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18]);
  *(a4 + 48) = EnvironmentObject.init()();
  *(a4 + 56) = v11;
  State.init(wrappedValue:)();
  *(a4 + 88) = v13;
  *(a4 + 96) = v14;
  *(a4 + 104) = implicit closure #2 in implicit closure #1 in variable initialization expression of ManagedConfigurationsUpcomingViewiOS._devicesProvider;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  State.init(wrappedValue:)();
  *(a4 + 128) = v13;
  *(a4 + 136) = v14;
  result = State.init(wrappedValue:)();
  *(a4 + 144) = v13;
  *(a4 + 152) = v14;
  *(a4 + 64) = a1;
  *(a4 + 72) = a2;
  *(a4 + 80) = a3;
  return result;
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    _sSo21FIUIFormattingManagerCMaTm_8(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t ManagedConfigurationsUpcomingViewiOS.body.getter@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v66 = type metadata accessor for ListSectionSpacing();
  v2 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v69 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA6VStackVyAGyAA15ModifiedContentVyAA6HStackVyAGyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingN0VG_AA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAKyAKyAKyAMyAGyAZ_AxZtGGA2_GAA011_BackgroundT8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainvT0VQo_tGG_AA7SectionVyAKyAIyAGyAX_AXSgtGGAA013_TraitWritingX0VyAA0C17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAKyAKyAA5GroupVyA9_y07WorkoutB023WorkoutConfigurationRowVGSgGA40_GA37_yAA0c3RowW8TraitKeyVGGGAA05EmptyF0VGSgA68_A68_A32_yA66_A66_AKyAKyAxA022_EnvironmentKeyWritingX0VyAX4CaseOSgGGA40_GGA5_AAE5alert_11isPresented7actionsQrAX_AA7BindingVySbGqd__yXEtAAA4_Rd__lFQOyAKyAKyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yAKyAKyAKyAKyAMyAGyAZ_AKyAKyAKyAXA70_yAA0P9AlignmentOGGA53_15BodyHyphenationVGA70_yA16_SgGGAZtGGA2_GA2_GA17_GA23_GG_A27_Qo_A62_GA40_G_AGyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yA90_G_AA017BorderedProminentvT0VQo__A9_yAA07DefaultV5LabelVGtGQo_tGGMd);
  v65 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v64 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGA40_yAA0I22SectionSpacingTraitKeyVGGA73_yAA0I14SectionSpacingVSgGGMd);
  MEMORY[0x28223BE20](v68);
  v8 = &v64 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAMyAMyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarM0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyAVyAMyAA6HStackVyAVyAMyAMyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingY0VG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAMyAMyAMyAZyAVyA11__A9_A11_tGGA15_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyAMyAXyAVyA9__A9_SgtGGAA21_TraitWritingModifierVyAA0qE14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAMyAMyAA5GroupVyA20_y07WorkoutB0020WorkoutConfigurationE0VGSgGA51_GA48_yAA0qE18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA79_A79_A43_yA77_A77_AMyAMyA9_AA30_EnvironmentKeyWritingModifierVyA9_4CaseOSgGGA51_GGAcAE5alert_11isPresented7actionsQrA9__AA7BindingVySbGqd__yXEtAaBRd__lFQOyAMyAMyAcAEA17_yQrqd__AAA18_Rd__lFQOyA20_yAMyAMyAMyAMyAZyAVyA11__AMyAMyAMyA9_A81_yAA13TextAlignmentOGGA64_15BodyHyphenationVGA81_yA27_SgGGA11_tGGA15_GA15_GA28_GA34_GG_A38_Qo_A73_GA51_G_AVyAcAEA17_yQrqd__AAA18_Rd__lFQOyA20_yA101_G_AA28BorderedProminentButtonStyleVQo__A20_yAA18DefaultButtonLabelVGtGQo_tGG_AA0pM7BuilderV10buildBlockyQrxAaPRzlFZQOy_AA0P4ItemVyytA64_20DeviceConnectionMenuVGQo_Qo_A81_y12CoreGraphics7CGFloatVSgGGA48_yAA0Q22SectionSpacingTraitKeyVGGA81_yAA0Q14SectionSpacingVSgGG_Qo_Md);
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  MEMORY[0x28223BE20](v9);
  v67 = &v64 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyANyANyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarO0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyAWyANyAA6HStackVyAWyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGSg_AA4TextVAA6SpacerVtGGAA14_PaddingLayoutVG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyANyANyANyA_yAWyA12__A10_A12_tGGA16_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyANyAYyAWyA10__A10_SgtGGAA21_TraitWritingModifierVyAA0sG14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVANyANyAA5GroupVyA21_y07WorkoutB0020WorkoutConfigurationG0VGSgGA52_GA49_yAA0sG18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA80_A80_A44_yA78_A78_ANyANyA10_AA30_EnvironmentKeyWritingModifierVyA10_4CaseOSgGGA52_GGAcAE5alert_11isPresented7actionsQrA10__AA7BindingVySbGqd__yXEtAaBRd__lFQOyANyANyAcAEA18_yQrqd__AAA19_Rd__lFQOyA21_yANyANyANyANyA_yAWyA12__ANyANyANyA10_A82_yAA13TextAlignmentOGGA65_15BodyHyphenationVGA82_yA28_SgGGA12_tGGA16_GA16_GA29_GA35_GG_A39_Qo_A74_GA52_G_AWyAcAEA18_yQrqd__AAA19_Rd__lFQOyA21_yA102_G_AA28BorderedProminentButtonStyleVQo__A21_yAA18DefaultButtonLabelVGtGQo_tGG_AA0rO7BuilderV10buildBlockyQrxAaQRzlFZQOy_AA0R4ItemVyytA65_20DeviceConnectionMenuVGQo_Qo_A82_y12CoreGraphics7CGFloatVSgGGA49_yAA0S22SectionSpacingTraitKeyVGGA82_yAA0S14SectionSpacingVSgGG_Qo__SSQo_Md);
  v73 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v70 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE21navigationItemAdaptoryQrqd__AA012UINavigationeF0Rd__lFQOyAcAE0D5TitleyQrqd__SyRd__lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAPyAPyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarR0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyAYyAPyAA6HStackVyAYyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGSg_AA4TextVAA6SpacerVtGGAA14_PaddingLayoutVG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAPyAPyAPyA1_yAYyA14__A12_A14_tGGA18_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyAPyA_yAYyA12__A12_SgtGGAA21_TraitWritingModifierVyAA0vJ14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAPyAPyAA5GroupVyA23_y07WorkoutB0020WorkoutConfigurationJ0VGSgGA54_GA51_yAA0vJ18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA82_A82_A46_yA80_A80_APyAPyA12_AA30_EnvironmentKeyWritingModifierVyA12_4CaseOSgGGA54_GGAcAE5alert_11isPresented7actionsQrA12__AA7BindingVySbGqd__yXEtAaBRd__lFQOyAPyAPyAcAEA20_yQrqd__AAA21_Rd__lFQOyA23_yAPyAPyAPyAPyA1_yAYyA14__APyAPyAPyA12_A84_yAA13TextAlignmentOGGA67_15BodyHyphenationVGA84_yA30_SgGGA14_tGGA18_GA18_GA31_GA37_GG_A41_Qo_A76_GA54_G_AYyAcAEA20_yQrqd__AAA21_Rd__lFQOyA23_yA104_G_AA28BorderedProminentButtonStyleVQo__A23_yAA18DefaultButtonLabelVGtGQo_tGG_AA0uR7BuilderV10buildBlockyQrxAaSRzlFZQOy_AA0uE0VyytA67_20DeviceConnectionMenuVGQo_Qo_A84_y12CoreGraphics7CGFloatVSgGGA51_yAA0V22SectionSpacingTraitKeyVGGA84_yAA0V14SectionSpacingVSgGG_Qo__SSQo__A67_019MultilineNavigationE7AdapterVQo_Md);
  v74 = *(v13 - 8);
  v75 = v13;
  MEMORY[0x28223BE20](v13);
  v81 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE21navigationItemAdaptoryQrqd__AA012UINavigationkL0Rd__lFQOyAcAE0J5TitleyQrqd__SyRd__lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAWyAWyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarX0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyA4_yAWyAA6HStackVyA4_yAWyAWyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGSg_AA4TextVAA6SpacerVtGGAA14_PaddingLayoutVG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAWyAWyAWyA8_yA4_yA21__A19_A21_tGGA25_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyAWyA6_yA4_yA19__A19_SgtGGAA21_TraitWritingModifierVyAA04ListP14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAWyAWyAA5GroupVyA30_y07WorkoutB0020WorkoutConfigurationP0VGSgGA61_GA58_yAA04ListP18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA89_A89_A53_yA87_A87_AWyAWyA19_AA30_EnvironmentKeyWritingModifierVyA19_4CaseOSgGGA61_GGAcAEAD_AeFQrA19__AJqd__yXEtAaBRd__lFQOyAWyAWyAcAEA27_yQrqd__AAA28_Rd__lFQOyA30_yAWyAWyAWyAWyA8_yA4_yA21__AWyAWyAWyA19_A91_yAA13TextAlignmentOGGA74_15BodyHyphenationVGA91_yA37_SgGGA21_tGGA25_GA25_GA38_GA44_GG_A48_Qo_A83_GA61_G_A4_yAcAEA27_yQrqd__AAA28_Rd__lFQOyA30_yA105_G_AA28BorderedProminentButtonStyleVQo__A30_yAA18DefaultButtonLabelVGtGQo_tGG_AA07ToolbarX7BuilderV10buildBlockyQrxAaZRzlFZQOy_AA07ToolbarK0VyytA74_20DeviceConnectionMenuVGQo_Qo_A91_y12CoreGraphics7CGFloatVSgGGA58_yAA26ListSectionSpacingTraitKeyVGGA91_yAA18ListSectionSpacingVSgGG_Qo__SSQo__A74_019MultilineNavigationK7AdapterVQo__SSA30_yA19_GA87_Qo_Md);
  v77 = *(v15 - 8);
  v78 = v15;
  MEMORY[0x28223BE20](v15);
  v76 = &v64 - v16;
  v17 = v1[7];
  v101 = v1[6];
  v102 = v17;
  v18 = v1[9];
  v103 = v1[8];
  v104 = v18;
  v19 = v1[3];
  v97 = v1[2];
  v98 = v19;
  v20 = v1[5];
  v99 = v1[4];
  v100 = v20;
  v21 = v1[1];
  v95 = *v1;
  v96 = v21;
  v82 = &v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6VStackVyACyAA15ModifiedContentVyAA6HStackVyACyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyACyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGG_AA7SectionVyAGyAEyACyAT_ATSgtGGAA013_TraitWritingV0VyAA21ListRowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAGyAGyAA5GroupVyA5_y07WorkoutB023WorkoutConfigurationRowVGSgGA36_GA33_yAA07ListRowU8TraitKeyVGGGAA05EmptyD0VGSgA64_A64_A28_yA62_A62_AGyAGyAtA022_EnvironmentKeyWritingV0VyAT4CaseOSgGGA36_GGA1_AAE5alert_11isPresented7actionsQrAT_AA7BindingVySbGqd__yXEtAAA0_Rd__lFQOyAGyAGyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yAGyAGyAGyAGyAIyACyAV_AGyAGyAGyATA66_yAA0N9AlignmentOGGA49_15BodyHyphenationVGA66_yA12_SgGGAVtGGAZGAZGA13_GA19_GG_A23_Qo_A58_GA36_G_ACyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yA86_G_AA017BorderedProminenttR0VQo__A5_yAA07DefaultT5LabelVGtGQo_tGMd);
  lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRo, &_s7SwiftUI9TupleViewVyAA6VStackVyACyAA15ModifiedContentVyAA6HStackVyACyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyACyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGG_AA7SectionVyAGyAEyACyAT_ATSgtGGAA013_TraitWritingV0VyAA21ListRowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAGyAGyAA5GroupVyA5_y07WorkoutB023WorkoutConfigurationRowVGSgGA36_GA33_yAA07ListRowU8TraitKeyVGGGAA05EmptyD0VGSgA64_A64_A28_yA62_A62_AGyAGyAtA022_EnvironmentKeyWritingV0VyAT4CaseOSgGGA36_GGA1_AAE5alert_11isPresented7actionsQrAT_AA7BindingVySbGqd__yXEtAAA0_Rd__lFQOyAGyAGyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yAGyAGyAGyAGyAIyACyAV_AGyAGyAGyATA66_yAA0N9AlignmentOGGA49_15BodyHyphenationVGA66_yA12_SgGGAVtGGAZGAZGA13_GA19_GG_A23_Qo_A58_GA36_G_ACyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yA86_G_AA017BorderedProminenttR0VQo__A5_yAA07DefaultT5LabelVGtGQo_tGMd);
  List<>.init(content:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyyt07WorkoutB020DeviceConnectionMenuVGQo_Md);
  lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type List<Never, TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingMod, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA6VStackVyAGyAA15ModifiedContentVyAA6HStackVyAGyAKyAKyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameN0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingN0VG_AA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAKyAKyAKyAMyAGyAZ_AxZtGGA2_GAA011_BackgroundT8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainvT0VQo_tGG_AA7SectionVyAKyAIyAGyAX_AXSgtGGAA013_TraitWritingX0VyAA0C17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAKyAKyAA5GroupVyA9_y07WorkoutB023WorkoutConfigurationRowVGSgGA40_GA37_yAA0c3RowW8TraitKeyVGGGAA05EmptyF0VGSgA68_A68_A32_yA66_A66_AKyAKyAxA022_EnvironmentKeyWritingX0VyAX4CaseOSgGGA40_GGA5_AAE5alert_11isPresented7actionsQrAX_AA7BindingVySbGqd__yXEtAAA4_Rd__lFQOyAKyAKyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yAKyAKyAKyAKyAMyAGyAZ_AKyAKyAKyAXA70_yAA0P9AlignmentOGGA53_15BodyHyphenationVGA70_yA16_SgGGAZtGGA2_GA2_GA17_GA23_GG_A27_Qo_A62_GA40_G_AGyA5_AAEA6_yQrqd__AAA7_Rd__lFQOyA9_yA90_G_AA017BorderedProminentvT0VQo__A9_yAA07DefaultV5LabelVGtGQo_tGGMd);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMd);
  v23 = lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type ToolbarItem<(), DeviceConnectionMenu> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyyt07WorkoutB020DeviceConnectionMenuVGMd);
  v83 = v22;
  v84 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v8;
  v64 = v8;
  View.toolbar<A>(content:)();
  (*(v65 + 8))(v6, v4);
  KeyPath = swift_getKeyPath();
  v26 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGMd) + 36)];
  *v26 = KeyPath;
  *(v26 + 1) = 0x4024000000000000;
  v26[16] = 0;
  v27 = v69;
  static ListSectionSpacing.custom(_:)();
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGA40_yAA0I22SectionSpacingTraitKeyVGGMd) + 36);
  v29 = v66;
  (*(v2 + 16))(&v8[v28], v27, v66);
  v30 = *(v2 + 56);
  v30(&v8[v28], 0, 1, v29);
  v31 = swift_getKeyPath();
  v32 = v68;
  v33 = &v24[*(v68 + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd) + 28);
  (*(v2 + 32))(v33 + v34, v27, v29);
  v30(v33 + v34, 0, 1, v29);
  *v33 = v31;
  static VerticalEdge.Set.all.getter();
  v35 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>();
  v36 = v67;
  v37 = v64;
  View.listRowSeparator(_:edges:)();
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v37, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGA40_yAA0I22SectionSpacingTraitKeyVGGA73_yAA0I14SectionSpacingVSgGGMd);
  v83 = dispatch thunk of ExternalProvider.sourceName.getter();
  v84 = v38;
  v93 = v32;
  v94 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = lazy protocol witness table accessor for type String and conformance String();
  v41 = MEMORY[0x277D837D0];
  v43 = v70;
  v42 = v71;
  View.navigationTitle<A>(_:)();

  (*(v72 + 8))(v36, v42);
  v83 = v42;
  v84 = v41;
  v85 = OpaqueTypeConformance2;
  v86 = v40;
  v72 = v40;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = lazy protocol witness table accessor for type MultilineNavigationItemAdapter and conformance MultilineNavigationItemAdapter();
  v46 = v80;
  v71 = v44;
  View.navigationItemAdaptor<A>(_:)();
  (*(v73 + 8))(v43, v46);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v47 = WorkoutUIBundle.super.isa;
  v105._object = 0xE000000000000000;
  v48.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v48.value._object = 0xEB00000000656C62;
  v49._object = 0x800000020CB9F700;
  v49._countAndFlagsBits = 0xD000000000000012;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v105._countAndFlagsBits = 0;
  v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v48, v47, v50, v105);

  v92 = v51;
  v91 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v83 = v80;
  v84 = &type metadata for MultilineNavigationItemAdapter;
  v85 = v71;
  v86 = v45;
  v73 = swift_getOpaqueTypeConformance2();
  v80 = lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  v52 = v72;
  v53 = v75;
  v54 = v76;
  v55 = v81;
  View.alert<A, B, C>(_:isPresented:actions:message:)();

  (*(v74 + 8))(v55, v53);
  type metadata accessor for WorkoutConfiguration();
  v56 = swift_allocObject();
  v57 = v102;
  v56[7] = v101;
  v56[8] = v57;
  v58 = v104;
  v56[9] = v103;
  v56[10] = v58;
  v59 = v98;
  v56[3] = v97;
  v56[4] = v59;
  v60 = v100;
  v56[5] = v99;
  v56[6] = v60;
  v61 = v96;
  v56[1] = v95;
  v56[2] = v61;
  outlined init with copy of ManagedConfigurationsUpcomingViewiOS(&v95, &v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGAWy0G4Core0gI10DataSourceCSgGGMd);
  v83 = v53;
  v84 = MEMORY[0x277D837D0];
  v85 = v70;
  v86 = MEMORY[0x277CE1428];
  v87 = v73;
  v88 = v52;
  v89 = v80;
  v90 = MEMORY[0x277CE1410];
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance NSObject, MEMORY[0x277D7DA50]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
  v62 = v78;
  View.navigationDestination<A, B>(for:destination:)();

  return (*(v77 + 8))(v54, v62);
}

uint64_t closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v165 = a2;
  v3 = type metadata accessor for PlainButtonStyle();
  v160 = *(v3 - 8);
  v161 = v3;
  MEMORY[0x28223BE20](v3);
  v159 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ButtonRoleVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v155 = &v150 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAOyAA5ColorVSgGGAKtGGAA14_PaddingLayoutVGA4_GAA016_BackgroundStyleN0VyAYGGAA11_ClipEffectVyAA16RoundedRectangleVGGGMd);
  v157 = *(v7 - 8);
  v158 = v7;
  MEMORY[0x28223BE20](v7);
  v156 = &v150 - v8;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGASyAA5ColorVSgGGAOtGGAA14_PaddingLayoutVGA8_GAA011_BackgroundgQ0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainiG0VQo_AA06_TraitpQ0VyAA07ListRowy5TraitO0VGGA26_yAA018ListRowInsetsTraitO0VGGMd);
  MEMORY[0x28223BE20](v172);
  v173 = &v150 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actionsQrAA4TextV_AA7BindingVySbGqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAMyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAMyAMyAMyAMyAA6HStackVyAA05TupleC0VyAA6SpacerV_AMyAMyAMyAhA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGG07WorkoutB015BodyHyphenationVGAYyAA5ColorVSgGGAWtGGAA14_PaddingLayoutVGA14_GAA011_BackgroundmV0VyA7_GGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainoM0VQo_AA06_TraituV0VyAA022ListRowBackgroundTraitT0VGGA32_yAA018ListRowInsetsTraitT0VGG_AUyAcAEANyQrqd__AaORd__lFQOyAQyA5_G_AA017BorderedProminentoM0VQo__AQyAA07DefaultO5LabelVGtGQo_Md);
  v163 = *(v10 - 8);
  v164 = v10;
  MEMORY[0x28223BE20](v10);
  v176 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v175 = &v150 - v13;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAA06_TraithI0VyAA013ListRowInsetskG0VGGMd);
  MEMORY[0x28223BE20](v154);
  v153 = &v150 - v14;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAeA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI4CaseOSgGGAA06_TraitkL0VyAA013ListRowInsetsnJ0VGGGMd);
  v162 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v183 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v182 = &v150 - v17;
  v169 = type metadata accessor for Date();
  v18 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v20 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  MEMORY[0x28223BE20](v21 - 8);
  v181 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v180 = &v150 - v24;
  MEMORY[0x28223BE20](v25);
  v174 = &v150 - v26;
  MEMORY[0x28223BE20](v27);
  v152 = &v150 - v28;
  MEMORY[0x28223BE20](v29);
  v179 = &v150 - v30;
  MEMORY[0x28223BE20](v31);
  v151 = &v150 - v32;
  MEMORY[0x28223BE20](v33);
  v178 = &v150 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v150 - v36;
  MEMORY[0x28223BE20](v38);
  v177 = &v150 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGGMd);
  MEMORY[0x28223BE20](v40 - 8);
  v171 = &v150 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v150 - v43;
  *v44 = static HorizontalAlignment.center.getter();
  *(v44 + 1) = 0;
  v44[16] = 1;
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6HStackVyAIyAKyAKyAA5ImageVAA012_AspectRatioG0VGAA06_FrameG0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingG0VG_AA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonT0Rd__lFQOyAA0V0VyAKyAKyAKyAMyAIyAZ_AxZtGGA2_GAA011_BackgroundT8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainvT0VQo_tGGMd) + 44);
  v170 = v44;
  closure #1 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter(a1, &v44[v45]);
  v166 = *(a1 + 72);
  v46 = dispatch thunk of ManagedConfigurationsViewModel.todayConfigurations.getter();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v47 = WorkoutUIBundle.super.isa;
  v205._object = 0xE000000000000000;
  v48._object = 0x800000020CB9B560;
  v48._countAndFlagsBits = 0xD000000000000012;
  v49.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v49.value._object = 0xEB00000000656C62;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v205._countAndFlagsBits = 0;
  *&v167 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, v205)._countAndFlagsBits;

  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v51 = static ManagedConfigurationsUpcomingViewiOS.dateFormatter;
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v18 + 8))(v20, v169);
  v53 = [v51 stringFromDate_];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  v168 = v37;
  if (v46 >> 62)
  {
    v56 = __CocoaSet.count.getter();
  }

  else
  {
    v56 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v169 = a1;
  if (v56)
  {
    v150._object = &v150;
    MEMORY[0x28223BE20](v56);
    v57 = static HorizontalAlignment.leading.getter();
    LOBYTE(v186) = 1;
    closure #1 in closure #2 in ManagedConfigurationsUpcomingViewiOS.view(for:leadingTitle:subHeadline:)(v55, v202);

    *&v204[55] = v203;
    *&v204[39] = v202[2];
    *&v204[23] = v202[1];
    *&v204[7] = v202[0];
    v58 = v186;
    v186 = v57;
    v187 = 0;
    v188 = v58;
    v189 = *v204;
    *&v192[15] = *(&v203 + 1);
    *v192 = *&v204[48];
    v191 = *&v204[32];
    v190 = *&v204[16];
    v193 = xmmword_20CB7F940;
    v194 = xmmword_20CB7E4D0;
    v195 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCG10Foundation4UUIDVAA15ModifiedContentVyALyAA5GroupVyAA6ButtonVy0eB00eG3RowVGSgGAA21_TraitWritingModifierVyAA04Listn6InsetsO3KeyVGGAXyAA0rn10BackgroundoT0VGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> ForEach<A, B, C>();
    v59 = v168;
    Section<>.init(header:content:)();

    v60 = 0;
  }

  else
  {

    v60 = 1;
    v59 = v168;
  }

  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGMd);
  (*(*(v61 - 8) + 56))(v59, v60, 1, v61);
  _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_0(v59, v177, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  v62 = dispatch thunk of ManagedConfigurationsViewModel.futureConfigurations.getter();
  v63 = WorkoutUIBundle.super.isa;
  v206._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0xD000000000000013;
  v64._object = 0x800000020CB9B580;
  v65.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v65.value._object = 0xEB00000000656C62;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  v206._countAndFlagsBits = 0;
  v150 = NSLocalizedString(_:tableName:bundle:value:comment:)(v64, v65, v63, v66, v206);

  v67 = WorkoutUIBundle.super.isa;
  v207._object = 0xE000000000000000;
  v68._countAndFlagsBits = 0xD000000000000018;
  v68._object = 0x800000020CB9B5A0;
  v69.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v69.value._object = 0xEB00000000656C62;
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  v207._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v68, v69, v67, v70, v207);

  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v71 = swift_allocObject();
  v167 = xmmword_20CB5DA70;
  *(v71 + 16) = xmmword_20CB5DA70;
  v72 = ManagedConfigurationsViewModel.futureDaysCount.getter();
  v73 = MEMORY[0x277D83C10];
  *(v71 + 56) = MEMORY[0x277D83B88];
  *(v71 + 64) = v73;
  *(v71 + 32) = v72;
  static String.localizedStringWithFormat(_:_:)();
  v75 = v74;

  if (v62 >> 62)
  {
    v76 = __CocoaSet.count.getter();
  }

  else
  {
    v76 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = v151;
  if (v76)
  {
    MEMORY[0x28223BE20](v76);
    v78 = static HorizontalAlignment.leading.getter();
    LOBYTE(v186) = 1;
    closure #1 in closure #2 in ManagedConfigurationsUpcomingViewiOS.view(for:leadingTitle:subHeadline:)(v75, v199);

    *(&v201[3] + 7) = v200;
    *(&v201[2] + 7) = v199[2];
    *(&v201[1] + 7) = v199[1];
    *(v201 + 7) = v199[0];
    v79 = v186;
    v186 = v78;
    v187 = 0;
    v188 = v79;
    v189 = v201[0];
    *&v192[15] = *(&v200 + 1);
    *v192 = v201[3];
    v191 = v201[2];
    v190 = v201[1];
    v193 = xmmword_20CB7F940;
    v194 = xmmword_20CB7E4D0;
    v195 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCG10Foundation4UUIDVAA15ModifiedContentVyALyAA5GroupVyAA6ButtonVy0eB00eG3RowVGSgGAA21_TraitWritingModifierVyAA04Listn6InsetsO3KeyVGGAXyAA0rn10BackgroundoT0VGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> ForEach<A, B, C>();
    Section<>.init(header:content:)();

    v80 = 0;
  }

  else
  {

    v80 = 1;
  }

  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGMd);
  (*(*(v81 - 8) + 56))(v77, v80, 1, v81);
  _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_0(v77, v178, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  v151 = dispatch thunk of ManagedConfigurationsViewModel.pastConfigurations.getter();
  v82 = WorkoutUIBundle.super.isa;
  v208._object = 0xE000000000000000;
  v83._countAndFlagsBits = 0xD000000000000015;
  v83._object = 0x800000020CB9B5C0;
  v84.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v84.value._object = 0xEB00000000656C62;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  v208._countAndFlagsBits = 0;
  v150._object = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, v84, v82, v85, v208)._countAndFlagsBits;

  v86 = WorkoutUIBundle.super.isa;
  v209._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0xD00000000000001ALL;
  v87._object = 0x800000020CB9B5E0;
  v88.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v88.value._object = 0xEB00000000656C62;
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  v209._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v87, v88, v86, v89, v209);

  v90 = swift_allocObject();
  *(v90 + 16) = v167;
  v91 = ManagedConfigurationsViewModel.previousDaysCount.getter();
  *(v90 + 56) = MEMORY[0x277D83B88];
  *(v90 + 64) = MEMORY[0x277D83C10];
  *(v90 + 32) = v91;
  static String.localizedStringWithFormat(_:_:)();
  v93 = v92;
  v94 = v151;

  if (v94 >> 62)
  {
    v95 = __CocoaSet.count.getter();
  }

  else
  {
    v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v96 = v152;
  v97 = v169;
  if (v95)
  {
    v166 = &v150;
    MEMORY[0x28223BE20](v95);
    v98 = static HorizontalAlignment.leading.getter();
    LOBYTE(v186) = 1;
    closure #1 in closure #2 in ManagedConfigurationsUpcomingViewiOS.view(for:leadingTitle:subHeadline:)(v93, v196);

    *(&v198[3] + 7) = v197;
    *(&v198[2] + 7) = v196[2];
    *(&v198[1] + 7) = v196[1];
    *(v198 + 7) = v196[0];
    v99 = v186;
    v186 = v98;
    v187 = 0;
    v188 = v99;
    v189 = v198[0];
    *&v192[15] = *(&v197 + 1);
    *v192 = v198[3];
    v191 = v198[2];
    v190 = v198[1];
    v193 = xmmword_20CB7F940;
    v194 = xmmword_20CB7E4D0;
    v195 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AISgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore0E13ConfigurationCG10Foundation4UUIDVAA15ModifiedContentVyALyAA5GroupVyAA6ButtonVy0eB00eG3RowVGSgGAA21_TraitWritingModifierVyAA04Listn6InsetsO3KeyVGGAXyAA0rn10BackgroundoT0VGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>> and conformance <> ForEach<A, B, C>();
    Section<>.init(header:content:)();

    v100 = 0;
  }

  else
  {

    v100 = 1;
  }

  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGMd);
  (*(*(v101 - 8) + 56))(v96, v100, 1, v101);
  _s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGWObTm_0(v96, v179, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  closure #3 in closure #1 in ManagedConfigurationsUpcomingViewiOS.body.getter(v153);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Text.Case?>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
  Section<>.init(footer:content:)();
  v102 = v155;
  static ButtonRole.destructive.getter();
  v103 = type metadata accessor for ButtonRole();
  (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
  v104 = swift_allocObject();
  v105 = v97[7];
  v104[7] = v97[6];
  v104[8] = v105;
  v106 = v97[9];
  v104[9] = v97[8];
  v104[10] = v106;
  v107 = v97[3];
  v104[3] = v97[2];
  v104[4] = v107;
  v108 = v97[5];
  v104[5] = v97[4];
  v104[6] = v108;
  v109 = v97[1];
  v104[1] = *v97;
  v104[2] = v109;
  outlined init with copy of ManagedConfigurationsUpcomingViewiOS(v97, &v186);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGG07WorkoutB015BodyHyphenationVGAMyAA5ColorVSgGGAItGGAA14_PaddingLayoutVGA2_GAA016_BackgroundStyleM0VyAWGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
  v110 = v156;
  Button.init(role:action:label:)();
  v111 = v159;
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, BodyHyphenation>, _EnvironmentKeyWritingModifier<Color?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA6SpacerV_AEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0J9AlignmentOGG07WorkoutB015BodyHyphenationVGAOyAA5ColorVSgGGAKtGGAA14_PaddingLayoutVGA4_GAA016_BackgroundStyleN0VyAYGGAA11_ClipEffectVyAA16RoundedRectangleVGGGMd);
  lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  v112 = v173;
  v113 = v158;
  v114 = v161;
  View.buttonStyle<A>(_:)();
  (*(v160 + 8))(v111, v114);
  (*(v157 + 8))(v110, v113);
  v186 = static Color.clear.getter();
  v115 = AnyView.init<A>(_:)();
  *&v112[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGASyAA5ColorVSgGGAOtGGAA14_PaddingLayoutVGA8_GAA011_BackgroundgQ0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainiG0VQo_AA06_TraitpQ0VyAA07ListRowy5TraitO0VGGMd) + 36)] = v115;
  v116 = &v112[*(v172 + 36)];
  *v116 = xmmword_20CB81050;
  *(v116 + 1) = xmmword_20CB81050;
  v116[32] = 0;
  v117 = WorkoutUIBundle.super.isa;
  v210._object = 0xE000000000000000;
  v118._countAndFlagsBits = 0xD000000000000035;
  v118._object = 0x800000020CB9B600;
  v119.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v119.value._object = 0xEB00000000656C62;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v210._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v118, v119, v117, v120, v210);

  v121 = swift_allocObject();
  *(v121 + 16) = v167;
  v122 = dispatch thunk of ExternalProvider.sourceName.getter();
  v124 = v123;
  *(v121 + 56) = MEMORY[0x277D837D0];
  *(v121 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v121 + 32) = v122;
  *(v121 + 40) = v124;
  v125 = String.init(format:_:)();
  v127 = v126;

  v186 = v125;
  v187 = v127;
  lazy protocol witness table accessor for type String and conformance String();
  v168 = Text.init<A>(_:)();
  v166 = v129;
  *&v167 = v128;
  LOBYTE(v112) = v130;
  v185 = v97[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  v131 = State.projectedValue.getter();
  v161 = &v150;
  MEMORY[0x28223BE20](v131);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonF0Rd__lFQOyAA0H0VyAA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG07WorkoutB015BodyHyphenationVGG_AA017BorderedProminenthF0VQo__AIyAA07DefaultH5LabelVGtGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Button<DefaultButtonLabel>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonF0Rd__lFQOyAA0H0VyAA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGG07WorkoutB015BodyHyphenationVGG_AA017BorderedProminenthF0VQo__AIyAA07DefaultH5LabelVGtGMd);
  v132 = v175;
  v133 = v168;
  v134 = v167;
  v135 = v173;
  View.alert<A>(_:isPresented:actions:)();

  outlined consume of Text.Storage(v133, v134, v112 & 1);

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v135, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGASyAA5ColorVSgGGAOtGGAA14_PaddingLayoutVGA8_GAA011_BackgroundgQ0VyA1_GGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainiG0VQo_AA06_TraitpQ0VyAA07ListRowy5TraitO0VGGA26_yAA018ListRowInsetsTraitO0VGGMd);
  v136 = v171;
  outlined init with copy of VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>(v170, v171, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGGMd);
  v137 = v174;
  outlined init with copy of ListSectionSpacing?(v177, v174, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  outlined init with copy of ListSectionSpacing?(v178, v180, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  outlined init with copy of ListSectionSpacing?(v179, v181, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  v138 = v162;
  v173 = *(v162 + 16);
  (v173)(v183, v182, v184);
  v139 = v163;
  v172 = *(v163 + 16);
  v140 = v132;
  v141 = v164;
  (v172)(v176, v140, v164);
  v142 = v136;
  v143 = v165;
  outlined init with copy of VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>(v142, v165, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGGMd);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGG_AA7SectionVyAGyACyAEyAT_ATSgtGGAA013_TraitWritingV0VyAA21ListRowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAGyAGyAA5GroupVyA5_y07WorkoutB023WorkoutConfigurationRowVGSgGA36_GA33_yAA07ListRowU8TraitKeyVGGGAA05EmptyE0VGSgA64_A64_A28_yA62_A62_AGyAGyAtA022_EnvironmentKeyWritingV0VyAT4CaseOSgGGA36_GGA1_AAE5alert_11isPresented7actionsQrAT_AA7BindingVySbGqd__yXEtAAA0_Rd__lFQOyAGyAGyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yAGyAGyAGyAGyAIyAEyAV_AGyAGyAGyATA66_yAA0N9AlignmentOGGA49_15BodyHyphenationVGA66_yA12_SgGGAVtGGAZGAZGA13_GA19_GG_A23_Qo_A58_GA36_G_AEyA1_AAEA2_yQrqd__AAA3_Rd__lFQOyA5_yA86_G_AA017BorderedProminenttR0VQo__A5_yAA07DefaultT5LabelVGtGQo_tMd);
  outlined init with copy of ListSectionSpacing?(v137, v143 + v144[12], &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  outlined init with copy of ListSectionSpacing?(v180, v143 + v144[16], &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  outlined init with copy of ListSectionSpacing?(v181, v143 + v144[20], &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  v145 = v184;
  (v173)(v143 + v144[24], v183, v184);
  v146 = v176;
  (v172)(v143 + v144[28], v176, v141);
  v147 = *(v139 + 8);
  v147(v175, v141);
  v148 = *(v138 + 8);
  v148(v182, v145);
  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v179, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v178, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v177, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v170, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGGMd);
  v147(v146, v141);
  v148(v183, v184);
  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v181, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v180, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  outlined destroy of Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?(v174, &_s7SwiftUI7SectionVyAA15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AKSgtGGAA21_TraitWritingModifierVyAA013ListRowInsetsJ3KeyVGGAA7ForEachVySay11WorkoutCore0S13ConfigurationCG10Foundation4UUIDVAEyAEyAA5GroupVyAA6ButtonVy0sB00suN0VGSgGASGAPyAA0mn10BackgroundjP0VGGGAA05EmptyH0VGSgMd);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>>(v171, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameL0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingL0VG_AA0E0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA0T0VyAGyAGyAGyAIyAEyAV_AtVtGGAZGAA011_BackgroundR8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlaintR0VQo_tGGMd);
}