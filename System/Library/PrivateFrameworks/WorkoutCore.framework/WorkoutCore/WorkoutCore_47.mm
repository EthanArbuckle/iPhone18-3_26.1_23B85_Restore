void IntervalWorkoutTracker.delegate.modify(uint64_t a1, char a2)
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

uint64_t key path setter for IntervalWorkoutTracker.progressDelegate : IntervalWorkoutTracker(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR___WOIntervalWorkoutTracker_progressDelegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *(v4 + 8) = v3;
  swift_unknownObjectWeakAssign();
  IntervalWorkoutTracker.progressDelegate.didset(Strong);
  return swift_unknownObjectRelease();
}

uint64_t IntervalWorkoutTracker.progressDelegate.didset(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      if (one-time initialization token for intervalWorkout != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      __swift_project_value_buffer(v1, static WOLog.intervalWorkout);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_20AEA4000, v2, v3, "Reset existing progress delegate.", v4, 2u);
        MEMORY[0x20F2E9420](v4, -1, -1);
      }
    }
  }

  v5 = IntervalWorkoutTracker.getStepState()();
  v7 = v6;
  if (v5)
  {

    IntervalWorkoutTracker.notifyProgressDelegateOfUpdate(step:nextStep:)(v8, v7);
  }
}

uint64_t IntervalWorkoutTracker.progressDelegate.getter()
{
  v1 = v0 + OBJC_IVAR___WOIntervalWorkoutTracker_progressDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t IntervalWorkoutTracker.progressDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___WOIntervalWorkoutTracker_progressDelegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  IntervalWorkoutTracker.progressDelegate.didset(Strong);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void (*IntervalWorkoutTracker.progressDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WOIntervalWorkoutTracker_progressDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return IntervalWorkoutTracker.progressDelegate.modify;
}

void IntervalWorkoutTracker.progressDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 24);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40) + *(*a1 + 48);
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v6 + 8) = v5;
  swift_unknownObjectWeakAssign();
  v9 = v3[5];
  if (a2)
  {
    swift_unknownObjectRetain();
    IntervalWorkoutTracker.progressDelegate.didset(Strong);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v10 = *v4;
  }

  else
  {
    IntervalWorkoutTracker.progressDelegate.didset(Strong);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  free(v3);
}

uint64_t IntervalWorkoutTracker.updateProgressDelegate(_:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3 && a1)
  {
    v4 = v3;
    v5 = v1 + OBJC_IVAR___WOIntervalWorkoutTracker_progressDelegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v7 = *(v5 + 8);
    *(v5 + 8) = v4;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRetain_n();
    IntervalWorkoutTracker.progressDelegate.didset(Strong);
    swift_unknownObjectRelease_n();
    return swift_unknownObjectRelease();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double IntervalWorkoutTracker.swimDistanceRoundingThresholdDistance.getter()
{
  v1 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t IntervalWorkoutTracker.swimDistanceRoundingThresholdDistance.setter(double a1)
{
  v3 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *IntervalWorkoutTracker.init(configuration:builder:fallbackDataProvider:powerAccumulator:swimmingAccumulator:)(char *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker] = 0;
  v5[OBJC_IVAR___WOIntervalWorkoutTracker_firstActivityStarted] = 0;
  v11 = &v5[OBJC_IVAR___WOIntervalWorkoutTracker_lastNotifiedKeyPath];
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *v11 = 0;
  v11[24] = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___WOIntervalWorkoutTracker_progressDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = MEMORY[0x20F2E6C00](0xD000000000000025, 0x800000020B46C0D0);
  [v13 doubleForKey_];
  v16 = v15;

  *&v6[v12] = v16;
  *&v6[OBJC_IVAR___WOIntervalWorkoutTracker_configuration] = a1;
  *&v6[OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider] = a3;
  v49 = 0uLL;
  v50 = 0;
  v17 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode;
  v18 = *&a1[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode];
  v19 = type metadata accessor for IntervalWorkoutProgressionData();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = a1;
  swift_unknownObjectRetain();
  v23 = IntervalWorkoutProgressionData.init(role:activityMoveMode:)(&v49, v18);
  v24 = OBJC_IVAR___WOIntervalWorkoutTracker_previousData;
  *&v6[OBJC_IVAR___WOIntervalWorkoutTracker_previousData] = v23;
  v25 = a2;
  v26 = LiveWorkoutConfiguration.currentActivityType.getter();
  *&v49 = v25;
  *(&v49 + 1) = v26;
  v50 = a4;
  v27 = *&a1[v17];
  v28 = *(v19 + 48);
  v29 = *(v19 + 52);
  swift_allocObject();
  v30 = a4;
  *&v6[OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData] = IntervalWorkoutProgressionData.init(role:activityMoveMode:)(&v49, v27);
  [objc_opt_self() fakeValueForDurationInPreviousIntervals];
  if (v31 <= 0.0)
  {
    v6[OBJC_IVAR___WOIntervalWorkoutTracker_isFakingData] = 0;
  }

  else
  {
    v32 = v31;
    v6[OBJC_IVAR___WOIntervalWorkoutTracker_isFakingData] = 1;
    if (one-time initialization token for intervalWorkout != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static WOLog.intervalWorkout);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_20AEA4000, v34, v35, "NOTE: WE ARE FAKING INTERVAL DATA.", v36, 2u);
      MEMORY[0x20F2E9420](v36, -1, -1);
    }

    v37 = *&v6[v24];
    swift_beginAccess();
    v37[12] = v32;
    v38 = *(v37 + 2);

    if (v38)
    {
      v39 = v38;
      SegmentPaceAccumulator.updateDuration(_:)(v32);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v40 = *(v37 + 9);
      ObjectType = swift_getObjectType();
      (*(v40 + 8))(3, ObjectType, v40);
      swift_unknownObjectRelease();
    }
  }

  *&v6[OBJC_IVAR___WOIntervalWorkoutTracker_swimmingAccumulator] = a5;
  v48.receiver = v6;
  v48.super_class = type metadata accessor for IntervalWorkoutTracker();
  v42 = objc_msgSendSuper2(&v48, sel_init);

  swift_unknownObjectRelease();
  v43 = *&v42[OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData];
  swift_beginAccess();
  *(v43 + 72) = &protocol witness table for IntervalWorkoutTracker;
  swift_unknownObjectWeakAssign();
  v44 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
  swift_beginAccess();
  v45 = *&v42[v44];
  if (v45 == 0.0)
  {
    v45 = 2.0;
  }

  *&v42[v44] = v45;
  return v42;
}

void IntervalWorkoutTracker.updateZoneTracker(distanceUnit:metadataSavingDelegate:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  if (*(v1 + v4))
  {
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v5 = *(v1 + v4);
    if (v5)
    {
      v6 = v5 + OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate;
      swift_beginAccess();
      *(v6 + 8) = 0;
      swift_unknownObjectWeakAssign();
      v7 = *(v2 + v4);
      if (v7)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v9 = Strong;
          v10 = v7;
          v11 = MEMORY[0x20F2E6C00](0xD00000000000002ELL, 0x800000020B461640);
          [v9 removeMetadata:v11 forceTopLevel:1];

          swift_unknownObjectRelease();
        }
      }
    }
  }

  v12 = *(v2 + v4);
  *(v2 + v4) = 0;

  if (one-time initialization token for intervalWorkout != -1)
  {
    swift_once();
  }

  v28 = v4;
  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static WOLog.intervalWorkout);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20AEA4000, v13, v14, "Creating zone tracker for intervals", v15, 2u);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  v16 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_configuration);
  v17 = LiveWorkoutConfiguration.currentActivityType.getter();
  v27 = v2;
  v18 = LiveWorkoutConfiguration.currentTargetZones.getter();
  v31 = type metadata accessor for ZoneTracker();
  v19 = objc_allocWithZone(v31);
  swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_currentDistance] = 0;
  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_currentDuration] = 0;
  v20 = OBJC_IVAR___NLWorkoutZoneTracker_lastPresentedAlertsByType;
  v30 = a1;
  swift_unknownObjectRetain();
  *&v19[v20] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore0D9AlertZoneCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_activityType] = v17;
  v21 = v17;
  v22 = specialized static ZoneTracker.targetZoneDictionary(from:)(v18);

  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates] = v22;
  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit] = v30;
  v19[OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts] = 1;
  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts] = 0x402E000000000000;
  *&v19[OBJC_IVAR___NLWorkoutZoneTracker_alertsHoldoffTime] = 0x404E000000000000;
  swift_unknownObjectWeakAssign();
  v32.receiver = v19;
  v32.super_class = v31;
  v23 = v30;
  v24 = objc_msgSendSuper2(&v32, sel_init);

  swift_unknownObjectRelease();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v25 = &v24[OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate];
  swift_beginAccess();
  *(v25 + 1) = &protocol witness table for IntervalWorkoutTracker;
  swift_unknownObjectWeakAssign();
  v26 = *(v27 + v28);
  *(v27 + v28) = v24;
}

void IntervalWorkoutTracker.beginFirstActivity(date:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for intervalWorkout != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.intervalWorkout);
  (*(v5 + 16))(v8, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v45[1] = a1;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v49 = v14;
    *v13 = 136315138;
    lazy protocol witness table accessor for type Date and conformance Date();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v49);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20AEA4000, v10, v11, "Beginning first activity at: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_8(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v19 = *(*&v2[OBJC_IVAR___WOIntervalWorkoutTracker_configuration] + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    isa = v19;
    static Published.subscript.getter();

    if (v51 == 1)
    {

      return;
    }

    v45[0] = isa;
    v22 = *(&v49 + 1);
    v21 = v49;
    v23 = v50;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v24 = v49;
    v49 = __PAIR128__(v22, v21);
    v50 = v23;
    v25 = IntervalWorkout.stepForKeyPath(_:)(&v49);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v21 & 0x8000000000000000) != 0 || (v22 & 0x8000000000000000) != 0 || v23 < 0 || ((v26 = v49, v27 = IntervalWorkout.blocks.getter(), v27 >> 62) ? (isa = v27, v28 = __CocoaSet.count.getter()) : (v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v21 >= v28))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v29 = IntervalWorkout.blocks.getter();
    if ((v29 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v21, v29);
    }

    else
    {
      if (v21 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_39;
      }

      v30 = *(v29 + 8 * v21 + 32);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v31 = v49;
    v32 = type metadata accessor for WorkoutAlertInterval();
    v33 = objc_allocWithZone(v32);
    v34 = &v33[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep];
    *v34 = 0u;
    *(v34 + 1) = 0u;
    *(v34 + 25) = 0u;
    *&v33[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep] = v25;
    v35 = &v33[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_repetitionCounter];
    *v35 = v22;
    *(v35 + 1) = v31;
    v48.receiver = v33;
    v48.super_class = v32;

    v28 = objc_msgSendSuper2(&v48, sel_init);
    [(objc_class *)v28 setType:16];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong alertSource:v2 didTriggerAlert:v28];
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    v37 = swift_unknownObjectWeakLoadStrong();
    if (!v37)
    {

LABEL_34:

      return;
    }

    v2 = v37;
    isa = Date._bridgeToObjectiveC()().super.isa;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v38 = v49;
    *&v49 = v21;
    *(&v49 + 1) = v22;
    v50 = v23;
    v53.block = &v49;
    v52 = IntervalWorkout.stepIndex(for:)(v53);
    is_nil = v52.is_nil;

    if (is_nil)
    {
      v21 = 0;
    }

    else
    {
      v21 = Int._bridgeToObjectiveC()().super.super.isa;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v26 = v49;
    if (!IntervalWorkout.isValid.getter())
    {
LABEL_32:
      v43 = 0;
LABEL_33:

      [v2 didBeginNewStepWithDate:isa stepIndex:v21 stepCount:v43];
      swift_unknownObjectRelease();
      goto LABEL_34;
    }

    if (one-time initialization token for InitialState == -1)
    {
LABEL_27:
      v41 = static IntervalWorkoutKeyPath.InitialState;
      v42 = qword_27C729E28;
      v43 = 1;
      while (1)
      {
        v47 = v42;
        v46 = v41;
        v40.value.block = &v46;
        v40 = IntervalWorkout.nextKeyPath(currentKeyPath:)(v40.value);
        if (v51)
        {
          goto LABEL_33;
        }

        v41 = v49;
        v42 = v50;
        if (__OFADD__(v43++, 1))
        {
          __break(1u);
          goto LABEL_32;
        }
      }
    }

LABEL_39:
    swift_once();
    goto LABEL_27;
  }
}

void IntervalWorkoutTracker.updateStepData(dataProvider:metricType:)(void *a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 12:
    case 13:
    case 14:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
      return;
    case 1:
      v4 = v2;
      v5 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_configuration);
      v6 = LiveWorkoutConfiguration.currentActivityType.getter();
      if ([v6 effectiveTypeIdentifier] == 46)
      {
        v7 = [v6 swimmingLocationType];

        if (v7 == 1)
        {

          IntervalWorkoutTracker.setPoolSwimmingDistance(dataProvider:)(a1);
          return;
        }
      }

      else
      {
      }

      [objc_msgSend(a1 distanceProvider)];
      v43 = v42;
      swift_unknownObjectRelease();
      v44 = v4;
      v45 = *(v4 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      v46 = *(v44 + OBJC_IVAR___WOIntervalWorkoutTracker_previousData);
      swift_beginAccess();
      if (v43 - *(v46 + 88) < 0.0)
      {
        v47 = 0.0;
      }

      else
      {
        v47 = v43 - *(v46 + 88);
      }

      swift_beginAccess();
      *(v45 + 88) = v47;
      v48 = *(v45 + 16);
      if (v48)
      {
        swift_beginAccess();
        v49 = *(v45 + 96);
        v50 = v48;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v47, v49);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v51 = *(v45 + 72);
        ObjectType = swift_getObjectType();
        (*(v51 + 8))(1, ObjectType, v51);
        goto LABEL_43;
      }

      return;
    case 2:
      [objc_msgSend(a1 energyBurnProvider)];
      v22 = v21;
      swift_unknownObjectRelease();
      v23 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      v24 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_previousData);
      swift_beginAccess();
      if (v22 - *(v24 + 104) < 0.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v22 - *(v24 + 104);
      }

      swift_beginAccess();
      *(v23 + 104) = v25;
      v57[3] = &type metadata for WorkoutFeatures;
      v57[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      LOBYTE(v57[0]) = 3;
      v26 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0Tm_8(v57);
      if (v26)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v27 = *(v23 + 72);
          v28 = swift_getObjectType();
          (*(v27 + 8))(2, v28, v27);
          goto LABEL_43;
        }
      }

      return;
    case 3:
      [objc_msgSend(a1 elapsedTimeProvider)];
      v30 = v29;
      swift_unknownObjectRelease();
      v31 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      v32 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_previousData);
      swift_beginAccess();
      if (v30 - *(v32 + 96) < 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v30 - *(v32 + 96);
      }

      swift_beginAccess();
      *(v31 + 96) = v33;
      v34 = *(v31 + 16);
      if (v34)
      {
        v35 = v34;
        SegmentPaceAccumulator.updateDuration(_:)(v33);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = *(v31 + 72);
        v37 = swift_getObjectType();
        (*(v36 + 8))(3, v37, v36);
        goto LABEL_43;
      }

      return;
    case 4:
      v38 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      v39 = [a1 paceProvider];
      if (v39)
      {
        [v39 currentPaceInMetersPerSecond];
        v41 = v40;
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0;
      }

      swift_beginAccess();
      *(v38 + 120) = v41;
      IntervalWorkoutProgressionData.currentPace.didset();
      return;
    case 11:
      v17 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      v18 = [a1 powerProvider];
      if (v18)
      {
        [v18 instantaneousPower];
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0;
      }

      swift_beginAccess();
      *(v17 + 144) = v20;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v55 = *(v17 + 72);
        v56 = swift_getObjectType();
        (*(v55 + 8))(11, v56, v55);
        goto LABEL_43;
      }

      return;
    case 15:
      v13 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      v14 = [a1 cadenceProvider];
      if (v14)
      {
        [v14 currentCadence];
        v16 = v15;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
      }

      swift_beginAccess();
      *(v13 + 160) = v16;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v53 = *(v13 + 72);
        v54 = swift_getObjectType();
        (*(v53 + 8))(15, v54, v53);
        goto LABEL_43;
      }

      return;
    case 50:
      v8 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      [objc_msgSend(a1 intervalCadenceProvider)];
      v10 = v9;
      swift_unknownObjectRelease();
      swift_beginAccess();
      *(v8 + 152) = v10;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v8 + 72);
        v12 = swift_getObjectType();
        (*(v11 + 8))(16, v12, v11);
LABEL_43:
        swift_unknownObjectRelease();
      }

      return;
    default:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
  }
}

void IntervalWorkoutTracker.setPoolSwimmingDistance(dataProvider:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v67[-v5];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v67[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v67[-v13];
  [objc_msgSend(a1 distanceProvider)];
  v16 = v15;
  swift_unknownObjectRelease();
  v17 = *&v1[OBJC_IVAR___WOIntervalWorkoutTracker_previousData];
  swift_beginAccess();
  if (v16 - *(v17 + 88) < 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v16 - *(v17 + 88);
  }

  v19 = *&v1[OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData];
  v20 = v19 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
  swift_beginAccess();
  if (*(v20 + 8) != 1)
  {
    if (one-time initialization token for intervalWorkout != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static WOLog.intervalWorkout);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20AEA4000, v29, v30, "Not updating pool swimming distance or duration. distanceGoalAchievedDuration is set", v31, 2u);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }

    return;
  }

  v21 = [*&v1[OBJC_IVAR___WOIntervalWorkoutTracker_swimmingAccumulator] lastSwimData];
  if (!v21)
  {
LABEL_16:
    swift_beginAccess();
    *(v19 + 88) = v18;
    v32 = *(v19 + 16);
    if (v32)
    {
      swift_beginAccess();
      v33 = *(v19 + 96);
      v34 = v32;
      SegmentPaceAccumulator.updateDistance(_:duration:)(v18, v33);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v35 = *(v19 + 72);
      ObjectType = swift_getObjectType();
      (*(v35 + 8))(1, ObjectType, v35);
      swift_unknownObjectRelease();
    }

    return;
  }

  v22 = v21;
  v23 = v1;
  v24 = COERCE_DOUBLE(IntervalWorkoutTracker.getPoolSwimmingDistanceGoal()());
  if ((v25 & 1) != 0 || (v26 = v24, v24 <= 0.0))
  {

    goto LABEL_16;
  }

  v72 = v24;
  swift_beginAccess();
  if (*(v19 + 88) >= v18)
  {
    v37 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
    swift_beginAccess();
    (*(v8 + 16))(v14, v19 + v37, v7);
  }

  else
  {
    v27 = [v22 distanceTimestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  IntervalWorkoutProgressionData.setDistanceAchievedDurationForTimeAndDistanceGoal(distanceGoal:newDistance:newDistanceTimestamp:)(v26, v18);
  v38 = *(v19 + 88);
  if (v18 <= v38 && *(v20 + 8) == 1)
  {
    v39 = OBJC_IVAR___WOIntervalWorkoutTracker_swimDistanceRoundingThresholdDistance;
    swift_beginAccess();
    if (v26 - v18 < *&v23[v39])
    {
      v69 = v39;
      if (one-time initialization token for intervalWorkout != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      v71 = __swift_project_value_buffer(v40, static WOLog.intervalWorkout);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v70 = v41;
        v44 = v43;
        *v43 = 0;
        _os_log_impl(&dword_20AEA4000, v70, v42, "Swimming distance update missing. Rounding to the nearest distance goal.", v43, 2u);
        v45 = v44;
        v41 = v70;
        MEMORY[0x20F2E9420](v45, -1, -1);
      }

      v46 = v23;
      v70 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v71 = v46;

      v68 = v47;
      v48 = v47;
      v49 = v70;
      if (os_log_type_enabled(v70, v48))
      {
        v50 = swift_slowAlloc();
        *v50 = 134218496;
        *(v50 + 4) = v18;
        *(v50 + 12) = 2048;
        *(v50 + 14) = v72;
        *(v50 + 22) = 2048;
        *(v50 + 24) = *&v23[v69];
        _os_log_impl(&dword_20AEA4000, v49, v68, "Current step distance: %f Distance goal: %f. swimDistanceRoundingThresholdDistance: %f", v50, 0x20u);
        MEMORY[0x20F2E9420](v50, -1, -1);
      }

      *(v19 + 88) = v72;
      v51 = *(v19 + 16);
      if (v51)
      {
        swift_beginAccess();
        v52 = *(v19 + 96);
        v53 = v51;
        SegmentPaceAccumulator.updateDistance(_:duration:)(v26, v52);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v54 = *(v19 + 72);
        v55 = swift_getObjectType();
        (*(v54 + 8))(1, v55, v54);
        swift_unknownObjectRelease();
      }

      static Date.now.getter();
      (*(v8 + 56))(v6, 0, 1, v7);
      v56 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
      swift_beginAccess();
      outlined assign with take of Date?(v6, v19 + v56);
      swift_endAccess();
      [v71 duration];
      *v20 = v57;
      *(v20 + 8) = 0;
      if (v57 > 0.0)
      {
        v58 = v57;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v59 = *(v19 + 72);
          v60 = swift_getObjectType();
          (*(v59 + 16))(v60, v59, v58);
          swift_unknownObjectRelease();
        }
      }

      (*(v8 + 8))(v14, v7);
      return;
    }

LABEL_44:
    (*(v8 + 8))(v14, v7);

    return;
  }

  if (v38 >= v18)
  {
    goto LABEL_44;
  }

  *(v19 + 88) = v18;
  v61 = *(v19 + 16);
  if (v61)
  {
    swift_beginAccess();
    v62 = *(v19 + 96);
    v63 = v61;
    SegmentPaceAccumulator.updateDistance(_:duration:)(v18, v62);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v64 = *(v19 + 72);
    v65 = swift_getObjectType();
    (*(v64 + 8))(1, v65, v64);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v8 + 32))(v12, v14, v7);
  v66 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceTimestamp;
  swift_beginAccess();
  (*(v8 + 40))(v19 + v66, v12, v7);
  swift_endAccess();
}

uint64_t IntervalWorkoutTracker.getPoolSwimmingDistanceGoal()()
{
  v0 = IntervalWorkoutTracker.getStepState()();

  if (!v0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ([v8 goalTypeIdentifier] == 2)
  {
    v1 = [v8 requiredDistance];

    if (v1)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v2 = [v8 requiredDistance];

      if (v2)
      {
LABEL_9:
        v4 = [objc_opt_self() meterUnit];
        [v2 doubleValueForUnit_];
        v6 = v5;

        return v6;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = [v8 goalTypeIdentifier];

  if (v3 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v2 = [v8 value];

    if (v2)
    {
      goto LABEL_9;
    }
  }

LABEL_10:

  return 0;
}

uint64_t IntervalWorkoutTracker.notifyProgressDelegateOfUpdate(step:nextStep:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR___WOIntervalWorkoutTracker_progressDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    if (*(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_isFakingData) == 1)
    {
      v8 = objc_opt_self();
      [v8 fakeValueForDistance];
      v31 = v9;
      [v8 fakeValueForAveragePace];
      v11 = v10;
      [v8 fakeValueForCurrentPace];
      v13 = v12;
      [v8 fakeValueForAveragePower];
      v15 = v14;
      [v8 fakeValueForInstantaneousPower];
      v17 = v16;
      [v8 fakeValueForAverageCadence];
      v19 = v18;
      [v8 fakeValueForInstantaneousCadence];
      v21 = v20;
      [v8 fakeValueForActiveCalories];
      v23 = v22;
      v24 = 0;
      v25 = 1;
    }

    else
    {
      v26 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
      swift_beginAccess();
      v31 = v26[11];
      swift_beginAccess();
      v11 = v26[14];
      swift_beginAccess();
      v13 = v26[15];
      swift_beginAccess();
      v15 = v26[17];
      swift_beginAccess();
      v17 = v26[18];
      swift_beginAccess();
      v19 = v26[19];
      swift_beginAccess();
      v21 = v26[20];
      swift_beginAccess();
      v23 = v26[13];
      v27 = v26 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
      swift_beginAccess();
      v24 = *v27;
      v25 = v27[8];
    }

    v28 = *(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
    swift_beginAccess();
    v29 = *(v28 + 96);
    ObjectType = swift_getObjectType();
    v32[0] = v31;
    v32[1] = v29;
    v32[2] = v11;
    v32[3] = v13;
    v32[4] = v15;
    v32[5] = v17;
    v32[6] = v19;
    v32[7] = v21;
    v32[8] = v23;
    v32[9] = v24;
    v33 = v25;
    (*(v7 + 8))(a1, v32, a2, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t IntervalWorkoutTracker.getStepState()()
{
  v1 = *(*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_configuration) + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    static Published.subscript.getter();

    if (v18 == 1)
    {

      return 0;
    }

    else
    {
      v5 = v16;
      v4 = v17;
      v6 = v15;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v7 = v15;
      v8 = IntervalWorkout.stepForKeyPath(_:)(&v15);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v9 = v15;
      v14[0] = v6;
      v14[1] = v5;
      v14[2] = v4;
      v19.block = v14;
      IntervalWorkout.nextKeyPath(currentKeyPath:)(v19);

      if ((v18 & 1) == 0)
      {
        v10 = v15;
        v11 = v16;
        v12 = v17;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v13 = v15;
        v15 = v10;
        v16 = v11;
        v17 = v12;
        IntervalWorkout.stepForKeyPath(_:)(&v15);
      }

      return v8;
    }
  }

  return result;
}

Swift::Void __swiftcall IntervalWorkoutTracker.moveToNextStepManually()()
{
  v1 = *(*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_configuration) + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    static Published.subscript.getter();

    if (v6 != 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v3 = v5[0];
      IntervalWorkout.stepForKeyPath(_:)(v5);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v4 = v5[0];
      IntervalWorkoutTracker.moveToNextStep(successfulPreviousStep:)([v5[0] goalTypeIdentifier] == 0);
    }
  }
}

void IntervalWorkoutTracker.moveToNextStep(successfulPreviousStep:)(int a1)
{
  v181 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v162 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v162 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v162 - v15;
  v17 = *&v1[OBJC_IVAR___WOIntervalWorkoutTracker_configuration];
  v18 = *(v17 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    return;
  }

  v176 = v5;
  v174 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v18;
  static Published.subscript.getter();

  if (v192 == 1)
  {

    return;
  }

  v170 = v19;
  v180 = v16;
  v177 = v7;
  v182 = v6;
  v20 = *(&v190 + 1);
  v21 = v190;
  v22 = v191;
  if (one-time initialization token for intervalWorkout != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static WOLog.intervalWorkout);
  v25 = v1;
  v179 = v24;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v183 = v25;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v178 = v20;
    v30 = v29;
    v31 = swift_slowAlloc();
    *&v190 = v31;
    *v30 = 136315394;
    v32 = *&v183[OBJC_IVAR___WOIntervalWorkoutTracker_previousData];
    v33 = IntervalWorkoutProgressionData.description.getter();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v190);
    v175 = v17;
    v36 = v21;
    v37 = v22;
    v38 = v35;

    *(v30 + 4) = v38;
    *(v30 + 12) = 2080;
    v39 = *&v183[OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData];
    v40 = IntervalWorkoutProgressionData.description.getter();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v190);

    *(v30 + 14) = v42;
    v22 = v37;
    v21 = v36;
    _os_log_impl(&dword_20AEA4000, v26, v27, "moving to next step:\n previousData: %s\n thisStepData: %s", v30, 0x16u);
    swift_arrayDestroy();
    v43 = v31;
    v25 = v183;
    MEMORY[0x20F2E9420](v43, -1, -1);
    v44 = v30;
    v20 = v178;
    MEMORY[0x20F2E9420](v44, -1, -1);
  }

  v178 = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v45 = v190;
  *&v190 = v21;
  *(&v190 + 1) = v20;
  v191 = v22;
  v46 = IntervalWorkout.stepForKeyPath(_:)(&v190);

  v47 = *&v25[OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData];
  v48 = *&v25[OBJC_IVAR___WOIntervalWorkoutTracker_previousData];
  v49 = LiveWorkoutConfiguration.currentActivityType.getter();
  v50 = [v49 lapLength];

  if (v50)
  {
    v51 = [objc_opt_self() meterUnit];
    [v50 doubleValueForUnit_];
    v53 = v52;

    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  v55 = v182;
  v56 = v177;
  v57 = v180;
  v168 = v48;
  v169 = v46;
  IntervalWorkoutProgressionData.rollDataIntoAccumulated(accumulated:with:lapLength:)(&v190, v180, v48, v46, v54, v50 == 0);
  v58 = v190;
  v60 = v191;
  v59 = v192;
  v171 = v193;
  LODWORD(v172) = v194;
  v165 = *(v56 + 16);
  v166 = v56 + 16;
  v165(v178, v57, v55);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  v63 = os_log_type_enabled(v61, v62);
  v173 = v60;
  v175 = v59;
  v167 = v47;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v163 = v62;
    v65 = v64;
    v164 = swift_slowAlloc();
    *&v186 = v164;
    *v65 = 136315394;

    v66 = v61;
    v162 = WorkoutStep.description.getter();
    v68 = v67;
    *&v190 = 0;
    *(&v190 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45C920);
    Double.write<A>(to:)();
    MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45C940);
    Double.write<A>(to:)();
    v69 = v190;
    *&v190 = v162;
    *(&v190 + 1) = v68;

    MEMORY[0x20F2E6D80](v69, *(&v69 + 1));

    v70 = v177;
    v71 = v182;

    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190, *(&v190 + 1), &v186);

    *(v65 + 4) = v72;
    *(v65 + 12) = 2080;
    lazy protocol witness table accessor for type Date and conformance Date();
    v73 = v178;
    v74 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = v75;
    v77 = *(v70 + 8);
    v77(v73, v71);
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v186);
    v25 = v183;

    *(v65 + 14) = v78;
    _os_log_impl(&dword_20AEA4000, v66, v163, "completed interval: %s, date: %s", v65, 0x16u);
    v79 = v164;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v79, -1, -1);
    MEMORY[0x20F2E9420](v65, -1, -1);
  }

  else
  {

    v77 = *(v56 + 8);
    v77(v178, v55);
  }

  if (LiveWorkoutConfiguration.moveToNextStep()())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v192 & 1) == 0)
    {
      v178 = v77;
      v102 = *(&v190 + 1);
      v101 = v190;
      v103 = v191;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v104 = v190;
      v190 = __PAIR128__(v102, v101);
      v191 = v103;
      isa = IntervalWorkout.stepForKeyPath(_:)(&v190);

      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v179 = v102;
        v109 = v103;
        v110 = isa;
        v111 = v108;
        v112 = swift_slowAlloc();
        *&v186 = v112;
        *v111 = 136315394;

        v113 = WorkoutStep.description.getter();
        v115 = v114;

        v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, &v186);

        *(v111 + 4) = v116;
        *(v111 + 12) = 2080;
        *&v190 = v101;
        *(&v190 + 1) = v179;
        v191 = v109;
        v117 = IntervalWorkoutKeyPath.description.getter();
        v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, &v186);

        *(v111 + 14) = v119;
        _os_log_impl(&dword_20AEA4000, v106, v107, "Moving to next step %s at key path %s.", v111, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v112, -1, -1);
        v120 = v111;
        isa = v110;
        v103 = v109;
        v102 = v179;
        MEMORY[0x20F2E9420](v120, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v121 = v173;

      v122 = v175;

      static Published.subscript.getter();

      if (v101 < 0 || (v102 & 0x8000000000000000) != 0 || v103 < 0 || ((v123 = v190, v124 = IntervalWorkout.blocks.getter(), v124 >> 62) ? (v125 = __CocoaSet.count.getter()) : (v125 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v101 >= v125))
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v126 = IntervalWorkout.blocks.getter();
      if ((v126 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v101, v126);
      }

      else
      {
        if (v101 >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_61;
        }

        v127 = *(v126 + 8 * v101 + 32);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v128 = v190;
      v129 = type metadata accessor for WorkoutAlertInterval();
      v130 = objc_allocWithZone(v129);
      v131 = &v130[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep];
      *v131 = v58;
      *(v131 + 2) = v121;
      *(v131 + 3) = v122;
      *(v131 + 4) = v171;
      v131[40] = v172;
      *&v130[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep] = isa;
      v132 = &v130[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_repetitionCounter];
      *v132 = v102;
      *(v132 + 1) = v128;
      v188.receiver = v130;
      v188.super_class = v129;
      v179 = isa;

      v133 = objc_msgSendSuper2(&v188, sel_init);
      [v133 setType_];
      v134 = v183;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong alertSource:v134 didTriggerAlert:v133];
        swift_unknownObjectRelease();
      }

      v172 = v133;
      swift_beginAccess();
      v136 = swift_unknownObjectWeakLoadStrong();
      if (!v136)
      {
        goto LABEL_51;
      }

      v125 = v136;
      isa = Date._bridgeToObjectiveC()().super.isa;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v137 = v190;
      *&v190 = v101;
      *(&v190 + 1) = v102;
      v191 = v103;
      v196.block = &v190;
      v195 = IntervalWorkout.stepIndex(for:)(v196);
      is_nil = v195.is_nil;

      if (is_nil)
      {
        v122 = 0;
      }

      else
      {
        v122 = Int._bridgeToObjectiveC()().super.super.isa;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v123 = v190;
      if (!IntervalWorkout.isValid.getter())
      {
LABEL_49:
        v142 = 0;
LABEL_50:

        [v125 didBeginNewStepWithDate:isa stepIndex:v122 stepCount:v142];
        swift_unknownObjectRelease();
LABEL_51:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_20B423A90;
        *(inited + 32) = 0xD000000000000018;
        v145 = inited + 32;
        *(inited + 40) = 0x800000020B464730;
        *(inited + 72) = MEMORY[0x277D839B0];
        *(inited + 48) = v181 & 1;
        v146 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        _sSo8NSObjectCSgWOhTm_18(v145, &_sSS_yptMd, &_sSS_yptMR);
        v147 = OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDate;
        v148 = v167;
        swift_beginAccess();
        v149 = v148 + v147;
        v150 = v176;
        outlined init with copy of Date?(v149, v176);
        v151 = v177;
        v152 = v182;
        if ((*(v177 + 48))(v150, 1, v182) == 1)
        {
          _sSo8NSObjectCSgWOhTm_18(v150, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }

        else
        {
          v153 = v174;
          (*(v151 + 32))(v174, v150, v152);
          v192 = v152;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v190);
          v165(boxed_opaque_existential_0, v153, v152);
          outlined init with take of Any(&v190, &v186);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v185 = v146;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v186, 0xD000000000000027, 0x800000020B464750, isUniquelyReferenced_nonNull_native);
          v178(v153, v152);
        }

        v156 = v180;
        v157 = v183;
        swift_beginAccess();
        v158 = swift_unknownObjectWeakLoadStrong();
        if (v158)
        {
          v159 = v158;
          v160 = Date._bridgeToObjectiveC()().super.isa;
          v161 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v159 didMoveToNextStep:v157 date:v160 previousStepMetadata:v161];

          swift_unknownObjectRelease();

          v178(v156, v152);
        }

        else
        {

          v178(v156, v152);
        }

        return;
      }

      if (one-time initialization token for InitialState == -1)
      {
LABEL_44:
        v140 = static IntervalWorkoutKeyPath.InitialState;
        v141 = qword_27C729E28;
        v142 = 1;
        while (1)
        {
          v187 = v141;
          v186 = v140;
          v139.value.block = &v186;
          v139 = IntervalWorkout.nextKeyPath(currentKeyPath:)(v139.value);
          if (v192)
          {
            goto LABEL_50;
          }

          v140 = v190;
          v141 = v191;
          if (__OFADD__(v142++, 1))
          {
            __break(1u);
            goto LABEL_49;
          }
        }
      }

LABEL_61:
      swift_once();
      goto LABEL_44;
    }
  }

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  v82 = os_log_type_enabled(v80, v81);
  v83 = v175;
  if (v82)
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_20AEA4000, v80, v81, "Finished workout.", v84, 2u);
    v85 = v84;
    v25 = v183;
    MEMORY[0x20F2E9420](v85, -1, -1);
  }

  v86 = type metadata accessor for WorkoutAlertInterval();
  v87 = objc_allocWithZone(v86);
  v88 = &v87[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep];
  *v88 = v58;
  *(v88 + 2) = v173;
  *(v88 + 3) = v83;
  *(v88 + 4) = v171;
  v88[40] = v172;
  *&v87[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep] = 0;
  v89 = &v87[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_repetitionCounter];
  *v89 = 0;
  *(v89 + 1) = 0;
  v189.receiver = v87;
  v189.super_class = v86;

  v90 = objc_msgSendSuper2(&v189, sel_init);
  [v90 setType_];
  swift_beginAccess();
  v91 = swift_unknownObjectWeakLoadStrong();
  if (v91)
  {
    [v91 alertSource:v25 didTriggerAlert:v90];
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v92 = swift_unknownObjectWeakLoadStrong();
  if (v92)
  {
    v93 = v92;
    v94 = v168;
    swift_beginAccess();
    [v93 didFinishIntervals_];
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v95 = swift_unknownObjectWeakLoadStrong();
  if (v95)
  {
    v96 = v25;
    v97 = v95;
    v98 = v77;
    v99 = v180;
    v100 = Date._bridgeToObjectiveC()().super.isa;
    [v97 didFinishIntervalWorkout:v96 date:v100];

    swift_unknownObjectRelease();

    v98(v99, v182);
  }

  else
  {

    v77(v180, v182);
  }
}

Swift::Void __swiftcall IntervalWorkoutTracker.recoverState(builder:)(HKLiveWorkoutBuilder builder)
{
  v2 = [(objc_class *)builder.super.super.isa workoutActivities];
  type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized IntervalWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(v3);
}

id IntervalWorkoutTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IntervalWorkoutTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntervalWorkoutTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IntervalWorkoutTracker.dataProvider(_:didUpdate:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = IntervalWorkoutTracker.getStepState()();
  v8 = v7;
  if (v6)
  {
    v9 = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10 = v30;
    IntervalWorkoutTracker.updateStepData(dataProvider:metricType:)(a1, a2);
    IntervalWorkoutTracker.notifyProgressDelegateOfUpdate(step:nextStep:)(v9, v8);
    v11 = *&v2[OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData];
    v12 = *&v2[OBJC_IVAR___WOIntervalWorkoutTracker_configuration];
    v13 = LiveWorkoutConfiguration.currentActivityType.getter();
    if ([v13 effectiveTypeIdentifier] == 46)
    {
      v14 = [v13 swimmingLocationType];

      v15 = v14 == 1;
    }

    else
    {

      v15 = 0;
    }

    if (IntervalWorkoutProgressionData.achievedGoal(goal:checkDistanceIsWithinRange:)(v30, v15))
    {
      IntervalWorkoutTracker.moveToNextStep(successfulPreviousStep:)(1);
    }

    if (one-time initialization token for intervalWorkout != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.intervalWorkout);
    v18 = v3;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315394;
      v23 = IntervalWorkoutProgressionData.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v30);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = *&v18[OBJC_IVAR___WOIntervalWorkoutTracker_previousData];
      v27 = IntervalWorkoutProgressionData.description.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v30);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_20AEA4000, v19, v20, "Step: %s Prev: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v22, -1, -1);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }
  }

  else
  {
  }
}

id IntervalWorkoutTracker.didUpdateMetricType(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR___WOIntervalWorkoutTracker_zoneTracker;
  swift_beginAccess();
  result = *(v1 + v3);
  if (result)
  {
    return [result dataProvider:v1 didUpdate:a1];
  }

  return result;
}

Swift::Void __swiftcall IntervalWorkoutTracker.didSetDistanceGoalAchievedDuration(_:)(Swift::Double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = 0xD00000000000002BLL;
  v3 = inited + 32;
  *(inited + 40) = 0x800000020B464780;
  *(inited + 72) = MEMORY[0x277D839F8];
  *(inited + 48) = a1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _sSo8NSObjectCSgWOhTm_18(v3, &_sSS_yptMd, &_sSS_yptMR);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 insertMetadataInCurrentActivityWithMetadata_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Double __swiftcall IntervalWorkoutTracker.zoneTrackerAlertHoldoffTime(for:)(WorkoutCore::TargetZone::ZoneType a1)
{
  v2 = *(*(v1 + OBJC_IVAR___WOIntervalWorkoutTracker_configuration) + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  v3 = swift_dynamicCastClass();
  result = 60.0;
  if (v3)
  {
    return 10.0;
  }

  return result;
}

double protocol witness for ZoneTrackerDelegate.zoneTrackerAlertHoldoffTime(for:) in conformance IntervalWorkoutTracker()
{
  v1 = *(*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_configuration) + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  v2 = swift_dynamicCastClass();
  result = 60.0;
  if (v2)
  {
    return 10.0;
  }

  return result;
}

void specialized IntervalWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v166 = &v150 - v5;
  v163 = type metadata accessor for Date();
  v6 = *(v163 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v163);
  v151 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v158 = &v150 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v164 = &v150 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v150 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v150 - v17;
  v19 = OBJC_IVAR___WOIntervalWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  v162 = v1;
  *(v1 + v19) = 1;
  if (a1 >> 62)
  {
    v20 = __CocoaSet.count.getter();
    if (!v20)
    {
      return;
    }
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      return;
    }
  }

  type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKSampleType, 0x277CCD8D8);
  v21 = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (!v21)
  {
    return;
  }

  if (v20 < 1)
  {
    __break(1u);
    return;
  }

  v22 = a1;
  v23 = 0;
  v24 = 0;
  v167 = v22 & 0xC000000000000001;
  v168 = v20;
  v165 = (v6 + 56);
  v156 = (v6 + 32);
  v157 = (v6 + 48);
  v160 = (v6 + 8);
  v161 = v21;
  v169 = v22;
  do
  {
    if (v167)
    {
      v26 = MEMORY[0x20F2E7A20](v23);
    }

    else
    {
      v26 = *(v22 + 8 * v23 + 32);
    }

    v27 = v26;
    v28 = [v26 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (v24)
    {
      v29 = v24;
      v30 = [v24 startDate];
      v31 = v164;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = *v156;
      v33 = v166;
      v34 = v31;
      v35 = v163;
      (*v156)(v166, v34, v163);
      (*v165)(v33, 0, 1, v35);
      v32(v16, v33, v35);
    }

    else
    {
      v29 = 0;
      v36 = v166;
      v35 = v163;
      (*v165)(v166, 1, 1, v163);
      static Date.distantPast.getter();
      if ((*v157)(v36, 1, v35) != 1)
      {
        _sSo8NSObjectCSgWOhTm_18(v166, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    v37 = static Date.> infix(_:_:)();
    v38 = *v160;
    (*v160)(v16, v35);
    v159 = v38;
    v38(v18, v35);
    if (v37)
    {

      v24 = v27;
    }

    else
    {

      v24 = v29;
    }

    ++v23;
    v22 = v169;
  }

  while (v168 != v23);
  v39 = 0;
  v157 = OBJC_IVAR___WOIntervalWorkoutTracker_previousData;
  v152 = "stacnceGoalAchievedDate";
  v153 = OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData;
  *&v25 = 138412546;
  v155 = v25;
  *&v25 = 134218752;
  v154 = v25;
  *&v25 = 134217984;
  v150 = v25;
  v40 = v163;
  v41 = v158;
  do
  {
    v164 = v39;
    if (v167)
    {
      v42 = MEMORY[0x20F2E7A20]();
    }

    else
    {
      v42 = *(v22 + 8 * v39 + 32);
    }

    v43 = v42;
    v165 = v24;
    if (one-time initialization token for intervalWorkout != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    v45 = __swift_project_value_buffer(v44, static WOLog.intervalWorkout);
    v46 = v43;
    v166 = v45;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v171[0] = v51;
      *v49 = v155;
      *(v49 + 4) = v46;
      *v50 = v46;
      *(v49 + 12) = 2080;
      v52 = [v46 metadata];
      if (v52)
      {
        v53 = v52;
        v54 = COERCE_DOUBLE(static Dictionary._unconditionallyBridgeFromObjectiveC(_:)());
      }

      else
      {
        v54 = 0.0;
      }

      v170 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
      v55 = Optional.description.getter();
      v57 = v56;

      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v171);

      *(v49 + 14) = v58;
      _os_log_impl(&dword_20AEA4000, v47, v48, "Restoring from activity %@ with metadata %s", v49, 0x16u);
      _sSo8NSObjectCSgWOhTm_18(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v50, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm_8(v51);
      MEMORY[0x20F2E9420](v51, -1, -1);
      MEMORY[0x20F2E9420](v49, -1, -1);

      v40 = v163;
      v41 = v158;
    }

    else
    {
    }

    v59 = [v46 workoutConfiguration];
    [v59 activityType];

    v60 = _HKWorkoutDistanceTypeForActivityType();
    v61 = 0.0;
    v62 = 0.0;
    v24 = v165;
    if (v60)
    {
      v63 = v60;
      v64 = [v46 statisticsForType_];
      if (v64)
      {
        v65 = v64;
        v66 = [v64 sumQuantity];
        if (v66)
        {
          v67 = v66;
          v68 = [objc_opt_self() meterUnit];
          [v67 doubleValueForUnit_];
          v62 = v69;

          v70 = v65;
        }

        else
        {
          v70 = v63;
          v63 = v65;
        }
      }
    }

    v71 = [v46 statisticsForType_];
    if (v71)
    {
      v72 = v71;
      v73 = [v71 sumQuantity];

      if (v73)
      {
        v74 = [objc_opt_self() kilocalorieUnit];
        [v73 doubleValueForUnit_];
        v61 = v75;
      }
    }

    [v46 duration];
    v77 = v76;
    v78 = v46;
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v79, v80))
    {

      if (!v24)
      {
        goto LABEL_64;
      }

      goto LABEL_50;
    }

    v81 = swift_slowAlloc();
    *v81 = v154;
    *(v81 + 4) = v77;
    *(v81 + 12) = 2048;
    *(v81 + 14) = v61;
    *(v81 + 22) = 2048;
    *(v81 + 24) = v62;
    *(v81 + 32) = 1024;
    if (v24)
    {
      type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
      v82 = v78;
      v83 = v24;
      v84 = static NSObject.== infix(_:_:)();

      v41 = v158;
      if (v84)
      {
        v85 = 1;
        goto LABEL_49;
      }
    }

    else
    {
    }

    v85 = 0;
LABEL_49:
    *(v81 + 34) = v85;

    _os_log_impl(&dword_20AEA4000, v79, v80, "Restored data: %fs, %fkCal, %fm. Current: %{BOOL}d", v81, 0x26u);
    MEMORY[0x20F2E9420](v81, -1, -1);

    if (!v24)
    {
      goto LABEL_64;
    }

LABEL_50:
    type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
    v86 = v78;
    v87 = v24;
    v88 = static NSObject.== infix(_:_:)();

    if ((v88 & 1) == 0)
    {
LABEL_64:
      v101 = *(v157 + v162);
      swift_beginAccess();
      v102 = v77 + *(v101 + 96);
      *(v101 + 96) = v102;
      v103 = *(v101 + 16);
      if (v103)
      {
        v104 = v103;
        SegmentPaceAccumulator.updateDuration(_:)(v102);
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v105 = *(v101 + 72);
        ObjectType = swift_getObjectType();
        (*(v105 + 8))(3, ObjectType, v105);
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      *(v101 + 104) = v61 + *(v101 + 104);
      v172 = &type metadata for WorkoutFeatures;
      v173 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      LOBYTE(v171[0]) = 3;
      v107 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0Tm_8(v171);
      if ((v107 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
      {
        v108 = *(v101 + 72);
        v109 = swift_getObjectType();
        (*(v108 + 8))(2, v109, v108);
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      v110 = v62 + *(v101 + 88);
      *(v101 + 88) = v110;
      v111 = *(v101 + 16);
      if (!v111)
      {
        goto LABEL_82;
      }

      v112 = *(v101 + 96);
      v113 = *&v111[OBJC_IVAR___WOSegmentPaceAccumulator_distance];
      if (v113 < v110)
      {
        *&v111[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = v110;
      }

      if (*&v111[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] >= v112)
      {
        v114 = &v111[OBJC_IVAR___WOSegmentPaceAccumulator_duration];
        if (*&v111[OBJC_IVAR___WOSegmentPaceAccumulator_duration] >= v112)
        {
          if (v113 >= v110)
          {
LABEL_82:
            if (swift_unknownObjectWeakLoadStrong())
            {
              v118 = *(v101 + 72);
              v119 = swift_getObjectType();
              (*(v118 + 8))(1, v119, v118);
              swift_unknownObjectRelease();
            }

            goto LABEL_19;
          }

LABEL_79:
          v115 = v111;
          v116 = [v115 updateHandler];
          if (v116)
          {
            v117 = v116;
            (*(v116 + 2))();
            _Block_release(v117);
          }

          goto LABEL_82;
        }
      }

      else
      {
        *&v111[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = v112;
        v114 = &v111[OBJC_IVAR___WOSegmentPaceAccumulator_duration];
        if (*&v111[OBJC_IVAR___WOSegmentPaceAccumulator_duration] >= v112)
        {
          goto LABEL_79;
        }
      }

      *v114 = v112;
      goto LABEL_79;
    }

    v89 = *(v162 + v153);
    swift_beginAccess();
    *(v89 + 96) = v77;
    v90 = *(v89 + 16);
    if (v90)
    {
      v91 = v90;
      SegmentPaceAccumulator.updateDuration(_:)(v77);
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v92 = *(v89 + 72);
      v93 = swift_getObjectType();
      (*(v92 + 8))(3, v93, v92);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    *(v89 + 104) = v61;
    v172 = &type metadata for WorkoutFeatures;
    v173 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v171[0]) = 3;
    v94 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0Tm_8(v171);
    if ((v94 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      v95 = *(v89 + 72);
      v96 = swift_getObjectType();
      (*(v95 + 8))(2, v96, v95);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    *(v89 + 88) = v62;
    v97 = *(v89 + 16);
    if (!v97)
    {
      goto LABEL_91;
    }

    v98 = *(v89 + 96);
    v99 = *&v97[OBJC_IVAR___WOSegmentPaceAccumulator_distance];
    if (v99 < v62)
    {
      *&v97[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = v62;
    }

    if (*&v97[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] < v98)
    {
      *&v97[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = v98;
      v100 = &v97[OBJC_IVAR___WOSegmentPaceAccumulator_duration];
      if (*&v97[OBJC_IVAR___WOSegmentPaceAccumulator_duration] < v98)
      {
LABEL_87:
        *v100 = v98;
      }

LABEL_88:
      v120 = v97;
      v121 = [v120 updateHandler];
      if (v121)
      {
        v122 = v121;
        (*(v121 + 2))();
        _Block_release(v122);
      }

      goto LABEL_91;
    }

    v100 = &v97[OBJC_IVAR___WOSegmentPaceAccumulator_duration];
    if (*&v97[OBJC_IVAR___WOSegmentPaceAccumulator_duration] < v98)
    {
      goto LABEL_87;
    }

    if (v99 < v62)
    {
      goto LABEL_88;
    }

LABEL_91:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v123 = *(v89 + 72);
      v124 = swift_getObjectType();
      (*(v123 + 8))(1, v124, v123);
      swift_unknownObjectRelease();
    }

    v125 = [v86 metadata];
    if (v125)
    {
      v126 = v125;
      v127 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v127 + 16) && (v128 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002BLL, v152 | 0x8000000000000000), (v129 & 1) != 0))
      {
        outlined init with copy of Any(*(v127 + 56) + 32 * v128, v171);

        if (swift_dynamicCast())
        {
          v130 = v170;
          if (v170 > 0.0)
          {
            v131 = IntervalWorkoutTracker.getPoolSwimmingDistanceGoal()();
            if ((v132 & 1) == 0)
            {
              v133 = *&v131;
              v134 = Logger.logObject.getter();
              v135 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v134, v135))
              {
                v136 = swift_slowAlloc();
                *v136 = v150;
                *(v136 + 4) = v130;
                _os_log_impl(&dword_20AEA4000, v134, v135, "distanceAchievedDuration is recovered for current activity with value %f", v136, 0xCu);
                MEMORY[0x20F2E9420](v136, -1, -1);
              }

              v137 = v89 + OBJC_IVAR____TtC11WorkoutCore30IntervalWorkoutProgressionData_distanceGoalAchievedDuration;
              swift_beginAccess();
              *v137 = v130;
              *(v137 + 8) = 0;
              if (swift_unknownObjectWeakLoadStrong())
              {
                v138 = *(v89 + 72);
                v139 = swift_getObjectType();
                (*(v138 + 16))(v139, v138, v130);
                swift_unknownObjectRelease();
              }

              *(v89 + 88) = v133;
              v140 = *(v89 + 16);
              if (v140)
              {
                v141 = *(v89 + 96);
                v142 = v140;
                SegmentPaceAccumulator.updateDistance(_:duration:)(v133, v141);
              }

              if (swift_unknownObjectWeakLoadStrong())
              {
                v143 = *(v89 + 72);
                v144 = swift_getObjectType();
                (*(v143 + 8))(1, v144, v143);

                swift_unknownObjectRelease();
                goto LABEL_19;
              }
            }
          }
        }
      }

      else
      {
      }
    }

LABEL_19:
    v22 = v169;
    v39 = v164 + 1;
  }

  while (v168 != v164 + 1);
  if (v24)
  {
    v145 = [v24 startDate];
    v146 = v151;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*v156)(v41, v146, v40);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v148 = Strong;
      isa = Date._bridgeToObjectiveC()().super.isa;
      [v148 didRecover_];
      swift_unknownObjectRelease();
    }

    v159(v41, v40);
  }

  else
  {
    v24 = v161;
  }
}

uint64_t keypath_get_25Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t keypath_set_26Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t type metadata accessor for HKWorkoutActivity(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id IntervalWorkoutTracker.distanceProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) distanceProvider];

  return v1;
}

id IntervalWorkoutTracker.elevationProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) elevationProvider];

  return v1;
}

id IntervalWorkoutTracker.swimmingDistanceProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) swimmingDistanceProvider];

  return v1;
}

id IntervalWorkoutTracker.lapsProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) lapsProvider];

  return v1;
}

id IntervalWorkoutTracker.flightsClimbedProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) flightsClimbedProvider];

  return v1;
}

id IntervalWorkoutTracker.rollingPaceProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) rollingPaceProvider];

  return v1;
}

id IntervalWorkoutTracker.elapsedTimeProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) elapsedTimeProvider];

  return v1;
}

id IntervalWorkoutTracker.heartRateProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) heartRateProvider];

  return v1;
}

id IntervalWorkoutTracker.energyBurnProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) energyBurnProvider];

  return v1;
}

id IntervalWorkoutTracker.ghostPacerProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) ghostPacerProvider];

  return v1;
}

id IntervalWorkoutTracker.segmentProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) segmentProvider];

  return v1;
}

id IntervalWorkoutTracker.splitProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) splitProvider];

  return v1;
}

id @objc IntervalWorkoutTracker.powerZonesProvider.getter(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider];
  v5 = a1;
  v6 = [v4 *a3];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v9);

  return v7;
}

uint64_t IntervalWorkoutTracker.powerZonesProvider.getter(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) *a1];
  _bridgeAnyObjectToAny(_:)();

  return swift_unknownObjectRelease();
}

double IntervalWorkoutTracker.duration.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 96);
}

id IntervalWorkoutTracker.waterTemperatureProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) waterTemperatureProvider];

  return v1;
}

id IntervalWorkoutTracker.descentProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) descentProvider];

  return v1;
}

id IntervalWorkoutTracker.downhillRunCountProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) downhillRunCountProvider];

  return v1;
}

uint64_t WorkoutStepUpdateData.distanceGoalAchievedDurationForTimeAndDistanceGoal.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutStepUpdateData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 81))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkoutStepUpdateData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = (a2 - 1);
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

  *(result + 81) = v3;
  return result;
}

id WorkoutStepUpdateDataBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutStepUpdateDataBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UnlockedDeviceMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = -1;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  v1 = MKBGetDeviceLockState();
  if (v1)
  {
    v2 = v1 == 3;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  swift_beginAccess();
  *(v0 + 40) = v3;
  return v0;
}

Swift::Void __swiftcall UnlockedDeviceMonitor.stopMonitoring()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    closure #1 in UnlockedDeviceMonitor.stopMonitoring()();
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v12 = static OS_dispatch_queue.main.getter();
    v17 = v5;
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in UnlockedDeviceMonitor.stopMonitoring();
    *(v14 + 24) = v10;
    aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_11;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_82;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v9, v4, v15);
    _Block_release(v15);

    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v17);
  }
}

Swift::Void __swiftcall UnlockedDeviceMonitor.startMonitoring()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    closure #1 in UnlockedDeviceMonitor.startMonitoring()();
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v12 = static OS_dispatch_queue.main.getter();
    v17 = v5;
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in UnlockedDeviceMonitor.startMonitoring();
    *(v14 + 24) = v10;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_11_1;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v9, v4, v15);
    _Block_release(v15);

    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v17);
  }
}

uint64_t UnlockedDeviceMonitor.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 32);
  return result;
}

uint64_t UnlockedDeviceMonitor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*UnlockedDeviceMonitor.delegate.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return UnlockedDeviceMonitor.delegate.modify;
}

uint64_t UnlockedDeviceMonitor.unlocked.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t UnlockedDeviceMonitor.init()()
{
  *(v0 + 16) = -1;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  v1 = MKBGetDeviceLockState();
  if (v1)
  {
    v2 = v1 == 3;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  swift_beginAccess();
  *(v0 + 40) = v3;
  return v0;
}

uint64_t UnlockedDeviceMonitor.handleKeyBagLockStatusNotification()()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v1;
  v14 = objc_opt_self();

  if ([v14 isMainThread])
  {
    specialized closure #1 in UnlockedDeviceMonitor.handleKeyBagLockStatusNotification()();
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v19 = static OS_dispatch_queue.main.getter();
    v20 = v7;
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for closure #1 in UnlockedDeviceMonitor.handleKeyBagLockStatusNotification();
    *(v16 + 24) = v13;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_28_1;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v19;
    MEMORY[0x20F2E7580](0, v11, v6, v17);
    _Block_release(v17);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v20);
  }
}

uint64_t UnlockedDeviceMonitor.deinit()
{
  UnlockedDeviceMonitor.stopMonitoring()();
  outlined destroy of weak UnlockedDeviceMonitorDelegate?(v0 + 24);
  return v0;
}

uint64_t UnlockedDeviceMonitor.__deallocating_deinit()
{
  UnlockedDeviceMonitor.stopMonitoring()();
  outlined destroy of weak UnlockedDeviceMonitorDelegate?(v0 + 24);

  return swift_deallocClassInstance();
}

void closure #1 in UnlockedDeviceMonitor.startMonitoring()()
{
  aBlock[9] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(Strong + 16) != -1)
    {
      if (one-time initialization token for assertion != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static WOLog.assertion);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_19;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "[UnlockedDeviceMonitor] already monitoring lock status notifications", v10, 2u);
      v11 = v10;
LABEL_18:
      MEMORY[0x20F2E9420](v11, -1, -1);
LABEL_19:

      goto LABEL_20;
    }

    out_token = -1;
    type metadata accessor for OS_dispatch_queue();
    (*(v1 + 104))(v4, *MEMORY[0x277D851B8], v0);
    v12 = static OS_dispatch_queue.global(qos:)();
    (*(v1 + 8))(v4, v0);
    v13 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in closure #1 in UnlockedDeviceMonitor.startMonitoring();
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    aBlock[3] = &block_descriptor_32_1;
    v14 = _Block_copy(aBlock);

    v15 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, v12, v14);
    _Block_release(v14);

    if (v15 || out_token == -1)
    {
      if (one-time initialization token for assertion != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static WOLog.assertion);
      v8 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v8, v22))
      {
        goto LABEL_19;
      }

      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v15;
      _os_log_impl(&dword_20AEA4000, v8, v22, "[UnlockedDeviceMonitor] error registering for lock status notifications, result: %u", v23, 8u);
      v11 = v23;
      goto LABEL_18;
    }

    if (one-time initialization token for assertion != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.assertion);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000020B4580A0, aBlock);
      _os_log_impl(&dword_20AEA4000, v17, v18, "[UnlockedDeviceMonitor] registered for lock status notifications: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x20F2E9420](v20, -1, -1);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    *(v6 + 16) = out_token;
  }

LABEL_20:
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t closure #1 in closure #1 in UnlockedDeviceMonitor.startMonitoring()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnlockedDeviceMonitor.handleKeyBagLockStatusNotification()();
  }

  return result;
}

void closure #1 in UnlockedDeviceMonitor.stopMonitoring()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + 16) == -1)
    {
      if (one-time initialization token for assertion != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static WOLog.assertion);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_20AEA4000, v7, v8, "[UnlockedDeviceMonitor] not monitoring lock status notifications", v9, 2u);
        MEMORY[0x20F2E9420](v9, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for assertion != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, static WOLog.assertion);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_20AEA4000, v3, v4, "[UnlockedDeviceMonitor] deregistering for lock status notifications", v5, 2u);
        MEMORY[0x20F2E9420](v5, -1, -1);
      }

      notify_cancel(*(v1 + 16));
      *(v1 + 16) = -1;
    }
  }
}

uint64_t protocol witness for UnlockedDeviceMonitorProtocol.delegate.getter in conformance UnlockedDeviceMonitor()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 32);
  return result;
}

uint64_t protocol witness for UnlockedDeviceMonitorProtocol.delegate.setter in conformance UnlockedDeviceMonitor(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for UnlockedDeviceMonitorProtocol.delegate.modify in conformance UnlockedDeviceMonitor(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return protocol witness for UnlockedDeviceMonitorProtocol.delegate.modify in conformance UnlockedDeviceMonitor;
}

void UnlockedDeviceMonitor.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

uint64_t protocol witness for UnlockedDeviceMonitorProtocol.unlocked.getter in conformance UnlockedDeviceMonitor()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t specialized closure #1 in UnlockedDeviceMonitor.handleKeyBagLockStatusNotification()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = MKBGetDeviceLockState();
    if (v2)
    {
      v3 = v2 == 3;
    }

    else
    {
      v3 = 1;
    }

    v4 = v3;
    swift_beginAccess();
    *(v1 + 40) = v4;
    if (one-time initialization token for assertion != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.assertion);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18[0] = v9;
      *v8 = 67109378;
      *(v8 + 4) = *(v1 + 40);

      *(v8 + 8) = 2080;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v11 = *(v1 + 32);
      v18[1] = Strong;
      v18[2] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29UnlockedDeviceMonitorDelegate_pSgMd, &_s11WorkoutCore29UnlockedDeviceMonitorDelegate_pSgMR);
      v12 = Optional.description.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v18);

      *(v8 + 10) = v15;
      _os_log_impl(&dword_20AEA4000, v6, v7, "[UnlockedDeviceMonitor] handleKeyBagLockStatusNotification, unlocked: %{BOOL}d, delegate: %s", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F2E9420](v9, -1, -1);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v1 + 32);
      ObjectType = swift_getObjectType();
      (*(v16 + 8))(*(v1 + 40), ObjectType, v16);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double IntervalWorkoutTracker.currentPaceInMetersPerSecond.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 120);
}

double IntervalWorkoutTracker.averagePaceInMetersPerSecond.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 112);
}

double IntervalWorkoutTracker.fastestPaceInMetersPerSecond.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 128);
}

Swift::Bool __swiftcall IntervalWorkoutTracker.isPaceAvailable()()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) paceProvider];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 isPaceAvailable];
  swift_unknownObjectRelease();
  return v2;
}

void MetricValue.init(metricType:value:isStale:formattingManager:activityType:)(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v124 = a3;
  v125 = a4;
  v123 = a2;
  v9 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v122 = *(v9 - 8);
  v10 = *(v122 + 64);
  MEMORY[0x28223BE20](v9);
  v121 = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v120 = *(v12 - 8);
  v13 = *(v120 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Locale();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v26);
  v29 = v114 - v28;
  if (a1 <= 7)
  {
    if (a1 > 4)
    {
      if (a1 == 5)
      {
        goto LABEL_21;
      }

      if (a1 != 7)
      {
        goto LABEL_31;
      }

      v30 = v124;
      v35 = [v124 localizedShortTypeDistinguishingUnitStringForEnergyType:3 workoutSectionType:1 multiline:0];
      if (v35)
      {
        v19 = v35;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v36;

LABEL_36:
        v97 = [v30 localizedStringWithEnergyInCalories:3 energyType:0 unitStyle:a6];
        if (v97)
        {
LABEL_40:
          v98 = v97;
          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v99;

          goto LABEL_50;
        }

        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      if (a1 == 1)
      {
        v19 = FIUIDistanceTypeForActivityType();
        v30 = v124;
        v66 = [v124 localizedShortUnitStringForDistanceUnit:objc_msgSend(v124 textCase:{sel_naturalScaleUnitForDistanceInMeters_distanceType_, v19, a6), 1}];
        if (v66)
        {
          v67 = v66;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v68;

          goto LABEL_39;
        }

LABEL_38:
        v32 = 0;
        v34 = 0;
LABEL_39:
        v97 = [v30 localizedCompactNaturalScaleStringWithDistanceInMeters:v19 distanceType:0 unitStyle:0 usedUnit:a6];
        if (!v97)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        goto LABEL_40;
      }

      if (a1 != 2)
      {
        goto LABEL_31;
      }

      v30 = v124;
      v31 = [v124 localizedShortTypeDistinguishingUnitStringForEnergyType:1 workoutSectionType:1 multiline:0];
      if (v31)
      {
        v19 = v31;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v97 = [v30 localizedStringWithEnergyInCalories:1 energyType:0 unitStyle:a6];
      if (v97)
      {
        goto LABEL_40;
      }

      __break(1u);
    }

    v32 = 0;
    v34 = 0;
    goto LABEL_36;
  }

  if (a1 > 11)
  {
    switch(a1)
    {
      case 12:
        v126 = a6;
        v69 = v27;
        static Locale.autoupdatingCurrent.getter();
        v119 = lazy protocol witness table accessor for type Double and conformance Double();
        FloatingPointFormatStyle.init(locale:)();
        v70 = v120;
        (*(v120 + 104))(v15, *MEMORY[0x277D84688], v12);
        MEMORY[0x20F2E4420](v15, 0, 1, v20);
        (*(v70 + 8))(v15, v12);
        v71 = *(v21 + 8);
        v71(v25, v20);
        v72 = v121;
        static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
        MEMORY[0x20F2E4430](v72, v20);
        (*(v122 + 8))(v72, v9);
        v71(v69, v20);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
        BinaryFloatingPoint.formatted<A>(_:)();
        v71(v29, v20);
        v63 = v127;
        v64 = v128;
        v73 = [objc_opt_self() localizedShortPowerUnitString];
        if (v73)
        {
          v74 = v73;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v75;

LABEL_51:
          v54 = 0;
          v56 = 0;
          goto LABEL_52;
        }

        break;
      case 16:
        v126 = a6;
        v85 = v27;
        static Locale.autoupdatingCurrent.getter();
        lazy protocol witness table accessor for type Double and conformance Double();
        v119 = v9;
        FloatingPointFormatStyle.init(locale:)();
        v86 = v120;
        (*(v120 + 104))(v15, *MEMORY[0x277D84688], v12);
        MEMORY[0x20F2E4420](v15, 0, 1, v20);
        (*(v86 + 8))(v15, v12);
        v87 = *(v21 + 8);
        v87(v25, v20);
        v88 = v121;
        static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
        MEMORY[0x20F2E4430](v88, v20);
        (*(v122 + 8))(v88, v119);
        v87(v85, v20);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
        v89 = v125;
        BinaryFloatingPoint.formatted<A>(_:)();
        v87(v29, v20);
        v63 = v127;
        v64 = v128;
        v90 = [objc_opt_self() localizedShortCadenceUnitStringForActivityType_];
        if (v90)
        {
          v91 = v90;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v92;

          goto LABEL_51;
        }

        break;
      case 40:
LABEL_21:
        v116 = v12;
        v117 = v27;
        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v47 = [objc_opt_self() bundleForClass_];
        v118 = a5;
        v48 = v47;
        v49 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B4685F0);
        v50 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v51 = [v48 localizedStringForKey:v49 value:0 table:v50];
        v115 = v29;
        v52 = v21;
        v119 = v9;
        v53 = v51;

        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        a5 = v118;
        v126 = a6;
        static Locale.autoupdatingCurrent.getter();
        v114[1] = lazy protocol witness table accessor for type Double and conformance Double();
        FloatingPointFormatStyle.init(locale:)();
        v57 = v120;
        v58 = v116;
        (*(v120 + 104))(v15, *MEMORY[0x277D84688], v116);
        v59 = v117;
        MEMORY[0x20F2E4420](v15, 0, 1, v20);
        (*(v57 + 8))(v15, v58);
        v60 = *(v52 + 8);
        v60(v25, v20);
        v61 = v121;
        static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
        v62 = v115;
        MEMORY[0x20F2E4430](v61, v20);
        (*(v122 + 8))(v61, v119);
        v60(v59, v20);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
        BinaryFloatingPoint.formatted<A>(_:)();

        v60(v62, v20);
        v34 = 0;
        v32 = 0;
        v63 = v127;
        v64 = v128;
        v65 = xmmword_20B4465B0;
LABEL_53:
        v113 = v123 & 1;
        *a5 = v32;
        *(a5 + 8) = v34;
        *(a5 + 16) = v63;
        *(a5 + 24) = v64;
        *(a5 + 32) = v65;
        *(a5 + 48) = v54;
        *(a5 + 56) = v56;
        *(a5 + 64) = v113;
        return;
      default:
        goto LABEL_31;
    }

    v34 = 0;
    v32 = 0;
    goto LABEL_51;
  }

  if (a1 != 8)
  {
    if (a1 == 10)
    {
      v37 = v124;
      v38 = [v124 unitManager];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 userDistanceUnitForDistanceType_];

        v41 = [v37 localizedShortUnitStringForDistanceUnit:v40 textCase:1];
        if (v41)
        {
          v42 = v41;
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;
        }

        else
        {
          v43 = 0;
          v45 = 0xE000000000000000;
        }

        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        v100 = swift_getObjCClassFromMetadata();
        v101 = [objc_opt_self() bundleForClass_];
        v102 = MEMORY[0x20F2E6C00](0xD00000000000001CLL, 0x800000020B46CB30);
        v103 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
        v104 = [v101 localizedStringForKey:v102 value:0 table:v103];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_20B423A90;
        *(v105 + 56) = MEMORY[0x277D837D0];
        *(v105 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v105 + 32) = v43;
        *(v105 + 40) = v45;

        v32 = static String.localizedStringWithFormat(_:_:)();
        v34 = v106;

        v107 = [v37 localizedStringWithDistanceInMeters:5 distanceType:0 unitStyle:a6];
        if (v107)
        {
          v108 = v107;

          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v64 = v109;

          goto LABEL_51;
        }

        goto LABEL_57;
      }

      __break(1u);
      goto LABEL_55;
    }

LABEL_31:
    v126 = a6;
    v93 = v27;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    v119 = v9;
    FloatingPointFormatStyle.init(locale:)();
    v94 = v120;
    (*(v120 + 104))(v15, *MEMORY[0x277D84688], v12);
    MEMORY[0x20F2E4420](v15, 0, 1, v20);
    (*(v94 + 8))(v15, v12);
    v95 = *(v21 + 8);
    v95(v25, v20);
    v96 = v121;
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F2E4430](v96, v20);
    (*(v122 + 8))(v96, v119);
    v95(v93, v20);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
    BinaryFloatingPoint.formatted<A>(_:)();

    v95(v29, v20);
    v34 = 0;
    v32 = 0;
    v54 = 0;
    v56 = 0;
    v63 = v127;
    v64 = v128;
LABEL_52:
    v65 = 0uLL;
    goto LABEL_53;
  }

  v76 = FIUIDistanceTypeForActivityType();
  v77 = v124;
  v78 = [v124 unitManager];
  if (v78)
  {
    v79 = v78;
    v80 = [v78 paceDistanceUnitForDistanceType_];

    v81 = MEMORY[0x20F2E8410](v76);
    v82 = [v77 localizedDistinguishingPaceUnitStringWithMetricType:8 distanceType:v76 distanceUnit:v80 paceFormat:v81 abbreviated:1 multiline:0];
    if (v82)
    {
      v83 = v82;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v84;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v110 = [objc_opt_self() meterUnit];
    v111 = [objc_opt_self() quantityWithUnit:v110 doubleValue:a6];

    v98 = [v77 localizedPaceStringWithDistance:v111 overDuration:v81 paceFormat:v76 distanceType:1.0];
    if (!v98)
    {
      goto LABEL_58;
    }

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v112;

LABEL_50:
    goto LABEL_51;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t MetricValue.formattedUnit.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MetricValue.formattedUnit.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MetricValue.formattedValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MetricValue.formattedValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MetricValue.symbol.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MetricValue.symbol.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MetricValue.symbolAXLabel.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t MetricValue.symbolAXLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricValue.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricValue.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MetricValue.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C6F626D7973;
  v3 = 0x58416C6F626D7973;
  if (v1 != 3)
  {
    v3 = 0x656C617473;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0x657474616D726F66;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MetricValue.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MetricValue.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MetricValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MetricValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetricValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore11MetricValueV10CodingKeys33_4E46E2ACEC638761E142F899AAC8B888LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore11MetricValueV10CodingKeys33_4E46E2ACEC638761E142F899AAC8B888LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v21 = v1[3];
  v22 = v10;
  v11 = v1[4];
  v19 = v1[5];
  v20 = v11;
  v12 = v1[6];
  v17 = v1[7];
  v18 = v12;
  v16[1] = *(v1 + 64);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v28 = 0;
  v14 = v23;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v27 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v26 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v25 = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v24 = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

void MetricValue.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[7];
  v7 = *(v0 + 64);
  if (v0[1])
  {
    v8 = *v0;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  if (!v5)
  {
    Hasher._combine(_:)(0);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    Hasher._combine(_:)(0);
    goto LABEL_9;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_9:
  Hasher._combine(_:)(v7);
}

Swift::Int MetricValue.hashValue.getter()
{
  Hasher.init(_seed:)();
  MetricValue.hash(into:)();
  return Hasher._finalize()();
}

uint64_t MetricValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore11MetricValueV10CodingKeys33_4E46E2ACEC638761E142F899AAC8B888LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore11MetricValueV10CodingKeys33_4E46E2ACEC638761E142F899AAC8B888LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v43[0]) = 0;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    v14 = v11;
    LOBYTE(v43[0]) = 1;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    v36 = v15;
    v37 = v14;
    LOBYTE(v43[0]) = 2;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = v19;
    v35 = v18;
    v34 = a2;
    LOBYTE(v43[0]) = 3;
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = v22;
    v33 = v21;
    v46 = 4;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = *(v6 + 8);
    v45 = v24;
    v25(v9, v5);
    v27 = v36;
    v26 = v37;
    *&v38 = v37;
    *(&v38 + 1) = v13;
    *&v39 = v36;
    *(&v39 + 1) = v17;
    *&v40 = v35;
    *(&v40 + 1) = v20;
    *&v41 = v33;
    *(&v41 + 1) = v23;
    v28 = v45 & 1;
    v42 = v45 & 1;
    v29 = v34;
    *(v34 + 64) = v45 & 1;
    v30 = v41;
    v29[2] = v40;
    v29[3] = v30;
    v31 = v39;
    *v29 = v38;
    v29[1] = v31;
    outlined init with copy of MetricValue(&v38, v43);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v43[0] = v26;
    v43[1] = v13;
    v43[2] = v27;
    v43[3] = v17;
    v43[4] = v35;
    v43[5] = v20;
    v43[6] = v33;
    v43[7] = v23;
    v44 = v28;
    return outlined destroy of MetricValue(v43);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricValue()
{
  Hasher.init(_seed:)();
  MetricValue.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricValue()
{
  Hasher.init(_seed:)();
  MetricValue.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static MetricValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v16 = *(a2 + 40);
  v15 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (v3)
  {
    if (!v11)
    {
      return 0;
    }

    v23 = *(a2 + 48);
    v24 = *(a1 + 48);
    v25 = *(a2 + 64);
    v26 = *(a1 + 64);
    if ((*a1 != *a2 || v3 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v23 = *(a2 + 48);
    v24 = *(a1 + 48);
    v25 = *(a2 + 64);
    v26 = *(a1 + 64);
    if (v11)
    {
      return 0;
    }
  }

  if ((v4 != v12 || v6 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    if (!v16 || (v5 != v14 || v8 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v9)
  {
    v20 = v25;
    v19 = v26;
    if (v17)
    {
      if (v24 == v23 && v9 == v17)
      {
        return v19 ^ v20 ^ 1u;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v20 = v25;
      v19 = v26;
      if (v21)
      {
        return v19 ^ v20 ^ 1u;
      }
    }
  }

  else
  {
    v20 = v25;
    v19 = v26;
    if (!v17)
    {
      return v19 ^ v20 ^ 1u;
    }
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MetricValue(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricValue(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MetricValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized MetricValue.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x657474616D726F66 && a2 == 0xED000074696E5564;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xEE0065756C615664 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x58416C6F626D7973 && a2 == 0xED00006C6562614CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C617473 && a2 == 0xE500000000000000)
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

BOOL @objc AVAudioSessionRouteDescription.isDeviceSpeaker.getter(void *a1)
{
  v1 = a1;
  v2 = AVAudioSessionRouteDescription.isDeviceSpeaker.getter();

  return v2;
}

BOOL AVAudioSessionRouteDescription.isDeviceSpeaker.getter()
{
  v1 = [v0 outputs];
  type metadata accessor for AVAudioSessionPortDescription();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
LABEL_20:
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = *MEMORY[0x277CB81A0];
  do
  {
    v5 = v3;
    if (v16 == v3)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x20F2E7A20](v3, v2);
    }

    else
    {
      if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v2 + 8 * v3 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v8 = [v6 portType];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
    {

      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = v5 + 1;
  }

  while ((v14 & 1) == 0);

  return v16 != v5;
}

unint64_t type metadata accessor for AVAudioSessionPortDescription()
{
  result = lazy cache variable for type metadata for AVAudioSessionPortDescription;
  if (!lazy cache variable for type metadata for AVAudioSessionPortDescription)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AVAudioSessionPortDescription);
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x20F2E7A20](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = __CocoaSet.count.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[1];
      v10 = v7[3];
      v27 = v7[2];
      v28 = v10;
      v11 = v7[3];
      v29 = v7[4];
      v12 = v7[1];
      v26[0] = *v7;
      v26[1] = v12;
      v23 = v27;
      v24 = v11;
      v25 = v7[4];
      v21 = v26[0];
      v22 = v9;
      outlined init with copy of WorkoutDevice(v26, &v16);
      v13 = a1(&v21);
      if (v3)
      {
        break;
      }

      v4 = v13;
      v18 = v23;
      v19 = v24;
      v20 = v25;
      v16 = v21;
      v17 = v22;
      outlined destroy of WorkoutDevice(&v16);
      v14 = v8-- == 0;
      v7 += 5;
      if ((v4 | v14))
      {
        return v4 & 1;
      }
    }

    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    outlined destroy of WorkoutDevice(&v16);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Bool __swiftcall WorkoutReadinessChecker.supportsPairedWatchFeatures()()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = (v12 + 88);
  v3 = *(v12 + 16) + 1;
  while (--v3)
  {
    v4 = *v2;
    v5 = *(v2 - 24);
    v2 += 80;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    if (!v6)
    {

      return 1;
    }
  }

  v8 = [objc_opt_self() standardUserDefaults];
  v9 = MEMORY[0x20F2E6C00](0xD000000000000022, 0x800000020B46CB60);
  v10 = [v8 BOOLForKey_];

  return (v10 & 1) == 0 && !WorkoutReadinessChecker.isGizmoWorkoutAppMissing()() && specialized static DataLinkBackwardCompatibilityUtility.activePairedWatch(supports:)();
}

Swift::Bool __swiftcall WorkoutReadinessChecker.shouldUseWatchFitnessTracking()()
{
  v1 = *v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = MEMORY[0x20F2E6C00](0xD000000000000022, 0x800000020B46CB60);
  v4 = [v2 BOOLForKey_];

  if (v4)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = FIGetActivePairedDevice();
  if (!v5)
  {
LABEL_6:
    v6 = 0;
  }

  else
  {

    v6 = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = *(v11 + 16) + 1;
  v8 = 64;
  while (--v7)
  {
    v9 = *(v11 + v8);
    v8 += 80;
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  v6 = 0;
LABEL_12:

  return v6;
}

uint64_t key path getter for WorkoutDevicesProvider.devices : WorkoutDevicesProvider@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

void key path setter for WorkoutDevicesProvider.devices : WorkoutDevicesProvider(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3;
  static Published.subscript.setter();
  WorkoutDevicesProvider.devices.didset();
}

Swift::Bool __swiftcall WorkoutReadinessChecker.supportsExternalHeartRateSensorFeatures()()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = (v9 + 88);
  v3 = *(v9 + 16) + 1;
  while (--v3)
  {
    v4 = *v2;
    v5 = *(v2 - 24);
    v2 += 80;
    if ((v5 - 1) <= 1 && v4 != 0)
    {

      v7 = 1;
      return v7 & 1;
    }
  }

  v7 = specialized WorkoutDevicesProvider.heartRateDeviceWasPreviouslyConnected.getter();
  return v7 & 1;
}

Swift::Bool __swiftcall WorkoutReadinessChecker.isGizmoWorkoutAppMissing()()
{
  v1 = *v0;
  if ([objc_opt_self() isAppleInternalInstall] && (v2 = objc_msgSend(objc_opt_self(), sel_standardUserDefaults), v3 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B46CB90), v4 = objc_msgSend(v2, sel_BOOLForKey_, v3), v2, v3, v4))
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.activityPicker);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20AEA4000, v6, v7, "fakeGizmoWorkoutAppMissing is set to true. Returning isGizmoWorkoutAppMissing as true", v8, 2u);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }
  }

  else
  {
    v9 = *(v1 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchScanner);
    if (v9)
    {
      v10 = *&v9[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationUtility];
      swift_getKeyPath();
      swift_getKeyPath();
      v11 = v9;
      static Published.subscript.getter();

      return v13 == 2;
    }
  }

  return 1;
}

Swift::Bool __swiftcall WorkoutReadinessChecker.isFitnessTrackingDisabled()()
{
  v3 = *v0;
  if (WorkoutReadinessChecker.shouldUseWatchFitnessTracking()())
  {
    v1 = FIIsFitnessTrackingEnabled();
  }

  else
  {
    v1 = FIIsPhoneFitnessTrackingEnabled();
  }

  return v1 ^ 1;
}

char *WorkoutReadinessChecker.eligibleWorkoutDevices()()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = *(v20 + 16);

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v20;
  v4 = *(v20 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = v4 - 1;
  v6 = MEMORY[0x277D84F90];
  for (i = 32; ; i += 80)
  {
    v8 = *(v3 + i + 48);
    v9 = *(v3 + i + 64);
    v10 = *(v3 + i + 16);
    v22 = *(v3 + i + 32);
    v11 = *(v3 + i);
    v23 = v8;
    v24 = v9;
    v20 = v11;
    v21 = v10;
    if (v22)
    {
      break;
    }

    outlined init with copy of WorkoutDevice(&v20, v19);
    if (WorkoutReadinessChecker.supportsPairedWatchFeatures()())
    {
      goto LABEL_7;
    }

    outlined destroy of WorkoutDevice(&v20);
    if (!v5)
    {
      goto LABEL_14;
    }

LABEL_12:
    --v5;
  }

  outlined init with copy of WorkoutDevice(&v20, v19);
LABEL_7:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v13 = *(v6 + 2);
  v12 = *(v6 + 3);
  if (v13 >= v12 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v6);
  }

  *(v6 + 2) = v13 + 1;
  v14 = &v6[80 * v13];
  *(v14 + 2) = v20;
  v15 = v21;
  v16 = v22;
  v17 = v24;
  *(v14 + 5) = v23;
  *(v14 + 6) = v17;
  *(v14 + 3) = v15;
  *(v14 + 4) = v16;
  if (v5)
  {
    goto LABEL_12;
  }

LABEL_14:

  return v6;
}

WorkoutCore::WorkoutReadinessCheckError_optional __swiftcall WorkoutReadinessChecker.checkReadiness()()
{
  v2 = v0;
  v3 = *v1;
  if (WorkoutReadinessChecker.shouldUseWatchFitnessTracking()())
  {
    v4 = FIIsFitnessTrackingEnabled();
    if (!v4)
    {
LABEL_3:
      v5 = 2;
      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(v4) = FIIsPhoneFitnessTrackingEnabled();
    if ((v4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v6 = *(WorkoutReadinessChecker.eligibleWorkoutDevices()() + 2);

  if (v6)
  {
    v5 = 4;
  }

  else
  {
    v7 = [objc_opt_self() standardUserDefaults];
    v8 = MEMORY[0x20F2E6C00](0xD000000000000022, 0x800000020B46CB60);
    v9 = [v7 BOOLForKey_];

    if (v9)
    {
      goto LABEL_14;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v10 = FIGetActivePairedDevice();
    if (!v10)
    {
      goto LABEL_14;
    }

    LOBYTE(v4) = specialized static DataLinkBackwardCompatibilityUtility.activePairedWatch(supports:)();
    if ((v4 & 1) == 0)
    {
      v5 = 1;
      goto LABEL_17;
    }

    LOBYTE(v4) = WorkoutReadinessChecker.isGizmoWorkoutAppMissing()();
    if (v4)
    {
      v5 = 0;
    }

    else
    {
LABEL_14:
      LOBYTE(v4) = WorkoutReadinessChecker.supportsExternalHeartRateSensorFeatures()();
      if (v4)
      {
        v5 = 4;
      }

      else
      {
        v5 = 3;
      }
    }
  }

LABEL_17:
  *v2 = v5;
  return v4;
}

uint64_t getEnumTagSinglePayload for WorkoutReadinessChecker(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for WorkoutReadinessChecker(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t WorkoutPlaylistController.setDelegate(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;

  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in WorkoutPlaylistController.setDelegate(_:), v8);
}

uint64_t closure #1 in WorkoutPlaylistController.setDelegate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in WorkoutPlaylistController.setDelegate(_:), a4, 0);
}

uint64_t closure #1 in WorkoutPlaylistController.setDelegate(_:)()
{
  v2 = v0[2];
  v1 = v0[3];
  swift_unknownObjectWeakAssign();
  v3 = v0[1];

  return v3();
}

uint64_t partial apply for closure #1 in WorkoutPlaylistController.setDelegate(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in WorkoutPlaylistController.setDelegate(_:);

  return closure #1 in WorkoutPlaylistController.setDelegate(_:)(a1, v4, v5, v7, v6);
}

id WorkoutPlaylistController.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  *(v0 + 112) = 0;
  swift_unknownObjectWeakInit();
  v1 = [objc_opt_self() systemRoute];
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v3 = MEMORY[0x20F2E6C00](v4, v6);
  }

  v7 = MEMORY[0x20F2E6C00](0x5074756F6B726F57, 0xEF7473696C79616CLL);
  v8 = [objc_opt_self() pathWithRoute:v1 bundleID:v3 playerID:v7];

  *(v0 + 136) = v8;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for WorkoutPlaylistController();
  v9 = objc_msgSendSuper2(&v17, sel_init);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  if (one-time initialization token for AnnouncerWillStart != -1)
  {
    swift_once();
  }

  [v12 addObserver:v11 selector:? name:? object:?];

  v13 = [v10 defaultCenter];
  v14 = one-time initialization token for AnnouncerDidStop;
  v15 = v11;
  if (v14 != -1)
  {
    swift_once();
  }

  [v13 addObserver:v15 selector:sel_handleAnnouncerDidStop_ name:static NSNotificationName.AnnouncerDidStop object:0];

  return v15;
}

uint64_t WorkoutPlaylistController.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  outlined destroy of weak WorkoutPlaylistControllerDelegate?(v0 + 128);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t WorkoutPlaylistController.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  outlined destroy of weak WorkoutPlaylistControllerDelegate?(v0 + 128);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t WorkoutPlaylistController.stopWorkoutPlaylist()()
{
  *(v1 + 152) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v1 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutPlaylistController.stopWorkoutPlaylist(), v0, 0);
}

{
  v1 = v0[19];
  v2 = *(v1 + 113);
  *(v1 + 113) = 0;
  if (v2 == 1)
  {
    v3 = v0[19];
    WorkoutPlaylistController.observePickableRoutesChanged(shouldObserve:)(0);
  }

  v4 = v0[19];
  *(v4 + 114) = 0;
  *(v4 + 120) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    if ([Strong hasWorkoutPlaylist])
    {
      if (one-time initialization token for audio != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      v0[22] = __swift_project_value_buffer(v6, static WOLog.audio);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_20AEA4000, v7, v8, "[workoutmusic] Stop workout playlist if needed.", v9, 2u);
        MEMORY[0x20F2E9420](v9, -1, -1);
      }

      v10 = v0[19];

      v11 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
      v0[23] = v11;
      [v11 setQualityOfService_];
      [v11 setPlayerPath_];
      v13 = lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(&lazy protocol witness table cache variable for type WorkoutPlaylistController and conformance WorkoutPlaylistController, v12, type metadata accessor for WorkoutPlaylistController);
      v14 = swift_task_alloc();
      v0[24] = v14;
      *(v14 + 16) = v11;
      v15 = *(MEMORY[0x277D85A40] + 4);
      v16 = swift_task_alloc();
      v0[25] = v16;
      v17 = type metadata accessor for MPCPlayerResponse(0, &lazy cache variable for type metadata for MPCPlayerResponse, 0x277D278F8);
      *v16 = v0;
      v16[1] = WorkoutPlaylistController.stopWorkoutPlaylist();

      return MEMORY[0x2822008A0](v0 + 18, v10, v13, 0xD000000000000015, 0x800000020B46CBB0, partial apply for closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist(), v14, v17);
    }

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.audio);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_20AEA4000, v19, v20, "[workoutmusic] No need to stop music -- workout playlist not set.", v21, 2u);
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  v22 = v0[20];

  v23 = v0[1];

  return v23();
}

{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = WorkoutPlaylistController.stopWorkoutPlaylist();
  }

  else
  {
    v6 = *(v2 + 192);
    v7 = *(v2 + 152);

    v5 = WorkoutPlaylistController.stopWorkoutPlaylist();
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 144);
  *(v0 + 216) = v1;
  v2 = [v1 stop];
  *(v0 + 224) = v2;
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_20B425990;
    *(v4 + 32) = v3;
    v5 = objc_allocWithZone(MEMORY[0x277D278C0]);
    type metadata accessor for MPCPlayerResponse(0, &lazy cache variable for type metadata for MPCPlayerCommandRequest, 0x277D278C8);
    v6 = v3;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v5 initWithCommandRequests_];
    *(v0 + 232) = v8;

    [v8 setOptions_];
    *(v0 + 16) = v0;
    *(v0 + 24) = WorkoutPlaylistController.stopWorkoutPlaylist();
    v9 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 104) = &block_descriptor_83;
    *(v0 + 112) = v9;
    [v8 performWithCompletion_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    v12 = *(v0 + 152);

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v12;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v11, &closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()partial apply, v15);
    swift_unknownObjectRelease();

    v17 = *(v0 + 160);

    v18 = *(v0 + 8);

    return v18();
  }
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 240) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = WorkoutPlaylistController.stopWorkoutPlaylist();
  }

  else
  {
    v5 = WorkoutPlaylistController.stopWorkoutPlaylist();
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 176);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 216);
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "[workoutmusic] Workout playlist stopped.", v8, 2u);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 152);

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v10, &closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()partial apply, v14);
  swift_unknownObjectRelease();

  v16 = *(v0 + 160);

  v17 = *(v0 + 8);

  return v17();
}

{
  v1 = v0[24];

  v2 = v0[26];
  v3 = v0[22];
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[workoutmusic] Workout playlist failed to stop. Stop command finished with error=%@.", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = v0[23];
  v12 = v0[20];
  v13 = v0[21];
  v14 = v0[19];

  swift_willThrow();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v14;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist(), v17);
  swift_unknownObjectRelease();

  v19 = v0[1];

  return v19();
}

{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  swift_willThrow();

  v5 = v0[30];
  v6 = v0[22];
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20AEA4000, v8, v9, "[workoutmusic] Workout playlist failed to stop. Stop command finished with error=%@.", v10, 0xCu);
    outlined destroy of NSObject?(v11);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  v14 = v0[23];
  v15 = v0[20];
  v16 = v0[21];
  v17 = v0[19];

  swift_willThrow();
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v17;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist(), v20);
  swift_unknownObjectRelease();

  v22 = v0[1];

  return v22();
}

uint64_t @objc closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist();

  return WorkoutPlaylistController.stopWorkoutPlaylist()();
}

uint64_t @objc closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist()()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t WorkoutPlaylistController.shouldStartMusic()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](WorkoutPlaylistController.shouldStartMusic(), v0, 0);
}

{
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    if ([Strong hasWorkoutPlaylist])
    {
      v3 = swift_task_alloc();
      v0[4] = v3;
      *v3 = v0;
      v3[1] = WorkoutPlaylistController.shouldStartMusic();
      v4 = v0[2];

      return WorkoutPlaylistController.isAudioPlayingNearby()();
    }

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.audio);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[workoutmusic] Don't start music -- workout playlist not set", v9, 2u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v10 = v0[1];

  return v10(0);
}

{
  if (*(v0 + 64))
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static WOLog.audio);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 24);
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v2, v3, "[workoutmusic] Don't start music -- audio already playing.", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    swift_unknownObjectRelease();
    v7 = *(v0 + 8);
    goto LABEL_9;
  }

  v8 = *(v0 + 40);
  specialized static AudioSessionUtilities.configureAudioSession()();
  if (v8)
  {
    v9 = *(v0 + 24);
    swift_unknownObjectRelease();
    v7 = *(v0 + 8);
LABEL_9:

    return v7(0);
  }

  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *v11 = v0;
  v11[1] = WorkoutPlaylistController.shouldStartMusic();
  v12 = *(v0 + 16);

  return WorkoutPlaylistController.eligibleAudioRoute()();
}

{
  v1 = *(v0 + 65);
  if (v1 == 1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.audio);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 24);
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "[workoutmusic] Don't start music -- no eligible audio route.", v8, 2u);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }
  }

  swift_unknownObjectRelease();
  v9 = *(v0 + 8);

  return v9(v1);
}

{
  v1 = v0[3];
  swift_unknownObjectRelease();
  v2 = v0[5];
  v3 = v0[1];

  return v3(0);
}

{
  v1 = v0[3];
  swift_unknownObjectRelease();
  v2 = v0[7];
  v3 = v0[1];

  return v3(0);
}

uint64_t WorkoutPlaylistController.shouldStartMusic()(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(v4 + 40) = v1;

  v7 = *(v4 + 16);
  if (v1)
  {
    v8 = WorkoutPlaylistController.shouldStartMusic();
  }

  else
  {
    *(v4 + 64) = a1 & 1;
    v8 = WorkoutPlaylistController.shouldStartMusic();
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(v4 + 56) = v1;

  v7 = *(v4 + 16);
  if (v1)
  {
    v8 = WorkoutPlaylistController.shouldStartMusic();
  }

  else
  {
    *(v4 + 65) = a1 & 1;
    v8 = WorkoutPlaylistController.shouldStartMusic();
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t @objc closure #1 in WorkoutPlaylistController.shouldStartMusic()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in WorkoutPlaylistController.shouldStartMusic();

  return WorkoutPlaylistController.shouldStartMusic()();
}

uint64_t @objc closure #1 in WorkoutPlaylistController.shouldStartMusic()(char a1)
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
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t WorkoutPlaylistController.isAudioPlayingNearby()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = WorkoutPlaylistController.isAudioPlayingNearby();

  return WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby()();
}

{
  if (*(v0 + 65))
  {
    v1 = *(v0 + 8);

    return v1(1);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v3 = static AudioRoutingControlManager.shared;
    *(v0 + 32) = static AudioRoutingControlManager.shared;

    return MEMORY[0x2822009F8](WorkoutPlaylistController.isAudioPlayingNearby(), v3, 0);
  }
}

{
  v1 = v0[4];
  if (*(v1 + 120))
  {
    v2 = lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, 255, type metadata accessor for AudioRoutingControlManager);
    v3 = *(MEMORY[0x277D859E0] + 4);
    v4 = swift_task_alloc();
    v0[7] = v4;
    type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
    *v4 = v0;
    v4[1] = WorkoutPlaylistController.isAudioPlayingNearby();
    v6 = v0[4];

    return MEMORY[0x2822007B8](v0 + 8, v1, v2, 0xD000000000000026, 0x800000020B455B10, closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()partial apply, v6, v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = WorkoutPlaylistController.isAudioPlayingNearby();
    v8 = v0[4];

    return AudioRoutingControlManager.activate()();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = WorkoutPlaylistController.isAudioPlayingNearby();
  }

  else
  {
    v4 = *(v2 + 32);
    v5 = WorkoutPlaylistController.isAudioPlayingNearby();
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutPlaylistController.isAudioPlayingNearby(), v2, 0);
}

{
  return (*(v0 + 8))((*(v0 + 64) & 0xFE) == 2);
}

{
  v1 = *(v0 + 32);
  v2 = lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, 255, type metadata accessor for AudioRoutingControlManager);
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
  *v4 = v0;
  v4[1] = WorkoutPlaylistController.isAudioPlayingNearby();
  v6 = *(v0 + 32);

  return MEMORY[0x2822007B8](v0 + 64, v1, v2, 0xD000000000000026, 0x800000020B455B10, closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()partial apply, v6, v5);
}

{
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.audio);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[workoutmusic] isAudioPlayingNearby smart routing areHeadphonesNearbyAndEligibleToPlay error=%@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t WorkoutPlaylistController.isAudioPlayingNearby()(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7(0);
  }

  else
  {
    v9 = *(v4 + 16);
    *(v4 + 65) = a1 & 1;

    return MEMORY[0x2822009F8](WorkoutPlaylistController.isAudioPlayingNearby(), v9, 0);
  }
}

uint64_t WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby(), v0, 0);
}

{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9MPAVRouteCSgs5NeverOGMd, &_sSccySo9MPAVRouteCSgs5NeverOGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
  v0[13] = &block_descriptor_57_1;
  v0[14] = v2;
  [v1 getProactiveRouteWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby(), v1, 0);
}

{
  v1 = v0[18];
  v0[21] = v1;
  if (v1)
  {
    v2 = v0[20];
    v3 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
    v0[22] = v3;
    v4 = [objc_opt_self() pathWithRoute:v1 bundleID:0 playerID:0];
    [v3 setPlayerPath_];

    [v3 setQualityOfService_];
    v6 = lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(&lazy protocol witness table cache variable for type WorkoutPlaylistController and conformance WorkoutPlaylistController, v5, type metadata accessor for WorkoutPlaylistController);
    v7 = swift_task_alloc();
    v0[23] = v7;
    *(v7 + 16) = v3;
    v8 = *(MEMORY[0x277D85A40] + 4);
    v9 = swift_task_alloc();
    v0[24] = v9;
    v10 = type metadata accessor for MPCPlayerResponse(0, &lazy cache variable for type metadata for MPCPlayerResponse, 0x277D278F8);
    *v9 = v0;
    v9[1] = WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby();

    return MEMORY[0x2822008A0](v0 + 19, v2, v6, 0xD000000000000021, 0x800000020B46CD50, partial apply for closure #1 in WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby(), v7, v10);
  }

  else
  {
    lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = v0[1];

    return v12(0);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    v5 = WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby();
  }

  else
  {
    v6 = *(v2 + 184);
    v7 = *(v2 + 160);

    v5 = WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby();
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v22 = v0;
  v2 = v0[19];
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.audio);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    v9 = [v4 state];
    if (v9 <= 6)
    {
      v1 = off_277D8C598[v9];
      v10 = off_277D8C560[v9];
    }

    v11 = v1;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v21);

    *(v7 + 4) = v15;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[workoutmusic] media player audio_state=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v17 = v0[21];
  v16 = v0[22];
  v18 = [v4 state];

  v19 = v0[1];

  return v19((v18 < 6) & (0x2Cu >> v18));
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);

  v3 = *(v0 + 200);
  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t WorkoutPlaylistController.eligibleAudioRoute()()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 184) = v0;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](WorkoutPlaylistController.eligibleAudioRoute(), v0, 0);
}

{
  v4 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static AudioRoutingControlManager.shared;
  *(v0 + 192) = static AudioRoutingControlManager.shared;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](WorkoutPlaylistController.eligibleAudioRoute(), v1, 0);
}

{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[24];
  if (*(v1 + 120))
  {
    v2 = lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, 255, type metadata accessor for AudioRoutingControlManager);
    v3 = *(MEMORY[0x277D859E0] + 4);
    v4 = swift_task_alloc();
    v0[27] = v4;
    type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
    *v4 = v0;
    v4[1] = WorkoutPlaylistController.eligibleAudioRoute();
    v6 = v0[24];
    v7 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822007B8](v0 + 249, v1, v2, 0xD000000000000026, 0x800000020B455B10, _s11WorkoutCore26AudioRoutingControlManagerC36areHeadphonesNearbyAndEligibleToPlaySo07AASmartd6DeviceiJ15StreamingStatusVyYaKFyScCyAFs5NeverOGXEfU_TA_0, v6, v5);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[25] = v8;
    *v8 = v0;
    v8[1] = WorkoutPlaylistController.eligibleAudioRoute();
    v9 = v0[24];
    v10 = *MEMORY[0x277D85DE8];

    return AudioRoutingControlManager.activate()();
  }
}

{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 184);
    v5 = WorkoutPlaylistController.eligibleAudioRoute();
  }

  else
  {
    v4 = *(v2 + 192);
    v5 = WorkoutPlaylistController.eligibleAudioRoute();
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](WorkoutPlaylistController.eligibleAudioRoute(), v2, 0);
}

{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 184);
  *(v0 + 250) = *(v0 + 249);
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](WorkoutPlaylistController.eligibleAudioRoute(), v1, 0);
}

{
  v12 = *MEMORY[0x277D85DE8];
  if (*(v0 + 250) == 1)
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
      _os_log_impl(&dword_20AEA4000, v2, v3, "[workoutmusic] Smart routing has eligible audio route", v4, 2u);
      MEMORY[0x20F2E9420](v4, -1, -1);
    }

    v5 = *(v0 + 8);
    v6 = *MEMORY[0x277D85DE8];

    return v5(1);
  }

  else
  {
    v8 = objc_opt_self();
    *(v0 + 224) = v8;
    v9 = [v8 sharedInstance];
    *(v0 + 232) = v9;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 248;
    *(v0 + 24) = WorkoutPlaylistController.eligibleAudioRoute();
    v10 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
    *(v0 + 104) = &block_descriptor_51_2;
    *(v0 + 112) = v10;
    [v9 activateWithOptions:0x10000000 completionHandler:v0 + 80];
    v11 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200938](v0 + 16);
  }
}

{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, 255, type metadata accessor for AudioRoutingControlManager);
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
  *v4 = v0;
  v4[1] = WorkoutPlaylistController.eligibleAudioRoute();
  v6 = *(v0 + 192);
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822007B8](v0 + 249, v1, v2, 0xD000000000000026, 0x800000020B455B10, _s11WorkoutCore26AudioRoutingControlManagerC36areHeadphonesNearbyAndEligibleToPlaySo07AASmartd6DeviceiJ15StreamingStatusVyYaKFyScCyAFs5NeverOGXEfU_TA_0, v6, v5);
}

{
  v17 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.audio);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[workoutmusic] eligibleAudioRoute smart routing areHeadphonesNearbyAndEligibleToPlay error=%@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = objc_opt_self();
  v0[28] = v12;
  v13 = [v12 sharedInstance];
  v0[29] = v13;
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = WorkoutPlaylistController.eligibleAudioRoute();
  v14 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
  v0[13] = &block_descriptor_51_2;
  v0[14] = v14;
  [v13 activateWithOptions:0x10000000 completionHandler:v0 + 10];
  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 240) = v3;
  v4 = *(v1 + 184);
  if (v3)
  {
    v5 = WorkoutPlaylistController.eligibleAudioRoute();
  }

  else
  {
    v5 = WorkoutPlaylistController.eligibleAudioRoute();
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 248);

  if (v1 != 1)
  {
    v16 = *(v0 + 184);
    v17 = *(v16 + 113);
    *(v16 + 113) = 1;
    if ((v17 & 1) == 0)
    {
      v18 = *(v0 + 184);
      WorkoutPlaylistController.observePickableRoutesChanged(shouldObserve:)(1);
    }

    lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError();
    swift_allocError();
    *v19 = 2;
    goto LABEL_14;
  }

  v2 = [*(v0 + 224) sharedInstance];
  v3 = [v2 currentRoute];

  v4 = [v3 isDeviceSpeaker];
  if ((v4 & 1) == 0)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.audio);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20AEA4000, v24, v25, "[workoutmusic] Activated audio session has eligible audio route", v26, 2u);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    goto LABEL_20;
  }

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.audio);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20AEA4000, v6, v7, "[workoutmusic] Don't start music -- current route is device speaker", v8, 2u);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v9 = *(v0 + 184);

  v10 = *(v9 + 113);
  *(v9 + 113) = 1;
  if ((v10 & 1) == 0)
  {
    v11 = *(v0 + 184);
    WorkoutPlaylistController.observePickableRoutesChanged(shouldObserve:)(1);
  }

  v12 = [*(v0 + 224) sharedInstance];
  *(v0 + 176) = 0;
  v13 = [v12 setActive:0 error:v0 + 176];

  v14 = *(v0 + 176);
  if (!v13)
  {
    v29 = v14;
    _convertNSErrorToError(_:)();

LABEL_14:
    swift_willThrow();
    v20 = *(v0 + 8);
    v21 = *MEMORY[0x277D85DE8];
    v22 = 0;
    goto LABEL_21;
  }

  v15 = v14;
LABEL_20:
  v20 = *(v0 + 8);
  v27 = *MEMORY[0x277D85DE8];
  v22 = v4 ^ 1;
LABEL_21:

  return v20(v22);
}

{
  v26 = *MEMORY[0x277D85DE8];
  v1 = v0[29];
  v2 = v0[30];
  swift_willThrow();

  swift_getErrorValue();
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[20];
  v6 = Error.code.getter();
  if (v6 == 561145203 || v6 == 561015905)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v8 = v0[30];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.audio);
    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[30];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v13;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_20AEA4000, v11, v12, "[workoutmusic] Don't start music -- Audio session activation failure expected if no audio routes available. error=%@", v14, 0xCu);
      outlined destroy of NSObject?(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }
  }

  v18 = v0[23];
  v19 = *(v18 + 113);
  *(v18 + 113) = 1;
  if ((v19 & 1) == 0)
  {
    v20 = v0[23];
    WorkoutPlaylistController.observePickableRoutesChanged(shouldObserve:)(1);
  }

  v21 = v0[30];
  swift_willThrow();
  v22 = v0[30];
  v23 = v0[1];
  v24 = *MEMORY[0x277D85DE8];

  return v23(0);
}

uint64_t WorkoutPlaylistController.startWorkoutPlaylist()()
{
  *(v1 + 288) = v0;
  return MEMORY[0x2822009F8](WorkoutPlaylistController.startWorkoutPlaylist(), v0, 0);
}

{
  v1 = v0[36];
  if (*(v1 + 112))
  {
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
      _os_log_impl(&dword_20AEA4000, v3, v4, "[workoutmusic] Already starting workout playlist, do not start workout playlist.", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = 3;
    goto LABEL_7;
  }

  if (*(v1 + 120) > 4)
  {
    v22 = *(v1 + 113);
    *(v1 + 113) = 0;
    if (v22 == 1)
    {
      v23 = v0[36];
      WorkoutPlaylistController.observePickableRoutesChanged(shouldObserve:)(0);
    }

    if (one-time initialization token for audio == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v0[37] = __swift_project_value_buffer(v10, static WOLog.audio);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_20AEA4000, v11, v12, "[workoutmusic] Start workout playlist if audio route available and no audio playing nearby", v13, 2u);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  v14 = v0[36];

  HKSessionTrackerAriadneTrigger();
  *(v14 + 114) = 1;
  *(v1 + 112) = 1;
  v15 = *(v14 + 113);
  *(v14 + 113) = 0;
  if (v15 == 1)
  {
    v16 = v0[36];
    WorkoutPlaylistController.observePickableRoutesChanged(shouldObserve:)(0);
  }

  v17 = *(v1 + 120);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_29:
    swift_once();
LABEL_24:
    v24 = v0[36];
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.audio);

    v3 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    v27 = os_log_type_enabled(v3, v26);
    v28 = v0[36];
    if (v27)
    {
      v29 = swift_slowAlloc();
      *v29 = 134218240;
      *(v29 + 4) = *(v1 + 120);

      *(v29 + 12) = 2048;
      *(v29 + 14) = 5;
      _os_log_impl(&dword_20AEA4000, v3, v26, "[workoutmusic] Start workout playlist attempts=%ld exceed max_attempts=%ld, do not start workout playlist.", v29, 0x16u);
      MEMORY[0x20F2E9420](v29, -1, -1);
    }

    else
    {
      v30 = v0[36];
    }

    v6 = 8;
LABEL_7:

    lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }

  *(v1 + 120) = v19;
  v20 = swift_task_alloc();
  v0[38] = v20;
  *v20 = v0;
  v20[1] = WorkoutPlaylistController.startWorkoutPlaylist();
  v21 = v0[36];

  return WorkoutPlaylistController.shouldStartMusic()();
}

{
  if (*(v0 + 424) == 1)
  {
    v1 = *(v0 + 288);
    v2 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
    *(v0 + 320) = v2;
    [v2 setQualityOfService_];
    [v2 setPlayerPath_];
    v4 = lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(&lazy protocol witness table cache variable for type WorkoutPlaylistController and conformance WorkoutPlaylistController, v3, type metadata accessor for WorkoutPlaylistController);
    v5 = swift_task_alloc();
    *(v0 + 328) = v5;
    *(v5 + 16) = v2;
    v6 = *(MEMORY[0x277D85A40] + 4);
    v7 = swift_task_alloc();
    *(v0 + 336) = v7;
    v8 = type metadata accessor for MPCPlayerResponse(0, &lazy cache variable for type metadata for MPCPlayerResponse, 0x277D278F8);
    *v7 = v0;
    v7[1] = WorkoutPlaylistController.startWorkoutPlaylist();

    return MEMORY[0x2822008A0](v0 + 272, v1, v4, 0xD000000000000016, 0x800000020B46CBD0, partial apply for closure #1 in WorkoutPlaylistController.startWorkoutPlaylist(), v5, v8);
  }

  else
  {
    v9 = *(v0 + 296);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      _os_log_impl(&dword_20AEA4000, v10, v11, "[workoutmusic] workout playlist not starting -- should_start=%{BOOL}d", v12, 8u);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    v13 = *(v0 + 288);

    lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError();
    swift_allocError();
    *v14 = 7;
    swift_willThrow();
    *(v13 + 112) = 0;
    v15 = *(v0 + 8);

    return v15();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v9 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 288);
    v5 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  else
  {
    v6 = *(v2 + 328);
    v7 = *(v2 + 288);

    v5 = WorkoutPlaylistController.startWorkoutPlaylist();
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[34];
  v0[44] = v1;
  v0[35] = MEMORY[0x277D84F90];
  v2 = [v1 tracklist];
  v3 = [v2 repeatCommand];

  if (v3)
  {
    v4 = [v3 setRepeatType_];
    swift_unknownObjectRelease();
    if (v4)
    {
      v5 = v4;
      MEMORY[0x20F2E6F30]();
      if (*((v0[35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v0[35] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v6 = v0[35];
    }
  }

  v7 = [v1 play];
  if (v7)
  {
    v8 = v7;
    MEMORY[0x20F2E6F30]();
    if (*((v0[35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((v0[35] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v9 = v0[35];
  }

  v10 = objc_allocWithZone(MEMORY[0x277D278C0]);
  type metadata accessor for MPCPlayerResponse(0, &lazy cache variable for type metadata for MPCPlayerCommandRequest, 0x277D278C8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initWithCommandRequests_];
  v0[45] = v12;

  [v12 setOptions_];
  v0[2] = v0;
  v0[3] = WorkoutPlaylistController.startWorkoutPlaylist();
  v13 = swift_continuation_init();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[46] = v14;
  v0[25] = v14;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[21] = &block_descriptor_17_0;
  v0[22] = v13;
  [v12 performWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 376) = v3;
  v4 = *(v1 + 288);
  if (v3)
  {
    v5 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  else
  {
    v5 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);

  v3 = *(v0 + 296);
  if (*(v2 + 114) == 1)
  {
    HKSessionTrackerAriadneTrigger();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "[workoutmusic] Workout playlist started! Play command finished successfully.", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    v7 = *(v0 + 368);

    v8 = objc_opt_self();
    v9 = [v8 systemRoute];
    *(v0 + 384) = v9;
    v10 = MEMORY[0x20F2E6C00](0xD000000000000018, 0x800000020B46CBF0);
    *(v0 + 392) = v10;
    *(v0 + 80) = v0;
    *(v0 + 88) = WorkoutPlaylistController.startWorkoutPlaylist();
    v11 = swift_continuation_init();
    *(v0 + 264) = v7;
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 232) = &block_descriptor_21_4;
    *(v0 + 240) = v11;
    [v8 setActiveRoute:v9 reason:v10 completion:v0 + 208];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20AEA4000, v12, v13, "[workoutmusic] No longer in active once workout playlist started, stopping workout playlist.", v14, 2u);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    v15 = swift_task_alloc();
    *(v0 + 408) = v15;
    *v15 = v0;
    v15[1] = WorkoutPlaylistController.startWorkoutPlaylist();
    v16 = *(v0 + 288);

    return WorkoutPlaylistController.stopWorkoutPlaylist()();
  }
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 400) = v3;
  v4 = *(v1 + 288);
  if (v3)
  {
    v5 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  else
  {
    v5 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  *(*(v0 + 288) + 112) = 0;
  v3 = *(v0 + 8);

  return v3();
}

{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 288);
  if (v0)
  {
    v6 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  else
  {
    v6 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[40];
  v2 = v0[36];
  lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError();
  swift_allocError();
  *v3 = 4;
  swift_willThrow();

  *(v2 + 112) = 0;
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[39];
  v2 = v0[37];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[39];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 8) = 2112;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 10) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[workoutmusic] workout playlist not starting -- should_start=%{BOOL}d error=%@", v7, 0x12u);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = v0[39];
  v12 = v0[36];

  swift_willThrow();
  *(v12 + 112) = 0;
  v13 = v0[39];
  v14 = v0[1];

  return v14();
}

{
  v1 = v0[41];

  v2 = v0[43];
  v3 = v0[37];
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[workoutmusic] Workout playlist failed to start. Play command finished with error=%@.", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = v0[40];
  v12 = v0[36];

  swift_willThrow();
  *(v12 + 112) = 0;
  v13 = v0[1];

  return v13();
}

{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];
  swift_willThrow();

  v4 = v0[47];
  v5 = v0[37];
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[workoutmusic] Workout playlist failed to start. Play command finished with error=%@.", v9, 0xCu);
    outlined destroy of NSObject?(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v13 = v0[40];
  v14 = v0[36];

  swift_willThrow();
  *(v14 + 112) = 0;
  v15 = v0[1];

  return v15();
}

{
  v1 = *(v0 + 288);

  *(v1 + 112) = 0;
  v2 = *(v0 + 416);
  v3 = *(v0 + 8);

  return v3();
}

{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[37];
  swift_willThrow();

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[50];
  v10 = v0[40];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_20AEA4000, v6, v7, "[workoutmusic] Failed to set Watch as MPAV active route. Now Playing View may show incorrectly. error=%@", v11, 0xCu);
    outlined destroy of NSObject?(v12);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  else
  {
  }

  *(v0[36] + 112) = 0;
  v15 = v0[1];

  return v15();
}

uint64_t WorkoutPlaylistController.startWorkoutPlaylist()(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(v4 + 312) = v1;

  v7 = *(v4 + 288);
  if (v1)
  {
    v8 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  else
  {
    *(v4 + 424) = a1 & 1;
    v8 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  (*(v10 + 16))(aBlock - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPCPlayerResponse?, @guaranteed Error?) -> ();
  aBlock[3] = a5;
  v16 = _Block_copy(aBlock);

  v17 = [a2 performWithCompletion_];
  _Block_release(v16);
  return swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist()(void *a1, id a2, uint64_t a3, char a4)
{
  if (a1)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError();
      swift_allocError();
      v8 = v7;
      a2 = 0;
      *v8 = a4;
    }

    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t @objc closure #1 in WorkoutPlaylistController.startWorkoutPlaylist()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in WorkoutPlaylistController.startWorkoutPlaylist();

  return WorkoutPlaylistController.startWorkoutPlaylist()();
}

void WorkoutPlaylistController.observePickableRoutesChanged(shouldObserve:)(char a1)
{
  v2 = v1;
  v48[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.audio);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v48[0] = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 0x6E6976726573626FLL;
    }

    else
    {
      v9 = 0x73626F20706F7473;
    }

    if (a1)
    {
      v10 = 0xE900000000000067;
    }

    else
    {
      v10 = 0xEE00676E69767265;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v48);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[workoutmusic] %s pickableRoutesChanged notifications", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v12 = objc_opt_self();
  v13 = [v12 sharedInstance];
  v14 = v13;
  if (a1)
  {
    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSNotificationNameaGMd, &_ss23_ContiguousArrayStorageCySo18NSNotificationNameaGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_20B423A90;
      v16 = *MEMORY[0x277D26C68];
      *(v15 + 32) = *MEMORY[0x277D26C68];
      type metadata accessor for NSNotificationName(0);
      v17 = v16;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v19 = *MEMORY[0x277D26DD0];
      v48[0] = 0;
      v20 = [v14 setAttribute:isa forKey:v19 error:v48];

      v21 = v48[0];
      if (v20)
      {
        v22 = objc_opt_self();
        v23 = v21;
        v24 = [v22 defaultCenter];
        v25 = [v12 sharedInstance];
        [v24 addObserver:v2 selector:sel_handlePickableRoutesChangedNotification_ name:v17 object:v25];
LABEL_18:

LABEL_25:
        v47 = *MEMORY[0x277D85DE8];
        return;
      }

      v33 = v48[0];
      v34 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v35 = v34;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        v40 = v34;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v41;
        *v39 = v41;
        v42 = "[workoutmusic] could not subscribe to pickable routes did change. error=%@";
LABEL_23:
        _os_log_impl(&dword_20AEA4000, v36, v37, v42, v38, 0xCu);
        outlined destroy of NSObject?(v39);
        MEMORY[0x20F2E9420](v39, -1, -1);
        MEMORY[0x20F2E9420](v38, -1, -1);

        goto LABEL_25;
      }

      goto LABEL_24;
    }

    __break(1u);
  }

  else if (v13)
  {
    v26 = Array._bridgeToObjectiveC()().super.isa;
    v27 = *MEMORY[0x277D26DD0];
    v48[0] = 0;
    v28 = [v14 setAttribute:v26 forKey:v27 error:v48];

    v29 = v48[0];
    if (v28)
    {
      v30 = objc_opt_self();
      v31 = v29;
      v24 = [v30 defaultCenter];
      v32 = *MEMORY[0x277D26C68];
      v25 = [v12 sharedInstance];
      [v24 removeObserver:v2 name:v32 object:v25];
      goto LABEL_18;
    }

    v43 = v48[0];
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v44 = v34;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v45 = v34;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v46;
      *v39 = v46;
      v42 = "[workoutmusic] could not unsubscribe from pickable routes did change. error=%@";
      goto LABEL_23;
    }

LABEL_24:

    goto LABEL_25;
  }

  __break(1u);
}

uint64_t closure #1 in WorkoutPlaylistController.handlePickableRoutesChangedNotification(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutPlaylistController.handlePickableRoutesChangedNotification(_:);

  return WorkoutPlaylistController.pickableRoutesChanged()();
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t @objc WorkoutPlaylistController.handleAnnouncerWillStart(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Notification();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a5, v17);

  return (*(v12 + 8))(v15, v11);
}

uint64_t WorkoutPlaylistController.pickableRoutesChanged()()
{
  *(v1 + 312) = v0;
  return MEMORY[0x2822009F8](WorkoutPlaylistController.pickableRoutesChanged(), v0, 0);
}

{
  v108 = v0;
  v2 = v0[39];
  if ((*(v2 + 113) & 1) == 0)
  {
    v8 = v0[39];
    if (one-time initialization token for audio != -1)
    {
      swift_once();
      v101 = v0[39];
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.audio);

    v4 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v4, v10);
    v12 = v0[39];
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = *(v2 + 113);

      _os_log_impl(&dword_20AEA4000, v4, v10, "[workoutmusic] ignoring pickableRoutesChanged due to shouldPlayWhenRouteAvailable=%{BOOL}d", v13, 8u);
      v14 = v13;
LABEL_80:
      MEMORY[0x20F2E9420](v14, -1, -1);
      goto LABEL_81;
    }

    v91 = v0[39];

    goto LABEL_81;
  }

  if (*(v2 + 115) == 1)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.audio);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_81;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "[workoutmusic] ignoring pickableRoutesChanged due to workout voice feedback announcer is active";
    goto LABEL_79;
  }

  specialized static WOAVRoute.pickableRoutes(for:)(0x69562F6F69647541, 0xEB000000006F6564);
  v16 = v15;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v0[40] = __swift_project_value_buffer(v17, static WOLog.audio);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v107 = v21;
    *v20 = 136315138;
    v22 = type metadata accessor for WOAVRoute();
    v23 = MEMORY[0x20F2E6F70](v16, v22);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v107);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_20AEA4000, v18, v19, "[workoutmusic] pickableRoutesChanged pickableRoutes=%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x20F2E9420](v21, -1, -1);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  if (v16 >> 62)
  {
    v26 = __CocoaSet.count.getter();
    if (v26)
    {
      goto LABEL_17;
    }

    goto LABEL_77;
  }

  v26 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_77:

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "[workoutmusic] pickableRoutesChanged but no eligible audio route, not starting workout playlist";
LABEL_79:
      _os_log_impl(&dword_20AEA4000, v4, v5, v7, v6, 2u);
      v14 = v6;
      goto LABEL_80;
    }

LABEL_81:

    v102 = v0[1];

    return v102();
  }

LABEL_17:
  v27 = 0;
  v105 = v16 & 0xFFFFFFFFFFFFFF8;
  v106 = v16 & 0xC000000000000001;
  v103 = v26;
  v104 = v16;
  while (1)
  {
    if (v106)
    {
      v28 = MEMORY[0x20F2E7A20](v27, v16);
    }

    else
    {
      if (v27 >= *(v105 + 16))
      {
        goto LABEL_74;
      }

      v28 = *(v16 + 8 * v27 + 32);
    }

    v1 = v28;
    v0[41] = v28;
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    v30 = OBJC_IVAR____TtC11WorkoutCore9WOAVRoute_routeDictionary;
    v31 = *&v28[OBJC_IVAR____TtC11WorkoutCore9WOAVRoute_routeDictionary];
    v32 = *MEMORY[0x277D26CA8];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v31 + 16))
    {
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
      v37 = v36;

      if (v37)
      {
        outlined init with copy of Any(*(v31 + 56) + 32 * v35, (v0 + 2));
        if ((swift_dynamicCast() & 1) != 0 && v0[32] == 0x4274657364616548 && v0[33] == 0xE900000000000054)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v38 & 1) == 0)
    {
      v39 = *&v1[v30];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v39 + 16))
      {

LABEL_37:
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v45 & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_38;
      }

      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
      v44 = v43;

      if ((v44 & 1) == 0)
      {
        goto LABEL_37;
      }

      outlined init with copy of Any(*(v39 + 56) + 32 * v42, (v0 + 6));
      if ((swift_dynamicCast() & 1) == 0 || v0[30] != 0x6E6F687064616548 || v0[31] != 0xEC00000054427365)
      {
        goto LABEL_37;
      }

LABEL_35:
    }

LABEL_38:
    v46 = *&v1[v30];
    v47 = *MEMORY[0x277D26D00];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v46 + 16))
    {
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v49);
      v52 = v51;

      if (v52)
      {
        outlined init with copy of Any(*(v46 + 56) + 32 * v50, (v0 + 10));
        type metadata accessor for MPCPlayerResponse(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v53 = v0[38];
          v54 = [v53 BOOLValue];

          if (v54)
          {
            goto LABEL_68;
          }
        }
      }
    }

    else
    {
    }

    v55 = *&v1[v30];
    v56 = *MEMORY[0x277D26CC8];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v55 + 16))
    {
      goto LABEL_61;
    }

    v59 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v58);
    v61 = v60;

    if ((v61 & 1) == 0)
    {
      goto LABEL_62;
    }

    outlined init with copy of Any(*(v55 + 56) + 32 * v59, (v0 + 14));
    type metadata accessor for MPCPlayerResponse(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_62;
    }

    v62 = v0[34];
    v63 = [v62 BOOLValue];

    if ((v63 & 1) == 0)
    {
      goto LABEL_62;
    }

    v64 = *&v1[v30];
    v65 = *MEMORY[0x277D26CF0];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v64 + 16))
    {
      goto LABEL_67;
    }

    v68 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v67);
    v70 = v69;

    if ((v70 & 1) == 0)
    {
      goto LABEL_68;
    }

    outlined init with copy of Any(*(v64 + 56) + 32 * v68, (v0 + 18));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_68;
    }

    v71 = v0[35];
    v72 = [v71 BOOLValue];

    if ((v72 & 1) == 0)
    {
      goto LABEL_68;
    }

    v73 = *&v1[v30];
    v74 = *MEMORY[0x277D26CE8];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v73 + 16))
    {
LABEL_67:

      goto LABEL_68;
    }

    v77 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v76);
    v79 = v78;

    if ((v79 & 1) == 0)
    {
      goto LABEL_68;
    }

    outlined init with copy of Any(*(v73 + 56) + 32 * v77, (v0 + 22));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_68;
    }

    v80 = v0[36];
    v81 = [v80 BOOLValue];

    if ((v81 & 1) == 0)
    {
      goto LABEL_68;
    }

    v82 = *&v1[v30];
    v83 = *MEMORY[0x277D26CF8];
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v82 + 16))
    {
LABEL_61:

LABEL_62:

      v16 = v104;
      goto LABEL_63;
    }

    v86 = specialized __RawDictionaryStorage.find<A>(_:)(v84, v85);
    v88 = v87;

    if ((v88 & 1) == 0)
    {
      goto LABEL_62;
    }

    outlined init with copy of Any(*(v82 + 56) + 32 * v86, (v0 + 26));
    v16 = v104;
    if (swift_dynamicCast())
    {
      v89 = v0[37];
      v90 = [v89 BOOLValue];

      if (v90)
      {
        goto LABEL_68;
      }
    }

LABEL_63:
    ++v27;
    if (v29 == v103)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_68:

  v92 = v1;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v95 = 138412290;
    *(v95 + 4) = v92;
    *v96 = v92;
    v97 = v92;
    _os_log_impl(&dword_20AEA4000, v93, v94, "[workoutmusic] starting workout playlist as pickableRoutesChanged with eligible audio route=%@", v95, 0xCu);
    outlined destroy of NSObject?(v96);
    MEMORY[0x20F2E9420](v96, -1, -1);
    MEMORY[0x20F2E9420](v95, -1, -1);
  }

  v98 = swift_task_alloc();
  v0[42] = v98;
  *v98 = v0;
  v98[1] = WorkoutPlaylistController.pickableRoutesChanged();
  v99 = v0[39];

  return WorkoutPlaylistController.startWorkoutPlaylist()();
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 312);
  if (v0)
  {
    v6 = WorkoutPlaylistController.pickableRoutesChanged();
  }

  else
  {
    v6 = WorkoutPlaylistController.pickableRoutesChanged();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[40];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[41];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "[workoutmusic] pickableRoutesChanged startWorkoutPlaylist completed successfully", v6, 2u);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[43];
  v8 = v0[41];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[workoutmusic] pickableRoutesChanged startWorkoutPlaylist failed with error=%@", v9, 0xCu);
    outlined destroy of NSObject?(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();

  return MEMORY[0x2822009F8](closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist(), a4, 0);
}

uint64_t closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v0[6] = swift_unknownObjectWeakLoadStrong();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist(), v5, v4);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  if (v2)
  {
    [*(v0 + 48) resetPlaylistIfNeeded];
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t partial apply for closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist();

  return closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()(a1, v4, v5, v6);
}

uint64_t closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()partial apply;

  return closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()(a1, v4, v5, v6);
}

uint64_t closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()partial apply()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of WorkoutPlaylistController.stopWorkoutPlaylist()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x138);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of WorkoutPlaylistController.stopWorkoutPlaylist();

  return v6();
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of WorkoutPlaylistController.startWorkoutPlaylist()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x160);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of WorkoutPlaylistController.startWorkoutPlaylist();

  return v6();
}

uint64_t type metadata accessor for MPCPlayerResponse(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in WorkoutPlaylistController.handlePickableRoutesChangedNotification(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in WorkoutPlaylistController.handlePickableRoutesChangedNotification(_:);

  return closure #1 in WorkoutPlaylistController.handlePickableRoutesChangedNotification(_:)();
}

uint64_t partial apply for closure #1 in WorkoutPlaylistController.handleAnnouncerDidStop(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutPlaylistController.handleAnnouncerDidStop(_:);

  return closure #1 in WorkoutPlaylistController.handleAnnouncerDidStop(_:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_4Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in WorkoutPlaylistController.handleAnnouncerWillStart(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutPlaylistController.handleAnnouncerWillStart(_:);

  return closure #1 in WorkoutPlaylistController.handleAnnouncerWillStart(_:)(a1, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in WorkoutPlaylistController.startWorkoutPlaylist()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in WorkoutPlaylistController.startWorkoutPlaylist();

  return @objc closure #1 in WorkoutPlaylistController.startWorkoutPlaylist()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in WorkoutPlaylistController.shouldStartMusic()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in WorkoutPlaylistController.shouldStartMusic();

  return @objc closure #1 in WorkoutPlaylistController.shouldStartMusic()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA_104()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sIeghH_IeAgH_TRTA_104TQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_109(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeAgH_ytIeAgHr_TRTA_109TQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t objectdestroy_85Tm()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist();

  return @objc closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA_119()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sIeghH_IeAgH_TRTA_119TQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t objectdestroy_89Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeAgH_ytIeAgHr_TRTA_124TQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t objectdestroyTm_9()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t closure #1 in WorkoutPlaylistController.setDelegate(_:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = closure #1 in WorkoutPlaylistController.setDelegate(_:)partial apply;

  return closure #1 in WorkoutPlaylistController.setDelegate(_:)(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_135(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_61Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void thunk for @escaping @callee_guaranteed (@guaranteed MPCPlayerResponse?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t MediaPlaybackController.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = *(v0 + 112);

  v3 = *(v0 + 128);

  v4 = *(v0 + 168);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MediaPlaybackController.__deallocating_deinit()
{
  MediaPlaybackController.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t MediaPlaybackController.stopMediaPlayback()()
{
  v1[36] = v0;
  v2 = type metadata accessor for UUID();
  v1[37] = v2;
  v3 = *(v2 - 8);
  v1[38] = v3;
  v4 = *(v3 + 64) + 15;
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackController.stopMediaPlayback(), v0, 0);
}

{
  v67 = v0;
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v2 + 8))(v1, v3);
  v5 = specialized Collection.prefix(_:)(8);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v0[40] = v5;
  v0[41] = v7;
  v0[42] = v9;
  v0[43] = v11;
  v12 = *(v4 + 179);
  *(v4 + 179) = 0;
  if (v12 == 1)
  {
    v13 = v0[36];
    MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(0);
  }

  v14 = v0[36];
  *(v14 + 145) = 0;
  if (*(v14 + 160) == 1)
  {
    v15 = v0[36];
    v16 = *(v15 + 128);
    v0[44] = v16;
    if (v16)
    {
      v17 = *(MEMORY[0x277D857E0] + 4);

      v18 = swift_task_alloc();
      v0[45] = v18;
      *v18 = v0;
      v18[1] = MediaPlaybackController.stopMediaPlayback();
      v19 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200460](v18, v16, v19);
    }

    v32 = *(v15 + 120);
    v33 = v32;
    if (v32)
    {

      if (one-time initialization token for mediaPlayback != -1)
      {
        swift_once();
      }

      v34 = v0[43];
      v35 = type metadata accessor for Logger();
      v0[46] = __swift_project_value_buffer(v35, static WOLog.mediaPlayback);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v39 = v0[42];
        v38 = v0[43];
        v41 = v0[40];
        v40 = v0[41];
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v66 = v43;
        *v42 = 136315138;

        v44 = MEMORY[0x20F2E6D00](v41, v40, v39, v38);
        v46 = v45;

        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v66);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_20AEA4000, v36, v37, "[%s] Stop media playback if needed.", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x20F2E9420](v43, -1, -1);
        MEMORY[0x20F2E9420](v42, -1, -1);
      }

      v48 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
      v0[47] = v48;
      [v48 setQualityOfService_];
      v49 = objc_opt_self();
      v0[2] = v0;
      v0[7] = v0 + 34;
      v0[3] = MediaPlaybackController.stopMediaPlayback();
      v50 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9MPAVRouteCSgs5NeverOGMd, &_sSccySo9MPAVRouteCSgs5NeverOGMR);
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
      v0[21] = &block_descriptor_84;
      v0[22] = v50;
      [v49 getProactiveRouteWithCompletion_];

      return MEMORY[0x282200938](v0 + 2);
    }

    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v51 = v0[43];
    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static WOLog.mediaPlayback);

    v21 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    v54 = os_log_type_enabled(v21, v53);
    v55 = v0[43];
    if (v54)
    {
      v57 = v0[41];
      v56 = v0[42];
      v58 = v0[40];
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v66 = v60;
      *v59 = 136315138;
      v61 = MEMORY[0x20F2E6D00](v58, v57, v56, v55);
      v63 = v62;

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v66);

      *(v59 + 4) = v64;
      _os_log_impl(&dword_20AEA4000, v21, v53, "[%s] No need to stop music -- media playback configuration not set.", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x20F2E9420](v60, -1, -1);
      v29 = v59;
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static WOLog.mediaPlayback);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v21, v22))
  {
    goto LABEL_13;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v66 = v24;
  *v23 = 136315138;
  v25 = MEMORY[0x20F2E6D00](v5, v7, v9, v11);
  v27 = v26;

  v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v66);

  *(v23 + 4) = v28;
  _os_log_impl(&dword_20AEA4000, v21, v22, "[%s] No need to stop music -- media playback didn't occur.", v23, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v24);
  MEMORY[0x20F2E9420](v24, -1, -1);
  v29 = v23;
LABEL_12:
  MEMORY[0x20F2E9420](v29, -1, -1);

LABEL_14:
  v30 = v0[39];

  v31 = v0[1];

  return v31();
}

{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 288);
  v5 = *v0;

  return MEMORY[0x2822009F8](MediaPlaybackController.stopMediaPlayback(), v3, 0);
}

{
  v39 = v0;
  v1 = *(v0[36] + 120);
  v2 = v1;
  if (v1)
  {

    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v3 = v0[43];
    v4 = type metadata accessor for Logger();
    v0[46] = __swift_project_value_buffer(v4, static WOLog.mediaPlayback);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[42];
      v7 = v0[43];
      v10 = v0[40];
      v9 = v0[41];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v38 = v12;
      *v11 = 136315138;

      v13 = MEMORY[0x20F2E6D00](v10, v9, v8, v7);
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v38);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_20AEA4000, v5, v6, "[%s] Stop media playback if needed.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v17 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
    v0[47] = v17;
    [v17 setQualityOfService_];
    v18 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = MediaPlaybackController.stopMediaPlayback();
    v19 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9MPAVRouteCSgs5NeverOGMd, &_sSccySo9MPAVRouteCSgs5NeverOGMR);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
    v0[21] = &block_descriptor_84;
    v0[22] = v19;
    [v18 getProactiveRouteWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v20 = v0[43];
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.mediaPlayback);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[43];
    if (v24)
    {
      v27 = v0[41];
      v26 = v0[42];
      v28 = v0[40];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136315138;
      v31 = MEMORY[0x20F2E6D00](v28, v27, v26, v25);
      v33 = v32;

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v38);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_20AEA4000, v22, v23, "[%s] No need to stop music -- media playback configuration not set.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x20F2E9420](v30, -1, -1);
      MEMORY[0x20F2E9420](v29, -1, -1);
    }

    else
    {
    }

    v35 = v0[39];

    v36 = v0[1];

    return v36();
  }
}

{
  v1 = *(*v0 + 288);
  v3 = *v0;

  return MEMORY[0x2822009F8](MediaPlaybackController.stopMediaPlayback(), v1, 0);
}

{
  v1 = v0[34];
  v0[48] = v1;
  if (v1)
  {
    v2 = v0[47];
    v3 = v0[36];
    v4 = [objc_opt_self() pathWithRoute:v1 bundleID:0 playerID:0];
    [v2 setPlayerPath_];

    v6 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackController and conformance MediaPlaybackController, v5, type metadata accessor for MediaPlaybackController);
    v7 = swift_task_alloc();
    v0[49] = v7;
    *(v7 + 16) = v2;
    v8 = *(MEMORY[0x277D85A40] + 4);
    v9 = swift_task_alloc();
    v0[50] = v9;
    v10 = _sSo17MPCPlayerResponseCMaTm_0(0, &lazy cache variable for type metadata for MPCPlayerResponse, 0x277D278F8);
    *v9 = v0;
    v9[1] = MediaPlaybackController.stopMediaPlayback();

    return MEMORY[0x2822008A0](v0 + 35, v3, v6, 0xD000000000000013, 0x800000020B46CDF0, partial apply for closure #1 in MediaPlaybackController.stopMediaPlayback(), v7, v10);
  }

  else
  {
    v11 = v0[47];
    v12 = v0[43];

    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();

    v14 = v0[39];

    v15 = v0[1];

    return v15();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v9 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = *(v2 + 288);
    v5 = MediaPlaybackController.stopMediaPlayback();
  }

  else
  {
    v6 = *(v2 + 392);
    v7 = *(v2 + 288);

    v5 = MediaPlaybackController.stopMediaPlayback();
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[35];
  v0[52] = v1;
  v2 = [v1 stop];
  v0[53] = v2;
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_20B425990;
    *(v4 + 32) = v3;
    v5 = objc_allocWithZone(MEMORY[0x277D278C0]);
    _sSo17MPCPlayerResponseCMaTm_0(0, &lazy cache variable for type metadata for MPCPlayerCommandRequest, 0x277D278C8);
    v6 = v3;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v5 initWithCommandRequests_];
    v0[54] = v8;

    [v8 setOptions_];
    v0[10] = v0;
    v0[11] = MediaPlaybackController.stopMediaPlayback();
    v9 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[29] = &block_descriptor_7_1;
    v0[30] = v9;
    [v8 performWithCompletion_];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {
    v10 = v0[43];

    v11 = swift_task_alloc();
    v0[56] = v11;
    *v11 = v0;
    v11[1] = MediaPlaybackController.stopMediaPlayback();
    v12 = v0[36];

    return MediaPlaybackController.resetPlaybackController()();
  }
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 440) = v3;
  v4 = *(v1 + 288);
  if (v3)
  {
    v5 = MediaPlaybackController.stopMediaPlayback();
  }

  else
  {
    v5 = MediaPlaybackController.stopMediaPlayback();
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v25 = v0;
  v1 = v0[46];
  v2 = v0[43];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[53];
  v6 = v0[54];
  v8 = v0[52];
  v9 = v0[43];
  if (v5)
  {
    v23 = v0[54];
    v11 = v0[41];
    v10 = v0[42];
    v12 = v0[40];
    v22 = v0[52];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    v15 = MEMORY[0x20F2E6D00](v12, v11, v10, v9);
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[%s] Media playback stopped.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  else
  {
  }

  v19 = swift_task_alloc();
  v0[56] = v19;
  *v19 = v0;
  v19[1] = MediaPlaybackController.stopMediaPlayback();
  v20 = v0[36];

  return MediaPlaybackController.resetPlaybackController()();
}

{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return MEMORY[0x2822009F8](MediaPlaybackController.stopMediaPlayback(), v2, 0);
}

{
  v1 = *(v0 + 384);

  v2 = *(v0 + 312);

  v3 = *(v0 + 8);

  return v3();
}

{
  v28 = v0;
  v1 = v0[49];

  v2 = v0[51];
  v3 = v0[46];
  v4 = v0[43];

  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[43];
  if (v8)
  {
    v10 = v0[41];
    v26 = v0[42];
    v11 = v0[40];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v12 = 136315394;
    v15 = MEMORY[0x20F2E6D00](v11, v10, v26, v9);
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v27);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    v19 = v2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v13 = v20;
    _os_log_impl(&dword_20AEA4000, v6, v7, "[%s] Media playback failed to stop. Stop command finished with error=%@.", v12, 0x16u);
    outlined destroy of NSObject?(v13);
    MEMORY[0x20F2E9420](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  else
  {
  }

  v22 = v0[47];
  v21 = v0[48];
  swift_willThrow();

  v23 = v0[39];

  v24 = v0[1];

  return v24();
}

{
  v31 = v0;
  v1 = v0[54];
  v2 = v0[55];
  v4 = v0[52];
  v3 = v0[53];
  swift_willThrow();

  v5 = v0[55];
  v6 = v0[46];
  v7 = v0[43];

  v8 = v5;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[43];
  if (v11)
  {
    v13 = v0[41];
    v29 = v0[42];
    v14 = v0[40];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v15 = 136315394;
    v18 = MEMORY[0x20F2E6D00](v14, v13, v29, v12);
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v30);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2112;
    v22 = v5;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v23;
    *v16 = v23;
    _os_log_impl(&dword_20AEA4000, v9, v10, "[%s] Media playback failed to stop. Stop command finished with error=%@.", v15, 0x16u);
    outlined destroy of NSObject?(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  else
  {
  }

  v25 = v0[47];
  v24 = v0[48];
  swift_willThrow();

  v26 = v0[39];

  v27 = v0[1];

  return v27();
}

uint64_t @objc closure #1 in MediaPlaybackController.stopMediaPlayback()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in MediaPlaybackController.stopMediaPlayback();

  return MediaPlaybackController.stopMediaPlayback()();
}

uint64_t @objc closure #1 in MediaPlaybackController.stopMediaPlayback()()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t closure #1 in MediaPlaybackController.setActivityType(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in MediaPlaybackController.setActivityType(_:), a4, 0);
}

uint64_t closure #1 in MediaPlaybackController.setActivityType(_:)()
{
  v1 = *(v0 + 16);
  MediaPlaybackController.updateActivityType(to:)(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

void MediaPlaybackController.updateActivityType(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v82 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v8 + 8))(v11, v7);
  v12 = specialized Collection.prefix(_:)(8);
  v87 = v13;
  v15 = v14;
  v17 = v16;

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static WOLog.mediaPlayback);
  v20 = a1;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v85 = v20;

  v23 = os_log_type_enabled(v21, v22);
  v86 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v89 = v25;
    *v24 = 136315394;

    v26 = MEMORY[0x20F2E6D00](v12, v87, v15, v17);
    v82 = v12;
    v83 = v19;
    v27 = v15;
    v29 = v28;

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v29, &v89);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    v88 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
    v31 = Optional.description.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v89);

    *(v24 + 14) = v33;
    v15 = v27;
    v12 = v82;
    v19 = v83;
    _os_log_impl(&dword_20AEA4000, v21, v22, "[%s] Updating activity type to: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v25, -1, -1);
    v34 = v24;
    a1 = v86;
    MEMORY[0x20F2E9420](v34, -1, -1);
  }

  v35 = v2[16];
  if (v35)
  {

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v89 = v39;
      *v38 = 136315138;

      v40 = MEMORY[0x20F2E6D00](v12, v87, v15, v17);
      v82 = v15;
      v83 = v19;
      v41 = v40;
      v42 = v12;
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v44, &v89);
      v12 = v42;

      *(v38 + 4) = v45;
      v15 = v82;
      _os_log_impl(&dword_20AEA4000, v36, v37, "[%s] Cancelling previous media configuration fetch task", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      v46 = v39;
      a1 = v86;
      MEMORY[0x20F2E9420](v46, -1, -1);
      MEMORY[0x20F2E9420](v38, -1, -1);
    }

    MEMORY[0x20F2E7170](v35, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);

    v47 = v2[16];
  }

  v2[16] = 0;

  v48 = v2[17];
  v2[17] = a1;

  v49 = v2[15];
  v2[15] = 0;
  v50 = v85;

  if (a1)
  {
    v51 = v50;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v89 = v85;
      *v54 = 136315394;

      v55 = MEMORY[0x20F2E6D00](v12, v87, v15, v17);
      v56 = v51;
      v57 = v12;
      v58 = v15;
      v59 = v55;
      v61 = v60;

      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v89);

      *(v54 + 4) = v62;
      v15 = v58;
      v12 = v57;
      v51 = v56;
      *(v54 + 12) = 2112;
      *(v54 + 14) = v56;
      v63 = v83;
      *v83 = v86;
      v64 = v51;
      _os_log_impl(&dword_20AEA4000, v52, v53, "[%s] Starting new media configuration fetch task for %@", v54, 0x16u);
      outlined destroy of NSObject?(v63);
      MEMORY[0x20F2E9420](v63, -1, -1);
      v65 = v85;
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x20F2E9420](v65, -1, -1);
      MEMORY[0x20F2E9420](v54, -1, -1);
    }

    v66 = type metadata accessor for TaskPriority();
    v67 = v84;
    (*(*(v66 - 8) + 56))(v84, 1, 1, v66);
    v69 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackController and conformance MediaPlaybackController, v68, type metadata accessor for MediaPlaybackController);
    v70 = swift_allocObject();
    v70[2] = v2;
    v70[3] = v69;
    v71 = v87;
    v70[4] = v12;
    v70[5] = v71;
    v70[6] = v15;
    v70[7] = v17;
    v70[8] = v51;
    v70[9] = v2;
    swift_retain_n();
    v72 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v67, &async function pointer to partial apply for closure #1 in MediaPlaybackController.updateActivityType(to:), v70);
    v73 = v2[16];
    v2[16] = v72;
  }

  else
  {
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v89 = v77;
      *v76 = 136315138;
      v78 = MEMORY[0x20F2E6D00](v12, v87, v15, v17);
      v80 = v79;

      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v89);

      *(v76 + 4) = v81;
      _os_log_impl(&dword_20AEA4000, v74, v75, "[%s] Activity type reset to nil, no fetch needed", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x20F2E9420](v77, -1, -1);
      MEMORY[0x20F2E9420](v76, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in MediaPlaybackController.updateActivityType(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a8;
  v8[20] = v17;
  v8[17] = a6;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a5;
  v9 = type metadata accessor for CancellationError();
  v8[21] = v9;
  v10 = *(v9 - 8);
  v8[22] = v10;
  v11 = *(v10 + 64) + 15;
  v8[23] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v8[24] = v12;
  v13 = *(v12 - 8);
  v8[25] = v13;
  v14 = *(v13 + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MediaPlaybackController.updateActivityType(to:), v17, 0);
}

uint64_t closure #1 in MediaPlaybackController.updateActivityType(to:)()
{
  v27 = v0;
  v1 = v0[28];
  Date.init()();
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v3 = v0[18];
  v2 = v0[19];
  v4 = type metadata accessor for Logger();
  v0[29] = __swift_project_value_buffer(v4, static WOLog.mediaPlayback);

  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[19];
    v25 = v0[18];
    v9 = v0[16];
    v10 = v0[17];
    v11 = v0[15];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v12 = 136315394;
    v15 = MEMORY[0x20F2E6D00](v11, v9, v10, v25);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v26);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *v13 = v8;
    v18 = v8;
    _os_log_impl(&dword_20AEA4000, v6, v7, "[%s] Fetching media playback configuration for activityType: %@", v12, 0x16u);
    outlined destroy of NSObject?(v13);
    MEMORY[0x20F2E9420](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  v19 = v0[27];
  v20 = v0[20];
  Date.init()();
  v21 = *(v20 + 112);
  v22 = swift_task_alloc();
  v0[30] = v22;
  *v22 = v0;
  v22[1] = closure #1 in MediaPlaybackController.updateActivityType(to:);
  v23 = v0[19];

  return MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:)(v23);
}

{
  v165 = v0;
  v1 = *(v0 + 232);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 144);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v8 = v7;
  v9 = *(v5 + 8);
  v9(v3, v4);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v164[0] = v17;
    *v16 = 136315394;
    v18 = MEMORY[0x20F2E6D00](v15, v14, v13, v12);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v164);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D839F8];
    *(v21 + 16) = xmmword_20B423A90;
    v23 = MEMORY[0x277D83A80];
    *(v21 + 56) = v22;
    *(v21 + 64) = v23;
    *(v21 + 32) = v8;
    v24 = String.init(format:_:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v164);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_20AEA4000, v10, v11, "[%s] MediaPlaybackStore.fetchMediaPlaybackConfiguration returned in %ss", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  v27 = *(v0 + 256);
  static Task<>.checkCancellation()();
  v28 = *(v0 + 248);
  if (v27)
  {
    v9(*(v0 + 216), *(v0 + 192));

    v29 = *(v0 + 184);
    v30 = *(v0 + 168);
    *(v0 + 88) = v27;
    v31 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v32 = swift_dynamicCast();
    v33 = *(v0 + 232);
    if (v32)
    {
      v35 = *(v0 + 144);
      v34 = *(v0 + 152);

      v36 = v34;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = *(v0 + 152);
        v40 = *(v0 + 128);
        v157 = *(v0 + 136);
        v159 = *(v0 + 144);
        v41 = v9;
        v42 = *(v0 + 120);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v164[0] = v45;
        *v43 = 136315394;
        v46 = v42;
        v9 = v41;
        v47 = MEMORY[0x20F2E6D00](v46, v40, v157, v159);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v164);

        *(v43 + 4) = v49;
        *(v43 + 12) = 2112;
        *(v43 + 14) = v39;
        *v44 = v39;
        v50 = v39;
        _os_log_impl(&dword_20AEA4000, v37, v38, "[%s] Fetch for %@ was cancelled.", v43, 0x16u);
        outlined destroy of NSObject?(v44);
        MEMORY[0x20F2E9420](v44, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x20F2E9420](v45, -1, -1);
        MEMORY[0x20F2E9420](v43, -1, -1);
      }

      (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    }

    else
    {
      v78 = *(v0 + 144);

      v79 = v27;
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v80, v81))
      {
        v158 = *(v0 + 136);
        v161 = *(v0 + 144);
        v82 = v9;
        v83 = *(v0 + 120);
        v84 = *(v0 + 128);
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v164[0] = v87;
        *v85 = 136315394;
        v88 = v84;
        v9 = v82;
        v89 = MEMORY[0x20F2E6D00](v83, v88, v158, v161);
        v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, v164);

        *(v85 + 4) = v91;
        *(v85 + 12) = 2112;
        v92 = v27;
        v93 = _swift_stdlib_bridgeErrorToNSError();
        *(v85 + 14) = v93;
        *v86 = v93;
        _os_log_impl(&dword_20AEA4000, v80, v81, "[%s] Error fetching media playback configuration: %@", v85, 0x16u);
        outlined destroy of NSObject?(v86);
        MEMORY[0x20F2E9420](v86, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v87);
        MEMORY[0x20F2E9420](v87, -1, -1);
        MEMORY[0x20F2E9420](v85, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    v51 = *(v0 + 232);
    v53 = *(v0 + 152);
    v52 = *(v0 + 160);
    v54 = *(v0 + 144);
    v55 = *(v52 + 120);
    *(v52 + 120) = v28;
    v56 = v28;

    v57 = v56;

    v58 = v53;
    v59 = v57;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 248);
    v64 = &unk_27C729000;
    if (v62)
    {
      v65 = *(v0 + 144);
      v66 = *(v0 + 152);
      v68 = *(v0 + 128);
      v67 = *(v0 + 136);
      v160 = v9;
      v69 = *(v0 + 120);
      v70 = swift_slowAlloc();
      v151 = v61;
      v71 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v164[0] = v154;
      *v70 = 136315906;
      v72 = MEMORY[0x20F2E6D00](v69, v68, v67, v65);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v164);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2112;
      *(v70 + 14) = v66;
      *v71 = v66;
      *(v70 + 22) = 1024;
      swift_getKeyPath();
      *(v0 + 104) = v63;
      lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem);
      v75 = v66;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v76 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
      swift_beginAccess();
      LODWORD(v76) = v63[v76];

      *(v70 + 24) = v76;
      *(v70 + 28) = 1024;
      swift_getKeyPath();
      *(v0 + 112) = v63;
      v9 = v160;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v77 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
      swift_beginAccess();
      LODWORD(v77) = v63[v77];

      *(v70 + 30) = v77;
      v64 = &unk_27C729000;

      _os_log_impl(&dword_20AEA4000, v60, v151, "[%s] Loaded media configuration for activityType: %@ - autoPlay: %{BOOL}d, smartStation: %{BOOL}d", v70, 0x22u);
      outlined destroy of NSObject?(v71);
      MEMORY[0x20F2E9420](v71, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v154);
      MEMORY[0x20F2E9420](v154, -1, -1);
      MEMORY[0x20F2E9420](v70, -1, -1);
    }

    else
    {
    }

    v94 = *(v0 + 248);
    swift_getKeyPath();
    v95 = v64[292];
    *(v0 + 96) = v94;
    lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v96 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
    swift_beginAccess();
    v97 = *(v94 + v96);
    v98 = *(v0 + 232);
    v99 = *(v0 + 144);
    if (v97)
    {

      v100 = v97;
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v101, v102))
      {
        v162 = v9;
        v104 = *(v0 + 136);
        v103 = *(v0 + 144);
        v106 = *(v0 + 120);
        v105 = *(v0 + 128);
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v164[0] = v108;
        *v107 = 136315650;
        v109 = MEMORY[0x20F2E6D00](v106, v105, v104, v103);
        v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, v164);

        *(v107 + 4) = v111;
        *(v107 + 12) = 2080;
        v112 = [v100 title];
        if (v112)
        {
          v113 = v112;
          v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v116 = v115;
        }

        else
        {
          v116 = 0xE700000000000000;
          v114 = 0x6E776F6E6B6E75;
        }

        v156 = *(v0 + 216);
        v150 = *(v0 + 248);
        v153 = *(v0 + 192);
        v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v116, v164);

        *(v107 + 14) = v137;
        *(v107 + 22) = 2080;
        v138 = [v100 bundleID];
        v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v141 = v140;

        v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v141, v164);

        *(v107 + 24) = v142;
        _os_log_impl(&dword_20AEA4000, v101, v102, "[%s] Configuration has media suggestion: %s from %s", v107, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v108, -1, -1);
        MEMORY[0x20F2E9420](v107, -1, -1);

        v9 = v162;
        v162(v156, v153);
        goto LABEL_25;
      }

      v133 = *(v0 + 216);
      v134 = *(v0 + 192);

      v135 = v133;
      v136 = v134;
    }

    else
    {

      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.default.getter();

      v119 = os_log_type_enabled(v117, v118);
      v120 = *(v0 + 216);
      v121 = *(v0 + 192);
      if (v119)
      {
        v123 = *(v0 + 136);
        v122 = *(v0 + 144);
        v163 = *(v0 + 192);
        v124 = v9;
        v126 = *(v0 + 120);
        v125 = *(v0 + 128);
        v155 = *(v0 + 248);
        v127 = swift_slowAlloc();
        v152 = v120;
        v128 = swift_slowAlloc();
        v164[0] = v128;
        *v127 = 136315138;
        v129 = v126;
        v9 = v124;
        v130 = MEMORY[0x20F2E6D00](v129, v125, v123, v122);
        v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, v164);

        *(v127 + 4) = v132;
        _os_log_impl(&dword_20AEA4000, v117, v118, "[%s] Configuration has no media suggestion", v127, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v128);
        MEMORY[0x20F2E9420](v128, -1, -1);
        MEMORY[0x20F2E9420](v127, -1, -1);

        v124(v152, v163);
        goto LABEL_25;
      }

      v135 = v120;
      v136 = v121;
    }

    v9(v135, v136);
  }

LABEL_25:
  v143 = *(v0 + 224);
  v145 = *(v0 + 200);
  v144 = *(v0 + 208);
  v147 = *(v0 + 184);
  v146 = *(v0 + 192);
  $defer #1 () in closure #1 in MediaPlaybackController.updateActivityType(to:)(*(v0 + 160), v143, *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  v9(v143, v146);

  v148 = *(v0 + 8);

  return v148();
}

{
  v52 = v0;
  v1 = *(*(v0 + 200) + 8);
  v1(*(v0 + 216), *(v0 + 192));
  v2 = *(v0 + 256);
  *(v0 + 88) = v2;
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = swift_dynamicCast();
  v7 = *(v0 + 232);
  if (v6)
  {
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);

    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 152);
      v47 = *(v0 + 144);
      v49 = v1;
      v14 = *(v0 + 128);
      v15 = *(v0 + 136);
      v16 = *(v0 + 120);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v51 = v19;
      *v17 = 136315394;
      v20 = MEMORY[0x20F2E6D00](v16, v14, v15, v47);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v51);

      *(v17 + 4) = v22;
      v1 = v49;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v13;
      *v18 = v13;
      v23 = v13;
      _os_log_impl(&dword_20AEA4000, v11, v12, "[%s] Fetch for %@ was cancelled.", v17, 0x16u);
      outlined destroy of NSObject?(v18);
      MEMORY[0x20F2E9420](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x20F2E9420](v19, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    v24 = *(v0 + 88);
  }

  else
  {
    v25 = *(v0 + 144);

    v26 = v2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 136);
      v48 = *(v0 + 144);
      v50 = v1;
      v30 = *(v0 + 120);
      v31 = *(v0 + 128);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51 = v34;
      *v32 = 136315394;
      v35 = MEMORY[0x20F2E6D00](v30, v31, v29, v48);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v51);
      v1 = v50;

      *(v32 + 4) = v37;
      *(v32 + 12) = 2112;
      v38 = v2;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v39;
      *v33 = v39;
      _os_log_impl(&dword_20AEA4000, v27, v28, "[%s] Error fetching media playback configuration: %@", v32, 0x16u);
      outlined destroy of NSObject?(v33);
      MEMORY[0x20F2E9420](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x20F2E9420](v34, -1, -1);
      MEMORY[0x20F2E9420](v32, -1, -1);

      goto LABEL_9;
    }

    v24 = v2;
  }

LABEL_9:
  v40 = *(v0 + 224);
  v42 = *(v0 + 200);
  v41 = *(v0 + 208);
  v44 = *(v0 + 184);
  v43 = *(v0 + 192);
  $defer #1 () in closure #1 in MediaPlaybackController.updateActivityType(to:)(*(v0 + 160), v40, *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  v1(v40, v43);

  v45 = *(v0 + 8);

  return v45();
}