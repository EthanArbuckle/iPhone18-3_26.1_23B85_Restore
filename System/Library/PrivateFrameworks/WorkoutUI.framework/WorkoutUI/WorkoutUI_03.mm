uint64_t SessionViewModel.safetyCheckInViewDismissed.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;
  sub_20C675F90(*v4);
  return v5;
}

uint64_t closure #1 in SessionViewModel.safetyCheckInViewDismissed.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  v7 = *v6;
  *v6 = a2;
  v6[1] = a3;
  sub_20C675F90(a2);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
}

void (*SessionViewModel.mirroredEndWorkoutTimeoutAlertDismissed.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = SessionViewModel._mirroredEndWorkoutTimeoutAlertDismissed.modify();
  return SessionViewModel.mirroredEndWorkoutTimeoutAlertDismissed.modify;
}

uint64_t closure #1 in SessionViewModel.showHeartRateDeviceDisconnectedAlert.setter(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__showHeartRateDeviceDisconnectedAlert;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*SessionViewModel.showHeartRateDeviceDisconnectedAlert.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = SessionViewModel._showHeartRateDeviceDisconnectedAlert.modify();
  return SessionViewModel.showHeartRateDeviceDisconnectedAlert.modify;
}

uint64_t SessionViewModel.__allocating_init(workoutConfiguration:startSource:currentView:countdownBeginSequence:usePrecisionStart:supportsTapToSkipCountdown:safetyMonitorManager:safetyCheckIn:)(uint64_t a1, uint64_t a2, char *a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v16 = *a3;
  v17 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__alertStackRequest;
  v18 = type metadata accessor for MirroredHostAlertStackRequest();
  (*(*(v18 - 8) + 56))(v15 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__summaryUpdate;
  v20 = type metadata accessor for MirroredHostSummaryUpdate();
  (*(*(v20 - 8) + 56))(v15 + v19, 1, 1, v20);
  v21 = (v15 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckInViewDismissed);
  *v21 = 0;
  v21[1] = 0;
  *(v15 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__mirroredEndWorkoutTimeoutAlert) = 0;
  v22 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__workoutBuddyState;
  v23 = *MEMORY[0x277D7DB98];
  v24 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  (*(*(v24 - 8) + 104))(v15 + v22, v23, v24);
  v25 = (v15 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__mirroredEndWorkoutTimeoutAlertDismissed);
  *v25 = 0;
  v25[1] = 0;
  *(v15 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__showHeartRateDeviceDisconnectedAlert) = 0;
  ObservationRegistrar.init()();
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 17) = v16;
  *(v15 + 16) = a4;
  *(v15 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__supportsTapToSkipCountdown) = a6;
  *(v15 + 18) = a5;
  *(v15 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyMonitorManager) = a7;
  *(v15 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckIn) = a8;
  return v15;
}

uint64_t SessionViewModel.init(workoutConfiguration:startSource:currentView:countdownBeginSequence:usePrecisionStart:supportsTapToSkipCountdown:safetyMonitorManager:safetyCheckIn:)(uint64_t a1, uint64_t a2, char *a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  v15 = *a3;
  v16 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__alertStackRequest;
  v17 = type metadata accessor for MirroredHostAlertStackRequest();
  (*(*(v17 - 8) + 56))(v8 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__summaryUpdate;
  v19 = type metadata accessor for MirroredHostSummaryUpdate();
  (*(*(v19 - 8) + 56))(v8 + v18, 1, 1, v19);
  v20 = (v8 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckInViewDismissed);
  *v20 = 0;
  v20[1] = 0;
  *(v8 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__mirroredEndWorkoutTimeoutAlert) = 0;
  v21 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__workoutBuddyState;
  v22 = *MEMORY[0x277D7DB98];
  v23 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  (*(*(v23 - 8) + 104))(v8 + v21, v22, v23);
  v24 = (v8 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__mirroredEndWorkoutTimeoutAlertDismissed);
  *v24 = 0;
  v24[1] = 0;
  *(v8 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__showHeartRateDeviceDisconnectedAlert) = 0;
  ObservationRegistrar.init()();
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 17) = v15;
  *(v8 + 16) = a4;
  *(v8 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__supportsTapToSkipCountdown) = a6;
  *(v8 + 18) = a5;
  *(v8 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyMonitorManager) = a7;
  *(v8 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckIn) = a8;
  return v8;
}

uint64_t SessionViewModel.pauseResumeAction(workoutStatePublisher:)@<X0>(char *a1@<X8>)
{
  if (WorkoutStatePublisher.workoutStarted.getter())
  {
    result = WorkoutStatePublisher.workoutPaused.getter();
    if (result)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    swift_getKeyPath();
    lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    result = swift_beginAccess();
    if (*(v1 + 18))
    {
      v4 = 0;
    }

    else
    {
      v4 = 2;
    }
  }

  *a1 = v4;
  return result;
}

unint64_t SessionViewModel.pauseResumeLocKey(workoutStatePublisher:)()
{
  v0 = 0xD000000000000011;
  if (WorkoutStatePublisher.workoutStarted.getter())
  {
    if (WorkoutStatePublisher.workoutPaused.getter())
    {
      return 0xD000000000000012;
    }
  }

  else
  {
    swift_getKeyPath();
    lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, type metadata accessor for SessionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
  }

  return v0;
}

uint64_t SessionViewModel.deinit()
{
  outlined destroy of MirroredHostAlertStackRequest?(v0 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__alertStackRequest, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  outlined destroy of MirroredHostAlertStackRequest?(v0 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__summaryUpdate, &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckInViewDismissed));
  v1 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__workoutBuddyState;
  v2 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__mirroredEndWorkoutTimeoutAlertDismissed));
  v3 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SessionViewModel.__deallocating_deinit()
{
  SessionViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized SessionViewModel.__allocating_init()()
{
  started = static MirroredHostStartConfiguration.defaultWorkoutConfiguration.getter();
  v1 = [objc_allocWithZone(type metadata accessor for SafetyMonitorManager()) init];
  v2 = [objc_allocWithZone(type metadata accessor for WorkoutSafetyCheckIn()) init];
  type metadata accessor for SessionViewModel();
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__alertStackRequest;
  v5 = type metadata accessor for MirroredHostAlertStackRequest();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__summaryUpdate;
  v7 = type metadata accessor for MirroredHostSummaryUpdate();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = (v3 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckInViewDismissed);
  *v8 = 0;
  v8[1] = 0;
  *(v3 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__mirroredEndWorkoutTimeoutAlert) = 0;
  v9 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__workoutBuddyState;
  v10 = *MEMORY[0x277D7DB98];
  v11 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  (*(*(v11 - 8) + 104))(v3 + v9, v10, v11);
  v12 = (v3 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__mirroredEndWorkoutTimeoutAlertDismissed);
  *v12 = 0;
  v12[1] = 0;
  *(v3 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__showHeartRateDeviceDisconnectedAlert) = 0;
  ObservationRegistrar.init()();
  *(v3 + 24) = started;
  *(v3 + 32) = 1;
  *(v3 + 16) = 0;
  *(v3 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__supportsTapToSkipCountdown) = 0;
  *(v3 + 18) = 0;
  *(v3 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyMonitorManager) = v1;
  *(v3 + OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckIn) = v2;
  return v3;
}

uint64_t type metadata accessor for SessionViewModel()
{
  result = type metadata singleton initialization cache for SessionViewModel;
  if (!type metadata singleton initialization cache for SessionViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  return MEMORY[0x2821AB2D8]();
}

uint64_t _s9WorkoutUI16SessionViewModelC22countdownBeginSequenceSbvsyyXEfU_TA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t _s9WorkoutUI16SessionViewModelC07currentD0AA0c7CurrentD0OvsyyXEfU_TA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 17) = v2;
  return result;
}

uint64_t partial apply for closure #1 in SessionViewModel.usePrecisionStart.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 18) = v2;
  return result;
}

uint64_t partial apply for closure #1 in SessionViewModel.startSource.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 32) = v1;
  return result;
}

uint64_t specialized SessionViewModel.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MirroredHostAlertStackRequest();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredHostAlertStackRequestVSg_ADtMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of MirroredHostAlertStackRequest?(a1, &v21 - v13, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  outlined init with copy of MirroredHostAlertStackRequest?(a2, &v14[v15], &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    outlined init with copy of MirroredHostAlertStackRequest?(v14, v10, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest, MEMORY[0x277D7E620]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      outlined destroy of MirroredHostAlertStackRequest?(v14, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of MirroredHostAlertStackRequest?(v14, &_s11WorkoutCore29MirroredHostAlertStackRequestVSg_ADtMd);
    v17 = 1;
    return v17 & 1;
  }

  outlined destroy of MirroredHostAlertStackRequest?(v14, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd);
  v17 = 0;
  return v17 & 1;
}

{
  v4 = type metadata accessor for MirroredHostSummaryUpdate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore25MirroredHostSummaryUpdateVSg_ADtMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of MirroredHostAlertStackRequest?(a1, &v21 - v13, &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
  outlined init with copy of MirroredHostAlertStackRequest?(a2, &v14[v15], &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    outlined init with copy of MirroredHostAlertStackRequest?(v14, v10, &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(&lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate, MEMORY[0x277D7E538]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      outlined destroy of MirroredHostAlertStackRequest?(v14, &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of MirroredHostAlertStackRequest?(v14, &_s11WorkoutCore25MirroredHostSummaryUpdateVSg_ADtMd);
    v17 = 1;
    return v17 & 1;
  }

  outlined destroy of MirroredHostAlertStackRequest?(v14, &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd);
  v17 = 0;
  return v17 & 1;
}

uint64_t outlined init with copy of MirroredHostAlertStackRequest?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of MirroredHostAlertStackRequest?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in SessionViewModel.supportsTapToSkipCountdown.setter(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

void type metadata completion function for SessionViewModel()
{
  type metadata accessor for MirroredHostAlertStackRequest?(319, &lazy cache variable for type metadata for MirroredHostAlertStackRequest?, MEMORY[0x277D7E620]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MirroredHostAlertStackRequest?(319, &lazy cache variable for type metadata for MirroredHostSummaryUpdate?, MEMORY[0x277D7E538]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for WorkoutBuddyStatePublisher.State();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ObservationRegistrar();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for MirroredHostAlertStackRequest?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined destroy of MirroredHostAlertStackRequest?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SessionViewModel and conformance SessionViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TimePickerWatch.init(viewModel:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for TimePickerViewModel();
  result = State.init(wrappedValue:)();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t TimePickerWatch.minuteLabelAlignment.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB019TimePickerViewModelCGMd);
  State.wrappedValue.getter();
  v0 = *(v3 + 112);

  if (v0 != 1)
  {
    return static HorizontalAlignment.leading.getter();
  }

  State.wrappedValue.getter();
  v1 = *(v3 + 113);

  if (v1 == 1)
  {
    return static HorizontalAlignment.center.getter();
  }

  else
  {
    return static HorizontalAlignment.trailing.getter();
  }
}

uint64_t closure #1 in closure #1 in TimePickerWatch.expandedLabelPickerView(selection:range:text:alignment:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (one-time initialization token for pickerFormatter != -1)
  {
    swift_once();
  }

  v4 = static PickerFormatters.pickerFormatter;
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = [v4 stringFromNumber_];

  if (v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

uint64_t TimePickerWatch.body.getter@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = partial apply for closure #1 in TimePickerWatch.body.getter;
  a1[1] = v5;
}

double closure #1 in TimePickerWatch.body.getter@<D0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAkAEAlmN_Qrqd___SbyyctSQRd__lFQOyAkAEAlmN_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAPyAPyAA6HStackVyAIyAIyAPy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_APyAPyA0_AA25_AlignmentWritingModifierVGA5_GtGSg_APyAA5GroupVyAA012_ConditionalN0VyA3_A3_GGA5_GAIyA10__A19_tGSgtGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA24_ForegroundStyleModifierVyAA14TintShapeStyleVGGA25_yAA0G9DirectionOGG_SiQo__SiQo__SiQo__AA6SpacerVtGGMd);
  closure #1 in closure #1 in TimePickerWatch.body.getter(a1, a2, (a3 + *(v6 + 44)));
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAiAEAjkL_Qrqd___SbyyctSQRd__lFQOyAiAEAjkL_Qrqd___SbyyctSQRd__lFQOyACyACyACyAA6HStackVyAGyAGyACy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_ACyACyAxA017_AlignmentWritingY0VGA1_GtGSg_ACyAA5GroupVyAA012_ConditionalD0VyA_A_GGA1_GAGyA6__A15_tGSgtGGAA022_EnvironmentKeyWritingY0VyAA4FontVSgGGAA016_ForegroundStyleY0VyAA14TintShapeStyleVGGA21_yAA15LayoutDirectionOGG_SiQo__SiQo__SiQo__AA6SpacerVtGGAA12_FrameLayoutVGMd) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t closure #1 in closure #1 in TimePickerWatch.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v69 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v58 - v6;
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAGyACy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_ACyACyAsA017_AlignmentWritingT0VGAXGtGSg_ACyAA5GroupVyAA012_ConditionalD0VyA2VGGAXGAGyA1__A10_tGSgtGGAA015_EnvironmentKeyvT0VyAA4FontVSgGGAA016_ForegroundStyleT0VyAA14TintShapeStyleVGGA16_yAA15LayoutDirectionOGGMd);
  MEMORY[0x28223BE20](v70);
  v13 = v58 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAHyAHyAA6HStackVyAA05TupleC0VyALyAHy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_AHyAHyAvA017_AlignmentWritingX0VGA_GtGSg_AHyAA5GroupVyAA012_ConditionalI0VyA2YGGA_GALyA4__A13_tGSgtGGAA015_EnvironmentKeyzX0VyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGGA19_yAA15LayoutDirectionOGG_SiQo_Md);
  v60 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v59 = v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAHyAHyAA6HStackVyAA05TupleC0VyALyAHy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_AHyAHyAvA017_AlignmentWritingX0VGA_GtGSg_AHyAA5GroupVyAA012_ConditionalI0VyA2YGGA_GALyA4__A13_tGSgtGGAA015_EnvironmentKeyzX0VyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGGA19_yAA15LayoutDirectionOGG_SiQo__SiQo_Md);
  v65 = *(v15 - 8);
  v66 = v15;
  MEMORY[0x28223BE20](v15);
  v62 = v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAHyAHyAA6HStackVyAA05TupleC0VyALyAHy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_AHyAHyAvA017_AlignmentWritingX0VGA_GtGSg_AHyAA5GroupVyAA012_ConditionalI0VyA2YGGA_GALyA4__A13_tGSgtGGAA015_EnvironmentKeyzX0VyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGGA19_yAA15LayoutDirectionOGG_SiQo__SiQo__SiQo_Md);
  v67 = *(v17 - 8);
  v68 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v63 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v61 = v58 - v20;
  if (one-time initialization token for expandedPickerLabelAlignment != -1)
  {
    swift_once();
  }

  *v13 = static VerticalAlignment.expandedPickerLabelAlignment;
  *(v13 + 1) = 0x4000000000000000;
  v13[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAIyAA15ModifiedContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_AKyAKyAwA017_AlignmentWritingW0VGA0_GtGSg_AKyAA5GroupVyAA012_ConditionalJ0VyA2ZGGA0_GAIyA5__A14_tGSgtGGMd);
  closure #1 in closure #1 in closure #1 in TimePickerWatch.body.getter(a1, a2, &v13[*(v21 + 44)]);
  (*(v9 + 104))(v11, *MEMORY[0x277CE0A90], v8);
  v22 = *MEMORY[0x277CE09A0];
  v23 = type metadata accessor for Font.Design();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v7, v22, v23);
  (*(v24 + 56))(v7, 0, 1, v23);
  v25 = static Font.system(_:design:weight:)();
  outlined destroy of Font.Design?(v7, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v9 + 8))(v11, v8);
  KeyPath = swift_getKeyPath();
  v27 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAGyACy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_ACyACyAsA017_AlignmentWritingT0VGAXGtGSg_ACyAA5GroupVyAA012_ConditionalD0VyA2VGGAXGAGyA1__A10_tGSgtGGAA015_EnvironmentKeyvT0VyAA4FontVSgGGMd) + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAGyACy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_ACyACyAsA017_AlignmentWritingT0VGAXGtGSg_ACyAA5GroupVyAA012_ConditionalD0VyA2VGGAXGAGyA1__A10_tGSgtGGAA015_EnvironmentKeyvT0VyAA4FontVSgGGAA016_ForegroundStyleT0VyAA14TintShapeStyleVGGMd);
  TintShapeStyle.init()();
  v28 = swift_getKeyPath();
  v29 = &v13[*(v70 + 36)];
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGMd) + 28);
  v31 = *MEMORY[0x277CDFA88];
  v32 = type metadata accessor for LayoutDirection();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = v28;
  v73 = a1;
  v74 = a2;
  v58[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB019TimePickerViewModelCGMd);
  State.wrappedValue.getter();
  v33 = v78;
  swift_getKeyPath();
  v73 = v33;
  v58[1] = lazy protocol witness table accessor for type TimePickerViewModel and conformance TimePickerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v34 = *(v33 + 88);

  v73 = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = a2;
  v36 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return typ();

  v37 = v59;
  v38 = v70;
  View.onChange<A>(of:initial:_:)();

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v13, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAGyACy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_ACyACyAsA017_AlignmentWritingT0VGAXGtGSg_ACyAA5GroupVyAA012_ConditionalD0VyA2VGGAXGAGyA1__A10_tGSgtGGAA015_EnvironmentKeyvT0VyAA4FontVSgGGAA016_ForegroundStyleT0VyAA14TintShapeStyleVGGA16_yAA15LayoutDirectionOGGMd);
  v73 = a1;
  v74 = a2;
  State.wrappedValue.getter();
  v39 = v77;
  swift_getKeyPath();
  v73 = v39;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v40 = *(v39 + 96);

  v72 = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = a1;
  *(v41 + 24) = a2;

  v73 = v38;
  v74 = MEMORY[0x277D83B88];
  v75 = v36;
  v76 = MEMORY[0x277D83BA8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v62;
  v44 = v64;
  View.onChange<A>(of:initial:_:)();

  (*(v60 + 8))(v37, v44);
  v73 = a1;
  v74 = a2;
  State.wrappedValue.getter();
  v45 = v72;
  swift_getKeyPath();
  v73 = v45;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v46 = *(v45 + 104);

  v71 = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = a1;
  *(v47 + 24) = a2;

  v73 = v44;
  v74 = MEMORY[0x277D83B88];
  v75 = OpaqueTypeConformance2;
  v76 = MEMORY[0x277D83BA8];
  swift_getOpaqueTypeConformance2();
  v48 = v61;
  v49 = v66;
  View.onChange<A>(of:initial:_:)();

  (*(v65 + 8))(v43, v49);
  v51 = v67;
  v50 = v68;
  v52 = *(v67 + 16);
  v53 = v63;
  v52(v63, v48, v68);
  v54 = v69;
  v52(v69, v53, v50);
  v55 = &v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAHyAHyAA6HStackVyAA05TupleC0VyALyAHy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_AHyAHyAvA017_AlignmentWritingX0VGA_GtGSg_AHyAA5GroupVyAA012_ConditionalI0VyA2YGGA_GALyA4__A13_tGSgtGGAA015_EnvironmentKeyzX0VyAA4FontVSgGGAA016_ForegroundStyleX0VyAA14TintShapeStyleVGGA19_yAA15LayoutDirectionOGG_SiQo__SiQo__SiQo__AA6SpacerVtMd) + 48)];
  *v55 = 0;
  v55[8] = 1;
  v56 = *(v51 + 8);
  v56(v48, v50);
  return (v56)(v53, v50);
}

uint64_t closure #1 in closure #1 in closure #1 in TimePickerWatch.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v142 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA25_AlignmentWritingModifierVGAA023AccessibilityAttachmentJ0VG_AEyAA5GroupVyAA012_ConditionalF0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_SiQo_GSiGA2_GGALGtGMd);
  v140 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v127 = &v117 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA25_AlignmentWritingModifierVGAA023AccessibilityAttachmentJ0VG_AEyAA5GroupVyAA012_ConditionalF0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_SiQo_GSiGA2_GGALGtGSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v117 - v11;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGATGGMd);
  MEMORY[0x28223BE20](v144);
  v14 = &v117 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAVGGAA31AccessibilityAttachmentModifierVGMd);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v126 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v117 - v19;
  MEMORY[0x28223BE20](v18);
  v145 = &v117 - v21;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_AEyAEyAqA017_AlignmentWritingS0VGAVGtGMd);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v125 = &v117 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA25_AlignmentWritingModifierVGAA023AccessibilityAttachmentH0VGMd);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v130 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v129 = &v117 - v26;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19ExpandedLabelPickerVy05SwiftB07ForEachVySnySiGSiAD4ViewPADE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAD4TextV_SiQo_GSiGMd);
  MEMORY[0x28223BE20](v128);
  v28 = &v117 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVGMd);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v124 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v123 = &v117 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_AEyAEyAqA017_AlignmentWritingS0VGAVGtGSgMd);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v139 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v117 - v36;
  v146 = a1;
  v153._countAndFlagsBits = a1;
  v153._object = a2;
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB019TimePickerViewModelCGMd);
  State.wrappedValue.getter();
  LODWORD(a2) = *(v159 + 112);

  v135 = v10;
  v134 = v12;
  v133 = v5;
  v141 = v20;
  v132 = v38;
  v131 = v14;
  v143 = v37;
  v136 = v39;
  if (a2 == 1)
  {
    v122 = v28;
    v40 = v146;
    v159 = v146;
    v160 = v38;
    State.projectedValue.getter();
    countAndFlagsBits = v153._countAndFlagsBits;
    object = v153._object;
    v43 = v154;
    swift_getKeyPath();
    v159 = countAndFlagsBits;
    v160 = object;
    v161 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy07WorkoutB019TimePickerViewModelCGMd);
    Binding.subscript.getter();

    v45 = v150;
    v44 = v151;
    v121 = v152;

    v153._countAndFlagsBits = v40;
    v153._object = v38;
    State.wrappedValue.getter();
    v46 = *(v149 + 24);

    if (v46 > 24)
    {
      __break(1u);
LABEL_17:
      v113 = v43;
      v114 = v47;
      swift_once();
      v47 = v114;
      v43 = v113;
      goto LABEL_13;
    }

    v120 = v46;
    v48 = v45;
    LocalizedStringKey.init(stringLiteral:)();
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v49 = WorkoutUIBundle.super.isa;
    v50 = Text.init(_:tableName:bundle:comment:)();
    v52 = v51;
    v54 = v53;
    v118 = v55;
    v56 = static HorizontalAlignment.leading.getter();
    v57 = v128;
    v58 = v122;
    v59 = &v122[*(v128 + 68)];
    v119 = v48;
    *v59 = v48;
    *(v59 + 1) = v44;
    *(v59 + 2) = v121;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19ExpandedLabelPickerV7Focused33_C4CBAB7842264525A34D456F7A10768ELLOy05SwiftB07ForEachVySnySiGSiAG4ViewPAGE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG4TextV_SiQo_GSi_GMd);
    lazy protocol witness table accessor for type GeometryReader<ModifiedContent<VStack<TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Spacer)>>, _FrameLayout>> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>.Focused and conformance ExpandedLabelPicker<A, B>.Focused, &_s9WorkoutUI19ExpandedLabelPickerV7Focused33_C4CBAB7842264525A34D456F7A10768ELLOy05SwiftB07ForEachVySnySiGSiAG4ViewPAGE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG4TextV_SiQo_GSi_GMd);
    FocusState.init<A>()();
    v60 = v153._object;
    v61 = v154;
    *v58 = v153._countAndFlagsBits;
    *(v58 + 8) = v60;
    *(v58 + 16) = v61;
    *(v58 + 24) = v50;
    *(v58 + 32) = v52;
    *(v58 + 40) = v54 & 1;
    *(v58 + 48) = v118;
    *(v58 + 56) = v56;
    *(v58 + *(v57 + 64)) = 0;
    v147 = v120;
    v148 = 24;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_Md);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v153._countAndFlagsBits = MEMORY[0x277CE0BD8];
    v153._object = MEMORY[0x277D83B88];
    v154 = MEMORY[0x277CE0BC8];
    v155 = MEMORY[0x277D83B98];
    swift_getOpaqueTypeConformance2();
    ForEach<>.init(_:id:content:)();

    v62 = WorkoutUIBundle.super.isa;
    v63._countAndFlagsBits = 0xD000000000000025;
    v162._object = 0xE000000000000000;
    v63._object = 0x800000020CB94020;
    v64.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v64.value._object = 0xEB00000000656C62;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    v162._countAndFlagsBits = 0;
    v66 = NSLocalizedString(_:tableName:bundle:value:comment:)(v63, v64, v62, v65, v162);

    v153 = v66;
    lazy protocol witness table accessor for type GeometryReader<ModifiedContent<VStack<TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Spacer)>>, _FrameLayout>> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int> and conformance ExpandedLabelPicker<A, B>, &_s9WorkoutUI19ExpandedLabelPickerVy05SwiftB07ForEachVySnySiGSiAD4ViewPADE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAD4TextV_SiQo_GSiGMd);
    lazy protocol witness table accessor for type String and conformance String();
    v67 = v123;
    View.accessibilityLabel<A>(_:)();

    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v58, &_s9WorkoutUI19ExpandedLabelPickerVy05SwiftB07ForEachVySnySiGSiAD4ViewPADE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAD4TextV_SiQo_GSiGMd);
    LocalizedStringKey.init(stringLiteral:)();
    v69 = Text.init(_:tableName:bundle:comment:)();
    v71 = v70;
    v73 = v72;
    if (one-time initialization token for expandedPickerLabelAlignment != -1)
    {
      v115 = v69;
      v116 = v68;
      swift_once();
      v68 = v116;
      v69 = v115;
    }

    v153._countAndFlagsBits = v69;
    v153._object = v71;
    v74 = v68 & 1;
    LOBYTE(v154) = v68 & 1;
    v155 = v73;
    v156 = static VerticalAlignment.expandedPickerLabelAlignment;
    v157 = closure #1 in closure #1 in closure #1 in closure #1 in TimePickerWatch.body.getter;
    v158 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA25_AlignmentWritingModifierVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
    v75 = v129;
    View.accessibilityHidden(_:)();
    outlined consume of Text.Storage(v69, v71, v74);

    v76 = v124;
    outlined init with copy of TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?(v67, v124, &_s7SwiftUI15ModifiedContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVGMd);
    v77 = v130;
    outlined init with copy of ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>(v75, v130);
    v78 = v125;
    outlined init with copy of TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?(v76, v125, &_s7SwiftUI15ModifiedContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVGMd);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_ACyACyAoA017_AlignmentWritingR0VGATGtMd);
    outlined init with copy of ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>(v77, v78 + *(v79 + 48));
    outlined destroy of Font.Design?(v75, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA25_AlignmentWritingModifierVGAA023AccessibilityAttachmentH0VGMd);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v67, &_s7SwiftUI15ModifiedContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVGMd);
    outlined destroy of Font.Design?(v77, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA25_AlignmentWritingModifierVGAA023AccessibilityAttachmentH0VGMd);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v76, &_s7SwiftUI15ModifiedContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVGMd);
    v37 = v143;
    outlined init with take of TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>)>(v78, v143, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_AEyAEyAqA017_AlignmentWritingS0VGAVGtGMd);
    v80 = 0;
    v10 = v135;
    v12 = v134;
    v5 = v133;
    v81 = v132;
    v82 = v146;
    v14 = v131;
  }

  else
  {
    v80 = 1;
    v81 = v38;
    v82 = v146;
  }

  (*(v137 + 56))(v37, v80, 1, v138);
  closure #2 in closure #1 in closure #1 in closure #1 in TimePickerWatch.body.getter(v82, v81, v14);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v83 = WorkoutUIBundle.super.isa;
  v163._object = 0xE000000000000000;
  v84._object = 0x800000020CB93FA0;
  v84._countAndFlagsBits = 0xD000000000000027;
  v85.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v85.value._object = 0xEB00000000656C62;
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  v163._countAndFlagsBits = 0;
  v87 = NSLocalizedString(_:tableName:bundle:value:comment:)(v84, v85, v83, v86, v163);

  v153 = v87;
  v88 = lazy protocol witness table accessor for type Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type String and conformance String();
  v138 = v88;
  View.accessibilityLabel<A>(_:)();

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v14, &_s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGATGGMd);
  v153._countAndFlagsBits = v82;
  v153._object = v81;
  State.wrappedValue.getter();
  LODWORD(v88) = *(v150 + 113);

  if (v88 != 1)
  {
    v105 = 1;
    v104 = v141;
    v106 = v10;
    goto LABEL_15;
  }

  LocalizedStringKey.init(stringLiteral:)();
  v43 = Text.init(_:tableName:bundle:comment:)();
  v40 = v89;
  object = v90;
  if (one-time initialization token for expandedPickerLabelAlignment != -1)
  {
    goto LABEL_17;
  }

LABEL_13:
  v153._countAndFlagsBits = v43;
  v153._object = v40;
  v91 = v47 & 1;
  LOBYTE(v154) = v47 & 1;
  v155 = object;
  v156 = static VerticalAlignment.expandedPickerLabelAlignment;
  v157 = closure #3 in closure #1 in closure #1 in closure #1 in TimePickerWatch.body.getter;
  v158 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA25_AlignmentWritingModifierVGMd);
  lazy protocol witness table accessor for type ModifiedContent<Text, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
  v92 = v129;
  View.accessibilityHidden(_:)();
  outlined consume of Text.Storage(v43, v40, v91);

  v93 = v131;
  closure #4 in closure #1 in closure #1 in closure #1 in TimePickerWatch.body.getter(v146, v132, v131);
  v94 = WorkoutUIBundle.super.isa;
  v164._object = 0xE000000000000000;
  v95._object = 0x800000020CB93FD0;
  v95._countAndFlagsBits = 0xD000000000000027;
  v96.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v96.value._object = 0xEB00000000656C62;
  v97._countAndFlagsBits = 0;
  v97._object = 0xE000000000000000;
  v164._countAndFlagsBits = 0;
  v98 = NSLocalizedString(_:tableName:bundle:value:comment:)(v95, v96, v94, v97, v164);

  v153 = v98;
  v99 = v141;
  View.accessibilityLabel<A>(_:)();

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v93, &_s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGATGGMd);
  v100 = v130;
  outlined init with copy of ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>(v92, v130);
  v101 = v126;
  outlined init with copy of TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?(v99, v126, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAVGGAA31AccessibilityAttachmentModifierVGMd);
  v102 = v127;
  outlined init with copy of ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>(v100, v127);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA25_AlignmentWritingModifierVGAA023AccessibilityAttachmentH0VG_ACyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_SiQo_GSiGA0_GGAJGtMd);
  outlined init with copy of TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?(v101, v102 + *(v103 + 48), &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAVGGAA31AccessibilityAttachmentModifierVGMd);
  v104 = v99;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v99, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAVGGAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of Font.Design?(v92, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA25_AlignmentWritingModifierVGAA023AccessibilityAttachmentH0VGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v101, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAVGGAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of Font.Design?(v100, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA25_AlignmentWritingModifierVGAA023AccessibilityAttachmentH0VGMd);
  v12 = v134;
  outlined init with take of TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>)>(v102, v134, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA25_AlignmentWritingModifierVGAA023AccessibilityAttachmentJ0VG_AEyAA5GroupVyAA012_ConditionalF0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_SiQo_GSiGA2_GGALGtGMd);
  v105 = 0;
  v106 = v135;
  v5 = v133;
LABEL_15:
  (*(v140 + 56))(v12, v105, 1, v5);
  v107 = v143;
  v108 = v139;
  outlined init with copy of TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?(v143, v139, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_AEyAEyAqA017_AlignmentWritingS0VGAVGtGSgMd);
  v109 = v145;
  outlined init with copy of TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?(v145, v104, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAVGGAA31AccessibilityAttachmentModifierVGMd);
  outlined init with copy of TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?(v12, v106, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA25_AlignmentWritingModifierVGAA023AccessibilityAttachmentJ0VG_AEyAA5GroupVyAA012_ConditionalF0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_SiQo_GSiGA2_GGALGtGSgMd);
  v110 = v142;
  outlined init with copy of TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?(v108, v142, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_AEyAEyAqA017_AlignmentWritingS0VGAVGtGSgMd);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_AEyAEyAqA017_AlignmentWritingS0VGAVGtGSg_AEyAA5GroupVyAA012_ConditionalF0VyA2TGGAVGACyA__A8_tGSgtMd);
  outlined init with copy of TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?(v104, v110 + *(v111 + 48), &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAVGGAA31AccessibilityAttachmentModifierVGMd);
  outlined init with copy of TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?(v106, v110 + *(v111 + 64), &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA25_AlignmentWritingModifierVGAA023AccessibilityAttachmentJ0VG_AEyAA5GroupVyAA012_ConditionalF0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_SiQo_GSiGA2_GGALGtGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v12, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA25_AlignmentWritingModifierVGAA023AccessibilityAttachmentJ0VG_AEyAA5GroupVyAA012_ConditionalF0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_SiQo_GSiGA2_GGALGtGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v109, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAVGGAA31AccessibilityAttachmentModifierVGMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v107, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_AEyAEyAqA017_AlignmentWritingS0VGAVGtGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v106, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA4TextVAA25_AlignmentWritingModifierVGAA023AccessibilityAttachmentJ0VG_AEyAA5GroupVyAA012_ConditionalF0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG_SiQo_GSiGA2_GGALGtGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v104, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0Vy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAVGGAA31AccessibilityAttachmentModifierVGMd);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v108, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAA31AccessibilityAttachmentModifierVG_AEyAEyAqA017_AlignmentWritingS0VGAVGtGSgMd);
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in TimePickerWatch.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAT_GMd);
  MEMORY[0x28223BE20](v52);
  v53 = v43 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19ExpandedLabelPickerVy05SwiftB07ForEachVySnySiGSiAD4ViewPADE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAD4TextV_SiQo_GSiGMd);
  MEMORY[0x28223BE20](v51);
  v7 = v43 - v6;
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = WorkoutUIBundle.super.isa;
  v46 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v48 = v11;
  v13 = v12;
  v54 = a1;
  v55 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB019TimePickerViewModelCGMd);
  State.wrappedValue.getter();
  v14 = v67;
  swift_getKeyPath();
  v54 = v14;
  lazy protocol witness table accessor for type TimePickerViewModel and conformance TimePickerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v15 = *(v14 + 88);

  v54 = a1;
  v55 = a2;
  State.wrappedValue.getter();
  v16 = *(v64 + 24);

  v49 = v13;
  v47 = v10;
  if (v15 != v16)
  {
    v64 = a1;
    v65 = a2;
    State.projectedValue.getter();
    v30 = v54;
    v31 = v55;
    v32 = v56;
    swift_getKeyPath();
    v64 = v30;
    v65 = v31;
    v66 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy07WorkoutB019TimePickerViewModelCGMd);
    Binding.subscript.getter();

    v33 = a2;
    v35 = v61;
    v34 = v62;
    v36 = v63;

    v59 = a1;
    v60 = v33;
    v37 = TimePickerWatch.minuteLabelAlignment.getter();
    v38 = v51;
    v39 = &v7[*(v51 + 68)];
    *v39 = v35;
    *(v39 + 1) = v34;
    *(v39 + 2) = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19ExpandedLabelPickerV7Focused33_C4CBAB7842264525A34D456F7A10768ELLOy05SwiftB07ForEachVySnySiGSiAG4ViewPAGE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG4TextV_SiQo_GSi_GMd);
    lazy protocol witness table accessor for type GeometryReader<ModifiedContent<VStack<TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Spacer)>>, _FrameLayout>> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>.Focused and conformance ExpandedLabelPicker<A, B>.Focused, &_s9WorkoutUI19ExpandedLabelPickerV7Focused33_C4CBAB7842264525A34D456F7A10768ELLOy05SwiftB07ForEachVySnySiGSiAG4ViewPAGE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG4TextV_SiQo_GSi_GMd);
    FocusState.init<A>()();
    v40 = v55;
    v41 = v56;
    *v7 = v54;
    *(v7 + 1) = v40;
    v7[16] = v41;
    v42 = v47;
    *(v7 + 3) = v46;
    *(v7 + 4) = v42;
    v7[40] = v48 & 1;
    *(v7 + 6) = v49;
    *(v7 + 7) = v37;
    v7[*(v38 + 64)] = 0;
    v58 = xmmword_20CB5FBF0;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_Md);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v54 = MEMORY[0x277CE0BD8];
    v55 = MEMORY[0x277D83B88];
    v56 = MEMORY[0x277CE0BC8];
    v57 = MEMORY[0x277D83B98];
    swift_getOpaqueTypeConformance2();
    ForEach<>.init(_:id:content:)();

    goto LABEL_7;
  }

  v64 = a1;
  v65 = a2;
  State.projectedValue.getter();
  v17 = v54;
  v18 = v55;
  v19 = v56;
  swift_getKeyPath();
  v64 = v17;
  v65 = v18;
  v66 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy07WorkoutB019TimePickerViewModelCGMd);
  Binding.subscript.getter();

  v20 = v61;
  v45 = v62;
  v44 = v63;

  v54 = a1;
  v55 = a2;
  State.wrappedValue.getter();
  v21 = *(v59 + 32);

  if (v21 <= 60)
  {
    v59 = a1;
    v60 = a2;
    v23 = TimePickerWatch.minuteLabelAlignment.getter();
    v24 = v51;
    v25 = &v7[*(v51 + 68)];
    v43[1] = v20;
    v26 = v45;
    *v25 = v20;
    *(v25 + 1) = v26;
    *(v25 + 2) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19ExpandedLabelPickerV7Focused33_C4CBAB7842264525A34D456F7A10768ELLOy05SwiftB07ForEachVySnySiGSiAG4ViewPAGE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG4TextV_SiQo_GSi_GMd);
    lazy protocol witness table accessor for type GeometryReader<ModifiedContent<VStack<TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Spacer)>>, _FrameLayout>> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>.Focused and conformance ExpandedLabelPicker<A, B>.Focused, &_s9WorkoutUI19ExpandedLabelPickerV7Focused33_C4CBAB7842264525A34D456F7A10768ELLOy05SwiftB07ForEachVySnySiGSiAG4ViewPAGE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG4TextV_SiQo_GSi_GMd);
    FocusState.init<A>()();
    v27 = v55;
    v28 = v56;
    *v7 = v54;
    *(v7 + 1) = v27;
    v7[16] = v28;
    v29 = v47;
    *(v7 + 3) = v46;
    *(v7 + 4) = v29;
    v7[40] = v48 & 1;
    *(v7 + 6) = v49;
    *(v7 + 7) = v23;
    v7[*(v24 + 64)] = 0;
    v49 = *(v24 + 60);
    *&v58 = v21;
    *(&v58 + 1) = 60;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_Md);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v54 = MEMORY[0x277CE0BD8];
    v55 = MEMORY[0x277D83B88];
    v56 = MEMORY[0x277CE0BC8];
    v57 = MEMORY[0x277D83B98];
    swift_getOpaqueTypeConformance2();
    ForEach<>.init(_:id:content:)();

LABEL_7:
    outlined init with copy of TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?(v7, v53, &_s9WorkoutUI19ExpandedLabelPickerVy05SwiftB07ForEachVySnySiGSiAD4ViewPADE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAD4TextV_SiQo_GSiGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type GeometryReader<ModifiedContent<VStack<TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Spacer)>>, _FrameLayout>> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int> and conformance ExpandedLabelPicker<A, B>, &_s9WorkoutUI19ExpandedLabelPickerVy05SwiftB07ForEachVySnySiGSiAD4ViewPADE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAD4TextV_SiQo_GSiGMd);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v7, &_s9WorkoutUI19ExpandedLabelPickerVy05SwiftB07ForEachVySnySiGSiAD4ViewPADE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAD4TextV_SiQo_GSiGMd);
  }

  __break(1u);
  return result;
}

double closure #1 in closure #1 in closure #1 in closure #1 in TimePickerWatch.body.getter()
{
  v0 = static VerticalAlignment.center.getter();
  v1 = MEMORY[0x20F3089D0](v0);
  v2 = static VerticalAlignment.bottom.getter();
  v3 = MEMORY[0x20F3089D0](v2);
  v4 = static VerticalAlignment.firstTextBaseline.getter();
  return v1 + (v3 - MEMORY[0x20F3089D0](v4)) * 0.5;
}

uint64_t closure #4 in closure #1 in closure #1 in closure #1 in TimePickerWatch.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGAT_GMd);
  MEMORY[0x28223BE20](v50);
  v51 = &v44 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19ExpandedLabelPickerVy05SwiftB07ForEachVySnySiGSiAD4ViewPADE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAD4TextV_SiQo_GSiGMd);
  MEMORY[0x28223BE20](v49);
  v7 = &v44 - v6;
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = WorkoutUIBundle.super.isa;
  v45 = Text.init(_:tableName:bundle:comment:)();
  v46 = v9;
  v47 = v10;
  v48 = v11;
  v53 = a1;
  v54 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB019TimePickerViewModelCGMd);
  State.wrappedValue.getter();
  v12 = v64;
  swift_getKeyPath();
  v53 = v12;
  lazy protocol witness table accessor for type TimePickerViewModel and conformance TimePickerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v13 = *(v12 + 88);

  v53 = a1;
  v54 = a2;
  State.wrappedValue.getter();
  v14 = *(v61 + 24);

  if (v13 != v14 || (v53 = a1, v54 = a2, State.wrappedValue.getter(), v15 = v61, swift_getKeyPath(), v53 = v15, ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), v16 = *(v15 + 96), , v53 = a1, v54 = a2, State.wrappedValue.getter(), v17 = *(v61 + 32), , v16 != v17))
  {
    v61 = a1;
    v62 = a2;
    State.projectedValue.getter();
    v32 = v53;
    v33 = v54;
    v34 = v55;
    swift_getKeyPath();
    v61 = v32;
    v62 = v33;
    v63 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy07WorkoutB019TimePickerViewModelCGMd);
    Binding.subscript.getter();

    v36 = v58;
    v35 = v59;
    v37 = v60;

    v38 = static HorizontalAlignment.trailing.getter();
    v39 = v49;
    v40 = &v7[*(v49 + 68)];
    v44 = v36;
    *v40 = v36;
    *(v40 + 1) = v35;
    *(v40 + 2) = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19ExpandedLabelPickerV7Focused33_C4CBAB7842264525A34D456F7A10768ELLOy05SwiftB07ForEachVySnySiGSiAG4ViewPAGE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG4TextV_SiQo_GSi_GMd);
    lazy protocol witness table accessor for type GeometryReader<ModifiedContent<VStack<TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Spacer)>>, _FrameLayout>> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>.Focused and conformance ExpandedLabelPicker<A, B>.Focused, &_s9WorkoutUI19ExpandedLabelPickerV7Focused33_C4CBAB7842264525A34D456F7A10768ELLOy05SwiftB07ForEachVySnySiGSiAG4ViewPAGE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG4TextV_SiQo_GSi_GMd);
    FocusState.init<A>()();
    v41 = v54;
    v42 = v55;
    *v7 = v53;
    *(v7 + 1) = v41;
    v7[16] = v42;
    v43 = v46;
    *(v7 + 3) = v45;
    *(v7 + 4) = v43;
    v7[40] = v47 & 1;
    *(v7 + 6) = v48;
    *(v7 + 7) = v38;
    v7[*(v39 + 64)] = 0;
    v57 = xmmword_20CB5FBF0;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_Md);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v53 = MEMORY[0x277CE0BD8];
    v54 = MEMORY[0x277D83B88];
    v55 = MEMORY[0x277CE0BC8];
    v56 = MEMORY[0x277D83B98];
    swift_getOpaqueTypeConformance2();
    ForEach<>.init(_:id:content:)();

    goto LABEL_8;
  }

  v61 = a1;
  v62 = a2;
  State.projectedValue.getter();
  v19 = v53;
  v18 = v54;
  v20 = v55;
  swift_getKeyPath();
  v61 = v19;
  v62 = v18;
  v63 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy07WorkoutB019TimePickerViewModelCGMd);
  Binding.subscript.getter();

  v22 = v58;
  v21 = v59;
  v44 = v60;

  v53 = a1;
  v54 = a2;
  State.wrappedValue.getter();
  v23 = *(v57 + 40);

  if (v23 <= 60)
  {
    v25 = static HorizontalAlignment.trailing.getter();
    v26 = v22;
    v27 = v49;
    v28 = &v7[*(v49 + 68)];
    *v28 = v26;
    *(v28 + 1) = v21;
    *(v28 + 2) = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19ExpandedLabelPickerV7Focused33_C4CBAB7842264525A34D456F7A10768ELLOy05SwiftB07ForEachVySnySiGSiAG4ViewPAGE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG4TextV_SiQo_GSi_GMd);
    lazy protocol witness table accessor for type GeometryReader<ModifiedContent<VStack<TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Spacer)>>, _FrameLayout>> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>.Focused and conformance ExpandedLabelPicker<A, B>.Focused, &_s9WorkoutUI19ExpandedLabelPickerV7Focused33_C4CBAB7842264525A34D456F7A10768ELLOy05SwiftB07ForEachVySnySiGSiAG4ViewPAGE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAG4TextV_SiQo_GSi_GMd);
    FocusState.init<A>()();
    v29 = v54;
    v30 = v55;
    *v7 = v53;
    *(v7 + 1) = v29;
    v7[16] = v30;
    v31 = v46;
    *(v7 + 3) = v45;
    *(v7 + 4) = v31;
    v7[40] = v47 & 1;
    *(v7 + 6) = v48;
    *(v7 + 7) = v25;
    v7[*(v27 + 64)] = 0;
    *&v57 = v23;
    *(&v57 + 1) = 60;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_Md);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v53 = MEMORY[0x277CE0BD8];
    v54 = MEMORY[0x277D83B88];
    v55 = MEMORY[0x277CE0BC8];
    v56 = MEMORY[0x277D83B98];
    swift_getOpaqueTypeConformance2();
    ForEach<>.init(_:id:content:)();

LABEL_8:
    outlined init with copy of TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?(v7, v51, &_s9WorkoutUI19ExpandedLabelPickerVy05SwiftB07ForEachVySnySiGSiAD4ViewPADE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAD4TextV_SiQo_GSiGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type GeometryReader<ModifiedContent<VStack<TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Spacer)>>, _FrameLayout>> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int> and conformance ExpandedLabelPicker<A, B>, &_s9WorkoutUI19ExpandedLabelPickerVy05SwiftB07ForEachVySnySiGSiAD4ViewPADE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAD4TextV_SiQo_GSiGMd);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>, TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:include(v7, &_s9WorkoutUI19ExpandedLabelPickerVy05SwiftB07ForEachVySnySiGSiAD4ViewPADE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAD4TextV_SiQo_GSiGMd);
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in TimePickerWatch.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB019TimePickerViewModelCGMd);
  State.wrappedValue.getter();
  v1.value = 0;
  v1.is_nil = 1;
  v2.value = 0;
  v2.is_nil = 1;
  v3.value = 0;
  v3.is_nil = 1;
  TimePickerViewModel.pickerChanged(newHour:newMinute:newSecond:)(v1, v2, v3);
}

uint64_t protocol witness for View.body.getter in conformance TimePickerWatch@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = closure #1 in TimePickerWatch.body.getterpartial apply;
  a1[1] = v5;
}

uint64_t getEnumTagSinglePayload for TimePickerWatch(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TimePickerWatch(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type TimePickerViewModel and conformance TimePickerViewModel()
{
  result = lazy protocol witness table cache variable for type TimePickerViewModel and conformance TimePickerViewModel;
  if (!lazy protocol witness table cache variable for type TimePickerViewModel and conformance TimePickerViewModel)
  {
    type metadata accessor for TimePickerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimePickerViewModel and conformance TimePickerViewModel);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGATGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiGARGMd);
    lazy protocol witness table accessor for type GeometryReader<ModifiedContent<VStack<TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Spacer)>>, _FrameLayout>> and conformance GeometryReader<A>(&lazy protocol witness table cache variable for type ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int> and conformance ExpandedLabelPicker<A, B>, &_s9WorkoutUI19ExpandedLabelPickerVy05SwiftB07ForEachVySnySiGSiAD4ViewPADE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAD4TextV_SiQo_GSiGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA25_AlignmentWritingModifierVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA25_AlignmentWritingModifierVGAA023AccessibilityAttachmentH0VGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Font.Design?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type GeometryReader<ModifiedContent<VStack<TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Spacer)>>, _FrameLayout>> and conformance GeometryReader<A>(unint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t outlined init with take of TupleView<(ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>, ModifiedContent<Group<_ConditionalContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>>>, AccessibilityAttachmentModifier>)>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<ExpandedLabelPicker<ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>, Int>, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Text, _AlignmentWritingModifier>, AccessibilityAttachmentModifier>)>?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AlertConfigurationButton.alertButtonViewModel.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

id AlertConfigurationButton.workoutVoiceAvailabilityProvider.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {

    return v5;
  }

  else
  {
    v8[0] = *(v0 + 32);

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(v8[0], 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }
}

uint64_t AlertConfigurationButton.init(configurationContext:activityType:formattingManager:activityMoveMode:sessionContext:inferenceClient:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for ConfigurationNavigationModel();
  lazy protocol witness table accessor for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
  *a7 = EnvironmentObject.init()();
  *(a7 + 8) = v13;
  type metadata accessor for AlertButtonViewModel();
  lazy protocol witness table accessor for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel(&lazy protocol witness table cache variable for type AlertButtonViewModel and conformance AlertButtonViewModel, type metadata accessor for AlertButtonViewModel);
  *(a7 + 16) = Environment.init<A>(_:)();
  *(a7 + 24) = v14 & 1;
  type metadata accessor for WorkoutVoiceAvailabilityProvider();
  lazy protocol witness table accessor for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, MEMORY[0x277D7DD08]);
  *(a7 + 32) = Environment.init<A>(_:)();
  *(a7 + 40) = v15 & 1;
  type metadata accessor for HKHealthStore(0, &lazy cache variable for type metadata for HKHealthStore);
  lazy protocol witness table accessor for type HKHealthStore and conformance HKHealthStore();
  *(a7 + 56) = EnvironmentObject.init()();
  *(a7 + 64) = v16;
  v17 = type metadata accessor for AlertConfigurationButton();
  v18 = a7 + v17[15];
  State.init(wrappedValue:)();
  *v18 = v37;
  *(v18 + 8) = v38;
  v19 = a7 + v17[16];
  State.init(wrappedValue:)();
  *v19 = v37;
  *(v19 + 8) = v38;
  *(a7 + 72) = a2;
  v20 = v17[10];
  v34 = type metadata accessor for AlertConfigurationContext();
  v21 = *(v34 - 8);
  (*(v21 + 16))(a7 + v20, a1, v34);
  *(a7 + v17[12]) = a4;
  *(a7 + 48) = a3;
  v22 = v17[11];
  v32 = type metadata accessor for AlertConfigurationSessionContext();
  v23 = *(v32 - 8);
  (*(v23 + 16))(a7 + v22, a5, v32);
  v24 = v17[13];
  v25 = type metadata accessor for InferenceClient();
  v26 = *(v25 - 8);
  (*(v26 + 16))(a7 + v24, a6, v25);
  v27 = a2;
  v28 = a3;
  v29 = [v27 workoutActivityType];
  v31 = [v29 supportsWorkoutVoiceMotivation];

  (*(v26 + 8))(a6, v25);
  (*(v23 + 8))(a5, v32);
  result = (*(v21 + 8))(a1, v34);
  *(a7 + v17[14]) = v31;
  return result;
}

uint64_t lazy protocol witness table accessor for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type HKHealthStore and conformance HKHealthStore()
{
  result = lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore;
  if (!lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore)
  {
    type metadata accessor for HKHealthStore(255, &lazy cache variable for type metadata for HKHealthStore);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore);
  }

  return result;
}

uint64_t type metadata accessor for AlertConfigurationButton()
{
  result = type metadata singleton initialization cache for AlertConfigurationButton;
  if (!type metadata singleton initialization cache for AlertConfigurationButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlertConfigurationButton.workoutVoiceFooterText.getter()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = WorkoutUIBundle.super.isa;
  v19._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._object = 0x800000020CB94180;
  v3._countAndFlagsBits = 0xD000000000000028;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v19);

  v5 = *(v0 + 72);
  v6 = [v5 effectiveTypeIdentifier];
  v7 = [v5 swimmingLocationType];
  v8 = [v5 isIndoor];
  v9 = MEMORY[0x20F30BAD0](0x7361637265776F6CLL, 0xEA00000000005F65);
  v10 = MEMORY[0x20F30D330](v6, v7, v8, 0, v9);

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_20CB5DA70;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  if (!v13)
  {
    v15 = [v5 localizedName];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v16;
  }

  *(v14 + 32) = v11;
  *(v14 + 40) = v13;
  v17 = String.init(format:_:)();

  return v17;
}

uint64_t AlertConfigurationButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for AlertConfigurationButton();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v5;
  v7 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI36LazyNavigationDestinationViewBuilderVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v28 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGs5NeverOGAA017_AppearanceActionJ0VGMd);
  MEMORY[0x28223BE20](v31);
  v12 = v28 - v11;
  v30 = type metadata accessor for AlertConfigurationButton;
  outlined init with copy of AlertConfigurationButton(v2, v7, type metadata accessor for AlertConfigurationButton);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v28[1] = v6;
  v14 = swift_allocObject();
  v29 = type metadata accessor for AlertConfigurationButton;
  outlined init with take of AlertConfigurationButton(v7, v14 + v13, type metadata accessor for AlertConfigurationButton);
  UUID.init()();
  v15 = type metadata accessor for LazyNavigationDestinationViewBuilder();
  v16 = &v10[*(v15 + 20)];
  *v16 = partial apply for closure #1 in AlertConfigurationButton.lazyBuilder.getter;
  v16[1] = v14;
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel(&lazy protocol witness table cache variable for type LazyNavigationDestinationViewBuilder and conformance LazyNavigationDestinationViewBuilder, type metadata accessor for LazyNavigationDestinationViewBuilder);
  NavigationLink<>.init<A>(value:label:)();
  v17 = v2;
  v18 = v2;
  v19 = v30;
  outlined init with copy of AlertConfigurationButton(v18, v7, v30);
  v20 = swift_allocObject();
  v21 = v29;
  outlined init with take of AlertConfigurationButton(v7, v20 + v13, v29);
  v22 = &v12[*(v31 + 36)];
  *v22 = partial apply for closure #2 in AlertConfigurationButton.body.getter;
  v22[1] = v20;
  v22[2] = 0;
  v22[3] = 0;
  v23 = v17;
  v24 = AlertConfigurationButton.workoutVoiceAvailabilityProvider.getter();
  v25 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

  v34 = v25;
  outlined init with copy of AlertConfigurationButton(v23, v7, v19);
  v26 = swift_allocObject();
  outlined init with take of AlertConfigurationButton(v7, v26 + v13, v21);
  lazy protocol witness table accessor for type ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.State and conformance WorkoutVoiceAvailabilityProvider.State();
  View.onChange<A>(of:initial:_:)();

  outlined consume of WorkoutVoiceAvailabilityProvider.State(v25);
  return outlined destroy of ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never>, _AppearanceActionModifier>(v12, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGs5NeverOGAA017_AppearanceActionJ0VGMd);
}

uint64_t closure #1 in AlertConfigurationButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v23[0] = a1;
  v24 = AlertConfigurationButton.alertButtonImage.getter();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = WorkoutUIBundle.super.isa;
  v27._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x415F535452454C41;
  v10._object = 0xEF454C5449545F58;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v27);

  v26 = v13;
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  v14 = WorkoutUIBundle.super.isa;
  v28._object = 0xE000000000000000;
  v15._object = 0x800000020CB940B0;
  v15._countAndFlagsBits = 0xD000000000000013;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v28);

  v26 = v18;
  v19 = (v23[0] + *(type metadata accessor for AlertConfigurationButton() + 60));
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v24) = v20;
  v25 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  ModifiedContent<>.accessibilityValue<A>(_:isEnabled:)();

  outlined destroy of ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never>, _AppearanceActionModifier>(v6, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  if (one-time initialization token for alertConfiguration != -1)
  {
    swift_once();
  }

  ModifiedContent<>.accessibilityIdentifier(_:)();
  return outlined destroy of ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never>, _AppearanceActionModifier>(v8, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
}

uint64_t AlertConfigurationButton.alertButtonImage.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v26[-v6];
  v8 = AlertConfigurationButton.workoutVoiceIsSupported.getter();
  v9 = type metadata accessor for AlertConfigurationButton();
  v10 = (v0 + *(v9 + 60));
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v28) = v11;
  v29 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  v13 = v27;
  v14 = (v0 + *(v9 + 64));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v28) = v15;
  v29 = v16;
  State.wrappedValue.getter();
  if (v13 == 1)
  {
    if (v8)
    {
      if (!v27)
      {
        return Image.init(_internalSystemName:)();
      }
    }

    else if (v27)
    {
      static WOLog.workoutVoice.getter();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v28 = v20;
        *v19 = 136315138;
        *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000020CB5FEE0, &v28);
        _os_log_impl(&dword_20C66F000, v17, v18, "%s Workout voice is unsupported but on, and alerts are on. This is an invalid state. Defaulting to alerts are on.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x20F30E080](v20, -1, -1);
        MEMORY[0x20F30E080](v19, -1, -1);
      }

      (*(v2 + 8))(v7, v1);
    }

    else
    {
      static WOLog.workoutVoice.getter();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v28 = v25;
        *v24 = 136315138;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000020CB5FEE0, &v28);
        _os_log_impl(&dword_20C66F000, v22, v23, "%s Workout voice is unsupported but on, and alerts are off. This is an invalid state. Defaulting to alerts are off.", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x20F30E080](v25, -1, -1);
        MEMORY[0x20F30E080](v24, -1, -1);
      }

      (*(v2 + 8))(v5, v1);
    }
  }

  return Image.init(systemName:)();
}

uint64_t closure #2 in AlertConfigurationButton.body.getter(uint64_t a1)
{
  AlertConfigurationButton.workoutVoiceIsEnabled()();
  type metadata accessor for AlertConfigurationButton();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.setter();
  AlertConfigurationButton.alertButtonViewModel.getter();
  AlertButtonViewModel.anyAlertIsEnabled(for:)(*(a1 + 72));

  return State.wrappedValue.setter();
}

uint64_t AlertConfigurationButton.workoutVoiceIsEnabled()()
{
  v1 = v0;
  v2 = AlertConfigurationButton.workoutVoiceAvailabilityProvider.getter();
  v3 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

  LOBYTE(v2) = WorkoutVoiceAvailabilityProvider.State.isFeatureAvailable.getter();
  outlined consume of WorkoutVoiceAvailabilityProvider.State(v3);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FitnessIntelligenceFeatures();
  v9[3] = v4;
  v9[4] = lazy protocol witness table accessor for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel(&lazy protocol witness table cache variable for type FitnessIntelligenceFeatures and conformance FitnessIntelligenceFeatures, MEMORY[0x277D09F50]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D09F48], v4);
  LOBYTE(v4) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  if ((v4 & 1) == 0 || *(v1 + *(type metadata accessor for AlertConfigurationButton() + 56)) != 1)
  {
    return 0;
  }

  v6 = [*(v1 + 72) workoutActivityType];
  v7 = FIIsWorkoutVoiceEnabledForActivityType();

  return v7;
}

uint64_t closure #3 in AlertConfigurationButton.body.getter()
{
  AlertConfigurationButton.workoutVoiceIsEnabled()();
  type metadata accessor for AlertConfigurationButton();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  return State.wrappedValue.setter();
}

uint64_t closure #1 in AlertConfigurationButton.lazyBuilder.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9EmptyViewVAA0G0PAAE15navigationTitleyQrqd__SyRd__lFQOyAA08ModifiedE0VyAA4ListVys5NeverOAA05TupleG0VyARyAA7SectionVyA2gA4TextVG_07WorkoutB0019VoiceCompanionEntryG0VtGSg_AX018AlertConfigurationG0VAX020IntervalTargetAlertssG0VSgtGGAX07StackedK16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVG_SSQo_GGMd);
  a2[4] = lazy protocol witness table accessor for type Group<_ConditionalContent<EmptyView, <<opaque return type of View.navigationTitle<A>(_:)>>.0>> and conformance <A> Group<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return closure #1 in closure #1 in AlertConfigurationButton.lazyBuilder.getter(a1, boxed_opaque_existential_1);
}

uint64_t partial apply for closure #1 in AlertConfigurationButton.lazyBuilder.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for AlertConfigurationButton() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in AlertConfigurationButton.lazyBuilder.getter(v4, a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for AlertConfigurationButton() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  outlined consume of Environment<WorkoutVoiceAvailabilityProvider>.Content(*(v2 + 32), *(v2 + 40));

  v3 = v1[12];
  v4 = type metadata accessor for AlertConfigurationContext();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[13];
  v6 = type metadata accessor for AlertConfigurationSessionContext();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = v1[15];
  v8 = type metadata accessor for InferenceClient();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in AlertConfigurationButton.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AlertConfigurationButton() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGs5NeverOGAA017_AppearanceActionJ0VGMd);
    lazy protocol witness table accessor for type NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGs5NeverOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.State and conformance WorkoutVoiceAvailabilityProvider.State()
{
  result = lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.State and conformance WorkoutVoiceAvailabilityProvider.State;
  if (!lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.State and conformance WorkoutVoiceAvailabilityProvider.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.State and conformance WorkoutVoiceAvailabilityProvider.State);
  }

  return result;
}

uint64_t closure #1 in closure #1 in AlertConfigurationButton.lazyBuilder.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAIyAA7SectionVyAA05EmptyH0VAmA4TextVG_07WorkoutB0019VoiceCompanionEntryH0VtGSg_AQ018AlertConfigurationH0VAQ020IntervalTargetAlertsoH0VSgtGGAQ07StackedE16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMd);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAA4ListVys5NeverOAA05TupleC0VyALyAA7SectionVyAA05EmptyC0VApA4TextVG_07WorkoutB0019VoiceCompanionEntryC0VtGSg_AT018AlertConfigurationC0VAT020IntervalTargetAlertsqC0VSgtGGAT07StackedH16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVG_SSQo_Md);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewVAA0G0PAAE15navigationTitleyQrqd__SyRd__lFQOyAA08ModifiedD0VyAA4ListVys5NeverOAA05TupleG0VyARyAA7SectionVyA2gA4TextVG_07WorkoutB0019VoiceCompanionEntryG0VtGSg_AX018AlertConfigurationG0VAX020IntervalTargetAlertssG0VSgtGGAX07StackedK16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVG_SSQo__GMd);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = [*(a1 + 72) identifier];
  if (v14 == 82)
  {
    swift_storeEnumTagMultiPayload();
    v15 = lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(TupleView<(Section<EmptyView, EmptyView, Text>, VoiceCompanionEntryView)>?, AlertConfigurationView, IntervalTargetAlertsEntryView?)>>, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>();
    v16 = lazy protocol witness table accessor for type String and conformance String();
    v37._countAndFlagsBits = v4;
    v37._object = MEMORY[0x277D837D0];
    v38 = v15;
    v39 = v16;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v33 = v8;
    v34 = v4;
    v35 = v7;
    v36 = a2;
    MEMORY[0x28223BE20](v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyACyAA7SectionVyAA05EmptyD0VAgA4TextVG_07WorkoutB0019VoiceCompanionEntryD0VtGSg_AK018AlertConfigurationD0VAK020IntervalTargetAlertskD0VSgtGMd);
    lazy protocol witness table accessor for type NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type TupleView<(TupleView<(Section<EmptyView, EmptyView, Text>, VoiceCompanionEntryView)>?, AlertConfigurationView, IntervalTargetAlertsEntryView?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyACyAA7SectionVyAA05EmptyD0VAgA4TextVG_07WorkoutB0019VoiceCompanionEntryD0VtGSg_AK018AlertConfigurationD0VAK020IntervalTargetAlertskD0VSgtGMd);
    List<>.init(content:)();
    v18 = AlertConfigurationButton.workoutVoiceIsSupported.getter();
    if (v18)
    {
      v19 = 0xD000000000000032;
    }

    else
    {
      v19 = 0xD000000000000029;
    }

    if (v18)
    {
      v20 = "ION_TITLE_MULTIPLE_ALERTS";
    }

    else
    {
      v20 = "bell.badge.waveform";
    }

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v21 = WorkoutUIBundle.super.isa;
    v40._object = 0xE000000000000000;
    v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v22.value._object = 0xEB00000000656C62;
    v23._object = (v20 | 0x8000000000000000);
    v23._countAndFlagsBits = v19;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v40);

    v37 = v25;
    v26 = lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(TupleView<(Section<EmptyView, EmptyView, Text>, VoiceCompanionEntryView)>?, AlertConfigurationView, IntervalTargetAlertsEntryView?)>>, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>();
    v27 = lazy protocol witness table accessor for type String and conformance String();
    v28 = MEMORY[0x277D837D0];
    v29 = v34;
    View.navigationTitle<A>(_:)();

    outlined destroy of ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never>, _AppearanceActionModifier>(v6, &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAIyAA7SectionVyAA05EmptyH0VAmA4TextVG_07WorkoutB0019VoiceCompanionEntryH0VtGSg_AQ018AlertConfigurationH0VAQ020IntervalTargetAlertsoH0VSgtGGAQ07StackedE16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMd);
    v30 = v33;
    v31 = v35;
    (*(v33 + 16))(v13, v10, v35);
    swift_storeEnumTagMultiPayload();
    v37._countAndFlagsBits = v29;
    v37._object = v28;
    v38 = v26;
    v39 = v27;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v30 + 8))(v10, v31);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in AlertConfigurationButton.lazyBuilder.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v126 = type metadata accessor for ConfigurationType();
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v117 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for AlertConfigurationContext();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v118 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for AlertConfigurationViewModel.ViewModelContainer(0);
  v5 = MEMORY[0x28223BE20](v115);
  v116 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v114 = (&v107 - v7);
  v130 = type metadata accessor for AlertConfigurationSessionContext();
  v129 = *(v130 - 8);
  v8 = MEMORY[0x28223BE20](v130);
  v128 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v113 = &v107 - v11;
  MEMORY[0x28223BE20](v10);
  v127 = &v107 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAgA4TextVG_07WorkoutB0019VoiceCompanionEntryD0VtGMd);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v107 - v15;
  v17 = type metadata accessor for VoiceCompanionEntryView();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v107 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAeA4TextVGMd);
  v111 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v112 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v107 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAgA4TextVG_07WorkoutB0019VoiceCompanionEntryD0VtGSgMd);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v119 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v107 - v31;
  v123 = a1;
  v33 = AlertConfigurationButton.workoutVoiceIsSupported.getter();
  v125 = v32;
  if (v33)
  {
    v34 = v123;
    *&v132 = AlertConfigurationButton.workoutVoiceFooterText.getter();
    *(&v132 + 1) = v35;
    lazy protocol witness table accessor for type String and conformance String();
    *&v132 = Text.init<A>(_:)();
    *(&v132 + 1) = v36;
    LOBYTE(v133) = v37 & 1;
    *(&v133 + 1) = v38;
    v107 = v27;
    Section<>.init(footer:content:)();
    v109 = v14;
    v108 = v16;
    v110 = v13;
    v39 = *(v34 + 72);
    v40 = v20;
    v41 = *(type metadata accessor for AlertConfigurationButton() + 52);
    v42 = v111;
    v43 = v17[7];
    v44 = type metadata accessor for InferenceClient();
    (*(*(v44 - 8) + 16))(&v22[v43], v34 + v41, v44);
    type metadata accessor for VoiceAssetsObserver();
    lazy protocol witness table accessor for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel(&lazy protocol witness table cache variable for type VoiceAssetsObserver and conformance VoiceAssetsObserver, MEMORY[0x277D7E340]);
    v45 = v39;
    *v22 = Environment.init<A>(_:)();
    v22[8] = v46 & 1;
    type metadata accessor for WorkoutVoiceAvailabilityProvider();
    lazy protocol witness table accessor for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, MEMORY[0x277D7DD08]);
    *(v22 + 2) = Environment.init<A>(_:)();
    v22[24] = v47 & 1;
    v48 = &v22[v17[9]];
    LOBYTE(v131[0]) = 0;
    State.init(wrappedValue:)();
    v49 = *(&v132 + 1);
    *v48 = v132;
    *(v48 + 1) = v49;
    v50 = &v22[v17[10]];
    LOBYTE(v131[0]) = 0;
    State.init(wrappedValue:)();
    v51 = *(&v132 + 1);
    *v50 = v132;
    *(v50 + 1) = v51;
    *(v22 + 4) = v45;
    v22[v17[8]] = 0;
    v52 = v42;
    v53 = *(v42 + 16);
    v54 = v112;
    v55 = v107;
    v53(v112, v107, v23);
    v56 = v23;
    v57 = v40;
    outlined init with copy of AlertConfigurationButton(v22, v40, type metadata accessor for VoiceCompanionEntryView);
    v58 = v108;
    v53(v108, v54, v56);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAeA4TextVG_07WorkoutB0019VoiceCompanionEntryE0VtMd);
    outlined init with copy of AlertConfigurationButton(v57, v58 + *(v59 + 48), type metadata accessor for VoiceCompanionEntryView);
    outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v22, type metadata accessor for VoiceCompanionEntryView);
    v60 = *(v52 + 8);
    v60(v55, v56);
    outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v57, type metadata accessor for VoiceCompanionEntryView);
    v60(v54, v56);
    v61 = v125;
    outlined init with take of TupleView<(Section<EmptyView, EmptyView, Text>, VoiceCompanionEntryView)>(v58, v125);
    (*(v109 + 56))(v61, 0, 1, v110);
  }

  else
  {
    (*(v14 + 56))(v32, 1, 1, v13);
  }

  v62 = v123;
  v63 = *(v123 + 72);
  v64 = *(v123 + 48);
  v65 = type metadata accessor for AlertConfigurationButton();
  v66 = *(v65 + 44);
  v112 = *(v62 + *(v65 + 48));
  v67 = v129;
  v68 = *(v129 + 16);
  v69 = v62 + v66;
  v70 = v127;
  v71 = v130;
  v68(v127, v69, v130);
  v72 = v113;
  v68(v113, v70, v71);
  type metadata accessor for ActivityPersistingViewModel(0);
  swift_allocObject();
  v73 = v63;
  v74 = v64;
  v75 = v73;
  v76 = v74;
  v77 = specialized ActivityPersistingViewModel.init(activityType:formattingManager:)(v75, v76);

  v78 = v114;
  *v114 = v77;
  swift_storeEnumTagMultiPayload();
  v68(v128, v72, v71);
  type metadata accessor for AlertConfigurationViewModel(0);
  v79 = swift_allocObject();
  ObservationRegistrar.init()();
  v80 = *(v67 + 8);
  v80(v72, v71);
  outlined init with copy of AlertConfigurationButton(v78, v79 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_container, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  *(v79 + 16) = v75;
  *(v79 + 24) = v76;
  v81 = v116;
  outlined init with take of AlertConfigurationButton(v78, v116, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21LocalBindingViewModelC_0A4Core17ConfigurationTypeOtMd);
    v83 = v118;
    (*(v124 + 32))(v118, v81 + *(v82 + 48), v126);
    v84 = MEMORY[0x277D7E4B8];
  }

  else
  {
    outlined destroy of AlertConfigurationViewModel.ViewModelContainer(v81, type metadata accessor for AlertConfigurationViewModel.ViewModelContainer);
    v84 = MEMORY[0x277D7E4C0];
    v83 = v118;
  }

  v85 = v120;
  v86 = v121;
  (*(v120 + 104))(v83, *v84, v121);
  (*(v85 + 32))(v79 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_configurationContext, v83, v86);
  *(v79 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_workoutConfiguration) = 0;
  *(v79 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_activityMoveMode) = v112;
  v87 = v130;
  (*(v129 + 32))(v79 + OBJC_IVAR____TtC9WorkoutUI27AlertConfigurationViewModel_sessionContext, v128, v130);
  AlertConfigurationView.init(viewModel:)(v79, &v137);
  v80(v127, v87);
  v88 = FIUIWorkoutActivityType.configurationTypes.getter();
  v89 = v124;
  v90 = v117;
  v91 = v126;
  (*(v124 + 104))(v117, *MEMORY[0x277D7E110], v126);
  v92 = specialized Set.contains(_:)(v90, v88);

  (*(v89 + 8))(v90, v91);
  v93 = 0;
  v94 = 0;
  if (v92)
  {
    v94 = v75;
    MEMORY[0x20F305950]();
    v95 = dispatch thunk of TargetAlerts.intervalTargetAlertsEnabled.getter();

    v93 = v95 & 1;
  }

  v96 = v125;
  v97 = v119;
  outlined init with copy of TupleView<(Section<EmptyView, EmptyView, Text>, VoiceCompanionEntryView)>?(v125, v119);
  v98 = v122;
  outlined init with copy of TupleView<(Section<EmptyView, EmptyView, Text>, VoiceCompanionEntryView)>?(v97, v122);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAgA4TextVG_07WorkoutB0019VoiceCompanionEntryD0VtGSg_AK018AlertConfigurationD0VAK020IntervalTargetAlertskD0VSgtMd);
  v100 = (v98 + *(v99 + 48));
  v101 = v141;
  v131[4] = v141;
  v102 = v140;
  v131[3] = v140;
  v131[2] = v139;
  v103 = v138;
  v104 = v137;
  v131[1] = v138;
  v131[0] = v137;
  v100[2] = v139;
  v100[3] = v102;
  v100[4] = v101;
  *v100 = v104;
  v100[1] = v103;
  v105 = (v98 + *(v99 + 64));
  outlined init with copy of AlertConfigurationView(v131, &v132);
  outlined copy of IntervalTargetAlertsEntryView?(v93, 0, v94);
  outlined destroy of ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never>, _AppearanceActionModifier>(v96, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAgA4TextVG_07WorkoutB0019VoiceCompanionEntryD0VtGSgMd);
  *v105 = v93;
  v105[1] = 0;
  v105[2] = v94;
  outlined consume of IntervalTargetAlertsEntryView?(v93, 0, v94);
  v134 = v139;
  v135 = v140;
  v136 = v141;
  v132 = v137;
  v133 = v138;
  outlined destroy of AlertConfigurationView(&v132);
  return outlined destroy of ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never>, _AppearanceActionModifier>(v97, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAgA4TextVG_07WorkoutB0019VoiceCompanionEntryD0VtGSgMd);
}

uint64_t AlertConfigurationButton.workoutVoiceIsSupported.getter()
{
  v1 = type metadata accessor for FitnessIntelligenceFeatures();
  v9[3] = v1;
  v9[4] = lazy protocol witness table accessor for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel(&lazy protocol witness table cache variable for type FitnessIntelligenceFeatures and conformance FitnessIntelligenceFeatures, MEMORY[0x277D09F50]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D09F48], v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  if ((v1 & 1) != 0 && (v3 = [*(v0 + 72) workoutActivityType], v4 = objc_msgSend(v3, sel_supportsWorkoutVoiceMotivation), v3, v4))
  {
    v5 = AlertConfigurationButton.workoutVoiceAvailabilityProvider.getter();
    v6 = dispatch thunk of WorkoutVoiceAvailabilityProvider.availabilityState.getter();

    v7 = WorkoutVoiceAvailabilityProvider.State.isFeatureSupported.getter();
    outlined consume of WorkoutVoiceAvailabilityProvider.State(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void type metadata completion function for AlertConfigurationButton()
{
  type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<AlertButtonViewModel>(319, &lazy cache variable for type metadata for Environment<AlertButtonViewModel>, type metadata accessor for AlertButtonViewModel);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<AlertButtonViewModel>(319, &lazy cache variable for type metadata for Environment<WorkoutVoiceAvailabilityProvider>, MEMORY[0x277D7DD08]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for HKHealthStore(319, &lazy cache variable for type metadata for FIUIFormattingManager);
        if (v3 <= 0x3F)
        {
          type metadata accessor for EnvironmentObject<HKHealthStore>();
          if (v4 <= 0x3F)
          {
            type metadata accessor for HKHealthStore(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
            if (v5 <= 0x3F)
            {
              type metadata accessor for AlertConfigurationContext();
              if (v6 <= 0x3F)
              {
                type metadata accessor for AlertConfigurationSessionContext();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for HKActivityMoveMode(319);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for InferenceClient();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for State<Bool>();
                      if (v10 <= 0x3F)
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
      }
    }
  }
}

void type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>()
{
  if (!lazy cache variable for type metadata for EnvironmentObject<ConfigurationNavigationModel>)
  {
    type metadata accessor for ConfigurationNavigationModel();
    lazy protocol witness table accessor for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentObject<ConfigurationNavigationModel>);
    }
  }
}

void type metadata accessor for Environment<AlertButtonViewModel>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for EnvironmentObject<HKHealthStore>()
{
  if (!lazy cache variable for type metadata for EnvironmentObject<HKHealthStore>)
  {
    type metadata accessor for HKHealthStore(255, &lazy cache variable for type metadata for HKHealthStore);
    lazy protocol witness table accessor for type HKHealthStore and conformance HKHealthStore();
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentObject<HKHealthStore>);
    }
  }
}

uint64_t type metadata accessor for HKHealthStore(uint64_t a1, unint64_t *a2)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<EmptyView, <<opaque return type of View.navigationTitle<A>(_:)>>.0>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<EmptyView, <<opaque return type of View.navigationTitle<A>(_:)>>.0>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<EmptyView, <<opaque return type of View.navigationTitle<A>(_:)>>.0>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9EmptyViewVAA0G0PAAE15navigationTitleyQrqd__SyRd__lFQOyAA08ModifiedE0VyAA4ListVys5NeverOAA05TupleG0VyARyAA7SectionVyA2gA4TextVG_07WorkoutB0019VoiceCompanionEntryG0VtGSg_AX018AlertConfigurationG0VAX020IntervalTargetAlertssG0VSgtGGAX07StackedK16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVG_SSQo_GGMd);
    lazy protocol witness table accessor for type _ConditionalContent<EmptyView, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<EmptyView, <<opaque return type of View.navigationTitle<A>(_:)>>.0>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyView, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewVAA0F0PAAE15navigationTitleyQrqd__SyRd__lFQOyAA08ModifiedD0VyAA4ListVys5NeverOAA05TupleF0VyAPyAA7SectionVyA2eA4TextVG_07WorkoutB0019VoiceCompanionEntryF0VtGSg_AV018AlertConfigurationF0VAV020IntervalTargetAlertsrF0VSgtGGAV07StackedJ16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVG_SSQo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAIyAA7SectionVyAA05EmptyH0VAmA4TextVG_07WorkoutB0019VoiceCompanionEntryH0VtGSg_AQ018AlertConfigurationH0VAQ020IntervalTargetAlertsoH0VSgtGGAQ07StackedE16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMd);
    lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(TupleView<(Section<EmptyView, EmptyView, Text>, VoiceCompanionEntryView)>?, AlertConfigurationView, IntervalTargetAlertsEntryView?)>>, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(TupleView<(Section<EmptyView, EmptyView, Text>, VoiceCompanionEntryView)>?, AlertConfigurationView, IntervalTargetAlertsEntryView?)>>, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(TupleView<(Section<EmptyView, EmptyView, Text>, VoiceCompanionEntryView)>?, AlertConfigurationView, IntervalTargetAlertsEntryView?)>>, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(TupleView<(Section<EmptyView, EmptyView, Text>, VoiceCompanionEntryView)>?, AlertConfigurationView, IntervalTargetAlertsEntryView?)>>, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAIyAA7SectionVyAA05EmptyH0VAmA4TextVG_07WorkoutB0019VoiceCompanionEntryH0VtGSg_AQ018AlertConfigurationH0VAQ020IntervalTargetAlertsoH0VSgtGGAQ07StackedE16SectionsModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGMd);
    lazy protocol witness table accessor for type NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never> and conformance NavigationLink<A, B>(&lazy protocol witness table cache variable for type List<Never, TupleView<(TupleView<(Section<EmptyView, EmptyView, Text>, VoiceCompanionEntryView)>?, AlertConfigurationView, IntervalTargetAlertsEntryView?)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAGyAA7SectionVyAA05EmptyF0VAkA4TextVG_07WorkoutB0019VoiceCompanionEntryF0VtGSg_AO018AlertConfigurationF0VAO020IntervalTargetAlertsmF0VSgtGGMd);
    lazy protocol witness table accessor for type StackedListSectionsModifier and conformance StackedListSectionsModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(TupleView<(Section<EmptyView, EmptyView, Text>, VoiceCompanionEntryView)>?, AlertConfigurationView, IntervalTargetAlertsEntryView?)>>, StackedListSectionsModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never> and conformance NavigationLink<A, B>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with take of AlertConfigurationButton(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TupleView<(Section<EmptyView, EmptyView, Text>, VoiceCompanionEntryView)>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAgA4TextVG_07WorkoutB0019VoiceCompanionEntryD0VtGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void outlined copy of IntervalTargetAlertsEntryView?(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {

    v3 = a3;
  }
}

uint64_t outlined destroy of ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never>, _AppearanceActionModifier>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined consume of IntervalTargetAlertsEntryView?(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined init with copy of AlertConfigurationButton(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AlertConfigurationViewModel.ViewModelContainer(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of TupleView<(Section<EmptyView, EmptyView, Text>, VoiceCompanionEntryView)>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAgA4TextVG_07WorkoutB0019VoiceCompanionEntryD0VtGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t one-time initialization function for shared()
{
  type metadata accessor for MirrorLiveActivity();
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_cachedActivityState;
  v2 = type metadata accessor for MirroredWidgetAttributes.ContentState();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_currentActivityUUID;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v0[OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_disabledForTesting] = 0;
  v5 = [objc_opt_self() standardUserDefaults];
  *(v0 + 5) = &type metadata for LiveActivityManager;
  *(v0 + 6) = &protocol witness table for LiveActivityManager;
  v6 = swift_allocObject();
  *(v0 + 2) = v6;
  result = type metadata accessor for NSUserDefaults();
  v6[5] = result;
  v6[6] = &protocol witness table for NSUserDefaults;
  v6[2] = v5;
  static MirrorLiveActivity.shared = v0;
  return result;
}

uint64_t static MirrorLiveActivity.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t MirrorLiveActivity.update(publisher:sessionUUID:workoutUUID:monitorState:notification:)(void *a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, unsigned __int8 *a4, void *a5)
{
  v6 = v5;
  v120 = a5;
  v131 = a4;
  v118 = a3;
  v132 = a2;
  v126 = a1;
  v7 = type metadata accessor for Logger();
  v133 = *(v7 - 8);
  v134 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v116 = v108 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore24MirroredWidgetAttributesV12ContentStateVSgMd);
  MEMORY[0x28223BE20](v12);
  v113 = v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v117 = v108 - v15;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v121);
  v122 = v108 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGMd);
  v123 = *(v17 - 8);
  v124 = v17;
  MEMORY[0x28223BE20](v17);
  v128 = v108 - v18;
  v19 = type metadata accessor for MirroredWidgetAttributes.ContentState();
  v129 = *(v19 - 8);
  v130 = v19;
  MEMORY[0x28223BE20](v19);
  v114 = v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v108 - v22;
  MEMORY[0x28223BE20](v24);
  v127 = v108 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v108 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v32 - 8);
  v115 = v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v119 = v108 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = v108 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = v108 - v40;
  v42 = type metadata accessor for UUID();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  MEMORY[0x28223BE20](v44);
  MEMORY[0x28223BE20](v45);
  if (*(v6 + OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_disabledForTesting))
  {
    static WOLog.dataLink.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_20C66F000, v49, v50, "[LiveActivity] Update disabled for testing", v51, 2u);
      MEMORY[0x20F30E080](v51, -1, -1);
    }

    (*(v133 + 8))(v9, v134);
    goto LABEL_9;
  }

  v111 = v48;
  v112 = v47;
  v125 = v108 - v46;
  v110 = v12;
  v52 = *v131;
  outlined init with copy of UUID?(v132, v41, &_s10Foundation4UUIDVSgMd);
  v132 = *(v43 + 48);
  if (v132(v41, 1, v42) == 1)
  {
    outlined destroy of UUID?(v41, &_s10Foundation4UUIDVSgMd);
    MirrorLiveActivity.cleanupInactiveSession()();
    goto LABEL_9;
  }

  LODWORD(v131) = v52;
  v109 = v6;
  v53 = *(v43 + 32);
  v108[1] = v43 + 32;
  v108[0] = v53;
  v53(v125, v41, v42);
  v54 = v42;
  v55 = v43;
  v56 = v126;
  MetricsPublisher.workoutStatePublisher.getter();
  WorkoutStatePublisher.workoutStartDate.getter();

  v57 = type metadata accessor for Date();
  v58 = *(v57 - 8);
  if ((*(v58 + 48))(v31, 1, v57) == 1)
  {
    (*(v55 + 8))(v125, v54);
    outlined destroy of UUID?(v31, &_s10Foundation4DateVSgMd);
    goto LABEL_9;
  }

  outlined destroy of UUID?(v31, &_s10Foundation4DateVSgMd);
  outlined init with copy of UUID?(v118, v38, &_s10Foundation4UUIDVSgMd);
  v61 = v120;
  v62 = v56;
  v63 = v127;
  MirroredWidgetAttributes.ContentState.init(publisher:notification:workoutUUID:)();
  (*(v129 + 16))(v23, v63, v130);
  (*(v58 + 56))(v28, 1, 1, v57);
  v64 = MEMORY[0x277D7E480];
  lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(&lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState, MEMORY[0x277D7E480]);
  lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(&lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState, v64);
  lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(&lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState, v64);
  ActivityContent.init(state:staleDate:relevanceScore:)();
  v65 = v119;
  v120 = *(v55 + 16);
  (v120)(v119, v125, v54);
  v126 = v55;
  (*(v55 + 56))(v65, 0, 1, v54);
  v66 = OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_currentActivityUUID;
  v67 = v109;
  swift_beginAccess();
  v68 = v122;
  v69 = *(v121 + 48);
  outlined init with copy of UUID?(v65, v122, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of UUID?(v67 + v66, v68 + v69, &_s10Foundation4UUIDVSgMd);
  v70 = v132;
  if (v132(v68, 1, v54) != 1)
  {
    v74 = v115;
    outlined init with copy of UUID?(v68, v115, &_s10Foundation4UUIDVSgMd);
    if (v70(v68 + v69, 1, v54) != 1)
    {
      v76 = v111;
      (v108[0])(v111, v68 + v69, v54);
      lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v77 = dispatch thunk of static Equatable.== infix(_:_:)();
      v67 = v109;
      v78 = v77;
      v79 = v126[1];
      v79(v76, v54);
      outlined destroy of UUID?(v65, &_s10Foundation4UUIDVSgMd);
      v80 = v74;
      v71 = v54;
      v79(v80, v54);
      outlined destroy of UUID?(v68, &_s10Foundation4UUIDVSgMd);
      v73 = v129;
      v72 = v130;
      if (v78)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (!v131)
      {
        v105 = v125;
        v106 = v128;
        v59 = MirrorLiveActivity.startNewActivityIfNeeded(for:with:)(v125, v128);
        (*(v123 + 8))(v106, v124);
        (*(v73 + 8))(v127, v72);
        (v126[1])(v105, v71);
        return v59 & 1;
      }

      goto LABEL_19;
    }

    outlined destroy of UUID?(v65, &_s10Foundation4UUIDVSgMd);
    v75 = v74;
    v71 = v54;
    (v126[1])(v75, v54);
LABEL_16:
    outlined destroy of UUID?(v68, &_s10Foundation4UUIDVSg_ADtMd);
    v73 = v129;
    v72 = v130;
    goto LABEL_18;
  }

  outlined destroy of UUID?(v65, &_s10Foundation4UUIDVSgMd);
  v71 = v54;
  if (v70(v68 + v69, 1, v54) != 1)
  {
    goto LABEL_16;
  }

  outlined destroy of UUID?(v68, &_s10Foundation4UUIDVSgMd);
  v73 = v129;
  v72 = v130;
LABEL_19:
  v81 = OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_cachedActivityState;
  swift_beginAccess();
  v82 = v117;
  outlined init with copy of UUID?(v67 + v81, v117, &_s11WorkoutCore24MirroredWidgetAttributesV12ContentStateVSgMd);
  if ((*(v73 + 48))(v82, 1, v72) != 1)
  {
    v102 = v114;
    (*(v73 + 32))(v114, v82, v72);
    LOBYTE(v135) = v131;
    v103 = v128;
    v59 = MirrorLiveActivity.processActivityUpdate(for:in:with:)(v102, &v135, v128);
    v104 = *(v73 + 8);
    v104(v102, v72);
    (*(v123 + 8))(v103, v124);
    v104(v127, v72);
    (v126[1])(v125, v71);
    return v59 & 1;
  }

  outlined destroy of UUID?(v82, &_s11WorkoutCore24MirroredWidgetAttributesV12ContentStateVSgMd);
  v83 = v116;
  static WOLog.dataLink.getter();
  v84 = v112;
  v85 = v125;
  v86 = v71;
  (v120)(v112, v125, v71);
  v87 = v83;

  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v135 = v132;
    *v90 = 136315394;
    lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    LODWORD(v131) = v89;
    v91 = dispatch thunk of CustomStringConvertible.description.getter();
    v93 = v92;
    v94 = v126[1];
    v94(v84, v86);
    v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v135);

    *(v90 + 4) = v95;
    *(v90 + 12) = 2080;
    v96 = v113;
    outlined init with copy of UUID?(v109 + v81, v113, &_s11WorkoutCore24MirroredWidgetAttributesV12ContentStateVSgMd);
    v97 = Optional.description.getter();
    v99 = v98;
    outlined destroy of UUID?(v96, &_s11WorkoutCore24MirroredWidgetAttributesV12ContentStateVSgMd);
    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, &v135);

    *(v90 + 14) = v100;
    _os_log_impl(&dword_20C66F000, v88, v131, "[LiveActivity] Invalid state, cannot process update %s, %s", v90, 0x16u);
    v101 = v132;
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v101, -1, -1);
    MEMORY[0x20F30E080](v90, -1, -1);

    (*(v133 + 8))(v116, v134);
    (*(v123 + 8))(v128, v124);
    (*(v129 + 8))(v127, v130);
    v94(v125, v86);
  }

  else
  {

    v107 = v126[1];
    v107(v84, v86);
    (*(v133 + 8))(v87, v134);
    (*(v123 + 8))(v128, v124);
    (*(v73 + 8))(v127, v72);
    v107(v85, v86);
  }

LABEL_9:
  v59 = 0;
  return v59 & 1;
}

uint64_t static MirrorLiveActivity.dismiss(workoutUUID:)(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return MirrorLiveActivity.dismiss(workoutUUID:)(a1);
}

uint64_t MirrorLiveActivity.dismiss(workoutUUID:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.dataLink.getter();
  (*(v3 + 16))(v5, a1, v2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = a1;
    v12 = v11;
    v23 = swift_slowAlloc();
    v26 = v23;
    *v12 = 136315138;
    lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v6;
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v26);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_20C66F000, v9, v10, "[LiveActivity] Dismiss called for LiveActivity with workout UUID %s", v12, 0xCu);
    v17 = v23;
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x20F30E080](v17, -1, -1);
    v18 = v12;
    a1 = v24;
    MEMORY[0x20F30E080](v18, -1, -1);

    v19 = (*(v25 + 8))(v8, v22);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    v19 = (*(v25 + 8))(v8, v6);
  }

  MEMORY[0x28223BE20](v19);
  *(&v21 - 2) = a1;
  return MirrorLiveActivity.teardown(where:)(partial apply for closure #1 in MirrorLiveActivity.dismiss(workoutUUID:));
}

uint64_t closure #1 in MirrorLiveActivity.dismiss(workoutUUID:)(void *a1, uint64_t a2)
{
  v43 = a2;
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd) - 8;
  MEMORY[0x28223BE20](v41);
  v39 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v44 = &v37 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for MirroredWidgetAttributes.ContentState();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGMd);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - v18;
  v21 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v22 = v21;
  v23 = v40;
  (*(v20 + 16))(v22, v20);
  ActivityContent.state.getter();
  v24 = v16;
  v25 = v11;
  v26 = v44;
  (*(v17 + 8))(v19, v24);
  v27 = v39;
  MirroredWidgetAttributes.ContentState.workoutUUID.getter();
  v28 = v12;
  v29 = v42;
  (*(v13 + 8))(v15, v28);
  (*(v29 + 16))(v26, v43, v23);
  (*(v29 + 56))(v26, 0, 1, v23);
  v30 = *(v41 + 56);
  outlined init with copy of UUID?(v25, v27, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of UUID?(v26, v27 + v30, &_s10Foundation4UUIDVSgMd);
  v31 = *(v29 + 48);
  if (v31(v27, 1, v23) != 1)
  {
    v33 = v38;
    outlined init with copy of UUID?(v27, v38, &_s10Foundation4UUIDVSgMd);
    if (v31(v27 + v30, 1, v23) != 1)
    {
      v34 = v37;
      (*(v29 + 32))(v37, v27 + v30, v23);
      lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v29 + 8);
      v35(v34, v23);
      outlined destroy of UUID?(v44, &_s10Foundation4UUIDVSgMd);
      outlined destroy of UUID?(v25, &_s10Foundation4UUIDVSgMd);
      v35(v33, v23);
      outlined destroy of UUID?(v27, &_s10Foundation4UUIDVSgMd);
      return v32 & 1;
    }

    outlined destroy of UUID?(v44, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UUID?(v25, &_s10Foundation4UUIDVSgMd);
    (*(v29 + 8))(v33, v23);
    goto LABEL_6;
  }

  outlined destroy of UUID?(v26, &_s10Foundation4UUIDVSgMd);
  outlined destroy of UUID?(v25, &_s10Foundation4UUIDVSgMd);
  if (v31(v27 + v30, 1, v23) != 1)
  {
LABEL_6:
    outlined destroy of UUID?(v27, &_s10Foundation4UUIDVSg_ADtMd);
    v32 = 0;
    return v32 & 1;
  }

  outlined destroy of UUID?(v27, &_s10Foundation4UUIDVSgMd);
  v32 = 1;
  return v32 & 1;
}

void static MirrorLiveActivity.discard()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  MirrorLiveActivity.discard()();
}

Swift::Void __swiftcall MirrorLiveActivity.discard()()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityUIDismissalPolicy();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  static WOLog.dataLink.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_20C66F000, v15, v16, "[LiveActivity] Discarding all LiveActivities", v17, 2u);
    MEMORY[0x20F30E080](v17, -1, -1);
  }

  v18 = *(v9 + 8);
  v18(v14, v8);
  if (*(v1 + OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_disabledForTesting) == 1)
  {
    static WOLog.dataLink.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20C66F000, v19, v20, "[LiveActivity] Teardown disabled for testing", v21, 2u);
      MEMORY[0x20F30E080](v21, -1, -1);
    }

    v18(v12, v8);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v22 = off_282392008();
    v23 = v22[2];
    if (v23)
    {
      v30 = v22;
      v24 = (v22 + 4);
      v25 = v32;
      v26 = (v31 + 8);
      do
      {
        outlined init with copy of ActivityProtocol(v24, v33);
        v28 = v34;
        v27 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGMd);
        (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
        static ActivityUIDismissalPolicy.immediate.getter();
        (*(v27 + 32))(v7, v4, v28, v27);
        (*v26)(v4, v25);
        outlined destroy of UUID?(v7, &_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGSgMd);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        v24 += 40;
        --v23;
      }

      while (v23);
    }
  }
}

uint64_t MirrorLiveActivity.cleanupInactiveSession()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore24MirroredWidgetAttributesV12ContentStateVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v73 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v73 - v6;
  v82 = type metadata accessor for ActivityUIDismissalPolicy();
  v8 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v80 = v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v73 - v13;
  v85 = type metadata accessor for MirroredWidgetAttributes.ContentState();
  v76 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v16 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGMd);
  v77 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v18 = v73 - v17;
  v84 = type metadata accessor for Logger();
  v79 = *(v84 - 1);
  MEMORY[0x28223BE20](v84);
  v20 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v78 = (v73 - v22);
  MEMORY[0x28223BE20](v23);
  v25 = v73 - v24;
  v26 = type metadata accessor for WorkoutFeatures();
  v87 = v26;
  v88 = lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(&lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures, MEMORY[0x277D7DDC8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v86);
  (*(*(v26 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D7DDC0], v26);
  LOBYTE(v26) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v86);
  if ((v26 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    static WOLog.dataLink.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v75 = v7;
      v35 = v1;
      v36 = v4;
      v37 = v8;
      v38 = v34;
      *v34 = 0;
      _os_log_impl(&dword_20C66F000, v32, v33, "[LiveActivity] No active session, close activities that haven't ended.", v34, 2u);
      v39 = v38;
      v8 = v37;
      v4 = v36;
      v1 = v35;
      v7 = v75;
      MEMORY[0x20F30E080](v39, -1, -1);
    }

    v40 = v79[1];
    v41 = v25;
    v42 = v84;
    v40(v41, v84);
    if (*(v1 + OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_disabledForTesting) == 1)
    {
      v43 = v7;
      v44 = v78;
      static WOLog.dataLink.getter();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_20C66F000, v45, v46, "[LiveActivity] Teardown disabled for testing", v47, 2u);
        MEMORY[0x20F30E080](v47, -1, -1);
      }

      v40(v44, v42);
      v7 = v43;
    }

    else
    {
      v74 = v4;
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      v48 = off_282392008();
      v49 = v48[2];
      if (v49)
      {
        v75 = v7;
        v73[0] = v1;
        v73[1] = v48;
        v50 = v8;
        v51 = (v48 + 4);
        v52 = v77;
        v53 = v77 + 1;
        v84 = (v76 + 8);
        v54 = (v77 + 7);
        v77 = (v50 + 8);
        v78 = v54;
        v55 = v83;
        v79 = v52 + 1;
        do
        {
          outlined init with copy of ActivityProtocol(v51, v86);
          v57 = v87;
          v56 = v88;
          __swift_project_boxed_opaque_existential_1(v86, v87);
          (*(v56 + 16))(v57, v56);
          ActivityContent.state.getter();
          (*v53)(v18, v55);
          MirroredWidgetAttributes.ContentState.endDate.getter();
          (*v84)(v16, v85);
          v58 = type metadata accessor for Date();
          v59 = (*(*(v58 - 8) + 48))(v14, 1, v58);
          outlined destroy of UUID?(v14, &_s10Foundation4DateVSgMd);
          if (v59 == 1)
          {
            v60 = v87;
            v61 = v88;
            __swift_project_boxed_opaque_existential_1(v86, v87);
            v62 = v18;
            v63 = v80;
            (*v78)(v80, 1, 1, v55);
            v64 = v16;
            v65 = v14;
            v66 = v81;
            static ActivityUIDismissalPolicy.immediate.getter();
            (*(v61 + 32))(v63, v66, v60, v61);
            v67 = v66;
            v14 = v65;
            v16 = v64;
            v55 = v83;
            (*v77)(v67, v82);
            v68 = v63;
            v18 = v62;
            v53 = v79;
            outlined destroy of UUID?(v68, &_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGSgMd);
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v86);
          v51 += 40;
          --v49;
        }

        while (v49);

        v1 = v73[0];
        v4 = v74;
        v7 = v75;
      }

      else
      {

        v4 = v74;
      }
    }
  }

  else
  {
    v28 = v7;
    static WOLog.dataLink.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20C66F000, v29, v30, "[LiveActivity] No active session, tearing down all activities.", v31, 2u);
      MEMORY[0x20F30E080](v31, -1, -1);
    }

    v79[1](v20, v84);
    MirrorLiveActivity.discard()();
    v7 = v28;
  }

  v69 = type metadata accessor for UUID();
  (*(*(v69 - 8) + 56))(v7, 1, 1, v69);
  v70 = OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_currentActivityUUID;
  swift_beginAccess();
  outlined assign with take of UUID?(v7, v1 + v70, &_s10Foundation4UUIDVSgMd);
  swift_endAccess();
  (*(v76 + 56))(v4, 1, 1, v85);
  v71 = OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_cachedActivityState;
  swift_beginAccess();
  outlined assign with take of UUID?(v4, v1 + v71, &_s11WorkoutCore24MirroredWidgetAttributesV12ContentStateVSgMd);
  return swift_endAccess();
}

uint64_t MirrorLiveActivity.findCurrentActivity(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v4 = type metadata accessor for ActivityUIDismissalPolicy();
  v61 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v57 - v8;
  v64 = type metadata accessor for Logger();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for MirroredWidgetAttributes();
  v12 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for UUID();
  v14 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v71 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v16 = off_282392008();
  v17 = v16[2];
  v62 = v9;
  if (!v17)
  {

    v19 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
    }

    goto LABEL_19;
  }

  v58 = v11;
  v59 = v6;
  v60 = v4;
  v57[1] = v16;
  v18 = (v16 + 4);
  v66 = (v12 + 8);
  v19 = MEMORY[0x277D84F90];
  v65 = (v14 + 8);
  v20 = &_s9WorkoutUI16ActivityProtocol_pSgMd;
  v21 = &_s9WorkoutUI16ActivityProtocol_pSgMR;
  do
  {
    v22 = v21;
    v23 = v20;
    v24 = a2;
    outlined init with copy of ActivityProtocol(v18, v75);
    v25 = v76;
    v26 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    v27 = v67;
    (*(v26 + 8))(v25, v26);
    MirroredWidgetAttributes.uuid.getter();
    (*v66)(v27, v69);
    if (static UUID.== infix(_:_:)())
    {
      a2 = v24;
      v28 = v24;
      v20 = v23;
      v29 = v23;
      v21 = v22;
      outlined init with copy of UUID?(v28, &v72, v29);
      if (v73)
      {
        outlined init with take of ActivityProtocol(&v72, v74);
        outlined init with copy of ActivityProtocol(v74, &v72);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
        }

        v31 = v19[2];
        v30 = v19[3];
        v32 = v19;
        if (v31 >= v30 >> 1)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v19);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v74);
        (*v65)(v71, v68);
        outlined destroy of UUID?(a2, v20);
        v19 = v32;
        v32[2] = v31 + 1;
        outlined init with take of ActivityProtocol(&v72, &v32[5 * v31 + 4]);
      }

      else
      {
        (*v65)(v71, v68);
        outlined destroy of UUID?(a2, v20);
        outlined destroy of UUID?(&v72, v20);
      }

      outlined init with copy of ActivityProtocol(v75, a2);
    }

    else
    {
      outlined init with copy of ActivityProtocol(v75, v74);
      v33 = v19;
      a2 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
      }

      v20 = v23;
      v35 = v33[2];
      v34 = v33[3];
      v19 = v33;
      v21 = v22;
      if (v35 >= v34 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v33);
      }

      (*v65)(v71, v68);
      v19[2] = v35 + 1;
      outlined init with take of ActivityProtocol(v74, &v19[5 * v35 + 4]);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    v18 += 40;
    --v17;
  }

  while (v17);

  v4 = v60;
  v6 = v59;
  v11 = v58;
  if (v19[2])
  {
LABEL_19:
    static WOLog.dataLink.getter();

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v75[0] = v39;
      *v38 = 136315138;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI16ActivityProtocol_pMd);
      v41 = MEMORY[0x20F30BD20](v19, v40);
      v43 = v11;
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v75);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_20C66F000, v36, v37, "[LiveActivity] Ending stale activities %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x20F30E080](v39, -1, -1);
      MEMORY[0x20F30E080](v38, -1, -1);

      (*(v63 + 8))(v43, v64);
    }

    else
    {

      (*(v63 + 8))(v11, v64);
    }

    v45 = v19[2];
    if (v45)
    {
      v46 = (v19 + 4);
      v47 = (v61 + 8);
      v48 = v6;
      v49 = v62;
      do
      {
        outlined init with copy of ActivityProtocol(v46, v75);
        v50 = v4;
        v51 = v76;
        v52 = v77;
        __swift_project_boxed_opaque_existential_1(v75, v76);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGMd);
        (*(*(v53 - 8) + 56))(v49, 1, 1, v53);
        static ActivityUIDismissalPolicy.immediate.getter();
        v54 = *(v52 + 32);
        v55 = v52;
        v4 = v50;
        v54(v49, v48, v51, v55);
        (*v47)(v48, v50);
        outlined destroy of UUID?(v49, &_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGSgMd);
        __swift_destroy_boxed_opaque_existential_0Tm(v75);
        v46 += 40;
        --v45;
      }

      while (v45);
    }
  }
}

uint64_t MirrorLiveActivity.processActivityUpdate(for:in:with:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v232 = a3;
  v240 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v228 = &v207 - v7;
  v229 = type metadata accessor for ActivityUIDismissalPolicy();
  v227 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v239 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v226 = &v207 - v10;
  v236 = type metadata accessor for Date();
  v233 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v221 = &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v219 = &v207 - v13;
  MEMORY[0x28223BE20](v14);
  v225 = &v207 - v15;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGMd);
  v231 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  v237 = &v207 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v208 = &v207 - v18;
  v19 = type metadata accessor for AlertConfiguration.AlertSound();
  MEMORY[0x28223BE20](v19 - 8);
  v215 = &v207 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v21 - 8);
  v214 = &v207 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v213 = &v207 - v24;
  v223 = type metadata accessor for AlertConfiguration();
  v222 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v216 = &v207 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit18AlertConfigurationVSgMd);
  MEMORY[0x28223BE20](v26 - 8);
  v224 = &v207 - v27;
  v28 = type metadata accessor for Logger();
  v29 = *(v28 - 8);
  v249 = v28;
  v250 = v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v207 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v235 = &v207 - v33;
  MEMORY[0x28223BE20](v34);
  v234 = &v207 - v35;
  MEMORY[0x28223BE20](v36);
  v230 = &v207 - v37;
  MEMORY[0x28223BE20](v38);
  v220 = &v207 - v39;
  MEMORY[0x28223BE20](v40);
  v210 = &v207 - v41;
  MEMORY[0x28223BE20](v42);
  v212 = &v207 - v43;
  MEMORY[0x28223BE20](v44);
  v209 = &v207 - v45;
  MEMORY[0x28223BE20](v46);
  v211 = &v207 - v47;
  v245 = type metadata accessor for MirroredWidgetAttributes.ContentState();
  v243 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v244 = &v207 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v217 = &v207 - v50;
  MEMORY[0x28223BE20](v51);
  v218 = &v207 - v52;
  MEMORY[0x28223BE20](v53);
  v242 = &v207 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore24MirroredWidgetAttributesV12ContentStateVSgMd);
  MEMORY[0x28223BE20](v55 - 8);
  v238 = &v207 - v56;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v247);
  v248 = &v207 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v60 = &v207 - v59;
  v61 = type metadata accessor for UUID();
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v64 = &v207 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *a2;
  v66 = OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_currentActivityUUID;
  swift_beginAccess();
  v246 = v66;
  outlined init with copy of UUID?(v4 + v66, v60, &_s10Foundation4UUIDVSgMd);
  if ((*(v62 + 48))(v60, 1, v61) != 1)
  {
    (*(v62 + 32))(v64, v60, v61);
    v67 = v4;
    MirrorLiveActivity.findCurrentActivity(with:)(v64, &v251);
    v207 = v64;
    if (!v252)
    {
      (*(v62 + 8))(v207, v61);
      v68 = &_s9WorkoutUI16ActivityProtocol_pSgMd;
      v69 = &v251;
      goto LABEL_13;
    }

    outlined init with take of ActivityProtocol(&v251, &v253);
    if (v65 > 1)
    {
      if (v65 == 2)
      {
        v230 = v61;
        v104 = v243;
        v105 = *(v243 + 16);
        v106 = v245;
        v105(v244, v240, v245);
        MirroredWidgetAttributes.ContentState.isComplete.setter();
        result = FIWorkoutMirroringSetting();
        if (!result)
        {
          __break(1u);
          return result;
        }

        v235 = result;
        if (![result integerValue])
        {
          v107 = v225;
          Date.init()();
          v108 = v219;
          MirroredWidgetAttributes.ContentState.startDate.getter();
          Date.timeIntervalSince(_:)();
          v109 = *(v233 + 8);
          v110 = v236;
          v109(v108, v236);
          v106 = v245;
          v109(v107, v110);
          MirroredWidgetAttributes.ContentState.elapsedTime.setter();
        }

        v111 = v238;
        v112 = v244;
        v105(v238, v244, v106);
        (*(v104 + 56))(v111, 0, 1, v106);
        v113 = OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_cachedActivityState;
        swift_beginAccess();
        outlined assign with take of UUID?(v111, v67 + v113, &_s11WorkoutCore24MirroredWidgetAttributesV12ContentStateVSgMd);
        swift_endAccess();
        v105(v242, v112, v106);
        v114 = v233;
        (*(v233 + 56))(v226, 1, 1, v236);
        v115 = MEMORY[0x277D7E480];
        lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(&lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState, MEMORY[0x277D7E480]);
        lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(&lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState, v115);
        lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(&lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState, v115);
        v116 = v106;
        ActivityContent.init(state:staleDate:relevanceScore:)();
        MirroredWidgetAttributes.ContentState.elapsedTime.getter();
        v118 = v117;
        NLWorkoutAutoDiscardDurationLimit();
        v120 = v119;
        if (v118 >= v119)
        {
          v143 = __swift_project_boxed_opaque_existential_1((v67 + 16), *(v67 + 40));
          v144 = v143[3];
          v145 = v143[4];
          __swift_project_boxed_opaque_existential_1(v143, v144);
          (*(v145 + 72))(0xD000000000000018, 0x800000020CB94250, v144, v145);
          v146 = v225;
          Date.init()();
          static Double.seconds(_:)();
          v147 = v221;
          Date.addingTimeInterval(_:)();
          v148 = *(v114 + 8);
          v149 = v146;
          v150 = v236;
          v148(v149, v236);
          static ActivityUIDismissalPolicy.after(_:)();
          v148(v147, v150);
        }

        else
        {
          static ActivityUIDismissalPolicy.immediate.getter();
        }

        v151 = v234;
        static WOLog.dataLink.getter();

        v152 = Logger.logObject.getter();
        v153 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v152, v153))
        {
          LODWORD(v242) = v118 < v120;
          v154 = swift_slowAlloc();
          v155 = swift_slowAlloc();
          *&v251 = v155;
          *v154 = 136315394;
          v156 = v248;
          outlined init with copy of UUID?(v67 + v246, v248, &_s10Foundation4UUIDVSgMd);
          v157 = Optional.description.getter();
          v158 = v62;
          v160 = v159;
          v116 = v245;
          outlined destroy of UUID?(v156, &_s10Foundation4UUIDVSgMd);
          v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v160, &v251);
          v62 = v158;

          *(v154 + 4) = v161;
          *(v154 + 12) = 1024;
          *(v154 + 14) = v242;
          _os_log_impl(&dword_20C66F000, v152, v153, "[LiveActivity] Finalizing LiveActivity for session %s, discard? %{BOOL}d", v154, 0x12u);
          __swift_destroy_boxed_opaque_existential_0Tm(v155);
          MEMORY[0x20F30E080](v155, -1, -1);
          MEMORY[0x20F30E080](v154, -1, -1);

          (*(v250 + 8))(v234, v249);
        }

        else
        {

          (*(v250 + 8))(v151, v249);
        }

        v162 = v241;
        v163 = v231;
        v164 = v254;
        v165 = v255;
        __swift_project_boxed_opaque_existential_1(&v253, v254);
        v166 = v228;
        v167 = v237;
        (*(v163 + 16))(v228, v237, v162);
        (*(v163 + 56))(v166, 0, 1, v162);
        v168 = v239;
        (*(v165 + 32))(v166, v239, v164, v165);

        outlined destroy of UUID?(v166, &_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGSgMd);
        (*(v227 + 8))(v168, v229);
        (*(v163 + 8))(v167, v162);
        (*(v243 + 8))(v244, v116);
        v61 = v230;
        goto LABEL_53;
      }

      v125 = v235;
      static WOLog.dataLink.getter();
      v126 = v4;

      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v230 = v61;
        v131 = v130;
        *&v251 = v130;
        *v129 = 136315138;
        v132 = v126 + v246;
        v133 = v248;
        outlined init with copy of UUID?(v132, v248, &_s10Foundation4UUIDVSgMd);
        v134 = Optional.description.getter();
        v135 = v62;
        v137 = v136;
        outlined destroy of UUID?(v133, &_s10Foundation4UUIDVSgMd);
        v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v137, &v251);

        *(v129 + 4) = v138;
        _os_log_impl(&dword_20C66F000, v127, v128, "[LiveActivity] Ignoring tear down of existing activity %s as we are waiting for a timeout", v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v131);
        MEMORY[0x20F30E080](v131, -1, -1);
        MEMORY[0x20F30E080](v129, -1, -1);

        (*(v250 + 8))(v235, v249);
        (*(v135 + 8))(v207, v230);
        goto LABEL_32;
      }

      (*(v250 + 8))(v125, v249);
    }

    else
    {
      if (!v65)
      {
        v248 = v62;
        v70 = v238;
        v71 = v241;
        v72 = v232;
        ActivityContent.state.getter();
        v73 = v243;
        v74 = v245;
        (*(v243 + 56))(v70, 0, 1, v245);
        v75 = OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_cachedActivityState;
        swift_beginAccess();
        v76 = v70;
        v77 = v71;
        outlined assign with take of UUID?(v76, v67 + v75, &_s11WorkoutCore24MirroredWidgetAttributesV12ContentStateVSgMd);
        swift_endAccess();
        v78 = v242;
        ActivityContent.state.getter();
        LOBYTE(v71) = MirroredWidgetAttributes.ContentState.visuallyDistinct(from:)();
        v79 = *(v73 + 8);
        v79(v78, v74);
        if (v71)
        {
          v80 = MirroredWidgetAttributes.ContentState.notification.getter();
          if (v80)
          {

            v81 = v218;
            ActivityContent.state.getter();
            v82 = MirroredWidgetAttributes.ContentState.notification.getter();
            v83 = v81;
            v84 = v245;
            v79(v83, v245);
            if (!v82)
            {
              v87 = v211;
              static WOLog.dataLink.getter();
              v88 = Logger.logObject.getter();
              v89 = static os_log_type_t.default.getter();
              v181 = os_log_type_enabled(v88, v89);
              v62 = v248;
              if (v181)
              {
                v91 = swift_slowAlloc();
                *v91 = 0;
                v92 = "[LiveActivity] Clear Notification";
                goto LABEL_44;
              }

LABEL_45:

              (*(v250 + 8))(v87, v249);
              v182 = v224;
              (*(v222 + 56))(v224, 1, 1, v223);
              v183 = v254;
              v184 = v255;
              __swift_project_boxed_opaque_existential_1(&v253, v254);
              (*(v184 + 24))(v72, v182, v183, v184);
LABEL_52:
              outlined destroy of UUID?(v182, &_s11ActivityKit18AlertConfigurationVSgMd);
              goto LABEL_53;
            }

            v85 = v242;
            ActivityContent.state.getter();
            v86 = MirroredWidgetAttributes.ContentState.workoutActive.getter() & 1;
            v79(v85, v84);
            if (v86 != (MirroredWidgetAttributes.ContentState.workoutActive.getter() & 1))
            {
              v87 = v209;
              static WOLog.dataLink.getter();
              v88 = Logger.logObject.getter();
              v89 = static os_log_type_t.default.getter();
              v90 = os_log_type_enabled(v88, v89);
              v62 = v248;
              if (v90)
              {
                v91 = swift_slowAlloc();
                *v91 = 0;
                v92 = "[LiveActivity] Workout State Changed";
LABEL_44:
                _os_log_impl(&dword_20C66F000, v88, v89, v92, v91, 2u);
                MEMORY[0x20F30E080](v91, -1, -1);
                goto LABEL_45;
              }

              goto LABEL_45;
            }

            v185 = v224;
            (*(v222 + 56))(v224, 1, 1, v223);
            v186 = v254;
            v187 = v255;
            __swift_project_boxed_opaque_existential_1(&v253, v254);
            (*(v187 + 24))(v72, v185, v186, v187);
            outlined destroy of UUID?(v185, &_s11ActivityKit18AlertConfigurationVSgMd);
          }

          else
          {
            v169 = v217;
            ActivityContent.state.getter();
            v170 = MirroredWidgetAttributes.ContentState.notification.getter();
            v79(v169, v245);
            if (!v170)
            {
              v230 = v61;
              v188 = v210;
              static WOLog.dataLink.getter();
              v189 = v231;
              v190 = v208;
              (*(v231 + 16))(v208, v72, v77);
              v191 = Logger.logObject.getter();
              v192 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v191, v192))
              {
                v193 = swift_slowAlloc();
                v244 = v193;
                v247 = swift_slowAlloc();
                *&v251 = v247;
                *v193 = 136315138;
                v194 = v242;
                LODWORD(v246) = v192;
                ActivityContent.state.getter();
                lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(&lazy protocol witness table cache variable for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState, MEMORY[0x277D7E480]);
                v195 = v190;
                v196 = v245;
                v197 = dispatch thunk of CustomStringConvertible.description.getter();
                v198 = v77;
                v200 = v199;
                v79(v194, v196);
                (*(v189 + 8))(v195, v198);
                v201 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v197, v200, &v251);

                v202 = v244;
                *(v244 + 4) = v201;
                v203 = v202;
                _os_log_impl(&dword_20C66F000, v191, v246, "[LiveActivity] Sending Update: %s", v202, 0xCu);
                v204 = v247;
                __swift_destroy_boxed_opaque_existential_0Tm(v247);
                MEMORY[0x20F30E080](v204, -1, -1);
                MEMORY[0x20F30E080](v203, -1, -1);

                (*(v250 + 8))(v210, v249);
              }

              else
              {

                (*(v189 + 8))(v190, v77);
                (*(v250 + 8))(v188, v249);
              }

              v61 = v230;
              v62 = v248;
              v182 = v224;
              (*(v222 + 56))(v224, 1, 1, v223);
              v205 = v254;
              v206 = v255;
              __swift_project_boxed_opaque_existential_1(&v253, v254);
              (*(v206 + 24))(v232, v182, v205, v206);
              goto LABEL_52;
            }

            v171 = v212;
            static WOLog.dataLink.getter();
            v172 = Logger.logObject.getter();
            v173 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v172, v173))
            {
              v174 = swift_slowAlloc();
              *v174 = 0;
              _os_log_impl(&dword_20C66F000, v172, v173, "[LiveActivity] Display Notification", v174, 2u);
              MEMORY[0x20F30E080](v174, -1, -1);
            }

            (*(v250 + 8))(v171, v249);
            LocalizedStringResource.init(stringLiteral:)();
            LocalizedStringResource.init(stringLiteral:)();
            static AlertConfiguration.AlertSound.default.getter();
            v175 = v216;
            AlertConfiguration.init(title:body:sound:)();
            v176 = v222;
            v177 = v224;
            v178 = v223;
            (*(v222 + 16))(v224, v175, v223);
            (*(v176 + 56))(v177, 0, 1, v178);
            v179 = v254;
            v180 = v255;
            __swift_project_boxed_opaque_existential_1(&v253, v254);
            (*(v180 + 24))(v72, v177, v179, v180);
            outlined destroy of UUID?(v177, &_s11ActivityKit18AlertConfigurationVSgMd);
            (*(v176 + 8))(v175, v178);
          }

          v62 = v248;
LABEL_53:
          (*(v62 + 8))(v207, v61);
          __swift_destroy_boxed_opaque_existential_0Tm(&v253);
          return 1;
        }

        v139 = v220;
        static WOLog.dataLink.getter();
        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          *v142 = 0;
          _os_log_impl(&dword_20C66F000, v140, v141, "[LiveActivity] Skipping Update: Displayed values are the same", v142, 2u);
          MEMORY[0x20F30E080](v142, -1, -1);
        }

        (*(v250 + 8))(v139, v249);
        (*(v248 + 8))(v207, v61);
LABEL_32:
        __swift_destroy_boxed_opaque_existential_0Tm(&v253);
        return 0;
      }

      v121 = v230;
      static WOLog.dataLink.getter();
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_20C66F000, v122, v123, "[LiveActivity] Waiting for first publisher update", v124, 2u);
        MEMORY[0x20F30E080](v124, -1, -1);
      }

      (*(v250 + 8))(v121, v249);
    }

    (*(v62 + 8))(v207, v61);
    goto LABEL_32;
  }

  v67 = v4;
  v68 = &_s10Foundation4UUIDVSgMd;
  v69 = v60;
LABEL_13:
  outlined destroy of UUID?(v69, v68);
  static WOLog.dataLink.getter();
  v93 = v67;

  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v253 = v97;
    *v96 = 136315138;
    v98 = v248;
    outlined init with copy of UUID?(v93 + v246, v248, &_s10Foundation4UUIDVSgMd);
    v99 = Optional.description.getter();
    v101 = v100;
    outlined destroy of UUID?(v98, &_s10Foundation4UUIDVSgMd);
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, &v253);

    *(v96 + 4) = v102;
    _os_log_impl(&dword_20C66F000, v94, v95, "[LiveActivity] Missing activity, cannot process update for %s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    MEMORY[0x20F30E080](v97, -1, -1);
    MEMORY[0x20F30E080](v96, -1, -1);
  }

  (*(v250 + 8))(v31, v249);
  return 0;
}

uint64_t MirrorLiveActivity.startNewActivityIfNeeded(for:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v108 = a2;
  v111 = type metadata accessor for MirroredWidgetAttributes();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v93[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore24MirroredWidgetAttributesV12ContentStateVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v106 = &v93[-v7];
  v8 = type metadata accessor for Logger();
  v118 = *(v8 - 8);
  v119 = v8;
  MEMORY[0x28223BE20](v8);
  v97 = &v93[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v99 = &v93[-v11];
  MEMORY[0x28223BE20](v12);
  v105 = &v93[-v13];
  MEMORY[0x28223BE20](v14);
  v96 = &v93[-v15];
  MEMORY[0x28223BE20](v16);
  v104 = &v93[-v17];
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v98 = &v93[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v95 = &v93[-v22];
  MEMORY[0x28223BE20](v23);
  v113 = &v93[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = &v93[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v29 - 8);
  v103 = &v93[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v112 = &v93[-v32];
  MEMORY[0x28223BE20](v33);
  v35 = &v93[-v34];
  MirrorLiveActivity.findCurrentActivity(with:)(a1, v121);
  v36 = OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_currentActivityUUID;
  swift_beginAccess();
  v37 = v19[2];
  v114 = a1;
  v116 = v37;
  v117 = v19 + 2;
  v37(v35, a1, v18);
  v38 = v19[7];
  v101 = v19 + 7;
  v100 = v38;
  v38(v35, 0, 1, v18);
  v39 = *(v26 + 56);
  v107 = v3;
  v102 = v36;
  outlined init with copy of UUID?(v3 + v36, v28, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of UUID?(v35, &v28[v39], &_s10Foundation4UUIDVSgMd);
  v115 = v19;
  v40 = v19[6];
  if (v40(v28, 1, v18) == 1)
  {
    outlined destroy of UUID?(v35, &_s10Foundation4UUIDVSgMd);
    v41 = v40(&v28[v39], 1, v18);
    v42 = v116;
    if (v41 == 1)
    {
      outlined destroy of UUID?(v28, &_s10Foundation4UUIDVSgMd);
      v43 = v118;
      if (!v122)
      {
        goto LABEL_8;
      }

LABEL_17:
      v67 = v99;
      static WOLog.dataLink.getter();
      v68 = v98;
      v42(v98, v114, v18);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v120[0] = v72;
        *v71 = 136315138;
        lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v74 = v68;
        v75 = v43;
        v77 = v76;
        (v115[1])(v74, v18);
        v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v77, v120);

        *(v71 + 4) = v78;
        _os_log_impl(&dword_20C66F000, v69, v70, "[LiveActivity] Activity creation already attempted for %s skipping", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);
        MEMORY[0x20F30E080](v72, -1, -1);
        MEMORY[0x20F30E080](v71, -1, -1);

        (v75[1])(v67, v119);
LABEL_23:
        v91 = 0;
        goto LABEL_24;
      }

      (v115[1])(v68, v18);
      v62 = v43[1];
      v63 = v67;
LABEL_20:
      v62(v63, v119);
      goto LABEL_23;
    }

LABEL_7:
    outlined destroy of UUID?(v28, &_s10Foundation4UUIDVSg_ADtMd);
    v43 = v118;
    goto LABEL_8;
  }

  v44 = v112;
  outlined init with copy of UUID?(v28, v112, &_s10Foundation4UUIDVSgMd);
  if (v40(&v28[v39], 1, v18) == 1)
  {
    outlined destroy of UUID?(v35, &_s10Foundation4UUIDVSgMd);
    (v115[1])(v44, v18);
    v42 = v116;
    goto LABEL_7;
  }

  v64 = v115;
  v65 = v113;
  (v115[4])(v113, &v28[v39], v18);
  lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v94 = dispatch thunk of static Equatable.== infix(_:_:)();
  v66 = v64[1];
  v66(v65, v18);
  outlined destroy of UUID?(v35, &_s10Foundation4UUIDVSgMd);
  v66(v44, v18);
  outlined destroy of UUID?(v28, &_s10Foundation4UUIDVSgMd);
  v43 = v118;
  v42 = v116;
  if ((v94 & 1) != 0 && v122)
  {
    goto LABEL_17;
  }

LABEL_8:
  type metadata accessor for ActivityAuthorizationInfo();
  swift_allocObject();
  ActivityAuthorizationInfo.init()();
  v45 = ActivityAuthorizationInfo.areActivitiesEnabled.getter();

  if ((v45 & 1) == 0)
  {
    v58 = v105;
    static WOLog.dataLink.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_20C66F000, v59, v60, "[LiveActivity] Live activities are not enabled", v61, 2u);
      MEMORY[0x20F30E080](v61, -1, -1);
    }

    v62 = v43[1];
    v63 = v58;
    goto LABEL_20;
  }

  v46 = v104;
  static WOLog.dataLink.getter();
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_20C66F000, v47, v48, "[LiveActivity] Live activities are enabled", v49, 2u);
    MEMORY[0x20F30E080](v49, -1, -1);
  }

  v118 = v43[1];
  (v118)(v46, v119);
  v50 = v103;
  v51 = v114;
  v42(v103, v114, v18);
  v100(v50, 0, 1, v18);
  v52 = v107;
  v53 = v102;
  swift_beginAccess();
  outlined assign with take of UUID?(v50, v52 + v53, &_s10Foundation4UUIDVSgMd);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGMd);
  v54 = v106;
  ActivityContent.state.getter();
  v55 = type metadata accessor for MirroredWidgetAttributes.ContentState();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  v56 = OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_cachedActivityState;
  swift_beginAccess();
  outlined assign with take of UUID?(v54, v52 + v56, &_s11WorkoutCore24MirroredWidgetAttributesV12ContentStateVSgMd);
  swift_endAccess();
  v42(v113, v51, v18);
  v57 = v109;
  MirroredWidgetAttributes.init(uuid:)();
  __swift_project_boxed_opaque_existential_1((v52 + 16), *(v52 + 40));
  off_282392010(v120);
  __swift_destroy_boxed_opaque_existential_0Tm(v120);
  v79 = v96;
  static WOLog.dataLink.getter();
  v80 = v95;
  v42(v95, v51, v18);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v84 = v79;
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v120[0] = v86;
    *v85 = 136315138;
    lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v87 = dispatch thunk of CustomStringConvertible.description.getter();
    v89 = v88;
    (v115[1])(v80, v18);
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, v120);

    *(v85 + 4) = v90;
    _os_log_impl(&dword_20C66F000, v81, v82, "[LiveActivity] Started activity for UUID: %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v86);
    MEMORY[0x20F30E080](v86, -1, -1);
    MEMORY[0x20F30E080](v85, -1, -1);

    (v118)(v84, v119);
  }

  else
  {

    (v115[1])(v80, v18);
    (v118)(v79, v119);
  }

  (*(v110 + 8))(v57, v111);
  v91 = 1;
LABEL_24:
  outlined destroy of UUID?(v121, &_s9WorkoutUI16ActivityProtocol_pSgMd);
  return v91;
}

uint64_t MirrorLiveActivity.teardown(where:)(uint64_t (*a1)(void *))
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ActivityUIDismissalPolicy();
  v7 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - v11;
  if (*(v1 + OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_disabledForTesting))
  {
    static WOLog.dataLink.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20C66F000, v13, v14, "[LiveActivity] Teardown disabled for testing", v15, 2u);
      MEMORY[0x20F30E080](v15, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v17 = off_282392008();
    v18 = v17[2];
    if (v18)
    {
      v24[1] = v17;
      v19 = (v17 + 4);
      v20 = (v7 + 8);
      do
      {
        outlined init with copy of ActivityProtocol(v19, v26);
        if (a1(v26))
        {
          v22 = v27;
          v21 = v28;
          __swift_project_boxed_opaque_existential_1(v26, v27);
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGMd);
          (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
          static ActivityUIDismissalPolicy.immediate.getter();
          (*(v21 + 32))(v12, v9, v22, v21);
          (*v20)(v9, v25);
          outlined destroy of UUID?(v12, &_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGSgMd);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        v19 += 40;
        --v18;
      }

      while (v18);
    }

    else
    {
    }
  }
}

uint64_t MirrorLiveActivity.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_cachedActivityState, &_s11WorkoutCore24MirroredWidgetAttributesV12ContentStateVSgMd);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_currentActivityUUID, &_s10Foundation4UUIDVSgMd);
  return v0;
}

uint64_t MirrorLiveActivity.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_cachedActivityState, &_s11WorkoutCore24MirroredWidgetAttributesV12ContentStateVSgMd);
  outlined destroy of UUID?(v0 + OBJC_IVAR____TtC9WorkoutUI18MirrorLiveActivity_currentActivityUUID, &_s10Foundation4UUIDVSgMd);

  return swift_deallocClassInstance();
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for TrainingLoadSampleDaySummary();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WorkoutUI8UIPicker33_2CF2A6943750EC02257617BB8FECEA7DLLV9ComponentVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WorkoutUI0D13MediaProviderVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WorkoutUI010QuickStartD17ViewConfigurationVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9WorkoutUI31MetricsGlyphSizingPreferenceKeyV0G6AnchorVGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_3(v10);
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

uint64_t outlined init with copy of ActivityProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t type metadata accessor for MirrorLiveActivity()
{
  result = type metadata singleton initialization cache for MirrorLiveActivity;
  if (!type metadata singleton initialization cache for MirrorLiveActivity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MirrorLiveActivity()
{
  type metadata accessor for MirroredWidgetAttributes.ContentState?(319, &lazy cache variable for type metadata for MirroredWidgetAttributes.ContentState?, MEMORY[0x277D7E480]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MirroredWidgetAttributes.ContentState?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for MirroredWidgetAttributes.ContentState?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined init with take of ActivityProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of UUID?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type MirroredWidgetAttributes.ContentState and conformance MirroredWidgetAttributes.ContentState(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t type metadata accessor for NSUserDefaults()
{
  result = lazy cache variable for type metadata for NSUserDefaults;
  if (!lazy cache variable for type metadata for NSUserDefaults)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUserDefaults);
  }

  return result;
}

id _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy9WorkoutUI0D24OnboardingAnalyticsEventV3Key33_33BBD532864AE50CBDA4CF2D5EA9A1C7LLOSo8NSObjectCG_SS_AMts5NeverOTg503_s9d6UI0A24fgh10V3Key33_33jklmnopq6LLOSo8r36CSSAHIgygoo_AF3key_AH5valuetSS_AHts5s18OIegnrzr_TR03_s9a6U131A24cde15V04senddE033_33ghijklmn50LL9didEnable18selectedVoiceIndexySb_SiSgtFSDySSSo8o18CGSgycfU_SS_AJtAC3F14AELLO_AJtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v34 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v4 = a1;
  v5 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v2 = v34;
  v7 = result;
  v8 = 0;
  v33 = *(a1 + 36);
  v28 = a1 + 72;
  v29 = v1;
  v30 = a1 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_30;
    }

    if (v33 != *(v4 + 36))
    {
      goto LABEL_31;
    }

    if (*(*(v4 + 48) + v7) > 1u)
    {
      if (*(*(v4 + 48) + v7) == 2)
      {
        v31 = 0xE700000000000000;
        v32 = 0x64656C62616E65;
        goto LABEL_17;
      }

      v32 = 0x6C65536563696F76;
      v11 = 0xED00006465746365;
    }

    else if (*(*(v4 + 48) + v7))
    {
      v32 = 0xD000000000000015;
      v11 = 0x800000020CB92DC0;
    }

    else
    {
      v32 = 0xD00000000000001ELL;
      v11 = 0x800000020CB92DA0;
    }

    v31 = v11;
LABEL_17:
    v12 = *(*(v4 + 56) + 8 * v7);
    v35 = v2;
    v13 = v4;
    v14 = *(v2 + 16);
    v15 = *(v2 + 24);
    v16 = v2;
    result = v12;
    v2 = v16;
    if (v14 >= v15 >> 1)
    {
      v27 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v14 + 1, 1);
      result = v27;
      v2 = v35;
    }

    *(v2 + 16) = v14 + 1;
    v17 = (v2 + 24 * v14);
    v17[4] = v32;
    v17[5] = v31;
    v17[6] = result;
    v9 = 1 << *(v13 + 32);
    v5 = v30;
    if (v7 >= v9)
    {
      goto LABEL_32;
    }

    v18 = *(v30 + 8 * v10);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_33;
    }

    v4 = v13;
    if (v33 != *(v13 + 36))
    {
      goto LABEL_34;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v28 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          v25 = v2;
          result = outlined consume of [WorkoutOnboardingAnalyticsEvent.Key : NSObject].Index._Variant(v7, v33, 0);
          v2 = v25;
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      v26 = v2;
      result = outlined consume of [WorkoutOnboardingAnalyticsEvent.Key : NSObject].Index._Variant(v7, v33, 0);
      v2 = v26;
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v29)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

WorkoutUI::WorkoutOnboardingAnalyticsEvent __swiftcall WorkoutOnboardingAnalyticsEvent.init(isWorkoutBuddyFeatureAvailable:canEnableWorkoutBuddy:didEnable:selectedVoiceIndex:)(Swift::Bool isWorkoutBuddyFeatureAvailable, Swift::Bool canEnableWorkoutBuddy, Swift::Bool didEnable, Swift::Int_optional selectedVoiceIndex)
{
  *v4 = didEnable;
  *(v4 + 1) = isWorkoutBuddyFeatureAvailable;
  *(v4 + 2) = canEnableWorkoutBuddy;
  *(v4 + 8) = selectedVoiceIndex.value;
  *(v4 + 16) = selectedVoiceIndex.is_nil;
  result.selectedVoiceIndex.is_nil = didEnable;
  LOBYTE(result.selectedVoiceIndex.value) = canEnableWorkoutBuddy;
  result.didEnable = isWorkoutBuddyFeatureAvailable;
  return result;
}

Swift::Void __swiftcall WorkoutOnboardingAnalyticsEvent.send()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 1);
  v5 = v0[16];
  v6 = [objc_opt_self() sharedConnection];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isHealthDataSubmissionAllowed];

    if (v8)
    {
      v9 = MEMORY[0x20F30BAD0](0xD000000000000033, 0x800000020CB94270);
      v10 = swift_allocObject();
      *(v10 + 16) = v1;
      *(v10 + 24) = v1;
      *(v10 + 25) = v2;
      *(v10 + 26) = v3;
      *(v10 + 32) = v4;
      *(v10 + 40) = v5;
      *(v10 + 48) = v4;
      *(v10 + 56) = v5;
      v12[4] = partial apply for closure #1 in WorkoutOnboardingAnalyticsEvent.sendAnalyticsEvent(didEnable:selectedVoiceIndex:);
      v12[5] = v10;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 1107296256;
      v12[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
      v12[3] = &block_descriptor_0;
      v11 = _Block_copy(v12);

      AnalyticsSendEventLazy();
      _Block_release(v11);
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutOnboardingAnalyticsEvent.Key()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutOnboardingAnalyticsEvent.Key()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutOnboardingAnalyticsEvent.Key()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutOnboardingAnalyticsEvent.Key@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutOnboardingAnalyticsEvent.Key.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutOnboardingAnalyticsEvent.Key(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x64656C62616E65;
  if (*v1 != 2)
  {
    v3 = 0x6C65536563696F76;
    v2 = 0xED00006465746365;
  }

  v4 = 0x800000020CB92DA0;
  v5 = 0xD00000000000001ELL;
  if (*v1)
  {
    v5 = 0xD000000000000015;
    v4 = 0x800000020CB92DC0;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t closure #1 in WorkoutOnboardingAnalyticsEvent.sendAnalyticsEvent(didEnable:selectedVoiceIndex:)(char a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = (a2 >> 8) & 1;
  v10 = HIWORD(a2) & 1;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9WorkoutUI0C24OnboardingAnalyticsEventV3Key33_33BBD532864AE50CBDA4CF2D5EA9A1C7LLO_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, 2u, isUniquelyReferenced_nonNull_native);
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v15 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0, v15);
  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v24 = v11;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, 1u, v17);
  if ((a6 & 1) == 0)
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v24 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 3u, v19);
  }

  v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy9WorkoutUI0D24OnboardingAnalyticsEventV3Key33_33BBD532864AE50CBDA4CF2D5EA9A1C7LLOSo8NSObjectCG_SS_AMts5NeverOTg503_s9d6UI0A24fgh10V3Key33_33jklmnopq6LLOSo8r36CSSAHIgygoo_AF3key_AH5valuetSS_AHts5s18OIegnrzr_TR03_s9a6U131A24cde15V04senddE033_33ghijklmn509didEnable18selectedVoiceIndexySb_SiSgtFSDySSSo8o18CGSgycfU_SS_AJtAC3F14AELLO_AJtXEfU_Tf3nnnpf_nTf1cn_n(v11);

  if (v20[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd);
    v21 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v21 = MEMORY[0x277D84F98];
  }

  v24 = v21;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v22, 1, &v24);

  return v24;
}

unint64_t partial apply for closure #1 in WorkoutOnboardingAnalyticsEvent.sendAnalyticsEvent(didEnable:selectedVoiceIndex:)()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 24);
  if (*(v0 + 26))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return closure #1 in WorkoutOnboardingAnalyticsEvent.sendAnalyticsEvent(didEnable:selectedVoiceIndex:)(*(v0 + 16), v2 | v3, *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for WorkoutOnboardingAnalyticsEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutOnboardingAnalyticsEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, v5 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  specialized _NativeDictionary.copy()();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x20F30BC00](0xD00000000000001BLL, 0x800000020CB94310);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F30BC00](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, 1);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t getEnumTagSinglePayload for WorkoutOnboardingAnalyticsEvent.Key(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutOnboardingAnalyticsEvent.Key(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type [WorkoutOnboardingAnalyticsEvent.Key] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [WorkoutOnboardingAnalyticsEvent.Key] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WorkoutOnboardingAnalyticsEvent.Key] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI0A24OnboardingAnalyticsEventV3Key33_33BBD532864AE50CBDA4CF2D5EA9A1C7LLOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [WorkoutOnboardingAnalyticsEvent.Key] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutOnboardingAnalyticsEvent.Key and conformance WorkoutOnboardingAnalyticsEvent.Key()
{
  result = lazy protocol witness table cache variable for type WorkoutOnboardingAnalyticsEvent.Key and conformance WorkoutOnboardingAnalyticsEvent.Key;
  if (!lazy protocol witness table cache variable for type WorkoutOnboardingAnalyticsEvent.Key and conformance WorkoutOnboardingAnalyticsEvent.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutOnboardingAnalyticsEvent.Key and conformance WorkoutOnboardingAnalyticsEvent.Key);
  }

  return result;
}

unint64_t specialized WorkoutOnboardingAnalyticsEvent.Key.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutOnboardingAnalyticsEvent.Key.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DistanceSplitsView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for DistanceSplitsView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DistanceSplitsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleG0VyACyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAA14NavigationLinkVyAA6VStackVyAIyAM_AMtGGAO014DistancePickerG0VGAA32_EnvironmentKeyTransformModifierVySbGG_So21NLWorkoutSplitStorageCQo_tGACyAmO04BodyM0VGGAA017_AppearanceActionZ0VGMd);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = WorkoutUIBundle.super.isa;
  v28._object = 0xE000000000000000;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v8._countAndFlagsBits = 0xD000000000000021;
  v8._object = 0x800000020CB94330;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v28);

  v25 = v10;
  lazy protocol witness table accessor for type String and conformance String();
  v25._countAndFlagsBits = Text.init<A>(_:)();
  v25._object = v11;
  v26 = v12 & 1;
  v27 = v13;
  MEMORY[0x28223BE20](v25._countAndFlagsBits);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAA14NavigationLinkVyAA6VStackVyACyAI_AItGGAK014DistancePickerD0VGAA32_EnvironmentKeyTransformModifierVySbGG_So21NLWorkoutSplitStorageCQo_tGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015BodyHyphenationVGMd);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAA14NavigationLinkVyAA6VStackVyACyAI_AItGGAK014DistancePickerD0VGAA32_EnvironmentKeyTransformModifierVySbGG_So21NLWorkoutSplitStorageCQo_tGMd);
  lazy protocol witness table accessor for type ModifiedContent<Text, BodyHyphenation> and conformance <> ModifiedContent<A, B>();
  Section<>.init(footer:content:)();
  v14 = swift_allocObject();
  v15 = v2[1];
  v14[1] = *v2;
  v14[2] = v15;
  v14[3] = v2[2];
  *(v14 + 57) = *(v2 + 41);
  v16 = &v5[*(v3 + 36)];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = partial apply for closure #2 in DistanceSplitsView.body.getter;
  *(v16 + 3) = v14;
  isa = WorkoutUIBundle.super.isa;
  outlined init with copy of DistanceSplitsView(v2, &v25);
  v18 = isa;
  v29._object = 0xE000000000000000;
  v19._object = 0x800000020CB94360;
  v19._countAndFlagsBits = 0xD00000000000001BLL;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v29);

  v25 = v22;
  lazy protocol witness table accessor for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  View.navigationTitle<A>(_:)();

  return sub_20C676480(v5);
}

uint64_t closure #1 in DistanceSplitsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v40 = type metadata accessor for DistancePickerView();
  MEMORY[0x28223BE20](v40);
  v4 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AKtGG07WorkoutB0014DistancePickerI0VGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  MEMORY[0x28223BE20](v41);
  v6 = &v39 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA14NavigationLinkVyAA6VStackVyAA05TupleC0VyAA4TextV_APtGG07WorkoutB0014DistancePickerC0VGAA32_EnvironmentKeyTransformModifierVySbGG_So21NLWorkoutSplitStorageCQo_Md);
  v7 = *(v42 - 8);
  v8 = MEMORY[0x28223BE20](v42);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16.super.isa = WorkoutUIBundle.super.isa;
  v53._object = 0xE000000000000000;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v18._object = 0x800000020CB94380;
  v18._countAndFlagsBits = 0xD000000000000012;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, v16, v19, v53);

  v51 = v20;
  v49 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  lazy protocol witness table accessor for type String and conformance String();
  Toggle<>.init<A>(_:isOn:)();
  v51 = *a1;
  v52 = *(a1 + 16);
  v47 = *a1;
  v48 = *(a1 + 16);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo21NLWorkoutSplitStorageCGMd);
  Binding.projectedValue.getter();
  v39 = v15;
  DistancePickerView.init(distanceBasedSplits:activityType:formattingManager:)(*&v49, *(&v49 + 1), v50, *(a1 + 40), *(a1 + 48), v4);
  MEMORY[0x28223BE20](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd);
  lazy protocol witness table accessor for type DistancePickerView and conformance DistancePickerView(&lazy protocol witness table cache variable for type DistancePickerView and conformance DistancePickerView, type metadata accessor for DistancePickerView);
  NavigationLink.init(destination:label:)();
  LOBYTE(v16.super.isa) = *(a1 + 56);
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = (v16.super.isa & 1) == 0;
  v25 = &v6[*(v41 + 36)];
  *v25 = KeyPath;
  v25[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_0;
  v25[2] = v24;
  v47 = v51;
  v48 = v52;
  MEMORY[0x20F30B100](&v49, v21);
  v26 = v49;
  v27 = swift_allocObject();
  v28 = *(a1 + 16);
  v27[1] = *a1;
  v27[2] = v28;
  v27[3] = *(a1 + 32);
  *(v27 + 57) = *(a1 + 41);
  outlined init with copy of DistanceSplitsView(a1, &v47);
  type metadata accessor for NLWorkoutSplitStorage();
  lazy protocol witness table accessor for type ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, DistancePickerView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type DistancePickerView and conformance DistancePickerView(&lazy protocol witness table cache variable for type NLWorkoutSplitStorage and conformance NSObject, type metadata accessor for NLWorkoutSplitStorage);
  v29 = v44;
  View.onChange<A>(of:initial:_:)();

  outlined destroy of ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, DistancePickerView>, _EnvironmentKeyTransformModifier<Bool>>(v6, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AKtGG07WorkoutB0014DistancePickerI0VGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v30 = v39;
  v31 = v43;
  outlined init with copy of ModifiedContent<Toggle<Text>, HeaderHyphenation>(v39, v43);
  v32 = *(v7 + 16);
  v33 = v45;
  v34 = v42;
  v32(v45, v29, v42);
  v35 = v46;
  outlined init with copy of ModifiedContent<Toggle<Text>, HeaderHyphenation>(v31, v46);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAA14NavigationLinkVyAA6VStackVyAA05TupleJ0VyAG_AGtGGAI014DistancePickerJ0VGAA32_EnvironmentKeyTransformModifierVySbGG_So21NLWorkoutSplitStorageCQo_tMd);
  v32((v35 + *(v36 + 48)), v33, v34);
  v37 = *(v7 + 8);
  v37(v29, v34);
  outlined destroy of ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, DistancePickerView>, _EnvironmentKeyTransformModifier<Bool>>(v30, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd);
  v37(v33, v34);
  return outlined destroy of ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, DistancePickerView>, _EnvironmentKeyTransformModifier<Bool>>(v31, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd);
}

__n128 closure #1 in closure #1 in DistanceSplitsView.body.getter@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  closure #1 in closure #1 in closure #1 in DistanceSplitsView.body.getter(a1, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in DistanceSplitsView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v4 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  *&v47 = String.init(localized:table:bundle:locale:comment:)();
  *(&v47 + 1) = v7;
  lazy protocol witness table accessor for type String and conformance String();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  LOBYTE(ObjCClassFromMetadata) = v11;
  static Font.footnote.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;

  outlined consume of Text.Storage(v8, v10, ObjCClassFromMetadata & 1);

  static Color.gray.getter();
  v17 = Text.foregroundColor(_:)();
  v42 = v18;
  v43 = v17;
  v41 = v19;
  v44 = v20;

  outlined consume of Text.Storage(v12, v14, v16 & 1);

  v47 = *a1;
  v48 = *(a1 + 2);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo21NLWorkoutSplitStorageCGMd);
  MEMORY[0x20F30B100](v46, v21);
  v22 = v46[0];
  [v46[0] value];
  v24 = v23;

  v25 = FIUIDistanceTypeForActivityType();
  *&v47 = FIUIFormattingManager.distanceSplitsDisplayString(distanceInMeters:distanceType:)(v25, v24);
  *(&v47 + 1) = v26;
  v27 = StringProtocol.localizedUppercase.getter();
  v29 = v28;

  v46[0] = v27;
  v46[1] = v29;
  v30 = Text.init<A>(_:)();
  v32 = v31;
  LOBYTE(v29) = v33;
  static Font.footnote2.getter();
  v34 = Text.font(_:)();
  v36 = v35;
  LOBYTE(ObjCClassFromMetadata) = v37;
  v39 = v38;

  outlined consume of Text.Storage(v30, v32, v29 & 1);

  LOBYTE(v47) = v41 & 1;
  LOBYTE(v46[0]) = ObjCClassFromMetadata & 1;
  *a2 = v43;
  *(a2 + 8) = v42;
  *(a2 + 16) = v41 & 1;
  *(a2 + 24) = v44;
  *(a2 + 32) = v34;
  *(a2 + 40) = v36;
  *(a2 + 48) = ObjCClassFromMetadata & 1;
  *(a2 + 56) = v39;
  outlined copy of Text.Storage(v43, v42, v41 & 1);

  outlined copy of Text.Storage(v34, v36, ObjCClassFromMetadata & 1);

  outlined consume of Text.Storage(v34, v36, ObjCClassFromMetadata & 1);

  outlined consume of Text.Storage(v43, v42, v41 & 1);
}

uint64_t closure #2 in DistanceSplitsView.body.getter(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v13 = a1[2];
  v4 = v13;
  v14 = v3;
  *&v12 = v3;
  *(&v12 + 1) = v2;
  outlined init with copy of Transaction(&v14, &v11);

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo21NLWorkoutSplitStorageCGMd);
  MEMORY[0x20F30B100](&v11);
  v6 = v11;
  [v11 value];
  v8 = v7;

  v9 = [objc_allocWithZone(MEMORY[0x277D0A840]) initWithType:1 value:v8];
  v12 = *(a1 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  [v9 setEnabled_];
  [objc_opt_self() saveSplitStorage:v9 forActivityType:a1[5]];
  *&v12 = v3;
  *(&v12 + 1) = v2;
  v13 = v5;
  v11 = v9;
  Binding.wrappedValue.setter();
  outlined destroy of Transaction(&v14);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, BodyHyphenation> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, BodyHyphenation> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, BodyHyphenation> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015BodyHyphenationVGMd);
    lazy protocol witness table accessor for type BodyHyphenation and conformance BodyHyphenation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, BodyHyphenation> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BodyHyphenation and conformance BodyHyphenation()
{
  result = lazy protocol witness table cache variable for type BodyHyphenation and conformance BodyHyphenation;
  if (!lazy protocol witness table cache variable for type BodyHyphenation and conformance BodyHyphenation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BodyHyphenation and conformance BodyHyphenation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleG0VyACyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAA14NavigationLinkVyAA6VStackVyAIyAM_AMtGGAO014DistancePickerG0VGAA32_EnvironmentKeyTransformModifierVySbGG_So21NLWorkoutSplitStorageCQo_tGACyAmO04BodyM0VGGAA017_AppearanceActionZ0VGMd);
    lazy protocol witness table accessor for type Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)>, ModifiedContent<Text, BodyHyphenation>> and conformance <> Section<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)>, ModifiedContent<Text, BodyHyphenation>> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)>, ModifiedContent<Text, BodyHyphenation>> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)>, ModifiedContent<Text, BodyHyphenation>> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AA0E0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAIyAA14NavigationLinkVyAA6VStackVyAGyAM_AMtGGAO014DistancePickerE0VGAA32_EnvironmentKeyTransformModifierVySbGG_So21NLWorkoutSplitStorageCQo_tGAIyAmO04BodyM0VGGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAA14NavigationLinkVyAA6VStackVyACyAI_AItGGAK014DistancePickerD0VGAA32_EnvironmentKeyTransformModifierVySbGG_So21NLWorkoutSplitStorageCQo_tGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, BodyHyphenation> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)>, ModifiedContent<Text, BodyHyphenation>> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{

  return swift_deallocObject();
}

unint64_t type metadata accessor for NLWorkoutSplitStorage()
{
  result = lazy cache variable for type metadata for NLWorkoutSplitStorage;
  if (!lazy cache variable for type metadata for NLWorkoutSplitStorage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NLWorkoutSplitStorage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, DistancePickerView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, DistancePickerView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, DistancePickerView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AKtGG07WorkoutB0014DistancePickerI0VGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text, Text)>>, DistancePickerView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGG07WorkoutB0014DistancePickerG0VGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, DistancePickerView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t lazy protocol witness table accessor for type DistancePickerView and conformance DistancePickerView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of ModifiedContent<Toggle<Text>, HeaderHyphenation>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, DistancePickerView>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TimeSplitsView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for TimeSplitsView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TimeSplitsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleG0VyACyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_ACyAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAA14NavigationLinkVyAA6VStackVyAIyAM_AMtGGAO016TimeSplitsPickerG0VGAA32_EnvironmentKeyTransformModifierVySbGG_SdQo_AA14_OpacityEffectVGtGACyAmO04BodyM0VGGAA25_AppearanceActionModifierVGMd);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = WorkoutUIBundle.super.isa;
  v29._object = 0xE000000000000000;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v8._object = 0x800000020CB943D0;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v29);

  v26 = v10;
  lazy protocol witness table accessor for type String and conformance String();
  v26._countAndFlagsBits = Text.init<A>(_:)();
  v26._object = v11;
  v27 = v12 & 1;
  v28 = v13;
  MEMORY[0x28223BE20](v26._countAndFlagsBits);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AEyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAA14NavigationLinkVyAA6VStackVyACyAI_AItGGAK016TimeSplitsPickerD0VGAA32_EnvironmentKeyTransformModifierVySbGG_SdQo_AA14_OpacityEffectVGtGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB015BodyHyphenationVGMd);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AEyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAA14NavigationLinkVyAA6VStackVyACyAI_AItGGAK016TimeSplitsPickerD0VGAA32_EnvironmentKeyTransformModifierVySbGG_SdQo_AA14_OpacityEffectVGtGMd);
  lazy protocol witness table accessor for type ModifiedContent<Text, BodyHyphenation> and conformance <> ModifiedContent<A, B>();
  Section<>.init(footer:content:)();
  v14 = swift_allocObject();
  v15 = v2[3];
  v14[3] = v2[2];
  v14[4] = v15;
  *(v14 + 73) = *(v2 + 57);
  v16 = v2[1];
  v14[1] = *v2;
  v14[2] = v16;
  v17 = &v5[*(v3 + 36)];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = partial apply for closure #2 in TimeSplitsView.body.getter;
  *(v17 + 3) = v14;
  isa = WorkoutUIBundle.super.isa;
  outlined init with copy of TimeSplitsView(v2, &v26);
  v19 = isa;
  v30._object = 0xE000000000000000;
  v20._object = 0x800000020CB943F0;
  v20._countAndFlagsBits = 0xD000000000000017;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v30);

  v26 = v23;
  lazy protocol witness table accessor for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  View.navigationTitle<A>(_:)();

  return outlined destroy of ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier>(v5, &_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleG0VyACyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_ACyAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAA14NavigationLinkVyAA6VStackVyAIyAM_AMtGGAO016TimeSplitsPickerG0VGAA32_EnvironmentKeyTransformModifierVySbGG_SdQo_AA14_OpacityEffectVGtGACyAmO04BodyM0VGGAA25_AppearanceActionModifierVGMd);
}

uint64_t closure #1 in TimeSplitsView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for TimeSplitsPickerView();
  MEMORY[0x28223BE20](v3);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AKtGG07WorkoutB0016TimeSplitsPickerI0VGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  MEMORY[0x28223BE20](v50);
  v7 = v46 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA14NavigationLinkVyAA6VStackVyAA05TupleC0VyAA4TextV_APtGG07WorkoutB0016TimeSplitsPickerC0VGAA32_EnvironmentKeyTransformModifierVySbGG_SdQo_Md);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v49 = v46 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAA14NavigationLinkVyAA6VStackVyAA05TupleE0VyAA4TextV_APtGG07WorkoutB0016TimeSplitsPickerE0VGAA32_EnvironmentKeyTransformModifierVySbGG_SdQo_AA14_OpacityEffectVGMd);
  v9 = MEMORY[0x28223BE20](v48);
  v55 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v47 = v46 - v12;
  MEMORY[0x28223BE20](v11);
  v52 = v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v51 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v46 - v17;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = WorkoutUIBundle.super.isa;
  v62._object = 0xE000000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._object = 0x800000020CB94410;
  v21._countAndFlagsBits = 0xD000000000000010;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v62._countAndFlagsBits = 0;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v19, v22, v62);

  v60 = v23;
  v61 = *(a1 + 40);
  v59 = *(a1 + 40);
  v46[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  lazy protocol witness table accessor for type String and conformance String();
  Toggle<>.init<A>(_:isOn:)();
  v60 = *(a1 + 24);
  v59 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.projectedValue.getter();
  v24 = v57;
  v25 = v58;
  v26 = *(v3 + 24);
  *&v5[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA16PresentationModeVG_GMd);
  swift_storeEnumTagMultiPayload();
  *v5 = v24;
  *(v5 + 2) = v25;
  v57 = v24;
  v58 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  v28 = MEMORY[0x20F30B100](&v59, v27);
  v46[0] = v18;
  *(v5 + 3) = v59;
  *(v5 + 4) = 0;
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd);
  lazy protocol witness table accessor for type TimeSplitsPickerView and conformance TimeSplitsPickerView();
  NavigationLink.init(destination:label:)();
  v29 = *(a1 + 72);
  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = (v29 & 1) == 0;
  v32 = &v7[*(v50 + 36)];
  *v32 = KeyPath;
  v32[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_1;
  v32[2] = v31;
  v57 = v60;
  State.wrappedValue.getter();
  v33 = swift_allocObject();
  v34 = *(a1 + 48);
  v33[3] = *(a1 + 32);
  v33[4] = v34;
  *(v33 + 73) = *(a1 + 57);
  v35 = *(a1 + 16);
  v33[1] = *a1;
  v33[2] = v35;
  outlined init with copy of TimeSplitsView(a1, &v57);
  lazy protocol witness table accessor for type ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, TimeSplitsPickerView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  v36 = v49;
  View.onChange<A>(of:initial:_:)();

  outlined destroy of ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, TimeSplitsPickerView>, _EnvironmentKeyTransformModifier<Bool>>(v7, &_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AKtGG07WorkoutB0016TimeSplitsPickerI0VGAA32_EnvironmentKeyTransformModifierVySbGGMd);
  v57 = v61;
  State.wrappedValue.getter();
  if (v59)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.4;
  }

  v38 = v47;
  (*(v53 + 32))(v47, v36, v54);
  *(v38 + *(v48 + 36)) = v37;
  v39 = v52;
  sub_20C6765BC(v38, v52);
  v40 = v46[0];
  v41 = v51;
  outlined init with copy of ModifiedContent<Toggle<Text>, HeaderHyphenation>(v46[0], v51);
  v42 = v55;
  sub_20C67662C(v39, v55);
  v43 = v56;
  outlined init with copy of ModifiedContent<Toggle<Text>, HeaderHyphenation>(v41, v56);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_ACyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAA14NavigationLinkVyAA6VStackVyAA05TupleJ0VyAG_AGtGGAI016TimeSplitsPickerJ0VGAA32_EnvironmentKeyTransformModifierVySbGG_SdQo_AA14_OpacityEffectVGtMd);
  sub_20C67662C(v42, v43 + *(v44 + 48));
  outlined destroy of ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier>(v39, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAA14NavigationLinkVyAA6VStackVyAA05TupleE0VyAA4TextV_APtGG07WorkoutB0016TimeSplitsPickerE0VGAA32_EnvironmentKeyTransformModifierVySbGG_SdQo_AA14_OpacityEffectVGMd);
  outlined destroy of ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, TimeSplitsPickerView>, _EnvironmentKeyTransformModifier<Bool>>(v40, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd);
  outlined destroy of ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier>(v42, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAA14NavigationLinkVyAA6VStackVyAA05TupleE0VyAA4TextV_APtGG07WorkoutB0016TimeSplitsPickerE0VGAA32_EnvironmentKeyTransformModifierVySbGG_SdQo_AA14_OpacityEffectVGMd);
  return outlined destroy of ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, TimeSplitsPickerView>, _EnvironmentKeyTransformModifier<Bool>>(v41, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVGMd);
}

__n128 closure #1 in closure #1 in TimeSplitsView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.leading.getter();
  closure #1 in closure #1 in closure #1 in TimeSplitsView.body.getter(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v4[63];
  *(a1 + 17) = *v4;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in TimeSplitsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for WorkoutUIBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  lazy protocol witness table accessor for type String and conformance String();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  LOBYTE(ObjCClassFromMetadata) = v9;
  static Font.footnote.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  outlined consume of Text.Storage(v6, v8, ObjCClassFromMetadata & 1);

  static Color.gray.getter();
  v15 = Text.foregroundColor(_:)();
  v32 = v16;
  v33 = v15;
  v31 = v17;
  v34 = v18;

  outlined consume of Text.Storage(v10, v12, v14 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  specialized FIUIFormattingManager.timeSplitsDisplayString(time:)(v35);
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Font.subheadline.getter();
  v24 = Text.font(_:)();
  v26 = v25;
  LOBYTE(v8) = v27;
  v29 = v28;

  outlined consume of Text.Storage(v19, v21, v23 & 1);

  *a1 = v33;
  *(a1 + 8) = v32;
  *(a1 + 16) = v31 & 1;
  *(a1 + 24) = v34;
  *(a1 + 32) = v24;
  *(a1 + 40) = v26;
  *(a1 + 48) = v8 & 1;
  *(a1 + 56) = v29;
  outlined copy of Text.Storage(v33, v32, v31 & 1);

  outlined copy of Text.Storage(v24, v26, v8 & 1);

  outlined consume of Text.Storage(v24, v26, v8 & 1);

  outlined consume of Text.Storage(v33, v32, v31 & 1);
}

uint64_t closure #2 in TimeSplitsView.body.getter(uint64_t a1)
{
  v4 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  v2 = [objc_allocWithZone(MEMORY[0x277D0A840]) initWithType:2 value:{v6, v4}];
  v5 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  [v2 setEnabled_];
  [objc_opt_self() saveSplitStorage:v2 forActivityType:*(a1 + 64)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo21NLWorkoutSplitStorageCGMd);
  return Binding.wrappedValue.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleG0VyACyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_ACyAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAA14NavigationLinkVyAA6VStackVyAIyAM_AMtGGAO016TimeSplitsPickerG0VGAA32_EnvironmentKeyTransformModifierVySbGG_SdQo_AA14_OpacityEffectVGtGACyAmO04BodyM0VGGAA25_AppearanceActionModifierVGMd);
    lazy protocol witness table accessor for type Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)>, ModifiedContent<Text, BodyHyphenation>> and conformance <> Section<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)>, ModifiedContent<Text, BodyHyphenation>> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)>, ModifiedContent<Text, BodyHyphenation>> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)>, ModifiedContent<Text, BodyHyphenation>> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0VyAA15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AIyAA0E0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAIyAA14NavigationLinkVyAA6VStackVyAGyAM_AMtGGAO016TimeSplitsPickerE0VGAA32_EnvironmentKeyTransformModifierVySbGG_SdQo_AA14_OpacityEffectVGtGAIyAmO04BodyM0VGGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AEyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAA14NavigationLinkVyAA6VStackVyACyAI_AItGGAK016TimeSplitsPickerD0VGAA32_EnvironmentKeyTransformModifierVySbGG_SdQo_AA14_OpacityEffectVGtGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, BodyHyphenation> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)>, ModifiedContent<Text, BodyHyphenation>> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimeSplitsPickerView and conformance TimeSplitsPickerView()
{
  result = lazy protocol witness table cache variable for type TimeSplitsPickerView and conformance TimeSplitsPickerView;
  if (!lazy protocol witness table cache variable for type TimeSplitsPickerView and conformance TimeSplitsPickerView)
  {
    type metadata accessor for TimeSplitsPickerView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeSplitsPickerView and conformance TimeSplitsPickerView);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, TimeSplitsPickerView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, TimeSplitsPickerView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, TimeSplitsPickerView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AKtGG07WorkoutB0016TimeSplitsPickerI0VGAA32_EnvironmentKeyTransformModifierVySbGGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text, Text)>>, TimeSplitsPickerView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGG07WorkoutB0016TimeSplitsPickerG0VGMd);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, TimeSplitsPickerView>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined destroy of ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of ModifiedContent<NavigationLink<VStack<TupleView<(Text, Text)>>, TimeSplitsPickerView>, _EnvironmentKeyTransformModifier<Bool>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t HeartRateTargetZone.selectedRow.getter()
{
  v1 = type metadata accessor for HeartRateZoneType();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v30 = &v29 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v29 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v31 = &v29 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v34 = v0;
  HeartRateTargetZone.type.getter();
  v16 = *MEMORY[0x277D7E148];
  v32 = *(v2 + 104);
  v32(v13, v16, v1);
  lazy protocol witness table accessor for type HeartRateZoneType and conformance HeartRateZoneType(&lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType, MEMORY[0x277D7E150]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v37 == v35 && v38 == v36)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v18 = *(v2 + 8);
  v18(v13, v1);
  v18(v15, v1);

  if ((v17 & 1) == 0)
  {
    goto LABEL_8;
  }

  result = dispatch thunk of HeartRateTargetZone.defaultZoneIndex.getter();
  if ((v20 & 1) == 0)
  {
    return result;
  }

  while (1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_8:
    v21 = v31;
    HeartRateTargetZone.type.getter();
    v32(v33, *MEMORY[0x277D7E140], v1);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v37 == v35 && v38 == v36)
    {
      v18(v33, v1);
      v18(v21, v1);

LABEL_12:
      result = dispatch thunk of HeartRateTargetZone.defaultZones.getter();
      if (!result)
      {
        return result;
      }

      if (!(result >> 62))
      {
        v23 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:

        return v23;
      }

LABEL_27:
      v23 = __CocoaSet.count.getter();
      goto LABEL_15;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18(v33, v1);
    v18(v21, v1);

    if (v22)
    {
      goto LABEL_12;
    }

    v24 = v30;
    HeartRateTargetZone.type.getter();
    v25 = v29;
    v32(v29, *MEMORY[0x277D7E138], v1);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v37 == v35 && v38 == v36)
    {
      break;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18(v25, v1);
    v18(v24, v1);

    if (v26)
    {
      goto LABEL_20;
    }
  }

  v18(v25, v1);
  v18(v24, v1);

LABEL_20:
  v27 = dispatch thunk of HeartRateTargetZone.defaultZones.getter();
  if (!v27)
  {
    return 1;
  }

  if (v27 >> 62)
  {
    v28 = __CocoaSet.count.getter();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = v28 + 1;
  if (__OFADD__(v28, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  return result;
}

uint64_t type metadata accessor for HeartRateZoneEntryView()
{
  result = type metadata singleton initialization cache for HeartRateZoneEntryView;
  if (!type metadata singleton initialization cache for HeartRateZoneEntryView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for HeartRateZoneEntryView()
{
  type metadata accessor for Binding<HeartRateTargetZone>();
  if (v0 <= 0x3F)
  {
    _sSo23FIUIWorkoutActivityTypeCMaTm_0(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AlertConfigurationContext();
      if (v2 <= 0x3F)
      {
        _sSo23FIUIWorkoutActivityTypeCMaTm_0(319, &lazy cache variable for type metadata for FIUIFormattingManager);
        if (v3 <= 0x3F)
        {
          type metadata accessor for State<Int>(319, &lazy cache variable for type metadata for State<Int>);
          if (v4 <= 0x3F)
          {
            type metadata accessor for State<Int>(319, &lazy cache variable for type metadata for State<Double>);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Binding<HeartRateTargetZone>()
{
  if (!lazy cache variable for type metadata for Binding<HeartRateTargetZone>)
  {
    type metadata accessor for HeartRateTargetZone();
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<HeartRateTargetZone>);
    }
  }
}

void type metadata accessor for State<Int>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for State();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t HeartRateZoneEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = type metadata accessor for HeartRateZoneEntryView();
  v3 = (v2 - 8);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextVSiAA7ForEachVySnySiGSiAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA03AnyE0V_SiQo_GG_AA06InlinehG0VQo__AA7SectionVyAMSgAEy07WorkoutB016NavigationButtonV_A4_tGSgAA19_ConditionalContentVyA2MGSgGtGGMd);
  MEMORY[0x28223BE20](v46);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA05TupleC0VyAcAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA4TextVSiAA7ForEachVySnySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA03AnyC0V_SiQo_GG_AA06InlinelK0VQo__AA7SectionVyAPSgAJy07WorkoutB016NavigationButtonV_A7_tGSgAA19_ConditionalContentVyA2PGSgGtGG_SiQo_Md);
  v10 = *(v9 - 8);
  v47 = v9;
  v48 = v10;
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA05TupleC0VyAcAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA4TextVSiAA7ForEachVySnySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA03AnyC0V_SiQo_GG_AA06InlinelK0VQo__AA7SectionVyAPSgAJy07WorkoutB016NavigationButtonV_A7_tGSgAA19_ConditionalContentVyA2PGSgGtGG_SiQo__SdQo_Md);
  v13 = *(v12 - 8);
  v49 = v12;
  v50 = v13;
  MEMORY[0x28223BE20](v12);
  v53 = &v42 - v14;
  closure #1 in HeartRateZoneEntryView.body.getter(v1, v8);
  v54 = *(v1 + v3[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySiGMd);
  State.wrappedValue.getter();
  outlined init with copy of HeartRateZoneEntryView(v1, v6);
  v43 = *(v4 + 80);
  v44 = v5;
  v15 = (v43 + 16) & ~v43;
  v16 = swift_allocObject();
  outlined init with take of HeartRateZoneEntryView(v6, v16 + v15);
  v17 = lazy protocol witness table accessor for type Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)>> and conformance <A> Group<A>();
  v18 = v46;
  View.onChange<A>(of:initial:_:)();

  outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)>>(v8, &_s7SwiftUI5GroupVyAA9TupleViewVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextVSiAA7ForEachVySnySiGSiAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA03AnyE0V_SiQo_GG_AA06InlinehG0VQo__AA7SectionVyAMSgAEy07WorkoutB016NavigationButtonV_A4_tGSgAA19_ConditionalContentVyA2MGSgGtGGMd);
  v19 = v3[11];
  v52 = v1;
  v20 = (v1 + v19);
  v21 = *v20;
  v22 = v20[1];
  *&v54 = v21;
  *(&v54 + 1) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  outlined init with copy of HeartRateZoneEntryView(v1, v6);
  v23 = swift_allocObject();
  outlined init with take of HeartRateZoneEntryView(v6, v23 + v15);
  *&v54 = v18;
  *(&v54 + 1) = MEMORY[0x277D83B88];
  v55 = v17;
  v56 = MEMORY[0x277D83BA8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v47;
  v26 = v45;
  View.onChange<A>(of:initial:_:)();

  (*(v48 + 8))(v26, v25);
  v27 = v3[12];
  v28 = v52;
  v29 = (v52 + v27);
  v30 = *v29;
  v31 = v29[1];
  *&v54 = v30;
  *(&v54 + 1) = v31;
  State.wrappedValue.getter();
  outlined init with copy of HeartRateZoneEntryView(v28, v6);
  v32 = swift_allocObject();
  outlined init with take of HeartRateZoneEntryView(v6, v32 + v15);
  *&v54 = v25;
  *(&v54 + 1) = MEMORY[0x277D839F8];
  v55 = OpaqueTypeConformance2;
  v56 = MEMORY[0x277D83A28];
  swift_getOpaqueTypeConformance2();
  v33 = v51;
  v34 = v49;
  v35 = v53;
  View.onChange<A>(of:initial:_:)();

  (*(v50 + 8))(v35, v34);
  v36 = v52;
  outlined init with copy of HeartRateZoneEntryView(v52, v6);
  v37 = swift_allocObject();
  outlined init with take of HeartRateZoneEntryView(v6, v37 + v15);
  v38 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA05TupleE0VyAeAE11pickerStyleyQrqd__AA06PickerM0Rd__lFQOyAA0N0VyAA4TextVSiAA7ForEachVySnySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA03AnyE0V_SiQo_GG_AA06InlinenM0VQo__AA7SectionVyARSgALy07WorkoutB016NavigationButtonV_A9_tGSgAA012_ConditionalD0VyA2RGSgGtGG_SiQo__SdQo__SdQo_AA25_AppearanceActionModifierVGMd) + 36));
  *v38 = partial apply for closure #5 in HeartRateZoneEntryView.body.getter;
  v38[1] = v37;
  v38[2] = 0;
  v38[3] = 0;
  outlined init with copy of HeartRateZoneEntryView(v36, v6);
  v39 = swift_allocObject();
  outlined init with take of HeartRateZoneEntryView(v6, v39 + v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA05TupleE0VyAeAE11pickerStyleyQrqd__AA06PickerM0Rd__lFQOyAA0N0VyAA4TextVSiAA7ForEachVySnySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA03AnyE0V_SiQo_GG_AA06InlinenM0VQo__AA7SectionVyARSgALy07WorkoutB016NavigationButtonV_A9_tGSgAA012_ConditionalD0VyA2RGSgGtGG_SiQo__SdQo__SdQo_AA25_AppearanceActionModifierVGA23_GMd);
  v41 = (v33 + *(result + 36));
  *v41 = 0;
  v41[1] = 0;
  v41[2] = partial apply for closure #6 in HeartRateZoneEntryView.body.getter;
  v41[3] = v39;
  return result;
}

uint64_t closure #1 in HeartRateZoneEntryView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVSgAA9TupleViewVy07WorkoutB016NavigationButtonV_AKtGSgAA19_ConditionalContentVyA2EGSgGMd);
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v67 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v66 = &v52 - v6;
  v58 = type metadata accessor for InlinePickerStyle();
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextVSiAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA03AnyG0V_SiQo_GGMd);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v10 = &v52 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextVSiAA7ForEachVySnySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA03AnyC0V_SiQo_GG_AA06InlinefE0VQo_Md);
  v61 = *(v62 - 8);
  v11 = MEMORY[0x28223BE20](v62);
  v60 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v55 = LocalizedStringKey.init(stringLiteral:)();
  v54 = v15;
  v16 = (a1 + *(type metadata accessor for HeartRateZoneEntryView() + 32));
  v18 = v16[1];
  v70 = *v16;
  v17 = v70;
  v71 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySiGMd);
  State.projectedValue.getter();
  v68 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA03AnyE0V_SiQo_GMd);
  lazy protocol witness table accessor for type ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
  Picker<>.init(_:selection:content:)();
  InlinePickerStyle.init()();
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<Text, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextVSiAA7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA03AnyG0V_SiQo_GGMd);
  v19 = v14;
  v20 = v56;
  v21 = v58;
  View.pickerStyle<A>(_:)();
  (*(v59 + 8))(v8, v21);
  (*(v57 + 8))(v10, v20);
  *v69 = v17;
  *&v69[8] = v18;
  State.wrappedValue.getter();
  v22 = v70;
  *v69 = *a1;
  *&v69[8] = *(a1 + 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
  MEMORY[0x20F30B100](&v70, v23);
  v24 = v70;
  v25 = dispatch thunk of HeartRateTargetZone.defaultZones.getter();
  if (v25)
  {
    if (v25 >> 62)
    {
      v26 = __CocoaSet.count.getter();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v26 = 0;
  }

  MEMORY[0x28223BE20](v27);
  if (v22 == v26)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v28 = WorkoutUIBundle.super.isa;
    v74._object = 0xE000000000000000;
    v29.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v29.value._object = 0xEB00000000656C62;
    v30._object = 0x800000020CB94530;
    v30._countAndFlagsBits = 0xD00000000000002ALL;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v74._countAndFlagsBits = 0;
    v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v29, v28, v31, v74);

    *v69 = v32;
    lazy protocol witness table accessor for type String and conformance String();
    v34 = Text.init<A>(_:)();
    v36 = v33 & 1;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
  }

  v70 = v34;
  v71 = v35;
  v72 = v36;
  v73 = v37;
  closure #4 in closure #1 in HeartRateZoneEntryView.body.getter(a1, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB016NavigationButtonV_AFtGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGSgMd);
  lazy protocol witness table accessor for type Text? and conformance <A> A?();
  lazy protocol witness table accessor for type TupleView<(NavigationButton, NavigationButton)>? and conformance <A> A?();
  lazy protocol witness table accessor for type _ConditionalContent<Text, Text>? and conformance <A> A?();
  v38 = v66;
  Section<>.init(header:footer:content:)();
  v39 = v61;
  v40 = *(v61 + 16);
  v41 = v60;
  v53 = v19;
  v42 = v62;
  v40(v60, v19, v62);
  v44 = v64;
  v43 = v65;
  v45 = *(v64 + 16);
  v45(v67, v38, v65);
  v46 = v63;
  v40(v63, v41, v42);
  v47 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextVSiAA7ForEachVySnySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA03AnyC0V_SiQo_GG_AA06InlinefE0VQo__AA7SectionVyAISgAA05TupleC0Vy07WorkoutB016NavigationButtonV_A2_tGSgAA19_ConditionalContentVyA2IGSgGtMd) + 48)];
  v48 = v67;
  v45(v47, v67, v43);
  v49 = *(v44 + 8);
  v49(v66, v43);
  v50 = *(v39 + 8);
  v50(v53, v42);
  v49(v48, v43);
  return (v50)(v41, v42);
}

void closure #1 in closure #1 in HeartRateZoneEntryView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for HeartRateZoneEntryView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = type metadata accessor for AlertConfigurationContext();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a1 + 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
  MEMORY[0x20F30B100](v18, v9);
  v10 = v18[0];
  (*(v6 + 104))(v8, *MEMORY[0x277D7E4C0], v5);
  v11 = static AlertConfigurationContext.== infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  v12 = HeartRateTargetZone.totalRows(canDisable:)(v11 & 1);

  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v18[0] = 0;
    v18[1] = v12;
    swift_getKeyPath();
    outlined init with copy of HeartRateZoneEntryView(a1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v14 = swift_allocObject();
    outlined init with take of HeartRateZoneEntryView(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA03AnyC0V_SiQo_Md);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v15 = MEMORY[0x277CE11C8];
    *&v16 = MEMORY[0x277D83B88];
    *(&v16 + 1) = MEMORY[0x277CE11C0];
    v17 = MEMORY[0x277D83B98];
    swift_getOpaqueTypeConformance2();
    ForEach<>.init(_:id:content:)();
  }
}

Swift::Int __swiftcall HeartRateTargetZone.totalRows(canDisable:)(Swift::Bool canDisable)
{
  v2 = dispatch thunk of HeartRateTargetZone.defaultZones.getter();
  if (canDisable)
  {
    if (!v2)
    {
      return 2;
    }

    if (!(v2 >> 62))
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

      result = v3 + 2;
      if (!__OFADD__(v3, 2))
      {
        return result;
      }

      __break(1u);
      return 1;
    }

LABEL_16:
    v3 = __CocoaSet.count.getter();
    goto LABEL_5;
  }

  if (!v2)
  {
    return 1;
  }

  if (v2 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in HeartRateZoneEntryView.body.getter(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v8[1] = *a2;
  v9 = *(a2 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
  MEMORY[0x20F30B100](v8, v5);
  v6 = v8[0];
  v7 = HeartRateTargetZone.rowLabel(index:)(v4);

  *a3 = v7;
  *(a3 + 8) = v4;
  *(a3 + 16) = 1;
}

uint64_t HeartRateTargetZone.rowLabel(index:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0k10AttachmentR0VG_AGyAA6SpacerVAA12_FrameLayoutVGAA4TextVA5_tGGMd);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - v3;
  v5 = dispatch thunk of HeartRateTargetZone.defaultZones.getter();
  if (!v5)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (i > a1)
    {
LABEL_7:
      v7 = dispatch thunk of HeartRateTargetZone.defaultZones.getter();
      if (!v7)
      {
        goto LABEL_13;
      }

      if ((v7 & 0xC000000000000001) == 0)
      {
        if (a1 < 0)
        {
          __break(1u);
        }

        else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
        {
          v8 = *(v7 + 8 * a1 + 32);

LABEL_12:

          *v4 = static VerticalAlignment.center.getter();
          *(v4 + 1) = 0;
          v4[16] = 0;
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0n10AttachmentU0VG_AKyAA6SpacerVAA06_FrameG0VGAA4TextVA9_tGGMd);
          closure #1 in HeartRateTargetZone.rowLabel(index:)(a1, v8, &v4[*(v9 + 44)]);
          lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>, Text, Text)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0k10AttachmentR0VG_AGyAA6SpacerVAA12_FrameLayoutVGAA4TextVA5_tGGMd);
          v10 = AnyView.init<A>(_:)();

          return v10;
        }

        __break(1u);
LABEL_33:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v8 = MEMORY[0x20F30C990](a1, v7);
      goto LABEL_12;
    }

LABEL_13:
    v12 = dispatch thunk of HeartRateTargetZone.defaultZones.getter();
    if (!v12)
    {
      break;
    }

    if (v12 >> 62)
    {
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_28:
    ;
  }

  v13 = 0;
  v14 = 1;
LABEL_17:
  if (v13 == a1)
  {
    LocalizedStringKey.init(stringLiteral:)();
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = WorkoutUIBundle.super.isa;
    v24 = Text.init(_:tableName:bundle:comment:)();
    v25 = v16;
    v26 = v17 & 1;
    v27 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, HeaderHyphenation> and conformance <> ModifiedContent<A, B>();
    return AnyView.init<A>(_:)();
  }

  if (v14 != a1)
  {
    goto LABEL_33;
  }

  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = WorkoutUIBundle.super.isa;
  v24 = Text.init(_:tableName:bundle:comment:)();
  v25 = v20;
  v26 = v21 & 1;
  v27 = v22;
  return AnyView.init<A>(_:)();
}

__n128 closure #2 in closure #1 in HeartRateZoneEntryView.body.getter@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = *(a2 + 24);
    v6 = type metadata accessor for HeartRateZoneEntryView();
    v7 = *(a2 + v6[7]);
    v8 = (a2 + v6[9]);
    v9 = *v8;
    v10 = v8[1];
    v65.n128_u64[0] = v9;
    v65.n128_u64[1] = v10;
    v11 = v5;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
    State.projectedValue.getter();
    v40 = v74.n128_i64[1];
    v41 = v74.n128_u64[0];
    v13 = v75.n128_u64[0];
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = WorkoutUIBundle.super.isa;
    v83._object = 0xE000000000000000;
    v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v15.value._object = 0xEB00000000656C62;
    v16._object = 0x800000020CB945C0;
    v16._countAndFlagsBits = 0xD000000000000011;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v83._countAndFlagsBits = 0;
    v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v83);

    type metadata accessor for HeartRateZone();
    static HeartRateZone.minimumLowerBound.getter();
    v20 = v19;
    static HeartRateZone.maximumUpperBound.getter();
    v22 = v21;
    v23 = (a2 + v6[10]);
    v24 = *v23;
    v25 = v23[1];
    v65.n128_u64[0] = v24;
    v65.n128_u64[1] = v25;
    v26 = v11;
    v27 = v12;
    State.projectedValue.getter();
    v28 = WorkoutUIBundle.super.isa;
    v84._object = 0xE000000000000000;
    v29._object = 0x800000020CB945E0;
    v29._countAndFlagsBits = 0xD000000000000011;
    v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v30.value._object = 0xEB00000000656C62;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v84._countAndFlagsBits = 0;
    v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v84);

    static HeartRateZone.minimumLowerBound.getter();
    v34 = v33 + 5.0;
    static HeartRateZone.maximumUpperBound.getter();
    *&v47[0] = v26;
    *(&v47[0] + 1) = v27;
    v47[1] = v74;
    *&v48 = v75.n128_u64[0];
    *(&v48 + 1) = v18._countAndFlagsBits;
    *&v49 = v18._object;
    *(&v49 + 1) = v20;
    v50 = v22;
    v44 = v48;
    v45 = v49;
    *v46 = v22;
    v42 = v47[0];
    v43 = v74;
    *&v51[0] = v26;
    *(&v51[0] + 1) = v27;
    v51[1] = v74;
    *&v52 = v75.n128_u64[0];
    *(&v52 + 1) = v32._countAndFlagsBits;
    *&v53 = v32._object;
    *(&v53 + 1) = v34;
    v54 = v35 + 5.0;
    *&v46[8] = v51[0];
    *&v46[72] = v35 + 5.0;
    *&v46[56] = v53;
    *&v46[40] = v52;
    *&v46[24] = v74;
    v55[0] = v26;
    v55[1] = v27;
    v56 = v74;
    v57 = v75.n128_u64[0];
    v58 = v32;
    v59 = v34;
    v60 = v35 + 5.0;
    outlined init with copy of NavigationButton(v47, &v74);
    outlined init with copy of NavigationButton(v51, &v74);
    outlined destroy of NavigationButton(v55);
    v61[0] = v26;
    v61[1] = v27;
    v61[2] = v41;
    v61[3] = v40;
    v61[4] = v13;
    v62 = v18;
    v63 = v20;
    v64 = v22;
    outlined destroy of NavigationButton(v61);
    v71 = *&v46[32];
    v72 = *&v46[48];
    v73 = *&v46[64];
    v67 = v44;
    v68 = v45;
    v69 = *v46;
    v70 = *&v46[16];
    v65 = v42;
    v66 = v43;
    _s7SwiftUI9TupleViewVy07WorkoutB016NavigationButtonV_AFtGSgWOi_(&v65);
    v80 = v71;
    v81 = v72;
    v82 = v73;
    v76 = v67;
    v77 = v68;
    v78 = v69;
    v79 = v70;
    v74 = v65;
    v75 = v66;
  }

  else
  {
    _s7SwiftUI9TupleViewVy07WorkoutB016NavigationButtonV_AFtGSgWOi0_(&v74);
  }

  v36 = v81;
  *(a3 + 96) = v80;
  *(a3 + 112) = v36;
  *(a3 + 128) = v82;
  v37 = v77;
  *(a3 + 32) = v76;
  *(a3 + 48) = v37;
  v38 = v79;
  *(a3 + 64) = v78;
  *(a3 + 80) = v38;
  result = v75;
  *a3 = v74;
  *(a3 + 16) = result;
  return result;
}

void closure #4 in closure #1 in HeartRateZoneEntryView.body.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v36._countAndFlagsBits = *a1;
  v36._object = v4;
  *&v37 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
  MEMORY[0x20F30B100](&v31);
  v7 = v31;
  v8 = dispatch thunk of HeartRateTargetZone.defaultZones.getter();

  if (v8 && (v8 >> 62 ? (v9 = __CocoaSet.count.getter()) : (v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v9))
  {
    v36._countAndFlagsBits = v3;
    v36._object = v4;
    *&v37 = v5;
    MEMORY[0x20F30B100](&v31, v6);
    v10 = v31;
    v11 = dispatch thunk of HeartRateTargetZone.restingHeartRateUsesDefault.getter();

    if ((v11 & 1) == 0)
    {
      v28 = 0;
      v30 = -1;
      v29 = 0uLL;
      goto LABEL_13;
    }

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = WorkoutUIBundle.super.isa;
    v39._object = 0xE000000000000000;
    v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v13.value._object = 0xEB00000000656C62;
    v14._countAndFlagsBits = 0xD00000000000002ELL;
    v14._object = 0x800000020CB94560;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0;
    v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v12, v15, v39);

    v36 = v16;
    lazy protocol witness table accessor for type String and conformance String();
    v31 = Text.init<A>(_:)();
    v32 = v18;
    v33 = v17 & 1;
    v34 = v19;
    v35 = 1;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = WorkoutUIBundle.super.isa;
    v40._object = 0xE000000000000000;
    v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v21.value._object = 0xEB00000000656C62;
    v22._object = 0x800000020CB94590;
    v22._countAndFlagsBits = 0xD00000000000002DLL;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v40);

    v36 = v24;
    lazy protocol witness table accessor for type String and conformance String();
    v31 = Text.init<A>(_:)();
    v32 = v25;
    v33 = v26 & 1;
    v34 = v27;
    v35 = 0;
  }

  _ConditionalContent<>.init(storage:)();
  v28 = v36;
  v29 = v37;
  v30 = v38;
LABEL_13:
  *a2 = v28;
  *(a2 + 16) = v29;
  *(a2 + 32) = v30;
}

uint64_t HeartRateZoneEntryView.updateHeartRateZone()()
{
  v1 = v0;
  v2 = type metadata accessor for HeartRateZoneType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  *&v27 = *v0;
  *(&v27 + 1) = v10;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
  MEMORY[0x20F30B100](&v26);
  v12 = v26;
  v25 = dispatch thunk of HeartRateTargetZone.defaultZones.getter();

  HeartRateZoneEntryView.selectedType()(v8);
  v13 = (*(v3 + 88))(v8, v2);
  if (v13 == *MEMORY[0x277D7E148])
  {
    (*(v3 + 104))(v6, v13, v2);
    v27 = *(v1 + *(type metadata accessor for HeartRateZoneEntryView() + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySiGMd);
    State.wrappedValue.getter();
    objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
LABEL_9:
    *&v23 = COERCE_DOUBLE(HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)());
    *&v27 = v9;
    *(&v27 + 1) = v10;
    v28 = v11;
    v26 = *&v23;
    return Binding.wrappedValue.setter();
  }

  if (v13 == *MEMORY[0x277D7E140])
  {
    (*(v3 + 104))(v6, v13, v2);
    v14 = type metadata accessor for HeartRateZoneEntryView();
    v15 = (v1 + *(v14 + 36));
    v16 = *v15;
    v17 = v15[1];
    *&v27 = v16;
    *(&v27 + 1) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
    State.wrappedValue.getter();
    v18 = v26;
    v19 = (v1 + *(v14 + 40));
    v20 = *v19;
    v21 = v19[1];
    *&v27 = v20;
    *(&v27 + 1) = v21;
    State.wrappedValue.getter();
    if (v18 <= v26)
    {
      objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (v13 == *MEMORY[0x277D7E138])
  {
    (*(v3 + 104))(v6, v13, v2);
    v22 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
    goto LABEL_9;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #3 in HeartRateZoneEntryView.body.getter()
{
  type metadata accessor for HeartRateZoneEntryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  State.wrappedValue.setter();
  return HeartRateZoneEntryView.updateHeartRateZone()();
}

uint64_t closure #4 in HeartRateZoneEntryView.body.getter()
{
  type metadata accessor for HeartRateZoneEntryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd);
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  State.wrappedValue.setter();
  return HeartRateZoneEntryView.updateHeartRateZone()();
}

void closure #5 in HeartRateZoneEntryView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for HeartRateZoneEntryView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = type metadata accessor for AlertConfigurationContext();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1 + *(v2 + 24), v5);
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D7E4B8])
  {
    (*(v6 + 96))(v8, v5);
    v9 = type metadata accessor for ConfigurationType();
    (*(*(v9 - 8) + 8))(v8, v9);
    *&v19[0] = *a1;
    *(v19 + 8) = *(a1 + 8);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
    MEMORY[0x20F30B100](&v18, v10);
    v11 = v18;
    v12 = HeartRateTargetZone.selectedRow.getter();

    v19[0] = *(a1 + *(v2 + 32));
    v18 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySiGMd);
    State.wrappedValue.setter();
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }

  *&v19[0] = *a1;
  *(v19 + 8) = *(a1 + 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
  MEMORY[0x20F30B100](&v18, v13);
  v14 = v18;
  outlined init with copy of HeartRateZoneEntryView(a1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  outlined init with take of HeartRateZoneEntryView(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  dispatch thunk of HeartRateTargetZone.defaultZonesDidLoad.setter();
}

uint64_t closure #6 in HeartRateZoneEntryView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for HeartRateZoneEntryView();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v34[-v6];
  v8 = type metadata accessor for Logger();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for AlertConfigurationContext();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 104))(v14, *MEMORY[0x277D7E4C0], v11);
  v15 = static AlertConfigurationContext.== infix(_:_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v39 = *a1;
    v40 = *(a1 + 8);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
    MEMORY[0x20F30B100](&v41);
    v43 = type metadata accessor for HeartRateTargetZone();
    v44 = MEMORY[0x277D7E2E0];
    v18 = static TargetZoneStorage.save(_:for:useLegacyUniqueIdentifier:)();
    result = __swift_destroy_boxed_opaque_existential_1(&v41);
    if (v18)
    {
      static WOLog.alerts.getter();
      outlined init with copy of HeartRateZoneEntryView(a1, v7);
      outlined init with copy of HeartRateZoneEntryView(a1, v5);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v39 = v36;
        *v21 = 136315394;
        v41 = *v7;
        v42 = *(v7 + 8);
        v35 = v20;
        MEMORY[0x20F30B100](&v38, v17);
        v22 = v38;
        v23 = [v38 description];
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        outlined destroy of HeartRateZoneEntryView(v7);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v39);

        *(v21 + 4) = v27;
        *(v21 + 12) = 2080;
        v28 = [v5[3] uniqueIdentifier];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        outlined destroy of HeartRateZoneEntryView(v5);
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v39);

        *(v21 + 14) = v32;
        _os_log_impl(&dword_20C66F000, v19, v35, "Saved alert: %s for %s", v21, 0x16u);
        v33 = v36;
        swift_arrayDestroy();
        MEMORY[0x20F30E080](v33, -1, -1);
        MEMORY[0x20F30E080](v21, -1, -1);

        return (*(v37 + 8))(v10, v8);
      }

      else
      {

        (*(v37 + 8))(v10, v8);
        outlined destroy of HeartRateZoneEntryView(v7);
        return outlined destroy of HeartRateZoneEntryView(v5);
      }
    }
  }

  return result;
}

uint64_t HeartRateZoneEntryView.selectedType()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  *&v20 = *v1;
  *(&v20 + 1) = v5;
  v21 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore19HeartRateTargetZoneCGMd);
  MEMORY[0x20F30B100](&v19);
  v8 = v19;
  v9 = dispatch thunk of HeartRateTargetZone.defaultZones.getter();
  if (!v9)
  {

    goto LABEL_8;
  }

  if (v9 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 < 1 || (v20 = *(v2 + *(type metadata accessor for HeartRateZoneEntryView() + 32)), __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySiGMd), State.wrappedValue.getter(), v19 >= v10))
  {
LABEL_8:
    v20 = *(v2 + *(type metadata accessor for HeartRateZoneEntryView() + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySiGMd);
    State.wrappedValue.getter();
    v12 = v19;
    *&v20 = v4;
    *(&v20 + 1) = v5;
    v21 = v6;
    MEMORY[0x20F30B100](&v19, v7);
    v13 = v19;
    v14 = dispatch thunk of HeartRateTargetZone.defaultZones.getter();
    if (v14)
    {
      if (v14 >> 62)
      {
        v15 = __CocoaSet.count.getter();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v12 == v15)
      {
        goto LABEL_12;
      }
    }

    else
    {

      if (!v12)
      {
LABEL_12:
        v11 = MEMORY[0x277D7E140];
        goto LABEL_15;
      }
    }

    v11 = MEMORY[0x277D7E138];
    goto LABEL_15;
  }

  v11 = MEMORY[0x277D7E148];
LABEL_15:
  v16 = *v11;
  v17 = type metadata accessor for HeartRateZoneType();
  return (*(*(v17 - 8) + 104))(a1, v16, v17);
}

uint64_t outlined init with copy of HeartRateZoneEntryView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateZoneEntryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of HeartRateZoneEntryView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartRateZoneEntryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextVSiAA7ForEachVySnySiGSiAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA03AnyE0V_SiQo_GG_AA06InlinehG0VQo__AA7SectionVyAMSgAEy07WorkoutB016NavigationButtonV_A4_tGSgAA19_ConditionalContentVyA2MGSgGtGGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerF0Rd__lFQOyAA0G0VyAA4TextVSiAA7ForEachVySnySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA03AnyD0V_SiQo_GG_AA06InlinegF0VQo__AA7SectionVyAKSgACy07WorkoutB016NavigationButtonV_A2_tGSgAA19_ConditionalContentVyA2KGSgGtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)>> and conformance <A> Group<A>);
  }

  return result;
}

uint64_t partial apply for closure #3 in HeartRateZoneEntryView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for HeartRateZoneEntryView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t outlined destroy of HeartRateZoneEntryView(uint64_t a1)
{
  v2 = type metadata accessor for HeartRateZoneEntryView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NavigationButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGG07WorkoutB0012AlertsPickerG0VGMd);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB016AlertsPickerViewVAA14NavigationLinkVyAA6VStackVyAA05TupleI0VyAA4TextV_APtGGAHG_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = (&v12 - v8);
  v10 = static Platform.current.getter();
  if (v10)
  {
    MEMORY[0x28223BE20](v10);
    v12 = a1;
    *(&v12 - 2) = v1;
    NavigationButton.pickerView()(&v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Text)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AGtGGMd);
    lazy protocol witness table accessor for type AlertsPickerView and conformance AlertsPickerView();
    NavigationLink.init(destination:label:)();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text, Text)>>, AlertsPickerView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGG07WorkoutB0012AlertsPickerG0VGMd);
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    NavigationButton.pickerView()(&v13);
    *v9 = v13;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type AlertsPickerView and conformance AlertsPickerView();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type NavigationLink<VStack<TupleView<(Text, Text)>>, AlertsPickerView> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA6VStackVyAA9TupleViewVyAA4TextV_AItGG07WorkoutB0012AlertsPickerG0VGMd);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t NavigationButton.pickerView()@<X0>(char **a1@<X8>)
{
  v38 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10TargetZoneC0D4TypeOSgMd);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v8;
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = *(v1 + 8);
  v36 = *v1;
  v37 = v11;
  v12 = type metadata accessor for TargetZone.ZoneType();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v41 = *(v1 + 16);
  v42 = *(v1 + 32);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  Binding.projectedValue.getter();
  v14 = v40[1];
  v15 = v40[2];
  v16 = v40[3];
  v17 = *(v1 + 56);
  v18 = *(v1 + 64);
  v19 = *(v1 + 48);
  v33 = *(v1 + 40);

  v20 = static Color.red.getter();
  outlined init with copy of TargetZone.ZoneType?(v10, v8);
  type metadata accessor for AlertsPickerViewModel();
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel__currentValueDisplay;
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v2 + 32))(&v21[v22], v4, v35);
  *(v21 + 2) = v14;
  *(v21 + 3) = v15;
  *(v21 + 4) = v16;
  *&v41 = v14;
  *(&v41 + 1) = v15;
  v42 = v16;

  MEMORY[0x20F30B100](v40, v13);
  v23 = v40[0];
  swift_beginAccess();
  v39 = v23;
  Published.init(initialValue:)();
  swift_endAccess();
  *&v21[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_minimumSelectableValue] = v17;
  *&v21[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_maximumSelectableValue] = v18;
  *&v21[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_step] = 0x4014000000000000;
  v24 = &v21[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerText];
  *v24 = v33;
  *(v24 + 1) = v19;
  *&v21[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_color] = v20;

  specialized _copySequenceToContiguousArray<A>(_:)(v17, v18, 5.0);
  *&v21[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_pickerValues] = v25;
  v27 = v36;
  v26 = v37;
  *&v21[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_activityType] = v36;
  *&v21[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_formattingManager] = v26;
  v28 = v34;
  outlined init with copy of TargetZone.ZoneType?(v34, &v21[OBJC_IVAR____TtC9WorkoutUI21AlertsPickerViewModel_targetZoneType]);
  v29 = v27;
  v30 = v26;
  AlertsPickerViewModel.updateValueDisplay()();

  _s7SwiftUI4FontV6DesignOSgWOhTm_0(v28, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMd);
  result = _s7SwiftUI4FontV6DesignOSgWOhTm_0(v10, &_s11WorkoutCore10TargetZoneC0D4TypeOSgMd);
  *v38 = v21;
  return result;
}

__n128 closure #2 in NavigationButton.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  closure #1 in closure #2 in NavigationButton.body.getter(a1, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

uint64_t closure #1 in closure #2 in NavigationButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *(a1 + 48);
  *&v30 = *(a1 + 40);
  *(&v30 + 1) = v5;
  lazy protocol witness table accessor for type String and conformance String();

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  static Color.gray.getter();
  v11 = Text.foregroundColor(_:)();
  v13 = v12;
  v27 = v14;
  v28 = v15;

  outlined consume of Text.Storage(v6, v8, v10 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
  v30 = *(a1 + 16);
  v31 = *(a1 + 32);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd);
  MEMORY[0x20F30B100](&v29, v17);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *&v30 = v29;
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v18._countAndFlagsBits = 1297105440;
  v18._object = 0xE400000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
  LocalizedStringKey.init(stringInterpolation:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
LABEL_9:
    swift_once();
  }

  swift_beginAccess();
  v19 = WorkoutUIBundle.super.isa;
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  LOBYTE(v29) = v27 & 1;
  v24 = v23 & 1;
  v32 = v23 & 1;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v27 & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v23 & 1;
  *(a2 + 56) = v25;
  outlined copy of Text.Storage(v11, v13, v27 & 1);

  outlined copy of Text.Storage(v20, v22, v24);

  outlined consume of Text.Storage(v20, v22, v24);

  outlined consume of Text.Storage(v11, v13, v27 & 1);
}

void one-time initialization function for heartRateShortDescription()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000020CB94620;
  v2._countAndFlagsBits = 0xD00000000000001CLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static HeartRateTargetZone.heartRateShortDescription = v4;
}

uint64_t closure #1 in HeartRateTargetZone.rowLabel(index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v71[-v6];
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v71[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for AccessibilityChildBehavior();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v71[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_Md);
  v83 = *(v16 - 8);
  v84 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v71[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMd);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  MEMORY[0x28223BE20](v20);
  v86 = &v71[-v22];
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v77 = v11;
    v78 = v9;
    v79 = v7;
    v80 = v8;
    v81 = v21;
    v82 = a3;
    v88 = a1 + 1;
    v76 = a1 + 1;
    v89 = dispatch thunk of CustomStringConvertible.description.getter();
    v90 = v23;
    MEMORY[0x20F30BC00](0x2E656C637269632ELL, 0xEC0000006C6C6966);
    v24 = Image.init(systemName:)();
    v25 = dispatch thunk of HeartRateZone.color.getter();
    KeyPath = swift_getKeyPath();
    v89 = v24;
    v90 = KeyPath;
    v91 = v25;
    static AccessibilityChildBehavior.ignore.getter();
    a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    v8 = lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    View.accessibilityElement(children:)();
    (*(v13 + 8))(v15, v12);

    if (one-time initialization token for WorkoutUIBundle == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  swift_beginAccess();
  v27 = WorkoutUIBundle.super.isa;
  v98._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0x4D414E5F454E4F5ALL;
  v29.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v29.value._object = 0xEB00000000656C62;
  v28._object = 0xE900000000000045;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v98._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v98);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20CB5DA70;
  v32 = MEMORY[0x277D83C10];
  *(v31 + 56) = MEMORY[0x277D83B88];
  *(v31 + 64) = v32;
  *(v31 + 32) = v76;
  v33 = String.init(format:_:)();
  v35 = v34;

  v89 = v33;
  v90 = v35;
  *&v87 = a1;
  *(&v87 + 1) = v8;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  v36 = v86;
  v37 = v84;
  View.accessibilityLabel<A>(_:)();

  (*(v83 + 8))(v18, v37);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v76 = v89;
  v75 = v91;
  v74 = v93;
  v73 = v94;
  v97 = 1;
  v96 = v90;
  v95 = v92;
  *&v87 = specialized HeartRateTargetZone.rangeString(zone:)();
  *(&v87 + 1) = v38;
  v39 = Text.init<A>(_:)();
  v83 = v40;
  v84 = v39;
  v72 = v41;
  v85 = v42;
  v43 = v78;
  if (one-time initialization token for heartRateShortDescription != -1)
  {
    swift_once();
  }

  v87 = static HeartRateTargetZone.heartRateShortDescription;

  v44 = Text.init<A>(_:)();
  v46 = v45;
  v48 = v47;
  v49 = v77;
  v50 = v80;
  (*(v43 + 104))(v77, *MEMORY[0x277CE0A68], v80);
  v51 = type metadata accessor for Font.Design();
  v52 = v79;
  (*(*(v51 - 8) + 56))(v79, 1, 1, v51);
  static Font.system(_:design:weight:)();
  _s7SwiftUI4FontV6DesignOSgWOhTm_0(v52, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v43 + 8))(v49, v50);
  Font.smallCaps()();

  v53 = Text.font(_:)();
  v55 = v54;
  LOBYTE(v50) = v56;
  v58 = v57;

  outlined consume of Text.Storage(v44, v46, v48 & 1);

  v59 = v36;
  v60 = v81;
  sub_20C676898(v59, v81);
  v61 = v97;
  LOBYTE(v46) = v96;
  LOBYTE(v49) = v95;
  LOBYTE(v44) = v72 & 1;
  LOBYTE(v87) = v72 & 1;
  v62 = v82;
  sub_20C676898(v60, v82);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VG_ACyAA6SpacerVAA12_FrameLayoutVGAA4TextVA1_tMd);
  v64 = v62 + v63[12];
  *v64 = 0;
  *(v64 + 8) = v61;
  *(v64 + 16) = v76;
  *(v64 + 24) = v46;
  *(v64 + 32) = v75;
  *(v64 + 40) = v49;
  v65 = v73;
  *(v64 + 48) = v74;
  *(v64 + 56) = v65;
  v66 = v62 + v63[16];
  v67 = v83;
  v68 = v84;
  *v66 = v84;
  *(v66 + 8) = v67;
  *(v66 + 16) = v44;
  *(v66 + 24) = v85;
  v69 = v62 + v63[20];
  *v69 = v53;
  *(v69 + 8) = v55;
  LOBYTE(v50) = v50 & 1;
  *(v69 + 16) = v50;
  *(v69 + 24) = v58;
  outlined copy of Text.Storage(v68, v67, v44);

  outlined copy of Text.Storage(v53, v55, v50);

  outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)>>(v86, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMd);
  outlined consume of Text.Storage(v53, v55, v50);

  outlined consume of Text.Storage(v68, v67, v87);

  return outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)>>(v60, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMd);
}

unint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA03AnyE0V_SiQo_GMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleE0VyAA4TextV_AA15ModifiedContentVyAPyANSgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGASyAA5ColorVSgGGtGG_07WorkoutB00t11VoicePickerE0V3Row33_4CD7A73CFC316CA40FD77CA975EFFC96LLOQo_GMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAGSgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGALyAA5ColorVSgGGtGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text?, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text?, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAGSgAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGALyAA5ColorVSgGGtGGMd);
    lazy protocol witness table accessor for type WorkoutVoicePickerView.Row and conformance WorkoutVoicePickerView.Row();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Text? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Text? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4TextVSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(NavigationButton, NavigationButton)>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TupleView<(NavigationButton, NavigationButton)>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TupleView<(NavigationButton, NavigationButton)>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVy07WorkoutB016NavigationButtonV_AFtGSgMd);
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(NavigationButton, NavigationButton)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB016NavigationButtonV_AFtGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(NavigationButton, NavigationButton)>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Text, Text>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Text, Text>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Text, Text>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGSgMd);
    lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Text, Text>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

double _s7SwiftUI9TupleViewVy07WorkoutB016NavigationButtonV_AFtGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for HeartRateZoneEntryView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = type metadata accessor for AlertConfigurationContext();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in closure #1 in HeartRateZoneEntryView.body.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HeartRateZoneEntryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  closure #1 in closure #1 in closure #1 in HeartRateZoneEntryView.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, HeaderHyphenation> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, HeaderHyphenation> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, HeaderHyphenation> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB017HeaderHyphenationVGMd);
    lazy protocol witness table accessor for type HeaderHyphenation and conformance HeaderHyphenation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, HeaderHyphenation> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeaderHyphenation and conformance HeaderHyphenation()
{
  result = lazy protocol witness table cache variable for type HeaderHyphenation and conformance HeaderHyphenation;
  if (!lazy protocol witness table cache variable for type HeaderHyphenation and conformance HeaderHyphenation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeaderHyphenation and conformance HeaderHyphenation);
  }

  return result;
}

uint64_t specialized HeartRateTargetZone.rangeString(zone:)()
{
  _sSo23FIUIWorkoutActivityTypeCMaTm_0(0, &lazy cache variable for type metadata for NSNumberFormatter);
  v0 = static NSNumberFormatter.integralFormatter.getter();
  v1 = dispatch thunk of Zone.displayUpperBound.getter();
  if ((v2 & 1) == 0)
  {
    v3 = *&v1;
    v4 = dispatch thunk of Zone.displayLowerBound.getter();
    if ((v5 & 1) == 0)
    {
      v18 = *&v4;
      v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v20 = [v0 stringFromNumber_];

      if (v20)
      {
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v32 = [v0 stringFromNumber_];

      if (v32)
      {
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0xE000000000000000;
      }

      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v36 = WorkoutUIBundle.super.isa;
      v37._countAndFlagsBits = 0xD00000000000001DLL;
      v47._object = 0xE000000000000000;
      v38.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v38.value._object = 0xEB00000000656C62;
      v37._object = 0x800000020CB946D0;
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      v47._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v36, v39, v47);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_20CB5DA80;
      v41 = MEMORY[0x277D837D0];
      *(v40 + 56) = MEMORY[0x277D837D0];
      v42 = lazy protocol witness table accessor for type String and conformance String();
      *(v40 + 32) = v33;
      *(v40 + 40) = v35;
      *(v40 + 96) = v41;
      *(v40 + 104) = v42;
      *(v40 + 64) = v42;
      *(v40 + 72) = v21;
      *(v40 + 80) = v23;
      goto LABEL_25;
    }
  }

  v6 = dispatch thunk of Zone.displayLowerBound.getter();
  if ((v7 & 1) == 0)
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v16 = [v0 stringFromNumber_];

    if (v16)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v17;
    }

    else
    {
      v12 = 9666786;
      v14 = 0xA300000000000000;
    }

    v24 = "ALERT_CONFIGURATION_ROW_LOWER_BOUND";
    goto LABEL_15;
  }

  v8 = dispatch thunk of Zone.displayUpperBound.getter();
  if ((v9 & 1) == 0)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v11 = [v0 stringFromNumber_];

    if (v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v12 = 9666786;
      v14 = 0xA300000000000000;
    }

    v24 = "ALERT_CONFIGURATION_ROW_UPPER_BOUND";
LABEL_15:
    v25 = v24 - 32;
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v26 = WorkoutUIBundle.super.isa;
    v46._object = 0xE000000000000000;
    v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v27.value._object = 0xEB00000000656C62;
    v28._object = (v25 | 0x8000000000000000);
    v28._countAndFlagsBits = 0xD000000000000023;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v46._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v27, v26, v29, v46);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_20CB5DA70;
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v30 + 32) = v12;
    *(v30 + 40) = v14;
LABEL_25:
    v43 = String.init(format:_:)();

    return v43;
  }

  _StringGuts.grow(_:)(46);

  type metadata accessor for HeartRateZone();
  lazy protocol witness table accessor for type HeartRateZoneType and conformance HeartRateZoneType(&lazy protocol witness table cache variable for type HeartRateZone and conformance Zone, MEMORY[0x277D7DFC8]);
  v45 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F30BC00](v45);

  MEMORY[0x20F30BC00](0xD000000000000027, 0x800000020CB94640);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined destroy of Group<TupleView<(<<opaque return type of View.pickerStyle<A>(_:)>>.0, Section<Text?, TupleView<(NavigationButton, NavigationButton)>?, _ConditionalContent<Text, Text>?>)>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_0(uint64_t a1, unint64_t *a2)
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

uint64_t lazy protocol witness table accessor for type HeartRateZoneType and conformance HeartRateZoneType(unint64_t *a1, void (*a2)(uint64_t))
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