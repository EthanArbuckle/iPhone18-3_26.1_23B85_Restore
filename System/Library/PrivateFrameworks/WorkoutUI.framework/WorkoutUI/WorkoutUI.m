uint64_t static DemoUtilities.fetchWorkouts(startingDate:)(uint64_t a1)
{
  v2 = MEMORY[0x20F30BAD0](0xD000000000000014, 0x800000020CBA4310);
  v3 = CFPreferencesCopyAppValue(v2, *MEMORY[0x277D09540]);

  if (!v3)
  {
    return 0;
  }

  v12 = v3;
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v10;
  v5 = v11;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI04DemoA0VGMd);
  lazy protocol witness table accessor for type [DemoWorkout] and conformance <A> [A](&lazy protocol witness table cache variable for type [DemoWorkout] and conformance <A> [A], lazy protocol witness table accessor for type DemoWorkout and conformance DemoWorkout);
  v6 = dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  MEMORY[0x28223BE20](v6);
  v9[2] = a1;
  v7 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static DemoUtilities.fetchWorkouts(startingDate:), v9, v10);

  outlined consume of Data._Representation(v4, v5);

  return v7;
}

uint64_t type metadata accessor for ForegroundProvider()
{
  result = type metadata singleton initialization cache for ForegroundProvider;
  if (!type metadata singleton initialization cache for ForegroundProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ForegroundProvider()
{
  type metadata accessor for Published<Bool>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Bool>()
{
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool>);
    }
  }
}

uint64_t ForegroundProvider.init()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC9WorkoutUI18ForegroundProvider__isForeground;
  v14[15] = 0;
  Published.init(initialValue:)();
  (*(v7 + 32))(v1 + v10, v9, v6);
  type metadata accessor for OS_dispatch_queue();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v12 = [objc_opt_self() sharedApplication];
    v13 = [v12 applicationState];

    swift_getKeyPath();
    swift_getKeyPath();
    v14[14] = v13 == 0;

    static Published.subscript.setter();
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t protocol witness for ForegroundProviding.isForegroundPublisher.getter in conformance ForegroundProvider()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:)()
{

  if (v0)
  {
    v1 = closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:);
  }

  else
  {
    v1 = closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:);
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v27 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    (*(v0 + 72))(v4);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    (*(v3 + 32))(*(v0 + 168), v1, v2);
    static WOLog.trainingLoad.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136446210;
      v15 = _typeName(_:qualified:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v26);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_20C66F000, v7, v8, "[%{public}s] Received Workout load by activity type day summaries", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F30E080](v14, -1, -1);
      MEMORY[0x20F30E080](v13, -1, -1);
    }

    (*(v12 + 8))(v10, v11);
    Strong = swift_weakLoadStrong();
    *(v0 + 216) = Strong;
    if (Strong)
    {
      v20 = *(v0 + 104);
      v19 = *(v0 + 112);
      *v19 = 13;
      (*(v20 + 104))(v19);
      type metadata accessor for MainActor();
      *(v0 + 224) = static MainActor.shared.getter();
      v22 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:), v22, v21);
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
      v23 = swift_task_alloc();
      *(v0 + 208) = v23;
      *v23 = v0;
      v23[1] = closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:);
      v24 = *(v0 + 176);
      v25 = *(v0 + 184);

      return MEMORY[0x2822005A8](v24, 0, 0, v25, v0 + 40);
    }
  }
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd);
  MEMORY[0x20F30BE10](v1);
  swift_beginAccess();
  *(v0 + 232) = *MEMORY[0x277D0FED8];
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);

  return MEMORY[0x2822005A8](v3, 0, 0, v4, v0 + 40);
}

{
  v1 = v0[21];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  TrainingLoadViewModelProvider.update(for:dataType:)(v1, v2);

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:), 0, 0);
}

{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:);
  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x2822005A8](v2, 0, 0, v3, v0 + 5);
}

{
  v24 = v0;
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  v1 = *(v0 + 40);
  static WOLog.trainingLoad.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v22 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136446466;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v23);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v0 + 48) = v1;
    v12 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_20C66F000, v3, v4, "    [%{public}s] Received error for Workout load by activity type summary query: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v8, -1, -1);
    MEMORY[0x20F30E080](v7, -1, -1);

    v16 = (*(v5 + 8))(v22, v6);
  }

  else
  {
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = *(v0 + 120);

    v16 = (*(v18 + 8))(v17, v19);
  }

  (*(v0 + 72))(v16);

  v20 = *(v0 + 8);

  return v20();
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
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

uint64_t type metadata accessor for WorkoutVoiceOnboardingPickerViewModel()
{
  result = type metadata singleton initialization cache for WorkoutVoiceOnboardingPickerViewModel;
  if (!type metadata singleton initialization cache for WorkoutVoiceOnboardingPickerViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutVoiceOnboardingPickerViewModel()
{
  type metadata accessor for InferenceClient();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<Int?>();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<Int?>()
{
  if (!lazy cache variable for type metadata for Published<Int?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Int?>);
    }
  }
}

uint64_t WorkoutVoiceOnboardingPickerViewModel.init(inferenceClient:voiceAssetsObserver:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiSgGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel__selectedRow;
  v15 = 0;
  v16 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd);
  Published.init(initialValue:)();
  v10 = *(v6 + 32);
  v10(v2 + v9, v8, v5);
  v11 = OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel__indicatedRow;
  v15 = 0;
  v16 = 1;
  Published.init(initialValue:)();
  v10(v2 + v11, v8, v5);
  v12 = OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel_inferenceClient;
  v13 = type metadata accessor for InferenceClient();
  (*(*(v13 - 8) + 32))(v2 + v12, a1, v13);
  *(v2 + OBJC_IVAR____TtC9WorkoutUI37WorkoutVoiceOnboardingPickerViewModel_voiceAssetsObserver) = a2;
  return v2;
}

uint64_t type metadata accessor for PerformanceTestModel()
{
  result = type metadata singleton initialization cache for PerformanceTestModel;
  if (!type metadata singleton initialization cache for PerformanceTestModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for Published<FIUIWorkoutActivityType?>(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for PerformanceTestModel()
{
  type metadata accessor for Published<FIUIWorkoutActivityType?>(319, &lazy cache variable for type metadata for Published<FIUIWorkoutActivityType?>, &_sSo23FIUIWorkoutActivityTypeCSgMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<FIUIWorkoutActivityType?>(319, &lazy cache variable for type metadata for Published<NSNumber?>, &_sSo8NSNumberCSgMd);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id PerformanceTestModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo8NSNumberCSgGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR___WOPerformanceTestModel__startWorkoutActivity;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23FIUIWorkoutActivityTypeCSgMd);
  Published.init(initialValue:)();
  (*(v6 + 32))(&v0[v9], v8, v5);
  v10 = OBJC_IVAR___WOPerformanceTestModel__startWorkoutAtRow;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd);
  Published.init(initialValue:)();
  v11 = *(v2 + 32);
  v11(&v0[v10], v4, v1);
  v12 = OBJC_IVAR___WOPerformanceTestModel__startLastWorkout;
  v17 = 0;
  Published.init(initialValue:)();
  v11(&v0[v12], v4, v1);
  v13 = type metadata accessor for PerformanceTestModel();
  v16.receiver = v0;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t type metadata accessor for ConfigurationNavigationModel()
{
  result = type metadata singleton initialization cache for ConfigurationNavigationModel;
  if (!type metadata singleton initialization cache for ConfigurationNavigationModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ConfigurationNavigationModel()
{
  _s7Combine9PublishedVySbGMaTm_1(319, &lazy cache variable for type metadata for Published<Bool>);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<ConfigurationNavigationModel.BlockPresentation?>(319, &lazy cache variable for type metadata for Published<ConfigurationNavigationModel.BlockPresentation?>, &_s9WorkoutUI28ConfigurationNavigationModelC17BlockPresentationOSgMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<NavigationPath>();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<ConfigurationNavigationModel.BlockPresentation?>(319, &lazy cache variable for type metadata for Published<ConfigurationNavigationModel.NewBlockType?>, &_s9WorkoutUI28ConfigurationNavigationModelC12NewBlockTypeOSgMd);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Published<ConfigurationNavigationModel.BlockPresentation?>(319, &lazy cache variable for type metadata for Published<AnyActivityPickerItem?>, &_s11WorkoutCore21AnyActivityPickerItemVSgMd);
          if (v4 <= 0x3F)
          {
            _s7Combine9PublishedVySbGMaTm_1(319, &lazy cache variable for type metadata for Published<ScrollPhase>);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<ConfigurationNavigationModel.BlockPresentation?>(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Published<NavigationPath>()
{
  if (!lazy cache variable for type metadata for Published<NavigationPath>)
  {
    type metadata accessor for NavigationPath();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<NavigationPath>);
    }
  }
}

uint64_t ConfigurationNavigationModel.init(startWorkout:startGuidedWorkout:quickWorkoutSwitchProvider:performanceTestModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v8 = specialized ConfigurationNavigationModel.init(startWorkout:startGuidedWorkout:quickWorkoutSwitchProvider:performanceTestModel:)(a1, a2, a3, a4, a5, a6);

  return v8;
}

uint64_t specialized ConfigurationNavigationModel.init(startWorkout:startGuidedWorkout:quickWorkoutSwitchProvider:performanceTestModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v71 = a6;
  v72 = a2;
  v74 = a4;
  v75 = a5;
  v73 = a3;
  v70 = a1;
  v7 = type metadata accessor for NavigationPath();
  v77 = *(v7 - 8);
  v78 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v76 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy7SwiftUI11ScrollPhaseOGMd);
  v67 = *(v11 - 8);
  v68 = v11;
  MEMORY[0x28223BE20](v11);
  v66 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore21AnyActivityPickerItemVSgGMd);
  v64 = *(v13 - 8);
  v65 = v13;
  MEMORY[0x28223BE20](v13);
  v63 = &v57 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore21AnyActivityPickerItemVSgMd);
  v15 = MEMORY[0x28223BE20](v62);
  v61 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v60 = &v57 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI28ConfigurationNavigationModelC12NewBlockTypeOSgGMd);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI28ConfigurationNavigationModelC17BlockPresentationOSgGMd);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v57 - v26;
  v28 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__isPresentingCreateWorkoutConfiguration;
  v79 = 0;
  Published.init(initialValue:)();
  v29 = *(v25 + 32);
  v29(v6 + v28, v27, v24);
  v30 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__blockPresentation;
  v79 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI28ConfigurationNavigationModelC17BlockPresentationOSgMd);
  Published.init(initialValue:)();
  (*(v21 + 32))(v6 + v30, v23, v20);
  v31 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__isPresentingEditPacerWorkoutConfiguration;
  v79 = 0;
  Published.init(initialValue:)();
  v29(v6 + v31, v27, v24);
  *(v6 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_intervalWorkout) = 0;
  v32 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__newBlockType;
  v79 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI28ConfigurationNavigationModelC12NewBlockTypeOSgMd);
  Published.init(initialValue:)();
  (*(v58 + 32))(v6 + v32, v19, v59);
  v33 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__warmupConfigurationIsActive;
  v79 = 0;
  Published.init(initialValue:)();
  v29(v6 + v33, v27, v24);
  v34 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__cooldownConfigurationIsActive;
  v79 = 0;
  Published.init(initialValue:)();
  v29(v6 + v34, v27, v24);
  v35 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__tabViewSelectionItem;
  v36 = type metadata accessor for AnyActivityPickerItem();
  v37 = v60;
  (*(*(v36 - 8) + 56))(v60, 1, 1, v36);
  outlined init with copy of AnyActivityPickerItem?(v37, v61);
  v38 = v63;
  Published.init(initialValue:)();
  outlined destroy of AnyActivityPickerItem?(v37);
  (*(v64 + 32))(v6 + v35, v38, v65);
  v39 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__scrollPhase;
  v79 = 0;
  v40 = v66;
  Published.init(initialValue:)();
  (*(v67 + 32))(v6 + v39, v40, v68);
  v41 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__showToolbarItems;
  v79 = 0;
  Published.init(initialValue:)();
  v29(v6 + v41, v27, v24);
  v42 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__firstAppLaunch;
  v79 = 1;
  Published.init(initialValue:)();
  v29(v6 + v42, v27, v24);
  v43 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__hasScrolled;
  v79 = 0;
  Published.init(initialValue:)();
  v29(v6 + v43, v27, v24);
  v45 = v70;
  v44 = v71;
  *(v6 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_performanceTestModel) = v71;
  v46 = (v6 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);
  v47 = v72;
  *v46 = v45;
  v46[1] = v47;
  v48 = (v6 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_startGuidedWorkout);
  v49 = v74;
  *v48 = v73;
  v48[1] = v49;
  v50 = v75;
  *(v6 + 16) = v75;
  v51 = v44;

  v52 = v50;
  v53 = v69;
  NavigationPath.init()();
  swift_beginAccess();
  v54 = v77;
  v55 = v78;
  (*(v77 + 16))(v76, v53, v78);
  Published.init(initialValue:)();
  (*(v54 + 8))(v53, v55);
  swift_endAccess();
  return v6;
}

uint64_t type metadata accessor for WorkoutUIController()
{
  result = type metadata singleton initialization cache for WorkoutUIController;
  if (!type metadata singleton initialization cache for WorkoutUIController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for WorkoutUIController()
{
  result = type metadata accessor for FitnessIntelligenceConnection();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for InferenceClient();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
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

uint64_t sub_20C6745D0()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_20C674734()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *_sSo21HKWorkoutActivityTypeVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL _sSo12UIRectCornerVs10SetAlgebraSCsACP6insertySb8inserted_7ElementQz17memberAfterInserttAHnFTW_0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *_sSo21NLWorkoutPausedReasonVs10SetAlgebraSCsACP6removey7ElementQzSgAGFTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *_sSo21NLWorkoutPausedReasonVs10SetAlgebraSCsACP6update4with7ElementQzSgAHn_tFTW_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t _sSo29UIFontDescriptorAttributeNameaSYSCSY8rawValue03RawF0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20C674B84()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_20C674BEC()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    lazy protocol witness table accessor for type _TaskModifier2 and conformance _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type _TaskModifier and conformance _TaskModifier, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_20C674CE0()
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
  return swift_getWitnessTable();
}

uint64_t _sSo7CGPointVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo7CGPointVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t _sSo9MKMapRectawet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo9MKMapRectawst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_20C674E38@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type WorkoutViewStyleKey and conformance WorkoutViewStyleKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_20C674ED4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_20C674F2C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20C674F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyACyAA01_e9Modifier_D0Vy07WorkoutB015MetricValueFontVGAA022_EnvironmentKeyWritingL0VyAA0P0VSgGG_Qo_AQySiSgGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C675004()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  return swift_getWitnessTable();
}

uint64_t sub_20C6750A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19simultaneousGesture_9includingQrqd___AA0G4MaskVtAA0G0Rd__lFQOyACyAA6ButtonVyACyAA4TextVAA16_FlexFrameLayoutVGGAA32_EnvironmentKeyTransformModifierVySbGG_AA06_EndedG0VyAA016DelayedLongPressG0VGQo_AA01_op7WritingR0VyAA13AnyShapeStyleVSgGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C675138()
{
  outlined consume of StateObject<WorkoutDevicesProvider>.Storage(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_20C6751B0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_20C675208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_20C6752D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C67539C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyACyAA0I0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAA5ColorVSgGG_AA08BorderediG0VQo_AA06_TraitpQ0VyAA017ListRowBackgrounduO0VGGAA023AccessibilityAttachmentQ0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _TraitWritingModifier<ListRowBackgroundTraitKey>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type HStack<TupleView<(Spacer, Text, Spacer)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C675464()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20C6754B0()
{
  v1 = type metadata accessor for MapHostingMirrorView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 40))
  {
  }

  v3 = v2 + *(v1 + 36);
  v4 = type metadata accessor for PresentationDetent();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd);

  return swift_deallocObject();
}

uint64_t sub_20C6755E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C6756A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA18PresentationDetentVGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C675770()
{

  return swift_deallocObject();
}

uint64_t sub_20C6757CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for InferenceClient();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C675878(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InferenceClient();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C675980()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAA14NavigationLinkVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA05TupleI0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA0m10AttachmentV0VG_07WorkoutB00g5LabelI0VAA6SpacerVtGG_Qo_AkAE15navigationTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOA7_022VoiceCompanionSettingsI0VG_SSQo_GAkAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyAEyAGyACyAkAE12onTapGesture5count7performQrSi_yyctFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyACyACyAuA010_FlexFrameY0VGA2_GAA016_BackgroundStyleV0VyAYGGA_GAA11_ClipEffectVyAA16RoundedRectangleVGGAWyAA4FontVSgGGA_GAA016_ForegroundStyleV0VyAYGGA5_GG_AA16PlainButtonStyleVQo__Qo_AA01_d9ShapeKindV0VyA52_GGACyACyAkAEA36_yQrqd__AAA37_Rd__lFQOyA39_yAkAEAlMQrAO_tFQOyACyACyACyACyAA6VStackVyASyACyAUA5_G_AkAE10fontWeightyQrA56_6WeightVSgFQOyACyAA4TextVAWyAA13TextAlignmentOGG_Qo_ACyACyA87_AWySiSgGGA_GtGGA41_GA2_GA58_GA63_G_Qo_G_A68_Qo_AA011_BackgroundV0VyAA06_ShapeI0VyA52_AYGGGA73_GGG_AA0G5StackVyAA0G4PathVAkAE7toolbarA28_Qrqd__yXE_tAA07ToolbarD0Rd__lFQOyACyACyACyACyA22_AWy12CoreGraphics7CGFloatVSgGGAA06_TraituV0VyAA023ListSectionSpacingTraitT0VGGAWyAA18ListSectionSpacingVSgGGA7_06InlineG8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA07ToolbarD7BuilderV10buildBlockyQrxAAA117_RzlFZQOy_AA11ToolbarItemVyytACyA39_yAA18DefaultButtonLabelVGAWyAA13AnyShapeStyleVSgGGGQo_Qo_GQo_GGAA05_TaskV0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<NavigationLink<<<opaque return type of View.accessibilityElement(children:)>>.0, <<opaque return type of View.navigationTitle<A>(_:)>>.0>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0>>, _TaskModifier> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C675A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C675B08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _sIeg_SgWOe_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C675C28()
{

  return swift_deallocObject();
}

uint64_t sub_20C675C68()
{
  v1 = type metadata accessor for SessionView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  if (*(v2 + v1[9]))
  {
  }

  if (*(v2 + v1[13]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C675F90(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C676008()
{

  return swift_deallocObject();
}

uint64_t sub_20C6760DC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for AlertConfigurationContext();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for AlertConfigurationSessionContext();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = type metadata accessor for InferenceClient();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_20C676248(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for AlertConfigurationContext();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for AlertConfigurationSessionContext();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = type metadata accessor for InferenceClient();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_20C6763B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACyAA5ImageVAA31AccessibilityAttachmentModifierVGs5NeverOGAA017_AppearanceActionJ0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<NavigationLink<ModifiedContent<Image, AccessibilityAttachmentModifier>, Never>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.State and conformance WorkoutVoiceAvailabilityProvider.State();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C676434()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C676480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleG0VyACyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAA14NavigationLinkVyAA6VStackVyAIyAM_AMtGGAO014DistancePickerG0VGAA32_EnvironmentKeyTransformModifierVySbGG_So21NLWorkoutSplitStorageCQo_tGACyAmO04BodyM0VGGAA017_AppearanceActionZ0VGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C676500()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleG0VyACyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_AA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAA14NavigationLinkVyAA6VStackVyAIyAM_AMtGGAO014DistancePickerG0VGAA32_EnvironmentKeyTransformModifierVySbGG_So21NLWorkoutSplitStorageCQo_tGACyAmO04BodyM0VGGAA017_AppearanceActionZ0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C6765BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAA14NavigationLinkVyAA6VStackVyAA05TupleE0VyAA4TextV_APtGG07WorkoutB0016TimeSplitsPickerE0VGAA32_EnvironmentKeyTransformModifierVySbGG_SdQo_AA14_OpacityEffectVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67662C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAA14NavigationLinkVyAA6VStackVyAA05TupleE0VyAA4TextV_APtGG07WorkoutB0016TimeSplitsPickerE0VGAA32_EnvironmentKeyTransformModifierVySbGG_SdQo_AA14_OpacityEffectVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67669C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7SectionVyAA9EmptyViewVAA05TupleG0VyACyAA6ToggleVyAA4TextVG07WorkoutB017HeaderHyphenationVG_ACyAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAA14NavigationLinkVyAA6VStackVyAIyAM_AMtGGAO016TimeSplitsPickerG0VGAA32_EnvironmentKeyTransformModifierVySbGG_SdQo_AA14_OpacityEffectVGtGACyAmO04BodyM0VGGAA25_AppearanceActionModifierVGMd);
  lazy protocol witness table accessor for type ModifiedContent<Section<EmptyView, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _OpacityEffect>)>, ModifiedContent<Text, BodyHyphenation>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C676718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AlertConfigurationContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C6767C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AlertConfigurationContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C676898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_Qo_AA0i10AttachmentP0VGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C676928()
{

  return swift_deallocObject();
}

uint64_t sub_20C676980()
{
  v1 = type metadata accessor for TipViewStyleConfiguration();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_20C676A68()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20C676AA0()
{

  return swift_deallocObject();
}

uint64_t sub_20C676B24()
{

  return swift_deallocObject();
}

uint64_t sub_20C676B74()
{

  return swift_deallocObject();
}

uint64_t sub_20C676BD4()
{

  return swift_deallocObject();
}

uint64_t sub_20C676C64()
{

  outlined consume of Environment<WorkoutAnimationStyle>.Content(*(v0 + 120), *(v0 + 128));

  return swift_deallocObject();
}

uint64_t sub_20C676CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAQyACyAA5ImageVAA0I18AttachmentModifierVGAVGAQyACyACy07WorkoutB008GoalRingE0VAA12_FrameLayoutVGAUGACyACyASA0_GAUGGGSgGAA16_GrayscaleEffectVG_ACyACyAOyAQyAQyAX020PrecisionStartStatusE0VACyACyACyAsA012_AspectRatioW0VGA0_GAUGGAQyA18_AQyACyACyAX08AnimatedS5GlyphVAA17_FlipForRTLEffectVGAUGACyACyAX0s4TypeP0VA23_GAUGGGGGAA016_ForegroundStyleR0VyAA5ColorVGGA10_GtGG_Qo_AUGAA01_d9ShapeKindR0VyAA6CircleVGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C676D50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ZStackVyAA05TupleE0VyACyAA5GroupVyAA012_ConditionalD0VyAQyACyAA5ImageVAA0I18AttachmentModifierVGAVGAQyACyACy07WorkoutB008GoalRingE0VAA12_FrameLayoutVGAUGACyACyASA0_GAUGGGSgGAA16_GrayscaleEffectVG_ACyACyAOyAQyAQyAX020PrecisionStartStatusE0VACyACyACyAsA012_AspectRatioW0VGA0_GAUGGAQyA18_AQyACyACyAX08AnimatedS5GlyphVAA17_FlipForRTLEffectVGAUGACyACyAX0s4TypeP0VA23_GAUGGGGGAA016_ForegroundStyleR0VyAA5ColorVGGA10_GtGG_Qo_AUGAA01_d9ShapeKindR0VyAA6CircleVGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20C676DD0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WorkoutAlertPresenter.inactiveAppearanceAnimationCoordinator.setter(v1);
}

void sub_20C676E0C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WorkoutAlertPresenter.currentAlert.setter(v1);
}

void sub_20C676E40(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  v2 = v3;
  WorkoutAlertPresenter.displayedWorkoutAlert.setter(&v3);
}

uint64_t sub_20C676F70()
{

  return swift_deallocObject();
}

void sub_20C677150(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WorkoutAlertPresenter.backlightTimer.setter(v1);
}

uint64_t sub_20C6771E8()
{

  return swift_deallocObject();
}

uint64_t sub_20C677228()
{
  MEMORY[0x20F30E160](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C677260()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C6772A8()
{

  return swift_deallocObject();
}

uint64_t sub_20C677324()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20C67735C()
{

  return swift_deallocObject();
}

uint64_t sub_20C6773C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutReadinessCheckError();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C677484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WorkoutReadinessCheckError();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C677558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAGyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAA19SymbolRenderingModeVSgGGAA011_ForegroundI9Modifier2VyAA5ColorVA3_GGAA06_BlendT6EffectVGG_AA05PlainkI0VQo_AA01_g9ShapeKindP0VyAA6CircleVGGAA14_PaddingLayoutVGtGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C6775D8()
{
  outlined consume of StateObject<MapWrapper>.Storage();

  return swift_deallocObject();
}

uint64_t sub_20C67762C()
{

  return swift_deallocObject();
}

uint64_t sub_20C67766C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore18AppleExertionScaleOSgGMd);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_20C677804(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore18AppleExertionScaleOSgGMd);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_20C677A0C()
{
  v1 = type metadata accessor for ManualWorkoutLoggingView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
  }

  v6 = v4 + v1[7];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd);

  v8 = v4 + v1[10];
  v9 = type metadata accessor for AppleExertionScale();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore18AppleExertionScaleOSgGMd);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C677D7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGy07WorkoutB0017CurrentStepMetricE0VAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAH13RoundedCornerVGG_AH07PreviewjkE0VtGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<ModifiedContent<CurrentStepMetricView, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, PreviewStepMetricView)>> and conformance HStack<A>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C677DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for InferenceClient();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C677E90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InferenceClient();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C677F80()
{

  return swift_deallocObject();
}

uint64_t sub_20C677FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB020SessionControlsStateCGMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20C678114(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB016SessionViewModelCGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB020SessionControlsStateCGMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20C678284()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdefGQrAJ_AKqd__yctAaBRd__lFQOyAcAE011interactiveH8DisabledyQrSbFQOyAcAE24presentationCornerRadiusyQr12CoreGraphics7CGFloatVSgFQOyAcAE0M21BackgroundInteractionyQrAA012PresentationsT0VFQOyAcAE0mS0yQrqd__AA10ShapeStyleRd__lFQOyAcAE0M13DragIndicatoryQrAA10VisibilityOFQOyAcAE16scrollIndicators_4axesQrAA06ScrollyZ0V_AA4AxisO3SetVtFQOyAcAE06scrollL0yQrSbFQOyAA15ModifiedContentVyAA06ScrollC0VyAA6VStackVyAA05TupleC0VyA8_yA8_y07WorkoutB0013SessionStatusC0VAA14_PaddingLayoutVGA19_G_A8_yA8_yA15_015SessionControlsC4_iOSVA19_GA19_GA8_yA8_yA8_yA15_020SessionExtraControlsC0VAA12_ScaleEffectVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGGSgtGGGAA31AccessibilityAttachmentModifierVG_Qo__Qo__Qo__AA5ColorVQo__Qo__Qo__Qo__A8_yA8_yA15_027SafetyMonitorMessageComposeC0VAA30_EnvironmentKeyWritingModifierVyA49_SgGGAA30_SafeAreaRegionsIgnoringLayoutVGQo__A8_yA8_yA15_027SafetyMonitorSessionDetailsC0VA59_GA62_GSgQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy013SafetyMonitorB031CheckInOnboardingNavigationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAE011interactiveH8DisabledyQrSbFQOyAcAE24presentationCornerRadiusyQr12CoreGraphics7CGFloatVSgFQOyAcAE0M21BackgroundInteractionyQrAA012PresentationsT0VFQOyAcAE0mS0yQrqd__AA10ShapeStyleRd__lFQOyAcAE0M13DragIndicatoryQrAA10VisibilityOFQOyAcAE16scrollIndicators_4axesQrAA06ScrollyZ0V_AA4AxisO3SetVtFQOyAcAE06scrollL0yQrSbFQOyAA15ModifiedContentVyAA06ScrollC0VyAA6VStackVyAA05TupleC0VyA8_yA8_y07WorkoutB0013SessionStatusC0VAA14_PaddingLayoutVGA19_G_A8_yA8_yA15_015SessionControlsC4_iOSVA19_GA19_GA8_yA8_yA8_yA15_020SessionExtraControlsC0VAA12_ScaleEffectVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGGSgtGGGAA31AccessibilityAttachmentModifierVG_Qo__Qo__Qo__AA5ColorVQo__Qo__Qo__Qo__A8_yA8_yA15_027SafetyMonitorMessageComposeC0VAA30_EnvironmentKeyWritingModifierVyA49_SgGGAA30_SafeAreaRegionsIgnoringLayoutVGQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB031SafetyMonitorSessionDetailsViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE26interactiveDismissDisabledyQrSbFQOyAcAE24presentationCornerRadiusyQr12CoreGraphics7CGFloatVSgFQOyAcAE0G21BackgroundInteractionyQrAA012PresentationmN0VFQOyAcAE0gM0yQrqd__AA10ShapeStyleRd__lFQOyAcAE0G13DragIndicatoryQrAA10VisibilityOFQOyAcAE16scrollIndicators_4axesQrAA06ScrollsT0V_AA4AxisO3SetVtFQOyAcAE0uF0yQrSbFQOyAA15ModifiedContentVyAA0xC0VyAA6VStackVyAA05TupleC0VyA0_yA0_y07WorkoutB0013SessionStatusC0VAA14_PaddingLayoutVGA11_G_A0_yA0_yA7_015SessionControlsC4_iOSVA11_GA11_GA0_yA0_yA0_yA7_020SessionExtraControlsC0VAA12_ScaleEffectVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGGSgtGGGAA31AccessibilityAttachmentModifierVG_Qo__Qo__Qo__AA5ColorVQo__Qo__Qo__Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB031SafetyMonitorMessageComposeViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE24presentationCornerRadiusyQr12CoreGraphics7CGFloatVSgFQOyAcAE0D21BackgroundInteractionyQrAA012PresentationjK0VFQOyAcAE0dJ0yQrqd__AA10ShapeStyleRd__lFQOyAcAE0D13DragIndicatoryQrAA10VisibilityOFQOyAcAE16scrollIndicators_4axesQrAA06ScrollpQ0V_AA4AxisO3SetVtFQOyAcAE0R8DisabledyQrSbFQOyAA15ModifiedContentVyAA0uC0VyAA6VStackVyAA05TupleC0VyA_yA_y07WorkoutB0013SessionStatusC0VAA14_PaddingLayoutVGA10_G_A_yA_yA6_015SessionControlsC4_iOSVA10_GA10_GA_yA_yA_yA6_020SessionExtraControlsC0VAA12_ScaleEffectVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGGSgtGGGAA31AccessibilityAttachmentModifierVG_Qo__Qo__Qo__AA5ColorVQo__Qo__Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAcAE0dE0yQrqd__AA10ShapeStyleRd__lFQOyAcAE0D13DragIndicatoryQrAA10VisibilityOFQOyAcAE16scrollIndicators_4axesQrAA06ScrollkL0V_AA4AxisO3SetVtFQOyAcAE0M8DisabledyQrSbFQOyAA15ModifiedContentVyAA0pC0VyAA6VStackVyAA05TupleC0VyAVyAVy07WorkoutB0013SessionStatusC0VAA14_PaddingLayoutVGA5_G_AVyAVyA1_0y8ControlsC4_iOSVA5_GA5_GAVyAVyAVyA1_0y13ExtraControlsC0VAA12_ScaleEffectVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGGSgtGGGAA31AccessibilityAttachmentModifierVG_Qo__Qo__Qo__AA5ColorVQo__Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyAcAE0D13DragIndicatoryQrAA10VisibilityOFQOyAcAE16scrollIndicators_4axesQrAA06ScrolliJ0V_AA4AxisO3SetVtFQOyAcAE0K8DisabledyQrSbFQOyAA15ModifiedContentVyAA0nC0VyAA6VStackVyAA05TupleC0VyASyASy07WorkoutB0013SessionStatusC0VAA14_PaddingLayoutVGA2_G_ASyASyAZ0w8ControlsC4_iOSVA2_GA2_GASyASyASyAZ0w13ExtraControlsC0VAA12_ScaleEffectVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGGSgtGGGAA31AccessibilityAttachmentModifierVG_Qo__Qo__Qo__AA5ColorVQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE16scrollIndicators_4axesQrAA06ScrollfG0V_AA4AxisO3SetVtFQOyAcAE0H8DisabledyQrSbFQOyAA15ModifiedContentVyAA0kC0VyAA6VStackVyAA05TupleC0VyAQyAQy07WorkoutB0013SessionStatusC0VAA14_PaddingLayoutVGA0_G_AQyAQyAX0t8ControlsC4_iOSVA0_GA0_GAQyAQyAQyAX0t5ExtraxC0VAA12_ScaleEffectVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGGSgtGGGAA31AccessibilityAttachmentModifierVG_Qo__Qo__Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAcAE0D8DisabledyQrSbFQOyAA15ModifiedContentVyAA0gC0VyAA6VStackVyAA05TupleC0VyANyANy07WorkoutB0013SessionStatusC0VAA14_PaddingLayoutVGAYG_ANyANyAU0r8ControlsC4_iOSVAYGAYGANyANyANyAU0r5ExtravC0VAA12_ScaleEffectVGAA08_OpacityZ0VGAA18_AnimationModifierVySbGGSgtGGGAA31AccessibilityAttachmentModifierVG_Qo__Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE14scrollDisabledyQrSbFQOyAA15ModifiedContentVyAA06ScrollC0VyAA6VStackVyAA05TupleC0VyAFyAFy07WorkoutB0013SessionStatusC0VAA14_PaddingLayoutVGAQG_AFyAFyAM0l8ControlsC4_iOSVAQGAQGAFyAFyAFyAM0l5ExtrapC0VAA12_ScaleEffectVGAA08_OpacityT0VGAA18_AnimationModifierVySbGGSgtGGGAA023AccessibilityAttachmentW0VG_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA10ScrollViewVyAA6VStackVyAA05TupleF0VyACyACy07WorkoutB0013SessionStatusF0VAA14_PaddingLayoutVGANG_ACyACyAJ0j8ControlsF4_iOSVANGANGACyACyACyAJ0j5ExtranF0VAA12_ScaleEffectVGAA08_OpacityR0VGAA18_AnimationModifierVySbGGSgtGGGAA023AccessibilityAttachmentU0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<ScrollView<VStack<TupleView<(ModifiedContent<ModifiedContent<SessionStatusView, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<SessionControlsView_iOS, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<SessionExtraControlsView, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>?)>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB031SafetyMonitorMessageComposeViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB031SafetyMonitorMessageComposeViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SafetyMonitorSessionDetailsView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SafetyMonitorMessageComposeView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<CheckInOnboardingNavigationView, _EnvironmentKeyWritingModifier<Color?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy013SafetyMonitorB031CheckInOnboardingNavigationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy013SafetyMonitorB031CheckInOnboardingNavigationViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<CheckInOnboardingNavigationView, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C6785FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_20C6786B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C6787F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyACy07WorkoutB08UIPicker33_2CF2A6943750EC02257617BB8FECEA7DLLVAA16_OverlayModifierVyACyACyACyAA9LazyVGridVyAA05TupleE0VyAR15TimePickerPhoneV14ComponentLabelATLLVy_AA4TextVGSg_A6_A7_tGGAA14_PaddingLayoutVGAA022_EnvironmentKeyWritingZ0VyAA15LayoutDirectionOGGAA023AccessibilityAttachmentZ0VGGG_Qo__SiQo__SiQo__SiQo_AR012AdjustedListK16SeparatorLeadingVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C678888()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA15_HiddenModifierVGAA017_AlignmentWritingG0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();

  return swift_getWitnessTable();
}

void _s9WorkoutUI25NextIntervalOrLegPillViewV11description17metricDescription06centerK11OnCapHeight4iconACyxGSS_SSSbxyctcfC05SwiftB015ModifiedContentVyAKyAI5ImageVAI18_AspectRatioLayoutVGAI06_FrameW0VG_Tt3g5_0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = objc_opt_self();
  v11 = [v10 currentDevice];
  v12 = specialized UIDevice.screenType.getter();

  v13 = dbl_20CB636F0[v12];
  v14 = objc_opt_self();
  v15 = [v14 mainScreen];
  [v15 scale];
  v17 = v16;

  v18 = [v14 mainScreen];
  [v18 nativeScale];
  v20 = v19;

  if (v17 != v20)
  {
    v21 = [v14 mainScreen];
    [v21 scale];
    v23 = v22;

    v24 = [v14 mainScreen];
    [v24 nativeScale];
    v26 = v25;

    v13 = v13 * (v23 / v26 * 0.95);
  }

  v27 = [v10 currentDevice];
  v28 = specialized UIDevice.screenType.getter();

  v29 = dbl_20CB63748[v28];
  v30 = [v14 mainScreen];
  [v30 scale];
  v32 = v31;

  v33 = [v14 mainScreen];
  [v33 nativeScale];
  v35 = v34;

  if (v32 != v35)
  {
    v36 = [v14 mainScreen];
    [v36 scale];
    v38 = v37;

    v39 = [v14 mainScreen];
    [v39 nativeScale];
    v41 = v40;

    v29 = v29 * (v38 / v41 * 0.95);
  }

  v42 = [v10 currentDevice];
  v43 = specialized UIDevice.screenType.getter();

  v44 = dbl_20CB637A0[v43];
  v45 = [v14 mainScreen];
  [v45 scale];
  v47 = v46;

  v48 = [v14 mainScreen];
  [v48 nativeScale];
  v50 = v49;

  v190 = v29;
  v191 = v13;
  if (v47 != v50)
  {
    v51 = [v14 mainScreen];
    [v51 scale];
    v53 = v52;

    v54 = [v14 mainScreen];
    [v54 nativeScale];
    v56 = v55;

    v44 = v44 * (v53 / v56 * 0.95);
  }

  v189 = v44;

  v57 = [v14 mainScreen];
  [v57 scale];
  v59 = v58;

  v60 = [v14 mainScreen];
  [v60 nativeScale];
  v62 = v61;

  if (v59 == v62)
  {
    v63 = 8.0;
  }

  else
  {
    v63 = 12.0;
  }

  v198 = v63;

  v64 = [v14 mainScreen];
  [v64 scale];
  v187 = v65;

  v66 = [v14 mainScreen];
  [v66 nativeScale];
  v185 = v67;

  v68 = [v14 mainScreen];
  [v68 scale];
  v70 = v69;

  v71 = [v14 mainScreen];
  [v71 nativeScale];
  v73 = v72;

  if (v70 == v73)
  {
    v74 = 10.0;
  }

  else
  {
    v74 = 12.0;
  }

  v75 = [v14 mainScreen];
  [v75 scale];
  v77 = v76;

  v78 = [v14 mainScreen];
  [v78 nativeScale];
  v80 = v79;

  v81 = [v14 mainScreen];
  [v81 scale];
  v83 = v82;

  v84 = [v14 mainScreen];
  [v84 nativeScale];
  v86 = v85;

  if (v83 == v86)
  {
    v87 = 8.0;
  }

  else
  {
    v87 = 12.0;
  }

  v88 = [v14 mainScreen];
  [v88 scale];
  v90 = v89;

  v91 = [v14 mainScreen];
  [v91 nativeScale];
  v93 = v92;

  v94 = [v14 mainScreen];
  [v94 scale];
  v96 = v95;

  v97 = [v14 mainScreen];
  [v97 nativeScale];
  v99 = v98;

  v100 = [v10 currentDevice];
  v101 = specialized UIDevice.screenType.getter();

  if (v101 <= 4u)
  {
    v102 = v198;
    if (v101 >= 3u)
    {
      v102 = v74;
    }
  }

  else
  {
    if (v101 > 7u)
    {
      if (v101 == 8)
      {
        v103 = v77 == v80;
        v104 = 12.0;
        v105 = 10.0;
        goto LABEL_30;
      }

      if (v101 == 9)
      {
        v103 = v90 == v93;
      }

      else
      {
        v103 = v96 == v99;
      }

      v104 = 12.0;
LABEL_29:
      v105 = 8.0;
LABEL_30:
      if (v103)
      {
        v102 = v105;
      }

      else
      {
        v102 = v104;
      }

      goto LABEL_33;
    }

    v102 = v87;
    if (v101 != 5 && v101 != 6)
    {
      v103 = v187 == v185;
      v104 = 16.0;
      goto LABEL_29;
    }
  }

LABEL_33:

  v106 = [v14 mainScreen];
  [v106 scale];
  v108 = v107;

  v109 = [v14 mainScreen];
  [v109 nativeScale];
  v111 = v110;

  if (v108 != v111)
  {
    v112 = [v14 mainScreen];
    [v112 scale];
    v114 = v113;

    v115 = [v14 mainScreen];
    [v115 nativeScale];
    v117 = v116;

    v102 = v102 * (v114 / v117 * 0.95);
  }

  v199 = v102;

  v118 = [v14 mainScreen];
  [v118 scale];
  v120 = v119;

  v121 = [v14 mainScreen];
  [v121 nativeScale];
  v123 = v122;

  v124 = 12.0;
  if (v120 != v123)
  {
    v124 = 23.0;
  }

  v188 = v124;

  v125 = [v14 mainScreen];
  [v125 scale];
  v186 = v126;

  v127 = [v14 mainScreen];
  [v127 nativeScale];
  v183 = v128;

  v129 = [v14 mainScreen];
  [v129 scale];
  v131 = v130;

  v132 = [v14 mainScreen];
  [v132 nativeScale];
  v134 = v133;

  if (v131 == v134)
  {
    v135 = 10.0;
  }

  else
  {
    v135 = 23.0;
  }

  v136 = [v14 mainScreen];
  [v136 scale];
  v138 = v137;

  v139 = [v14 mainScreen];
  [v139 nativeScale];
  v141 = v140;

  v142 = [v14 mainScreen];
  [v142 scale];
  v144 = v143;

  v145 = [v14 mainScreen];
  [v145 nativeScale];
  v147 = v146;

  if (v144 == v147)
  {
    v148 = 8.0;
  }

  else
  {
    v148 = 23.0;
  }

  v149 = [v14 mainScreen];
  [v149 scale];
  v151 = v150;

  v152 = [v14 mainScreen];
  [v152 nativeScale];
  v154 = v153;

  v155 = [v14 mainScreen];
  [v155 scale];
  v157 = v156;

  v158 = [v14 mainScreen];
  [v158 nativeScale];
  v160 = v159;

  v161 = [v10 currentDevice];
  v162 = specialized UIDevice.screenType.getter();

  if (v162 <= 4u)
  {
    v164 = v190;
    v163 = v191;
    v167 = v188;
    v165 = v189;
    v166 = v199;
    if (v162 >= 3u)
    {
      v167 = v135;
    }
  }

  else if (v162 > 7u)
  {
    if (v162 == 8)
    {
      v168 = v138 == v141;
      v169 = 23.0;
      v170 = 10.0;
    }

    else
    {
      if (v162 == 9)
      {
        v168 = v151 == v154;
      }

      else
      {
        v168 = v157 == v160;
      }

      v169 = 23.0;
      v170 = 8.0;
    }

    if (v168)
    {
      v167 = v170;
    }

    else
    {
      v167 = v169;
    }

    v164 = v190;
    v163 = v191;
    v165 = v189;
    v166 = v199;
  }

  else
  {
    v164 = v190;
    v163 = v191;
    v165 = v189;
    v166 = v199;
    v167 = v148;
    if (v162 != 5 && v162 != 6)
    {
      if (v186 == v184)
      {
        v167 = 8.0;
      }

      else
      {
        v167 = 23.0;
      }
    }
  }

  v171 = [v14 mainScreen];
  [v171 scale];
  v173 = v172;

  v174 = [v14 mainScreen];
  [v174 nativeScale];
  v176 = v175;

  if (v173 != v176)
  {
    v177 = [v14 mainScreen];
    [v177 scale];
    v179 = v178;

    v180 = [v14 mainScreen];
    [v180 nativeScale];
    v182 = v181;

    v167 = v167 * (v179 / v182 * 0.95);
  }

  *a8 = v163;
  *(a8 + 8) = v164;
  *(a8 + 16) = v165;
  *(a8 + 24) = v166;
  *(a8 + 32) = v167;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = 0;
  *(a8 + 64) = a1;
  *(a8 + 72) = a2;
  *(a8 + 80) = a3;
  *(a8 + 88) = a4;
  *(a8 + 96) = a5 & 1;
}

uint64_t sub_20C679758()
{

  return swift_deallocObject();
}

uint64_t sub_20C6797E4()
{
  outlined consume of SessionControl(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_20C67983C()
{

  return swift_deallocObject();
}

uint64_t sub_20C6798AC()
{
  outlined consume of SessionControl(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_20C679A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C679B14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C679C2C()
{
  v1 = type metadata accessor for AppleExertionScale();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_20C679CD0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C679D30()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20C679D68()
{

  return swift_deallocObject();
}

uint64_t sub_20C679DF4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G14AnimationStyleOGMd);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutAnimationStyle> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_20C679EA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6HStackVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGG07WorkoutB015MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeV0VyAA16RoundedRectangleVGG_Qo_AA0i10AttachmentV0VGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C679F10()
{
  MEMORY[0x20F30E160](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C679F60()
{

  return swift_deallocObject();
}

uint64_t sub_20C679FAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_isExternalSessionActive;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20C67A004(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_isExternalSessionActive;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_20C67A058@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLExternalSeymourSessionStatusProvider_observers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20C67A114()
{

  return swift_deallocObject();
}

uint64_t sub_20C67A1EC()
{

  return swift_deallocObject();
}

uint64_t sub_20C67A24C()
{

  return swift_deallocObject();
}

uint64_t sub_20C67A290()
{

  return swift_deallocObject();
}

uint64_t sub_20C67A2F0()
{

  return swift_deallocObject();
}

uint64_t sub_20C67A388()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGSgMd) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for ActivityUIDismissalPolicy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGMd);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2, 1, v7))
  {
    (*(v8 + 8))(v0 + v2, v7);
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_20C67A548()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A7ContentVy11WorkoutCore24MirroredWidgetAttributesV0C5StateVGMd);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit18AlertConfigurationVSgMd) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v7 = type metadata accessor for AlertConfiguration();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_20C67A704()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C67A754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA06_ShapeE0VyAA16RoundedRectangleVAA5ColorVG_Qo_AeFEAGyQrSbFQOyAIyAA017ContainerRelativeJ0VAMG_Qo_GMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67A7E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C67A864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20C67A92C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_20C67A9F0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  SafetyMonitorManager.mostLikelyReceiverHandle.setter(v1);
}

uint64_t sub_20C67AA20()
{
  MEMORY[0x20F30E160](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C67AA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C67AB14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C67ABC4()
{
  v1 = (type metadata accessor for SlidingGradientText() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for LayoutDirection();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C67ACF4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_20C67ADDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAA15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVG_SSAA05TupleC0VyAA0S0VyAA4TextVG_A0_tGA_Qo_SgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67AE4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actions7messageQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAA15ModifiedContentVy07WorkoutB026SessionExtraControlsButtonVAA31AccessibilityAttachmentModifierVG_SSAA05TupleC0VyAA0S0VyAA4TextVG_A0_tGA_Qo_SgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C67AEE8()
{
  v1 = type metadata accessor for PredictedActivityPickerItemRow();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C67B020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA012_ConditionalD0Vy07WorkoutB0023AlignedLeadingAccessorydE0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA17_FlipForRTLEffectVGSgAA6VStackVyAA05TupleE0VyAA4TextV_A7_tGGGA3_yA5_yACyACyACyArTyAA4FontVSgGGAXGA_GSg_ACyAA6SpacerVAA12_FrameLayoutVGA7_A7_tGGGG_Qo_AA0i10AttachmentV0VGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C67B088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C67B150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C67B228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA14GeometryReaderVyAEyAEyAEyAA10_ShapeViewVyAA16RoundedRectangleVAA8MaterialVGAA12_FrameLayoutVGAA08_PaddingO0VGACyAA05TupleJ0VyAEyAEyAEyAEyAEyAEy07WorkoutB019SlidingGradientTextVASGASGASGAA14_OpacityEffectVGAA022_EnvironmentKeyWritingD0Vy12CoreGraphics7CGFloatVGGA5_ySiSgGG_AA0J0PAAE7gesture_9includingQrqd___AA11GestureMaskVtAA7GestureRd__lFQOyAEyAEyAEyAEyAA6CircleVAPGAA016_ForegroundStyleD0VyAA5ColorVGGACyAA5GroupVyAA012_ConditionalF0VyAA5ImageVA35_GGGGAA09_PositionO0VG_AA13_EndedGestureVyAA15_ChangedGestureVyAA11DragGestureVGGQo_tGGGGAPGA5_yAA4FontVSgGGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67B44C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RacePosition();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20C67B4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RacePosition();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20C67B528()
{
  v1 = *(type metadata accessor for RouteStatusView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for RacePosition();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_20C67B764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C67B830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C67B95C()
{

  return swift_deallocObject();
}

uint64_t sub_20C67B9B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAA6ToggleVyAEG07WorkoutB017HeaderHyphenationVG_AIyAeA21_TraitWritingModifierVyAA017ListRowBackgroundM3KeyVGGtGAA05EmptyF0VGMd);
  lazy protocol witness table accessor for type Section<Text, TupleView<(ModifiedContent<Toggle<Text>, HeaderHyphenation>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView> and conformance <> Section<A, B, C>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C67BA2C()
{

  return swift_deallocObject();
}

uint64_t sub_20C67BA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA4FontV7ContextVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_20C67BB50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA4FontV7ContextVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_20C67BC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C67BD00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C67BDB0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAmA6ButtonVyAA6HStackVyAA05TupleG0VyAA4TextV_ATyAA6SpacerV_AA5ImageVtGSgtGGGGAIGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_Md);
  lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(&lazy protocol witness table cache variable for type List<Never, Section<EmptyView, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA7SectionVyAA9EmptyViewVAA7ForEachVySaySo12NSUnitLengthCGAmA6ButtonVyAA6HStackVyAA05TupleG0VyAA4TextV_ATyAA6SpacerV_AA5ImageVtGSgtGGGGAIGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd);
  lazy protocol witness table accessor for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C67BEE8()
{
  v1 = type metadata accessor for LapLengthUnitPicker();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C67C054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MetricPlatterType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C67C100(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MetricPlatterType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C67C1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C67C290(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C67C348()
{
  v1 = *(type metadata accessor for AnimatingOpenGoalTimeRing() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_20C67C444()
{

  return swift_deallocObject();
}

uint64_t sub_20C67C488()
{

  return swift_deallocObject();
}

uint64_t sub_20C67C4E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA0D0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA4TextV_Qo_GSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67C55C()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type IntervalFontAppearanceModifier and conformance IntervalFontAppearanceModifier();
  return swift_getWitnessTable();
}

uint64_t sub_20C67C5D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyACyAA01_e9Modifier_D0Vy07WorkoutB0022IntervalFontAppearanceL033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingL0VyAA0O0VSgGG_Qo_ARyAIGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67C640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyACyAA01_e9Modifier_D0Vy07WorkoutB0022IntervalFontAppearanceL033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingL0VyAA0O0VSgGG_Qo_ARyAIGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67C6B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17maximumLineHeightyQr12CoreGraphics7CGFloatVFQOyACyAA01_e9Modifier_D0Vy07WorkoutB0022IntervalFontAppearanceL033_7EA5602274C280F3741325330328F2A2LLVGAA022_EnvironmentKeyWritingL0VyAA0O0VSgGG_Qo_ARyAIGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C67C71C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA6ZStackVyAA05TupleE0VyAA5ImageV_07WorkoutB00O6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVG_Qo_AA0I18AttachmentModifierVGAA01_d9ShapeKindW0VyAA6CircleVGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67C78C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA6ZStackVyAA05TupleE0VyAA5ImageV_07WorkoutB00O6FigureVtGGAA17_FlipForRTLEffectVGAA13_OffsetEffectVG_Qo_AA0I18AttachmentModifierVGAA01_d9ShapeKindW0VyAA6CircleVGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C67C824(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonH0Rd__lFQOyAA5GroupVyAA05TupleF0VyAA012_ConditionalD0Vy07WorkoutB0025DisambiguateConfigurationF0VAP010AddToWatchJ0VGSg_AA0J0VyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0T9AlignmentOGGAA16_FlexFrameLayoutVGA0_yAA4FontVSgGGGSgtGG_AA017BorderedProminentjH0VQo_A0_yAA11ControlSizeOGGA0_yAA5ColorVSgGGA0_yAA08AnyShapeH0VSgGGA11_GAA01_uv9TransformX0VySbGGSgGAA14_PaddingLayoutVGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C67C8C4()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for WorkoutConfigurationViewIOS() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  v4 = v2[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C67CA78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA15ModifiedContentVyAEyAA6VStackVyAA9TupleViewVyAEyAEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAA010_FixedSizeR0VG_AEyAEyAyA08_PaddingR0VGA2_GSgAEyAEyAA5ImageVAA01_qR0VGAA023AccessibilityAttachmentM0VGSgtGGA2_GA2_GSgAA05EmptyH0VA21_GMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAJyAA0lm6InsetsiO0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGSgMd);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for List();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAA6VStackVyAJyAJyAJyAJyAJyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA5GroupVyAA05TupleC0VyAA012_ConditionalJ0Vy07WorkoutB0025DisambiguateConfigurationC0VAU010AddToWatchO0VGSg_AA0O0VyAJyAJyAJyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0Y9AlignmentOGGAA16_FlexFrameLayoutVGA5_yAA4FontVSgGGGSgtGG_AA017BorderedProminentoM0VQo_A5_yAA07ControlF0OGGA5_yAA5ColorVSgGGA5_yAA08AnyShapeM0VSgGGA16_GAA01_Z20KeyTransformModifierVySbGGSgGAA14_PaddingLayoutVG_SNyAFGQo_Md);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI26_PreferenceWritingModifierVyAA23PreferredColorSchemeKeyVGMd);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<PreferredColorSchemeKey> and conformance _PreferenceWritingModifier<A>, &_s7SwiftUI26_PreferenceWritingModifierVyAA23PreferredColorSchemeKeyVGMd);
  return swift_getWitnessTable();
}

uint64_t sub_20C67CD50()
{

  return swift_deallocObject();
}

uint64_t sub_20C67CDE8()
{

  return swift_deallocObject();
}

uint64_t sub_20C67CE78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA6ButtonVyAA4TextVG07WorkoutB0012PinnedBottomJ13ModifierPhoneVG_Qo_AA024_EnvironmentKeyTransformO0VySbGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67CEE8@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutStep.goal.getter();
  *a1 = result;
  return result;
}

uint64_t sub_20C67CF68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA6VStackVyAA05TupleE0VyACyACyAA6PickerVyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AyA6SpacerVACyAA6ButtonVyACyAyA16_FlexFrameLayoutVGG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGAA017_AppearanceActionW0VG_Qo_A2_yAA08AnyShapeZ0VSgGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67CFD8()
{

  return swift_deallocObject();
}

uint64_t sub_20C67D020()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA6VStackVyAA05TupleE0VyACyACyAA6PickerVyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleW0VyAA09TintShapeZ0VGG_AyA6SpacerVACyAA6ButtonVyACyAyA16_FlexFrameLayoutVGG07WorkoutB0018PinnedBottomButtonW5PhoneVGtGGAA017_AppearanceActionW0VG_Qo_A2_yAA08AnyShapeZ0VSgGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAKyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA5ImageVG_AA08BorderedoM0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeM0VSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyA1_A3_yAA5ColorVSgGGGQo_SgtGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<TintShapeStyle>>, Text, Spacer, ModifiedContent<Button<ModifiedContent<Text, _FlexFrameLayout>>, PinnedBottomButtonModifierPhone>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<((<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?, (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAKyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyAA5ImageVG_AA08BorderedoM0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeM0VSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyA1_A3_yAA5ColorVSgGGGQo_SgtGMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C67D0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_20C67D1B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C67D288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAA6ButtonVyAA07DefaultJ5LabelVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_SgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67D31C()
{
  v1 = type metadata accessor for IntervalStepSelectionView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
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

uint64_t sub_20C67D490()
{
  v1 = type metadata accessor for IntervalStepSelectionView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
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

uint64_t sub_20C67D63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StepType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_20C67D6FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StepType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C67D7B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA06ScrollC0VyAA9LazyVGridVyAA05TupleC0VyAA15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAQ28ConfigurationNavigationModelCSgGGSg_ASSgA0_A0_tGGG_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10ScrollViewVyAA9LazyVGridVyAA05TupleD0VyAA15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAJ28ConfigurationNavigationModelCSgGGSg_ALSgA2UtGGGMd);
  lazy protocol witness table accessor for type LazyVGrid<TupleView<(ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?, IntervalStepGoalButton?, IntervalStepGoalButton?, IntervalStepGoalButton?)>> and conformance LazyVGrid<A>(&lazy protocol witness table cache variable for type ScrollView<LazyVGrid<TupleView<(ModifiedContent<IntervalStepGoalButton, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>?, IntervalStepGoalButton?, IntervalStepGoalButton?, IntervalStepGoalButton?)>>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA9LazyVGridVyAA05TupleD0VyAA15ModifiedContentVy07WorkoutB022IntervalStepGoalButtonVAA30_EnvironmentKeyWritingModifierVyAJ28ConfigurationNavigationModelCSgGGSg_ALSgA2UtGGGMd);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C67D8B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA08ModifiedD0VyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAPyAA4FontVSgGG_s19PartialRangeThroughVyAHGQo_AeAEAFyQrqd__SXRd__AhJRSlFQOyALyALyAA4TextVATGAYG_A1_Qo_GMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67D920(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA08ModifiedD0VyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAPyAA4FontVSgGG_s19PartialRangeThroughVyAHGQo_AeAEAFyQrqd__SXRd__AhJRSlFQOyALyALyAA4TextVATGAYG_A1_Qo_GMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C67D98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StepType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_20C67DA4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StepType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C67DB18()
{
  v1 = (type metadata accessor for IntervalStepGoalButton() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = type metadata accessor for StepType();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_20C67DC48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6ButtonVyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalF5StyleVGAKyAA08AnyShapeO0VSgGGAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAEyAA14NavigationLinkVyApEyAR012IntervalStepn5ValueR0VAKyAR013ConfigurationW5ModelCSgGGGATGAYG_A9_17BlockPresentationOSgQo_GMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67DCB8()
{
  v1 = (type metadata accessor for IntervalStepGoalButton() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = type metadata accessor for StepType();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_20C67DE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D15MediaSuggestionVSgGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C67DEBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D15MediaSuggestionVSgGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C67DFA8()
{

  return swift_deallocObject();
}

uint64_t sub_20C67DFF8()
{

  return swift_deallocObject();
}

uint64_t sub_20C67E06C()
{

  return swift_deallocObject();
}

uint64_t sub_20C67E138()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_ClipEffectVy07WorkoutB013RoundedCornerVGMd);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _ClipEffect<RoundedCorner> and conformance _ClipEffect<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedCorner> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVy07WorkoutB013RoundedCornerVGMd);
  return swift_getWitnessTable();
}

uint64_t sub_20C67E1EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA06_ShapeE0VyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGG_Qo_AA0i10AttachmentT0VGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C67E254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA06_ShapeE0VyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGG_Qo_AA0i10AttachmentT0VGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67E2D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C67E368()
{

  return swift_deallocObject();
}

uint64_t sub_20C67E404@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

__n128 sub_20C67E474@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_coordinate;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_20C67E4CC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_coordinate);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_20C67E540@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_20C67E5A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C67E6E4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_20C67E828()
{

  return swift_deallocObject();
}

uint64_t sub_20C67E860()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20C67E898()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (v4 + ((((((*(v2 + 64) + 7 + v5) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4;
  v3(v0 + v5, v1);

  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_20C67E9EC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_20C67EAC0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v2 + 64) + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_20C67EC14()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C67EC5C()
{

  return swift_deallocObject();
}

uint64_t sub_20C67EC9C()
{

  return swift_deallocObject();
}

uint64_t sub_20C67ECDC()
{

  return swift_deallocObject();
}

uint64_t sub_20C67ED24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA6HStackVyAA9TupleViewVyACyAoA12_FrameLayoutVGSg_AA7ForEachVySnySiGSiAGyAGyAYyAZSiACyAiKyAA013_OpacityShapeI0VyAA14LinearGradientVGGGGAVGAGyA5_AOGGGtGGGGAUGAA13_OffsetEffectVGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>?, ForEach<Range<Int>, Int, _ConditionalContent<_ConditionalContent<ForEach<Range<Int>, Int, ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>>, ModifiedContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>, _FrameLayout>>, _ConditionalContent<ModifiedContent<Rectangle, _ForegroundStyleModifier<_OpacityShapeStyle<LinearGradient>>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<Color>>>>>)>>>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C67ED88()
{

  return swift_deallocObject();
}

uint64_t sub_20C67EDD8()
{

  return swift_deallocObject();
}

uint64_t sub_20C67EE1C(uint64_t a1, uint64_t a2)
{
  DayEntry = type metadata accessor for TrainingLoadDayEntry();
  v5 = *(*(DayEntry - 8) + 48);

  return v5(a1, a2, DayEntry);
}

uint64_t sub_20C67EE88(uint64_t a1, uint64_t a2)
{
  DayEntry = type metadata accessor for TrainingLoadDayEntry();
  v5 = *(*(DayEntry - 8) + 56);

  return v5(a1, a2, a2, DayEntry);
}

uint64_t sub_20C67EF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DayEntry = type metadata accessor for TrainingLoadDayEntry();
  v7 = *(DayEntry - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = DayEntry;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA16RedactionReasonsVGMd);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_20C67F07C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  DayEntry = type metadata accessor for TrainingLoadDayEntry();
  v9 = *(DayEntry - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = DayEntry;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA16RedactionReasonsVGMd);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_20C67F1E0()
{
  type metadata accessor for TrainingLoadDayWidgetSystemSmallContentView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize(&lazy protocol witness table cache variable for type TrainingLoadDayWidgetSystemSmallContentView and conformance TrainingLoadDayWidgetSystemSmallContentView, type metadata accessor for TrainingLoadDayWidgetSystemSmallContentView);
  lazy protocol witness table accessor for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C67F2D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontDesignyQrAA4FontV0G0OSgFQOyACyACyACyAA6VStackVyAA05TupleE0VyAA4TextV_AQtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingN0VyAHSgGGA_y12CoreGraphics7CGFloatVGG_Qo_AA16_FlexFrameLayoutVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67F348()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE10unredactedQryFQOyAcAE19containerBackground3for9alignment7contentQrAA09ContainerF9PlacementV_AA9AlignmentVqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyANy07WorkoutB0015TrainingLoadDayC0VAA16_FlexFrameLayoutVG_AA6SpacerVANyAcAE10fontDesignyQrAA4FontV0Z0OSgFQOyANyANyANyAPyARyAA4TextV_A6_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA1_SgGGA16_y12CoreGraphics7CGFloatVGG_Qo_AWGtGGAWG_A12_Qo__Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19containerBackground3for9alignment7contentQrAA09ContainerE9PlacementV_AA9AlignmentVqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAMy07WorkoutB0015TrainingLoadDayC0VAA16_FlexFrameLayoutVG_AA6SpacerVAMyAcAE10fontDesignyQrAA4FontV0Y0OSgFQOyAMyAMyAMyAOyAQyAA4TextV_A5_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA30_EnvironmentKeyWritingModifierVyA0_SgGGA15_y12CoreGraphics7CGFloatVGG_Qo_AVGtGGAVG_A11_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACy07WorkoutB0015TrainingLoadDayG0VAA16_FlexFrameLayoutVG_AA6SpacerVACyAA0G0PAAE10fontDesignyQrAA4FontV0Q0OSgFQOyACyACyACyAEyAGyAA4TextV_AYtGGAA24_ForegroundStyleModifierVyAA5ColorVGGAA022_EnvironmentKeyWritingV0VyATSgGGA7_y12CoreGraphics7CGFloatVGG_Qo_ALGtGGALGMd);
  lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<TrainingLoadDayView, _FlexFrameLayout>, Spacer, ModifiedContent<<<opaque return type of View.fontDesign(_:)>>.0, _FlexFrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C67F440()
{
  outlined consume of Environment<Bool>.Content(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_20C67F4C0()
{

  return swift_deallocObject();
}

uint64_t sub_20C67F53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AlertConfigurationContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C67F5E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AlertConfigurationContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C67F68C()
{
  v1 = (type metadata accessor for AlertsButton() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = type metadata accessor for AlertConfigurationContext();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[11];

  v6 = v2 + v1[12];

  return swift_deallocObject();
}

uint64_t sub_20C67F840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MetricPlatterType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C67F8EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MetricPlatterType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C67F9B4()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t _s9WorkoutUI0A13CountdownStepOIegn_SgWOe_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C67FA38()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA6ZStackVyAGy07WorkoutB0015MedallionCircleG0V_ACyAJ0I6FigureVAA31AccessibilityAttachmentModifierVGtGGAA013_TraitWritingO0VyAA06ZIndexP3KeyVGGAA17_FlipForRTLEffectVG_AA012_ConditionalD0VyAGyACyACyAlXGAPGSg_ALSgtGAIyAGyACyACyAA7CapsuleVAA012_EnvironmentsqO0VyAA5ColorVSgGGAA12_FrameLayoutVG_ACyACyACyACyAA4TextVAA14_PaddingLayoutVGA23_GAUyAA014LayoutPrioritypS0VGGAPGtGGGtGGA23_GMd);
  lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ZStack<TupleView<(MedallionCircleView, ModifiedContent<WorkoutFigure, AccessibilityAttachmentModifier>)>>, _TraitWritingModifier<ZIndexTraitKey>>, _FlipForRTLEffect>, _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<MedallionCircleView, _TraitWritingModifier<ZIndexTraitKey>>, AccessibilityAttachmentModifier>?, MedallionCircleView?)>, ZStack<TupleView<(ModifiedContent<ModifiedContent<Capsule, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<LayoutPriorityTraitKey>>, AccessibilityAttachmentModifier>)>>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C67FAD0()
{

  return swift_deallocObject();
}

uint64_t sub_20C67FB08()
{

  return swift_deallocObject();
}

uint64_t sub_20C67FBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA06ScrollG0VyAGy07WorkoutB026TrainingLoadOnboardingCoreV_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGAA14_PaddingLayoutVGAVGAA0G0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyACyACyACyACyACyACyACyAA6ToggleVyANGAVGAVGAPyAA4FontVSgGGAA016_BackgroundStyleR0VyAA5ColorVGGAA11_ClipEffectVyAA7CapsuleVGGAA01_d9ShapeKindR0VyA21_GGAVG_SbQo_ACyACyACyAnVGASGAVGtGG_AA6SpacerVtGGAA06_InsetgR0VyAJ0jkL6ButtonVGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C67FC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C67FCE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C67FDB0()
{

  return swift_deallocObject();
}

uint64_t sub_20C67FE04()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19simultaneousGesture_9includingQrqd___AA0E4MaskVtAA0E0Rd__lFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA15ModifiedContentVyANyANyAA9RectangleVAA16_FlexFrameLayoutVGAA011_ForegroundI8ModifierVyAA5ColorVGGAA01_m5ShapeS0VyAPGGG_AA05PlainkI0VQo__AA08_ChangedE0VyAA04DragE0VGQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAA9RectangleVAA16_FlexFrameLayoutVGAA011_ForegroundE8ModifierVyAA5ColorVGGAA01_i5ShapeO0VyAKGGG_AA05PlaingE0VQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA9RectangleVAA16_FlexFrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA01_e5ShapeL0VyAGGGGMd);
  type metadata accessor for PlainButtonStyle();
  _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_1(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Rectangle, _FlexFrameLayout>, _ForegroundStyleModifier<Color>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA9RectangleVAA16_FlexFrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA01_e5ShapeL0VyAGGGGMd);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_0(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeConformance2();
  _s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGACyxGAA04ViewE0AAWlTm_1(&lazy protocol witness table cache variable for type _ChangedGesture<DragGesture> and conformance _ChangedGesture<A>, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C67FFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C6800AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C6801B4()
{
  v1 = type metadata accessor for LocationDisambiguation();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  if (*(v3 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C680310()
{
  v1 = type metadata accessor for LocationDisambiguation();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
  }

  if (*(v4 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C68048C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StepType();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20C6804F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StepType();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20C6805C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore13MetricPlatterVGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

void *sub_20C680684(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore13MetricPlatterVGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C68073C()
{
  v1 = (type metadata accessor for MetricPlattersView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  outlined consume of Environment<WorkoutAlertPresenter?>.Content(*(v4 + 72), *(v4 + 80));

  v5 = v4 + v1[17];
  v6 = type metadata accessor for MetricPlatter();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore13MetricPlatterVGMd);

  return swift_deallocObject();
}

uint64_t sub_20C6808BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAA08ModifiedD0VyAJyAJyAJy07WorkoutB00l12NotificationE0VAA30_EnvironmentKeyWritingModifierVyAK0lE5StyleOGGAA01_d5ShapeQ0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitpQ0VyAA010TransitionwO0VGG_Qo_AeAE0f16DelayedLongPressH015minimumDuration15maximumDistanceAH0F15PressingChangedQrSd_12CoreGraphics7CGFloatVyycySbcSgtFQOyAJyAeAE0F6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEA16_A17_A18__Qrqd___SbyyctSQRd__lFQOyAA6ZStackVyAJyAJyAeAE03tabeR0yQrqd__AA03TabeR0Rd__lFQOyAA03TabE0Vy0L4Core13MetricPlatterVAA7ForEachVySayA27_GSSAJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyACyACyACyAJyAK020MirrorStackedMetricsE0VA_GA35_GACyA35_AJyAK021MirrorGraphicsMetricsE0VA_GGGACyACyA39_AJyAK026MirrorActivityRingsPlatterE0VA_GGACyAJyAJyAK024MirrorPacerMetricPlatterE0VA_GA_GAJyAK34MirrorHeartRateZonesMetricsPlatterVA_GGGGACyACyACyAJyAK024MirrorSpeedometerPlatterE0VA_GAJyAK30MirrorPowerZonesMetricsPlatterVA_GGACyAJyAK022MirrorIntervalsPlatterE0VA_GAJyAK028MirrorIntervalsSecondPlatterE0VA_GGGACyACyAJyAK023MirrorRaceMetricPlatterE0VA_GAJyAK30MirrorMultiSportMetricsPlatterVA_GGAA4TextVGGG_A27_Qo_A_GGG_AA07PageTabeR0VQo_A_GA5_GG_A27_Qo__A27_Qo_AA017_AppearanceActionQ0VG_Qo_GMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C68093C()
{
  v1 = (type metadata accessor for MetricPlattersView() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  outlined consume of Environment<WorkoutAlertPresenter?>.Content(*(v0 + v2 + 72), *(v0 + v2 + 80));

  v3 = v0 + v2 + v1[17];
  v4 = type metadata accessor for MetricPlatter();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore13MetricPlatterVGMd);

  return swift_deallocObject();
}

uint64_t sub_20C680AB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE03tabE5StyleyQrqd__AA03TabeG0Rd__lFQOyAA0hE0Vy11WorkoutCore13MetricPlatterVAA7ForEachVySayALGSSACyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA012_ConditionalD0VyASyASyASyACy0iB0020MirrorStackedMetricsE0VAA14_PaddingLayoutVGAYGASyAyCyAT0s8GraphicsuE0VAXGGGASyASyA1_ACyAT0s13ActivityRingslE0VAXGGASyACyACyAT0s5PacerklE0VAXGAXGACyAT0s14HeartRateZonesuL0VAXGGGGASyASyASyACyAT0s11SpeedometerlE0VAXGACyAT0s10PowerZonesuL0VAXGGASyACyAT0s9IntervalslE0VAXGACyAT0s15IntervalsSecondlE0VAXGGGASyASyACyAT0s4RaceklE0VAXGACyAT0s10MultiSportuL0VAXGGAA4TextVGGG_ALQo_AXGGG_AA04PageheG0VQo_AXGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C680B28()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0VyAA0G0PAAE12onTapGesture5count7performQrSi_yyctFQOyACyACyACyACy07WorkoutB00n12NotificationG0VAA30_EnvironmentKeyWritingModifierVyAO0nG5StyleOGGAA01_d5ShapeS0VyAA9RectangleVGGAA14_PaddingLayoutVGAA06_TraitrS0VyAA010TransitionyQ0VGG_Qo_AkAE0i16DelayedLongPressK015minimumDuration15maximumDistanceAN0I15PressingChangedQrSd_12CoreGraphics7CGFloatVyycySbcSgtFQOyACyAkAE0I6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAkAEA20_A21_A22__Qrqd___SbyyctSQRd__lFQOyAEyACyACyAkAE03tabgT0yQrqd__AA03TabgT0Rd__lFQOyAA03TabG0Vy0N4Core13MetricPlatterVAA7ForEachVySayA29_GSSACyAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAIyAIyAIyACyAO020MirrorStackedMetricsG0VA3_GA37_GAIyA37_ACyAO021MirrorGraphicsMetricsG0VA3_GGGAIyAIyA41_ACyAO026MirrorActivityRingsPlatterG0VA3_GGAIyACyACyAO024MirrorPacerMetricPlatterG0VA3_GA3_GACyAO34MirrorHeartRateZonesMetricsPlatterVA3_GGGGAIyAIyAIyACyAO024MirrorSpeedometerPlatterG0VA3_GACyAO30MirrorPowerZonesMetricsPlatterVA3_GGAIyACyAO022MirrorIntervalsPlatterG0VA3_GACyAO028MirrorIntervalsSecondPlatterG0VA3_GGGAIyAIyACyAO023MirrorRaceMetricPlatterG0VA3_GACyAO30MirrorMultiSportMetricsPlatterVA3_GGAA4TextVGGG_A29_Qo_A3_GGG_AA07PageTabgT0VQo_A3_GA9_GG_A29_Qo__A29_Qo_AA017_AppearanceActionS0VG_Qo_G_ACyAO0n11BuddyStatusG0VA3_GSgtGGAA010_AnimationS0VyA27_0nO0CSgGGMd);
  type metadata accessor for WorkoutAlertList();
  lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(_ConditionalContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, <<opaque return type of View.onDelayedLongPressGesture(minimumDuration:maximumDistance:perform:onPressingChanged:)>>.0>, ModifiedContent<WorkoutBuddyStatusView, _PaddingLayout>?)>>, _AnimationModifier<WorkoutNotification?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type PlatterPublisher and conformance PlatterPublisher(&lazy protocol witness table cache variable for type WorkoutAlertList and conformance WorkoutAlertList, type metadata accessor for WorkoutAlertList);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C680C08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6CircleVAA12_FrameLayoutVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAA4TextVAIGSgGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQy12CoreGraphics7CGFloatVGGMd);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_BackgroundModifierVyAA16RoundedRectangleVGMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB025MetricDescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
  return swift_getWitnessTable();
}

uint64_t sub_20C680EFC()
{
  v1 = type metadata accessor for WorkoutTimeView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v9 = *(*(v1 - 8) + 64);
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;
  sub_20C6810AC(*(v0 + v2), *(v0 + v2 + 8));
  sub_20C6810AC(*(v6 + 16), *(v6 + 24));
  v7 = *(v1 + 24);
  if (!(*(v4 + 48))(v0 + v2 + v7, 1, v3))
  {
    (*(v4 + 8))(v6 + v7, v3);
  }

  (*(v4 + 8))(v0 + ((v2 + v9 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_20C6810AC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_20C6810C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_20C681190(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C681264()
{

  return swift_deallocObject();
}

uint64_t sub_20C6812C0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_20C68134C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x20F308E30]();
  *a1 = result;
  return result;
}

uint64_t sub_20C6813AC()
{

  return swift_deallocObject();
}

uint64_t sub_20C6813F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20C6814B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C681564()
{
  v1 = (type metadata accessor for IntervalButton() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v2 + v1[7];

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd) + 32);
  v5 = type metadata accessor for NavigationPath();
  (*(*(v5 - 8) + 8))(&v3[v4], v5);

  return swift_deallocObject();
}

uint64_t sub_20C681680(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA6VStackVyACyAA6ButtonVy07WorkoutB004GoalM5LabelVGAN0oM5StyleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeQ0VSgGGAA06_TraittU0VyAA017ListRowBackgroundxS0VGG_Qo_AA0i10AttachmentU0VGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C6816F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA012_ConditionalD0VyAA4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAEAlmNQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAEAlmNQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAE26interactiveDismissDisabledyQrSbFQOyAA06ScrollI0VyAkAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA9LazyVGridVyAA05TupleI0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGA2_AIy07WorkoutB010GoalButtonVSgA6_GGSg_A4_11PacerButtonVSgSgA4_14IntervalButtonVSgSgtGG_Qo_G_Qo__11WorkoutCore24GoalWorkoutConfigurationCA4_15GoalValuePickerVQo__A24_25PacerWorkoutConfigurationCA4_24PacerDistanceValuePickerVQo__A24_28IntervalWorkoutConfigurationCA4_028IntervalWorkoutConfigurationI0VQo_AkAEAlmNQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAEAlmNQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAEAlmNQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyACyACyACyAA4ListVys5NeverOA19_GA4_14ListRowSpacing33_A607961C6E65DD4DD1C2818C5FE69B58LLVGA4_20HideListRowSeparatorA49_LLVGA4_06InlineE8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA07ToolbarD7BuilderV10buildBlockyQrxAAA42_RzlFZQOy_AA11ToolbarItemVyytAA6ButtonVyAA18DefaultButtonLabelVGGQo_Qo__A26_ACyACyA4_024GoalWorkoutConfigurationI0VAA30_EnvironmentKeyWritingModifierVyA4_013ConfigurationE5ModelCSgGGA75_yA24_30WorkoutConfigurationDataSourceCSgGGQo__A31_ACyACyA4_025PacerWorkoutConfigurationI0VA79_GA84_GQo__A36_ACyACyA38_A79_GA84_GQo_GGAA25_AppearanceActionModifierVGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C68175C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for WorkoutConfigurationFilterType();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[12];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14NavigationPathVGMd);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[13];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_20C6818E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for WorkoutConfigurationFilterType();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[12];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14NavigationPathVGMd);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_20C681A74()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA012_ConditionalD0VyAA4ViewPAAE21navigationDestination3for11destinationQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAEAlmNQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAEAlmNQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAE26interactiveDismissDisabledyQrSbFQOyAA06ScrollI0VyAkAE12scenePaddingyQrAA4EdgeO3SetVFQOyAA9LazyVGridVyAA05TupleI0VyAA7ForEachVySaySo18_HKWorkoutGoalTypeVGA2_AIy07WorkoutB010GoalButtonVSgA6_GGSg_A4_11PacerButtonVSgSgA4_14IntervalButtonVSgSgtGG_Qo_G_Qo__11WorkoutCore24GoalWorkoutConfigurationCA4_15GoalValuePickerVQo__A24_25PacerWorkoutConfigurationCA4_24PacerDistanceValuePickerVQo__A24_28IntervalWorkoutConfigurationCA4_028IntervalWorkoutConfigurationI0VQo_AkAEAlmNQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAEAlmNQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAEAlmNQrqd__m_qd_0_qd__ctSHRd__AaJRd_0_r0_lFQOyAkAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyACyACyACyAA4ListVys5NeverOA19_GA4_14ListRowSpacing33_A607961C6E65DD4DD1C2818C5FE69B58LLVGA4_20HideListRowSeparatorA49_LLVGA4_06InlineE8BarTitle33_B86241820663BC1B3220D14BE7395977LLVG_AA07ToolbarD7BuilderV10buildBlockyQrxAAA42_RzlFZQOy_AA11ToolbarItemVyytAA6ButtonVyAA18DefaultButtonLabelVGGQo_Qo__A26_ACyACyA4_024GoalWorkoutConfigurationI0VAA30_EnvironmentKeyWritingModifierVyA4_013ConfigurationE5ModelCSgGGA75_yA24_30WorkoutConfigurationDataSourceCSgGGQo__A31_ACyACyA4_025PacerWorkoutConfigurationI0VA79_GA84_GQo__A36_ACyACyA38_A79_GA84_GQo_GGAA25_AppearanceActionModifierVGMd);
  type metadata accessor for NavigationPath();
  lazy protocol witness table accessor for type ModifiedContent<NavigationStack<NavigationPath, _ConditionalContent<<<opaque return type of View.navigationDestination<A, B>(for:destination:)>>.0, <<opaque return type of View.navigationDestination<A, B>(for:destination:)>>.0>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  _s11WorkoutCore0A23ConfigurationDataSourceCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type NavigationPath and conformance NavigationPath, MEMORY[0x277CDD968]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C681B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C681C08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C681CDC()
{
  v1 = (type metadata accessor for GoalButton() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v2 + v1[12];

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd) + 32);
  v5 = type metadata accessor for NavigationPath();
  (*(*(v5 - 8) + 8))(&v3[v4], v5);

  return swift_deallocObject();
}

uint64_t sub_20C681E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyAA6VStackVyACyAA6ButtonVy07WorkoutB004GoalM5LabelVGAN0oM5StyleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeQ0VSgGGAA06_TraittU0VyAA017ListRowBackgroundxS0VGG_Qo_AA0i10AttachmentU0VGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C681EB0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20C681EEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_20C681F34(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_20C681F80()
{

  return swift_deallocObject();
}

uint64_t sub_20C681FB8()
{

  return swift_deallocObject();
}

uint64_t sub_20C681FF4()
{
  MEMORY[0x20F30E160](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C682058@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WKUIAssetLoadStatusProvider_assetLoadStatus;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20C6820B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WKUIAssetLoadStatusProvider_assetLoadStatus;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_20C682150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA7BindingVyAA16PresentationModeVGGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C68220C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA7BindingVyAA16PresentationModeVGGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C6822BC()
{
  v1 = (type metadata accessor for TimeSplitsPickerView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA16PresentationModeVG_GMd);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();

  if (v2 == 1)
  {

    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA16PresentationModeVGMd) + 32);
    v5 = type metadata accessor for PresentationMode();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_20C682410()
{
  MEMORY[0x20F30E160](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C68245C()
{

  return swift_deallocObject();
}

uint64_t sub_20C6824A8()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C6824E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSeymourSubscriptionProvider_subscriptionStatus;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20C682540(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSeymourSubscriptionProvider_subscriptionStatus;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_20C682594@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSeymourSubscriptionProvider_observers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20C682608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C6826D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C68279C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA14GeometryReaderVyAA15ModifiedContentVyAIyAIyAIyAA6HStackVyAEy07WorkoutB019ExpandedLabelPickerVyAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GSiG_AIyAIyAwA25_AlignmentWritingModifierVGAA023AccessibilityAttachmentW0VGAZtGGAA12_FrameLayoutVGAA015_EnvironmentKeyvW0VyAA4FontVSgGGAA016_ForegroundStyleW0VyAA14TintShapeStyleVGGA11_yAA15LayoutDirectionOGGG_AA6SpacerVAIyAA6ButtonVyAIyAIyAIyAwA18_AspectRatioLayoutVGA11_y12CoreGraphics7CGFloatVGGA11_ySiSgGGGAL018PinnedBottomButtonW5PhoneVGtGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C682830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19ExpandedLabelPickerVy05SwiftB07ForEachVySaySiGSiAD4ViewPADE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAD4TextV_SiQo_GSiGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C6828A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI19ExpandedLabelPickerVy05SwiftB07ForEachVySaySiGSiAD4ViewPADE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAD4TextV_SiQo_GSiGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C682974()
{

  return swift_deallocObject();
}

uint64_t sub_20C6829AC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_20C6829F4()
{

  outlined consume of Environment<WorkoutViewStyle>.Content(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_20C682A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ZoneViewType();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20C682B68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ZoneViewType();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20C682C80()
{
  v1 = type metadata accessor for ZoneView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for LayoutDirection();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  v6 = type metadata accessor for ZoneViewType();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[6]);
  outlined consume of Environment<WorkoutViewStyle>.Content(*(v3 + v1[8]), *(v3 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t sub_20C682DF8()
{
  v1 = type metadata accessor for ZoneView();
  v2 = (*(*(v1 - 1) + 80) + 25) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for LayoutDirection();
    (*(*(v8 - 8) + 8))(v0 + v2, v8);
  }

  else
  {
  }

  v9 = (v2 + v3 + v6) & ~v6;
  v10 = v1[5];
  v11 = type metadata accessor for ZoneViewType();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v7 + v1[6]);
  outlined consume of Environment<WorkoutViewStyle>.Content(*(v7 + v1[8]), *(v7 + v1[8] + 8));
  (*(v5 + 8))(v0 + v9, v4);

  return swift_deallocObject();
}

uint64_t sub_20C683014()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_20C68308C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_20C683114()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGMd);
  type metadata accessor for PlainButtonStyle();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C6831AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C683278(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C683340()
{
  v1 = type metadata accessor for GoalValuePicker();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C6834B8@<X0>(uint64_t *a1@<X8>)
{
  result = GoalWorkoutConfiguration.goal.getter();
  *a1 = result;
  return result;
}

uint64_t sub_20C68351C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C6835E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C6836A8()
{
  v1 = type metadata accessor for MirrorIntervalTimeView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v7 = *(v1 + 28);
  if (!v6(v3 + v7, 1, v4))
  {
    (*(v5 + 8))(v3 + v7, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_20C683824()
{

  return swift_deallocObject();
}

uint64_t sub_20C683860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutMediaSuggestion();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVySdGMd);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20C68395C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WorkoutMediaSuggestion();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVySdGMd);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20C683A94()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C683AE4()
{

  return swift_deallocObject();
}

uint64_t sub_20C683B1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingI0VGAA023AccessibilityAttachmentL0VGSgGMd);
  lazy protocol witness table accessor for type Group<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier>?> and conformance <A> Group<A>(&lazy protocol witness table cache variable for type Group<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier>?> and conformance <A> Group<A>, &_s7SwiftUI5GroupVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingI0VGAA023AccessibilityAttachmentL0VGSgGMd, &_s7SwiftUI5GroupVyAA15ModifiedContentVyAEyAEyAEyAEyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA19_BackgroundModifierVyAA11_ShadowViewVyAA6CircleVGGGAA08_PaddingI0VGAA023AccessibilityAttachmentL0VGSgGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _BackgroundModifier<_ShadowView<Circle>>>, _PaddingLayout>, AccessibilityAttachmentModifier>? and conformance <A> A?);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C683BE0()
{

  return swift_deallocObject();
}

uint64_t sub_20C683C44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOMetricsViewLayout_compressedLayout;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20C683C9C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOMetricsViewLayout_compressedLayout;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void *sub_20C683D1C(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___ringBottomPadding;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

void *sub_20C683D68(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___ringDiameter;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

void *sub_20C683DB4(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___metricsViewBottomPadding;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

void *sub_20C683E00(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___glyphTopPadding;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

void *sub_20C683E4C(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___laneIndicatorSymbolSize;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

void *sub_20C683E98(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___overlayIndicatorLeadingPadding;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

void *sub_20C683EE4(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___WOMetricsViewLayout____lazy_storage___overlayIndicatorTrailingPadding;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_20C683F34@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_20C683F9C()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type DetailViewFontModifier and conformance DetailViewFontModifier();
  return swift_getWitnessTable();
}

uint64_t sub_20C684014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for InferenceClient();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C6840C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for InferenceClient();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C684164()
{
  type metadata accessor for NavigationPath();
  type metadata accessor for NSNotificationCenter.Publisher();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6IDViewVyAA9EmptyViewVSSGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E13DisclaimerRowVAD08ZeroListG6InsetsVGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP6TipKitE03tipE5StyleyQrqd__AF0feI0Rd__lFQOyAF0fE0VyAF03AnyF0VG_07WorkoutB00fg22SafetyCheckInRemindersfI0VQo_AN17ZeroListRowInsetsVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGSiAA15ModifiedContentVyAIyAIyAIy0eB00gH7ViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGANyAJ0H15NavigationModelCSgGGANySo13HKHealthStoreCSgGGANyAD0eh10OccurrenceY0CSgGGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7ForEachVySay11WorkoutCore26StandardActivityPickerItemCGSiACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA6IDViewVyAA6VStackVyAA05TupleM0VyAA6HStackVyAUyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA3_yA1_5ScaleOGGACyACyACyA1_AA18_AspectRatioLayoutVGAA12_FrameLayoutVGAA14_PaddingLayoutVGGGA3_yAA5ColorVSgGGAA16_FlexFrameLayoutVGAA05_FlipE9RTLEffectVGAA0Q18AttachmentModifierVG_AA6SpacerVACyACyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOy0gB0011StartButtonM0V_AA16PlainButtonStyleVQo_AA01_D13ShapeModifierVyAA9RectangleVGGAA01_D17ShapeKindModifierVyAA6CircleVGGSgtGG_ACyACyAA4TextVA3_y0H8Graphics7CGFloatVGGA36_GACyAWyAUyA42_28MediaConfigurationRoomButtonVSg_AkAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOyA42_019VoiceCompanionEntryM0V_AF0G25VoiceAvailabilityProviderCQo_SgACyACyAkAEA40_yQrqd__AAA41_Rd__lFQOyAA6ButtonVyACyACyACyACyACyACyACyA1_A30_GA20_GAA24_BackgroundStyleModifierVyA25_GGA27_GAA11_ClipEffectVyAA16RoundedRectangleVGGA7_GA27_GG_A46_Qo_A36_GA55_yA96_GGtGGA30_GtGGSiGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGA52_GA113_yAA25ListRowBackgroundTraitKeyVGG_Qo_A36_GGA113_yAA16OnDeleteTraitKeyVGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAA011_BackgroundN0VyAA06_ShapeH0VyAA6CircleVAA5ColorVGGGAKtGGGAA06_TraitmN0VyAA07ListRowrvL0VGGAA023AccessibilityAttachmentN0VGMd);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for List();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
  type metadata accessor for ModifiedContent();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd);
  swift_getWitnessTable();
  type metadata accessor for SubscriptionView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore26StandardActivityPickerItemCGMd);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type [StandardActivityPickerItem] and conformance <A> [A]();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo23FIUIWorkoutActivityTypeCSgMd);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type FIUIWorkoutActivityType? and conformance <A> A?();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSbSgMd);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollViewReader();
  _sSo17OS_dispatch_queueCMaTm_0(255, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy07WorkoutB016ActivityTypeRoomV_0I4Core0I25VoiceAvailabilityProviderCQo_AA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGMd);
  swift_getWitnessTable();
  _sSo13HKHealthStoreCAB7Combine16ObservableObject9WorkoutUIWlTm_0(&lazy protocol witness table cache variable for type FIUIWorkoutActivityType and conformance NSObject, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>> and conformance <> ModifiedContent<A, B>();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AddWorkoutList();
  swift_getOpaqueTypeConformance2();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type AddWorkoutList and conformance AddWorkoutList, type metadata accessor for AddWorkoutList);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ManagedConfigurationSourcePickerItem();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB036ManagedConfigurationsUpcomingViewiOSVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGAHyAD28ConfigurationNavigationModelCSgGGAHySo13HKHealthStoreCSgGGAHy0E4Core0eq10OccurrenceU0CSgGGMd);
  swift_getOpaqueTypeConformance2();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance NSObject, MEMORY[0x277D7E6E8]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ManagedConfigurationsUpcomingViewiOS, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<HKHealthStore?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationOccurrenceStore?>> and conformance <> ModifiedContent<A, B>();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ManualWorkoutLoggingView();
  swift_getOpaqueTypeConformance2();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_7(&lazy protocol witness table cache variable for type ManualWorkoutLoggingView and conformance ManualWorkoutLoggingView, type metadata accessor for ManualWorkoutLoggingView);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA6ButtonVyAA08ModifiedE0VyAIyAA5ImageVAA13_OffsetEffectVGAA31AccessibilityAttachmentModifierVGGG_AA0D6SpacerVtGSg_AEyyt07WorkoutB020DeviceConnectionMenuVGtGMd);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<(TupleToolbarContent<(ToolbarItem<(), Button<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, AccessibilityAttachmentModifier>>>, ToolbarSpacer)>?, ToolbarItem<(), DeviceConnectionMenu>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyACyAA0D4ItemVyytAA6ButtonVyAA08ModifiedE0VyAIyAA5ImageVAA13_OffsetEffectVGAA31AccessibilityAttachmentModifierVGGG_AA0D6SpacerVtGSg_AEyyt07WorkoutB020DeviceConnectionMenuVGtGMd);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  return swift_getWitnessTable();
}

uint64_t sub_20C684AC0()
{

  return swift_deallocObject();
}

uint64_t sub_20C684B34()
{

  return swift_deallocObject();
}

uint64_t sub_20C684B7C()
{
  v1 = (type metadata accessor for WorkoutBrowsingViewiOS() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  outlined consume of Environment<WorkoutScrollingCoordinator?>.Content(*(v4 + 64), *(v4 + 72));

  v5 = v1[19];
  v6 = type metadata accessor for InferenceClient();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  outlined consume of StateObject<WorkoutDevicesProvider>.Storage(*(v4 + v1[24]), *(v4 + v1[24] + 8), *(v4 + v1[24] + 16));

  return swift_deallocObject();
}

uint64_t sub_20C684DA4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_20C684E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20C684F3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20C685064()
{
  v1 = type metadata accessor for WorkoutConfigurationFilterPicker();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for WorkoutConfigurationFilterType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = (v3 + v4 + v7) & ~v7;
  v11 = v8 + *(v1 + 20);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);
  v13 = *(v6 + 8);
  v13(v11 + *(v12 + 32), v5);

  v13(v0 + v10, v5);

  return swift_deallocObject();
}

uint64_t sub_20C685268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyACyAA0iE0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA7ForEachVySay11WorkoutCore0S23ConfigurationFilterTypeOGSiAA6IDViewVyAA012_ConditionalD0Vy0sB0023AlignedLeadingAccessorydE0VyACyAA5ImageVAA31AccessibilityAttachmentModifierVGACyAA4TextVA4_17HeaderHyphenationVGGACyACyACyACyACyACyACyAA6ButtonVyAQyASyACyA8_AA12_FrameLayoutVG_A13_tGGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGA34_GA27_yAA4FontVSgGGAA19_BackgroundModifierVyAA06_ShapeE0VyAA7CapsuleVA29_GGGAA01_D17ShapeKindModifierVyA47_GGA10_GGSSGGtGGGA21_G_Qo_AA25_AppearanceActionModifierVGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C685300()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA4TextVALyAA15ModifiedContentVyAA6ButtonVyAA6HStackVyALyAP_ALyAA6SpacerV_AA5ImageVtGSgtGGGAA31AccessibilityAttachmentModifierVG_A6_tGAPG_ARyARyANyAA05EmptyC0VAVyARyARyAA6ToggleVyAPG07WorkoutB017HeaderHyphenationVGA5_GGAPGAA024_EnvironmentKeyTransformU0VySbGGAA14_OpacityEffectVGtGG_SbQo__SbQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA4TextVALyAA15ModifiedContentVyAA6ButtonVyAA6HStackVyALyAP_ALyAA6SpacerV_AA5ImageVtGSgtGGGAA31AccessibilityAttachmentModifierVG_A6_tGAPG_ARyARyANyAA05EmptyC0VAVyARyARyAA6ToggleVyAPG07WorkoutB017HeaderHyphenationVGA5_GGAPGAA024_EnvironmentKeyTransformU0VySbGGAA14_OpacityEffectVGtGG_SbQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAGyAA15ModifiedContentVyAA6ButtonVyAA6HStackVyAGyAK_AGyAA6SpacerV_AA5ImageVtGSgtGGGAA31AccessibilityAttachmentModifierVG_A1_tGAKG_AMyAMyAIyAA05EmptyF0VAQyAMyAMyAA6ToggleVyAKG07WorkoutB017HeaderHyphenationVGA0_GGAKGAA024_EnvironmentKeyTransformQ0VySbGGAA14_OpacityEffectVGtGGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, TupleView<(ModifiedContent<Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>, AccessibilityAttachmentModifier>, ModifiedContent<Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>, AccessibilityAttachmentModifier>)>, Text>, ModifiedContent<ModifiedContent<Section<EmptyView, HStack<ModifiedContent<ModifiedContent<Toggle<Text>, HeaderHyphenation>, AccessibilityAttachmentModifier>>, Text>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<Text, TupleView<(ModifiedContent<Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>, AccessibilityAttachmentModifier>, ModifiedContent<Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>, AccessibilityAttachmentModifier>)>, Text>, ModifiedContent<ModifiedContent<Section<EmptyView, HStack<ModifiedContent<ModifiedContent<Toggle<Text>, HeaderHyphenation>, AccessibilityAttachmentModifier>>, Text>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAGyAA15ModifiedContentVyAA6ButtonVyAA6HStackVyAGyAK_AGyAA6SpacerV_AA5ImageVtGSgtGGGAA31AccessibilityAttachmentModifierVG_A1_tGAKG_AMyAMyAIyAA05EmptyF0VAQyAMyAMyAA6ToggleVyAKG07WorkoutB017HeaderHyphenationVGA0_GGAKGAA024_EnvironmentKeyTransformQ0VySbGGAA14_OpacityEffectVGtGGMd);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C685444@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of MultisportTransitions.automaticallySwitchLegs.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_20C68549C@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of MultisportTransitions.shouldTrackTransitions.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_20C685514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdACyAA0H0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGGGAA16_FlexFrameLayoutVGAA01_uV0VGAUyAA4FontVSgGGAA016_ForegroundStyleR0VyAA09TintShapeY0VGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C68565C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x20F309140]();
  *a1 = result;
  return result;
}

uint64_t sub_20C6856F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI24TrainingLoadDayViewModelVSgMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WidgetKit0A13RenderingModeVSgMd);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_20C685824(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI24TrainingLoadDayViewModelVSgMd);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WidgetKit0A13RenderingModeVSgMd);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20C685948()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type PinnedBottomButtonModifierPhone and conformance PinnedBottomButtonModifierPhone();
  return swift_getWitnessTable();
}

uint64_t sub_20C6859BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB0012PinnedBottomiJ5PhoneVG_AA017BorderedProminentiG0VQo_AA011_ForegroundgJ0VyAA5ColorVGGAA013_TraitWritingJ0VyAA017ListRowBackgroundS3KeyVGGAA012_EnvironmentxtJ0VyAA4FontVSgGGAJ04ZerouV6InsetsVGAJ04HideuV9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGA2_yAA11ControlSizeOGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C685A24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB0012PinnedBottomiJ5PhoneVG_AA017BorderedProminentiG0VQo_AA011_ForegroundgJ0VyAA5ColorVGGAA013_TraitWritingJ0VyAA017ListRowBackgroundS3KeyVGGAA012_EnvironmentxtJ0VyAA4FontVSgGGAJ04ZerouV6InsetsVGAJ04HideuV9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGA2_yAA11ControlSizeOGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Font?>>, ZeroListRowInsets>, HideListRowSeparator>, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C685B18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<HideListRowSeparator> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<HideListRowSeparator> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C685BB4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

id sub_20C685BC4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 catalogWorkoutAppBridge];
  *a2 = result;
  return result;
}

uint64_t sub_20C685C14()
{

  return swift_deallocObject();
}

uint64_t sub_20C685C4C()
{

  return swift_deallocObject();
}

uint64_t sub_20C685C84()
{

  return swift_deallocObject();
}

uint64_t sub_20C685CDC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVyAA15ModifiedContentVyAIyAA6ToggleVyAEG07WorkoutB017HeaderHyphenationVGAA31AccessibilityAttachmentModifierVG_AIyAeA013_TraitWritingO0VyAA017ListRowBackgroundP3KeyVGGtGAA05EmptyF0VGMd);
  lazy protocol witness table accessor for type Section<Text, TupleView<(ModifiedContent<ModifiedContent<Toggle<Text>, HeaderHyphenation>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>)>, EmptyView> and conformance <> Section<A, B, C>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C685D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C685E20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C685EE8()
{
  v1 = type metadata accessor for PacerDurationValuePicker();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C686058@<X0>(uint64_t *a1@<X8>)
{
  result = PacerWorkoutConfiguration.timeGoal.getter();
  *a1 = result;
  return result;
}

uint64_t sub_20C6860B8()
{
  MEMORY[0x20F30E160](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C6860F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C686100@<X0>(void *a1@<X8>)
{
  lazy protocol witness table accessor for type WorkoutAlertPresenterKey and conformance WorkoutAlertPresenterKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_20C68615C()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C6861AC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_20C6861E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C686230()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C686278()
{

  return swift_deallocObject();
}

uint64_t sub_20C6862D8()
{

  return swift_deallocObject();
}

uint64_t sub_20C68631C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyAA0H0VyAA4TextVAA5ImageVG_AA012TitleAndIconhG0VQo_AMGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C6863A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA14NavigationLinkVyAA4TextVACyACyAEyAGyAGy07WorkoutB004Goalo13ConfigurationG0VAP08IntervaloqG0VGAGyAP05PaceroqG0VAP04RaceoqG0VGGSgGAA30_EnvironmentKeyWritingModifierVy0O4Core0oQ10DataSourceCSgGGA3_yAP0qL5ModelCSgGGG_AA05PlainkI0VQo_AOGGAP06Detailg4FontX0VGA3_yAA5ColorVSgGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C68641C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyACyACyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalN5StyleVGAWG_AZ0vN6DetailVtGG_Qo_AA0i10AttachmentS0VGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C68648C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyACyACyAA6ButtonVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB004GoalN5StyleVGAWG_AZ0vN6DetailVtGG_Qo_AA0i10AttachmentS0VGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C68651C()
{

  return swift_deallocObject();
}

uint64_t sub_20C68657C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10ScrollViewVyAA9LazyVGridVyAA05TupleD0VyAA7ForEachVySaySo21NLSessionActivityGoalCGAkA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAGyANyANyAA6ButtonVyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB00lV5StyleVGA0_yAA13AnyShapeStyleVSgGG_A7_0lV6DetailVtGG_Qo_AA0R18AttachmentModifierVGG_ANyApAEAqRQrAT_tFQOyAVyAGyANyA10_A4_G_A17_tGG_Qo_A22_GSgtGGGMd);
  lazy protocol witness table accessor for type LazyVGrid<TupleView<(ForEach<[NLSessionActivityGoal], NLSessionActivityGoal, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?)>> and conformance LazyVGrid<A>(&lazy protocol witness table cache variable for type ScrollView<LazyVGrid<TupleView<(ForEach<[NLSessionActivityGoal], NLSessionActivityGoal, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>?)>>> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA9LazyVGridVyAA05TupleD0VyAA7ForEachVySaySo21NLSessionActivityGoalCGAkA15ModifiedContentVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAGyANyANyAA6ButtonVyANyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG07WorkoutB00lV5StyleVGA0_yAA13AnyShapeStyleVSgGG_A7_0lV6DetailVtGG_Qo_AA0R18AttachmentModifierVGG_ANyApAEAqRQrAT_tFQOyAVyAGyANyA10_A4_G_A17_tGG_Qo_A22_GSgtGGGMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C686628()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA5ImageVSg_AJtGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGANyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image?, Image?)>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C686694(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA16RedactionReasonsVGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_20C686750(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA16RedactionReasonsVGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C686804()
{
  started = type metadata accessor for QuickStartWorkoutView();
  v2 = v0 + ((*(*(started - 8) + 80) + 16) & ~*(*(started - 8) + 80));

  if (*(v2 + 16))
  {
  }

  v3 = *(started + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for RedactionReasons();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C686934()
{
  started = type metadata accessor for QuickStartWorkoutView();
  v2 = v0 + ((*(*(started - 8) + 80) + 16) & ~*(*(started - 8) + 80));

  if (*(v2 + 16))
  {
  }

  v3 = *(started + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for RedactionReasons();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C686A78()
{
  started = type metadata accessor for QuickStartWorkoutView();
  v2 = v0 + ((*(*(started - 8) + 80) + 16) & ~*(*(started - 8) + 80));

  if (*(v2 + 16))
  {
  }

  v3 = *(started + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for RedactionReasons();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C686C08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA016_ForegroundStyleN0VyAA5ColorVGG_Qo_SgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C686C78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP9WidgetKitE16widgetAccentableyQrSbFQOyAA15ModifiedContentVyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA016_ForegroundStyleN0VyAA5ColorVGG_Qo_SgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C686D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C686DE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C686EB4@<X0>(uint64_t *a1@<X8>)
{
  result = PacerWorkoutConfiguration.distanceGoal.getter();
  *a1 = result;
  return result;
}

uint64_t sub_20C686F14(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_20C686FD0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C687080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ZoneViewType();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20C6871B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ZoneViewType();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20C687348@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type WorkoutAnimationStyleKey and conformance WorkoutAnimationStyleKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_20C6873EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeartRateCurrentValueType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 52) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_20C6874BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HeartRateCurrentValueType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 52) + 8) = a2;
  }

  return result;
}

uint64_t sub_20C6875C0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_20C6875DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAA4LinkVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAMy07WorkoutB0010QuickStartl5ImageJ0V_AA6SpacerVAP0mnl7OptionsJ0VtGG_AtP0mnL5LabelVtGGAA14_PaddingLayoutVGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyACyA3_AA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainxV0VQo_GGAA06_FrameT0VGAA011_BackgroundZ0VyAGyA6_9WidgetKitE16widgetAccentableyQrSbFQOyAA01_yJ0VyAA16RoundedRectangleVAA5ColorVG_Qo_A6_A28_EA29_yQrSbFQOyA31_yAA017ContainerRelativeY0VA35_G_Qo_GGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C68764C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAA4LinkVyACyAA6VStackVyAA9TupleViewVyAA6HStackVyAMy07WorkoutB0010QuickStartl5ImageJ0V_AA6SpacerVAP0mnl7OptionsJ0VtGG_AtP0mnL5LabelVtGGAA14_PaddingLayoutVGGAA0J0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonV0Rd__lFQOyAA0X0VyACyA3_AA01_D13ShapeModifierVyAA9RectangleVGGG_AA05PlainxV0VQo_GGAA06_FrameT0VGAA011_BackgroundZ0VyAGyA6_9WidgetKitE16widgetAccentableyQrSbFQOyAA01_yJ0VyAA16RoundedRectangleVAA5ColorVG_Qo_A6_A28_EA29_yQrSbFQOyA31_yAA017ContainerRelativeY0VA35_G_Qo_GGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C6876B8()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C687708()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C68774C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MetricPlatterType();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for WorkoutChartProperties();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20C687870(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MetricPlatterType();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for WorkoutChartProperties();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20C6879C0()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type MetricDetail and conformance MetricDetail();
  return swift_getWitnessTable();
}

uint64_t sub_20C687AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v7 = *(View - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = View;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 32));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_20C687BDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v9 = *(View - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = View;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20C687D04()
{

  return swift_deallocObject();
}

uint64_t sub_20C687D3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAA4TextVSiSgAA7ForEachVySnySiGSiAcAE19highPriorityGesture_9includingQrqd___AA0P4MaskVtAA0P0Rd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAA6VStackVyA_yAL_ALSgtGG_AA6SpacerVAWyAA012_ConditionalT0VyA8_yAWyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressC0VyAA05EmptyC0VA21_GGA22_GSgSgAA16_FixedSizeLayoutVGtGGAA01_T13ShapeModifierVyAA9RectangleVGG_AA06_EndedP0VyAA03TapP0VGQo_GG_AA06InlinejI0VQo__Say19FitnessIntelligence19AudioSynthesisVoiceVGQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextVSiSgAA7ForEachVySnySiGSiAcAE19highPriorityGesture_9includingQrqd___AA0L4MaskVtAA0L0Rd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAA6VStackVyAXyAI_AISgtGG_AA6SpacerVATyAA012_ConditionalP0VyA5_yATyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressC0VyAA05EmptyC0VA18_GGA19_GSgSgAA16_FixedSizeLayoutVGtGGAA01_p5ShapeZ0VyAA9RectangleVGG_AA06_EndedL0VyAA03TapL0VGQo_GG_AA06InlinefE0VQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19FitnessIntelligence19AudioSynthesisVoiceVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA4TextVSiSgAA7ForEachVySnySiGSiAA4ViewPAAE19highPriorityGesture_9includingQrqd___AA0J4MaskVtAA0J0Rd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleG0VyAA6VStackVyAVyAE_AESgtGG_AA6SpacerVARyAA012_ConditionalN0VyA3_yARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressG0VyAA05EmptyG0VA16_GGA17_GSgSgAA16_FixedSizeLayoutVGtGGAA01_n5ShapeX0VyAA9RectangleVGG_AA06_EndedJ0VyAA03TapJ0VGQo_GGMd);
  type metadata accessor for InlinePickerStyle();
  lazy protocol witness table accessor for type HStack<TupleView<(VStack<TupleView<(Text, Text?)>>, Spacer, ModifiedContent<_ConditionalContent<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, ProgressView<EmptyView, EmptyView>>, ProgressView<EmptyView, EmptyView>>??, _FixedSizeLayout>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Picker<Text, Int?, ForEach<Range<Int>, Int, <<opaque return type of View.highPriorityGesture<A>(_:including:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextVSiSgAA7ForEachVySnySiGSiAA4ViewPAAE19highPriorityGesture_9includingQrqd___AA0J4MaskVtAA0J0Rd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleG0VyAA6VStackVyAVyAE_AESgtGG_AA6SpacerVARyAA012_ConditionalN0VyA3_yARyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA08ProgressG0VyAA05EmptyG0VA16_GGA17_GSgSgAA16_FixedSizeLayoutVGtGGAA01_n5ShapeX0VyAA9RectangleVGG_AA06_EndedJ0VyAA03TapJ0VGQo_GGMd);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type [AudioSynthesisVoice] and conformance <A> [A]();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C687EEC()
{

  return swift_deallocObject();
}

uint64_t sub_20C687F30()
{
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_20C68804C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20C688084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DayEntry = type metadata accessor for TrainingLoadDayEntry();
  v7 = *(DayEntry - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, DayEntry);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy9WidgetKit0D6FamilyOGMd);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20C688180(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  DayEntry = type metadata accessor for TrainingLoadDayEntry();
  v9 = *(DayEntry - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, DayEntry);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy9WidgetKit0D6FamilyOGMd);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20C6882B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB036TrainingLoadDayWidgetRectangularViewVAF0ghij11SystemSmallL0VGAHGGMd);
  lazy protocol witness table accessor for type Group<_ConditionalContent<_ConditionalContent<TrainingLoadDayWidgetRectangularView, TrainingLoadDayWidgetSystemSmallView>, TrainingLoadDayWidgetRectangularView>> and conformance <A> Group<A>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C688324()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C688398()
{

  return swift_deallocObject();
}

uint64_t sub_20C6884D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuidedWorkoutPickerItem.ItemType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20C68853C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GuidedWorkoutPickerItem.ItemType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20C6885C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C688638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C6886AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAA4TextV_AOtGG_Qo_AA0I18AttachmentModifierVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C68871C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6VStackVyAA05TupleE0VyAA4TextV_AOtGG_Qo_AA0I18AttachmentModifierVGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C68878C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0VyAA6SpacerV_ACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGG07WorkoutB015BodyHyphenationVGAOtGGG_AA08BorderediG0VQo_AA06_TraitpQ0VyAA017ListRowBackgroundwO0VGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C688804()
{

  return swift_deallocObject();
}

uint64_t sub_20C688854()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA6HStackVyAGyAA4TextV_AGyAA6SpacerV_AMtGSgtGGAA7ForEachVySay11WorkoutCore0M13ConfigurationCGAxA15ModifiedContentVyA_y0mB007ManagedmO3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA4_yA0_0O15NavigationModelCSgGGGAA05EmptyF0VGSg_A19_A19_AIyA17_A17_A_yAMA4_yAM4CaseOSgGGGAIyA17_AA0F0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAM_AA7BindingVySbGAA10VisibilityOqd__yXEtAAA26_Rd__lFQOyA_yA27_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAGyAO_A_yA_yAMA4_yAA0I9AlignmentOGGA0_15BodyHyphenationVGAOtGGG_AA19BorderedButtonStyleVQo_AA06_TraitvW0VyAA0cs15BackgroundTraitU0VGG_A27_AAEA37_yQrqd__AAA38_Rd__lFQOyA40_yA47_G_AA28BorderedProminentButtonStyleVQo_Qo_A17_GtGGMd);
  lazy protocol witness table accessor for type TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<EmptyView,(&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, Section<HStack<TupleView<(Text, TupleView<(Spacer, Text)>?)>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, EmptyView>?, , &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA6HStackVyAGyAA4TextV_AGyAA6SpacerV_AMtGSgtGGAA7ForEachVySay11WorkoutCore0M13ConfigurationCGAxA15ModifiedContentVyA_y0mB007ManagedmO3RowVAA30_EnvironmentKeyWritingModifierVySo21FIUIFormattingManagerCSgGGA4_yA0_0O15NavigationModelCSgGGGAA05EmptyF0VGSg_A19_A19_AIyA17_A17_A_yAMA4_yAM4CaseOSgGGGAIyA17_AA0F0PAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrAM_AA7BindingVySbGAA10VisibilityOqd__yXEtAAA26_Rd__lFQOyA_yA27_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAGyAO_A_yA_yAMA4_yAA0I9AlignmentOGGA0_15BodyHyphenationVGAOtGGG_AA19BorderedButtonStyleVQo_AA06_TraitvW0VyAA0cs15BackgroundTraitU0VGG_A27_AAEA37_yQrqd__AAA38_Rd__lFQOyA40_yA47_G_AA28BorderedProminentButtonStyleVQo_Qo_A17_GtGGMd);
  lazy protocol witness table accessor for type String and conformance String();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C688910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6HStackVyAEyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAKyAMyAMy07WorkoutB0024GoalWorkoutConfigurationE0VA20_028IntervalWorkoutConfigurationE0VGAMyA20_025PacerWorkoutConfigurationE0VA20_024RaceWorkoutConfigurationE0VGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA20_28ConfigurationNavigationModelCSgGGGAA07_HiddenO0VGA_GAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAVA9_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentO0VG_ACyAEyAA4TextV_AGyAGyA73_AQyAO5ScaleOGGA9_GtGGtGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C688980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyACyAA14NavigationLinkVyAA05EmptyG0VACyACyAIyAKyAKy07WorkoutB0024GoalWorkoutConfigurationG0VA18_028IntervalWorkoutConfigurationG0VGAKyA18_025PacerWorkoutConfigurationG0VA18_024RaceWorkoutConfigurationG0VGGSgGAOy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAOyA18_013ConfigurationZ5ModelCSgGGGAA07_HiddenN0VGAYGAA0G0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyATA7_GAA11_ClipEffectVyAA6CircleVGGG_AA16PlainButtonStyleVQo_tGGAA023AccessibilityAttachmentN0VGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C688A08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleF0VyAEyAA6HStackVyAMyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAEyAEyAEyAuA18_AspectRatioLayoutVGAA06_FrameW0VGAA08_PaddingW0VGGGAWyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAEyAEyAA14NavigationLinkVyAA05EmptyF0VAEyAEyAQyASyASy07WorkoutB0024GoalWorkoutConfigurationF0VA26_028IntervalWorkoutConfigurationF0VGASyA26_025PacerWorkoutConfigurationF0VA26_024RaceWorkoutConfigurationF0VGGSgGAWy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAWyA26_28ConfigurationNavigationModelCSgGGGAA07_HiddenS0VGA5_GAgAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAEyAEyA0_A15_GAA11_ClipEffectVyAA6CircleVGGG_AA05PlainC5StyleVQo_tGGAA023AccessibilityAttachmentS0VG_AKyAMyAA4TextV_AEyAEyA75_AWyAU5ScaleOGGA15_GtGGtGG_10Foundation4UUIDVQo_A44_GGMd);
  type metadata accessor for LocationDisambiguation();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, AccessibilityAttachmentModifier>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingM(&lazy protocol witness table cache variable for type Button<ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA6VStackVyAA05TupleF0VyAEyAA6HStackVyAMyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAEyAEyAEyAuA18_AspectRatioLayoutVGAA06_FrameW0VGAA08_PaddingW0VGGGAWyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAEyAEyAA14NavigationLinkVyAA05EmptyF0VAEyAEyAQyASyASy07WorkoutB0024GoalWorkoutConfigurationF0VA26_028IntervalWorkoutConfigurationF0VGASyA26_025PacerWorkoutConfigurationF0VA26_024RaceWorkoutConfigurationF0VGGSgGAWy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAWyA26_28ConfigurationNavigationModelCSgGGGAA07_HiddenS0VGA5_GAgAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAEyAEyA0_A15_GAA11_ClipEffectVyAA6CircleVGGG_AA05PlainC5StyleVQo_tGGAA023AccessibilityAttachmentS0VG_AKyAMyAA4TextV_AEyAEyA75_AWyAU5ScaleOGGA15_GtGGtGG_10Foundation4UUIDVQo_A44_GGMd);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type LocationDisambiguation and conformance LocationDisambiguation, type metadata accessor for LocationDisambiguation);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C688B4C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedM0VyARyARyARyARyARyAnA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGATyAN4CaseOSgGGAA16_FlexFrameLayoutVGATyAA4FontVSgGGATySiSgGGAA06_TraitqR0VyAA0g13RowBackgroundyP0VGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCGA23_ARyARy07WorkoutB0027ManagedWorkoutConfigurationZ0VATySo21FIUIFormattingManagerCSgGGATyA25_28ConfigurationNavigationModelCSgGGGGAA05EmptyC0VG_ALyA41_ARyARyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAJyARyARyAA14NavigationLinkVyA41_ARyARyARyARyA25_024ManagedConfigurationsAllC0VA31_GA36_GATySo13HKHealthStoreCSgGGATyA21_35WorkoutConfigurationOccurrenceStoreCSgGGGAA07_HiddenR0VGAA01_vW0VG_ARyAXA25_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_ATyAA13AnyShapeStyleVSgGGA17_GA41_GtGG_SSQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedJ0VyAOyAOyAOyAOyAOyAkA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAQyAK4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGGAA06_TraitnO0VyAA0c13RowBackgroundvM0VGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCGA20_AOyAOy07WorkoutB0027ManagedWorkoutConfigurationW0VAQySo21FIUIFormattingManagerCSgGGAQyA22_28ConfigurationNavigationModelCSgGGGGAA05EmptyF0VG_AIyA38_AOyAOyAA0F0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAOyAOyAA14NavigationLinkVyA38_AOyAOyAOyAOyA22_024ManagedConfigurationsAllF0VA28_GA33_GAQySo13HKHealthStoreCSgGGAQyA18_35WorkoutConfigurationOccurrenceStoreCSgGGGAA07_HiddenO0VGAA01_sT0VG_AOyAUA22_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AQyAA13AnyShapeStyleVSgGGA14_GA38_GtGGMd);
  lazy protocol witness table accessor for type TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<Text, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, ForEach<[WorkoutConfiguration], WorkoutConfiguration, ModifiedContent<ModifiedContent<ManagedWorkoutConfigurationRow, _EnvironmentKeyWritingModifier<FIUIFormattingManager?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>>, EmptyView>, Section<EmptyView, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, EmptyView>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA19_ConditionalContentVyAA08ModifiedJ0VyAOyAOyAOyAOyAOyAkA30_EnvironmentKeyWritingModifierVyAA0H9AlignmentOGGAQyAK4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGGAA06_TraitnO0VyAA0c13RowBackgroundvM0VGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCGA20_AOyAOy07WorkoutB0027ManagedWorkoutConfigurationW0VAQySo21FIUIFormattingManagerCSgGGAQyA22_28ConfigurationNavigationModelCSgGGGGAA05EmptyF0VG_AIyA38_AOyAOyAA0F0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAOyAOyAA14NavigationLinkVyA38_AOyAOyAOyAOyA22_024ManagedConfigurationsAllF0VA28_GA33_GAQySo13HKHealthStoreCSgGGAQyA18_35WorkoutConfigurationOccurrenceStoreCSgGGGAA07_HiddenO0VGAA01_sT0VG_AOyAUA22_15BodyHyphenationVGtGG_AA28BorderedProminentButtonStyleVQo_AQyAA13AnyShapeStyleVSgGGA14_GA38_GtGGMd);
  lazy protocol witness table accessor for type String and conformance String();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C688C60()
{

  return swift_deallocObject();
}

uint64_t sub_20C688CBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20C688D78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C688F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C688FC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C689084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20C6890FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20C6891C0()
{
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_20C6892FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore18AppleExertionScaleOSgGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C6893C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore18AppleExertionScaleOSgGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C6894B0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedH0VyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA6HStackVyAA05TupleI0VyAHyAA4TextVAA022_EnvironmentKeyWritingN0VyANSgGG_AA6SpacerVAA012_ConditionalH0VyA3_yAHyAA5GroupVyATyAHyAHyAHyAjXyAJ5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AVtGGAOGAHyA5_yATyAHyAHyA9_AXyAA19SymbolRenderingModeVSgGGA14_G_AVtGGAOGGAHyAHyAHyA5_yATyAV_AHyAJA14_GtGGA8_GALyAA017HierarchicalShapeM0VGGAZGGtGGGGMd);
  type metadata accessor for EffortNavigationView();
  lazy protocol witness table accessor for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, _ConditionalContent<_ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier(&lazy protocol witness table cache variable for type Button<AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, HStack<TupleView<(ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, Spacer, _ConditionalContent<_ConditionalContent<ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>, ModifiedContent<Group<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, AccessibilityAttachmentModifier>, Text)>>, _ForegroundStyleModifier<Color>>>, ModifiedContent<ModifiedContent<ModifiedContent<Group<TupleView<(Text, ModifiedContent<Image, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWr, &_s7SwiftUI6ButtonVy07WorkoutB034AlignedLeadingAccessoryContentViewVyAA08ModifiedH0VyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA6HStackVyAA05TupleI0VyAHyAA4TextVAA022_EnvironmentKeyWritingN0VyANSgGG_AA6SpacerVAA012_ConditionalH0VyA3_yAHyAA5GroupVyATyAHyAHyAHyAjXyAJ5ScaleOGGAA17_FlipForRTLEffectVGAA023AccessibilityAttachmentN0VG_AVtGGAOGAHyA5_yATyAHyAHyA9_AXyAA19SymbolRenderingModeVSgGGA14_G_AVtGGAOGGAHyAHyAHyA5_yATyAV_AHyAJA14_GtGGA8_GALyAA017HierarchicalShapeM0VGGAZGGtGGGGMd);
  lazy protocol witness table accessor for type EffortNavigationView and conformance EffortNavigationView(&lazy protocol witness table cache variable for type EffortNavigationView and conformance EffortNavigationView, type metadata accessor for EffortNavigationView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C68959C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DayEntry = type metadata accessor for TrainingLoadDayEntry();
  v7 = *(DayEntry - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = DayEntry;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy9WidgetKit0D13RenderingModeVGMd);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA16RedactionReasonsVGMd);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_20C6896F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  DayEntry = type metadata accessor for TrainingLoadDayEntry();
  v9 = *(DayEntry - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = DayEntry;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy9WidgetKit0D13RenderingModeVGMd);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA16RedactionReasonsVGMd);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_20C689878()
{

  return swift_deallocObject();
}

uint64_t sub_20C6899C8()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type WorkoutAlertFont and conformance WorkoutAlertFont();
  return swift_getWitnessTable();
}

uint64_t sub_20C689A50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0VyACyAA4TextV07WorkoutB017HeaderHyphenationVG_AA6SpacerVACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAA19SymbolRenderingModeVSgGGAYyAA5ColorVSgGGtGGG_AA05PlainiG0VQo_AA011_ForegroundgU0VyA9_GGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C689AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C689B80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D23ConfigurationFilterTypeOGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C689C44()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA6HStackVyAA05TupleE0VyACyAA4TextV07WorkoutB017HeaderHyphenationVG_AA6SpacerVACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAA19SymbolRenderingModeVSgGGAYyAA5ColorVSgGGtGGG_AA05PlainiG0VQo_AA011_ForegroundgU0VyA9_GGMd);
  type metadata accessor for WorkoutConfigurationFilterPicker();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_2(&lazy protocol witness table cache variable for type WorkoutConfigurationFilterPicker and conformance WorkoutConfigurationFilterPicker, type metadata accessor for WorkoutConfigurationFilterPicker);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C689D18()
{

  return swift_deallocObject();
}

uint64_t sub_20C689D68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20C689E24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C689ED4()
{
  v1 = type metadata accessor for IntervalTimeMetricView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v7 = *(v1 + 28);
  if (!v6(v2 + v7, 1, v4))
  {
    (*(v5 + 8))(v2 + v7, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_20C68A060()
{

  return swift_deallocObject();
}

uint64_t sub_20C68A0D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGGMd);
  type metadata accessor for ReorderPicker();
  _s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGGACyxq_GAD0G0AAWlTm_0(&lazy protocol witness table cache variable for type AlignedLeadingAccessoryContentView<ModifiedContent<Image, _ForegroundStyleModifier<TintShapeStyle>>, VStack<TupleView<(Text, Text)>>> and conformance AlignedLeadingAccessoryContentView<A, B>, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGGMd);
  swift_getWitnessTable();
  type metadata accessor for NavigationLink();
  type metadata accessor for Optional();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_20C68A210()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4TextVSgMd);
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVGSg_AItGSgMd);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type TupleView<(Button<Text>?, Button<Text>?)>? and conformance <A> A?();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA06OnMoveC3KeyVGMd);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  _s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD5ImageVAD24_ForegroundStyleModifierVyAD09TintShapeL0VGGAD6VStackVyAD05TupleG0VyAD4TextV_ATtGGGACyxq_GAD0G0AAWlTm_0(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnMoveTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA06OnMoveC3KeyVGMd);
  swift_getWitnessTable();
  type metadata accessor for List();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  return swift_getWitnessTable();
}

uint64_t sub_20C68A59C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WorkoutChartProperties();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySNy10Foundation4DateVGGMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_20C68A6CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for WorkoutChartProperties();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySNy10Foundation4DateVGGMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20C68A800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20C68A878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation4DateVGMd);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20C68A92C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAHSgGGAOyAA5ColorVSgGG_Qo_AA17_FlipForRTLEffectVGAA16_FlexFrameLayoutVGAA14_OpacityEffectVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C68A9C0@<X0>(uint64_t *a1@<X8>)
{
  result = MetricPlatter.metrics.getter();
  v3 = MEMORY[0x277D84F90];
  if (result)
  {
    v3 = result;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_20C68AA44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA14NavigationLinkVyAA4TextVACyAA6VStackVyAA05TupleE0Vy07WorkoutB010TimePickerV_ACyAeAEAFyQrAJFQOyAA6ButtonVyANG_Qo_AS012PinnedBottomR13ModifierPhoneVGtGGAS0qeU0VGGA_G_Qo_AA024_EnvironmentKeyTransformU0VySbGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C68AABC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy07WorkoutB022SwimmingDistancePickerV_ACyAA0G0PAAE12scenePaddingyQrAA4EdgeO3SetVFQOyACyAA14NavigationLinkVyAA4TextVACyAEyAGyAH04TimeK0V_ACyAlAEAMyQrAQFQOyAA6ButtonVyAUG_Qo_AH012PinnedBottomT13ModifierPhoneVGtGGAH0kgW0VGGA1_G_Qo_AA024_EnvironmentKeyTransformW0VySbGGtGGA6_GMd);
  type metadata accessor for HKQuantity();
  lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(SwimmingDistancePicker, ModifiedContent<<<opaque return type of View.scenePadding(_:)>>.0, _EnvironmentKeyTransformModifier<Bool>>)>>, PickerViewModifier> and conformance <> ModifiedContent<A, B>();
  _sSo10HKQuantityCSo8NSObjectCSQ10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type HKQuantity and conformance NSObject, type metadata accessor for HKQuantity);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C68AC08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB020SessionControlsStateCGMd);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20C68AC80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB020SessionControlsStateCGMd);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20C68ACFC()
{
  v1 = *(type metadata accessor for SessionControlsExpandCollapseButton() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB020SessionControlsStateCGMd);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_20C68ADF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityMoveRing();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C68AEB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityMoveRing();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C68AF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C68B03C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C68B12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C68B1E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C68B2A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F15DisclaimerSheetVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00k10DisclaimerF0VyAA5LabelVyAA4TextVSgAA08ModifiedJ0VyAA5ImageVAK18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAqA6ButtonVyAQGG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA2_yAA013DefaultButtonM0VGGQo_Qo_GMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00F15DisclaimerSheetVGMd);
  lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutDisclaimerSheet> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>, &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOy07WorkoutB00k10DisclaimerF0VyAA5LabelVyAA4TextVSgAA08ModifiedJ0VyAA5ImageVAK18CircleActivityIcon33_571AE33074DF11E2A7DFE68C4E60975FLLVGSgGAqA6ButtonVyAQGG_AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA2_yAA013DefaultButtonM0VGGQo_Qo_GMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C68B39C()
{

  return swift_deallocObject();
}

uint64_t sub_20C68B3E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyAA5ImageVAA011_ForegroundG9Modifier2VyAA5ColorVAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGG_AA05PlainiG0VQo_ASyAA11ControlSizeOGGAA023AccessibilityAttachmentQ0VGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C68B470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeH0Rd__lFQOyAeAE29navigationBarTitleDisplayModeyQrAA010NavigationN4ItemV0opQ0OFQOyAeAE0mO0yQrqd__SyRd__lFQOyAA01_e9Modifier_D0Vy07WorkoutB006PickereT0VG_SSQo__Qo__AA5ColorVQo_AA022_EnvironmentKeyWritingT0VyAA03AnylH0VSgGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C68B4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  Band = type metadata accessor for TrainingLoadBand();
  v7 = *(*(Band - 8) + 48);

  return v7(a1 + v5, a2, Band);
}

uint64_t sub_20C68B554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  Band = type metadata accessor for TrainingLoadBand();
  v8 = *(*(Band - 8) + 56);

  return v8(a1 + v6, a2, a2, Band);
}

uint64_t sub_20C68B5D0()
{

  outlined consume of Environment<WorkoutViewStyle>.Content(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_20C68B628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C68B6F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C68B7D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C68B840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6PickerVyAA9EmptyViewVSdAA7ForEachVySaySdGSdAA0G0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SdQo_GGAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleS0VyAA09TintShapeV0VGGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C68B8B4()
{

  return swift_deallocObject();
}

uint64_t sub_20C68B900()
{

  return swift_deallocObject();
}

uint64_t sub_20C68BA58()
{

  return swift_deallocObject();
}

uint64_t sub_20C68BA90()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_20C68BAC8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C68BB10()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_20C68BBD4()
{
  MEMORY[0x20F30E160](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C68BC0C()
{

  return swift_deallocObject();
}

uint64_t sub_20C68BC44()
{

  return swift_deallocObject();
}

uint64_t sub_20C68BC7C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_20C68BD18()
{
  v1 = type metadata accessor for DataLinkCommand();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_20C68BDE0()
{

  return swift_deallocObject();
}

uint64_t sub_20C68BE48()
{
  v1 = type metadata accessor for DataLinkCommand();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_20C68BF0C()
{
  v1 = type metadata accessor for DataLinkCommand();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_20C68BFBC(uint64_t a1, uint64_t a2, int *a3)
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v7 = *(DataType - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = DataType;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for GregorianDayRange();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance16TrainingLoadBandOSgMd);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[12];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_20C68C1E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v9 = *(DataType - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = DataType;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for GregorianDayRange();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance16TrainingLoadBandOSgMd);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[12];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_20C68C40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DayIndex();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_20C68C518(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for DayIndex();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20C68C62C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorK0VFQOyACyAA01_gH11PlaceholderVAA05_BlurH0VG_Qo_GGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C68C69C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorK0VFQOyACyAA01_gH11PlaceholderVAA05_BlurH0VG_Qo_GGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C68C748@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  *a2 = v4;
  a2[1] = v5;
  return outlined copy of WorkoutVoiceOutroState(v4, v5);
}

uint64_t sub_20C68C798()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C68C7E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20C68C824()
{

  return swift_deallocObject();
}

uint64_t sub_20C68C860()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_20C68C898()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C68C910()
{

  outlined consume of Environment<WorkoutViewStyle>.Content(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_20C68C978()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for UnitsSettingsItemView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 40) & ~*(*v2 + 80));
  v4 = *(*(v1 - 8) + 8);
  v4(v3, v1);
  v5 = v3 + v2[13];

  v6 = type metadata accessor for Binding();
  v4(v5 + *(v6 + 32), v1);

  return swift_deallocObject();
}

uint64_t sub_20C68CAB0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20C68CE34()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14NavigationViewVyAA4ListVys5NeverOAA05TupleD0Vy07WorkoutB0020UnitsSettingsSectionD0VyAJ04Unitj6EnergyL0OGSg_ALyAJ0lj10PoolLengthL0OGALyAJ0lj8DistanceL0OGAvLyAJ0lj5TrackpL0OGA5VtGGGMd);
  lazy protocol witness table accessor for type List<Never, TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type NavigationView<List<Never, TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)>>> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA4ListVys5NeverOAA05TupleD0Vy07WorkoutB0020UnitsSettingsSectionD0VyAJ04Unitj6EnergyL0OGSg_ALyAJ0lj10PoolLengthL0OGALyAJ0lj8DistanceL0OGAvLyAJ0lj5TrackpL0OGA5VtGGGMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C68CF2C()
{
  v6 = *(v0 + 16);
  v1 = (type metadata accessor for UnitsSettingsSectionView() - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[17];

  v4 = type metadata accessor for Binding();
  (*(*(v6 - 8) + 8))(v3 + *(v4 + 32), v6);
  return swift_deallocObject();
}

uint64_t sub_20C68D04C()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for UnitsSettingsItemView();
  type metadata accessor for ForEach();
  type metadata accessor for Section();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_20C68D188()
{
  MEMORY[0x20F30E160](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C68D1C0()
{

  return swift_deallocObject();
}

uint64_t sub_20C68D220()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C68D260@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_20C68D2B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_20C68D30C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NLSeymourAvailabilityProvider_observers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_20C68D3BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaFRd__lFQOyAA6HStackVyAEyAA15ModifiedContentVyANyANyANyANyAA012_ConditionalL0VyAPyAA5ImageVARGANyANyArA18_AspectRatioLayoutVGAA06_FrameQ0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA0_yAR5ScaleOGGAA17_FlipForRTLEffectVGA0_yAA5ColorVSgGGAA023AccessibilityAttachmentV0VG_AA6SpacerVANyANyAA14NavigationLinkVyAA05EmptyE0VANyANyAA5GroupVyAPyAPy07WorkoutB0024GoalWorkoutConfigurationE0VA29_028IntervalWorkoutConfigurationE0VGAPyA29_025PacerWorkoutConfigurationE0VA29_024RaceWorkoutConfigurationE0VGGSgGA0_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA0_yA29_28ConfigurationNavigationModelCSgGGGAA07_HiddenV0VGAXGAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyANyAA6ButtonVyAPyANyANyANyARA4_GA16_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleV0VyA14_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA72_ARGQo__ACyAEyAPyA72_A72_G_ANyANyA72_A8_GA16_GSgtGGtGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C68D42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ContentSizeCategoryOGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C68D4E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA19ContentSizeCategoryOGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C68D5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C68D680(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C68D734()
{
  v1 = (type metadata accessor for EffortZoneView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  v7 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for LayoutDirection();
    (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_20C68D92C()
{
  v1 = (type metadata accessor for EffortZoneView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for LayoutDirection();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C68DAD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
    v9 = *(*(View - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, View);
  }
}

void *sub_20C68DB84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
    v8 = *(*(View - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, View);
  }

  return result;
}

uint64_t sub_20C68DC28()
{
  v1 = (type metadata accessor for TrainingLoadSmoothedLineTrace() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[7];
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = *(type metadata accessor for TrainingLoadViewModel.ChartPoint(0) + 20);
  v6 = type metadata accessor for DayIndex();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_20C68DD90()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE19interpolationMethodyQrAA013InterpolationE0VFQOyAcAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAcAE04lineH0yQrAH06StrokeH0VFQOyAH7ForEachVySnySiGSiAcAE6symbolAPQrqd__yXE_tAH4ViewRd__lFQOyAcAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0S5LabelyQrqd__SyRd__lFQOyAcAE0S6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo__AH6ZStackVyAH012_ConditionalC0VyAH08ModifiedC0VyA5_yA5_yAH01_kQ0VyAH6CircleVAH5ColorVGAH12_FrameLayoutVGAH16_OverlayModifierVyA15_GGAH13_ShadowEffectVGAH05TupleQ0VyA5_yA5_yA12_AH16_BlendModeEffectVGA14_G_A5_yA15_AH14_OpacityEffectVGtGGSgGQo_G_Qo__AH03AnykH0VQo__Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAcAE04lineE0yQrAE06StrokeE0VFQOyAE7ForEachVySnySiGSiAcAE6symbolAMQrqd__yXE_tAE4ViewRd__lFQOyAcAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0P5LabelyQrqd__SyRd__lFQOyAcAE0P6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo__AE6ZStackVyAE012_ConditionalC0VyAE08ModifiedC0VyA2_yA2_yAE01_hN0VyAE6CircleVAE5ColorVGAE12_FrameLayoutVGAE16_OverlayModifierVyA12_GGAE13_ShadowEffectVGAE05TupleN0VyA2_yA2_yA9_AE16_BlendModeEffectVGA11_G_A2_yA12_AE14_OpacityEffectVGtGGSgGQo_G_Qo__AE03AnyhE0VQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAE7ForEachVySnySiGSiAcAE6symbolAKQrqd__yXE_tAE4ViewRd__lFQOyAcAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0N5LabelyQrqd__SyRd__lFQOyAcAE0N6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo__AE6ZStackVyAE012_ConditionalC0VyAE08ModifiedC0VyA0_yA0_yAE06_ShapeL0VyAE6CircleVAE5ColorVGAE12_FrameLayoutVGAE16_OverlayModifierVyA10_GGAE13_ShadowEffectVGAE05TupleL0VyA0_yA0_yA7_AE16_BlendModeEffectVGA9_G_A0_yA10_AE14_OpacityEffectVGtGGSgGQo_G_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySnySiGSi6Charts12ChartContentPAEE6symbolAHQrqd__yXE_tAA4ViewRd__lFQOyAgEE7opacityyQrSdFQOyAgEE18accessibilityValueyQrqd__SyRd__lFQOyAgEE0K5LabelyQrqd__SyRd__lFQOyAgEE0K6HiddenyQrSbFQOyAE8LineMarkV_Qo__SSQo__SSQo__Qo__AA6ZStackVyAA012_ConditionalG0VyAA08ModifiedG0VyAYyAYyAA06_ShapeI0VyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyA7_GGAA13_ShadowEffectVGAA05TupleI0VyAYyAYyA4_AA16_BlendModeEffectVGA6_G_AYyA7_AA14_OpacityEffectVGtGGSgGQo_GMd);
  lazy protocol witness table accessor for type ForEach<Range<Int>, Int, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> ForEach<A, B, C>();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C68DEC8()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type DynamicTypeDisabled and conformance DynamicTypeDisabled();
  return swift_getWitnessTable();
}

uint64_t sub_20C68DF58()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAcAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAcAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA08ModifiedG0VyAA6ZStackVyAA05TupleC0VyASyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_ASyASyAA14GeometryReaderVyASyAA6VStackVyAWyASyAA6SpacerVAA12_FrameLayoutVG_AWyAWyASyAA4TextVAA31AccessibilityAttachmentModifierVG_A9_tGSg_ASyA4_yAWyAcAE15sensoryFeedback_7triggerQrAA15SensoryFeedbackV_qd__tSQRd__lFQOyASyAcAE9focusableyQrSbFQOyASy07WorkoutB0010EffortZoneC0VA8_G_Qo_AA21_TraitWritingModifierVyAA18TransitionTraitKeyVGG_SiQo_Sg_A9_SgA22_17EffortValueButtonVtGGA31_GtGSgA6_A22_06EffortC21CurrentWorkloadButtonVSgtGGA31_GGAA14_PaddingLayoutVGAA16_FlexFrameLayoutVGtGGAA25_AppearanceActionModifierVG_SdQo__Qo__AA0vfG0VyAA0fG7BuilderV10buildBlockyQrxAaFRzlFZQOy_AA0F4ItemVyytAA6ButtonVyAA5ImageVGGQo_Sg_A69_yytASyASyA71_yASyA73_A13_GGAA32_EnvironmentKeyTransformModifierVySbGGAA14_OpacityEffectVGGtGQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE16scrollIndicators_4axesQrAA25ScrollIndicatorVisibilityV_AA4AxisO3SetVtFQOyAcAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA6ZStackVyAA05TupleC0VyAPyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_APyAPyAA14GeometryReaderVyAPyAA6VStackVyATyAPyAA6SpacerVAA06_FrameZ0VG_ATyATyAPyAA4TextVAA31AccessibilityAttachmentModifierVG_A6_tGSg_APyA1_yATyAcAE15sensoryFeedback_7triggerQrAA15SensoryFeedbackV_qd__tSQRd__lFQOyAPyAcAE9focusableyQrSbFQOyAPy07WorkoutB0010EffortZoneC0VA5_G_Qo_AA21_TraitWritingModifierVyAA18TransitionTraitKeyVGG_SiQo_Sg_A6_SgA19_17EffortValueButtonVtGGA28_GtGSgA3_A19_06EffortC21CurrentWorkloadButtonVSgtGGA28_GGAA08_PaddingZ0VGAA010_FlexFrameZ0VGtGGAA25_AppearanceActionModifierVG_SdQo__Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA6ButtonVyAA5ImageVGGQo_Sg_AIyytAA08ModifiedE0VyASyAKyASyAmA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformO0VySbGGAA14_OpacityEffectVGGtGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAA6ZStackVyAA05TupleC0VyAHyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_AHyAHyAA14GeometryReaderVyAHyAA6VStackVyALyAHyAA6SpacerVAA06_FrameR0VG_ALyALyAHyAA4TextVAA31AccessibilityAttachmentModifierVG_AZtGSg_AHyAUyALyAcAE15sensoryFeedback_7triggerQrAA15SensoryFeedbackV_qd__tSQRd__lFQOyAHyAcAE9focusableyQrSbFQOyAHy07WorkoutB0010EffortZoneC0VAYG_Qo_AA21_TraitWritingModifierVyAA18TransitionTraitKeyVGG_SiQo_Sg_AZSgA11_17EffortValueButtonVtGGA20_GtGSgAWA11_06EffortC21CurrentWorkloadButtonVSgtGGA20_GGAA08_PaddingR0VGAA05_FlexwR0VGtGGAA25_AppearanceActionModifierVG_SdQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA14LinearGradientVAA30_SafeAreaRegionsIgnoringLayoutVG_ACyACyAA14GeometryReaderVyACyAA6VStackVyAGyACyAA6SpacerVAA06_FrameN0VG_AGyAGyACyAA4TextVAA31AccessibilityAttachmentModifierVG_AUtGSg_ACyAPyAGyAA0G0PAAE15sensoryFeedback_7triggerQrAA07SensoryY0V_qd__tSQRd__lFQOyACyA2_AAE9focusableyQrSbFQOyACy07WorkoutB0010EffortZoneG0VATG_Qo_AA013_TraitWritingW0VyAA18TransitionTraitKeyVGG_SiQo_Sg_AUSgA8_17EffortValueButtonVtGGA17_GtGSgARA8_06EffortG21CurrentWorkloadButtonVSgtGGA17_GGAA08_PaddingN0VGAA05_FlexsN0VGtGGAA017_AppearanceActionW0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ZStack<TupleView<(ModifiedContent<LinearGradient, _SafeAreaRegionsIgnoringLayout>, ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<Spacer, _FrameLayout>)>?, ModifiedContent<VStack<TupleView<((<<opaque return type of View.sensoryFeedback<A>(_:trigger:)>>.0)?, ModifiedContent<Spacer, _FrameLayout>?, EffortValueButton)>>, _TraitWritingModifier<TransitionTraitKey>>)>?, Spacer, EffortViewCurrentWorkloadButton?)>>, _TraitWritingModifier<TransitionTraitKey>>>, _PaddingLayout>, _FlexFrameLayout>)>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<((<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?, ToolbarItem<(), ModifiedContent<ModifiedContent<Button<ModifiedContent<Image, AccessibilityAttachmentModifier>>, _EnvironmentKeyTransformModifier<Bool>>, _OpacityEffect>>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA6ButtonVyAA5ImageVGGQo_Sg_AIyytAA08ModifiedE0VyASyAKyASyAmA31AccessibilityAttachmentModifierVGGAA024_EnvironmentKeyTransformO0VySbGGAA14_OpacityEffectVGGtGMd);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type EffortListView and conformance EffortListView();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C68E118(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyACyAA15ModifiedContentVyAA4TextVAA31AccessibilityAttachmentModifierVG_AEyAA6SpacerVAA12_FrameLayoutVGtGSg_AEyAA6VStackVyACyAA0D0PAAE15sensoryFeedback_7triggerQrAA07SensoryP0V_qd__tSQRd__lFQOyAEyAuAE9focusableyQrSbFQOyAEy07WorkoutB0010EffortZoneD0VANG_Qo_AA013_TraitWritingJ0VyAA010TransitionW3KeyVGG_SiQo_Sg_AOSgA_0U11ValueButtonVtGGA8_GtGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C68E1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C68E294(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C68E35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppleExertionScale();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20C68E418(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppleExertionScale();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C68E4D4()
{
  v1 = *(type metadata accessor for EffortButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for AppleExertionScale();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_20C68E654()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA023AccessibilityAttachmentO0VGAA17_FlipForRTLEffectVGAEyAoWGGGATGAQyAA19SymbolRenderingModeVSgGG_AEyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAMyAEyAoQyAA4FontVSgGGAEyA20_AA07_HiddenO0VGGtGGA12_GA19_GAA16_FlexFrameLayoutVGA30_GAA016_BackgroundStyleO0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_e9ShapeKindO0VyA43_GGGMd);
  type metadata accessor for PlainButtonStyle();
  lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, EffortSectionTitle, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, ModifiedContent<Divider, _PaddingLayout>, ModifiedContent<EffortButton, _PaddingLayout>, <<opaque return type of View.scenePadding(_:)>>.0)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _FlipForRTLEffect>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, ModifiedContent<Text, _PaddingLayout>, Spacer, _ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _HiddenModifier>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _FlexFrameLayout>, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>, _ContentShapeKindModifier<RoundedCorner>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAEyAEyAA5GroupVyAA012_ConditionalE0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA023AccessibilityAttachmentO0VGAA17_FlipForRTLEffectVGAEyAoWGGGATGAQyAA19SymbolRenderingModeVSgGG_AEyAA4TextVAA14_PaddingLayoutVGAA6SpacerVAMyAEyAoQyAA4FontVSgGGAEyA20_AA07_HiddenO0VGGtGGA12_GA19_GAA16_FlexFrameLayoutVGA30_GAA016_BackgroundStyleO0VyAA5ColorVGGAA11_ClipEffectVy07WorkoutB013RoundedCornerVGGAA01_e9ShapeKindO0VyA43_GGGMd);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_4(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C68E738()
{

  return swift_deallocObject();
}

uint64_t sub_20C68E7F8()
{
  type metadata accessor for PausableTimelineSchedule();

  return swift_getWitnessTable();
}

uint64_t sub_20C68E850()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_20C68E8D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D15MediaSuggestionVSgGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_20C68E98C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D15MediaSuggestionVSgGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C68EA3C()
{
  v1 = type metadata accessor for MediaSuggestionsList();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 28);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D15MediaSuggestionVSgGMd) + 32);
  v5 = type metadata accessor for WorkoutMediaSuggestion();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_20C68EBD4()
{
  v1 = type metadata accessor for MediaSuggestionsList();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v10 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for WorkoutMediaSuggestion();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  v7 = v0 + v3 + *(v1 + 28);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore0D15MediaSuggestionVSgGMd) + 32);
  if (!(*(v5 + 48))(v7 + v8, 1, v4))
  {
    (*(v5 + 8))(v7 + v8, v4);
  }

  (*(v5 + 8))(v0 + ((v3 + v10 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_20C68EDE8()
{

  return swift_deallocObject();
}

uint64_t sub_20C68EE28()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_20C68EF18()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20C68EF5C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_20C68F04C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C68F094(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C68F0A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C68F0F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C68F134()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C68F18C()
{

  return swift_deallocObject();
}

void sub_20C68F25C(id *a1)
{
  v1 = *a1;
  specialized EnergyPickerViewModel.goal.setter(v1);
}

uint64_t sub_20C68F310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20C68F388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20C68F40C()
{
  lazy protocol witness table accessor for type WorkoutDisclaimerLabelStyle and conformance WorkoutDisclaimerLabelStyle();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  lazy protocol witness table accessor for type WorkoutDisclaimerActionButtonStyle and conformance WorkoutDisclaimerActionButtonStyle();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for VStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C68F770()
{
  v1 = type metadata accessor for PrimitiveButtonStyleConfiguration();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_20C68F8D8()
{

  return swift_deallocObject();
}

uint64_t sub_20C68FA2C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_20C68FF24()
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type AdjustedListRowSeparatorLeading and conformance AdjustedListRowSeparatorLeading();
  return swift_getWitnessTable();
}

uint64_t sub_20C68FFA0()
{

  return swift_deallocObject();
}

uint64_t sub_20C68FFD8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for TimelineProviderContext();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 16) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_20C690158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for StepType();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20C690288(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for StepType();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10Foundation4UUIDVSgGMd);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20C6903EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C69042C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C690488@<X0>(uint64_t a1@<X8>)
{
  result = MEMORY[0x20F308ED0]();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_20C690518()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAcAE21navigationItemAdaptoryQrqd__AA012UINavigationkL0Rd__lFQOyAcAE0J5TitleyQrqd__SyRd__lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAWyAWyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarX0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyA4_yAWyAA6HStackVyA4_yAWyAWyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGSg_AA4TextVAA6SpacerVtGGAA14_PaddingLayoutVG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAWyAWyAWyA8_yA4_yA21__A19_A21_tGGA25_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyAWyA6_yA4_yA19__A19_SgtGGAA21_TraitWritingModifierVyAA04ListP14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAWyAWyAA5GroupVyA30_y07WorkoutB0020WorkoutConfigurationP0VGSgGA61_GA58_yAA04ListP18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA89_A89_A53_yA87_A87_AWyAWyA19_AA30_EnvironmentKeyWritingModifierVyA19_4CaseOSgGGA61_GGAcAEAD_AeFQrA19__AJqd__yXEtAaBRd__lFQOyAWyAWyAcAEA27_yQrqd__AAA28_Rd__lFQOyA30_yAWyAWyAWyAWyA8_yA4_yA21__AWyAWyAWyA19_A91_yAA13TextAlignmentOGGA74_15BodyHyphenationVGA91_yA37_SgGGA21_tGGA25_GA25_GA38_GA44_GG_A48_Qo_A83_GA61_G_A4_yAcAEA27_yQrqd__AAA28_Rd__lFQOyA30_yA105_G_AA28BorderedProminentButtonStyleVQo__A30_yAA18DefaultButtonLabelVGtGQo_tGG_AA07ToolbarX7BuilderV10buildBlockyQrxAaZRzlFZQOy_AA07ToolbarK0VyytA74_20DeviceConnectionMenuVGQo_Qo_A91_y12CoreGraphics7CGFloatVSgGGA58_yAA26ListSectionSpacingTraitKeyVGGA91_yAA18ListSectionSpacingVSgGG_Qo__SSQo__A74_019MultilineNavigationK7AdapterVQo__SSA30_yA19_GA87_Qo_Md);
  type metadata accessor for WorkoutConfiguration();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVyAH0I15NavigationModelCSgGGAWy0G4Core0gI10DataSourceCSgGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE21navigationItemAdaptoryQrqd__AA012UINavigationeF0Rd__lFQOyAcAE0D5TitleyQrqd__SyRd__lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAPyAPyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarR0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyAYyAPyAA6HStackVyAYyAPyAPyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGSg_AA4TextVAA6SpacerVtGGAA14_PaddingLayoutVG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAPyAPyAPyA1_yAYyA14__A12_A14_tGGA18_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyAPyA_yAYyA12__A12_SgtGGAA21_TraitWritingModifierVyAA0vJ14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAPyAPyAA5GroupVyA23_y07WorkoutB0020WorkoutConfigurationJ0VGSgGA54_GA51_yAA0vJ18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA82_A82_A46_yA80_A80_APyAPyA12_AA30_EnvironmentKeyWritingModifierVyA12_4CaseOSgGGA54_GGAcAE5alert_11isPresented7actionsQrA12__AA7BindingVySbGqd__yXEtAaBRd__lFQOyAPyAPyAcAEA20_yQrqd__AAA21_Rd__lFQOyA23_yAPyAPyAPyAPyA1_yAYyA14__APyAPyAPyA12_A84_yAA13TextAlignmentOGGA67_15BodyHyphenationVGA84_yA30_SgGGA14_tGGA18_GA18_GA31_GA37_GG_A41_Qo_A76_GA54_G_AYyAcAEA20_yQrqd__AAA21_Rd__lFQOyA23_yA104_G_AA28BorderedProminentButtonStyleVQo__A23_yAA18DefaultButtonLabelVGtGQo_tGG_AA0uR7BuilderV10buildBlockyQrxAaSRzlFZQOy_AA0uE0VyytA67_20DeviceConnectionMenuVGQo_Qo_A84_y12CoreGraphics7CGFloatVSgGGA51_yAA0V22SectionSpacingTraitKeyVGGA84_yAA0V14SectionSpacingVSgGG_Qo__SSQo__A67_019MultilineNavigationE7AdapterVQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOyAcAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyANyANyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarO0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyAWyANyAA6HStackVyAWyANyANyAA5ImageVAA18_AspectRatioLayoutVGAA12_FrameLayoutVGSg_AA4TextVAA6SpacerVtGGAA14_PaddingLayoutVG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyANyANyANyA_yAWyA12__A10_A12_tGGA16_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyANyAYyAWyA10__A10_SgtGGAA21_TraitWritingModifierVyAA0sG14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVANyANyAA5GroupVyA21_y07WorkoutB0020WorkoutConfigurationG0VGSgGA52_GA49_yAA0sG18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA80_A80_A44_yA78_A78_ANyANyA10_AA30_EnvironmentKeyWritingModifierVyA10_4CaseOSgGGA52_GGAcAE5alert_11isPresented7actionsQrA10__AA7BindingVySbGqd__yXEtAaBRd__lFQOyANyANyAcAEA18_yQrqd__AAA19_Rd__lFQOyA21_yANyANyANyANyA_yAWyA12__ANyANyANyA10_A82_yAA13TextAlignmentOGGA65_15BodyHyphenationVGA82_yA28_SgGGA12_tGGA16_GA16_GA29_GA35_GG_A39_Qo_A74_GA52_G_AWyAcAEA18_yQrqd__AAA19_Rd__lFQOyA21_yA102_G_AA28BorderedProminentButtonStyleVQo__A21_yAA18DefaultButtonLabelVGtGQo_tGG_AA0rO7BuilderV10buildBlockyQrxAaQRzlFZQOy_AA0R4ItemVyytA65_20DeviceConnectionMenuVGQo_Qo_A82_y12CoreGraphics7CGFloatVSgGGA49_yAA0S22SectionSpacingTraitKeyVGGA82_yAA0S14SectionSpacingVSgGG_Qo__SSQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE16listRowSeparator_5edgesQrAA10VisibilityO_AA12VerticalEdgeO3SetVtFQOyAA15ModifiedContentVyAMyAMyAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarM0Rd__lFQOyAA4ListVys5NeverOAA05TupleC0VyAA6VStackVyAVyAMyAA6HStackVyAVyAMyAMyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameY0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingY0VG_AcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAMyAMyAMyAZyAVyA11__A9_A11_tGGA15_GAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA16PlainButtonStyleVQo_tGG_AA7SectionVyAMyAXyAVyA9__A9_SgtGGAA21_TraitWritingModifierVyAA0qE14InsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVAMyAMyAA5GroupVyA20_y07WorkoutB0020WorkoutConfigurationE0VGSgGA51_GA48_yAA0qE18BackgroundTraitKeyVGGGAA05EmptyC0VGSgA79_A79_A43_yA77_A77_AMyAMyA9_AA30_EnvironmentKeyWritingModifierVyA9_4CaseOSgGGA51_GGAcAE5alert_11isPresented7actionsQrA9__AA7BindingVySbGqd__yXEtAaBRd__lFQOyAMyAMyAcAEA17_yQrqd__AAA18_Rd__lFQOyA20_yAMyAMyAMyAMyAZyAVyA11__AMyAMyAMyA9_A81_yAA13TextAlignmentOGGA64_15BodyHyphenationVGA81_yA27_SgGGA11_tGGA15_GA15_GA28_GA34_GG_A38_Qo_A73_GA51_G_AVyAcAEA17_yQrqd__AAA18_Rd__lFQOyA20_yA101_G_AA28BorderedProminentButtonStyleVQo__A20_yAA18DefaultButtonLabelVGtGQo_tGG_AA0pM7BuilderV10buildBlockyQrxAaPRzlFZQOy_AA0P4ItemVyytA64_20DeviceConnectionMenuVGQo_Qo_A81_y12CoreGraphics7CGFloatVSgGGA48_yAA0Q22SectionSpacingTraitKeyVGGA81_yAA0Q14SectionSpacingVSgGG_Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAA4ListVys5NeverOAA05TupleE0VyAA6VStackVyANyACyAA6HStackVyANyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameQ0VGSg_AA4TextVAA6SpacerVtGGAA08_PaddingQ0VG_AeAE11buttonStyleyQrqd__AA015PrimitiveButtonW0Rd__lFQOyAA0Y0VyACyACyACyARyANyA3__A1_A3_tGGA7_GAA011_BackgroundW8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGG_AA05PlainyW0VQo_tGG_AA7SectionVyACyAPyANyA1__A1_SgtGGAA21_TraitWritingModifierVyAA0I17RowInsetsTraitKeyVGGAA7ForEachVySay11WorkoutCore20WorkoutConfigurationCG10Foundation4UUIDVACyACyAA5GroupVyA12_y07WorkoutB023WorkoutConfigurationRowVGSgGA43_GA40_yAA0i3RowZ8TraitKeyVGGGAA05EmptyE0VGSgA71_A71_A35_yA69_A69_ACyACyA1_AA30_EnvironmentKeyWritingModifierVyA1_4CaseOSgGGA43_GGAeAE5alert_11isPresented7actionsQrA1__AA7BindingVySbGqd__yXEtAaDRd__lFQOyACyACyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yACyACyACyACyARyANyA3__ACyACyACyA1_A73_yAA0S9AlignmentOGGA56_15BodyHyphenationVGA73_yA19_SgGGA3_tGGA7_GA7_GA20_GA26_GG_A30_Qo_A65_GA43_G_ANyAeAEA9_yQrqd__AAA10_Rd__lFQOyA12_yA93_G_AA017BorderedProminentyW0VQo__A12_yAA07DefaultY5LabelVGtGQo_tGG_AA0hD7BuilderV10buildBlockyQrxAaHRzlFZQOy_AA0H4ItemVyytA56_20DeviceConnectionMenuVGQo_Qo_A73_y12CoreGraphics7CGFloatVSgGGA40_yAA0I22SectionSpacingTraitKeyVGGA73_yAA0I14SectionSpacingVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.toolbar<A>(content:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type String and conformance String();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type MultilineNavigationItemAdapter and conformance MultilineNavigationItemAdapter();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type TupleView<(VStack<TupleView<(ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>?, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>>, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInsetsTraitKey>>, ForEach<[WorkoutConfiguration], UUID, ModifiedContent<ModifiedContent<Group<Button<WorkoutConfigurationRow>?>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>>, EmptyView>?, Section<ModifiedContent<VStack<TupleView<(Text, Text?)>>, _TraitWritingModifier<ListRowInset(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type WorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance NSObject, MEMORY[0x277D7DA50]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C6907B0()
{

  outlined consume of StateObject<WorkoutDevicesProvider>.Storage(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_20C69083C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA5ColorVAA01_eF0VyAeGGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C6908B4()
{
  swift_unknownObjectRelease();

  outlined consume of StateObject<WorkoutDevicesProvider>.Storage(*(v0 + 136), *(v0 + 144), *(v0 + 152));

  return swift_deallocObject();
}

uint64_t sub_20C690964(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA16RedactionReasonsVGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 28)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_20C690A18(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA16RedactionReasonsVGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C690AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA0E0PAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAA4TextV07WorkoutB015MetricValueFontVG_Qo__AJyAJyAJyAJyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA0N0VSgGGAUy12CoreGraphics7CGFloatVGGAA016_ForegroundStyleS0VyAA5ColorVGGAA023AccessibilityAttachmentS0VGtGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C690B48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AlertConfigurationSessionContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AlertConfigurationContext();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_20C690C6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AlertConfigurationSessionContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AlertConfigurationContext();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20C690DB4()
{
  v1 = (type metadata accessor for AlertMultipleConfigurationView() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  __swift_destroy_boxed_opaque_existential_1((v2 + 3));
  v3 = v1[10];
  v4 = type metadata accessor for AlertConfigurationSessionContext();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[11];
  v6 = type metadata accessor for AlertConfigurationContext();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_20C690F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C690FF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C691094()
{

  return swift_deallocObject();
}

uint64_t sub_20C6910D4()
{

  return swift_deallocObject();
}

uint64_t sub_20C691110()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C691148()
{

  return swift_deallocObject();
}

uint64_t sub_20C691190(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyAA08TimelineE0Vy07WorkoutB008PausableL8ScheduleVyAA08PeriodiclO0VGAA4TextVGAL15MetricValueFontVGAA30_EnvironmentKeyWritingModifierVyAA15LayoutDirectionOGGAA01_d5ShapeX0VyAA16RoundedRectangleVGG_Qo_AA0i10AttachmentX0VGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_20C69120C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_20C691234()
{
  MEMORY[0x20F30E160](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C691270(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20C691290()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_20C6912C8()
{

  return swift_deallocObject();
}

uint64_t sub_20C691300()
{

  return swift_deallocObject();
}

uint64_t sub_20C691348()
{

  return swift_deallocObject();
}

uint64_t sub_20C691380()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20C6913B8()
{

  return swift_deallocObject();
}

uint64_t sub_20C691610()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_20C691648()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_20C691690()
{

  return swift_deallocObject();
}

uint64_t sub_20C6916D0()
{

  return swift_deallocObject();
}

uint64_t sub_20C691708()
{

  return swift_deallocObject();
}

uint64_t sub_20C691750()
{

  return swift_deallocObject();
}

uint64_t sub_20C6917C8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLuminanceReduced.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_20C691824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C6918E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C691990()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAEyAkEyAkEyAkEyAkA6ZStackVyAA012_ConditionalD0VyAA08TimelineF0VyAA08PeriodicL8ScheduleVAMyAA05TupleF0VyACyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_ACyACyACyACyACy07WorkoutB0018TransitionThinkingF0VA4_GAA08_PaddingR0VGAYGA7_GA11_GACyACyACyA5_AA06_ScaleY0VGA7_GA11_GACyACyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconF0VGGGGGGGAA017_AppearanceActionV0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWriting();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C6919F8()
{

  return swift_deallocObject();
}

uint64_t sub_20C691A64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_20C691B20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C691BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for WorkoutBuddyStatePublisher.State();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C691C84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for WorkoutBuddyStatePublisher.State();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C691D28()
{
  MEMORY[0x20F30E160](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C691D60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WOReminderHaptic_identifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_20C691DBC()
{

  return swift_deallocObject();
}

uint64_t sub_20C691DF4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = _sIeg_ytIegr_TRTA_1;
  a2[1] = v5;
}

uint64_t sub_20C691EAC()
{

  return swift_deallocObject();
}

uint64_t _s9WorkoutUI0A13CountdownStepOIegn_SgWOy_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C691F38(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C691F48()
{
  MEMORY[0x20F30E160](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_20C691FA0()
{

  return swift_deallocObject();
}

uint64_t sub_20C691FD8()
{

  return swift_deallocObject();
}

uint64_t sub_20C69206C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19WidgetConfigurationP0C3KitE17supportedFamiliesyQrSayAD0C6FamilyOGFQOyAcDE33enableContentMarginsForFirstPartyyQrSbFQOyAcDE11descriptionyQrqd__SyRd__lFQOyAcDE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo__SSQo__Qo__Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19WidgetConfigurationP0C3KitE33enableContentMarginsForFirstPartyyQrSbFQOyAcDE11descriptionyQrqd__SyRd__lFQOyAcDE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo__SSQo__Qo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19WidgetConfigurationP0C3KitE11descriptionyQrqd__SyRd__lFQOyAcDE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo__SSQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19WidgetConfigurationP0C3KitE24configurationDisplayNameyQrqd__SyRd__lFQOyAD06StaticD0Vy07WorkoutB0015TrainingLoadDayC9EntryViewVG_SSQo_Md);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WidgetKit19StaticConfigurationVy9WorkoutUI015TrainingLoadDayA9EntryViewVGMd);
  lazy protocol witness table accessor for type StaticConfiguration<TrainingLoadDayWidgetEntryView> and conformance StaticConfiguration<A>();
  lazy protocol witness table accessor for type String and conformance String();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C69221C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_20C6922D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C692388()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVy07WorkoutB00D20ConfigurationViewIOSVyAA19_ConditionalContentVyAHyAD012EmbeddedGoaleF0VAD0j8IntervaleF0VGAHyAD0j5PacereF0VAD0j10MultiSporteF0VGGSgGGMd);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA4TextVGAVGGQo_SgtGMd);
  lazy protocol witness table accessor for type Group<WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?>> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type WorkoutConfigurationViewIOS<_ConditionalContent<_ConditionalContent<EmbeddedGoalConfigurationView, EmbeddedIntervalConfigurationView>, _ConditionalContent<EmbeddedPacerConfigurationView, EmbeddedMultiSportConfigurationView>>?> and conformance WorkoutConfigurationViewIOS<A>(&lazy protocol witness table cache variable for type TupleToolbarContent<((<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?, (<<opaque return type of static ToolbarContentBuilder.buildBlock<A>(_:)>>.0)?)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0dE7BuilderV10buildBlockyQrxAA0dE0RzlFZQOy_AA0D4ItemVyytAA08ModifiedE0VyAA6ButtonVyAA5ImageVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGQo_Sg_AeFyQrxAaGRzlFZQOy_AIyytAKyAMyAA4TextVGAVGGQo_SgtGMd);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C692458()
{
  v1 = type metadata accessor for WorkoutConfigurationView();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  if (*(v3 + v1[10]))
  {
  }

  if (*(v3 + v1[11]))
  {
  }

  if (*(v3 + v1[12]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C6925F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C692608()
{
  v1 = type metadata accessor for WorkoutConfigurationView();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  if (*(v3 + v1[10]))
  {
  }

  if (*(v3 + v1[11]))
  {
  }

  if (*(v3 + v1[12]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_20C6927B8()
{

  return swift_deallocObject();
}

uint64_t sub_20C692AA0()
{

  return swift_deallocObject();
}

uint64_t sub_20C692B00()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA9TupleViewVyAA6ToggleVyAA4TextVG_AA15ModifiedContentVyALyAiA21_TraitWritingModifierVyAA017ListRowBackgroundJ3KeyVGGAA012_EnvironmentpkL0VyAA5ColorVSgGGtGGMd);
  lazy protocol witness table accessor for type Group<TupleView<(Toggle<Text>, ModifiedContent<ModifiedContent<Text, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance <A> Group<A>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20C692BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AlertConfigurationContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C692C8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AlertConfigurationContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C692D4C()
{
  v1 = (type metadata accessor for PowerZonesEntryView() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[8];
  v4 = type metadata accessor for AlertConfigurationContext();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_20C692EA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA34WithCurrentHostingControllerActionVGMd);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for InferenceClient();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}