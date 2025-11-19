id CustomDistanceSplitsTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CustomDistanceSplitsTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomDistanceSplitsTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static IntervalWorkoutConfiguration.displayName.getter()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001ELL, 0x800000020B465830);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

unint64_t lazy protocol witness table accessor for type HKWorkoutMetricType and conformance HKWorkoutMetricType()
{
  result = lazy protocol witness table cache variable for type HKWorkoutMetricType and conformance HKWorkoutMetricType;
  if (!lazy protocol witness table cache variable for type HKWorkoutMetricType and conformance HKWorkoutMetricType)
  {
    type metadata accessor for HKWorkoutMetricType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HKWorkoutMetricType and conformance HKWorkoutMetricType);
  }

  return result;
}

uint64_t WorkoutBuddyStatePublisher.supportsWorkoutBuddy.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for WorkoutBuddyStatePublisher.supportsWorkoutBuddy : WorkoutBuddyStatePublisher@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutBuddyStatePublisher.supportsWorkoutBuddy : WorkoutBuddyStatePublisher(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WorkoutBuddyStatePublisher.supportsWorkoutBuddy.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WorkoutBuddyStatePublisher.supportsWorkoutBuddy.modify(uint64_t *a1))()
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
  return WorkoutBuddyStatePublisher.supportsWorkoutBuddy.modify;
}

uint64_t key path setter for WorkoutBuddyStatePublisher.$supportsWorkoutBuddy : WorkoutBuddyStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutBuddyStatePublisher.$supportsWorkoutBuddy.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutBuddyStatePublisher.$supportsWorkoutBuddy.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__supportsWorkoutBuddy;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutBuddyStatePublisher.$supportsWorkoutBuddy.modify;
}

uint64_t WorkoutBuddyStatePublisher.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for WorkoutBuddyStatePublisher.state : WorkoutBuddyStatePublisher@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutBuddyStatePublisher.state : WorkoutBuddyStatePublisher(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WorkoutBuddyStatePublisher.state.setter(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WorkoutBuddyStatePublisher.state.modify(uint64_t *a1))()
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
  return WorkoutBuddyStatePublisher.state.modify;
}

void WorkoutBuddyStatePublisher.supportsWorkoutBuddy.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t WorkoutBuddyStatePublisher.$supportsWorkoutBuddy.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for WorkoutBuddyStatePublisher.$supportsWorkoutBuddy : WorkoutBuddyStatePublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutBuddyStatePublisher.$state : WorkoutBuddyStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0d10BuddyStateC0C0G0O_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0d10BuddyStateC0C0G0O_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutBuddyStatePublisher.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0d10BuddyStateC0C0G0O_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0d10BuddyStateC0C0G0O_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutBuddyStatePublisher.$state.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0d10BuddyStateC0C0G0O_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0d10BuddyStateC0C0G0O_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutBuddyStatePublisher.$state.modify;
}

void WorkoutBuddyStatePublisher.$supportsWorkoutBuddy.modify(uint64_t a1, char a2)
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

uint64_t WorkoutBuddyStatePublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Published.init(initialValue:)();
  Published.init(initialValue:)();
  return v3;
}

uint64_t WorkoutBuddyStatePublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  v11 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__supportsWorkoutBuddy;
  v14[15] = 0;
  Published.init(initialValue:)();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__state;
  v14[14] = 3;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v12, v5, v1);
  return v0;
}

WorkoutCore::WorkoutBuddyStatePublisher::State_optional __swiftcall WorkoutBuddyStatePublisher.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutBuddyStatePublisher.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutBuddyStatePublisher.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t WorkoutBuddyStatePublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__supportsWorkoutBuddy;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t WorkoutBuddyStatePublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__supportsWorkoutBuddy;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutBuddyStatePublisher@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t WorkoutBuddyStatePublisher.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher() + 24);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 8) = v4;
  *(a1 + 16) = 1;
  return result;
}

uint64_t WorkoutBuddyStatePublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutBuddyStatePublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_WorkoutBuddyStatePublisher(v3);
  return v4;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_WorkoutBuddyStatePublisher(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutBuddyStatePublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized WorkoutBuddyStatePublisher.__allocating_init(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance WorkoutBuddyStatePublisher()
{
  v1 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  WorkoutBuddyStatePublisher.protobuf.getter(v4);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v6 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_WorkoutBuddyStatePublisher(v4);
  return v6;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance WorkoutBuddyStatePublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static WorkoutBuddyStatePublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance WorkoutBuddyStatePublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized WorkoutBuddyStatePublisher.__allocating_init(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState.decoded.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if ((v1[1] & 1) == 0)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.workoutVoice);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 3;
  }

  *a1 = v3;
}

uint64_t closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v6 + 136) = a6;
  *(v6 + 155) = a5;
  *(v6 + 154) = a4;
  type metadata accessor for MainActor();
  *(v6 + 144) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:), v8, v7);
}

uint64_t closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:)()
{
  v1 = *(v0 + 144);

  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.workoutVoice);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 155);
    v6 = *(v0 + 154);
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = v6;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v5;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Setting Workout Buddy state to %ld, supportsWorkoutBuddy %{BOOL}d", v7, 0x12u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v8 = *(v0 + 136);
  v9 = *(v0 + 155);
  v10 = *(v0 + 154);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 152) = v9;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 153) = v10;

  static Published.subscript.setter();
  v11 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for workoutBuddyStateChanged != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 154);
  v13 = static NSNotificationName.workoutBuddyStateChanged;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(v0 + 120) = 0xD000000000000011;
  *(v0 + 128) = 0x800000020B465850;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for WorkoutBuddyStatePublisher.State;
  *(inited + 72) = v12;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (AnyHashable, Any)(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 postNotificationName:v13 object:0 userInfo:isa];

  v16 = *(v0 + 8);

  return v16();
}

uint64_t specialized static WorkoutBuddyStatePublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v2 = type metadata accessor for BinaryDecodingOptions();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v29[1] = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v5 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v29 - v16;
  v18 = type metadata accessor for WorkoutBuddyStatePublisher();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__supportsWorkoutBuddy;
  LOBYTE(v34) = 0;
  Published.init(initialValue:)();
  (*(v14 + 32))(v21 + v22, v17, v13);
  v23 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__state;
  LOBYTE(v34) = 3;
  Published.init(initialValue:)();
  (*(v9 + 32))(v21 + v23, v12, v8);
  v37[0] = v30;
  v37[1] = v31;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  outlined copy of Data._Representation(v30, v31);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v24 = v33;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v24)
  {
  }

  else
  {
    v25 = *v7;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v34) = v25;

    static Published.subscript.setter();
    v26 = v7[16];
    *&v34 = *(v7 + 1);
    BYTE8(v34) = v26;
    Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState.decoded.getter(v37);
    v27 = v37[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v27;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_WorkoutBuddyStatePublisher(v7);
  }

  return v21;
}

uint64_t specialized WorkoutBuddyStatePublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v14 = type metadata accessor for BinaryDecodingOptions();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = a1;
  v36[1] = a2;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    v20 = type metadata accessor for WorkoutBuddyStatePublisher();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    v3 = swift_allocObject();
    v23 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__supportsWorkoutBuddy;
    LOBYTE(v33) = 0;
    Published.init(initialValue:)();
    (*(v30 + 32))(v3 + v23, v13, v10);
    v24 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__state;
    LOBYTE(v33) = 3;
    Published.init(initialValue:)();
    (*(v31 + 32))(v3 + v24, v9, v32);
    v25 = *v19;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v33) = v25;
    swift_retain_n();
    static Published.subscript.setter();
    v26 = v19[16];
    *&v33 = *(v19 + 1);
    BYTE8(v33) = v26;
    Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState.decoded.getter(v36);
    v27 = v36[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v37 = v27;
    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_WorkoutBuddyStatePublisher(v19);
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State()
{
  result = lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State;
  if (!lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutBuddyStatePublisher()
{
  result = type metadata singleton initialization cache for WorkoutBuddyStatePublisher;
  if (!type metadata singleton initialization cache for WorkoutBuddyStatePublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutBuddyStatePublisher()
{
  _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Published<Bool>);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Published<WorkoutBuddyStatePublisher.State>);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void _s7Combine9PublishedVySbGMaTm_0(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for WorkoutBuddyStatePublisher.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutBuddyStatePublisher.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined destroy of (AnyHashable, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Chronicle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static Chronicle.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static Chronicle.shared;

  return v1;
}

uint64_t Chronicle.record(className:classInstance:selector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v46 = a1;
  v47 = a2;
  v52 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v52 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.Encoding();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v45 = &v39 - v16;
  Date.init()();
  dispatch_queue_get_label(0);
  static String.Encoding.utf8.getter();
  v40 = String.init(cString:encoding:)();
  v39 = v18;
  v19 = *(v4 + OBJC_IVAR___WOChronicle_recordingQueue);
  v42 = v11;
  v43 = v19;
  v20 = v11;
  (*(v12 + 16))(v15, v17, v11);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v12 + 32))(v26 + v21, v15, v20);
  v27 = (v26 + v22);
  v28 = v39;
  *v27 = v40;
  v27[1] = v28;
  v29 = (v26 + v23);
  v30 = v47;
  *v29 = v46;
  v29[1] = v30;
  v31 = v49;
  *(v26 + v24) = v48;
  *(v26 + v25) = v31;
  v32 = v41;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
  aBlock[4] = partial apply for closure #1 in Chronicle.record(className:classInstance:selector:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_56;
  v33 = _Block_copy(aBlock);

  v34 = v32;
  v35 = v44;
  static DispatchQoS.unspecified.getter();
  v55 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_10(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v36 = v50;
  v37 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v35, v36, v33);
  _Block_release(v33);
  (*(v54 + 8))(v36, v37);
  (*(v51 + 8))(v35, v53);
  (*(v12 + 8))(v45, v42);
}

uint64_t closure #1 in Chronicle.record(className:classInstance:selector:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a6;
  v39 = a7;
  v36 = a4;
  v37 = a5;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Chronicle.Entry();
  v18 = (v17 - 8);
  v40 = *(v17 - 8);
  v19 = *(v40 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v36 - v23;
  (*(v13 + 16))(v16, a1, v12);
  if (a3)
  {
    v25 = a3;
  }

  else
  {
    a2 = 0x64656D616E6E75;
    v25 = 0xE700000000000000;
  }

  (*(v13 + 32))(v24, v16, v12);
  v26 = &v24[v18[7]];
  *v26 = a2;
  v26[1] = v25;
  v27 = &v24[v18[8]];
  v28 = v37;
  *v27 = v36;
  *(v27 + 1) = v28;
  v29 = v39;
  *&v24[v18[9]] = v38;
  *&v24[v18[10]] = v29;
  outlined init with copy of Chronicle.Entry(v24, v22);
  v30 = OBJC_IVAR___WOChronicle_entries;
  swift_beginAccess();
  v31 = *(a8 + v30);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + v30) = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    *(a8 + v30) = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v31);
  }

  v31[2] = v34 + 1;
  outlined init with take of Chronicle.Entry(v22, v31 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v34);
  *(a8 + v30) = v31;
  swift_endAccess();
  return outlined destroy of Chronicle.Entry(v24);
}

uint64_t partial apply for closure #1 in Chronicle.record(className:classInstance:selector:)()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v0 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v4);
  v11 = *(v0 + v4 + 8);
  v12 = *(v0 + v5);
  v13 = *(v0 + v6);
  v14 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in Chronicle.record(className:classInstance:selector:)(v0 + v2, v8, v9, v10, v11, v12, v13, v14);
}

Swift::Void __swiftcall Chronicle.dumpReport()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v0[OBJC_IVAR___WOChronicle_recordingQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in Chronicle.dumpReport();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6_5;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_10(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v14);
}

void closure #1 in Chronicle.dumpReport()(uint64_t a1)
{
  v2 = type metadata accessor for Chronicle.Entry();
  v3 = *(v2 - 8);
  v72 = v2;
  v73 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v69 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___WOChronicle_entries;
  swift_beginAccess();
  if (!*(*(a1 + v11) + 16))
  {
    if (one-time initialization token for core == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

  v12 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + 16 + 16 * v14;
    v16 = *v15;
    v17 = *(v15 + 8);

    v76 = 0;
    v77 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v76 = v16;
    v77 = v17;
    MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B465970);
    Current = CFAbsoluteTimeGetCurrent();
    if ((*&Current & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (Current <= -1.0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (Current >= 1.84467441e19)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        swift_once();
LABEL_14:
        v41 = type metadata accessor for Logger();
        __swift_project_value_buffer(v41, static WOLog.core);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          v45 = "No Chronicle entries to write";
LABEL_20:
          _os_log_impl(&dword_20AEA4000, v42, v43, v45, v44, 2u);
LABEL_21:
          MEMORY[0x20F2E9420](v44, -1, -1);
          goto LABEL_34;
        }

        goto LABEL_34;
      }

      v65 = v17;
      v66 = v8;
      v67 = v7;
      v74 = Current;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x20F2E6D80](v19);

      MEMORY[0x20F2E6D80](1987273518, 0xE400000000000000);
      v20 = v77;
      v68 = v76;
      v76 = *(a1 + v11);
      swift_bridgeObjectRetain_n();
      specialized MutableCollection<>.sort(by:)(&v76);
      v64 = 0;

      v21 = v76;
      v22 = *(a1 + v11);
      v23 = MEMORY[0x277D84F90];
      *(a1 + v11) = MEMORY[0x277D84F90];

      v24 = v21[2];
      if (!v24)
      {

        v26 = MEMORY[0x277D84F90];
LABEL_23:
        v76 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_10(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
        v47 = BidirectionalCollection<>.joined(separator:)();
        v49 = v48;

        v76 = v47;
        v77 = v49;
        v51 = v68;
        v50 = v69;
        v74 = v68;
        v75 = v20;
        static String.Encoding.utf8.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v52 = v64;
        StringProtocol.write<A>(toFile:atomically:encoding:)();
        if (v52)
        {
          (*(v66 + 8))(v50, v67);

          if (one-time initialization token for core != -1)
          {
            swift_once();
          }

          v53 = type metadata accessor for Logger();
          __swift_project_value_buffer(v53, static WOLog.core);

          v42 = Logger.logObject.getter();
          v54 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v42, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v76 = v56;
            *v55 = 136315138;
            v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v20, &v76);

            *(v55 + 4) = v57;
            _os_log_impl(&dword_20AEA4000, v42, v54, "There was an error writing Chronicle report to %s", v55, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v56);
            MEMORY[0x20F2E9420](v56, -1, -1);
            MEMORY[0x20F2E9420](v55, -1, -1);

            goto LABEL_34;
          }
        }

        else
        {
          (*(v66 + 8))(v50, v67);

          if (one-time initialization token for core != -1)
          {
            swift_once();
          }

          v58 = type metadata accessor for Logger();
          __swift_project_value_buffer(v58, static WOLog.core);

          v42 = Logger.logObject.getter();
          v59 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v42, v59))
          {
            v44 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v76 = v60;
            *v44 = 136315138;
            v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v20, &v76);

            *(v44 + 4) = v61;
            _os_log_impl(&dword_20AEA4000, v42, v59, "Wrote Chronicle report to %s", v44, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v60);
            MEMORY[0x20F2E9420](v60, -1, -1);
            goto LABEL_21;
          }
        }

        goto LABEL_34;
      }

      v63 = v20;
      v74 = v23;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
      v25 = 0;
      v26 = v74;
      v71 = v21 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
      v70 = xmmword_20B423A90;
      while (v25 < v21[2])
      {
        v27 = v21;
        outlined init with copy of Chronicle.Entry(&v71[*(v73 + 72) * v25], v6);
        v76 = 0;
        v77 = 0xE000000000000000;
        Date.timeIntervalSince1970.getter();
        Double.write<A>(to:)();
        MEMORY[0x20F2E6D80](44, 0xE100000000000000);
        v28 = v72;
        MEMORY[0x20F2E6D80](*&v6[v72[5]], *&v6[v72[5] + 8]);
        MEMORY[0x20F2E6D80](44, 0xE100000000000000);
        MEMORY[0x20F2E6D80](*&v6[v28[6]], *&v6[v28[6] + 8]);
        MEMORY[0x20F2E6D80](44, 0xE100000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v29 = swift_allocObject();
        *(v29 + 16) = v70;
        v30 = *&v6[v28[7]];
        *(v29 + 56) = MEMORY[0x277D84D38];
        *(v29 + 64) = MEMORY[0x277D84D90];
        *(v29 + 32) = v30;
        v31 = String.init(format:_:)();
        MEMORY[0x20F2E6D80](v31);

        MEMORY[0x20F2E6D80](44, 0xE100000000000000);
        v32 = NSStringFromSelector(*&v6[v28[8]]);
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        MEMORY[0x20F2E6D80](v33, v35);

        v37 = v76;
        v36 = v77;
        outlined destroy of Chronicle.Entry(v6);
        v74 = v26;
        v39 = v26[2];
        v38 = v26[3];
        if (v39 >= v38 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
          v26 = v74;
        }

        ++v25;
        v26[2] = v39 + 1;
        v40 = &v26[2 * v39];
        v40[4] = v37;
        v40[5] = v36;
        v21 = v27;
        if (v24 == v25)
        {

          v20 = v63;
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static WOLog.core);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "Could not get document directory";
    goto LABEL_20;
  }

LABEL_34:
}

id Chronicle.init()()
{
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v14 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v14);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v13 = OBJC_IVAR___WOChronicle_recordingQueue;
  v9 = type metadata accessor for OS_dispatch_queue();
  v12[1] = "e26NLWorkoutControllerFactory";
  v12[2] = v9;
  static DispatchQoS.utility.getter();
  v16 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_10(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v14);
  *&v0[v13] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR___WOChronicle_entries] = MEMORY[0x277D84F90];
  v10 = type metadata accessor for Chronicle();
  v15.receiver = v0;
  v15.super_class = v10;
  return objc_msgSendSuper2(&v15, sel_init);
}

id Chronicle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Chronicle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for Chronicle.Entry()
{
  result = type metadata singleton initialization cache for Chronicle.Entry;
  if (!type metadata singleton initialization cache for Chronicle.Entry)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Chronicle.Entry()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of Chronicle.Entry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Chronicle.Entry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Chronicle.Entry(uint64_t a1)
{
  v2 = type metadata accessor for Chronicle.Entry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v100 = a1;
  v111 = type metadata accessor for Chronicle.Entry();
  v107 = *(v111 - 8);
  v9 = *(v107 + 64);
  v10 = MEMORY[0x28223BE20](v111);
  v102 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v110 = &v96 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v96 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v96 - v18;
  v109 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_97:
    v5 = *v100;
    if (!*v100)
    {
      goto LABEL_136;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v112 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v109)
      {
        v92 = *(result + 16 * a4);
        v93 = result;
        v94 = *(result + 16 * (a4 - 1) + 40);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v109 + *(v107 + 72) * v92, *v109 + *(v107 + 72) * *(result + 16 * (a4 - 1) + 32), *v109 + *(v107 + 72) * v94, v5);
        if (v6)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = specialized _ArrayBuffer._consumeAndCreateNew()(v93);
        }

        if (a4 - 2 >= *(v93 + 2))
        {
          goto LABEL_124;
        }

        v95 = &v93[16 * a4];
        *v95 = v92;
        *(v95 + 1) = v94;
        v112 = v93;
        specialized Array.remove(at:)(a4 - 1);
        result = v112;
        a4 = *(v112 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v99 = a4;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v103 = v22;
    if (v24 >= v20)
    {
      v30 = v24;
    }

    else
    {
      v25 = *v109;
      v106 = v25;
      v26 = *(v107 + 72);
      v5 = v25 + v26 * v24;
      outlined init with copy of Chronicle.Entry(v5, v19);
      outlined init with copy of Chronicle.Entry(v25 + v26 * v23, v16);
      v27 = static Date.< infix(_:_:)();
      outlined destroy of Chronicle.Entry(v16);
      result = outlined destroy of Chronicle.Entry(v19);
      v98 = v23;
      a4 = v23 + 2;
      v108 = v26;
      v28 = v106 + v26 * (v23 + 2);
      while (v20 != a4)
      {
        outlined init with copy of Chronicle.Entry(v28, v19);
        outlined init with copy of Chronicle.Entry(v5, v16);
        v29 = static Date.< infix(_:_:)() & 1;
        outlined destroy of Chronicle.Entry(v16);
        result = outlined destroy of Chronicle.Entry(v19);
        ++a4;
        v28 += v108;
        v5 += v108;
        if ((v27 & 1) != v29)
        {
          v30 = a4 - 1;
          goto LABEL_11;
        }
      }

      v30 = v20;
      v23 = v98;
      if ((v27 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (v30 < v98)
      {
        goto LABEL_127;
      }

      if (v98 < v30)
      {
        v97 = v6;
        v31 = v108 * (v30 - 1);
        v32 = v30;
        v33 = v30 * v108;
        v106 = v30;
        v34 = v98 * v108;
        do
        {
          if (v23 != --v32)
          {
            v35 = *v109;
            if (!*v109)
            {
              goto LABEL_133;
            }

            v5 = v35 + v34;
            outlined init with take of Chronicle.Entry(v35 + v34, v102);
            if (v34 < v31 || v5 >= v35 + v33)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = outlined init with take of Chronicle.Entry(v102, v35 + v31);
          }

          ++v23;
          v31 -= v108;
          v33 -= v108;
          v34 += v108;
        }

        while (v23 < v32);
        v6 = v97;
        v23 = v98;
        a4 = v99;
        v30 = v106;
      }

      else
      {
LABEL_24:
        a4 = v99;
      }
    }

    v36 = v109[1];
    if (v30 < v36)
    {
      if (__OFSUB__(v30, v23))
      {
        goto LABEL_126;
      }

      if (v30 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_128;
        }

        if ((v23 + a4) >= v36)
        {
          v37 = v109[1];
        }

        else
        {
          v37 = v23 + a4;
        }

        if (v37 < v23)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v30 != v37)
        {
          break;
        }
      }
    }

    v38 = v30;
    if (v30 < v23)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v103;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v103 + 2) + 1, 1, v103);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v39 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v40 = &v22[16 * a4];
    *(v40 + 4) = v23;
    *(v40 + 5) = v38;
    v41 = *v100;
    if (!*v100)
    {
      goto LABEL_135;
    }

    v104 = v38;
    if (a4)
    {
      while (1)
      {
        v42 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v43 = *(v22 + 4);
          v44 = *(v22 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_55:
          if (v46)
          {
            goto LABEL_114;
          }

          v59 = &v22[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_117;
          }

          v65 = &v22[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_121;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v5 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v69 = &v22[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_69:
        if (v64)
        {
          goto LABEL_116;
        }

        v72 = &v22[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_119;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = v42 - 1;
        if (v42 - 1 >= v5)
        {
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
          goto LABEL_129;
        }

        if (!*v109)
        {
          goto LABEL_132;
        }

        v80 = v22;
        v81 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v42 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v109 + *(v107 + 72) * v81, *v109 + *(v107 + 72) * *&v22[16 * v42 + 32], *v109 + *(v107 + 72) * v5, v41);
        if (v6)
        {
        }

        if (v5 < v81)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = specialized _ArrayBuffer._consumeAndCreateNew()(v80);
        }

        if (a4 >= *(v80 + 2))
        {
          goto LABEL_111;
        }

        v82 = &v80[16 * a4];
        *(v82 + 4) = v81;
        *(v82 + 5) = v5;
        v112 = v80;
        result = specialized Array.remove(at:)(v42);
        v22 = v112;
        v5 = *(v112 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v22[16 * v5 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_112;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_113;
      }

      v54 = &v22[16 * v5];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_115;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_118;
      }

      if (v58 >= v50)
      {
        v76 = &v22[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_122;
        }

        if (v45 < v79)
        {
          v42 = v5 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v20 = v109[1];
    v21 = v104;
    a4 = v99;
    if (v104 >= v20)
    {
      goto LABEL_97;
    }
  }

  v97 = v6;
  v98 = v23;
  v83 = *v109;
  v84 = *(v107 + 72);
  v85 = *v109 + v84 * (v30 - 1);
  v86 = -v84;
  v87 = v23 - v30;
  v106 = v30;
  v101 = v84;
  a4 = v83 + v30 * v84;
  v104 = v37;
LABEL_87:
  v5 = a4;
  v105 = v87;
  v108 = v85;
  v88 = v85;
  while (1)
  {
    outlined init with copy of Chronicle.Entry(v5, v19);
    outlined init with copy of Chronicle.Entry(v88, v16);
    v89 = static Date.< infix(_:_:)();
    outlined destroy of Chronicle.Entry(v16);
    result = outlined destroy of Chronicle.Entry(v19);
    if ((v89 & 1) == 0)
    {
LABEL_86:
      v85 = v108 + v101;
      v87 = v105 - 1;
      a4 += v101;
      v38 = v104;
      if (++v106 != v104)
      {
        goto LABEL_87;
      }

      v6 = v97;
      v23 = v98;
      if (v104 < v98)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v83)
    {
      break;
    }

    v90 = v110;
    outlined init with take of Chronicle.Entry(v5, v110);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of Chronicle.Entry(v90, v88);
    v88 += v86;
    v5 += v86;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t outlined init with take of Chronicle.Entry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Chronicle.Entry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double SegmentDistanceAccumulator.segmentStartDistance.getter()
{
  v1 = OBJC_IVAR___WOSegmentDistanceAccumulator_segmentStartDistance;
  swift_beginAccess();
  return *(v0 + v1);
}

void SegmentDistanceAccumulator.segmentStartDistance.setter(double a1)
{
  v3 = OBJC_IVAR___WOSegmentDistanceAccumulator_segmentStartDistance;
  swift_beginAccess();
  *(v1 + v3) = a1;
  SegmentDistanceAccumulator._updateInternalQuantity()();
}

void (*SegmentDistanceAccumulator.segmentStartDistance.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SegmentDistanceAccumulator.segmentStartDistance.modify;
}

void SegmentDistanceAccumulator.segmentStartDistance.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    SegmentDistanceAccumulator._updateInternalQuantity()();
  }
}

void key path setter for SegmentDistanceAccumulator.distance : SegmentDistanceAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id SegmentDistanceAccumulator.distance.getter()
{
  v1 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SegmentDistanceAccumulator.distance.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void SegmentDistanceAccumulator._updateInternalQuantity()()
{
  v1 = [objc_opt_self() meterUnit];
  v2 = *&v0[OBJC_IVAR___WOSegmentDistanceAccumulator_lastReceivedDistance];
  v3 = OBJC_IVAR___WOSegmentDistanceAccumulator_segmentStartDistance;
  swift_beginAccess();
  if (v2 - *&v0[v3] > 0.0)
  {
    v4 = v2 - *&v0[v3];
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [objc_opt_self() quantityWithUnit:v1 doubleValue:v4];

  v6 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v7 = *&v0[v6];
  *&v0[v6] = v5;

  v8 = [v0 updateHandler];
  if (v8)
  {
    v9 = v8;
    (*(v8 + 2))();
    _Block_release(v9);
  }
}

id SegmentDistanceAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SegmentDistanceAccumulator.init()()
{
  *&v0[OBJC_IVAR___WOSegmentDistanceAccumulator_segmentStartDistance] = 0;
  v1 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  v2 = [objc_opt_self() meterUnit];
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:0.0];

  *&v0[v1] = v3;
  *&v0[OBJC_IVAR___WOSegmentDistanceAccumulator_lastReceivedDistance] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SegmentDistanceAccumulator();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SegmentDistanceAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentDistanceAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double SegmentElapsedTimeAccumulator.segmentStartDuration.getter()
{
  v1 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

void SegmentElapsedTimeAccumulator.segmentStartDuration.setter(double a1)
{
  v3 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  swift_beginAccess();
  *&v1[v3] = a1;
  if (*&v1[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - a1 > 0.0)
  {
    v4 = *&v1[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - a1;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  *&v1[v5] = v4;
  v6 = [v1 updateHandler];
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))();
    _Block_release(v7);
  }
}

void (*SegmentElapsedTimeAccumulator.segmentStartDuration.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return SegmentElapsedTimeAccumulator.segmentStartDuration.modify;
}

void SegmentElapsedTimeAccumulator.segmentStartDuration.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = *&v5[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - *&v5[v4] > 0.0 ? *&v5[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - *&v5[v4] : 0.0;
    v7 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
    swift_beginAccess();
    *&v5[v7] = v6;
    v8 = [v5 updateHandler];
    if (v8)
    {
      v9 = v8;
      (*(v8 + 2))();
      _Block_release(v9);
    }
  }

  free(v3);
}

double SegmentElapsedTimeAccumulator.duration.getter()
{
  v1 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SegmentElapsedTimeAccumulator.duration.setter(double a1)
{
  v3 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Void __swiftcall SegmentElapsedTimeAccumulator.updateDuration(_:)(Swift::Double a1)
{
  *&v1[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] = a1;
  v3 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  swift_beginAccess();
  if (a1 - *&v1[v3] > 0.0)
  {
    v4 = a1 - *&v1[v3];
  }

  else
  {
    v4 = 0.0;
  }

  v5 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  *&v1[v5] = v4;
  v6 = [v1 updateHandler];
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))();
    _Block_release(v7);
  }
}

Swift::Double __swiftcall SegmentElapsedTimeAccumulator.duration(at:)(Swift::Double at)
{
  v3 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  swift_beginAccess();
  result = at - *(v1 + v3);
  if (result <= 0.0)
  {
    return 0.0;
  }

  return result;
}

id SegmentElapsedTimeAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SegmentElapsedTimeAccumulator.init()()
{
  *&v0[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration] = 0;
  *&v0[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] = 0;
  *&v0[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentElapsedTimeAccumulator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SegmentElapsedTimeAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentElapsedTimeAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double keypath_getTm_5@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

double SegmentPaceAccumulator.pace.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSegmentPaceAccumulator_duration);
  if (v1 > 0.0 && *(v0 + OBJC_IVAR___WOSegmentPaceAccumulator_distance) > 0.0)
  {
    if (v1 - *(v0 + OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration) < 10.0)
    {
      v2 = *(v0 + OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration);
    }

    JUMPOUT(0x20F2E8430);
  }

  return 0.0;
}

id SegmentPaceAccumulator.__allocating_init(builder:activityType:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
  *&v5[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
  *&v5[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
  *&v5[OBJC_IVAR___WOSegmentPaceAccumulator_paceForceCalculationTimeout] = 0x4024000000000000;
  v6 = [a2 effectiveTypeIdentifier];
  *&v5[OBJC_IVAR___WOSegmentPaceAccumulator_activityType] = v6;
  v9.receiver = v5;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_initWithBuilder_, a1);

  return v7;
}

id SegmentPaceAccumulator.init(builder:activityType:)(void *a1, id a2)
{
  *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
  *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
  *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
  *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_paceForceCalculationTimeout] = 0x4024000000000000;
  v5 = [a2 effectiveTypeIdentifier];
  *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_activityType] = v5;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for SegmentPaceAccumulator();
  v6 = objc_msgSendSuper2(&v8, sel_initWithBuilder_, a1);

  return v6;
}

Swift::Void __swiftcall SegmentPaceAccumulator.updateDistance(_:duration:)(Swift::Double _, Swift::Double duration)
{
  v3 = *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_distance];
  if (v3 < _)
  {
    *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = _;
  }

  if (*&v2[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] >= duration)
  {
    v4 = &v2[OBJC_IVAR___WOSegmentPaceAccumulator_duration];
    if (*&v2[OBJC_IVAR___WOSegmentPaceAccumulator_duration] >= duration)
    {
      if (v3 >= _)
      {
        return;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = duration;
  v4 = &v2[OBJC_IVAR___WOSegmentPaceAccumulator_duration];
  if (*&v2[OBJC_IVAR___WOSegmentPaceAccumulator_duration] < duration)
  {
LABEL_7:
    *v4 = duration;
  }

LABEL_8:
  v5 = [v2 updateHandler];
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))();

    _Block_release(v6);
  }
}

Swift::Void __swiftcall SegmentPaceAccumulator.updateDuration(_:)(Swift::Double a1)
{
  if (*&v1[OBJC_IVAR___WOSegmentPaceAccumulator_duration] >= a1)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.app);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v5, "PaceAccumulator updated duration is less than prior duration, ignoring", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }
  }

  else
  {
    *&v1[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = a1;
    if (a1 - *&v1[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] >= 10.0)
    {
      v2 = [v1 updateHandler];
      if (v2)
      {
        v3 = v2;
        (*(v2 + 2))();

        _Block_release(v3);
      }
    }
  }
}

Swift::Void __swiftcall SegmentPaceAccumulator.reset()()
{
  *&v0[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
  *&v0[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
  *&v0[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
  v1 = [v0 updateHandler];
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))();

    _Block_release(v2);
  }
}

id SegmentPaceAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id SegmentPaceAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentPaceAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SegmentAccumulator.completedSegments.getter()
{
  v1 = OBJC_IVAR___WOSegmentAccumulator_completedSegments;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t key path setter for SegmentAccumulator.completedSegments : SegmentAccumulator(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOSegmentAccumulator_completedSegments;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

void *SegmentAccumulator.averagePowerAccumulator.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSegmentAccumulator_averagePowerAccumulator);
  v2 = v1;
  return v1;
}

id SegmentAccumulator.__allocating_init(builder:activityType:configuration:powerAccumulator:)(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR___WOSegmentAccumulator_completedSegments] = MEMORY[0x277D84F90];
  *&v10[OBJC_IVAR___WOSegmentAccumulator_builder] = a1;
  v11 = objc_allocWithZone(type metadata accessor for SegmentDistanceAccumulator());
  v12 = a1;
  v13 = [v11 init];
  *&v10[OBJC_IVAR___WOSegmentAccumulator_distanceAccumulator] = v13;
  *&v10[OBJC_IVAR___WOSegmentAccumulator_elapsedTimeAccumulator] = [objc_allocWithZone(type metadata accessor for SegmentElapsedTimeAccumulator()) init];
  *&v10[OBJC_IVAR___WOSegmentAccumulator_energyAccumulator] = [objc_allocWithZone(type metadata accessor for SegmentEnergyAccumulator()) init];
  v14 = type metadata accessor for SegmentPaceAccumulator();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_paceForceCalculationTimeout] = 0x4024000000000000;
  v16 = v12;
  v17 = a2;
  v18 = [v17 effectiveTypeIdentifier];
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_activityType] = v18;
  v29.receiver = v15;
  v29.super_class = v14;
  v19 = objc_msgSendSuper2(&v29, sel_initWithBuilder_, v16);

  *&v10[OBJC_IVAR___WOSegmentAccumulator_paceAccumulator] = v19;
  if (!a4)
  {
    goto LABEL_5;
  }

  v27[3] = &type metadata for WorkoutFeatures;
  v27[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v27[0]) = 1;
  v20 = a4;
  v21 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_14(v27);
  if ((v21 & 1) == 0)
  {

LABEL_5:
    v23 = 0;
    goto LABEL_6;
  }

  v22 = objc_allocWithZone(type metadata accessor for AveragePowerAccumulator());
  v23 = AveragePowerAccumulator.init(powerAccumulator:)(v20);
LABEL_6:
  *&v10[OBJC_IVAR___WOSegmentAccumulator_averagePowerAccumulator] = v23;
  *&v10[OBJC_IVAR___WOSegmentAccumulator_configuration] = a3;
  v28.receiver = v10;
  v28.super_class = v5;
  v24 = a3;
  v25 = objc_msgSendSuper2(&v28, sel_init);

  return v25;
}

id SegmentAccumulator.init(builder:activityType:configuration:powerAccumulator:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = specialized SegmentAccumulator.init(builder:activityType:configuration:powerAccumulator:)(a1, a2, a3, a4);

  return v8;
}

Swift::Void __swiftcall SegmentAccumulator.endCurrentSegment(currentElapsedTime:)(Swift::Double currentElapsedTime)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v2[OBJC_IVAR___WOSegmentAccumulator_elapsedTimeAccumulator];
  *&v9[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] = currentElapsedTime;
  v10 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  swift_beginAccess();
  if (currentElapsedTime - *&v9[v10] > 0.0)
  {
    v11 = currentElapsedTime - *&v9[v10];
  }

  else
  {
    v11 = 0.0;
  }

  v12 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  *&v9[v12] = v11;
  v13 = [v9 updateHandler];
  if (v13)
  {
    v14 = v13;
    (*(v13 + 2))();
    _Block_release(v14);
  }

  v15 = [objc_allocWithZone(NLSessionActivitySegmentMarker) init];
  [v15 setSegmentIndex_];
  [v15 setDuration_];
  v16 = *&v2[OBJC_IVAR___WOSegmentAccumulator_distanceAccumulator];
  v17 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v18 = *(v16 + v17);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 meterUnit];
  [v20 doubleValueForUnit_];
  v23 = v22;

  v24 = *&v2[OBJC_IVAR___WOSegmentAccumulator_paceAccumulator];
  v25 = *(v24 + OBJC_IVAR___WOSegmentPaceAccumulator_duration);
  if (v25 - *(v24 + OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration) < 10.0)
  {
    v26 = 0.0;
    if (v25 > 0.0 && *(v24 + OBJC_IVAR___WOSegmentPaceAccumulator_distance) > 0.0)
    {
      v26 = MEMORY[0x20F2E8430]();
    }

    [v15 duration];
    v23 = v26 * v27;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v60 == 1 && v23 > 0.0)
  {
    v28 = fmod(v23, 100.0);
    if (v28 < 5.0 || v28 > 95.0)
    {
      v23 = round(v23 / 100.0) * 100.0;
    }
  }

  v29 = [v19 meterUnit];
  v30 = objc_opt_self();
  v31 = [v30 quantityWithUnit:v29 doubleValue:v23];

  [v15 setDistance_];
  v32 = *&v2[OBJC_IVAR___WOSegmentAccumulator_energyAccumulator];
  v33 = OBJC_IVAR___WOSegmentEnergyAccumulator_activeEnergyBurned;
  swift_beginAccess();
  [v15 setActiveEnergyBurn_];
  v34 = OBJC_IVAR___WOSegmentEnergyAccumulator_totalEnergyBurned;
  swift_beginAccess();
  [v15 setTotalEnergyBurn_];
  v35 = *&v2[OBJC_IVAR___WOSegmentAccumulator_averagePowerAccumulator];
  if (v35)
  {
    v36 = [v19 wattUnit];
    v37 = *(v35 + OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator);
    v38 = *(v37 + 24);
    if (v38 < 1)
    {
      v39 = 0.0;
    }

    else
    {
      v39 = *(v37 + 16) / v38;
    }

    v40 = [v30 quantityWithUnit:v36 doubleValue:v39];
  }

  else
  {
    v40 = 0;
  }

  [v15 setAveragePower_];

  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v8, v4);
  [v15 setSegmentEndDate_];

  v42 = OBJC_IVAR___WOSegmentAccumulator_completedSegments;
  swift_beginAccess();
  v43 = v15;
  MEMORY[0x20F2E6F30]();
  if (*((*&v2[v42] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v42] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v57 = *((*&v2[v42] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static WOLog.app);
  v45 = v43;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v59 = v49;
    *v48 = 136315138;
    v50 = [v45 metadataFromSegmentMarker];
    if (v50)
    {
      v51 = v50;
      v52 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v52 = 0;
    }

    v58 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
    v53 = Optional.description.getter();
    v55 = v54;

    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v59);

    *(v48 + 4) = v56;
    _os_log_impl(&dword_20AEA4000, v46, v47, "Ended segment=%s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_14(v49);
    MEMORY[0x20F2E9420](v49, -1, -1);
    MEMORY[0x20F2E9420](v48, -1, -1);
  }

  SegmentAccumulator.assignSegmentStartValues()();
}

Swift::Void __swiftcall SegmentAccumulator.recoverSegmentMarkers(from:)(Swift::OpaquePointer from)
{
  v64 = type metadata accessor for DateInterval();
  v60 = *(v64 - 8);
  v2 = *(v60 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = v59 - v6;
  if (one-time initialization token for app != -1)
  {
LABEL_72:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static WOLog.app);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_20AEA4000, v8, v9, "Recovering segment marker events", v10, 2u);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  v67[0] = MEMORY[0x277D84F90];
  if (from._rawValue >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v12 = 0;
    do
    {
      if ((from._rawValue & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x20F2E7A20](v12, from._rawValue);
      }

      else
      {
        if (v12 >= *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v13 = *(from._rawValue + v12 + 4);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      if ([v13 type] == 4)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v16 = *(v67[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v12;
    }

    while (v15 != v11);
    v17 = v67[0];
    v68 = MEMORY[0x277D84F90];
    if ((v67[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
    v68 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_20:
      if ((v17 & 0x4000000000000000) == 0)
      {
        from._rawValue = *(v17 + 16);
        goto LABEL_22;
      }
    }
  }

  from._rawValue = __CocoaSet.count.getter();
LABEL_22:
  v18 = MEMORY[0x277D84F90];
  if (from._rawValue)
  {
    v19 = 0;
    v65 = *MEMORY[0x277D0A710];
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x20F2E7A20](v19, v17);
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          goto LABEL_71;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        goto LABEL_70;
      }

      v23 = [v20 metadata];
      if (!v23)
      {
        goto LABEL_36;
      }

      v24 = v23;
      v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v25 + 16))
      {
        break;
      }

      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        goto LABEL_35;
      }

      outlined init with copy of Any(*(v25 + 56) + 32 * v28, v67);

      _sSo8NSNumberCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_36;
      }

      v31 = v66;
      v32 = [v66 integerValue];

      if (v32 != 1)
      {
        goto LABEL_36;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v33 = *(v68 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_37:
      ++v19;
      if (v22 == from._rawValue)
      {
        v34 = v68;
        v18 = MEMORY[0x277D84F90];
        goto LABEL_41;
      }
    }

LABEL_35:

LABEL_36:

    goto LABEL_37;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_41:

  v67[0] = v18;
  if (v34 < 0 || (v34 & 0x4000000000000000) != 0)
  {
    v65 = __CocoaSet.count.getter();
  }

  else
  {
    v65 = *(v34 + 16);
  }

  from._rawValue = 0;
  v61 = v34 & 0xC000000000000001;
  v35 = (v60 + 8);
  v60 = MEMORY[0x277D84F90];
  while (v65 != from._rawValue)
  {
    if (v61)
    {
      v39 = MEMORY[0x20F2E7A20](from._rawValue, v34);
    }

    else
    {
      if (from._rawValue >= *(v34 + 16))
      {
        goto LABEL_67;
      }

      v39 = *(v34 + 8 * from._rawValue + 32);
    }

    v40 = v39;
    v41 = from._rawValue + 1;
    if (__OFADD__(from._rawValue, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v42 = [v39 metadata];
    if (v42)
    {
      v43 = v42;
      v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v44 = 0;
    }

    v45 = [v40 dateInterval];
    v46 = v63;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = v62;
    DateInterval.end.getter();
    v48 = v47;
    (*v35)(v46, v64);
    v49 = type metadata accessor for Date();
    v50 = *(v49 - 8);
    (*(v50 + 56))(v48, 0, 1, v49);
    if (v44)
    {
      v51.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v51.super.isa = 0;
    }

    if ((*(v50 + 48))(v48, 1, v49) == 1)
    {
      v37.super.isa = 0;
    }

    else
    {
      v36 = v48;
      v37.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v50 + 8))(v36, v49);
    }

    v38 = [objc_opt_self() markerFromMetadata:v51.super.isa segmentEndDate:v37.super.isa];

    ++from._rawValue;
    if (v38)
    {
      MEMORY[0x20F2E6F30]();
      if (*((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v52 = *((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v60 = v67[0];
      from._rawValue = v41;
    }
  }

  v67[0] = specialized Array._copyToContiguousArray()(v53);
  v54 = v59[1];
  specialized MutableCollection<>.sort(by:)(v67);
  if (v54)
  {

    __break(1u);
  }

  else
  {

    v55 = v67[0];
    v56 = OBJC_IVAR___WOSegmentAccumulator_completedSegments;
    v57 = v59[2];
    swift_beginAccess();
    v58 = *(v57 + v56);
    *(v57 + v56) = v55;

    SegmentAccumulator.assignSegmentStartValues()();
  }
}

id SegmentAccumulator.assignSegmentStartValues()()
{
  v6 = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v127 = &v120 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v124 = &v120 - v15;
  MEMORY[0x28223BE20](v14);
  v125 = &v120 - v16;
  v126 = *&v0[OBJC_IVAR___WOSegmentAccumulator_distanceAccumulator];
  v17 = OBJC_IVAR___WOSegmentAccumulator_completedSegments;
  swift_beginAccess();
  v130 = v17;
  v18 = *(v6 + v17);
  v123 = v11;
  if (v18 >> 62)
  {
    goto LABEL_112;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v20 = MEMORY[0x277D84F90];
    v129 = v6;
    if (i)
    {
      break;
    }

LABEL_16:
    v29 = *(v20 + 16);
    if (!v29)
    {
      v31 = 0.0;
      goto LABEL_25;
    }

    if (v29 <= 3)
    {
      v30 = 0;
      v31 = 0.0;
LABEL_23:
      v35 = v29 - v30;
      v36 = (v20 + 8 * v30 + 32);
      do
      {
        v37 = *v36++;
        v31 = v31 + v37;
        --v35;
      }

      while (v35);
      goto LABEL_25;
    }

    v30 = v29 & 0x7FFFFFFFFFFFFFFCLL;
    v32 = (v20 + 48);
    v31 = 0.0;
    v33 = v29 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v34 = *v32;
      v31 = v31 + *(v32 - 2) + *(v32 - 1) + *v32 + v32[1];
      v32 += 4;
      v33 -= 4;
    }

    while (v33);
    if (v29 != v30)
    {
      goto LABEL_23;
    }

LABEL_25:

    v11 = OBJC_IVAR___WOSegmentDistanceAccumulator_segmentStartDistance;
    v38 = v126;
    swift_beginAccess();
    v122 = v11;
    *&v11[v38] = v31;
    SegmentDistanceAccumulator._updateInternalQuantity()();
    v128 = *(v6 + OBJC_IVAR___WOSegmentAccumulator_energyAccumulator);
    v18 = *(v6 + v130);
    if (v18 >> 62)
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        v96 = *(v6 + v130);
      }

      i = __CocoaSet.count.getter();
    }

    else
    {
      i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = MEMORY[0x277D84F90];
    if (i)
    {
      v137 = MEMORY[0x277D84F90];
      v6 = (i & ~(i >> 63));

      v21 = &v137;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      if (i < 0)
      {
        goto LABEL_143;
      }

      v3 = 0;
      v39 = v137;
      v2 = v18 & 0xC000000000000001;
      v131 = v18 & 0xFFFFFFFFFFFFFF8;
      v1 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      while (1)
      {
        v11 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v2)
        {
          v40 = MEMORY[0x20F2E7A20](v3, v18);
        }

        else
        {
          if (v3 >= *(v131 + 16))
          {
            goto LABEL_110;
          }

          v40 = *(v18 + 8 * v3 + 32);
        }

        v41 = v40;
        result = [v40 activeEnergyBurn];
        if (!result)
        {
          goto LABEL_152;
        }

        v42 = result;
        v5 = [objc_opt_self() kilocalorieUnit];
        [v42 doubleValueForUnit_];
        v44 = v43;

        v137 = v39;
        v4 = *(v39 + 16);
        v45 = *(v39 + 24);
        v6 = (v4 + 1);
        if (v4 >= v45 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v4 + 1, 1);
          v39 = v137;
        }

        *(v39 + 16) = v6;
        *(v39 + 8 * v4 + 32) = v44;
        ++v3;
        if (v11 == i)
        {

          v6 = v129;
          goto LABEL_40;
        }
      }

LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

LABEL_40:
    v46 = *(v39 + 16);
    if (!v46)
    {
      v48 = 0.0;
      goto LABEL_49;
    }

    if (v46 <= 3)
    {
      v47 = 0;
      v48 = 0.0;
LABEL_47:
      v52 = v46 - v47;
      v53 = (v39 + 8 * v47 + 32);
      do
      {
        v54 = *v53++;
        v48 = v48 + v54;
        --v52;
      }

      while (v52);
      goto LABEL_49;
    }

    v47 = v46 & 0x7FFFFFFFFFFFFFFCLL;
    v49 = (v39 + 48);
    v48 = 0.0;
    v50 = v46 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v51 = *v49;
      v48 = v48 + *(v49 - 2) + *(v49 - 1) + *v49 + v49[1];
      v49 += 4;
      v50 -= 4;
    }

    while (v50);
    if (v46 != v47)
    {
      goto LABEL_47;
    }

LABEL_49:

    v55 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartActiveEnergyBurned;
    v11 = v128;
    swift_beginAccess();
    *&v11[v55] = v48;
    v18 = *(v6 + v130);
    v121 = v55;
    if (v18 >> 62)
    {
      i = __CocoaSet.count.getter();
    }

    else
    {
      i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v56 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_64:
      v63 = *(v56 + 16);
      if (v63)
      {
        if (v63 <= 3)
        {
          v64 = 0;
          v65 = 0.0;
          goto LABEL_71;
        }

        v64 = v63 & 0x7FFFFFFFFFFFFFFCLL;
        v66 = (v56 + 48);
        v65 = 0.0;
        v67 = v63 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v68 = *v66;
          v65 = v65 + *(v66 - 2) + *(v66 - 1) + *v66 + v66[1];
          v66 += 4;
          v67 -= 4;
        }

        while (v67);
        if (v63 != v64)
        {
LABEL_71:
          v69 = v63 - v64;
          v70 = (v56 + 8 * v64 + 32);
          do
          {
            v71 = *v70++;
            v65 = v65 + v71;
            --v69;
          }

          while (v69);
        }
      }

      else
      {
        v65 = 0.0;
      }

      v5 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartTotalEnergyBurned;
      v11 = v128;
      swift_beginAccess();
      *&v5[v11] = v65;
      v3 = *(v6 + OBJC_IVAR___WOSegmentAccumulator_elapsedTimeAccumulator);
      v18 = *(v6 + v130);
      if (v18 >> 62)
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          v97 = *(v6 + v130);
        }

        i = __CocoaSet.count.getter();
      }

      else
      {
        i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v72 = MEMORY[0x277D84F90];
      if (i)
      {
        v135 = MEMORY[0x277D84F90];
        v6 = (i & ~(i >> 63));

        v21 = &v135;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
        if ((i & 0x8000000000000000) == 0)
        {
          v4 = 0;
          v72 = v135;
          do
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v73 = MEMORY[0x20F2E7A20](v4, v18);
            }

            else
            {
              v73 = *(v18 + 8 * v4 + 32);
            }

            v74 = v73;
            [v73 duration];
            v76 = v75;

            v135 = v72;
            v2 = *(v72 + 16);
            v77 = *(v72 + 24);
            if (v2 >= v77 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v2 + 1, 1);
              v72 = v135;
            }

            ++v4;
            *(v72 + 16) = v2 + 1;
            *(v72 + 8 * v2 + 32) = v76;
          }

          while (i != v4);

          v6 = v129;
          goto LABEL_85;
        }

LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

LABEL_85:
      v78 = *(v72 + 16);
      v79 = 0.0;
      v80 = 0.0;
      i = v127;
      if (v78)
      {
        if (v78 <= 3)
        {
          v81 = 0;
          goto LABEL_91;
        }

        v81 = v78 & 0x7FFFFFFFFFFFFFFCLL;
        v82 = (v72 + 48);
        v83 = v78 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v84 = *v82;
          v80 = v80 + *(v82 - 2) + *(v82 - 1) + *v82 + v82[1];
          v82 += 4;
          v83 -= 4;
        }

        while (v83);
        if (v78 != v81)
        {
LABEL_91:
          v85 = v78 - v81;
          v86 = (v72 + 8 * v81 + 32);
          do
          {
            v87 = *v86++;
            v80 = v80 + v87;
            --v85;
          }

          while (v85);
        }
      }

      v1 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
      swift_beginAccess();
      *(v1 + v3) = v80;
      if (*&v3[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - v80 > 0.0)
      {
        v79 = *&v3[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - v80;
      }

      v88 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
      swift_beginAccess();
      *&v3[v88] = v79;
      v89 = [v3 updateHandler];
      if (v89)
      {
        v90 = v89;
        (*(v89 + 2))();
        _Block_release(v90);
      }

      v91 = *(v6 + OBJC_IVAR___WOSegmentAccumulator_paceAccumulator);
      *&v91[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
      *&v91[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
      *&v91[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
      v92 = [v91 updateHandler];
      if (v92)
      {
        v93 = v92;
        (*(v92 + 2))();
        _Block_release(v93);
      }

      v21 = *(v6 + v130);
      v11 = v124;
      if (!(v21 >> 62))
      {
        v94 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v94)
        {
          goto LABEL_101;
        }

LABEL_123:
        v95 = 0;
LABEL_124:
        v131 = v1;
        v99 = [v95 segmentEndDate];

        if (v99)
        {
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v100 = 0;
        }

        else
        {
          v100 = 1;
        }

        v101 = v125;
        v4 = type metadata accessor for Date();
        v129 = *(v4 - 8);
        v129[7](v11, v100, 1, v4);
        outlined init with take of Date?(v11, v101);
        if (*(v6 + OBJC_IVAR___WOSegmentAccumulator_averagePowerAccumulator))
        {
          AveragePowerAccumulator.reset(with:)(v101);
        }

        v11 = v5;
        if (one-time initialization token for app != -1)
        {
          swift_once();
        }

        v102 = type metadata accessor for Logger();
        __swift_project_value_buffer(v102, static WOLog.app);
        outlined init with copy of Date?(v101, i);
        v1 = v6;
        v2 = Logger.logObject.getter();
        LOBYTE(v5) = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v2, v5))
        {
          i = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v134 = v18;
          *i = 134219266;
          v103 = *(v6 + v130);
          if (!(v103 >> 62))
          {
            v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_134;
          }

LABEL_150:
          v104 = __CocoaSet.count.getter();
LABEL_134:
          v105 = v123;
          *(i + 4) = v104;

          *(i + 12) = 2048;
          *(i + 14) = *&v122[v126];
          *(i + 22) = 2048;
          v106 = v128;
          *(i + 24) = *&v128[v121];
          *(i + 32) = 2048;
          *(i + 34) = *&v11[v106];
          *(i + 42) = 2048;
          *(i + 44) = *&v3[v131];
          *(i + 52) = 2080;
          outlined init with copy of Date?(v127, v105);
          v107 = v129;
          if ((v129[6])(v105, 1, v4) == 1)
          {
            outlined destroy of Date?(v105);
            v108 = 0;
            v109 = 0;
          }

          else
          {
            if (one-time initialization token for logDateFormatter != -1)
            {
              swift_once();
            }

            v111 = static WOLog.logDateFormatter;
            v112 = v105;
            isa = Date._bridgeToObjectiveC()().super.isa;
            v114 = [v111 stringFromDate_];

            v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v109 = v115;

            (v107[1])(v112, v4);
          }

          v132 = v108;
          v133 = v109;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v116 = Optional.description.getter();
          v118 = v117;
          outlined destroy of Date?(v127);

          v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v118, &v134);

          *(i + 54) = v119;
          _os_log_impl(&dword_20AEA4000, v2, v5, "SegmentAccumulator: (new segment) completedSegments: %ld, segmentStartDistance %f, segmentStartActiveEnergyBurned: %f, segmentStartTotalEnergyBurned: %f, segmentStartDuration: %f, newSegmentStartDate: %s", i, 0x3Eu);
          __swift_destroy_boxed_opaque_existential_1Tm_14(v18);
          MEMORY[0x20F2E9420](v18, -1, -1);
          MEMORY[0x20F2E9420](i, -1, -1);

          v110 = v125;
        }

        else
        {

          outlined destroy of Date?(i);
          v110 = v101;
        }

        return outlined destroy of Date?(v110);
      }

      if (v21 < 0)
      {
        v98 = *(v6 + v130);
      }

      v94 = __CocoaSet.count.getter();
      if (!v94)
      {
        goto LABEL_123;
      }

LABEL_101:
      v18 = v94 - 1;
      if (__OFSUB__(v94, 1))
      {
        goto LABEL_146;
      }

      if ((v21 & 0xC000000000000001) != 0)
      {
LABEL_147:

        v95 = MEMORY[0x20F2E7A20](v18, v21);

        goto LABEL_124;
      }

      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v18 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v95 = *(v21 + 8 * v18 + 32);
        goto LABEL_124;
      }

      __break(1u);
      goto LABEL_150;
    }

    v136 = MEMORY[0x277D84F90];
    v6 = (i & ~(i >> 63));

    v21 = &v136;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    if (i < 0)
    {
      goto LABEL_144;
    }

    v3 = 0;
    v56 = v136;
    v2 = v18 & 0xC000000000000001;
    v131 = v18 & 0xFFFFFFFFFFFFFF8;
    v1 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
    while (1)
    {
      v11 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v2)
      {
        v57 = MEMORY[0x20F2E7A20](v3, v18);
      }

      else
      {
        if (v3 >= *(v131 + 16))
        {
          goto LABEL_111;
        }

        v57 = *(v18 + 8 * v3 + 32);
      }

      v58 = v57;
      result = [v57 totalEnergyBurn];
      if (!result)
      {
        goto LABEL_153;
      }

      v59 = result;
      v5 = [objc_opt_self() kilocalorieUnit];
      [v59 doubleValueForUnit_];
      v61 = v60;

      v136 = v56;
      v4 = *(v56 + 16);
      v62 = *(v56 + 24);
      v6 = (v4 + 1);
      if (v4 >= v62 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v4 + 1, 1);
        v56 = v136;
      }

      *(v56 + 16) = v6;
      *(v56 + 8 * v4 + 32) = v61;
      ++v3;
      if (v11 == i)
      {

        v6 = v129;
        goto LABEL_64;
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    ;
  }

  v138 = MEMORY[0x277D84F90];
  v6 = (i & ~(i >> 63));

  v21 = &v138;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  if (i < 0)
  {
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v3 = 0;
  v20 = v138;
  v1 = (v18 & 0xC000000000000001);
  v131 = v18 & 0xFFFFFFFFFFFFFF8;
  v2 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
  while (1)
  {
    v11 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_107;
    }

    if (v1)
    {
      v22 = MEMORY[0x20F2E7A20](v3, v18);
    }

    else
    {
      if (v3 >= *(v131 + 16))
      {
        goto LABEL_109;
      }

      v22 = *(v18 + 8 * v3 + 32);
    }

    v23 = v22;
    result = [v22 distance];
    if (!result)
    {
      break;
    }

    v25 = result;
    v5 = [objc_opt_self() meterUnit];
    [v25 doubleValueForUnit_];
    v27 = v26;

    v138 = v20;
    v4 = *(v20 + 16);
    v28 = *(v20 + 24);
    v6 = (v4 + 1);
    if (v4 >= v28 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v4 + 1, 1);
      v20 = v138;
    }

    *(v20 + 16) = v6;
    *(v20 + 8 * v4 + 32) = v27;
    ++v3;
    if (v11 == i)
    {

      v6 = v129;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
  return result;
}

id SegmentAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SegmentAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double @objc SegmentAccumulator.segmentActiveEnergyBurned.getter(char *a1, uint64_t a2, void *a3, uint64_t *a4, SEL *a5)
{
  v7 = *&a1[*a3];
  v8 = *a4;
  swift_beginAccess();
  v9 = *(v7 + v8);
  v10 = objc_opt_self();
  v11 = a1;
  v12 = v9;
  v13 = [v10 *a5];
  [v12 doubleValueForUnit_];
  v15 = v14;

  return v15;
}

double SegmentAccumulator.segmentActiveEnergyBurned.getter(void *a1, uint64_t *a2, SEL *a3)
{
  v5 = *(v3 + *a1);
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 *a3];
  [v9 doubleValueForUnit_];
  v12 = v11;

  return v12;
}

double SegmentAccumulator.segmentDuration.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSegmentAccumulator_elapsedTimeAccumulator);
  v2 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  return *(v1 + v2);
}

double SegmentAccumulator.segmentPace.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSegmentAccumulator_paceAccumulator);
  v2 = *(v1 + OBJC_IVAR___WOSegmentPaceAccumulator_duration);
  if (v2 > 0.0 && *(v1 + OBJC_IVAR___WOSegmentPaceAccumulator_distance) > 0.0)
  {
    if (v2 - *(v1 + OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration) < 10.0)
    {
      v3 = *(v1 + OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration);
    }

    JUMPOUT(0x20F2E8430);
  }

  return 0.0;
}

uint64_t SegmentAccumulator.segmentIndex.getter()
{
  v1 = OBJC_IVAR___WOSegmentAccumulator_completedSegments;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 1;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    return 1;
  }

LABEL_3:
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_13;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v4 = *(v2 + v4 + 4);
  while (1)
  {
    v2 = [v4 segmentIndex];

    result = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      break;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:

    v4 = MEMORY[0x20F2E7A20](v4, v2);
  }

  return result;
}

void SegmentAccumulator.segmentAveragePower.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSegmentAccumulator_averagePowerAccumulator);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = [v2 wattUnit];
    v4 = *(v1 + OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator);
    v5 = *(v4 + 24);
    if (v5 < 1)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = *(v4 + 16) / v5;
    }

    v7 = [objc_opt_self() quantityWithUnit:v3 doubleValue:v6];

    v8 = [v2 wattUnit];
    [v7 doubleValueForUnit_];
  }
}

uint64_t SegmentAccumulator.logString.getter()
{
  _StringGuts.grow(_:)(125);
  MEMORY[0x20F2E6D80](0x3A746E656D676573, 0xE900000000000020);
  [v0 segmentIndex];
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v1);

  MEMORY[0x20F2E6D80](0x203A656361702820, 0xE800000000000000);
  [v0 segmentPace];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B465B00);
  [v0 segmentDuration];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x6E6174736964202CLL, 0xEC000000203A6563);
  [v0 segmentDistance];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000016, 0x800000020B465B20);
  [v0 segmentActiveEnergyBurned];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B465B40);
  [v0 segmentTotalEnergyBurned];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B465B60);
  [v0 segmentAveragePower];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x29737474617720, 0xE700000000000000);
  return 0;
}

uint64_t protocol witness for CustomLogStringConvertible.logString.getter in conformance SegmentAccumulator()
{
  v1 = [*v0 logString];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void SegmentAccumulator.dataProvider(_:didUpdate:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v90 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v90 - v16;
  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return;
      }

LABEL_7:
      v18 = *&v3[OBJC_IVAR___WOSegmentAccumulator_energyAccumulator];
      [objc_msgSend(a1 energyBurnProvider)];
      v20 = v19;
      swift_unknownObjectRelease();
      [objc_msgSend(a1 energyBurnProvider)];
      v22 = v21;
      swift_unknownObjectRelease();
      SegmentEnergyAccumulator.updateEnergy(workoutActiveEnergy:workoutBasalEnergy:)(v20, v22);
      return;
    }

    v23 = *&v3[OBJC_IVAR___WOSegmentAccumulator_distanceAccumulator];
    [objc_msgSend(a1 distanceProvider)];
    v25 = v24;
    swift_unknownObjectRelease();
    *(v23 + OBJC_IVAR___WOSegmentDistanceAccumulator_lastReceivedDistance) = v25;
    SegmentDistanceAccumulator._updateInternalQuantity()();
    v90 = *&v3[OBJC_IVAR___WOSegmentAccumulator_builder];
    v26 = [objc_msgSend(a1 distanceProvider)];
    swift_unknownObjectRelease();
    if (v26)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = *(v11 + 32);
      v27(v9, v15, v10);
      (*(v11 + 56))(v9, 0, 1, v10);
      v27(v17, v9, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
      Date.init()();
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        outlined destroy of Date?(v9);
      }
    }

    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v17, v10);
    [v90 elapsedTimeAtDate_];
    v68 = v67;

    v69 = *&v3[OBJC_IVAR___WOSegmentAccumulator_elapsedTimeAccumulator];
    v70 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
    swift_beginAccess();
    if (v68 - *(v69 + v70) > 0.0)
    {
      v71 = v68 - *(v69 + v70);
    }

    else
    {
      v71 = 0.0;
    }

    v72 = *&v3[OBJC_IVAR___WOSegmentAccumulator_paceAccumulator];
    v73 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
    swift_beginAccess();
    v74 = *(v23 + v73);
    v75 = objc_opt_self();
    v76 = v74;
    v77 = [v75 meterUnit];
    [v76 doubleValueForUnit_];
    v79 = v78;

    SegmentPaceAccumulator.updateDistance(_:duration:)(v79, v71);
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, static WOLog.app);
    swift_unknownObjectRetain();
    v81 = v3;
    v51 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();

    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v51, v82))
    {
LABEL_35:

      return;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v91 = v54;
    *v53 = 134218498;
    [objc_msgSend(a1 distanceProvider)];
    v84 = v83;
    swift_unknownObjectRelease();
    *(v53 + 4) = v84;
    *(v53 + 12) = 2048;
    *(v53 + 14) = v71;
    *(v53 + 22) = 2080;
    v85 = [v81 logString];
    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;

    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v91);

    *(v53 + 24) = v89;
    v61 = "SegmentAccumulator: updated distance in paceAccumulator with distance: %f duration: %f, %s";
    v62 = v82;
    v63 = v51;
    v64 = v53;
    v65 = 32;
LABEL_34:
    _os_log_impl(&dword_20AEA4000, v63, v62, v61, v64, v65);
    __swift_destroy_boxed_opaque_existential_1Tm_14(v54);
    MEMORY[0x20F2E9420](v54, -1, -1);
    MEMORY[0x20F2E9420](v53, -1, -1);
    goto LABEL_35;
  }

  if (a2 != 3)
  {
    if (a2 != 7)
    {
      return;
    }

    goto LABEL_7;
  }

  v28 = *&v3[OBJC_IVAR___WOSegmentAccumulator_elapsedTimeAccumulator];
  [objc_msgSend(a1 elapsedTimeProvider)];
  v30 = v29;
  swift_unknownObjectRelease();
  *&v28[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] = v30;
  v31 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  swift_beginAccess();
  if (v30 - *&v28[v31] > 0.0)
  {
    v32 = v30 - *&v28[v31];
  }

  else
  {
    v32 = 0.0;
  }

  v33 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  *&v28[v33] = v32;
  v34 = [v28 updateHandler];
  if (v34)
  {
    v35 = v34;
    (*(v34 + 2))();
    _Block_release(v35);
  }

  if ((specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)() & 1) == 0)
  {
    v48 = *&v3[OBJC_IVAR___WOSegmentAccumulator_paceAccumulator];
    SegmentPaceAccumulator.updateDuration(_:)(*&v28[v33]);
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static WOLog.app);
    swift_unknownObjectRetain();
    v50 = v3;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_35;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v91 = v54;
    *v53 = 134218242;
    [a1 activityDuration];
    *(v53 + 4) = v55;
    *(v53 + 12) = 2080;
    v56 = [v50 logString];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v91);

    *(v53 + 14) = v60;
    v61 = "SegmentAccumulator: updated distance in paceAccumulator with activityDuration: %f, %s";
    v62 = v52;
    v63 = v51;
    v64 = v53;
    v65 = 22;
    goto LABEL_34;
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static WOLog.app);
  v37 = v3;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 134218242;
    v42 = *&v28[v33];
    v91 = v41;
    *(v40 + 4) = v42;
    *(v40 + 12) = 2080;
    v43 = [v37 logString];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v91);

    *(v40 + 14) = v47;
    _os_log_impl(&dword_20AEA4000, v38, v39, "[UltraModeDebugging] SegmentAccumulator: SKIP duration update in UltraMode with elapsedTime: %f, %s", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm_14(v41);
    MEMORY[0x20F2E9420](v41, -1, -1);
    MEMORY[0x20F2E9420](v40, -1, -1);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew()(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        specialized Array.remove(at:)(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 segmentIndex];
      v104 = [v14 segmentIndex];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 segmentIndex];
        v7 = [v18 segmentIndex];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        specialized Array.remove(at:)(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 segmentIndex];
    v41 = [v39 segmentIndex];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = v107 + 1;
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 segmentIndex];
          v35 = [v33 segmentIndex];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 segmentIndex];
          v20 = [v18 segmentIndex];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

id specialized SegmentAccumulator.init(builder:activityType:configuration:powerAccumulator:)(void *a1, void *a2, void *a3, void *a4)
{
  *&v4[OBJC_IVAR___WOSegmentAccumulator_completedSegments] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR___WOSegmentAccumulator_builder] = a1;
  v9 = objc_allocWithZone(type metadata accessor for SegmentDistanceAccumulator());
  v10 = a1;
  v11 = [v9 init];
  *&v4[OBJC_IVAR___WOSegmentAccumulator_distanceAccumulator] = v11;
  *&v4[OBJC_IVAR___WOSegmentAccumulator_elapsedTimeAccumulator] = [objc_allocWithZone(type metadata accessor for SegmentElapsedTimeAccumulator()) init];
  *&v4[OBJC_IVAR___WOSegmentAccumulator_energyAccumulator] = [objc_allocWithZone(type metadata accessor for SegmentEnergyAccumulator()) init];
  v12 = type metadata accessor for SegmentPaceAccumulator();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
  *&v13[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
  *&v13[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
  *&v13[OBJC_IVAR___WOSegmentPaceAccumulator_paceForceCalculationTimeout] = 0x4024000000000000;
  v14 = v10;
  v15 = a2;
  v16 = [v15 effectiveTypeIdentifier];
  *&v13[OBJC_IVAR___WOSegmentPaceAccumulator_activityType] = v16;
  v27.receiver = v13;
  v27.super_class = v12;
  v17 = objc_msgSendSuper2(&v27, sel_initWithBuilder_, v14);

  *&v4[OBJC_IVAR___WOSegmentAccumulator_paceAccumulator] = v17;
  if (!a4)
  {
    goto LABEL_5;
  }

  v25[3] = &type metadata for WorkoutFeatures;
  v25[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v25[0]) = 1;
  v18 = a4;
  v19 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_14(v25);
  if ((v19 & 1) == 0)
  {

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  v20 = objc_allocWithZone(type metadata accessor for AveragePowerAccumulator());
  v21 = AveragePowerAccumulator.init(powerAccumulator:)(v18);
LABEL_6:
  *&v4[OBJC_IVAR___WOSegmentAccumulator_averagePowerAccumulator] = v21;
  *&v4[OBJC_IVAR___WOSegmentAccumulator_configuration] = a3;
  v22 = type metadata accessor for SegmentAccumulator();
  v26.receiver = v4;
  v26.super_class = v22;
  v23 = a3;
  return objc_msgSendSuper2(&v26, sel_init);
}

id SegmentEnergyAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double SegmentEnergyAccumulator.segmentStartActiveEnergyBurned.getter()
{
  v1 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartActiveEnergyBurned;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SegmentEnergyAccumulator.segmentStartActiveEnergyBurned.setter(double a1)
{
  v3 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartActiveEnergyBurned;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SegmentEnergyAccumulator.segmentStartTotalEnergyBurned.getter()
{
  v1 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartTotalEnergyBurned;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SegmentEnergyAccumulator.segmentStartTotalEnergyBurned.setter(double a1)
{
  v3 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartTotalEnergyBurned;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SegmentEnergyAccumulator.activeEnergyBurned.getter()
{
  v1 = OBJC_IVAR___WOSegmentEnergyAccumulator_activeEnergyBurned;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SegmentEnergyAccumulator.activeEnergyBurned.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOSegmentEnergyAccumulator_activeEnergyBurned;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for SegmentEnergyAccumulator.activeEnergyBurned : SegmentEnergyAccumulator(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id SegmentEnergyAccumulator.totalEnergyBurned.getter()
{
  v1 = OBJC_IVAR___WOSegmentEnergyAccumulator_totalEnergyBurned;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SegmentEnergyAccumulator.totalEnergyBurned.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOSegmentEnergyAccumulator_totalEnergyBurned;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall SegmentEnergyAccumulator.updateEnergy(workoutActiveEnergy:workoutBasalEnergy:)(Swift::Double workoutActiveEnergy, Swift::Double workoutBasalEnergy)
{
  v5 = objc_opt_self();
  v6 = [v5 kilocalorieUnit];
  v7 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartActiveEnergyBurned;
  swift_beginAccess();
  v8 = workoutActiveEnergy - *&v2[v7];
  v9 = objc_opt_self();
  v10 = [v9 quantityWithUnit:v6 doubleValue:v8];

  v11 = OBJC_IVAR___WOSegmentEnergyAccumulator_activeEnergyBurned;
  swift_beginAccess();
  v12 = *&v2[v11];
  *&v2[v11] = v10;

  v13 = [v5 kilocalorieUnit];
  v14 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartTotalEnergyBurned;
  swift_beginAccess();
  v15 = [v9 quantityWithUnit:v13 doubleValue:workoutActiveEnergy + workoutBasalEnergy - *&v2[v14]];

  v16 = OBJC_IVAR___WOSegmentEnergyAccumulator_totalEnergyBurned;
  swift_beginAccess();
  v17 = *&v2[v16];
  *&v2[v16] = v15;

  v18 = [v2 updateHandler];
  if (v18)
  {
    v19 = v18;
    (*(v18 + 2))();
    _Block_release(v19);
  }
}

id SegmentEnergyAccumulator.init()()
{
  *&v0[OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartActiveEnergyBurned] = 0;
  *&v0[OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartTotalEnergyBurned] = 0;
  v1 = OBJC_IVAR___WOSegmentEnergyAccumulator_activeEnergyBurned;
  v2 = objc_opt_self();
  v3 = [v2 kilocalorieUnit];
  v4 = objc_opt_self();
  v5 = [v4 quantityWithUnit:v3 doubleValue:0.0];

  *&v0[v1] = v5;
  v6 = OBJC_IVAR___WOSegmentEnergyAccumulator_totalEnergyBurned;
  v7 = [v2 kilocalorieUnit];
  v8 = [v4 quantityWithUnit:v7 doubleValue:0.0];

  *&v0[v6] = v8;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SegmentEnergyAccumulator();
  return objc_msgSendSuper2(&v10, sel_init);
}

id SegmentEnergyAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentEnergyAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double keypath_getTm_6@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_setTm_7(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

id keypath_get_5Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t static TrackAlertsBridge.lapAlertsEnabled(for:)(void *a1)
{
  v1 = specialized static TrackAlertsStore.read(for:)(a1);
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

id TrackAlertsBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TrackAlertsBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrackAlertsBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TrackAlertsBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrackAlertsBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static TrackAlertsStore.userDefaults.getter()
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static TrackAlertsStore.userDefaults;

  return v0;
}

void static TrackAlertsStore.userDefaults.setter(uint64_t a1)
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static TrackAlertsStore.userDefaults;
  static TrackAlertsStore.userDefaults = a1;
}

uint64_t (*static TrackAlertsStore.userDefaults.modify())()
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static TrackAlertsStore.userDefaults.modify;
}

id key path getter for static TrackAlertsStore.userDefaults : TrackAlertsStore.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static TrackAlertsStore.userDefaults;
  *a1 = static TrackAlertsStore.userDefaults;

  return v2;
}

void key path setter for static TrackAlertsStore.userDefaults : TrackAlertsStore.Type(id *a1)
{
  v1 = one-time initialization token for userDefaults;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static TrackAlertsStore.userDefaults;
  static TrackAlertsStore.userDefaults = v2;
}

void static TrackAlertsStore.save(trackAlerts:activityType:)(uint64_t a1, void *a2)
{
  v61[4] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v61[0] = a1;
  type metadata accessor for TrackAlerts();
  lazy protocol witness table accessor for type TrackAlerts and conformance TrackAlerts(&lazy protocol witness table cache variable for type TrackAlerts and conformance TrackAlerts);
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v22 = v21;

  v23 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v60[0] = 0;
  v25 = [v23 propertyListWithData:isa options:0 format:0 error:v60];

  v26 = *&v60[0];
  if (v25)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (one-time initialization token for userDefaults != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v27 = static TrackAlertsStore.userDefaults;
    v28 = MEMORY[0x20F2E6C00](0x656C416B63617274, 0xEB00000000737472);
    v29 = [v27 dictionaryForKey_];

    if (v29)
    {
      v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v33 = [a2 uniqueIdentifier];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    outlined init with copy of Any(v61, v60);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v30;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v60, v34, v36, isUniquelyReferenced_nonNull_native);

    v38 = static TrackAlertsStore.userDefaults;
    v39 = Dictionary._bridgeToObjectiveC()().super.isa;

    v40 = MEMORY[0x20F2E6C00](0x656C416B63617274, 0xEB00000000737472);
    [v38 setObject:v39 forKey:{v40, v58}];

    v41 = static TrackAlertsStore.userDefaults;
    v42 = objc_opt_self();
    v43 = v41;
    v44 = [v42 standardUserDefaults];
    type metadata accessor for NSUserDefaults();
    LOBYTE(v41) = static NSObject.== infix(_:_:)();

    if (v41)
    {
      v45 = MEMORY[0x20F2E6C00](0x656C416B63617274, 0xEB00000000737472);
      [v42 fu:v45 backupStandardUserDefaultsKey:?];
    }

    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static WOLog.alerts);
    v47 = a2;

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *&v60[0] = 0;
      *v50 = 138412546;
      *(v50 + 4) = v47;
      *v51 = v47;
      *(v50 + 12) = 2080;
      *(&v60[0] + 1) = 0xE000000000000000;
      v53 = v47;
      _StringGuts.grow(_:)(35);

      swift_beginAccess();
      if (*(a1 + 16))
      {
        v54 = 1702195828;
      }

      else
      {
        v54 = 0x65736C6166;
      }

      if (*(a1 + 16))
      {
        v55 = 0xE400000000000000;
      }

      else
      {
        v55 = 0xE500000000000000;
      }

      MEMORY[0x20F2E6D80](v54, v55);

      MEMORY[0x20F2E6D80](62, 0xE100000000000000);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000020B464530, &v59);

      *(v50 + 14) = v56;
      _os_log_impl(&dword_20AEA4000, v48, v49, "Saved TrackAlerts to user defaults for activityType=%@ trackAlerts=%s", v50, 0x16u);
      outlined destroy of NSObject?(v51);
      MEMORY[0x20F2E9420](v51, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x20F2E9420](v52, -1, -1);
      MEMORY[0x20F2E9420](v50, -1, -1);
    }

    outlined consume of Data._Representation(v20, v22);

    __swift_destroy_boxed_opaque_existential_0(v61);
  }

  else
  {
    v31 = v26;
    v32 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v20, v22);
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.alerts);
    v8 = a2;
    v9 = v32;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v61[0] = v14;
      *v12 = 138412546;
      *(v12 + 4) = v8;
      *v13 = v8;
      *(v12 + 12) = 2080;
      *&v60[0] = v32;
      v15 = v8;
      v16 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v61);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Failed to encode and save TrackAlerts for activityType=%@. error=%s", v12, 0x16u);
      outlined destroy of NSObject?(v13);
      MEMORY[0x20F2E9420](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F2E9420](v14, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    else
    {
    }
  }

  v57 = *MEMORY[0x277D85DE8];
}

uint64_t specialized static TrackAlertsStore.read(for:)(void *a1)
{
  v68 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static TrackAlertsStore.userDefaults;
  v3 = MEMORY[0x20F2E6C00](0x656C416B63617274, 0xEB00000000737472);
  v4 = [v2 dictionaryForKey_];

  if (!v4)
  {
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.alerts);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_18;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_20AEA4000, v24, v25, "TrackAlerts for all activity types not present in user defaults.", v26, 2u);
    v27 = v26;
    goto LABEL_17;
  }

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [a1 uniqueIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!*(v5 + 16))
  {

    goto LABEL_13;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_13:

    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static WOLog.alerts);
    v29 = a1;
    v24 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v24, v30))
    {
      goto LABEL_18;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v29;
    *v32 = v29;
    v33 = v29;
    _os_log_impl(&dword_20AEA4000, v24, v30, "TrackAlerts for activity type not present in user defaults. activityType=%@", v31, 0xCu);
    outlined destroy of NSObject?(v32);
    MEMORY[0x20F2E9420](v32, -1, -1);
    v27 = v31;
LABEL_17:
    MEMORY[0x20F2E9420](v27, -1, -1);
LABEL_18:

    type metadata accessor for TrackAlerts();
    result = swift_allocObject();
    *(result + 16) = 0;
    goto LABEL_19;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v10, v65);

  outlined init with take of Any(v65, v66);
  v13 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0(v66, v67);
  v14 = _bridgeAnythingToObjectiveC<A>(_:)();
  *&v65[0] = 0;
  v15 = [v13 dataWithPropertyList:v14 format:100 options:0 error:v65];
  swift_unknownObjectRelease();
  v16 = *&v65[0];
  if (v15)
  {
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = type metadata accessor for PropertyListDecoder();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    type metadata accessor for TrackAlerts();
    lazy protocol witness table accessor for type TrackAlerts and conformance TrackAlerts(&lazy protocol witness table cache variable for type TrackAlerts and conformance TrackAlerts);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    v63 = *&v65[0];
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static WOLog.alerts);

    v53 = a1;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v64 = v62;
      *&v65[0] = 0;
      *v56 = 136315394;
      *(&v65[0] + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(35);

      swift_beginAccess();
      if (*(v63 + 16))
      {
        v58 = 1702195828;
      }

      else
      {
        v58 = 0x65736C6166;
      }

      if (*(v63 + 16))
      {
        v59 = 0xE400000000000000;
      }

      else
      {
        v59 = 0xE500000000000000;
      }

      MEMORY[0x20F2E6D80](v58, v59);

      MEMORY[0x20F2E6D80](62, 0xE100000000000000);

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000020B464530, &v64);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2112;
      *(v56 + 14) = v53;
      *v57 = v53;
      v61 = v53;
      _os_log_impl(&dword_20AEA4000, v54, v55, "Successfully read user trackAlerts=%s for activityType=%@", v56, 0x16u);
      outlined destroy of NSObject?(v57);
      MEMORY[0x20F2E9420](v57, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x20F2E9420](v62, -1, -1);
      MEMORY[0x20F2E9420](v56, -1, -1);
    }

    outlined consume of Data._Representation(v17, v19);

    __swift_destroy_boxed_opaque_existential_0(v66);
    result = v63;
  }

  else
  {
    v36 = v16;
    v37 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static WOLog.alerts);
    v39 = a1;
    v40 = v37;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v65[0] = v45;
      *v43 = 138412546;
      *(v43 + 4) = v39;
      *v44 = v39;
      *(v43 + 12) = 2080;
      v46 = v39;
      v47 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v48 = String.init<A>(describing:)();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v65);

      *(v43 + 14) = v50;
      _os_log_impl(&dword_20AEA4000, v41, v42, "Failed to decode TrackAlerts for activityType=%@. error=%s", v43, 0x16u);
      outlined destroy of NSObject?(v44);
      MEMORY[0x20F2E9420](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x20F2E9420](v45, -1, -1);
      MEMORY[0x20F2E9420](v43, -1, -1);
    }

    else
    {
    }

    type metadata accessor for TrackAlerts();
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    __swift_destroy_boxed_opaque_existential_0(v66);
    result = v51;
  }

LABEL_19:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getEnumTagSinglePayload for TrackAlertsStore(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TrackAlertsStore(_WORD *result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type TrackAlerts and conformance TrackAlerts(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TrackAlerts();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *MirroredBlob.init(contentType:data:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t MirroredBlob.protobuf.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob();
  return static Message.with(_:)();
}

uint64_t MirroredBlob.data.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t MirroredBlob.init(protobuf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v8 = *a1;
  v9 = v4;
  MirroredBlobContentType.init(protobuf:)(&v8, &v10);
  *a2 = v10;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  outlined copy of Data._Representation(v5, v6);
  result = outlined destroy of Apple_Workout_Core_MirroredBlob(a1);
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t closure #1 in MirroredBlob.protobuf.getter(uint64_t a1, unsigned __int8 a2, uint64_t a3, unint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  outlined copy of Data._Representation(a3, a4);
  result = outlined consume of Data._Representation(v7, v8);
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob)
  {
    type metadata accessor for Apple_Workout_Core_MirroredBlob(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredBlob(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MirroredBlob.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  _StringGuts.grow(_:)(31);

  v4 = 0xE800000000000000;
  strcpy(v13, "contentType: ");
  HIWORD(v13[1]) = -4864;
  v5 = 0x6675626F746F7270;
  v6 = 0xEB00000000656C62;
  v7 = 0x61646F4365636172;
  if (v1 != 2)
  {
    v7 = 0x6C61767265746E69;
    v6 = 0xEF656C6261646F43;
  }

  if (v1)
  {
    v5 = 0x61646579656B736ELL;
    v4 = 0xEF72657669686372;
  }

  if (v1 <= 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v1 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  MEMORY[0x20F2E6D80](v8, v9);

  result = MEMORY[0x20F2E6D80](0x203A61746164202CLL, 0xE800000000000000);
  v11 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v11 != 2 || !__OFSUB__(*(v2 + 24), *(v2 + 16)))
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  else if (!v11)
  {
    goto LABEL_19;
  }

  if (!__OFSUB__(HIDWORD(v2), v2))
  {
LABEL_19:
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v12);

    MEMORY[0x20F2E6D80](0x736574796220, 0xE600000000000000);
    return v13[0];
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for MirroredMessageProtocol.init(protobuf:) in conformance MirroredBlob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v8 = *a1;
  v9 = v4;
  MirroredBlobContentType.init(protobuf:)(&v8, &v10);
  *a2 = v10;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  outlined copy of Data._Representation(v5, v6);
  result = outlined destroy of Apple_Workout_Core_MirroredBlob(a1);
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredBlob()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob();
  return static Message.with(_:)();
}

uint64_t static MirroredBlob.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return specialized static Data.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t MirroredBlob.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x20F2E7FF0](*v0);

  return Data.hash(into:)();
}

Swift::Int MirroredBlob.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredBlob()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MirroredBlob()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x20F2E7FF0](*v0);

  return Data.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredBlob()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MirroredBlob(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return specialized static Data.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

unint64_t instantiation function for generic protocol witness table for MirroredBlob(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredBlob and conformance MirroredBlob();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredBlob and conformance MirroredBlob()
{
  result = lazy protocol witness table cache variable for type MirroredBlob and conformance MirroredBlob;
  if (!lazy protocol witness table cache variable for type MirroredBlob and conformance MirroredBlob)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredBlob and conformance MirroredBlob);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredBlob and conformance MirroredBlob;
  if (!lazy protocol witness table cache variable for type MirroredBlob and conformance MirroredBlob)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredBlob and conformance MirroredBlob);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredBlob(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[24])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MirroredBlob(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t static SpokenUtilities.standardPause.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v0);

  MEMORY[0x20F2E6D80](92, 0xE100000000000000);
  return 0x3D65737561705C1BLL;
}

id static SpokenUtilities.spokenDistance(distance:distanceType:formattingManager:)(void *a1, uint64_t a2, void *a3)
{
  v6 = [objc_opt_self() meterUnit];
  [a1 doubleValueForUnit_];
  v8 = v7;

  result = [a3 localizedNaturalScaleStringWithDistanceInMeters:a2 distanceType:3 unitStyle:0 usedUnit:2 decimalTrimmingMode:v8];
  if (result)
  {
    v10 = result;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static SpokenUtilities.textToSpeechPause(durationInMilliseconds:)()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v0);

  MEMORY[0x20F2E6D80](92, 0xE100000000000000);
  return 0x3D65737561705C1BLL;
}

void one-time initialization function for pausePunctuation()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B466040);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  static SpokenUtilities.pausePunctuation = v5;
  *algn_27C72C6E8 = v7;
}

uint64_t static SpokenUtilities.pausePunctuation.getter()
{
  if (one-time initialization token for pausePunctuation != -1)
  {
    swift_once();
  }

  v0 = static SpokenUtilities.pausePunctuation;

  return v0;
}

uint64_t static SpokenUtilities.spokenCadence(activityType:cadence:metricType:formattingManager:)(void *a1, uint64_t a2, double a3)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v11;
  v13 = specialized static SpokenUtilities.cadenceLongUnitString(activityType:)(a1);
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20B4282E0;
  v7 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  v4 = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 32) = v10;
  *(v16 + 40) = v12;
  *(v16 + 96) = v7;
  *(v16 + 104) = v4;
  *(v16 + 64) = v4;
  *(v16 + 72) = v13;
  *(v16 + 80) = v15;
  v5 = String.init(format:_:)();
  v6 = v17;
  v18 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(a2, 1, a1);
  v20 = v19;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20B423A20;
  *(v3 + 56) = v7;
  *(v3 + 64) = v4;
  *(v3 + 32) = v18;
  *(v3 + 40) = v20;
  if (one-time initialization token for pausePunctuation != -1)
  {
LABEL_9:
    swift_once();
  }

  v22 = static SpokenUtilities.pausePunctuation;
  v21 = *algn_27C72C6E8;
  *(v3 + 96) = v7;
  *(v3 + 104) = v4;
  *(v3 + 72) = v22;
  *(v3 + 80) = v21;
  *(v3 + 136) = v7;
  *(v3 + 144) = v4;
  *(v3 + 112) = v5;
  *(v3 + 120) = v6;

  v23 = String.init(format:_:)();
  v25 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v23, v24);

  return v25;
}

uint64_t static SpokenUtilities.spokenPower(activityType:power:metricType:formattingManager:)(double a1, uint64_t a2, uint64_t a3)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v11 = v10;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = MEMORY[0x20F2E6C00](0x4E555F5245574F50, 0xEF474E4F4C5F5449);
  v15 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20B4282E0;
  v7 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v6 = lazy protocol witness table accessor for type String and conformance String();
  *(v20 + 32) = v9;
  *(v20 + 40) = v11;
  *(v20 + 96) = v7;
  *(v20 + 104) = v6;
  *(v20 + 64) = v6;
  *(v20 + 72) = v17;
  *(v20 + 80) = v19;
  v4 = String.init(format:_:)();
  v5 = v21;
  v22 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(a3, 1, 0);
  v24 = v23;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20B423A20;
  *(v3 + 56) = v7;
  *(v3 + 64) = v6;
  *(v3 + 32) = v22;
  *(v3 + 40) = v24;
  if (one-time initialization token for pausePunctuation != -1)
  {
LABEL_9:
    swift_once();
  }

  v26 = static SpokenUtilities.pausePunctuation;
  v25 = *algn_27C72C6E8;
  *(v3 + 96) = v7;
  *(v3 + 104) = v6;
  *(v3 + 72) = v26;
  *(v3 + 80) = v25;
  *(v3 + 136) = v7;
  *(v3 + 144) = v6;
  *(v3 + 112) = v4;
  *(v3 + 120) = v5;

  v27 = String.init(format:_:)();
  v29 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v27, v28);

  return v29;
}

uint64_t static SpokenUtilities.spokenCadenceValue(activityType:cadence:formattingManager:includeUnit:)(uint64_t result, double a2, uint64_t a3, char a4)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = result;
  result = dispatch thunk of CustomStringConvertible.description.getter();
  if (a4)
  {
    v7 = result;
    v8 = v6;
    v9 = specialized static SpokenUtilities.cadenceLongUnitString(activityType:)(v5);
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_20B4282E0;
    v13 = MEMORY[0x277D837D0];
    *(v12 + 56) = MEMORY[0x277D837D0];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v7;
    *(v12 + 40) = v8;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 64) = v14;
    *(v12 + 72) = v9;
    *(v12 + 80) = v11;
    return String.init(format:_:)();
  }

  return result;
}

void static SpokenUtilities.spokenPowerValue(activityType:power:formattingManager:includeUnit:)(double a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  if (a4)
  {
    v7 = v5;
    v8 = v6;
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = MEMORY[0x20F2E6C00](0x4E555F5245574F50, 0xEF474E4F4C5F5449);
    v12 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20B4282E0;
    v18 = MEMORY[0x277D837D0];
    *(v17 + 56) = MEMORY[0x277D837D0];
    v19 = lazy protocol witness table accessor for type String and conformance String();
    *(v17 + 32) = v7;
    *(v17 + 40) = v8;
    *(v17 + 96) = v18;
    *(v17 + 104) = v19;
    *(v17 + 64) = v19;
    *(v17 + 72) = v14;
    *(v17 + 80) = v16;
    String.init(format:_:)();
  }
}

id static SpokenUtilities.spokenPaceValue(distance:distanceType:duration:formattingManager:includeUnit:)(uint64_t a1, uint64_t a2, void *a3, char a4, double a5)
{
  v10 = MEMORY[0x20F2E8410](a2);
  if (v10 == 4)
  {
    goto LABEL_4;
  }

  result = [a3 unitManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  [result paceWithDistance:a1 overDuration:v10 paceFormat:a2 distanceType:a5];
  v14 = v13;

  if (v14 <= 0.0)
  {
    return 0;
  }

LABEL_4:
  if (a4)
  {
    result = [a3 localizedPaceAndUnitWithDistance:a1 overDuration:v10 paceFormat:a2 distanceType:3 unitStyle:2 decimalTrimmingMode:a5];
    if (!result)
    {
      return result;
    }

LABEL_8:
    v15 = result;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v16;
  }

  result = [a3 localizedPaceStringWithDistance:a1 overDuration:v10 paceFormat:3 unitStyle:2 decimalTrimmingMode:a2 distanceType:a5];
  if (result)
  {
    goto LABEL_8;
  }

  return result;
}

id SpokenUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpokenUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpokenUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SpokenUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpokenUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(uint64_t a1, uint64_t a2)
{
  if (FIUILocaleIsRightToLeft())
  {
  }

  else
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B466300);
    v7 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_20B4282E0;
    v13 = MEMORY[0x277D837D0];
    *(v12 + 56) = MEMORY[0x277D837D0];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 64) = v14;
    *(v12 + 72) = v9;
    *(v12 + 80) = v11;

    return String.init(format:_:)();
  }

  return a1;
}

uint64_t specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = 0xD00000000000001ALL;
  if (a1 > 13)
  {
    if (a1 > 15)
    {
      if (a1 != 16)
      {
        if (a1 == 23)
        {
          v4 = "METRIC_SEGMENT_PACE_SPOKEN";
          v5 = "METRIC_SEGMENT_PACE_SPOKEN";
          goto LABEL_18;
        }

        if (a1 == 36)
        {
          if (a2 == 4)
          {
            v3 = 0xD000000000000019;
          }

          else
          {
            v3 = 0xD000000000000018;
          }

          if (a2 == 4)
          {
            v8 = "METRIC_SPLIT_PACE_SPOKEN";
          }

          else
          {
            v8 = "METRIC_SEGMENT_SPEED_SPOKEN";
          }

          goto LABEL_40;
        }

        goto LABEL_41;
      }

      v8 = "EDOMETER_CADENCE_SPOKEN";
      if (a3)
      {
        v9 = a3;
        v10 = MEMORY[0x20F2E8390]([v9 effectiveTypeIdentifier]);

        v11 = "METRIC_AVERAGE_PEDOMETER_CADENCE_SPOKEN";
        goto LABEL_33;
      }

LABEL_39:
      v3 = 0xD000000000000025;
      goto LABEL_40;
    }

    if (a1 != 14)
    {
      v8 = "METRIC_AVERAGE_POWER_SPOKEN";
      if (a3)
      {
        v13 = a3;
        v10 = MEMORY[0x20F2E8390]([v13 effectiveTypeIdentifier]);

        v11 = "METRIC_CURRENT_PEDOMETER_CADENCE_SPOKEN";
LABEL_33:
        v14 = (v11 - 32);
        if (v10)
        {
          v3 = 0xD000000000000027;
        }

        else
        {
          v3 = 0xD000000000000025;
        }

        if (v10)
        {
          v8 = v14;
        }

        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v6 = "METRIC_ROLLING_PACE_SPOKEN";
    goto LABEL_13;
  }

  if (a1 > 10)
  {
    if (a1 == 11)
    {
      v7 = "METRIC_CURRENT_POWER_SPOKEN";
    }

    else
    {
      if (a1 != 12)
      {
        goto LABEL_41;
      }

      v7 = "METRIC_AVERAGE_POWER_SPOKEN";
    }

    v8 = (v7 - 32);
    v3 = 0xD00000000000001BLL;
LABEL_40:
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v17 = MEMORY[0x20F2E6C00](v3, v8 | 0x8000000000000000);

    v18 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v20;
  }

  if (a1 == 4)
  {
    v6 = "METRIC_CURRENT_PACE_SPOKEN";
LABEL_13:
    v8 = (v6 - 32);
    goto LABEL_40;
  }

  if (a1 == 8)
  {
    v4 = "METRIC_AVERAGE_PACE_SPOKEN";
    v5 = "METRIC_AVERAGE_PACE_SPOKEN";
LABEL_18:
    v12 = (v5 - 32);
    if (a2 == 4)
    {
      v3 = 0xD00000000000001BLL;
      v8 = v4;
    }

    else
    {
      v8 = v12;
    }

    goto LABEL_40;
  }

LABEL_41:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D83E88];
  *(v23 + 16) = xmmword_20B423A90;
  v25 = MEMORY[0x277D83ED0];
  *(v23 + 56) = v24;
  *(v23 + 64) = v25;
  *(v23 + 32) = a1;
  String.init(format:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static SpokenUtilities.cadenceLongUnitString(activityType:)(void *a1)
{
  v1 = [a1 effectiveTypeIdentifier];
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = "textToSpeechEndOfSentence";
  if (v1 == 13)
  {
    v4 = "CADENCE_UNIT_LONG_PEDOMETER";
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  v6 = MEMORY[0x20F2E6C00](v5, v4 | 0x8000000000000000);
  v7 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v8 = [v3 localizedStringForKey:v6 value:0 table:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v9;
}

uint64_t specialized static SpokenUtilities.spokenMetric(activityType:value:distanceType:metricType:formattingManager:)(void *a1, uint64_t a2, unint64_t a3, void *a4, double a5)
{
  v9 = a3;
  if (a3 > 0x10)
  {
    goto LABEL_40;
  }

  if (((1 << a3) & 0x4110) != 0)
  {
    v31 = [objc_opt_self() meterUnit];
    v32 = [objc_opt_self() quantityWithUnit:v31 doubleValue:a5];

    v33 = MEMORY[0x20F2E8410](a2);
    if (v33 != 4)
    {
      v34 = [a4 unitManager];
      if (!v34)
      {
        __break(1u);
        goto LABEL_39;
      }

      v35 = v34;
      [v34 paceWithDistance:v32 overDuration:v33 paceFormat:a2 distanceType:1.0];
      v37 = v36;

      if (v37 <= 0.0)
      {

        return 0;
      }
    }

    v38 = MEMORY[0x20F2E8410](a2);
    if (v38 == 4)
    {
LABEL_15:
      v43 = [a4 localizedPaceAndUnitWithDistance:v32 overDuration:v38 paceFormat:a2 distanceType:3 unitStyle:2 decimalTrimmingMode:1.0];
      if (v43)
      {
        v44 = v43;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

LABEL_26:
        v70 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(v9, v33, 0);
        v72 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_20B423A20;
        v74 = MEMORY[0x277D837D0];
        *(v73 + 56) = MEMORY[0x277D837D0];
        v75 = lazy protocol witness table accessor for type String and conformance String();
        *(v73 + 64) = v75;
        *(v73 + 32) = v70;
        *(v73 + 40) = v72;
        if (one-time initialization token for pausePunctuation != -1)
        {
          v81 = v75;
          swift_once();
          v75 = v81;
        }

        v77 = static SpokenUtilities.pausePunctuation;
        v76 = *algn_27C72C6E8;
        *(v73 + 96) = v74;
        *(v73 + 104) = v75;
        *(v73 + 72) = v77;
        *(v73 + 80) = v76;
        *(v73 + 136) = v74;
        *(v73 + 144) = v75;
        *(v73 + 112) = v45;
        *(v73 + 120) = v47;

        v78 = String.init(format:_:)();
        v69 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v78, v79);

        return v69;
      }

LABEL_25:
      v45 = 0;
      v47 = 0xE000000000000000;
      goto LABEL_26;
    }

    v39 = [a4 unitManager];
    if (v39)
    {
      v40 = v39;
      [v39 paceWithDistance:v32 overDuration:v38 paceFormat:a2 distanceType:1.0];
      v42 = v41;

      if (v42 <= 0.0)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (((1 << a3) & 0x1800) != 0)
  {
    if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a5 > -9.22337204e18)
      {
        if (a5 < 9.22337204e18)
        {
          v10 = dispatch thunk of CustomStringConvertible.description.getter();
          v12 = v11;
          type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v14 = [objc_opt_self() bundleForClass_];
          v15 = MEMORY[0x20F2E6C00](0x4E555F5245574F50, 0xEF474E4F4C5F5449);
          v16 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_20B4282E0;
          v8 = MEMORY[0x277D837D0];
          *(v21 + 56) = MEMORY[0x277D837D0];
          v7 = lazy protocol witness table accessor for type String and conformance String();
          *(v21 + 32) = v10;
          *(v21 + 40) = v12;
          *(v21 + 96) = v8;
          *(v21 + 104) = v7;
          *(v21 + 64) = v7;
          *(v21 + 72) = v18;
          *(v21 + 80) = v20;
          v5 = String.init(format:_:)();
          v6 = v22;
          v23 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(v9, 1, 0);
          v25 = v24;
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_20B423A20;
          *(v9 + 56) = v8;
          *(v9 + 64) = v7;
          *(v9 + 32) = v23;
          *(v9 + 40) = v25;
          if (one-time initialization token for pausePunctuation == -1)
          {
LABEL_8:
            v27 = static SpokenUtilities.pausePunctuation;
            v26 = *algn_27C72C6E8;
            *(v9 + 96) = v8;
            *(v9 + 104) = v7;
            *(v9 + 72) = v27;
            *(v9 + 80) = v26;
            *(v9 + 136) = v8;
            *(v9 + 144) = v7;
            *(v9 + 112) = v5;
            *(v9 + 120) = v6;
LABEL_24:

            v67 = String.init(format:_:)();
            v69 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v67, v68);

            return v69;
          }

LABEL_37:
          swift_once();
          goto LABEL_8;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (((1 << a3) & 0x18000) != 0)
  {
    if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a5 > -9.22337204e18)
      {
        if (a5 < 9.22337204e18)
        {
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          v51 = v50;
          v52 = specialized static SpokenUtilities.cadenceLongUnitString(activityType:)(a1);
          v54 = v53;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_20B4282E0;
          v56 = MEMORY[0x277D837D0];
          *(v55 + 56) = MEMORY[0x277D837D0];
          v57 = lazy protocol witness table accessor for type String and conformance String();
          *(v55 + 32) = v49;
          *(v55 + 40) = v51;
          *(v55 + 96) = v56;
          *(v55 + 104) = v57;
          *(v55 + 64) = v57;
          *(v55 + 72) = v52;
          *(v55 + 80) = v54;
          v58 = String.init(format:_:)();
          v60 = v59;
          v61 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(v9, 1, a1);
          v63 = v62;
          v64 = swift_allocObject();
          *(v64 + 16) = xmmword_20B423A20;
          *(v64 + 56) = v56;
          *(v64 + 64) = v57;
          *(v64 + 32) = v61;
          *(v64 + 40) = v63;
          if (one-time initialization token for pausePunctuation != -1)
          {
            swift_once();
          }

          v66 = static SpokenUtilities.pausePunctuation;
          v65 = *algn_27C72C6E8;
          *(v64 + 96) = v56;
          *(v64 + 104) = v57;
          *(v64 + 72) = v66;
          *(v64 + 80) = v65;
          *(v64 + 136) = v56;
          *(v64 + 144) = v57;
          *(v64 + 112) = v58;
          *(v64 + 120) = v60;
          goto LABEL_24;
        }

        goto LABEL_36;
      }

      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_40:
  _StringGuts.grow(_:)(47);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B4662C0);
  type metadata accessor for HKWorkoutMetricType(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](0xD00000000000001ALL, 0x800000020B4662E0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id specialized static SpokenUtilities.spokenPace(distance:distanceType:duration:metricType:formattingManager:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v10 = MEMORY[0x20F2E8410](a2);
  if (v10 != 4)
  {
    result = [a4 unitManager];
    if (!result)
    {
      __break(1u);
      goto LABEL_16;
    }

    v12 = result;
    [result paceWithDistance:a1 overDuration:v10 paceFormat:a2 distanceType:a5];
    v14 = v13;

    if (v14 <= 0.0)
    {
      return 0;
    }
  }

  v15 = MEMORY[0x20F2E8410](a2);
  if (v15 == 4)
  {
LABEL_7:
    v19 = [a4 localizedPaceAndUnitWithDistance:a1 overDuration:v15 paceFormat:a2 distanceType:3 unitStyle:2 decimalTrimmingMode:a5];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

LABEL_10:
      v24 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(a3, v10, 0);
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_20B423A20;
      v28 = MEMORY[0x277D837D0];
      *(v27 + 56) = MEMORY[0x277D837D0];
      v29 = lazy protocol witness table accessor for type String and conformance String();
      *(v27 + 64) = v29;
      *(v27 + 32) = v24;
      *(v27 + 40) = v26;
      if (one-time initialization token for pausePunctuation != -1)
      {
        v35 = v29;
        swift_once();
        v29 = v35;
      }

      v31 = static SpokenUtilities.pausePunctuation;
      v30 = *algn_27C72C6E8;
      *(v27 + 96) = v28;
      *(v27 + 104) = v29;
      *(v27 + 72) = v31;
      *(v27 + 80) = v30;
      *(v27 + 136) = v28;
      *(v27 + 144) = v29;
      *(v27 + 112) = v21;
      *(v27 + 120) = v23;

      v32 = String.init(format:_:)();
      v34 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v32, v33);

      return v34;
    }

LABEL_9:
    v21 = 0;
    v23 = 0xE000000000000000;
    goto LABEL_10;
  }

  result = [a4 unitManager];
  if (result)
  {
    v16 = result;
    [result paceWithDistance:a1 overDuration:v15 paceFormat:a2 distanceType:a5];
    v18 = v17;

    if (v18 <= 0.0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
  return result;
}

id specialized static SpokenUtilities.spokenPaceForSingleDistanceUnit(distance:distanceType:duration:formattingManager:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = MEMORY[0x20F2E6C00](0x4F50535F45434150, 0xEB000000004E454BLL);
  v11 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [a3 localizedPaceStringWithDistance:a1 overDuration:MEMORY[0x20F2E8410](a2) paceFormat:3 unitStyle:2 decimalTrimmingMode:a2 distanceType:a4];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  result = MEMORY[0x20F2E82D0]();
  if (result)
  {
    v22 = result;
    v37._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0x564F4E5F45434150;
    v23._object = 0xEC00000045554C41;
    v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v24.value._object = 0xEB00000000656C62;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v37._countAndFlagsBits = 0;
    v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v37);

    if (v18 == v26._countAndFlagsBits && v20 == v26._object)
    {

LABEL_10:

      return 0;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {

      goto LABEL_10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20B423A20;
    v29 = MEMORY[0x277D837D0];
    *(v28 + 56) = MEMORY[0x277D837D0];
    v30 = lazy protocol witness table accessor for type String and conformance String();
    *(v28 + 64) = v30;
    *(v28 + 32) = v13;
    *(v28 + 40) = v15;
    if (one-time initialization token for pausePunctuation != -1)
    {
      v36 = v30;
      swift_once();
      v30 = v36;
    }

    v32 = static SpokenUtilities.pausePunctuation;
    v31 = *algn_27C72C6E8;
    *(v28 + 96) = v29;
    *(v28 + 104) = v30;
    *(v28 + 72) = v32;
    *(v28 + 80) = v31;
    *(v28 + 136) = v29;
    *(v28 + 144) = v30;
    *(v28 + 112) = v18;
    *(v28 + 120) = v20;

    v33 = String.init(format:_:)();
    v35 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v33, v34);

    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t key path setter for WorkoutConfigurationDataSourcesModel.cachedExternalProviders : WorkoutConfigurationDataSourcesModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t WorkoutConfigurationDataSourcesModel.cachedExternalProviders.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

char *WorkoutConfigurationDataSourcesModel.queryClient.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    v4 = static WorkoutCoreInjector.healthStore;
    v5 = objc_allocWithZone(type metadata accessor for QueryClient());
    v6 = QueryClient.init(_:)(v4);
    v7 = *(v0 + 24);
    *(v3 + 24) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id WorkoutConfigurationDataSourcesModel.nanoSyncControl.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for nanoSyncControl != -1)
    {
      swift_once();
    }

    v3 = static WorkoutCoreInjector.nanoSyncControl;
    v4 = *(v0 + 32);
    *(v0 + 32) = static WorkoutCoreInjector.nanoSyncControl;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *WorkoutConfigurationDataSourcesModel.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  result[3] = 0;
  result[4] = 0;
  result[2] = v1;
  return result;
}

void *WorkoutConfigurationDataSourcesModel.init()()
{
  result = v0;
  v2 = MEMORY[0x277D84F90];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v2;
  return result;
}

uint64_t WorkoutConfigurationDataSourcesModel.reloadExternalProviders(_:)(uint64_t a1, uint64_t a2)
{
  v5 = WorkoutConfigurationDataSourcesModel.queryClient.getter();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  v7[2] = partial apply for closure #1 in WorkoutConfigurationDataSourcesModel.reloadExternalProviders(_:);
  v7[3] = v6;
  v7[4] = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in WorkoutConfigurationDataSourcesModel.reloadExternalProviders(_:);
  *(v8 + 24) = v6;
  swift_retain_n();

  sub_20AEDA7E4(a1);
  v9 = v5;
  QueryClient.remoteProxy(handler:errorHandler:)(_s11WorkoutCore11QueryClientC22fetchExternalProviders10completionyySayAA07QueriedF8ProviderCG_s5Error_pSgtc_tFyypcfU_TA_0, v7, _s11WorkoutCore11QueryClientC22fetchExternalProviders10completionyySayAA07QueriedF8ProviderCG_s5Error_pSgtc_tFysAI_pcfU0_TA_0, v8);
}

uint64_t closure #1 in WorkoutConfigurationDataSourcesModel.reloadExternalProviders(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v23);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v22 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in WorkoutConfigurationDataSourcesModel.reloadExternalProviders(_:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_43_1;
  v18 = _Block_copy(aBlock);

  sub_20AEDA7E4(a4);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v22;
  MEMORY[0x20F2E7580](0, v16, v12, v18);
  _Block_release(v18);

  (*(v24 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v23);
}

uint64_t closure #1 in closure #1 in WorkoutConfigurationDataSourcesModel.reloadExternalProviders(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  v9[0] = specialized Array._copyToContiguousArray()(v5);
  specialized MutableCollection<>.sort(by:)(v9);
  v6 = v9[0];
  swift_beginAccess();
  v7 = *(a2 + 16);
  *(a2 + 16) = v6;

  if (a3)
  {
    a3(v6);
  }
}

uint64_t WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = WorkoutConfigurationDataSourcesModel.queryClient.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a2;
  *(v11 + 48) = v4;
  *(v11 + 56) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:);
  *(v12 + 24) = v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = v9;
  *(v12 + 48) = 0;
  *(v12 + 56) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:);
  *(v13 + 24) = v11;
  swift_retain_n();
  swift_retain_n();
  sub_20AEDA7E4(a3);

  v14 = v10;
  QueryClient.remoteProxy(handler:errorHandler:)(_s11WorkoutCore11QueryClientC29updateQueriedExternalProvider_15permissionState10completionyAA0fgH0C_So023WOPersistencePermissionJ0VSgySb_s5Error_pSgtctFyypcfU_TA_0, v12, _s11WorkoutCore11QueryClientC29updateQueriedExternalProvider_15permissionState10completionyAA0fgH0C_So023WOPersistencePermissionJ0VSgySb_s5Error_pSgtctFysAL_pcfU0_TA_0, v13);
}

void closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:)(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v73 = a1;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v68 = v25;
    v69 = v23;
    v70 = v19;
    v71 = v22;
    v72 = v16;
    v26 = a2;
    if (one-time initialization token for xpcService != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static WOLog.xpcService);
    v28 = a2;

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v67 = a4;
      v33 = v32;
      v66 = swift_slowAlloc();
      aBlock = v66;
      *v31 = 136315394;
      swift_beginAccess();
      v34 = a5;
      v35 = *(a3 + 16);
      swift_beginAccess();
      v36 = *(v35 + 32);
      v37 = *(v35 + 40);

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &aBlock);
      a5 = v34;

      *(v31 + 4) = v38;
      *(v31 + 12) = 2112;
      v39 = a2;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v40;
      *v33 = v40;
      _os_log_impl(&dword_20AEA4000, v29, v30, "failed to update bundle identifier: %s due to %@", v31, 0x16u);
      outlined destroy of NSObject?(v33);
      v41 = v33;
      a4 = v67;
      MEMORY[0x20F2E9420](v41, -1, -1);
      v42 = v66;
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x20F2E9420](v42, -1, -1);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }

    type metadata accessor for OS_dispatch_queue();
    v43 = static OS_dispatch_queue.main.getter();
    v44 = swift_allocObject();
    *(v44 + 16) = a4;
    *(v44 + 24) = a5;
    *(v44 + 32) = v73 & 1;
    *(v44 + 40) = a2;
    v78 = partial apply for closure #1 in closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:);
    v79 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v75 = 1107296256;
    v76 = thunk for @escaping @callee_guaranteed () -> ();
    v77 = &block_descriptor_31_3;
    v45 = _Block_copy(&aBlock);
    v46 = a2;
    sub_20AEDA7E4(a4);

    v47 = v68;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v48 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v47, v48, v45);
    _Block_release(v45);

    (*(v72 + 8))(v48, v15);
    (*(v69 + 8))(v47, v71);
  }

  else
  {
    v49 = a6;
    v72 = a8;
    if (one-time initialization token for xpcService != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static WOLog.xpcService);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v71 = a5;
      v55 = v54;
      aBlock = v54;
      *v53 = 136315394;
      swift_beginAccess();
      v56 = *(a3 + 16);
      swift_beginAccess();
      v57 = a4;
      v58 = *(v56 + 32);
      v59 = *(v56 + 40);

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &aBlock);

      *(v53 + 4) = v60;
      a4 = v57;
      *(v53 + 12) = 1024;
      *(v53 + 14) = v49 & 1;
      _os_log_impl(&dword_20AEA4000, v51, v52, "updated bundle identifiers: %s enabled=%{BOOL}d", v53, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v55);
      v61 = v55;
      a5 = v71;
      MEMORY[0x20F2E9420](v61, -1, -1);
      MEMORY[0x20F2E9420](v53, -1, -1);
    }

    v62 = WorkoutConfigurationDataSourcesModel.nanoSyncControl.getter();
    v63 = swift_allocObject();
    *(v63 + 16) = a7;
    *(v63 + 24) = a3;
    *(v63 + 32) = v72;
    *(v63 + 40) = a4;
    *(v63 + 48) = a5;
    *(v63 + 56) = v73 & 1;
    *(v63 + 64) = 0;
    v78 = partial apply for closure #2 in closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:);
    v79 = v63;
    aBlock = MEMORY[0x277D85DD0];
    v75 = 1107296256;
    v76 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v77 = &block_descriptor_57;
    v64 = _Block_copy(&aBlock);

    sub_20AEDA7E4(a4);

    [v62 forceNanoSyncWithOptions:0 completion:v64];

    _Block_release(v64);
  }
}

uint64_t closure #2 in closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, void *a9)
{
  v52 = a8;
  v50 = a9;
  v51 = a5;
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v54 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v54);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  v18 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v21 = a2;
    if (one-time initialization token for xpcService != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.xpcService);
    v23 = a2;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    v49 = v25;
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v47 = a7;
      v27 = v26;
      v28 = swift_slowAlloc();
      v48 = v14;
      v46 = v28;
      v56 = a2;
      aBlock[0] = v28;
      *v27 = 136315138;
      v29 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v30 = String.init<A>(describing:)();
      v32 = a6;
      v33 = v20;
      v34 = a3;
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, aBlock);

      *(v27 + 4) = v35;
      a3 = v34;
      v20 = v33;
      a6 = v32;
      _os_log_impl(&dword_20AEA4000, v24, v49, "failed to nano sync due to: %s", v27, 0xCu);
      v36 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      v14 = v48;
      MEMORY[0x20F2E9420](v36, -1, -1);
      v37 = v27;
      a7 = v47;
      MEMORY[0x20F2E9420](v37, -1, -1);
    }

    else
    {
    }
  }

  type metadata accessor for OS_dispatch_queue();
  v38 = static OS_dispatch_queue.main.getter();
  v39 = swift_allocObject();
  *(v39 + 16) = a3;
  *(v39 + 24) = a4;
  v40 = v50;
  *(v39 + 32) = v51;
  *(v39 + 40) = a6;
  *(v39 + 48) = a7;
  *(v39 + 56) = v52 & 1;
  *(v39 + 64) = v40;
  aBlock[4] = partial apply for closure #1 in closure #2 in closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:);
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_37_1;
  v41 = _Block_copy(aBlock);

  sub_20AEDA7E4(a6);
  v42 = v40;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v43 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v20, v17, v41);
  _Block_release(v41);

  (*(v14 + 8))(v17, v43);
  return (*(v53 + 8))(v20, v55);
}

uint64_t closure #1 in closure #2 in closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), uint64_t a5, char a6, uint64_t a7)
{
  swift_beginAccess();
  v13 = *(a1 + 16);

  v14 = specialized Collection<>.firstIndex(of:)(a2, v13);
  v16 = v15;

  if (v16)
  {
    goto LABEL_7;
  }

  v18 = *(a1 + 16);
  if ((v18 & 0xC000000000000001) != 0)
  {

    v19 = MEMORY[0x20F2E7A20](v14, v18);

    goto LABEL_6;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v19 = *(v18 + 8 * v14 + 32);

LABEL_6:
  swift_beginAccess();
  *(v19 + 24) = a3;

LABEL_7:
  if (a4)
  {
    return a4(a6 & 1, a7);
  }

  return result;
}

uint64_t WorkoutConfigurationDataSourcesModel.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t WorkoutConfigurationDataSourcesModel.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 32);
    v4 = *(v0 + 24);
    return v1(v3, v2);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  if (*(v0 + 40))
  {
    v3 = *(v0 + 48);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t HKWorkoutActivityType.moodForWorkoutType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Station.Mood();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D2B270];
  switch(a1)
  {
    case 2:
    case 7:
    case 10:
    case 12:
    case 17:
    case 19:
    case 21:
    case 24:
    case 26:
    case 31:
    case 32:
    case 38:
    case 39:
    case 43:
    case 52:
    case 58:
    case 66:
    case 76:
    case 77:
    case 78:
      v6 = MEMORY[0x277D2B278];
      break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 11:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 20:
    case 22:
    case 23:
    case 25:
    case 27:
    case 28:
    case 30:
    case 34:
    case 35:
    case 36:
    case 37:
    case 40:
    case 41:
    case 42:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 53:
    case 54:
    case 55:
    case 56:
    case 59:
    case 60:
    case 61:
    case 63:
    case 64:
    case 65:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 73:
    case 74:
    case 75:
    case 79:
      break;
    case 29:
    case 33:
    case 57:
    case 62:
    case 72:
    case 80:
      v6 = MEMORY[0x277D2B268];
      break;
    default:
      if (a1 == 3000)
      {
        v6 = MEMORY[0x277D2B278];
      }

      break;
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    result = Set.Iterator.init(_cocoa:)();
    v1 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x277D84F90];
  v19 = v1;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      outlined consume of Set<NSNumber>.Iterator._Variant();
      return v10;
    }

    while (1)
    {
      v16 = [v15 unsignedIntegerValue];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v1 = v19;
      if (v18 >= v17 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v18 + 1;
      *(v10 + 8 * v18 + 32) = v16;
      v5 = v13;
      v6 = v14;
      if ((v19 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSNumber();
        swift_dynamicCast();
        v15 = v25;
        v13 = v5;
        v14 = v6;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    result = Set.Iterator.init(_cocoa:)();
    v1 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x277D84F90];
  v19 = v1;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      outlined consume of Set<NSNumber>.Iterator._Variant();
      return v10;
    }

    while (1)
    {
      v16 = [v15 unsignedIntegerValue];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v1 = v19;
      if (v18 >= v17 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v18 + 1;
      *(v10 + 8 * v18 + 32) = v16;
      v5 = v13;
      v6 = v14;
      if ((v19 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSNumber();
        swift_dynamicCast();
        v15 = v25;
        v13 = v5;
        v14 = v6;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

id static SegmentMetricsPlatter.metrics(workoutSettingsManager:)(void *a1)
{
  result = [a1 supportedMetrics];
  if (result)
  {
    v2 = result;
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = specialized Sequence.compactMap<A>(_:)(v3);

    v5 = *(v4 + 16);
    v6 = 32;
    v7 = &outlined read-only object #0 of one-time initialization function for metricsWithoutDistance;
    while (v5)
    {
      v8 = *(v4 + v6);
      v6 += 8;
      --v5;
      if (v8 == 1)
      {
        v7 = &outlined read-only object #0 of one-time initialization function for metricsWithDistance;
        break;
      }
    }

    v9 = v7[2];
    if (v9)
    {

      v10 = 0;
      v11 = MEMORY[0x277D84F90];
      do
      {
        v14 = v7[v10 + 4];
        v15 = *(v4 + 16);
        v16 = (v4 + 32);
        while (v15)
        {
          v17 = *v16++;
          --v15;
          if (v17 == v14)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1);
            }

            v13 = *(v11 + 16);
            v12 = *(v11 + 24);
            if (v13 >= v12 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
            }

            *(v11 + 16) = v13 + 1;
            *(v11 + 8 * v13 + 32) = v14;
            break;
          }
        }

        ++v10;
      }

      while (v10 != v9);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SegmentMetricsPlatter(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SegmentMetricsPlatter(_WORD *result, int a2, int a3)
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

uint64_t StatisticAccumulator.__allocating_init(total:count:)(uint64_t a1, double a2)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  return result;
}

uint64_t StatisticAccumulator.init(total:count:)(uint64_t a1, double a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

double StatisticAccumulator.average.getter()
{
  v1 = *(v0 + 24);
  if (v1 < 1)
  {
    return 0.0;
  }

  else
  {
    return *(v0 + 16) / v1;
  }
}

Swift::Void __swiftcall StatisticAccumulator.append(_:)(Swift::Double a1)
{
  *(v1 + 16) = *(v1 + 16) + a1;
  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
  }
}

void CustomTimeSplitsTracker.dataProvider(_:didUpdate:)(void *a1, uint64_t a2)
{
  if (a2 == 3)
  {
    [a1 activityDuration];
    v4 = v3;
    [objc_msgSend(a1 distanceProvider)];
    swift_unknownObjectRelease();

    specialized CustomTimeSplitsTracker.handleElapsedTimeUpdate(elapsedTime:distance:)(v4);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t Announcer.session()()
{
  v1 = *&v0[OBJC_IVAR____TtC11WorkoutCore9Announcer__session];
  if (v1)
  {
    v2 = 0;
    v3 = *&v0[OBJC_IVAR____TtC11WorkoutCore9Announcer__session];
LABEL_6:
    v10 = v1;
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
    return v3;
  }

  v13 = 0;
  v4 = *&v0[OBJC_IVAR____TtC11WorkoutCore9Announcer_initializationQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = &v13;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in Announcer.session();
  *(v6 + 24) = v5;
  aBlock[4] = _sIg_Ieg_TRTA_5;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_88_0;
  v7 = _Block_copy(aBlock);
  v8 = v0;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v3 = v13;
    if (v13)
    {
      v2 = partial apply for closure #1 in Announcer.session();
      goto LABEL_6;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in Announcer.session()(uint64_t a1, id *a2)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore9Announcer__session;
  v4 = *(a1 + OBJC_IVAR____TtC11WorkoutCore9Announcer__session);
  if (!v4)
  {
    v6 = [objc_allocWithZone(type metadata accessor for DaemonSession()) init];
    v7 = *(a1 + v3);
    *(a1 + v3) = v6;

    v4 = *(a1 + v3);
  }

  v9 = *a2;
  *a2 = v4;
  v8 = v4;
}

char *Announcer.init(voiceFeedbackAvailabilityProvider:activityType:)(void *a1, void *a2)
{
  v3 = v2;
  v49 = a1;
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v43 - v6;
  v48 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v48);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v47 = OBJC_IVAR____TtC11WorkoutCore9Announcer_initializationQueue;
  v15 = _sSo17OS_dispatch_queueCMaTm_17(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v45 = "e20StatisticAccumulator";
  v46 = v15;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v48);
  *&v2[v47] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC11WorkoutCore9Announcer__session] = 0;
  *&v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentRequest] = 0;
  v16 = &v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentSiriAnnounceRequestID];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v2[OBJC_IVAR____TtC11WorkoutCore9Announcer__audioSession];
  *(v17 + 2) = 0;
  *(v17 + 3) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *v17 = closure #1 in variable initialization expression of Announcer._audioSession;
  *(v17 + 1) = 0;
  v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_prewarmed] = 0;
  v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_audioSessionSetupComplete] = 0;
  *&v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_liveWorkoutAnnouncementHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerNotifyToken] = 0;
  *&v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateToken] = 0;
  v18 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateKey;
  _sSo17OS_dispatch_queueCMaTm_17(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v19 = NSString.init(stringLiteral:)();
  v20 = [v19 UTF8String];
  v21 = v19;
  *&v3[v18] = v20;
  *&v3[OBJC_IVAR____TtC11WorkoutCore9Announcer_minimumStorageCapacity] = 0x4020000000000000;
  v23 = v49;
  v22 = v50;
  *&v3[OBJC_IVAR____TtC11WorkoutCore9Announcer_availabilityProvider] = v49;
  *&v3[OBJC_IVAR____TtC11WorkoutCore9Announcer_activityType] = v22;
  v24 = type metadata accessor for Announcer();
  v52.receiver = v3;
  v52.super_class = v24;
  v25 = v23;
  v26 = v22;
  v27 = objc_msgSendSuper2(&v52, sel_init);
  v28 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateKey;
  v29 = *&v27[OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateKey];
  v30 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateToken;
  swift_beginAccess();
  v31 = v27;
  notify_register_check(v29, &v27[v30]);
  swift_endAccess();
  v32 = *&v27[v28];
  v33 = static OS_dispatch_queue.main.getter();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = partial apply for closure #1 in Announcer.init(voiceFeedbackAvailabilityProvider:activityType:);
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  aBlock[3] = &block_descriptor_58;
  v35 = _Block_copy(aBlock);

  v36 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerNotifyToken;
  swift_beginAccess();
  notify_register_dispatch(v32, &v31[v36], v33, v35);
  swift_endAccess();
  _Block_release(v35);

  Announcer.updateAutoDownloadedVoiceAssets()();
  Announcer.setupAudioSessionOnBackground()();
  if (v31[OBJC_IVAR____TtC11WorkoutCore9Announcer_prewarmed] == 1 || (v37 = *&v31[OBJC_IVAR____TtC11WorkoutCore9Announcer_availabilityProvider], !VoiceFeedbackAvailabilityProvider.isVoiceFeedbackAvailable()()))
  {
  }

  else
  {
    v38 = v44;
    static TaskPriority.low.getter();
    v39 = type metadata accessor for TaskPriority();
    (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v31;
    v41 = v31;
    _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #1 in Announcer.prewarm(), v40);

    _sScPSgWOhTm_0(v38, &_sScPSgMd, &_sScPSgMR);
  }

  return v31;
}

void closure #1 in Announcer.init(voiceFeedbackAvailabilityProvider:activityType:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Announcer.updateAudioSessionCategory()();
  }
}

id Announcer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerNotifyToken;
  swift_beginAccess();
  notify_cancel(*&v0[v1]);
  v2 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateToken;
  swift_beginAccess();
  notify_cancel(*&v0[v2]);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, v0);

  v5.receiver = v0;
  v5.super_class = type metadata accessor for Announcer();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

Swift::Void __swiftcall Announcer.announce(utterance:)(Swift::String utterance)
{
  v2 = v1;
  object = utterance._object;
  countAndFlagsBits = utterance._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29[-1] - v7;
  v9 = *&v1[OBJC_IVAR____TtC11WorkoutCore9Announcer_availabilityProvider];
  if (VoiceFeedbackAvailabilityProvider.isVoiceFeedbackAvailable()())
  {
    v29[3] = &type metadata for WorkoutFeatures;
    v29[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v29[0]) = 0;
    v10 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm_15(v29);
    if (v10)
    {
      v11 = &v2[OBJC_IVAR____TtC11WorkoutCore9Announcer_liveWorkoutAnnouncementHandler];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        v14 = *(v11 + 1);
        v15 = type metadata accessor for TaskPriority();
        (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
        type metadata accessor for MainActor();
        swift_unknownObjectRetain();

        v16 = static MainActor.shared.getter();
        v17 = swift_allocObject();
        v18 = MEMORY[0x277D85700];
        v17[2] = v16;
        v17[3] = v18;
        v17[4] = v13;
        v17[5] = v14;
        v17[6] = countAndFlagsBits;
        v17[7] = object;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in Announcer.announce(utterance:), v17);

        swift_unknownObjectRelease();
      }

      else
      {
        Announcer.siriAnnounce(_:)(countAndFlagsBits, object);
      }
    }

    else
    {
      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
      type metadata accessor for MainActor();

      v24 = v2;
      v25 = static MainActor.shared.getter();
      v26 = swift_allocObject();
      v27 = MEMORY[0x277D85700];
      v26[2] = v25;
      v26[3] = v27;
      v26[4] = v24;
      v26[5] = countAndFlagsBits;
      v26[6] = object;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #2 in Announcer.announce(utterance:), v26);
    }
  }

  else
  {
    if (one-time initialization token for voiceFeedback != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.voiceFeedback);
    v28 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20AEA4000, v28, v20, "not requesting announcement because voiceFeedbackAvailabilityProvider's isVoiceFeedbackAvailable is false", v21, 2u);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    v22 = v28;
  }
}

uint64_t closure #1 in Announcer.announce(utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = type metadata accessor for MainActor();
  v7[3] = static MainActor.shared.getter();
  ObjectType = swift_getObjectType();
  v12 = *(a5 + 8);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v7[4] = v14;
  *v14 = v7;
  v14[1] = closure #1 in Announcer.announce(utterance:);

  return v16(a6, a7, ObjectType, a5);
}

uint64_t closure #1 in Announcer.announce(utterance:)()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in Announcer.announce(utterance:), v5, v4);
}

uint64_t closure #2 in Announcer.announce(utterance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = type metadata accessor for MainActor();
  v6[3] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = closure #2 in Announcer.announce(utterance:);

  return Announcer.voiceServicesAnnounce(_:)(a5, a6);
}

uint64_t closure #2 in Announcer.announce(utterance:)()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in Announcer.announce(utterance:), v5, v4);
}

{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void Announcer.siriAnnounce(_:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.voiceFeedback);

  v11 = v2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v50 = v5;
    v52 = v11;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315394;
    v51 = a1;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    *(v14 + 12) = 2080;
    if ((specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) != 0 && (v16 = [objc_opt_self() sharedPreferences], v17 = objc_msgSend(v16, sel_outputVoice), v16, v17) && (v18 = objc_msgSend(v17, sel_languageCode), v17, v18))
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter();
      v21 = v22;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, aBlock);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_20AEA4000, v12, v13, "Requesting Siri announcement of utterance=%s in language %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v15, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);

    a1 = v51;
    v11 = v52;
    v5 = v50;
  }

  else
  {
  }

  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;
  (*(v6 + 8))(v9, v5);
  v27 = &v11[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentSiriAnnounceRequestID];
  v28 = *&v11[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentSiriAnnounceRequestID + 8];
  *v27 = v24;
  v27[1] = v26;

  if ((specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) != 0 && (v29 = [objc_opt_self() sharedPreferences], v30 = objc_msgSend(v29, sel_outputVoice), v29, v30) && (v31 = objc_msgSend(v30, sel_languageCode), v30, v31))
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter();
    v34 = v35;
  }

  v36 = objc_allocWithZone(MEMORY[0x277CEF428]);
  v37 = MEMORY[0x20F2E6C00](v24, v26);

  v38 = MEMORY[0x20F2E6C00](a1, a2);
  v39 = MEMORY[0x20F2E6C00](v32, v34);

  v40 = [v36 initWithVoiceFeedbackIdentifier:v37 text:v38 language:v39];

  v41 = [objc_allocWithZone(MEMORY[0x277CEF3C8]) initWithWorkoutVoiceFeedback_];
  if (v41)
  {
    v42 = v41;
    v43 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v44 = [v43 unsignedIntValue];

    UIAccessibilityPostNotification(v44, 0);
    v45 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v46 = [v45 unsignedIntValue];

    UIAccessibilityPostNotification(v46, 0);
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in Announcer.siriAnnounce(_:);
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
    aBlock[3] = &block_descriptor_93;
    v48 = _Block_copy(aBlock);

    [v42 performRequestWithCompletion_];

    _Block_release(v48);
    v40 = v42;
  }
}

char *closure #1 in Announcer.siriAnnounce(_:)(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v3 = [v2 unsignedIntValue];

  UIAccessibilityPostNotification(v3, 0);
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.voiceFeedback);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_20AEA4000, v5, v6, "AFSiriAnnounceVoiceFeedbackRequest result=%{BOOL}d", v7, 8u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = &result[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentSiriAnnounceRequestID];
    v10 = *&result[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentSiriAnnounceRequestID + 8];
    *v9 = 0;
    *(v9 + 1) = 0;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t Announcer.voiceServicesAnnounce(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](Announcer.voiceServicesAnnounce(_:), 0, 0);
}

uint64_t Announcer.voiceServicesAnnounce(_:)()
{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = v0[12];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[11] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    if (one-time initialization token for voiceFeedback != -1)
    {
      swift_once();
      v53 = v0[12];
    }

    v3 = v0[13];
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.voiceFeedback);
    v5 = v3;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[13];
    if (v8)
    {
      v11 = v0[11];
      v10 = v0[12];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v54[0] = v13;
      *v12 = 136315906;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, v54);
      *(v12 + 12) = 1024;
      v0[2] = 0;
      v14 = OBJC_IVAR____TtC11WorkoutCore9Announcer_ringerStateToken;
      swift_beginAccess();
      v15 = *&v9[v14];
      if (v15 == -1)
      {
        v16 = 1;
      }

      else
      {
        notify_get_state(v15, v0 + 2);
        v16 = v0[2] == 0;
      }

      v21 = v0[13];
      *(v12 + 14) = v16;

      *(v12 + 18) = 2080;
      if ((specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) != 0 && (v22 = [objc_opt_self() sharedPreferences], v23 = objc_msgSend(v22, sel_outputVoice), v22, v23) && (v24 = objc_msgSend(v23, sel_languageCode), v23, v24))
      {
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = v25;
      }

      else
      {
        v28 = specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter();
        v27 = v29;
      }

      v30 = v0[13];
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v54);

      *(v12 + 20) = v31;
      *(v12 + 28) = 2080;
      swift_beginAccess();
      v32 = specialized AtomicLazy.load()();
      swift_endAccess();
      v33 = [v32 currentRoute];

      v34 = [v33 outputs];
      v35 = _sSo17OS_dispatch_queueCMaTm_17(0, &lazy cache variable for type metadata for AVAudioSessionPortDescription, 0x277CB8408);
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = MEMORY[0x20F2E6F70](v36, v35);
      v39 = v38;

      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v54);

      *(v12 + 30) = v40;
      _os_log_impl(&dword_20AEA4000, v6, v7, "requesting voice services utterance=%s silent_mode=%{BOOL}d languageId=%s route_before_activation=%s", v12, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v13, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    else
    {
    }

    if (*(v0[13] + OBJC_IVAR____TtC11WorkoutCore9Announcer_audioSessionSetupComplete))
    {
      Announcer.updateAudioSessionCategory()();
    }

    else
    {
      Announcer.setupAudioSession()();
    }

    v41 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for AnnouncerWillStart != -1)
    {
      swift_once();
    }

    v42 = v0[12];
    v43 = v0[13];
    v44 = v0[11];
    [v41 postNotificationName:static NSNotificationName.AnnouncerWillStart object:0];

    swift_beginAccess();
    v45 = specialized AtomicLazy.load()();
    swift_endAccess();
    v46 = swift_allocObject();
    v46[2] = v43;
    v46[3] = v44;
    v46[4] = v42;
    v0[6] = partial apply for closure #1 in Announcer.voiceServicesAnnounce(_:);
    v0[7] = v46;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v0[5] = &block_descriptor_66;
    v47 = _Block_copy(v0 + 2);
    v48 = v0[7];
    v49 = v43;

    [v45 activateWithOptions:0 completionHandler:v47];

    _Block_release(v47);
  }

  else
  {
    if (one-time initialization token for voiceFeedback != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.voiceFeedback);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20AEA4000, v18, v19, "not requesting announcement because utterance is empty", v20, 2u);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }
  }

  v50 = v0[1];
  v51 = *MEMORY[0x277D85DE8];

  return v50();
}

void closure #1 in Announcer.voiceServicesAnnounce(_:)(char a1, void *a2, void *a3)
{
  if (a1)
  {
    if (one-time initialization token for voiceFeedback != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.voiceFeedback);
    v5 = a3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v49 = v9;
      *v8 = 136315138;
      swift_beginAccess();
      v10 = specialized AtomicLazy.load()();
      swift_endAccess();
      v11 = [v10 currentRoute];

      v12 = [v11 outputs];
      v13 = _sSo17OS_dispatch_queueCMaTm_17(0, &lazy cache variable for type metadata for AVAudioSessionPortDescription, 0x277CB8408);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = MEMORY[0x20F2E6F70](v14, v13);
      v17 = v16;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v49);

      *(v8 + 4) = v18;
      _os_log_impl(&dword_20AEA4000, v6, v7, "audio session activated. route_after_activation=%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_15(v9);
      MEMORY[0x20F2E9420](v9, -1, -1);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    if ((specialized Announcer.appLanguageMatchesAssistantLanguage.getter() & 1) != 0 && (v19 = [objc_opt_self() sharedPreferences], v20 = objc_msgSend(v19, sel_outputVoice), v19, v20) && (v21 = objc_msgSend(v20, sel_languageCode), v20, v21))
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter();
    }

    specialized Announcer.voiceName.getter();
    v32 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
    v33 = SynthesisVoice.init(language:name:)();
    objc_allocWithZone(type metadata accessor for SpeechRequest());

    v34 = v33;
    v35 = SpeechRequest.init(text:voice:)();
    swift_beginAccess();
    v36 = specialized AtomicLazy.load()();
    swift_endAccess();
    [v36 opaqueSessionID];

    AudibleRequestProtocol.audioSessionId.setter();
    AudibleRequestProtocol.immediate.setter();
    SynthesizingRequestProtocol.disableCompactVoice.setter();
    SynthesizingRequestProtocol.privacySensitive.setter();

    v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v38 = [v37 unsignedIntValue];

    UIAccessibilityPostNotification(v38, 0);
    v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    v40 = [v39 unsignedIntValue];

    UIAccessibilityPostNotification(v40, 0);
    *(swift_allocObject() + 16) = v35;
    v41 = v35;
    AudibleRequestProtocol.didStartSpeaking.setter();
    v42 = Announcer.session()();
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    *(v43 + 24) = v5;
    v44 = v5;
    v45 = v41;
    dispatch thunk of DaemonSession.speak(speechRequest:didFinish:)();

    v46 = *&v44[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentRequest];
    *&v44[OBJC_IVAR____TtC11WorkoutCore9Announcer_currentRequest] = v45;
  }

  else
  {
    if (one-time initialization token for voiceFeedback != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.voiceFeedback);
    v24 = a2;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      if (a2)
      {
        v29 = a2;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        v31 = v30;
      }

      else
      {
        v30 = 0;
        v31 = 0;
      }

      *(v27 + 4) = v30;
      *v28 = v31;
      _os_log_impl(&dword_20AEA4000, v25, v26, "audio session failed to activate. Failure expected when voice feedback suppression desired. error=%@", v27, 0xCu);
      _sScPSgWOhTm_0(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v28, -1, -1);
      MEMORY[0x20F2E9420](v27, -1, -1);
    }

    v47 = [objc_opt_self() defaultCenter];
    v48 = v47;
    if (one-time initialization token for AnnouncerDidStop != -1)
    {
      swift_once();
      v47 = v48;
    }

    [v47 postNotificationName:static NSNotificationName.AnnouncerDidStop object:0];
  }
}

void closure #1 in closure #1 in Announcer.voiceServicesAnnounce(_:)(void *a1)
{
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.voiceFeedback);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    type metadata accessor for SpeechRequest();
    v7 = SynthesizingRequestProtocol.text.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20AEA4000, oslog, v4, "did start speaking text=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_15(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }
}

void closure #2 in closure #1 in Announcer.voiceServicesAnnounce(_:)(void *a1, void *a2, uint64_t a3)
{
  v31[3] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.voiceFeedback);
  v7 = a1;
  v8 = a1;
  v9 = a2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31[0] = v14;
    *v12 = 136315650;
    type metadata accessor for SpeechRequest();
    v15 = SynthesizingRequestProtocol.text.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v31);

    *(v12 + 4) = v17;
    *(v12 + 12) = 1024;

    *(v12 + 14) = a1 == 0;
    *(v12 + 18) = 2112;
    if (a1)
    {
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v12 + 20) = v19;
    *v13 = v20;
    _os_log_impl(&dword_20AEA4000, v10, v11, "did finish speaking text=%s successfully=%{BOOL}d error=%@", v12, 0x1Cu);
    _sScPSgWOhTm_0(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_15(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  else
  {
  }

  v21 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for AnnouncerDidStop != -1)
  {
    swift_once();
  }

  [v21 postNotificationName:static NSNotificationName.AnnouncerDidStop object:0];

  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v23 = [v22 unsignedIntValue];

  UIAccessibilityPostNotification(v23, 0);
  swift_beginAccess();
  v24 = specialized AtomicLazy.load()();
  swift_endAccess();
  v31[0] = 0;
  v25 = [v24 setActive:0 withOptions:1 error:v31];

  if (v25)
  {
    v26 = v31[0];
  }

  else
  {
    v27 = v31[0];
    v28 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v29 = *(a3 + OBJC_IVAR____TtC11WorkoutCore9Announcer_currentRequest);
  *(a3 + OBJC_IVAR____TtC11WorkoutCore9Announcer_currentRequest) = 0;

  v30 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall Announcer.announce(workoutEventType:)(HKWorkoutEventType workoutEventType)
{
  v1 = 0xD000000000000015;
  if (workoutEventType == HKWorkoutEventTypePause)
  {
    v2 = "WORKOUT_RESUMED_SPOKEN";
  }

  else
  {
    if (workoutEventType != HKWorkoutEventTypeResume)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v2 = "out event type to announce";
    v1 = 0xD000000000000016;
  }

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = MEMORY[0x20F2E6C00](v1, v2 | 0x8000000000000000);
  v6 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  Announcer.announce(utterance:)(v11);
}

Swift::Void __swiftcall Announcer.stopSpeaking()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - v3;
  v5 = v0 + OBJC_IVAR____TtC11WorkoutCore9Announcer_liveWorkoutAnnouncementHandler;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(v5 + 8);
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v7;
    v10[5] = v8;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in Announcer.stopSpeaking(), v10);
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC11WorkoutCore9Announcer_currentSiriAnnounceRequestID + 8);
    if (v11)
    {
      v12 = *(v0 + OBJC_IVAR____TtC11WorkoutCore9Announcer_currentSiriAnnounceRequestID);
      v13 = objc_opt_self();

      v14 = MEMORY[0x20F2E6C00](v12, v11);

      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #2 in Announcer.stopSpeaking();
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
      aBlock[3] = &block_descriptor_16_0;
      v16 = _Block_copy(aBlock);

      [v13 deactivateRequestForFeedbackIdentifier:v14 completion:v16];
      _Block_release(v16);
    }

    else
    {
      v17 = *(v0 + OBJC_IVAR____TtC11WorkoutCore9Announcer_currentRequest);
      if (v17)
      {
        v18 = v17;
        v21 = Announcer.session()();
        dispatch thunk of DaemonSession.cancel(request:)();

        v19 = v21;
      }
    }
  }
}