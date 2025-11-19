uint64_t closure #1 in WeatherSummaryManager.fetchSummary()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WeatherSummaryManager.fetchSummary()partial apply;

  return closure #1 in WeatherSummaryManager.fetchSummary()(a1, v4, v5, v6);
}

uint64_t closure #1 in WeatherSummaryManager.fetchSummary()partial apply()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t outlined init with copy of AirQuality?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WeatherKit10AirQualityVSgMd, &_s10WeatherKit10AirQualityVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AirQuality?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t key path getter for InferenceAvailabilityProvider.inferenceAvailabilityState : InferenceAvailabilityProvider@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider__inferenceAvailabilityState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t key path setter for InferenceAvailabilityProvider.inferenceAvailabilityState : InferenceAvailabilityProvider(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t InferenceAvailabilityProvider.inferenceAvailabilityState.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider__inferenceAvailabilityState;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

unint64_t lazy protocol witness table accessor for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider()
{
  result = lazy protocol witness table cache variable for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider;
  if (!lazy protocol witness table cache variable for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider)
  {
    type metadata accessor for InferenceAvailabilityProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider);
  }

  return result;
}

uint64_t type metadata accessor for InferenceAvailabilityProvider()
{
  result = type metadata singleton initialization cache for InferenceAvailabilityProvider;
  if (!type metadata singleton initialization cache for InferenceAvailabilityProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InferenceAvailabilityProvider.inferenceAvailabilityState.setter(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t partial apply for closure #1 in InferenceAvailabilityProvider.inferenceAvailabilityState.setter()
{
  return partial apply for closure #1 in InferenceAvailabilityProvider.inferenceAvailabilityState.setter();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider__inferenceAvailabilityState;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void (*InferenceAvailabilityProvider.inferenceAvailabilityState.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = InferenceAvailabilityProvider._inferenceAvailabilityState.modify();
  return InferenceAvailabilityProvider.inferenceAvailabilityState.modify;
}

void InferenceAvailabilityProvider.inferenceAvailabilityState.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t InferenceAvailabilityProvider.inferenceIsAvailable.getter()
{
  swift_getKeyPath();
  v3 = v0;
  lazy protocol witness table accessor for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider__inferenceAvailabilityState;
  swift_beginAccess();
  return *(v3 + v1) & 1;
}

uint64_t InferenceAvailabilityProvider.__allocating_init(inferenceClient:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider__inferenceAvailabilityState) = 2;
  ObservationRegistrar.init()();
  v6 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider_inferenceClient;
  v7 = type metadata accessor for InferenceClient();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t InferenceAvailabilityProvider.init(inferenceClient:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider__inferenceAvailabilityState) = 2;
  ObservationRegistrar.init()();
  v3 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider_inferenceClient;
  v4 = type metadata accessor for InferenceClient();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t InferenceAvailabilityProvider.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t InferenceAvailabilityProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for InferenceAvailabilityProvider()
{
  result = type metadata accessor for InferenceClient();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InferenceAvailabilityProvider.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

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

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
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

uint64_t storeEnumTagSinglePayload for InferenceAvailabilityProvider.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for InferenceAvailabilityProvider.State(unsigned __int8 *a1)
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

_BYTE *destructiveInjectEnumTag for InferenceAvailabilityProvider.State(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t key path getter for AddWorkoutDataSource.popular : AddWorkoutDataSource@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t key path setter for AddWorkoutDataSource.popular : AddWorkoutDataSource(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return AddWorkoutDataSource.popular.setter(v4);
}

uint64_t AddWorkoutDataSource.popular.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t type metadata accessor for AddWorkoutDataSource()
{
  result = type metadata singleton initialization cache for AddWorkoutDataSource;
  if (!type metadata singleton initialization cache for AddWorkoutDataSource)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AddWorkoutDataSource.popular.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore08Standardb3AddB3RowC_Tt1g5(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #1 in AddWorkoutDataSource.popular.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

void (*AddWorkoutDataSource.popular.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11WorkoutCore20AddWorkoutDataSource___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AddWorkoutDataSource._popular.modify();
  return AddWorkoutDataSource.popular.modify;
}

void AddWorkoutDataSource.popular.modify(void *a1)
{
  AddWorkoutDataSource.popular.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t key path getter for AddWorkoutDataSource.alphabeticGroups : AddWorkoutDataSource@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t key path setter for AddWorkoutDataSource.alphabeticGroups : AddWorkoutDataSource(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return AddWorkoutDataSource.alphabeticGroups.setter(v4);
}

uint64_t AddWorkoutDataSource.alphabeticGroups.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t keypath_setTm_6(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t AddWorkoutDataSource.alphabeticGroups.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);

  v5 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_Say11WorkoutCore08Standardb3AddB3RowCGTt1g5(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #1 in AddWorkoutDataSource.alphabeticGroups.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;
}

void (*AddWorkoutDataSource.alphabeticGroups.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11WorkoutCore20AddWorkoutDataSource___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AddWorkoutDataSource._alphabeticGroups.modify();
  return AddWorkoutDataSource.alphabeticGroups.modify;
}

uint64_t AddWorkoutDataSource.__allocating_init(wheelchairStatusProvider:bypassReadinessChecker:)(void *a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  AddWorkoutDataSource.init(wheelchairStatusProvider:bypassReadinessChecker:)(a1, a2);
  return v7;
}

uint64_t AddWorkoutDataSource.init(wheelchairStatusProvider:bypassReadinessChecker:)(void *a1, char a2)
{
  LOBYTE(v3) = a2;
  v5 = MEMORY[0x277D84F90];
  *(v2 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say11WorkoutCore08Standardc3AddC3RowCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  ObservationRegistrar.init()();
  v64 = v2;
  *(v2 + 32) = a1;
  v6 = objc_opt_self();
  v63 = a1;
  swift_unknownObjectRetain();
  v7 = [v6 addWorkoutPopularRows_];
  if (!v7)
  {
    __break(1u);
    goto LABEL_80;
  }

  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore03AddA3Row_pMd, &_s11WorkoutCore03AddA3Row_pMR);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v70[0] = v5;
  v65 = v6;
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v3;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_22:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v10 = __CocoaSet.count.getter();
  v11 = v3;
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_4:
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  do
  {
    v14 = v12;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        LOBYTE(v3) = MEMORY[0x20F2E7A20](v14, v9);
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v14 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v3 = *(v9 + 8 * v14 + 32);
        swift_unknownObjectRetain();
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      type metadata accessor for StandardWorkoutAddWorkoutRow();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v14;
      if (v12 == v10)
      {
        goto LABEL_23;
      }
    }

    LOBYTE(v3) = v15;
    MEMORY[0x20F2E6F30]();
    if (*((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v13 = v70[0];
  }

  while (v12 != v10);
LABEL_23:

  *(v64 + 16) = v13;
  v17 = MEMORY[0x277D84F90];
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say11WorkoutCore08Standardc3AddC3RowCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (v11)
  {
    v19 = 1;
    v20 = 1;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v21 = static WorkoutDevicesProvider.shared;
    v20 = WorkoutReadinessChecker.supportsPairedWatchFeatures()();
    v70[0] = v21;
    v19 = WorkoutReadinessChecker.supportsExternalHeartRateSensorFeatures()();
  }

  v22 = [v65 NLAddWorkoutAllSortedRowsIsWheelchairUser:objc_msgSend(v63 supportsPairedWatchFeatures:sel_isWheelchairUser) supportsExternalHeartRateSensorFeatures:{v20, v19}];
  if (!v22)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v23 = v22;
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v70[0] = v17;
  v25 = v24 & 0xFFFFFFFFFFFFFF8;
  if (v24 >> 62)
  {
LABEL_78:
    v26 = __CocoaSet.count.getter();
  }

  else
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v28 = 0;
    while (2)
    {
      v29 = v28;
      while (1)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          MEMORY[0x20F2E7A20](v29, v24);
          v28 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v29 >= *(v25 + 16))
          {
            goto LABEL_73;
          }

          v30 = *(v24 + 8 * v29 + 32);
          swift_unknownObjectRetain();
          v28 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }
        }

        type metadata accessor for StandardWorkoutAddWorkoutRow();
        if (swift_dynamicCastClass())
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v29;
        if (v28 == v26)
        {
          goto LABEL_46;
        }
      }

      MEMORY[0x20F2E6F30]();
      if (*((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v27 = v70[0];
      if (v28 != v26)
      {
        continue;
      }

      break;
    }
  }

LABEL_46:

  v32 = [objc_opt_self() currentCollation];
  specialized _arrayForceCast<A, B>(_:)(v27);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v66 = v32;
  v34 = [v32 sortedArrayFromArray:isa collationStringSelector:sel_sortingTitle];

  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = v35 + 32;
    do
    {
      outlined init with copy of Any(v37, v70);
      __swift_project_boxed_opaque_existential_0(v70, v70[3]);
      v40 = [v66 sectionForObject:_bridgeAnythingToObjectiveC<A>(_:)() collationStringSelector:sel_sortingTitle];
      swift_unknownObjectRelease();
      v24 = [v66 sectionTitles];
      v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_74;
      }

      if (v40 >= *(v41 + 16))
      {
        goto LABEL_75;
      }

      v42 = v41 + 16 * v40;
      v24 = *(v42 + 32);
      v43 = *(v42 + 40);

      if (v18[2] && (v44 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v43), (v45 & 1) != 0))
      {
        v46 = *(v18[7] + 8 * v44);
        v69 = v46;
      }

      else
      {
        v46 = MEMORY[0x277D84F90];
        v69 = MEMORY[0x277D84F90];
      }

      outlined init with copy of Any(v70, &v68);
      type metadata accessor for StandardWorkoutAddWorkoutRow();
      if (swift_dynamicCast())
      {
        v47 = v67;
        MEMORY[0x20F2E6F30]();
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v60 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v46 = v69;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v18;
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v43);
      v50 = v18[2];
      v51 = (v49 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        goto LABEL_76;
      }

      v53 = v49;
      if (v18[3] >= v52)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v18 = v68;
          if (v49)
          {
            goto LABEL_48;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v18 = v68;
          if (v53)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, isUniquelyReferenced_nonNull_native);
        v54 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v43);
        if ((v53 & 1) != (v55 & 1))
        {
          goto LABEL_81;
        }

        v25 = v54;
        v18 = v68;
        if (v53)
        {
LABEL_48:
          v38 = v18[7];
          v39 = *(v38 + 8 * v25);
          *(v38 + 8 * v25) = v46;

          goto LABEL_49;
        }
      }

      v18[(v25 >> 6) + 8] |= 1 << v25;
      v56 = (v18[6] + 16 * v25);
      *v56 = v24;
      v56[1] = v43;
      *(v18[7] + 8 * v25) = v46;
      v57 = v18[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_77;
      }

      v18[2] = v59;
LABEL_49:
      __swift_destroy_boxed_opaque_existential_0(v70);
      v37 += 32;
      --v36;
    }

    while (v36);
  }

  AddWorkoutDataSource.alphabeticGroups.setter(v61);

  swift_unknownObjectRelease();
  return v64;
}

char *AddWorkoutDataSource.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC11WorkoutCore20AddWorkoutDataSource___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t AddWorkoutDataSource.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC11WorkoutCore20AddWorkoutDataSource___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueVTt1g5(uint64_t a1, uint64_t a2)
{
  v85 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v4 = *(v85 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v85);
  v72 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v68 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMR);
  v11 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v79 = &v68 - v12;
  v77 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  v83 = *(v77 - 8);
  v13 = *(v83 + 64);
  v14 = MEMORY[0x28223BE20](v77);
  v84 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v74 = &v68 - v17;
  MEMORY[0x28223BE20](v16);
  v76 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetSgMd, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = (&v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v21);
  v26 = (&v68 - v25);
  v80 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v80 + 16))
  {
    return 0;
  }

  v27 = 0;
  v73 = a1;
  v28 = *(a1 + 64);
  v70 = a1 + 64;
  v71 = v10;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v69 = (v29 + 63) >> 6;
  v75 = (v4 + 48);
  v32 = &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMd;
  v33 = v74;
  while (v31)
  {
    v82 = (v31 - 1) & v31;
    v36 = __clz(__rbit64(v31)) | (v27 << 6);
LABEL_17:
    v41 = (*(v73 + 48) + 16 * v36);
    v42 = *v41;
    v43 = v41[1];
    v44 = v76;
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(*(v73 + 56) + *(v83 + 72) * v36, v76);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMR);
    v46 = *(v45 + 48);
    *v23 = v42;
    v23[1] = v43;
    outlined init with take of Apple_Workout_Core_ActivityMetadataValue(v44, v23 + v46, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
    (*(*(v45 - 8) + 56))(v23, 0, 1, v45);

LABEL_18:
    outlined init with take of (key: String, value: Apple_Workout_Core_ActivityMetadataValue)?(v23, v26);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMR);
    v48 = (*(*(v47 - 8) + 48))(v26, 1, v47);
    v81 = v48 == 1;
    if (v48 == 1)
    {
      return v81;
    }

    v49 = v32;
    v50 = v23;
    v51 = v85;
    v52 = *(v47 + 48);
    v53 = *v26;
    v54 = v26[1];
    v55 = v80;
    v56 = v26;
    outlined init with take of Apple_Workout_Core_ActivityMetadataValue(v26 + v52, v33, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
    v57 = v33;
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v54);
    LOBYTE(v53) = v59;

    if ((v53 & 1) == 0)
    {
      goto LABEL_31;
    }

    v60 = v84;
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(*(v55 + 56) + *(v83 + 72) * v58, v84);
    v61 = v79;
    v62 = *(v78 + 48);
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v60, v79);
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v57, v61 + v62);
    v63 = *v75;
    if ((*v75)(v61, 1, v51) == 1)
    {
      v33 = v57;
      if (v63(v61 + v62, 1, v85) != 1)
      {
        goto LABEL_29;
      }

      v26 = v56;
      outlined destroy of (Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?, Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?)(v61, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    }

    else
    {
      v64 = v71;
      outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v61, v71);
      if (v63(v61 + v62, 1, v85) == 1)
      {
        outlined destroy of Apple_Workout_Core_ActivityMetadataValue(v64, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
        v33 = v74;
LABEL_29:
        outlined destroy of (Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?, Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?)(v61, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMR);
LABEL_30:
        outlined destroy of Apple_Workout_Core_ActivityMetadataValue(v84, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
        v57 = v33;
LABEL_31:
        outlined destroy of Apple_Workout_Core_ActivityMetadataValue(v57, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
        return 0;
      }

      v26 = v56;
      v65 = v72;
      outlined init with take of Apple_Workout_Core_ActivityMetadataValue(v61 + v62, v72, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      v66 = specialized static Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue.== infix(_:_:)(v64, v65);
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue(v65, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue(v64, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      outlined destroy of (Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?, Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?)(v61, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
      v33 = v74;
      if ((v66 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v34 = *(v77 + 20);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v35 = v84;
    LOBYTE(v34) = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue(v35, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
    result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue(v33, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
    v23 = v50;
    v32 = v49;
    v31 = v82;
    if ((v34 & 1) == 0)
    {
      return v81;
    }
  }

  if (v69 <= v27 + 1)
  {
    v37 = v27 + 1;
  }

  else
  {
    v37 = v69;
  }

  v38 = v37 - 1;
  while (1)
  {
    v39 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v39 >= v69)
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMR);
      (*(*(v67 - 8) + 56))(v23, 1, 1, v67);
      v82 = 0;
      v27 = v38;
      goto LABEL_18;
    }

    v40 = *(v70 + 8 * v39);
    ++v27;
    if (v40)
    {
      v82 = (v40 - 1) & v40;
      v36 = __clz(__rbit64(v40)) | (v39 << 6);
      v27 = v39;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs5Int32V_SdTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 4 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_Say11WorkoutCore08Standardb3AddB3RowCGTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v20 = *(*(a2 + 56) + 8 * v17);

    v22 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore08Standardb3AddB3RowC_Tt1g5(v21, v16);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ11WorkoutCore16ExternalProviderC_SayAC0B13ConfigurationCGTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    v14 = *(*(v3 + 56) + 8 * v12);

    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v18 = *(*(a2 + 56) + 8 * v15);

    v20 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore0B13ConfigurationC_Tt1g5(v19, v14);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for AddWorkoutDataSource()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: String, value: Apple_Workout_Core_ActivityMetadataValue)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetSgMd, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?, Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void HeartRateTargetZone.workoutKitRepresentation.getter(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
  {
    if (*(v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
    {
      v3 = v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
      swift_beginAccess();
      if ((*(v3 + 16) & 1) == 0)
      {
        if (*v3 <= *(v3 + 8))
        {
          v4 = static WorkoutAlertMetric.countPerMinute.getter();
          *(a1 + 24) = type metadata accessor for HeartRateRangeAlert();
          *(a1 + 32) = lazy protocol witness table accessor for type HeartRateRangeAlert and conformance HeartRateRangeAlert(&lazy protocol witness table cache variable for type HeartRateRangeAlert and conformance HeartRateRangeAlert, MEMORY[0x277CE40C8]);
          __swift_allocate_boxed_opaque_existential_1(a1);
          static WorkoutAlert<>.heartRate(_:unit:)();

          return;
        }

        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_7:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v5 = v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex;
  swift_beginAccess();
  if (*(v5 + 8))
  {
    goto LABEL_7;
  }

  if (!__OFADD__(*v5, 1))
  {
    *(a1 + 24) = type metadata accessor for HeartRateZoneAlert();
    *(a1 + 32) = lazy protocol witness table accessor for type HeartRateRangeAlert and conformance HeartRateRangeAlert(&lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert, MEMORY[0x277CE4098]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    static WorkoutAlert<>.heartRate(zone:)();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type HeartRateRangeAlert and conformance HeartRateRangeAlert(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MirroredClientPrecisionStart.init(protobuf:)(uint64_t *a1)
{
  v2 = *a1;
  Date.init(timeIntervalSinceReferenceDate:)();

  return outlined destroy of Apple_Workout_Core_MirroredClientPrecisionStart(a1);
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredClientPrecisionStart(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MirroredClientPrecisionStart.precisionStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MirroredClientPrecisionStart.init(precisionStartDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MirroredClientPrecisionStart.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  return static Message.with(_:)();
}

uint64_t closure #1 in MirroredClientPrecisionStart.protobuf.getter(void *a1)
{
  result = Date.timeIntervalSinceReferenceDate.getter();
  *a1 = v3;
  return result;
}

uint64_t partial apply for closure #1 in MirroredClientPrecisionStart.protobuf.getter(void *a1)
{
  v3 = *(v1 + 16);
  result = Date.timeIntervalSinceReferenceDate.getter();
  *a1 = v5;
  return result;
}

unint64_t MirroredClientPrecisionStart.description.getter()
{
  _StringGuts.grow(_:)(22);

  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v0 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = [v0 stringFromDate_];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x20F2E6D80](v3, v5);

  return 0xD000000000000014;
}

uint64_t protocol witness for MirroredMessageProtocol.init(protobuf:) in conformance MirroredClientPrecisionStart(uint64_t *a1)
{
  v2 = *a1;
  Date.init(timeIntervalSinceReferenceDate:)();

  return outlined destroy of Apple_Workout_Core_MirroredClientPrecisionStart(a1);
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredClientPrecisionStart()
{
  type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  return static Message.with(_:)();
}

uint64_t MirroredClientPrecisionStart.hash(into:)()
{
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int MirroredClientPrecisionStart.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredClientPrecisionStart()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MirroredClientPrecisionStart()
{
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredClientPrecisionStart()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t instantiation function for generic protocol witness table for MirroredClientPrecisionStart(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type MirroredClientPrecisionStart and conformance MirroredClientPrecisionStart, type metadata accessor for MirroredClientPrecisionStart);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for MirroredClientPrecisionStart()
{
  result = type metadata singleton initialization cache for MirroredClientPrecisionStart;
  if (!type metadata singleton initialization cache for MirroredClientPrecisionStart)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for MirroredClientPrecisionStart()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

WorkoutCore::MultisportTransitionState_optional __swiftcall MultisportTransitionState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type MultisportTransitionState and conformance MultisportTransitionState()
{
  result = lazy protocol witness table cache variable for type MultisportTransitionState and conformance MultisportTransitionState;
  if (!lazy protocol witness table cache variable for type MultisportTransitionState and conformance MultisportTransitionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultisportTransitionState and conformance MultisportTransitionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultisportTransitionState and conformance MultisportTransitionState;
  if (!lazy protocol witness table cache variable for type MultisportTransitionState and conformance MultisportTransitionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultisportTransitionState and conformance MultisportTransitionState);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MultisportTransitionState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MultisportTransitionState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for MultisportTransitionState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MultisportTransitionState(uint64_t result, unsigned int a2, unsigned int a3)
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

void PowerAccumulator.instantaneousPower.didset()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower];
  v22 = *&v0[OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower];
  v23 = *&v0[OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower + 8];
  v24 = *&v0[OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower + 16];
  if (FakeableMetric.wrappedValue.getter() == 0.0)
  {
    goto LABEL_20;
  }

  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone;
  v4 = *&v0[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone] + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  if (*(v4 + 16) <= 0x3Fu)
  {
    if (*(v4 + 8) <= 3u || *(v4 + 8) > 5u || *(v4 + 8) == 4)
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v19 = *v2;
    v20 = v2[1];
    v21 = v2[2];
    v6 = FakeableMetric.wrappedValue.getter();
    PowerAccumulator.trackTargetZone(for:)(v6);
  }

LABEL_11:
  v7 = *&v1[v3] + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v8 = *(v7 + 16);
  if ((v8 & 0xC0) != 0x80)
  {
    goto LABEL_20;
  }

  v9 = v8 & 0x3F;
  if (v9 <= 3 || v9 > 5 || v9 == 4)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v16 = *v2;
  v17 = v2[1];
  v18 = v2[2];
  v11 = FakeableMetric.wrappedValue.getter();
  PowerAccumulator.trackTargetZone(for:)(v11);
LABEL_20:
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(partial apply for closure #1 in PowerAccumulator.instantaneousPower.didset, v12);

  v13 = OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale;
  swift_beginAccess();
  v1[v13] = 0;
  v14 = [v1 updateHandler];
  if (v14)
  {
    v15 = v14;
    (*(v14 + 2))();
    _Block_release(v15);
  }
}

void closure #1 in PowerAccumulator.instantaneousPower.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower + 16) = 0;
    PowerAccumulator.instantaneousPower.didset();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale;
    v4 = v2;
    swift_beginAccess();
    v4[v3] = 1;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 updateHandler];

    if (v7)
    {
      v7[2](v7);
      _Block_release(v7);
    }
  }
}

uint64_t (*PowerAccumulator.instantaneousPower.modify(uint64_t a1))(void *a1, uint64_t a2)
{
  v2 = OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  v3 = (v1 + v2);
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  *a1 = FakeableMetric.wrappedValue.getter();
  return PowerAccumulator.instantaneousPower.modify;
}

uint64_t PowerAccumulator.instantaneousPowerStale.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PowerAccumulator.instantaneousPowerStale.setter(char a1)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void PowerAccumulator.averagePower.didset()
{
  v1 = v0;
  v2 = OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone;
  v3 = *&v0[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone] + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  if (*(v3 + 16) <= 0x3Fu)
  {
    if (*(v3 + 8) == 6)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v15 = *&v1[OBJC_IVAR___NLSessionActivityPowerAccumulator__averagePower];
    v16 = *&v1[OBJC_IVAR___NLSessionActivityPowerAccumulator__averagePower + 8];
    v17 = *&v1[OBJC_IVAR___NLSessionActivityPowerAccumulator__averagePower + 16];
    v5 = FakeableMetric.wrappedValue.getter();
    PowerAccumulator.trackTargetZone(for:)(v5);
  }

LABEL_6:
  v6 = *&v1[v2] + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v7 = *(v6 + 16);
  if ((v7 & 0xC0) != 0x80)
  {
    goto LABEL_11;
  }

  if ((v7 & 0x3F) == 6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v12 = *&v1[OBJC_IVAR___NLSessionActivityPowerAccumulator__averagePower];
  v13 = *&v1[OBJC_IVAR___NLSessionActivityPowerAccumulator__averagePower + 8];
  v14 = *&v1[OBJC_IVAR___NLSessionActivityPowerAccumulator__averagePower + 16];
  v9 = FakeableMetric.wrappedValue.getter();
  PowerAccumulator.trackTargetZone(for:)(v9);
LABEL_11:
  v10 = [v1 updateHandler];
  if (v10)
  {
    v11 = v10;
    (*(v10 + 2))();
    _Block_release(v11);
  }
}

uint64_t (*PowerAccumulator.averagePower.modify(uint64_t a1))(void *a1, uint64_t a2)
{
  v2 = OBJC_IVAR___NLSessionActivityPowerAccumulator__averagePower;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  v3 = (v1 + v2);
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  *a1 = FakeableMetric.wrappedValue.getter();
  return PowerAccumulator.averagePower.modify;
}

double @objc PowerAccumulator.instantaneousPower.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  return FakeableMetric.wrappedValue.getter();
}

double PowerAccumulator.instantaneousPower.getter(void *a1)
{
  v2 = (v1 + *a1);
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  return FakeableMetric.wrappedValue.getter();
}

void PowerAccumulator.thirtySecondAveragePower.setter(double a1)
{
  *&v1[OBJC_IVAR___NLSessionActivityPowerAccumulator__thirtySecondAveragePower + 16] = a1;
  v2 = [v1 updateHandler];
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))();

    _Block_release(v3);
  }
}

void key path setter for PowerAccumulator.thirtySecondAveragePower : PowerAccumulator(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  *(*a2 + OBJC_IVAR___NLSessionActivityPowerAccumulator__thirtySecondAveragePower + 16) = v2;
  v4 = [v3 updateHandler];
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))();

    _Block_release(v5);
  }
}

void (*PowerAccumulator.thirtySecondAveragePower.modify(uint64_t a1))(void *a1)
{
  v2 = OBJC_IVAR___NLSessionActivityPowerAccumulator__thirtySecondAveragePower;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  v3 = (v1 + v2);
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  *a1 = FakeableMetric.wrappedValue.getter();
  return PowerAccumulator.thirtySecondAveragePower.modify;
}

void PowerAccumulator.thirtySecondAveragePower.modify(void *a1)
{
  v1 = a1[1];
  *&v1[a1[2] + 16] = *a1;
  v2 = [v1 updateHandler];
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))();

    _Block_release(v3);
  }
}

uint64_t key path getter for PowerAccumulator.samplesPublished : PowerAccumulator@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for PowerAccumulator.samplesPublished : PowerAccumulator(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t PowerAccumulator.samplesPublished.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t PowerAccumulator.samplesPublished.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*PowerAccumulator.samplesPublished.modify(uint64_t *a1))(void *a1)
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
  return PowerAccumulator.samplesPublished.modify;
}

void PowerAccumulator.samplesPublished.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for PowerAccumulator.$samplesPublished : PowerAccumulator(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMd, &_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for PowerAccumulator.$samplesPublished : PowerAccumulator(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMd, &_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t PowerAccumulator.$samplesPublished.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMd, &_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t PowerAccumulator.$samplesPublished.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMd, &_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PowerAccumulator.$samplesPublished.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMR);
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

  v10 = OBJC_IVAR___NLSessionActivityPowerAccumulator__samplesPublished;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMd, &_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PowerAccumulator.$samplesPublished.modify;
}

void PowerAccumulator.$samplesPublished.modify(uint64_t a1, char a2)
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

uint64_t PowerAccumulator.chartDataElements.getter()
{
  if (!*(v0 + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider))
  {
    return MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  return v2;
}

void key path setter for PowerAccumulator.invalidationTimer : PowerAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *PowerAccumulator.invalidationTimer.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PowerAccumulator.invalidationTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for PowerAccumulator.startDate : PowerAccumulator(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  _s10Foundation4DateVSgWOcTm_5(a1, &v15 - v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  outlined assign with take of Date?(v11, v12 + v13);
  return swift_endAccess();
}

uint64_t PowerAccumulator.startDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return _s10Foundation4DateVSgWOcTm_5(v2 + v4, a2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t PowerAccumulator.startDate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t PowerAccumulator.oldZoneState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_oldZoneState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t PowerAccumulator.oldZoneState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_oldZoneState;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t PowerAccumulator.workoutAlertDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PowerAccumulator.workoutAlertDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___NLSessionActivityPowerAccumulator_workoutAlertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PowerAccumulator.workoutAlertDelegate.modify;
}

void PowerAccumulator.workoutAlertDelegate.modify(uint64_t a1, char a2)
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

unsigned __int8 *PowerAccumulator.__allocating_init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)(void *a1, void *a2, void *a3, char *a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = specialized PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)(a1, a2, a3, a4, a5, a6);

  return v14;
}

unsigned __int8 *PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)(void *a1, void *a2, void *a3, char *a4, void *a5, void *a6)
{
  v7 = specialized PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)(a1, a2, a3, a4, a5, a6);

  return v7;
}

uint64_t closure #1 in PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v0 - 8);
  v1 = *(v15 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v4 = *(v14 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_16(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = partial apply for closure #1 in closure #1 in PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_90;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_9(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v7, v3, v11);
  _Block_release(v11);

  (*(v15 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v14);
}

void closure #1 in closure #1 in PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    PowerAccumulator.didUpdateBTSensorSeenStatus()();
  }
}

id PowerAccumulator.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 didUpdateBTSensorSeenStatus];
  [v1 removeObserver:v3 name:v4 object:0];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for PowerAccumulator();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void PowerAccumulator.didUpdateBTSensorSeenStatus()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  isa = v6[8].isa;
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled;
  if (v0[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled])
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.app);
    v26 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20AEA4000, v26, v12, "PowerAccumulator: (didUpdateBTSensorSeenStatus) early return because power chart is alreay enabled", v13, 2u);
      MEMORY[0x20F2E9420](v13, -1, -1);
    }

    v14 = v26;
  }

  else
  {
    v0[v10] = specialized static PowerAccumulator.powerChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(*&v0[OBJC_IVAR___NLSessionActivityPowerAccumulator_liveWorkoutConfiguration], *&v0[OBJC_IVAR___NLSessionActivityPowerAccumulator_workoutSettingsManager]) & 1;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.app);
    v16 = v0;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v26 = v6;
      v20 = v19;
      *v19 = 67109376;
      v19[1] = v0[v10];

      *(v20 + 4) = 1024;
      *(v20 + 10) = [objc_opt_self() hasHadPairedCyclingPowerSensors];
      _os_log_impl(&dword_20AEA4000, v17, v18, "PowerAccumulator: (didUpdateBTSensorSeenStatus) updated powerChartEnabled: %{BOOL}d, hasHadPairedCyclingPowerSensors: %{BOOL}d", v20, 0xEu);
      v21 = v20;
      v6 = v26;
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    else
    {

      v17 = v16;
    }

    v22 = OBJC_IVAR___NLSessionActivityPowerAccumulator_startDate;
    swift_beginAccess();
    _s10Foundation4DateVSgWOcTm_5(v16 + v22, v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((v6[6].isa)(v4, 1, v5) == 1)
    {
      _sSo8NSObjectCSgWOhTm_11(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_20AEA4000, v23, v24, "PowerAccumulator: (didUpdateBTSensorSeenStatus) early return because accumulator did not start yet", v25, 2u);
        MEMORY[0x20F2E9420](v25, -1, -1);
      }
    }

    else
    {
      (v6[4].isa)(v9, v4, v5);
      if (v0[v10] == 1)
      {
        PowerAccumulator.enablePowerChart(with:)(v9);
      }

      (v6[1].isa)(v9, v5);
    }
  }
}

void PowerAccumulator.enablePowerChart(with:)(char *a1)
{
  v99 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  v97 = *(v15 - 8);
  v98 = v15;
  v16 = *(v97 + 64);
  MEMORY[0x28223BE20](v15);
  v96 = &v85 - v17;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v21);
  v24 = &v85 - v23;
  if (v1[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled] == 1)
  {
    v94 = v22;
    v87 = v14;
    v88 = v7;
    v89 = v10;
    v91 = v3;
    v93 = v1;
    if (one-time initialization token for app != -1)
    {
LABEL_52:
      swift_once();
    }

    v90 = v6;
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.app);
    v26 = *(v19 + 16);
    v26(v24, v99, v18);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v92 = v2;
    v95 = v19;
    if (v29)
    {
      v86 = v26;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v102 = v31;
      *v30 = 136315138;
      if (one-time initialization token for logDateFormatter != -1)
      {
        swift_once();
      }

      v32 = static WOLog.logDateFormatter;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v34 = [v32 stringFromDate_];

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      (*(v95 + 8))(v24, v18);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v102);

      *(v30 + 4) = v38;
      _os_log_impl(&dword_20AEA4000, v27, v28, "PowerAccumulator: enabling power chart with startDate: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x20F2E9420](v31, -1, -1);
      MEMORY[0x20F2E9420](v30, -1, -1);

      v26 = v86;
    }

    else
    {

      (*(v19 + 8))(v24, v18);
    }

    v43 = objc_opt_self();
    v6 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
    v44 = [v43 standardUserDefaults];
    v45 = MEMORY[0x20F2E6C00](0x65776F50656B6166, 0xEE00747261684372);
    v46 = [v44 BOOLForKey_];

    if (v46)
    {
      v47 = [v43 standardUserDefaults];
      v48 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B464FC0);
      v49 = [v47 arrayForKey_];

      if (v49)
      {
        v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v2 = specialized _arrayConditionalCast<A, B>(_:)(v50);

        if (v2)
        {
          v18 = *(v2 + 16);
          if (!v18)
          {
            v99 = MEMORY[0x277D84F90];
            goto LABEL_47;
          }

          v52 = 0;
          v24 = 0;
          v53 = v2 + 40;
          v98 = v18 - 1;
          v99 = MEMORY[0x277D84F90];
          v97 = v2 + 40;
          while (1)
          {
            v54 = (v53 + 16 * v52);
            v19 = v52;
            while (1)
            {
              if (v19 >= *(v2 + 16))
              {
                __break(1u);
                goto LABEL_52;
              }

              v55 = *(v54 - 1);
              v6 = *v54;
              v101 = 0;
              MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
              *(&v85 - 2) = &v101;
              if ((v6 & 0x1000000000000000) == 0)
              {
                if ((v6 & 0x2000000000000000) != 0)
                {
                  v102 = v55;
                  *&v103 = v6 & 0xFFFFFFFFFFFFFFLL;

                  if (v55 >= 0x21u || ((0x100003E01uLL >> v55) & 1) == 0)
                  {
                    v57 = _swift_stdlib_strtod_clocale();
                    if (v57)
                    {
LABEL_32:
                      v100 = *v57 == 0;
                      goto LABEL_34;
                    }
                  }

                  goto LABEL_33;
                }

                if ((v55 & 0x1000000000000000) != 0)
                {
                  v56 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                  if (v56 >= 0x21 || ((0x100003E01uLL >> v56) & 1) == 0)
                  {
                    v57 = _swift_stdlib_strtod_clocale();
                    if (v57)
                    {
                      goto LABEL_32;
                    }
                  }

LABEL_33:
                  v100 = 0;
                  goto LABEL_34;
                }
              }

              _StringGuts._slowWithCString<A>(_:)();
LABEL_34:

              if (v100)
              {
                break;
              }

              ++v19;
              v54 += 2;
              if (v18 == v19)
              {
                goto LABEL_47;
              }
            }

            v58 = v101;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99[2].isa + 1, 1, v99);
              v99 = isUniquelyReferenced_nonNull_native;
            }

            v53 = v97;
            v60 = v99[2].isa;
            v59 = v99[3].isa;
            v6 = (v60 + 1);
            if (v60 >= v59 >> 1)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v99);
              v99 = isUniquelyReferenced_nonNull_native;
            }

            v52 = v19 + 1;
            v61 = v99;
            v99[2].isa = v6;
            v61[v60 + 4].isa = v58;
            if (v98 == v19)
            {
LABEL_47:

              goto LABEL_48;
            }
          }
        }
      }

      v99 = 0;
LABEL_48:
      v80 = specialized static ChartDataProvider.fakePowerData(values:)(v99);

      v81 = v93;
      v82 = *&v93[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider];
      *&v93[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider] = v80;

      v83 = [v81 updateHandler];
      if (v83)
      {
        v84 = v83;
        (*(v83 + 2))();
        _Block_release(v84);
      }
    }

    else
    {
      v62 = objc_opt_self();
      v63 = [v62 wattUnit];
      v64 = [v62 wattUnit];
      v65 = [objc_opt_self() quantityWithUnit:v64 doubleValue:100.0];

      [v65 doubleValueForUnit_];
      v67 = v66;

      v102 = 48;
      v103 = xmmword_20B440800;
      v104 = 4;
      v105 = 0;
      v106 = 0x4028000000000000;
      v107 = 0x7265776F50;
      v108 = 0xE500000000000000;
      v109 = 0;
      v110 = v67;
      v111 = 1;
      v26(v94, v99, v18);
      v86 = [v62 wattUnit];
      v68 = v103;
      v99 = v102;
      v69 = type metadata accessor for ChartDataProvider();
      v70 = *(v69 + 48);
      v71 = *(v69 + 52);
      v72 = swift_allocObject();
      v73 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
      v74 = MEMORY[0x277D84F90];
      v101 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
      v75 = v96;
      Published.init(initialValue:)();
      (*(v97 + 32))(v72 + v73, v75, v98);
      v76 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
      *(v72 + v76) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_11WorkoutCore0E10DataBucketCTt0g5Tf4g_n(v74);
      v77 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue;
      _sSo17OS_dispatch_queueCMaTm_16(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      static DispatchQoS.unspecified.getter();
      v101 = v74;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
      _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_9(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v91 + 104))(v90, *MEMORY[0x277D85260], v92);
      v78 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      outlined destroy of WorkoutChartProperties(&v102);
      *(v72 + v77) = v78;
      (*(v95 + 32))(v72 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate, v94, v18);
      *(v72 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_units) = v86;
      *(v72 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow) = v68;
      *(v72 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_maxBuckets) = v99;
      *(v72 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) = 1;
      v79 = *&v93[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider];
      *&v93[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider] = v72;
    }
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static WOLog.app);
    v99 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v99, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_20AEA4000, v99, v40, "PowerAccumulator: powerChartEnabled not enabled when enabling power chart", v41, 2u);
      MEMORY[0x20F2E9420](v41, -1, -1);
    }

    v42 = v99;
  }
}

void PowerAccumulator.updateTargetZone(_:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  v14 = objc_opt_self();
  v15 = a1;
  v16 = v1;
  if ([v14 isMainThread])
  {

    v26 = *&v16[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone];
    *&v16[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone] = v15;
    v17 = v15;
    v18 = v26;
  }

  else
  {
    _sSo17OS_dispatch_queueCMaTm_16(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v26 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #1 in PowerAccumulator.updateTargetZone(_:);
    *(v19 + 24) = v13;
    aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_7;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_55;
    v25 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v24 = v8;
    v20 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_9(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v25;
    v21 = v26;
    MEMORY[0x20F2E7580](0, v20, v7, v25);
    _Block_release(v22);

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v20, v24);
  }
}

void PowerAccumulator.activateSampleQuery()()
{
  v1 = v0;
  _sSo17OS_dispatch_queueCMaTm_16(0, &lazy cache variable for type metadata for HKSampleType, 0x277CCD8D8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_quantityTypeIdentifier;
  v4 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
  if (v4)
  {
    v5 = v4;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.app);
    v7 = v0;
    v8 = v5;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock = v13;
      *v11 = 136315394;
      v14 = *&v1[v3];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &aBlock);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v5;
      v18 = v8;
      _os_log_impl(&dword_20AEA4000, v9, v10, "PowerAccumulator: starting sample query for power identifier: %s, quantityType: %@", v11, 0x16u);
      _sSo8NSObjectCSgWOhTm_11(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x20F2E9420](v13, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v19 = v8;
    v20 = [v7 builder];
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = objc_allocWithZone(MEMORY[0x277CCDC10]);
    v31 = partial apply for closure #1 in PowerAccumulator.activateSampleQuery();
    v32 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = thunk for @escaping @callee_guaranteed (@guaranteed HKWorkoutBuilderSampleQuery, @guaranteed [HKWorkoutBuilderQuantity]?, @guaranteed Error?) -> ();
    v30 = &block_descriptor_79;
    v23 = _Block_copy(&aBlock);

    v24 = [v22 initWithQuantityType:v19 workoutBuilder:v20 quantitiesAddedHandler:v23];

    _Block_release(v23);

    v25 = *&v7[OBJC_IVAR___NLSessionActivityPowerAccumulator_query];
    *&v7[OBJC_IVAR___NLSessionActivityPowerAccumulator_query] = v24;
    v26 = v24;

    [*&v7[OBJC_IVAR___NLSessionActivityPowerAccumulator_healthStore] executeQuery_];
  }

  else
  {
    aBlock = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(70);
    MEMORY[0x20F2E6D80](0xD000000000000044, 0x800000020B464F70);
    v33 = *&v0[v3];
    type metadata accessor for HKQuantityTypeIdentifier(0);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void closure #1 in PowerAccumulator.activateSampleQuery()(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (a2 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      PowerAccumulator.process(samples:)(a2);
    }
  }
}

void PowerAccumulator.deactivateSampleQuery()()
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.app);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = *&v2[OBJC_IVAR___NLSessionActivityPowerAccumulator_quantityTypeIdentifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_20AEA4000, v3, v4, "PowerAccumulator: stopping sample query for power identifier: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v11 = OBJC_IVAR___NLSessionActivityPowerAccumulator_query;
  if (*&v2[OBJC_IVAR___NLSessionActivityPowerAccumulator_query])
  {
    [*&v2[OBJC_IVAR___NLSessionActivityPowerAccumulator_healthStore] stopQuery_];
    v12 = *&v2[v11];
    *&v2[v11] = 0;
  }
}

Swift::Void __swiftcall PowerAccumulator.accumulatorDidStop()()
{
  v1 = type metadata accessor for WKAnalyticsEvent.LatencyMetric();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider);
  *(v0 + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider) = 0;

  PowerAccumulator.deactivateSampleQuery()();
  v7 = OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer;
  swift_beginAccess();
  [*(v0 + v7) invalidate];
  v8 = *(v0 + v7);
  *(v0 + v7) = 0;

  (*(v2 + 104))(v5, *MEMORY[0x277CE4070], v1);
  v9 = *(v0 + OBJC_IVAR___NLSessionActivityPowerAccumulator_latencyAnalytics);
  static WKAnalyticsEvent.latency(metric:analytics:)();
  (*(v2 + 8))(v5, v1);
  dispatch thunk of WKPercentileAnalytics.reset()();
}

void PowerAccumulator.setInstantaneousPower(_:sampleDate:)(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR___NLSessionActivityPowerAccumulator_quantityTypeIdentifier);
  v11 = *MEMORY[0x277CCC9C0];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (*(v2 + OBJC_IVAR___NLSessionActivityPowerAccumulator_isGymKit))
  {
LABEL_9:
    *(v2 + OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower + 16) = a2;

    PowerAccumulator.instantaneousPower.didset();
    return;
  }

  static Date.timeIntervalSinceReferenceDate.getter();
  v19 = v18;
  Date.timeIntervalSinceReferenceDate.getter();
  v21 = v20;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static WOLog.app);
  (*(v6 + 16))(v9, a1, v5);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v19 - v21;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 134218498;
    *(v26 + 4) = a2;
    *(v26 + 12) = 2080;
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v28 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v30 = [v28 stringFromDate_];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    (*(v6 + 8))(v9, v5);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v36);

    *(v26 + 14) = v34;
    *(v26 + 22) = 2048;
    *(v26 + 24) = v25;
    _os_log_impl(&dword_20AEA4000, v23, v24, "PowerAccumulator: CyclingPower ignored setInstantaneousPower: %f W, date: %s, delay: %f s", v26, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x20F2E9420](v27, -1, -1);
    MEMORY[0x20F2E9420](v26, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

uint64_t PowerAccumulator.process(samples:)(unint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static WOLog.app);

  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 134218242;
    if (a1 >> 62)
    {
      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 4) = v17;

    *(v15 + 12) = 2080;
    v18 = *&v12[OBJC_IVAR___NLSessionActivityPowerAccumulator_quantityTypeIdentifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, aBlock);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_20AEA4000, v13, v14, "PowerAccumulator: processing %ld %s samples", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  else
  {
  }

  _sSo17OS_dispatch_queueCMaTm_16(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v12;
  *(v23 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in PowerAccumulator.process(samples:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_75_1;
  v24 = _Block_copy(aBlock);

  v25 = v12;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_9(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v26 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v10, v6, v24);
  _Block_release(v24);

  (*(v32 + 8))(v6, v26);
  result = (*(v30 + 8))(v10, v31);
  if (*&v25[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider])
  {
    v28 = *&v25[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider];

    v29 = specialized _arrayForceCast<A, B>(_:)(a1);
    ChartDataProvider.add(samples:)(v29);
  }

  return result;
}

void *closure #1 in PowerAccumulator.process(samples:)(char *a1, unint64_t a2)
{
  v112 = type metadata accessor for DateInterval();
  v4 = *(v112 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v112);
  v111 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for Date();
  v7 = *(v115 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v115);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a1;
  v98 = OBJC_IVAR___NLSessionActivityPowerAccumulator_quantityTypeIdentifier;
  v11 = *&a1[OBJC_IVAR___NLSessionActivityPowerAccumulator_quantityTypeIdentifier];
  v12 = *MEMORY[0x277CCC9C0];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
LABEL_44:
      swift_getKeyPath();
      swift_getKeyPath();
      v117 = a2;
      v96 = v108;

      return static Published.subscript.setter();
    }
  }

  v97 = a2 >> 62;
  if (a2 >> 62)
  {
    v20 = __CocoaSet.count.getter();
    v107 = a2;
    if (!v20)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v107 = a2;
    if (!v20)
    {
      goto LABEL_24;
    }
  }

  result = objc_opt_self();
  v106 = result;
  if (v20 >= 1)
  {
    v23 = 0;
    v104 = *&v108[OBJC_IVAR___NLSessionActivityPowerAccumulator_latencyAnalytics];
    v24 = a2;
    v103 = a2 & 0xC000000000000001;
    v110 = (v4 + 8);
    v102 = OBJC_IVAR___NLSessionActivityPowerAccumulator_threeSecondAccumulator;
    v101 = OBJC_IVAR___NLSessionActivityPowerAccumulator_thirtySecondAccumulator;
    v109 = (v7 + 8);
    *&v22 = 134218498;
    v99 = v22;
    v105 = v20;
    v100 = v10;
    v25 = v10;
    do
    {
      v114 = v23;
      if (v103)
      {
        v26 = MEMORY[0x20F2E7A20]();
      }

      else
      {
        v26 = *(v24 + 8 * v23 + 32);
      }

      v27 = v26;
      v28 = [v106 wattUnit];
      v29 = [v27 quantity];
      [v29 doubleValueForUnit_];
      v31 = v30;

      v32 = v108;
      v33 = *&v108[v102];

      v34 = [v27 dateInterval];
      v35 = v111;
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      DateInterval.end.getter();
      v116 = *v110;
      v36 = v112;
      v116(v35, v112);
      Date.timeIntervalSinceReferenceDate.getter();
      WindowedAccumulator.add(_:position:)(v31, v37);

      v38 = *v109;
      (*v109)(v25, v115);
      v39 = *&v32[v101];

      v40 = [v27 dateInterval];
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      DateInterval.end.getter();
      v116(v35, v36);
      Date.timeIntervalSinceReferenceDate.getter();
      WindowedAccumulator.add(_:position:)(v31, v41);

      v42 = v115;
      v38(v25, v115);
      static Date.timeIntervalSinceReferenceDate.getter();
      v44 = v43;
      v113 = v27;
      v45 = [v27 dateInterval];
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      DateInterval.end.getter();
      v116(v35, v36);
      Date.timeIntervalSinceReferenceDate.getter();
      v47 = v46;
      v38(v25, v42);
      v48 = v38;
      v49 = v44 - v47;
      dispatch thunk of WKPercentileAnalytics.addSample(_:)();
      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static WOLog.app);
      v51 = v113;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v117 = v55;
        *v54 = v99;
        *(v54 + 4) = v31;
        *(v54 + 12) = 2048;
        *(v54 + 14) = v49;
        *(v54 + 22) = 2080;
        v56 = [v51 dateInterval];
        v57 = v111;
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        DateInterval.end.getter();
        v116(v57, v112);
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v58 = static WOLog.logDateFormatter;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v60 = [v58 stringFromDate_];

        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        v48(v25, v115);
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v117);

        *(v54 + 24) = v64;
        _os_log_impl(&dword_20AEA4000, v52, v53, "PowerAccumulator: CyclingPower added sample: %f W, CyclingPower-delay: %f s, date: %s (to 3s and 30s accumulators)", v54, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x20F2E9420](v55, -1, -1);
        MEMORY[0x20F2E9420](v54, -1, -1);
      }

      else
      {
      }

      v24 = v107;
      v23 = v114 + 1;
    }

    while (v105 != v114 + 1);
LABEL_24:
    v65 = *&v108[OBJC_IVAR___NLSessionActivityPowerAccumulator_threeSecondAccumulator];
    if (*(v65 + 24) == 1)
    {
      v66 = *(*(v65 + 48) + 16);
      if (v66)
      {
        v67 = *(v65 + 56) / v66;
        goto LABEL_29;
      }
    }

    else
    {
      WindowedAccumulator.positionWindowMean()(v19);
      if ((v68 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v67 = 0.0;
LABEL_29:
    v69 = v108;
    v70 = &v108[OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower];
    *&v108[OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower + 16] = v67;
    PowerAccumulator.instantaneousPower.didset();
    v72 = *&v69[OBJC_IVAR___NLSessionActivityPowerAccumulator_thirtySecondAccumulator];
    if (*(v72 + 24) == 1)
    {
      v73 = *(*(v72 + 48) + 16);
      if (v73)
      {
        v74 = *(v72 + 56) / v73;
LABEL_34:
        v76 = v108;
        v77 = &v108[OBJC_IVAR___NLSessionActivityPowerAccumulator__thirtySecondAveragePower];
        *&v108[OBJC_IVAR___NLSessionActivityPowerAccumulator__thirtySecondAveragePower + 16] = v74;
        v78 = [v76 updateHandler];
        if (v78)
        {
          v79 = v78;
          (*(v78 + 2))();
          _Block_release(v79);
        }

        if (one-time initialization token for app != -1)
        {
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        __swift_project_value_buffer(v80, static WOLog.app);
        v81 = v108;
        v82 = v107;

        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v120 = v86;
          *v85 = 134218754;
          v87 = v70[1];
          v88 = v70[2];
          v117 = *v70;
          v118 = v87;
          v119 = v88;
          *(v85 + 4) = FakeableMetric.wrappedValue.getter();
          *(v85 + 12) = 2048;
          v89 = v77[1];
          v90 = v77[2];
          v117 = *v77;
          v118 = v89;
          v119 = v90;
          *(v85 + 14) = FakeableMetric.wrappedValue.getter();
          *(v85 + 22) = 2048;
          if (v97)
          {
            v91 = __CocoaSet.count.getter();
          }

          else
          {
            v91 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v85 + 24) = v91;

          *(v85 + 32) = 2080;
          v92 = *&v108[v98];
          v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v120);

          *(v85 + 34) = v95;
          a2 = v107;
          _os_log_impl(&dword_20AEA4000, v83, v84, "PowerAccumulator: CyclingPower (3s power: %f W, 30s power: %f W) processed %ld %s samples", v85, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x20F2E9420](v86, -1, -1);
          MEMORY[0x20F2E9420](v85, -1, -1);
        }

        else
        {

          a2 = v82;
        }

        goto LABEL_44;
      }
    }

    else
    {
      WindowedAccumulator.positionWindowMean()(v71);
      if ((v75 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v74 = 0.0;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall PowerAccumulator.trackTargetZone(for:)(Swift::Double a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v1 builder];
  [v15 elapsedTime];
  v17 = v16;

  if (specialized ZonesAlertTrackingProtocol.alertPreconditionSatified(_:)(v17))
  {
    v18 = [v2 builder];
    v19 = [v18 workoutSession];

    if (v19 && (v20 = [v19 state], v19, v20 == 4))
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static WOLog.zones);
      v75 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v75, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_20AEA4000, v75, v22, "Workout paused, not tracking target zone (custom range or target) for potential alert", v23, 2u);
        MEMORY[0x20F2E9420](v23, -1, -1);
      }

      v24 = v75;
    }

    else
    {
      v72 = v11;
      v73 = v6;
      v75 = ObjectType;
      v25 = *&v2[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone];
      v26 = COERCE_DOUBLE(PowerZonesAlertTargetZone.applicableRange.getter());
      v28 = v27;
      v30 = v29;

      if (v30)
      {
        v31 = 0;
      }

      else
      {
        if (v26 > a1)
        {
          v32 = 1;
        }

        else
        {
          v32 = 2;
        }

        if (v28 > a1)
        {
          v31 = v32;
        }

        else
        {
          v31 = 3;
        }
      }

      v33 = OBJC_IVAR___NLSessionActivityPowerAccumulator_oldZoneState;
      swift_beginAccess();
      if (v31 && v2[v33] != v31)
      {
        if (one-time initialization token for zones != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static WOLog.zones);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        v37 = os_log_type_enabled(v35, v36);
        v74 = v31;
        if (v37)
        {
          v71 = v33;
          v38 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          aBlock[0] = v70;
          *v38 = 136315394;
          v39 = _typeName(_:qualified:)();
          v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, aBlock);

          *(v38 + 4) = v41;
          v42 = v74;
          *(v38 + 12) = 2080;
          if (v42 == 1)
          {
            v44 = 0x776F6C6562;
            v43 = 0xE500000000000000;
          }

          else if (v42 == 2)
          {
            v43 = 0xE600000000000000;
            v44 = 0x6E6968746977;
          }

          else
          {
            v43 = 0xE500000000000000;
            v44 = 0x65766F6261;
          }

          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, aBlock);

          *(v38 + 14) = v45;
          _os_log_impl(&dword_20AEA4000, v35, v36, "%s should fire alert for: %s", v38, 0x16u);
          v46 = v70;
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v46, -1, -1);
          MEMORY[0x20F2E9420](v38, -1, -1);

          v31 = v74;
          v33 = v71;
        }

        else
        {
        }

        LOBYTE(aBlock[0]) = v31;
        v47 = PowerAccumulator.createZoneAlert(for:with:)(aBlock, a1);
        if (v47)
        {
          v48 = v47;
          _sSo17OS_dispatch_queueCMaTm_16(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v71 = static OS_dispatch_queue.main.getter();
          v49 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v50 = swift_allocObject();
          *(v50 + 16) = v49;
          *(v50 + 24) = v48;
          aBlock[4] = partial apply for closure #1 in PowerAccumulator.trackTargetZone(for:);
          aBlock[5] = v50;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_23_2;
          v69 = _Block_copy(aBlock);
          v70 = v48;

          static DispatchQoS.unspecified.getter();
          aBlock[0] = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_9(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v51 = v69;
          v52 = v71;
          MEMORY[0x20F2E7580](0, v14, v9, v69);
          v31 = v74;
          _Block_release(v51);

          (*(v73 + 8))(v9, v5);
          (*(v72 + 8))(v14, v10);
        }
      }

      if (v2[v33] != v31)
      {
        if (one-time initialization token for zones != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        __swift_project_value_buffer(v53, static WOLog.zones);
        v54 = v2;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = 1701736302;
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          aBlock[0] = v59;
          *v58 = 136315650;
          v60 = _typeName(_:qualified:)();
          v62 = v33;
          v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, aBlock);

          *(v58 + 4) = v63;
          *(v58 + 12) = 2080;
          if (v2[v62] > 1u)
          {
            if (v2[v62] == 2)
            {
              v64 = 0xE600000000000000;
              v65 = 0x6E6968746977;
            }

            else
            {
              v64 = 0xE500000000000000;
              v65 = 0x65766F6261;
            }
          }

          else if (v2[v62])
          {
            v64 = 0xE500000000000000;
            v65 = 0x776F6C6562;
          }

          else
          {
            v64 = 0xE400000000000000;
            v65 = 1701736302;
          }

          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v64, aBlock);

          *(v58 + 14) = v66;
          *(v58 + 22) = 2080;
          if (v31 > 1)
          {
            v33 = v62;
            if (v31 == 2)
            {
              v67 = 0xE600000000000000;
              v57 = 0x6E6968746977;
            }

            else
            {
              v67 = 0xE500000000000000;
              v57 = 0x65766F6261;
            }
          }

          else
          {
            v33 = v62;
            if (v31)
            {
              v67 = 0xE500000000000000;
              v57 = 0x776F6C6562;
            }

            else
            {
              v67 = 0xE400000000000000;
            }
          }

          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v67, aBlock);

          *(v58 + 24) = v68;
          _os_log_impl(&dword_20AEA4000, v55, v56, "%s zone state transitioned from: %s to: %s", v58, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v59, -1, -1);
          MEMORY[0x20F2E9420](v58, -1, -1);
        }

        v2[v33] = v31;
      }
    }
  }
}

void closure #1 in PowerAccumulator.trackTargetZone(for:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      [v10 alertSource:v11 didTriggerAlert:a2];

      swift_unknownObjectRelease();
    }

    static Date.now.getter();
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    v13 = OBJC_IVAR___NLSessionActivityPowerAccumulator_lastAlertFiredAtDate;
    swift_beginAccess();
    outlined assign with take of Date?(v6, v8 + v13);
    swift_endAccess();
  }
}

id PowerAccumulator.createZoneAlert(for:with:)(char *a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_20B442D88[*a1];
  v12 = *(v3 + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone);
  v13 = PowerZonesAlertTargetZone.targetZoneRepresentation.getter();

  if (!v13)
  {
    return 0;
  }

  Date.init()();
  v14 = *(v3 + OBJC_IVAR___NLSessionActivityPowerAccumulator_activityType);
  v15 = type metadata accessor for WorkoutAlertZone();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone] = v13;
  *&v16[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue] = a2;
  *&v16[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType] = v14;

  v17 = v14;
  *&v16[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType] = FIUIDistanceTypeForActivityType();
  v27.receiver = v16;
  v27.super_class = v15;
  v18 = objc_msgSendSuper2(&v27, sel_init);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v18 setEventDate_];

  [v18 setType_];
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static WOLog.zones);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v18;
    *v24 = v18;
    v25 = v18;
    _os_log_impl(&dword_20AEA4000, v21, v22, "Created zone alert: %@", v23, 0xCu);
    _sSo8NSObjectCSgWOhTm_11(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v24, -1, -1);
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v10, v6);
  return v18;
}

id PowerAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

void *protocol witness for InvalidationTimerProtocol.invalidationTimer.getter in conformance PowerAccumulator()
{
  v1 = OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for InvalidationTimerProtocol.invalidationTimer.setter in conformance PowerAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.lastAlertFiredAtDate.getter in conformance PowerAccumulator@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  return _s10Foundation4DateVSgWOcTm_5(v1 + v3, a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.lastAlertFiredAtDate.setter in conformance PowerAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.oldZoneState.getter in conformance PowerAccumulator@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_oldZoneState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.oldZoneState.setter in conformance PowerAccumulator(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_oldZoneState;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed HKWorkoutBuilderSampleQuery, @guaranteed [HKWorkoutBuilderQuantity]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    _sSo17OS_dispatch_queueCMaTm_16(0, &lazy cache variable for type metadata for HKWorkoutBuilderQuantity, 0x277CCDC08);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

_BYTE *closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t specialized static PowerAccumulator.powerChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(uint64_t a1, void *a2)
{
  result = static MetricPlatterProvider.metricPlatters(liveWorkoutConfiguration:workoutSettingsManager:)(a1, a2);
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = result + 32;
    v7 = MEMORY[0x277D84F90];
    v25 = result + 32;
    do
    {
      v26 = v7;
      v8 = v6 + 16 * v5;
      v9 = v5;
      while (1)
      {
        if (v9 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v10 = *v8;
        v11 = *(v8 + 1);
        v12 = *(v8 + 8);
        v5 = v9 + 1;
        v27 = *v8;

        if (LiveWorkoutConfiguration.supportsMetricPlatterType(_:)(&v27))
        {
          break;
        }

        v8 += 16;
        ++v9;
        if (v4 == v5)
        {
          v7 = v26;
          goto LABEL_15;
        }
      }

      v13 = v26;
      result = swift_isUniquelyReferenced_nonNull_native();
      v28 = v26;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1);
        v13 = v28;
      }

      v14 = v13;
      v15 = *(v13 + 16);
      v16 = *(v14 + 24);
      v17 = v15 + 1;
      if (v15 >= v16 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v15 + 1, 1);
        v17 = v15 + 1;
        v14 = v28;
      }

      *(v14 + 16) = v17;
      v18 = v14 + 16 * v15;
      *(v18 + 32) = v10;
      *(v18 + 33) = v11;
      *(v18 + 40) = v12;
      v6 = v25;
      v7 = v14;
    }

    while (v4 - 1 != v9);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v19 = -*(v7 + 16);
  v20 = -1;
  v21 = 32;
  while (2)
  {
    v23 = v19 + v20;
    if (v19 + v20 == -1)
    {
LABEL_20:

      return v23 != -1;
    }

    else
    {
      if (++v20 < *(v7 + 16))
      {
        v24 = v21;
        v21 += 16;
        switch(*(v7 + v24))
        {
          case 0xC:

            return v23 != -1;
          default:
            v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v22 & 1) == 0)
            {
              continue;
            }

            goto LABEL_20;
        }
      }

LABEL_24:
      __break(1u);
    }

    return result;
  }
}

unsigned __int8 *specialized PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)(void *a1, void *a2, void *a3, char *a4, void *a5, void *a6)
{
  v69 = a5;
  v70 = a6;
  v68 = a3;
  v71 = a2;
  v72 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v68 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMd, &_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v68 - v15;
  v17 = &v6[OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower];
  *v17 = 0xD000000000000012;
  v17[1] = 0x800000020B4576E0;
  v17[2] = 0;
  v18 = 1;
  v6[OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale] = 1;
  v19 = &v6[OBJC_IVAR___NLSessionActivityPowerAccumulator__averagePower];
  strcpy(&v6[OBJC_IVAR___NLSessionActivityPowerAccumulator__averagePower], "averagePower");
  v19[13] = 0;
  *(v19 + 7) = -5120;
  *(v19 + 2) = 0;
  v20 = &v6[OBJC_IVAR___NLSessionActivityPowerAccumulator__thirtySecondAveragePower];
  *v20 = 0xD000000000000018;
  v20[1] = 0x800000020B457720;
  v20[2] = 0;
  v21 = OBJC_IVAR___NLSessionActivityPowerAccumulator__samplesPublished;
  v22 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  v23 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24HKWorkoutBuilderQuantityCGMd, &_sSaySo24HKWorkoutBuilderQuantityCGMR);
  Published.init(initialValue:)();
  (*(v13 + 32))(&v6[v21], v16, v12);
  v24 = OBJC_IVAR___NLSessionActivityPowerAccumulator_startDate;
  v25 = type metadata accessor for Date();
  v26 = *(*(v25 - 8) + 56);
  v26(&v23[v24], 1, 1, v25);
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer] = 0;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_query] = 0;
  v27 = OBJC_IVAR___NLSessionActivityPowerAccumulator_threeSecondAccumulator;
  type metadata accessor for WindowedAccumulator();
  v28 = swift_allocObject();
  *(v28 + 48) = v22;
  *(v28 + 56) = 0;
  *(v28 + 16) = 0x4008CCCCCCCCCCCDLL;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = 1;
  *&v23[v27] = v28;
  v29 = OBJC_IVAR___NLSessionActivityPowerAccumulator_thirtySecondAccumulator;
  v30 = swift_allocObject();
  *(v30 + 48) = v22;
  *(v30 + 56) = 0;
  *(v30 + 16) = 0x403E000000000000;
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 40) = 1;
  *&v23[v29] = v30;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider] = 0;
  v26(&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_lastAlertFiredAtDate], 1, 1, v25);
  v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_oldZoneState] = 0;
  swift_unknownObjectWeakInit();
  v31 = OBJC_IVAR___NLSessionActivityPowerAccumulator_latencyAnalytics;
  v32 = type metadata accessor for WKPercentileAnalytics();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  *&v23[v31] = WKPercentileAnalytics.init()();
  v35 = v71;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_activityType] = v71;
  v36 = v68;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_healthStore] = v68;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_liveWorkoutConfiguration] = a4;
  v37 = *&a4[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration];
  type metadata accessor for IntervalWorkoutConfiguration();
  v38 = swift_dynamicCastClass();
  v39 = 60.0;
  if (v38)
  {
    v39 = 10.0;
  }

  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_alertHoldoffTime] = v39;
  v40 = v69;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_workoutSettingsManager] = v69;
  v71 = v35;
  v41 = v36;
  v42 = a4;
  v43 = v40;
  v44 = specialized static PowerAccumulator.powerChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(v42, v43);
  v45 = OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled;
  v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled] = v44 & 1;
  v46 = FIUIWorkoutSettingsManager.supportsPowerMetrics.getter();
  v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerMetricsEnabled] = v46 & 1;
  if ((v46 & 1) == 0)
  {
    v18 = v23[v45];
  }

  v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerEnabled] = v18;
  v47 = v70;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_quantityTypeIdentifier] = v70;
  v48 = v47;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone] = LiveWorkoutConfiguration.currentPowerZonesAlertTargetZone.getter();
  v49 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_5(&v42[v49], v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v50 = type metadata accessor for UUID();
  LOBYTE(v49) = (*(*(v50 - 8) + 48))(v11, 1, v50) != 1;
  _sSo8NSObjectCSgWOhTm_11(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_isGymKit] = v49;
  v51 = type metadata accessor for PowerAccumulator();
  v74.receiver = v23;
  v74.super_class = v51;
  v52 = objc_msgSendSuper2(&v74, sel_initWithBuilder_, v72);
  v53 = objc_opt_self();
  v54 = v52;
  v55 = [v53 defaultCenter];
  v56 = [objc_opt_self() didUpdateBTSensorSeenStatus];
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:);
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  aBlock[3] = &block_descriptor_86;
  v58 = _Block_copy(aBlock);
  v59 = v54;

  v60 = [v55 addObserverForName:v56 object:0 queue:0 usingBlock:v58];
  _Block_release(v58);
  swift_unknownObjectRelease();

  v61 = [v53 defaultCenter];
  if (one-time initialization token for MetricPlattersDidSave != -1)
  {
    swift_once();
  }

  [v61 addObserver:v59 selector:v68 name:? object:?];

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  __swift_project_value_buffer(v62, static WOLog.app);
  v63 = v59;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 67109376;
    *(v66 + 4) = v63[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerMetricsEnabled];
    *(v66 + 8) = 1024;
    *(v66 + 10) = v63[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled];

    _os_log_impl(&dword_20AEA4000, v64, v65, "PowerAccumulator: init (powerMetricsEnabled: %{BOOL}d, powerChartEnabled: %{BOOL}d)", v66, 0xEu);
    MEMORY[0x20F2E9420](v66, -1, -1);
  }

  else
  {

    v48 = v63;
  }

  return v63;
}

uint64_t type metadata accessor for PowerAccumulator()
{
  result = type metadata singleton initialization cache for PowerAccumulator;
  if (!type metadata singleton initialization cache for PowerAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void partial apply for closure #1 in PowerAccumulator.updateTargetZone(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone);
  *(v1 + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone) = v2;
  v3 = v2;
}

void specialized PowerAccumulator.accumulatorDidStart(withStart:handler:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v57 = &v51 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static WOLog.app);
  _s10Foundation4DateVSgWOcTm_5(a1, v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v21 = v1;
  v55 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v53 = v7;
  v56 = v4;
  if (v24)
  {
    v52 = a1;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v58 = v26;
    *v25 = 136315650;
    _s10Foundation4DateVSgWOcTm_5(v18, v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((*(v4 + 48))(v16, 1, v3) == 1)
    {

      __break(1u);
      return;
    }

    v51 = v3;
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v27 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v29 = [v27 stringFromDate_];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    _sSo8NSObjectCSgWOhTm_11(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v3 = v51;
    (*(v56 + 8))(v16, v51);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v58);

    *(v25 + 4) = v33;
    *(v25 + 12) = 1024;
    v34 = v21[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerMetricsEnabled];

    *(v25 + 14) = v34;
    *(v25 + 18) = 1024;
    LODWORD(v33) = v21[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled];

    *(v25 + 20) = v33;
    _os_log_impl(&dword_20AEA4000, v22, v23, "PowerAccumulator: accumulatorDidStart with startDate: %s (powerMetricsEnabled: %{BOOL}d, powerChartEnabled: %{BOOL}d)", v25, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x20F2E9420](v26, -1, -1);
    MEMORY[0x20F2E9420](v25, -1, -1);

    a1 = v52;
  }

  else
  {

    _sSo8NSObjectCSgWOhTm_11(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v35 = v57;
  _s10Foundation4DateVSgWOcTm_5(a1, v57, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v36 = OBJC_IVAR___NLSessionActivityPowerAccumulator_startDate;
  swift_beginAccess();
  outlined assign with take of Date?(v35, &v21[v36]);
  swift_endAccess();
  if (v21[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerEnabled] != 1)
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "PowerAccumulator: power metrics or chart platter are not enabled, not accumulating power data.";
      goto LABEL_15;
    }

LABEL_16:

    return;
  }

  v37 = v54;
  _s10Foundation4DateVSgWOcTm_5(a1, v54, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v38 = v56;
  if ((*(v56 + 48))(v37, 1, v3) == 1)
  {
    _sSo8NSObjectCSgWOhTm_11(v37, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "PowerAccumulator: start date nil, not accumulating data for power chart.";
LABEL_15:
      _os_log_impl(&dword_20AEA4000, v39, v40, v42, v41, 2u);
      MEMORY[0x20F2E9420](v41, -1, -1);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v43 = v37;
  v44 = v53;
  (*(v38 + 32))(v53, v43, v3);
  if (v21[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled] == 1)
  {
    PowerAccumulator.enablePowerChart(with:)(v44);
  }

  else
  {
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_20AEA4000, v45, v46, "PowerAccumulator: power chart platter is not enabled, skip creating powerChartDataProvider", v47, 2u);
      MEMORY[0x20F2E9420](v47, -1, -1);
    }

    v48 = *&v21[OBJC_IVAR___NLSessionActivityPowerAccumulator_liveWorkoutConfiguration];
    v49 = LiveWorkoutConfiguration.currentActivityType.getter();
    v50 = [v49 effectiveTypeIdentifier];

    v44 = v53;
    if (v50 == 13)
    {
      [objc_opt_self() hasHadPairedCyclingPowerSensors];
    }
  }

  PowerAccumulator.activateSampleQuery()();
  (*(v38 + 8))(v44, v3);
}

void keypath_get_24Tm(void *a1@<X0>, void *a2@<X3>, double *a3@<X8>)
{
  v4 = (*a1 + *a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *a3 = FakeableMetric.wrappedValue.getter();
}

uint64_t keypath_get_34Tm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return _s10Foundation4DateVSgWOcTm_5(v4 + v5, a3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

void type metadata completion function for PowerAccumulator()
{
  type metadata accessor for Published<[HKWorkoutBuilderQuantity]>();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Date?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<[HKWorkoutBuilderQuantity]>()
{
  if (!lazy cache variable for type metadata for Published<[HKWorkoutBuilderQuantity]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo24HKWorkoutBuilderQuantityCGMd, &_sSaySo24HKWorkoutBuilderQuantityCGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[HKWorkoutBuilderQuantity]>);
    }
  }
}

_BYTE *_sSdySdSgxcSyRzlufcSbSpySdGXEfU_SbSPys4Int8VGXEfU_TA_0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void specialized PowerAccumulator.handleMetricPlattersUpdated(notification:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled;
  v12 = v0[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled];
  v13 = specialized static PowerAccumulator.powerChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(*&v1[OBJC_IVAR___NLSessionActivityPowerAccumulator_liveWorkoutConfiguration], *&v1[OBJC_IVAR___NLSessionActivityPowerAccumulator_workoutSettingsManager]);
  v1[v11] = v13 & 1;
  if (v12 != (v13 & 1))
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    v15 = __swift_project_value_buffer(v14, static WOLog.app);
    v16 = v1;
    v27 = v15;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v7;
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v1[v11];

      _os_log_impl(&dword_20AEA4000, v17, v18, "Power metric platter enablement changed. enabled=%{BOOL}d", v20, 8u);
      v21 = v20;
      v7 = v19;
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    else
    {

      v17 = v16;
    }

    v22 = OBJC_IVAR___NLSessionActivityPowerAccumulator_startDate;
    swift_beginAccess();
    _s10Foundation4DateVSgWOcTm_5(v16 + v22, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      _sSo8NSObjectCSgWOhTm_11(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_20AEA4000, v23, v24, "PowerAccumulator: start date nil, not accumulating data for power chart.", v25, 2u);
        MEMORY[0x20F2E9420](v25, -1, -1);
      }
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      if (v1[v11] == 1)
      {
        PowerAccumulator.deactivateSampleQuery()();
        PowerAccumulator.activateSampleQuery()();
        PowerAccumulator.enablePowerChart(with:)(v10);
        (*(v7 + 8))(v10, v6);
      }

      else
      {
        (*(v7 + 8))(v10, v6);
        v26 = *(&v16->isa + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider);
        *(&v16->isa + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider) = 0;
      }
    }
  }
}

uint64_t _s10Foundation4DateVSgWOcTm_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t key path getter for VoiceAssetsObserver.assets : VoiceAssetsObserver@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver__assets;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t key path setter for VoiceAssetsObserver.assets : VoiceAssetsObserver(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t VoiceAssetsObserver.assets.getter()
{
  swift_getKeyPath();
  v4 = v0;
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver__assets;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

unint64_t lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver()
{
  result = lazy protocol witness table cache variable for type VoiceAssetsObserver and conformance VoiceAssetsObserver;
  if (!lazy protocol witness table cache variable for type VoiceAssetsObserver and conformance VoiceAssetsObserver)
  {
    type metadata accessor for VoiceAssetsObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceAssetsObserver and conformance VoiceAssetsObserver);
  }

  return result;
}

uint64_t VoiceAssetsObserver.assets.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in VoiceAssetsObserver.assets.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver__assets;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void (*VoiceAssetsObserver.assets.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = VoiceAssetsObserver._assets.modify();
  return VoiceAssetsObserver.assets.modify;
}

void VoiceAssetsObserver.assets.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t VoiceAssetsObserver._hasFetchedAssets.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t key path getter for VoiceAssetsObserver._hasFetchedAssets : VoiceAssetsObserver@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t VoiceAssetsObserver._hasFetchedAssets.setter(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t closure #1 in VoiceAssetsObserver.hasFetchedAssets.getter@<X0>(uint64_t a1@<X0>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(a1 + *a2);
  return result;
}

uint64_t closure #1 in VoiceAssetsObserver.hasFetchedAssets.setter(uint64_t result, char a2, void *a3)
{
  if (*(result + *a3) == (a2 & 1))
  {
    *(result + *a3) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t VoiceAssetsObserver.__allocating_init(inferenceClient:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver__assets) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver___hasFetchedAssets) = 0;
  *(v5 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver___isObservingAssets) = 0;
  v6 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v5 + v6) = v7;
  ObservationRegistrar.init()();
  v8 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_inferenceClient;
  v9 = type metadata accessor for InferenceClient();
  (*(*(v9 - 8) + 32))(v5 + v8, a1, v9);
  return v5;
}

Swift::Void __swiftcall VoiceAssetsObserver.fetchAssets()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v65 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v69 = &v65 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v70 = &v65 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - v18;
  v20 = *(v0 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_lock);
  v71 = partial apply for closure #1 in VoiceAssetsObserver.hasFetchedAssets.getter;
  v72 = v0;
  os_unfair_lock_lock(v20 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_Sb_TG5TA_1(v73);
  os_unfair_lock_unlock(v20 + 4);
  if (v73[0])
  {
    static Log.workoutVoice.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v73[0] = v24;
      *v23 = 136315138;
      v25 = _typeName(_:qualified:)();
      v27 = v10;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v73);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_20AEA4000, v21, v22, "%s Already fetched voice assets.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x20F2E9420](v24, -1, -1);
      MEMORY[0x20F2E9420](v23, -1, -1);

      (*(v11 + 8))(v15, v27);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }
  }

  else
  {
    v67 = 0;
    v68 = v20;
    static Log.workoutVoice.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v66 = v6;
      v33 = v32;
      v73[0] = v32;
      *v31 = 136315138;
      v34 = _typeName(_:qualified:)();
      v65 = v1;
      v36 = v2;
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v73);
      v1 = v65;

      *(v31 + 4) = v37;
      v2 = v36;
      _os_log_impl(&dword_20AEA4000, v29, v30, "%s Fetching assets.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      v38 = v33;
      v6 = v66;
      MEMORY[0x20F2E9420](v38, -1, -1);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }

    v39 = *(v11 + 8);
    v39(v19, v10);
    v40 = v70;
    if ([objc_opt_self() isRunningInStoreDemoMode])
    {
      static Log.workoutVoice.getter();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v66 = v6;
        v45 = v44;
        v73[0] = v44;
        *v43 = 136315138;
        v46 = _typeName(_:qualified:)();
        v65 = v10;
        v48 = v2;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v73);

        *(v43 + 4) = v49;
        v2 = v48;
        _os_log_impl(&dword_20AEA4000, v41, v42, "%s In store demo mode, returning default assets.", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        v50 = v45;
        v6 = v66;
        MEMORY[0x20F2E9420](v50, -1, -1);
        MEMORY[0x20F2E9420](v43, -1, -1);

        v51 = v70;
        v52 = v65;
      }

      else
      {

        v51 = v40;
        v52 = v10;
      }

      v39(v51, v52);
      v55 = type metadata accessor for AudioSynthesisVoice();
      v56 = v69;
      (*(*(v55 - 8) + 56))(v69, 1, 1, v55);
      v54 = specialized static NLWorkoutDemoUtilities.defaultWorkoutVoiceAssets(selecting:)(v56);
      v53 = outlined destroy of AudioSynthesisVoice?(v56, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
    }

    else
    {
      v53 = InferenceClient.listVoiceAssets()();
      v54 = v53;
    }

    v57 = MEMORY[0x28223BE20](v53);
    *(&v65 - 2) = v1;
    *(&v65 - 8) = 1;
    MEMORY[0x28223BE20](v57);
    *(&v65 - 2) = partial apply for closure #1 in VoiceAssetsObserver.hasFetchedAssets.setter;
    *(&v65 - 1) = v58;
    v59 = v68;
    os_unfair_lock_lock(v68 + 4);
    _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_1(v60);
    os_unfair_lock_unlock(v59 + 4);
    v61 = type metadata accessor for TaskPriority();
    (*(*(v61 - 8) + 56))(v6, 1, 1, v61);
    type metadata accessor for MainActor();

    v62 = static MainActor.shared.getter();
    v63 = swift_allocObject();
    v64 = MEMORY[0x277D85700];
    v63[2] = v62;
    v63[3] = v64;
    v63[4] = v1;
    v63[5] = v54;
    v63[6] = v2;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in VoiceAssetsObserver.setAssets(_:), v63);
  }
}

uint64_t VoiceAssetsObserver.selectVoiceAsset(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](VoiceAssetsObserver.selectVoiceAsset(_:), 0, 0);
}

uint64_t VoiceAssetsObserver.selectVoiceAsset(_:)()
{
  v36 = v0;
  if ([objc_opt_self() isRunningInStoreDemoMode])
  {
    v1 = v0[9];
    static Log.workoutVoice.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];
    if (v4)
    {
      v8 = v0[4];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136315138;
      v11 = _typeName(_:qualified:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v35);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_20AEA4000, v2, v3, "%s In store demo mode, only setting asset selection locally", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F2E9420](v10, -1, -1);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }

    (*(v6 + 8))(v5, v7);
    v14 = v0[5];
    v15 = v0[6];
    v16 = v0[3];
    v17 = v0[4];
    v18 = v0[2];
    v19 = type metadata accessor for AudioSynthesisVoice();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v15, v18, v19);
    (*(v20 + 56))(v15, 0, 1, v19);
    v21 = specialized static NLWorkoutDemoUtilities.defaultWorkoutVoiceAssets(selecting:)(v15);
    outlined destroy of AudioSynthesisVoice?(v15, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
    type metadata accessor for MainActor();

    v23 = static MainActor.shared.getter();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v16;
    v24[5] = v21;
    v24[6] = v17;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &closure #1 in VoiceAssetsObserver.setAssets(_:)partial apply, v24);

    v26 = v0[9];
    v27 = v0[5];
    v28 = v0[6];

    v29 = v0[1];

    return v29();
  }

  else
  {
    v31 = v0[3];
    v32 = *(MEMORY[0x277D09FB8] + 4);
    v33 = swift_task_alloc();
    v0[10] = v33;
    *v33 = v0;
    v33[1] = VoiceAssetsObserver.selectVoiceAsset(_:);
    v34 = v0[2];

    return MEMORY[0x282160A78](v34);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v8 = *v0;

  v3 = v1[9];
  v4 = v1[6];
  v5 = v1[5];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t VoiceAssetsObserver.observeAssetChanges()()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](VoiceAssetsObserver.observeAssetChanges(), 0, 0);
}

{
  v48 = v0;
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_lock);
  v3 = swift_task_alloc();
  *(v3 + 16) = partial apply for closure #1 in VoiceAssetsObserver.isObservingAssets.getter;
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v47);
  os_unfair_lock_unlock(v2 + 4);
  LOBYTE(v1) = v47[0];

  if (v1)
  {
    v4 = v0[7];
    static Log.workoutVoice.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    if (v7)
    {
      v11 = v0[3];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v47[0] = v13;
      *v12 = 136315138;
      v14 = _typeName(_:qualified:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v47);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_20AEA4000, v5, v6, "%s Already observing voice assets.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x20F2E9420](v13, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    (*(v10 + 8))(v8, v9);
    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[6];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[8];
    static Log.workoutVoice.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[8];
    v28 = v0[4];
    v27 = v0[5];
    if (v25)
    {
      v29 = v0[3];
      v46 = v0[8];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47[0] = v31;
      *v30 = 136315138;
      v32 = _typeName(_:qualified:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v47);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_20AEA4000, v23, v24, "%s Observing Voice Asset Changes.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x20F2E9420](v31, -1, -1);
      MEMORY[0x20F2E9420](v30, -1, -1);

      v35 = *(v27 + 8);
      v35(v46, v28);
    }

    else
    {

      v35 = *(v27 + 8);
      v35(v26, v28);
    }

    v0[9] = v35;
    v36 = v0[2];
    v37 = swift_task_alloc();
    *(v37 + 16) = v36;
    *(v37 + 24) = 1;
    v38 = swift_task_alloc();
    *(v38 + 16) = partial apply for closure #1 in VoiceAssetsObserver.isObservingAssets.setter;
    *(v38 + 24) = v37;
    os_unfair_lock_lock(v2 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v39);
    os_unfair_lock_unlock(v2 + 4);
    v40 = v0[2];
    v41 = v0[3];

    v42 = swift_allocObject();
    v0[10] = v42;
    swift_weakInit();
    v43 = swift_allocObject();
    v0[11] = v43;
    *(v43 + 16) = v42;
    *(v43 + 24) = v41;
    v44 = *(MEMORY[0x277D09FD8] + 4);

    v45 = swift_task_alloc();
    v0[12] = v45;
    *v45 = v0;
    v45[1] = VoiceAssetsObserver.observeAssetChanges();

    return MEMORY[0x282160A98](partial apply for closure #1 in VoiceAssetsObserver.observeAssetChanges(), v43);
  }
}

{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](VoiceAssetsObserver.observeAssetChanges(), 0, 0);
  }

  else
  {
    v5 = v3[10];
    v4 = v3[11];

    v7 = v3[7];
    v6 = v3[8];
    v8 = v3[6];

    v9 = v3[1];

    return v9();
  }
}

{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 48);

  static Log.workoutVoice.getter();
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 104);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20AEA4000, v6, v7, "Kicked off voice asset observation. Received error: %@", v10, 0xCu);
    outlined destroy of AudioSynthesisVoice?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 40) + 8;
  (*(v0 + 72))(*(v0 + 48), *(v0 + 32));
  v16 = *(v0 + 56);
  v15 = *(v0 + 64);
  v17 = *(v0 + 48);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t closure #1 in VoiceAssetsObserver.observeAssetChanges()(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v67 = type metadata accessor for AudioSynthesisVoiceAsset.DownloadStatus();
  v3 = *(v67 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for AudioSynthesisVoice();
  v72 = *(v65 - 8);
  isa = v72[8].isa;
  MEMORY[0x28223BE20](v65);
  v64 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AudioSynthesisVoiceAsset();
  v74 = *(v8 - 8);
  v9 = *(v74 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v70 = &v58 - v13;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v69 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - v19;
  static Log.workoutVoice.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v68 = v14;
  v58 = a2;
  v73 = v3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v78[0] = v25;
    *v24 = 136315138;
    v26 = _typeName(_:qualified:)();
    v28 = v12;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v78);

    *(v24 + 4) = v29;
    v12 = v28;
    v14 = v68;
    _os_log_impl(&dword_20AEA4000, v21, v22, "%s Observing asset changes:", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x20F2E9420](v25, -1, -1);
    MEMORY[0x20F2E9420](v24, -1, -1);
  }

  v77 = *(v15 + 8);
  v77(v20, v14);
  v31 = *(v59 + 16);
  v32 = v69;
  v33 = v70;
  if (v31)
  {
    v34 = v59 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v35 = *(v74 + 72);
    v75 = (v74 + 16);
    v76 = v35;
    v74 += 8;
    v61 = (v73 + 8);
    v62 = v72 + 1;
    *&v30 = 136315394;
    v60 = v30;
    v63 = v15 + 8;
    do
    {
      static Log.workoutVoice.getter();
      v53 = *v75;
      (*v75)(v33, v34, v8);
      v53(v12, v34, v8);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v36 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v78[0] = v73;
        *v36 = v60;
        v72 = v54;
        v37 = v64;
        v71 = v55;
        AudioSynthesisVoiceAsset.voice.getter();
        v38 = AudioSynthesisVoice.name.getter();
        v40 = v39;
        (v62->isa)(v37, v65);
        v41 = *v74;
        (*v74)(v33, v8);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v78);

        *(v36 + 4) = v42;
        *(v36 + 12) = 2080;
        v43 = v8;
        v44 = v66;
        AudioSynthesisVoiceAsset.downloadStatus.getter();
        v45 = AudioSynthesisVoiceAsset.DownloadStatus.description.getter();
        v47 = v46;
        v48 = v44;
        v8 = v43;
        v33 = v70;
        (*v61)(v48, v67);
        v41(v12, v8);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v78);
        v14 = v68;

        *(v36 + 14) = v49;
        v50 = v72;
        _os_log_impl(&dword_20AEA4000, v72, v71, "Asset name %s, download state %s", v36, 0x16u);
        v51 = v73;
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v51, -1, -1);
        v52 = v36;
        v32 = v69;
        MEMORY[0x20F2E9420](v52, -1, -1);
      }

      else
      {

        v56 = *v74;
        (*v74)(v12, v8);
        v56(v33, v8);
      }

      v77(v32, v14);
      v34 += v76;
      --v31;
    }

    while (v31);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    VoiceAssetsObserver.setAssets(_:)(v59);
  }

  return result;
}

uint64_t AudioSynthesisVoiceAsset.DownloadStatus.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AudioSynthesisVoiceAsset.DownloadProgress();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for AudioSynthesisVoiceAsset.DownloadStatus();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v1, v14);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == *MEMORY[0x277D0A528])
  {
    (*(v15 + 96))(v18, v14);
    outlined init with take of AudioSynthesisVoiceAsset.DownloadProgress?(v18, v13);
    outlined init with copy of AudioSynthesisVoiceAsset.DownloadProgress?(v13, v11);
    if ((*(v3 + 48))(v11, 1, v2) == 1)
    {
      v20 = 0xD000000000000010;
      outlined destroy of AudioSynthesisVoice?(v11, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMR);
    }

    else
    {
      (*(v3 + 32))(v6, v11, v2);
      v26[0] = 0;
      v26[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      strcpy(v26, "downloading: ");
      HIWORD(v26[1]) = -4864;
      v25 = AudioSynthesisVoiceAsset.DownloadProgress.bytesWritten.getter();
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x20F2E6D80](v21);

      MEMORY[0x20F2E6D80](47, 0xE100000000000000);
      v25 = AudioSynthesisVoiceAsset.DownloadProgress.bytesExpected.getter();
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x20F2E6D80](v22);

      v20 = v26[0];
      (*(v3 + 8))(v6, v2);
    }

    outlined destroy of AudioSynthesisVoice?(v13, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMR);
  }

  else if (v19 == *MEMORY[0x277D0A530])
  {
    return 0x616C696176616E75;
  }

  else if (v19 == *MEMORY[0x277D0A520])
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    (*(v15 + 8))(v18, v14);
    return 0xD000000000000017;
  }

  return v20;
}

uint64_t VoiceAssetsObserver.setAssets(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v2;
  v11[5] = a1;
  v11[6] = v4;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in VoiceAssetsObserver.setAssets(_:)partial apply, v11);
}

uint64_t closure #1 in VoiceAssetsObserver.setAssets(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in VoiceAssetsObserver.setAssets(_:), v11, v10);
}

uint64_t closure #1 in VoiceAssetsObserver.setAssets(_:)()
{
  v20 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  static Log.workoutVoice.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);
  if (v5)
  {
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = _typeName(_:qualified:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_20AEA4000, v3, v4, "%s Setting voice assets.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v15 = *(v0 + 64);
  v18 = *(v0 + 24);
  swift_getKeyPath();
  *(swift_task_alloc() + 16) = v18;
  *(v0 + 16) = v18;
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t VoiceAssetsObserver.userSelectedAssetIndex.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AudioSynthesisVoiceAsset();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v0;
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver__assets;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = *(v8 + 16);

  v11 = 0;
  if (v9)
  {
    while (v11 < *(v8 + 16))
    {
      (*(v3 + 16))(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v2);
      v12 = AudioSynthesisVoiceAsset.userSelected.getter();
      result = (*(v3 + 8))(v6, v2);
      if (v12)
      {
        goto LABEL_6;
      }

      if (v9 == ++v11)
      {
        v11 = 0;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return v11;
  }

  return result;
}

uint64_t VoiceAssetsObserver.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver__assets);

  v4 = *(v0 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_lock);

  v5 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t VoiceAssetsObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver__assets);

  v4 = *(v0 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_lock);

  v5 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in VoiceAssetsObserver.setAssets(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in VoiceAssetsObserver.setAssets(_:);

  return closure #1 in VoiceAssetsObserver.setAssets(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in VoiceAssetsObserver.setAssets(_:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in VoiceAssetsObserver.setAssets(_:)partial apply;

  return closure #1 in VoiceAssetsObserver.setAssets(_:)(a1, v4, v5, v6, v7, v8);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in VoiceAssetsObserver.setAssets(_:)partial apply;

  return closure #1 in VoiceAssetsObserver.setAssets(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t dispatch thunk of VoiceAssetsObserver.selectVoiceAsset(_:)(uint64_t a1)
{
  v4 = *(*v1 + 336);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of VoiceAssetsObserver.selectVoiceAsset(_:);

  return v8(a1);
}

uint64_t dispatch thunk of VoiceAssetsObserver.selectVoiceAsset(_:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of VoiceAssetsObserver.observeAssetChanges()()
{
  v2 = *(*v0 + 344);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of VoiceAssetsObserver.observeAssetChanges();

  return v6();
}

uint64_t outlined init with take of AudioSynthesisVoiceAsset.DownloadProgress?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AudioSynthesisVoiceAsset.DownloadProgress?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AudioSynthesisVoice?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm_6()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t closure #1 in VoiceAssetsObserver.setAssets(_:)partial apply()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t closure #1 in VoiceAssetsObserver.assets.setterpartial apply()
{
  return partial apply for closure #1 in VoiceAssetsObserver.assets.setter();
}

{
  return partial apply for closure #1 in VoiceAssetsObserver.assets.setter();
}

uint64_t (*RaceWorkoutTracker.alertDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___WORaceWorkoutTracker_alertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return RaceWorkoutTracker.alertDelegate.modify;
}

uint64_t (*RaceWorkoutTracker.trackerDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___WORaceWorkoutTracker_trackerDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return RaceWorkoutTracker.trackerDelegate.modify;
}

id @objc RaceWorkoutTracker.alertDelegate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t RaceWorkoutTracker.alertDelegate.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t @objc RaceWorkoutTracker.alertDelegate.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t RaceWorkoutTracker.alertDelegate.setter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*RaceWorkoutTracker.metadataSavingDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___WORaceWorkoutTracker_metadataSavingDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return RaceWorkoutTracker.metadataSavingDelegate.modify;
}

void RaceWorkoutTracker.alertDelegate.modify(uint64_t a1, char a2)
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

id RaceWorkoutTracker.__allocating_init(configuration:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized RaceWorkoutTracker.init(configuration:)(a1);

  return v4;
}

id RaceWorkoutTracker.init(configuration:)(void *a1)
{
  v2 = specialized RaceWorkoutTracker.init(configuration:)(a1);

  return v2;
}

char *RaceWorkoutTracker.didUpdate(_:)(void *a1)
{
  v2 = v1;
  result = [a1 state];
  if ((result - 2) >= 2 && result != 6)
  {
    if (result != 1)
    {
      return result;
    }

    [a1 timeAhead_s];
    [a1 currentDistance_m];
  }

  result = [a1 state];
  v6 = &unk_27C72C000;
  if (result == 2)
  {
    if (v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 12] == 1 && !(*&v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition] | *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 8]))
    {
      return result;
    }
  }

  else if (result == 1)
  {
    [a1 timeAhead_s];
    [a1 currentDistance_m];
  }

  v7 = [a1 state];
  v8 = 1;
  v9 = 0.0;
  v10 = 3;
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v60 = &v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition];
      if ((v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 12] & 1) == 0)
      {
        v61 = *&v1[OBJC_IVAR___WORaceWorkoutTracker_elapsedTime];
        RaceWorkoutTracker.recordCrossedFinishLine(_:)(v61);
        v62 = *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastOnRouteResult];
        if (v62)
        {
          [v62 timeAhead_s];
          v64 = v63;
        }

        else
        {
          v64 = 0.0;
        }

        RaceWorkoutTracker.processRaceTimeFrom(_:secondsAhead:)(v61, v64);
        if (one-time initialization token for race != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        __swift_project_value_buffer(v74, static WOLog.race);
        v75 = v1;
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v107[0] = v79;
          *v78 = 136315394;
          *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574656C706D6F63, 0xE900000000000064, v107);
          *(v78 + 12) = 2080;
          v80 = *(v60 + 2);
          v81 = v60[12];
          v108 = *v60;
          LODWORD(v109) = v80;
          BYTE4(v109) = v81;
          v82 = RacePosition.description.getter();
          v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, v107);

          *(v78 + 14) = v84;
          _os_log_impl(&dword_20AEA4000, v76, v77, "Race Workout Tracker: Transitioned to %s from %s", v78, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v79, -1, -1);
          MEMORY[0x20F2E9420](v78, -1, -1);
        }

        v8 = 1;
      }

      v27 = 2;
      goto LABEL_60;
    }

    if (v7 == 6)
    {
      v28 = &v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition];
      if (v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 12] != 1 || (v29 = *(v28 + 2), *v28 <= 3uLL))
      {
        v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(&outlined read-only object #0 of RaceWorkoutTracker.didUpdate(_:));
        outlined destroy of (String, Bool)(&unk_282243F90, &_sSS_SbtMd, &_sSS_SbtMR);
        if (one-time initialization token for race != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static WOLog.race);
        v32 = v1;
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v107[0] = v36;
          *v35 = 136315394;
          *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x64657269707865, 0xE700000000000000, v107);
          *(v35 + 12) = 2080;
          v37 = *(v28 + 2);
          v38 = v28[12];
          v108 = *v28;
          LODWORD(v109) = v37;
          BYTE4(v109) = v38;
          v39 = RacePosition.description.getter();
          v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v107);

          *(v35 + 14) = v41;
          _os_log_impl(&dword_20AEA4000, v33, v34, "Race Workout Tracker: Transitioned to %s from %s", v35, 0x16u);
          swift_arrayDestroy();
          v42 = v36;
          v6 = &unk_27C72C000;
          MEMORY[0x20F2E9420](v42, -1, -1);
          MEMORY[0x20F2E9420](v35, -1, -1);
        }

        else
        {
        }

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v68 = Strong;
          specialized _dictionaryUpCast<A, B, C, D>(_:)(v30);

          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v68 insertOrUpdateMetadata:isa forceTopLevel:0];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_beginAccess();
        v70 = swift_unknownObjectWeakLoadStrong();
        if (v70)
        {
          v71 = v70;
          v72 = type metadata accessor for WorkoutAlertRace();
          v105.receiver = objc_allocWithZone(v72);
          v105.super_class = v72;
          v73 = objc_msgSendSuper2(&v105, sel_init);
          [v73 setType_];
          [v71 alertSource:v32 didTriggerAlert:v73];

          swift_unknownObjectRelease();
        }

        v8 = 1;
      }

      v27 = 4;
      goto LABEL_60;
    }
  }

  else
  {
    if (v7 == 1)
    {
      [a1 timeAhead_s];
      v10 = v43;
      [a1 currentDistance_m];
      v9 = v44;
      v45 = &v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition];
      if (v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 12] == 1)
      {
        v46 = *(v45 + 2);
        if (__PAIR128__((*v45 >= 2uLL) + v46 - 1, *v45 - 2) >= 3)
        {
          if (*v45 | v46)
          {
            swift_beginAccess();
            v86 = swift_unknownObjectWeakLoadStrong();
            if (v86)
            {
              v87 = v86;
              v88 = type metadata accessor for WorkoutAlertRace();
              v103.receiver = objc_allocWithZone(v88);
              v103.super_class = v88;
              v89 = objc_msgSendSuper2(&v103, sel_init);
              [v89 setType_];
              [v87 alertSource:v2 didTriggerAlert:v89];

              swift_unknownObjectRelease();
            }

            if (one-time initialization token for race != -1)
            {
              swift_once();
            }

            v90 = type metadata accessor for Logger();
            __swift_project_value_buffer(v90, static WOLog.race);
            v91 = v2;
            v92 = Logger.logObject.getter();
            v93 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v92, v93))
            {
              v94 = swift_slowAlloc();
              v95 = swift_slowAlloc();
              v106[0] = v95;
              *v94 = 136315394;
              v108 = 0;
              v109 = 0xE000000000000000;
              _StringGuts.grow(_:)(41);
              MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45B2E0);
              Double.write<A>(to:)();
              MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B45B300);
              v6 = &unk_27C72C000;
              Float.write<A>(to:)();
              v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, v106);

              *(v94 + 4) = v96;
              *(v94 + 12) = 2080;
              v97 = *(v45 + 2);
              v98 = v45[12];
              v108 = *v45;
              LODWORD(v109) = v97;
              BYTE4(v109) = v98;
              v99 = RacePosition.description.getter();
              v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, v106);

              *(v94 + 14) = v101;
              _os_log_impl(&dword_20AEA4000, v92, v93, "Race Workout Tracker: Transitioned to %s from %s", v94, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x20F2E9420](v95, -1, -1);
              MEMORY[0x20F2E9420](v94, -1, -1);
            }
          }

          else
          {
            if (one-time initialization token for race != -1)
            {
              swift_once();
            }

            v47 = type metadata accessor for Logger();
            __swift_project_value_buffer(v47, static WOLog.race);
            v48 = v1;
            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              v107[0] = v102;
              *v51 = 136315394;
              v108 = 0;
              v109 = 0xE000000000000000;
              _StringGuts.grow(_:)(41);
              MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45B2E0);
              Double.write<A>(to:)();
              MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B45B300);
              Float.write<A>(to:)();
              v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v107);

              *(v51 + 4) = v52;
              *(v51 + 12) = 2080;
              v53 = *(v45 + 2);
              v54 = v45[12];
              v108 = *v45;
              LODWORD(v109) = v53;
              BYTE4(v109) = v54;
              v55 = RacePosition.description.getter();
              v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v107);

              *(v51 + 14) = v57;
              v6 = &unk_27C72C000;
              _os_log_impl(&dword_20AEA4000, v49, v50, "Race Workout Tracker: Transitioned to %s from %s", v51, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x20F2E9420](v102, -1, -1);
              MEMORY[0x20F2E9420](v51, -1, -1);
            }

            v58 = *&v48[OBJC_IVAR___WORaceWorkoutTracker_elapsedTime];
            v59 = &v48[OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration];
            *v59 = v58;
            *(v59 + 8) = 0;
            RaceWorkoutTracker.recordCrossedStartLine(_:)(v58);
          }
        }
      }

      else
      {
        RaceWorkoutTracker.triggerPaceAlertIfNeeded(_:)(a1);
      }

      RaceWorkoutTracker.updateRemainingDistance(_:)(a1);
      v65 = *&v2[OBJC_IVAR___WORaceWorkoutTracker_lastOnRouteResult];
      *&v2[OBJC_IVAR___WORaceWorkoutTracker_lastOnRouteResult] = a1;
      v66 = a1;

      v8 = 0;
      goto LABEL_61;
    }

    if (v7 == 2)
    {
      v11 = &v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition];
      if ((v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 12] & 1) == 0)
      {
        swift_beginAccess();
        v12 = swift_unknownObjectWeakLoadStrong();
        if (v12)
        {
          v13 = v12;
          v14 = type metadata accessor for WorkoutAlertRace();
          v104.receiver = objc_allocWithZone(v14);
          v104.super_class = v14;
          v15 = objc_msgSendSuper2(&v104, sel_init);
          [v15 setType_];
          [v13 alertSource:v2 didTriggerAlert:v15];

          swift_unknownObjectRelease();
        }

        if (one-time initialization token for race != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static WOLog.race);
        v17 = v2;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v106[0] = v21;
          *v20 = 136315394;
          *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574756F5266666FLL, 0xE800000000000000, v106);
          *(v20 + 12) = 2080;
          v22 = *(v11 + 2);
          v23 = v11[12];
          v108 = *v11;
          LODWORD(v109) = v22;
          BYTE4(v109) = v23;
          v24 = RacePosition.description.getter();
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v106);

          *(v20 + 14) = v26;
          _os_log_impl(&dword_20AEA4000, v18, v19, "Race Workout Tracker: Transitioned to %s from %s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v21, -1, -1);
          MEMORY[0x20F2E9420](v20, -1, -1);
        }

        v8 = 1;
      }

      v27 = 1;
LABEL_60:
      v10 = v27;
    }
  }

LABEL_61:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didUpdate_];
    result = swift_unknownObjectRelease();
  }

  v85 = &v2[v6[138]];
  *v85 = v10;
  v85[2] = v9;
  *(v85 + 12) = v8;
  return result;
}

id RaceWorkoutTracker.updateRemainingDistance(_:)(void *a1)
{
  v2 = v1;
  if ([a1 state] == 1 && (objc_msgSend(a1, sel_timeAhead_s), v5 = v4, objc_msgSend(a1, sel_currentDistance_m), v5 >= 0.0) || (result = objc_msgSend(a1, sel_state), result == 1) && (objc_msgSend(a1, sel_timeAhead_s), v8 = v7, result = objc_msgSend(a1, sel_currentDistance_m), v8 < 0.0))
  {
    v9 = *&v2[OBJC_IVAR___WORaceWorkoutTracker_referenceRouteLength];
    [a1 currentDistance_m];
    v11 = v9 - v10;
    if (v11 <= 0.0)
    {
      v11 = 0.0;
    }

    v12 = OBJC_IVAR___WORaceWorkoutTracker_remainingDistance;
    *&v2[OBJC_IVAR___WORaceWorkoutTracker_remainingDistance] = v11;
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.race);
    v14 = v2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *&v2[v12];
      _os_log_impl(&dword_20AEA4000, v15, v16, "Race Workout Tracker: Updated remaining distance on route: %f meters.", v17, 0xCu);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result updateRemainingDistance_];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void RaceWorkoutTracker.triggerPaceAlertIfNeeded(_:)(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v27[-v9];
  v11 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_raceAlerts);
  swift_beginAccess();
  if (*(v11 + 16) == 1)
  {
    v12 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_elapsedTime);
    if (v12 >= 60.0)
    {
      v13 = OBJC_IVAR___WORaceWorkoutTracker_lastAheadOrBehindAlert;
      v14 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastAheadOrBehindAlert);
      if (v14)
      {
        v15 = v14;
        static Date.now.getter();
        v16 = [v15 eventDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSince(_:)();
        v12 = v17;

        v18 = *(v4 + 8);
        v18(v8, v3);
        v18(v10, v3);
      }

      if (v12 > 15.0)
      {
        [a1 timeAhead_s];
        v20 = (v19 < 0.0 ? 19 : 18);
        v21 = *(v1 + v13);
        if (!v21 || [v21 type] != v20)
        {
          v22 = objc_allocWithZone(type metadata accessor for WorkoutAlertRace());
          v23 = WorkoutAlertRace.init(type:)(v20);
          static Date.now.getter();
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v4 + 8))(v10, v3);
          [v23 setEventDate_];

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong alertSource:v1 didTriggerAlert:v23];
            swift_unknownObjectRelease();
          }

          v26 = *(v1 + v13);
          *(v1 + v13) = v23;
        }
      }
    }
  }
}

Swift::Void __swiftcall RaceWorkoutTracker.processRaceTimeFrom(_:secondsAhead:)(Swift::Double _, Swift::Double secondsAhead)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration);
  if (*(v2 + OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration + 8))
  {
    v5 = 0.0;
  }

  v6 = _ - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong setFinishTime_];
    swift_unknownObjectRelease();
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    [v8 setDidWinRace_];
    swift_unknownObjectRelease();
  }

  if (secondsAhead < 0.0)
  {
    v9 = 24;
  }

  else
  {
    v9 = 23;
  }

  v10 = objc_allocWithZone(type metadata accessor for WorkoutAlertRaceComplete());
  v11 = WorkoutAlertRaceComplete.init(type:raceTime:secondsAhead:)(v9, v6, secondsAhead);
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    [v12 alertSource:v3 didTriggerAlert:v11];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Void __swiftcall RaceWorkoutTracker.fireRaceCompleteAlert(raceTime:secondsAhead:)(Swift::Double raceTime, Swift::Double secondsAhead)
{
  v3 = v2;
  if (secondsAhead < 0.0)
  {
    v6 = 24;
  }

  else
  {
    v6 = 23;
  }

  v7 = objc_allocWithZone(type metadata accessor for WorkoutAlertRaceComplete());
  v8 = WorkoutAlertRaceComplete.init(type:raceTime:secondsAhead:)(v6, raceTime, secondsAhead);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong alertSource:v3 didTriggerAlert:v8];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Void __swiftcall RaceWorkoutTracker.recordCrossedStartLine(_:)(Swift::Double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A20;
  *(inited + 32) = 0xD000000000000029;
  *(inited + 40) = 0x800000020B465090;
  *(inited + 72) = type metadata accessor for Date();
  __swift_allocate_boxed_opaque_existential_0((inited + 48));
  Date.init()();
  *(inited + 80) = 0xD00000000000002DLL;
  *(inited + 88) = 0x800000020B4650C0;
  v4 = MEMORY[0x277D839F8];
  *(inited + 96) = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_distance);
  *(inited + 120) = v4;
  *(inited + 128) = 0xD00000000000002DLL;
  *(inited + 136) = 0x800000020B4650F0;
  *(inited + 168) = v4;
  *(inited + 144) = a1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 insertOrUpdateMetadata:isa forceTopLevel:0];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Void __swiftcall RaceWorkoutTracker.recordCrossedFinishLine(_:)(Swift::Double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A20;
  *(inited + 32) = 0xD000000000000028;
  *(inited + 40) = 0x800000020B465120;
  *(inited + 72) = type metadata accessor for Date();
  __swift_allocate_boxed_opaque_existential_0((inited + 48));
  Date.init()();
  *(inited + 80) = 0xD00000000000002CLL;
  *(inited + 88) = 0x800000020B465150;
  v4 = MEMORY[0x277D839F8];
  *(inited + 96) = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_distance);
  *(inited + 120) = v4;
  *(inited + 128) = 0xD00000000000002CLL;
  *(inited + 136) = 0x800000020B465180;
  *(inited + 168) = v4;
  *(inited + 144) = a1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 insertOrUpdateMetadata:isa forceTopLevel:0];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Double __swiftcall RaceWorkoutTracker.calculateRaceFinishTime(_:)(Swift::Double a1)
{
  v2 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration);
  if (*(v1 + OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration + 8))
  {
    v2 = 0.0;
  }

  return a1 - v2;
}

void *RaceWorkoutTracker.recover(with:metadata:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [a1 state];
  v7 = 0.0;
  if (v6 > 2)
  {
    if ((v6 - 4) >= 2)
    {
      if (v6 == 3)
      {
        v8 = 1;
        v9 = 2;
        goto LABEL_11;
      }

      if (v6 == 6)
      {
        v8 = 1;
        v9 = 4;
        goto LABEL_11;
      }
    }

LABEL_10:
    v8 = 1;
    v9 = 3;
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      v8 = 1;
      v9 = 1;
LABEL_11:
      v10 = v9;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  [a1 timeAhead_s];
  v10 = v43;
  [a1 currentDistance_m];
  v8 = 0;
  v7 = v44;
LABEL_12:
  v11 = v3 + OBJC_IVAR___WORaceWorkoutTracker_lastPosition;
  *v11 = v10;
  *(v11 + 8) = v7;
  *(v11 + 12) = v8;
  v12 = [a1 state];
  if (v12 == 1)
  {
    [a1 timeAhead_s];
    [a1 currentDistance_m];
  }

  else if (v12 != 3)
  {
    goto LABEL_17;
  }

  v13 = *(v3 + OBJC_IVAR___WORaceWorkoutTracker_lastOnRouteResult);
  *(v3 + OBJC_IVAR___WORaceWorkoutTracker_lastOnRouteResult) = a1;
  v14 = a1;

LABEL_17:
  if (*(a2 + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000034, 0x800000020B4651B0);
    if (v16)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v15, v46);
      if (swift_dynamicCast())
      {
        *(v3 + OBJC_IVAR___WORaceWorkoutTracker_lastAveragePace) = v45;
      }
    }
  }

  if (*(a2 + 16))
  {
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003BLL, 0x800000020B4651F0);
    if (v18)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v17, v46);
      if (swift_dynamicCast())
      {
        *(v3 + OBJC_IVAR___WORaceWorkoutTracker_lastOverlapDistance) = v45;
      }
    }
  }

  if (*(a2 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000020B465230), (v20 & 1) != 0) && (outlined init with copy of Any(*(a2 + 56) + 32 * v19, v46), (swift_dynamicCast() & 1) != 0))
  {
    v21 = v45;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong recoverySetSecondsAheadOfGhost_];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v21 = 0.0;
  }

  if (*(a2 + 16))
  {
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000026, 0x800000020B465260);
    if (v24)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v23, v46);
      if (swift_dynamicCast())
      {
        *(v3 + OBJC_IVAR___WORaceWorkoutTracker_remainingDistance) = v45;
        swift_beginAccess();
        v25 = swift_unknownObjectWeakLoadStrong();
        if (v25)
        {
          [v25 updateRemainingDistance_];
          swift_unknownObjectRelease();
        }
      }
    }
  }

  if (*(a2 + 16))
  {
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000028, 0x800000020B465290);
    if (v27)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v26, v46);
      if (swift_dynamicCast())
      {
        *(v3 + OBJC_IVAR___WORaceWorkoutTracker_lastPositionOnRoute) = v45;
        swift_beginAccess();
        v28 = swift_unknownObjectWeakLoadStrong();
        if (v28)
        {
          [v28 recoverySetPositionOnRoute_];
          swift_unknownObjectRelease();
        }
      }
    }
  }

  if (*(a2 + 16))
  {
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002DLL, 0x800000020B4652C0);
    if (v30)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v29, v46);
      if (swift_dynamicCast())
      {
        *(v3 + OBJC_IVAR___WORaceWorkoutTracker_lastGhostPositionOnRoute) = v45;
        swift_beginAccess();
        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          [v31 recoverySetGhostPositionOnRoute_];
          swift_unknownObjectRelease();
        }
      }
    }
  }

  if (*(a2 + 16))
  {
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002DLL, 0x800000020B4650F0);
    if (v33)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v32, v46);
      if (swift_dynamicCast())
      {
        v34 = v3 + OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration;
        *v34 = v45;
        *(v34 + 8) = 0;
      }
    }
  }

  if (*(a2 + 16))
  {
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000020B465180);
    if (v36)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v35, v46);
      if (swift_dynamicCast())
      {
        v37 = *(v3 + OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration);
        v38 = *(v3 + OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration + 8);
        swift_beginAccess();
        v39 = swift_unknownObjectWeakLoadStrong();
        if (v39)
        {
          v40 = 0.0;
          if (!v38)
          {
            v40 = v37;
          }

          [v39 setFinishTime_];
          swift_unknownObjectRelease();
        }

        v41 = swift_unknownObjectWeakLoadStrong();
        if (v41)
        {
          [v41 setDidWinRace_];
          swift_unknownObjectRelease();
        }
      }
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didUpdate_];
    return swift_unknownObjectRelease();
  }

  return result;
}

id RaceWorkoutTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RaceWorkoutTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RaceWorkoutTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t RaceWorkoutTracker.metadata.getter()
{
  v1 = v0;
  v30 = type metadata accessor for UUID();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastAveragePace);
  v7 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastOverlapDistance);
  v8 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastOnRouteResult);
  if (v8)
  {
    v9 = v8;
    [v9 currentAveragePace_s_per_m];
    v31 = v10 <= 0.0;
    v11 = 0;
    if (v10 > 0.0)
    {
      [v9 currentAveragePace_s_per_m];
      v6 = 1.0 / v12;
      [v9 totalOverlapDistance_m];
      v7 = v13;
      [v9 timeAhead_s];
      v11 = v14;
    }
  }

  else
  {
    v31 = 1;
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423920;
  *(inited + 32) = 0xD000000000000032;
  *(inited + 40) = 0x800000020B465310;
  v16 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_configuration);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v34[0]) == 1)
  {
    v17 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  }

  else
  {
    v17 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  }

  v18 = v16 + *v17;
  swift_beginAccess();
  v19 = v30;
  (*(v2 + 16))(v5, v18, v30);
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v2 + 8))(v5, v19);
  v23 = MEMORY[0x277D837D0];
  *(inited + 48) = v20;
  *(inited + 56) = v22;
  *(inited + 72) = v23;
  *(inited + 80) = 0xD000000000000034;
  *(inited + 88) = 0x800000020B4651B0;
  v24 = MEMORY[0x277D839F8];
  *(inited + 96) = v6;
  *(inited + 120) = v24;
  *(inited + 128) = 0xD00000000000003BLL;
  *(inited + 136) = 0x800000020B4651F0;
  *(inited + 144) = v7;
  *(inited + 168) = v24;
  *(inited + 176) = 0xD000000000000028;
  *(inited + 184) = 0x800000020B465290;
  *(inited + 192) = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastPositionOnRoute);
  *(inited + 216) = v24;
  *(inited + 224) = 0xD00000000000002DLL;
  *(inited + 232) = 0x800000020B4652C0;
  *(inited + 240) = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastGhostPositionOnRoute);
  *(inited + 264) = v24;
  *(inited + 272) = 0xD000000000000026;
  *(inited + 280) = 0x800000020B465260;
  *(inited + 288) = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_remainingDistance);
  *(inited + 312) = v24;
  *(inited + 320) = 0xD000000000000026;
  *(inited + 328) = 0x800000020B45B2B0;
  v25 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 12);
  if (*(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastPosition) != 2 || *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 8) != 0)
  {
    v25 = 0;
  }

  *(inited + 360) = MEMORY[0x277D839B0];
  *(inited + 336) = v25;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v35 = v27;
  if (!v31)
  {
    v33 = v24;
    *&v32 = v11;
    specialized Dictionary._Variant.updateValue(_:forKey:)(&v32, 0xD00000000000002CLL, 0x800000020B465230, v34);
    outlined destroy of (String, Bool)(v34, &_sypSgMd, &_sypSgMR);
    return v35;
  }

  return v27;
}

void *RaceWorkoutTracker.dataProvider(_:didUpdate:)(void *result, uint64_t a2)
{
  if (a2 == 3)
  {
    v3 = &OBJC_IVAR___WORaceWorkoutTracker_elapsedTime;
    v4 = &selRef_elapsedTime;
    v5 = &selRef_elapsedTimeProvider;
  }

  else
  {
    if (a2 != 1)
    {
      return result;
    }

    v3 = &OBJC_IVAR___WORaceWorkoutTracker_distance;
    v4 = &selRef_distance;
    v5 = &selRef_distanceProvider;
  }

  [objc_msgSend(result *v5)];
  v7 = v6;
  result = swift_unknownObjectRelease();
  *(v2 + *v3) = v7;
  return result;
}

Swift::Void __swiftcall RaceWorkoutTracker.setRoutePoints(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    type metadata accessor for CLRoutePoint();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v2 setRoutePoints_];

    swift_unknownObjectRelease();
  }
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v23;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a3, a1, v13);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = 32 * v14;
  outlined init with take of Any((v13[7] + 32 * v14), a4);
  result = outlined init with take of Any(a1, (v13[7] + v21));
LABEL_11:
  *v6 = v13;
  return result;
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    v12 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = v12;
    specialized _NativeDictionary.copy()();
    v12 = v21;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v11);

    v20 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = v11[7];
  v20 = *(v19 + 8 * v12);
  *(v19 + 8 * v12) = a1;
LABEL_11:
  *v5 = v11;
  return v20;
}

id specialized RaceWorkoutTracker.init(configuration:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_distance] = 0;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_elapsedTime] = 0;
  v3 = &v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition];
  *v3 = 0;
  *(v3 + 2) = 0;
  v3[12] = 1;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastOnRouteResult] = 0;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastAheadOrBehindAlert] = 0;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastAveragePace] = 0;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastOverlapDistance] = 0;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastPositionOnRoute] = 0;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastGhostPositionOnRoute] = 0;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_alertHoldoffTime] = 0x404E000000000000;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_minTimeBetweenAlertsSec] = 0x402E000000000000;
  v4 = &v1[OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration];
  *v4 = 0;
  v4[8] = 1;
  v5 = *(a1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for RaceWorkoutConfiguration();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    *&v1[OBJC_IVAR___WORaceWorkoutTracker_configuration] = v6;
    v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v9 = *(v7 + v8);
    v10 = v5;
    v11 = v9;
    v12 = specialized static RaceAlertsStore.read(for:)(v11);

    *&v1[OBJC_IVAR___WORaceWorkoutTracker_raceAlerts] = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v20 == 1)
    {
      v13 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
    }

    else
    {
      v13 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
    }

    v14 = (v7 + v13);
    swift_beginAccess();
    *&v1[OBJC_IVAR___WORaceWorkoutTracker_referenceRouteLength] = *v14;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v21 == 1)
    {
      v15 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
    }

    else
    {
      v15 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
    }

    v16 = (v7 + v15);
    swift_beginAccess();
    v17 = *v16;

    *&v1[OBJC_IVAR___WORaceWorkoutTracker_remainingDistance] = v17;
    v19.receiver = v1;
    v19.super_class = type metadata accessor for RaceWorkoutTracker();
    return objc_msgSendSuper2(&v19, sel_init);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of (String, Bool)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t type metadata accessor for CLRoutePoint()
{
  result = lazy cache variable for type metadata for CLRoutePoint;
  if (!lazy cache variable for type metadata for CLRoutePoint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CLRoutePoint);
  }

  return result;
}

uint64_t keypath_get_3Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t keypath_set_4Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t AveragePowerAccumulator.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14[-v5];
  v7 = OBJC_IVAR___WOAveragePowerAccumulator_eventStartDate;
  swift_beginAccess();
  outlined init with copy of Date?(v1 + v7, v6);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) == 1)
  {
    v11 = *(v1 + OBJC_IVAR___WOAveragePowerAccumulator_powerAccumulator);
    v12 = OBJC_IVAR___NLSessionActivityPowerAccumulator_startDate;
    swift_beginAccess();
    outlined init with copy of Date?(v11 + v12, a1);
    result = v10(v6, 1, v8);
    if (result != 1)
    {
      return _s10Foundation4DateVSgWOhTm_11(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v9 + 32))(a1, v6, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  return result;
}

id AveragePowerAccumulator.init(powerAccumulator:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = OBJC_IVAR___WOAveragePowerAccumulator_eventStartDate;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator;
  type metadata accessor for StatisticAccumulator();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *&v1[v10] = v11;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v12 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  *&v1[OBJC_IVAR___WOAveragePowerAccumulator_cancellables] = v12;
  *&v1[OBJC_IVAR___WOAveragePowerAccumulator_powerAccumulator] = a1;
  v13 = type metadata accessor for AveragePowerAccumulator();
  v19.receiver = v1;
  v19.super_class = v13;
  v14 = a1;
  v15 = objc_msgSendSuper2(&v19, sel_init);
  swift_beginAccess();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMd, &_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type Published<[HKWorkoutBuilderQuantity]>.Publisher and conformance Published<A>.Publisher();
  Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

void closure #1 in AveragePowerAccumulator.init(powerAccumulator:)(void **a1)
{
  v1._rawValue = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    AveragePowerAccumulator.process(samples:)(v1);
  }
}

id AveragePowerAccumulator.averagePower.getter()
{
  v1 = [objc_opt_self() wattUnit];
  v2 = *(v0 + OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator);
  v3 = *(v2 + 24);
  if (v3 < 1)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *(v2 + 16) / v3;
  }

  v5 = [objc_opt_self() quantityWithUnit:v1 doubleValue:v4];

  return v5;
}

void AveragePowerAccumulator.reset(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  outlined init with copy of Date?(a1, &v11 - v5);
  v7 = OBJC_IVAR___WOAveragePowerAccumulator_eventStartDate;
  swift_beginAccess();
  outlined assign with take of Date?(v6, &v1[v7]);
  swift_endAccess();
  v8 = *&v1[OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator];
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v9 = [v1 updateHandler];
  if (v9)
  {
    v10 = v9;
    (*(v9 + 2))();
    _Block_release(v10);
  }
}

Swift::Void __swiftcall AveragePowerAccumulator.process(samples:)(Swift::OpaquePointer samples)
{
  rawValue = samples._rawValue;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v76 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v82 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v76 - v15;
  v17 = OBJC_IVAR___WOAveragePowerAccumulator_eventStartDate;
  swift_beginAccess();
  outlined init with copy of Date?(&v1[v17], v7);
  v18 = *(v11 + 48);
  if (v18(v7, 1, v10) == 1)
  {
    v2 = *&v1[OBJC_IVAR___WOAveragePowerAccumulator_powerAccumulator];
    v19 = v11;
    v20 = OBJC_IVAR___NLSessionActivityPowerAccumulator_startDate;
    swift_beginAccess();
    v21 = v2 + v20;
    v11 = v19;
    outlined init with copy of Date?(v21, v9);
    if (v18(v7, 1, v10) != 1)
    {
      _s10Foundation4DateVSgWOhTm_11(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v11 + 32))(v9, v7, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
  }

  if (v18(v9, 1, v10) != 1)
  {
    v28 = (*(v11 + 32))(v16, v9, v10);
    MEMORY[0x28223BE20](v28);
    v81 = v16;
    *(&v76 - 2) = v16;
    v29 = rawValue;

    v30 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in AveragePowerAccumulator.process(samples:), (&v76 - 4), v29);
    v31 = v30 >> 62;
    if (v30 >> 62)
    {
      v75 = v30;
      v32 = __CocoaSet.count.getter();
      v30 = v75;
      if (v32)
      {
LABEL_13:
        v33 = v30;
        v86 = objc_opt_self();
        if (v32 < 1)
        {
          __break(1u);
        }

        else
        {
          v78 = v31;
          v79 = v11;
          v80 = v10;
          v34 = 0;
          v35 = v33;
          v36 = v33 & 0xC000000000000001;
          v84 = v35;
          v85 = OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator;
          do
          {
            if (v36)
            {
              v37 = MEMORY[0x20F2E7A20](v34);
            }

            else
            {
              v37 = *(v35 + 8 * v34 + 32);
            }

            v38 = v37;
            v39 = *&v1[v85];

            v22 = [v86 wattUnit];
            v40 = [v38 quantity];
            [v40 doubleValueForUnit_];
            v42 = v41;

            *(v39 + 16) = v42 + *(v39 + 16);
            v43 = *(v39 + 24);
            v44 = __OFADD__(v43, 1);
            v45 = v43 + 1;
            if (v44)
            {
              __break(1u);
              goto LABEL_38;
            }

            ++v34;
            *(v39 + 24) = v45;

            v35 = v84;
          }

          while (v32 != v34);
          v46 = [v1 updateHandler];
          if (v46)
          {
            v47 = v46;
            (*(v46 + 2))();
            _Block_release(v47);
          }

          v10 = v80;
          v33 = v81;
          v7 = v82;
          v31 = rawValue;
          v2 = v79;
          if (one-time initialization token for app == -1)
          {
            goto LABEL_23;
          }
        }

        swift_once();
LABEL_23:
        v48 = type metadata accessor for Logger();
        __swift_project_value_buffer(v48, static WOLog.app);
        (*(v2 + 16))(v7, v33, v10);
        swift_bridgeObjectRetain_n();

        v49 = v2;
        v50 = v1;
        v51 = v1;
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v52, v53))
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v58 = *(v49 + 8);
          v58(v7, v10);
          v58(v81, v10);
          return;
        }

        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v87 = v56;
        *v54 = 134218754;
        v77 = v56;
        if (v78)
        {
          v57 = __CocoaSet.count.getter();
        }

        else
        {
          v57 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v54 + 4) = v57;

        *(v54 + 12) = 2048;
        if (v31 >> 62)
        {
          v59 = __CocoaSet.count.getter();
        }

        else
        {
          v59 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v60 = v55;

        *(v54 + 14) = v59;

        *(v54 + 22) = 2080;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v61 = static WOLog.logDateFormatter;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v63 = [v61 stringFromDate_];

        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;

        v67 = *(v79 + 8);
        v67(v7, v80);
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v87);

        *(v54 + 24) = v68;
        *(v54 + 32) = 2112;
        v69 = [v86 wattUnit];
        v70 = *&v50[v85];
        v71 = *(v70 + 24);
        if (v71 < 1)
        {
          v72 = 0.0;
        }

        else
        {
          v72 = *(v70 + 16) / v71;
        }

        v73 = [objc_opt_self() quantityWithUnit:v69 doubleValue:v72];

        *(v54 + 34) = v73;
        *v60 = v73;
        _os_log_impl(&dword_20AEA4000, v52, v53, "AveragePowerAccumulator: processed %ld interval samples out of %ld input samples, startDate: %s, averagePower: %@", v54, 0x2Au);
        _s10Foundation4DateVSgWOhTm_11(v60, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v60, -1, -1);
        v74 = v77;
        __swift_destroy_boxed_opaque_existential_0(v77);
        MEMORY[0x20F2E9420](v74, -1, -1);
        MEMORY[0x20F2E9420](v54, -1, -1);

        v10 = v80;
        goto LABEL_41;
      }
    }

    else
    {
      v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
        goto LABEL_13;
      }
    }

    v67 = *(v11 + 8);
LABEL_41:
    v67(v81, v10);
    return;
  }

  _s10Foundation4DateVSgWOhTm_11(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v22 = rawValue;
  if (one-time initialization token for app != -1)
  {
LABEL_38:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static WOLog.app);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    if (v22 >> 62)
    {
      v27 = __CocoaSet.count.getter();
    }

    else
    {
      v27 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v26 + 4) = v27;

    _os_log_impl(&dword_20AEA4000, v24, v25, "AveragePowerAccumulator: startDate is not available yet to accumulate average power, skip %ld input samples", v26, 0xCu);
    MEMORY[0x20F2E9420](v26, -1, -1);
  }

  else
  {
  }
}

BOOL closure #1 in AveragePowerAccumulator.process(samples:)(id *a1)
{
  v2 = type metadata accessor for DateInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*a1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.start.getter();
  (*(v3 + 8))(v6, v2);
  lazy protocol witness table accessor for type Date and conformance Date();
  LOBYTE(v6) = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v8 + 8))(v11, v7);
  return (v6 & 1) == 0;
}

id AveragePowerAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AveragePowerAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AveragePowerAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AveragePowerAccumulator()
{
  result = type metadata singleton initialization cache for AveragePowerAccumulator;
  if (!type metadata singleton initialization cache for AveragePowerAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Published<[HKWorkoutBuilderQuantity]>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<[HKWorkoutBuilderQuantity]>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<[HKWorkoutBuilderQuantity]>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<[HKWorkoutBuilderQuantity]>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t _s10Foundation4DateVSgWOhTm_11(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata completion function for AveragePowerAccumulator()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t type metadata accessor for HKWorkoutBuilderQuantity()
{
  result = lazy cache variable for type metadata for HKWorkoutBuilderQuantity;
  if (!lazy cache variable for type metadata for HKWorkoutBuilderQuantity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKWorkoutBuilderQuantity);
  }

  return result;
}

uint64_t _HKWorkoutGoalType.symbolName.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x72656D6974;
    }

    if (a1 == 3)
    {
      return 0x656D616C66;
    }
  }

  else
  {
    if (!a1)
    {
      return 0xD000000000000015;
    }

    if (a1 == 1)
    {
      return 0xD00000000000001CLL;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t WorkoutConfiguration.supportsMetricType(_:domainAccessor:)(unint64_t a1)
{
  if (specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)())
  {
    if (a1 >= 0x20)
    {
      v3 = 1;
    }

    else
    {
      v3 = 0x3FF67EFu >> a1;
    }
  }

  else
  {
    v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
    swift_beginAccess();
    v3 = 1;
    if (*(v1 + v4) == 1)
    {
      if (a1 >= 0x25)
      {
        v3 = 1;
      }

      else
      {
        v3 = 0x3FC1FFFFFuLL >> a1;
      }
    }
  }

  return v3 & 1;
}

uint64_t WorkoutConfiguration.containsDistanceBasedGoal.getter()
{
  type metadata accessor for GoalWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v1 = v0;
    static Published.subscript.getter();

    v2 = [v19 goalTypeIdentifier];

    return v2 == 1;
  }

  else
  {
    type metadata accessor for IntervalWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v4 = v0;
      static Published.subscript.getter();

      KeyPath = IntervalWorkout.blocks.getter();

      v18 = v4;
      if (KeyPath >> 62)
      {
        goto LABEL_34;
      }

      for (result = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = __CocoaSet.count.getter())
      {
        v6 = 0;
        v7 = KeyPath & 0xC000000000000001;
        v13 = KeyPath + 32;
        v14 = KeyPath & 0xFFFFFFFFFFFFFF8;
        v17 = KeyPath;
        v15 = KeyPath & 0xC000000000000001;
        v16 = result;
        while (2)
        {
          if (v7)
          {
            MEMORY[0x20F2E7A20](v6, KeyPath);
            v8 = __OFADD__(v6++, 1);
            if (!v8)
            {
              goto LABEL_14;
            }
          }

          else
          {
            if (v6 >= *(v14 + 16))
            {
              __break(1u);
              return result;
            }

            v9 = *(v13 + 8 * v6);

            v8 = __OFADD__(v6++, 1);
            if (!v8)
            {
LABEL_14:
              KeyPath = swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              if (v19 >> 62)
              {
                v10 = __CocoaSet.count.getter();
              }

              else
              {
                v10 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              for (i = 0; v10 != i; ++i)
              {
                if ((v19 & 0xC000000000000001) != 0)
                {
                  KeyPath = MEMORY[0x20F2E7A20](i);
                  if (__OFADD__(i, 1))
                  {
                    goto LABEL_31;
                  }
                }

                else
                {
                  if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_32;
                  }

                  KeyPath = *(v19 + 8 * i + 32);

                  if (__OFADD__(i, 1))
                  {
LABEL_31:
                    __break(1u);
LABEL_32:
                    __break(1u);
                    goto LABEL_33;
                  }
                }

                swift_getKeyPath();
                swift_getKeyPath();
                static Published.subscript.getter();

                v12 = [v19 goalTypeIdentifier];

                if (v12 == 1)
                {

                  return 1;
                }
              }

              KeyPath = v17;
              v7 = v15;
              if (v6 != v16)
              {
                continue;
              }

              goto LABEL_35;
            }
          }

          break;
        }

LABEL_33:
        __break(1u);
LABEL_34:
        ;
      }

LABEL_35:
    }

    else
    {
      type metadata accessor for PacerWorkoutConfiguration();
      if (swift_dynamicCastClass())
      {
        return 1;
      }
    }

    return 0;
  }
}

uint64_t CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.core);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = [objc_opt_self() currentThread];
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[CyclingPowerZones] Fetching CyclingPowerZonesConfiguration, thread: %@", v9, 0xCu);
    _sSo8NSObjectCSgWOhTm_12(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v12 = v3[5];
  v13 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v12);
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v15 = *(v13 + 16);

  v15(0xD00000000000001ELL, 0x800000020B4656E0, partial apply for closure #1 in CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:), v14, v12, v13);
}

uint64_t closure #1 in CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(uint64_t a1, unint64_t a2, void *a3, NSObject *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.core);
  outlined copy of Data?(a1, a2);
  v13 = a3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  outlined consume of Data?(a1, a2);

  v59 = a2;
  v60 = a1;
  v16 = a2 >> 60;
  if (os_log_type_enabled(v14, v15))
  {
    v57 = a4;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    result = swift_slowAlloc();
    v20 = result;
    v63 = result;
    *v17 = 136315650;
    v56 = a5;
    if (v16 > 0xE)
    {
LABEL_5:
      v21 = a6;
      v22 = 0;
LABEL_6:
      v61 = v22;
      v62 = v16 > 0xE;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
      v23 = Optional.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v63);

      *(v17 + 4) = v25;
      *(v17 + 12) = 2112;
      if (a3)
      {
        v26 = a3;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v28 = v27;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      a6 = v21;
      *(v17 + 14) = v27;
      *v18 = v28;
      *(v17 + 22) = 2112;
      v30 = [objc_opt_self() currentThread];
      *(v17 + 24) = v30;
      v18[1] = v30;
      _os_log_impl(&dword_20AEA4000, v14, v15, "[CyclingPowerZones] Fetched CyclingPowerZonesConfiguration from valueStore, data: %s bytes, error: %@, thread: %@", v17, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v20);
      MEMORY[0x20F2E9420](v20, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);

      a5 = v56;
      a4 = v57;
      a1 = v60;
      goto LABEL_14;
    }

    v29 = v59 >> 62;
    if ((v59 >> 62) > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_5;
      }

      v54 = *(v60 + 16);
      v53 = *(v60 + 24);
      v55 = __OFSUB__(v53, v54);
      v22 = v53 - v54;
      if (!v55)
      {
        v21 = a6;
        goto LABEL_6;
      }

      __break(1u);
    }

    else
    {
      if (!v29)
      {
        v21 = a6;
        v22 = BYTE6(v59);
        goto LABEL_6;
      }

      LODWORD(v22) = HIDWORD(v60) - v60;
      if (!__OFSUB__(HIDWORD(v60), v60))
      {
        v21 = a6;
        v22 = v22;
        goto LABEL_6;
      }
    }

    __break(1u);
    return result;
  }

LABEL_14:
  if (v16 < 0xF)
  {
    v35 = v59;
    outlined copy of Data._Representation(a1, v59);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_20AEA4000, v36, v37, "[CyclingPowerZones] Fetched CyclingPowerZonesConfiguration data from valueStore, decoding", v38, 2u);
      MEMORY[0x20F2E9420](v38, -1, -1);
    }

    v39 = type metadata accessor for JSONDecoder();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for CyclingPowerZonesConfiguration();
    _s11WorkoutCore30CyclingPowerZonesConfigurationCACSEAAWlTm_0(&lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v42 = v61;

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v58 = a4;
      v46 = swift_slowAlloc();
      v61 = v46;
      *v45 = 136315138;
      if (*(v42 + 16))
      {
        v47 = 0x6C61756E616DLL;
      }

      else
      {
        v47 = 0x6974616D6F747561;
      }

      v48 = a6;
      if (*(v42 + 16))
      {
        v49 = 0xE600000000000000;
      }

      else
      {
        v49 = 0xE900000000000063;
      }

      v50 = a5;
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v61);
      a6 = v48;
      v35 = v59;

      *(v45 + 4) = v51;
      a5 = v50;
      _os_log_impl(&dword_20AEA4000, v43, v44, "[CyclingPowerZones] Fetched and decoded %s configuration from valueStore", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v46);
      v52 = v46;
      a4 = v58;
      MEMORY[0x20F2E9420](v52, -1, -1);
      MEMORY[0x20F2E9420](v45, -1, -1);
    }

    specialized CyclingPowerZonesConfigurationStore.createCyclingPowerZonesConfigurationFromAppleFTP(configuration:completion:)(v42, a4, a5, a6, &unk_2822526F0, &unk_282252718, partial apply for closure #2 in closure #1 in CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:), partial apply for closure #1 in CyclingPowerZonesConfigurationStore.createCyclingPowerZonesConfigurationFromAppleFTP(configuration:completion:));

    outlined consume of Data?(v60, v35);
  }

  else
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_20AEA4000, v31, v32, "[CyclingPowerZones] Fetched CyclingPowerZonesConfiguration from valueStore, no data found, creating automatic configuration", v33, 2u);
      MEMORY[0x20F2E9420](v33, -1, -1);
    }

    v34 = specialized static CyclingPowerZonesConfigurationEditor.createAutomaticEmptyConfiguration()();

    specialized CyclingPowerZonesConfigurationStore.createCyclingPowerZonesConfigurationFromAppleFTP(configuration:completion:)(v34, a4, a5, a6, &unk_282252790, &unk_2822527B8, partial apply for closure #1 in closure #1 in CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:), closure #1 in CyclingPowerZonesConfigurationStore.createCyclingPowerZonesConfigurationFromAppleFTP(configuration:completion:)partial apply);
  }
}

uint64_t closure #1 in closure #1 in CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.core);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136316162;
    if (*(a1 + 16))
    {
      v9 = 0x6C61756E616DLL;
    }

    else
    {
      v9 = 0x6974616D6F747561;
    }

    if (*(a1 + 16))
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE900000000000063;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    v12 = 24;
    if (*(a1 + 16))
    {
      v12 = 32;
    }

    *(v7 + 14) = *(*(a1 + v12) + 16);
    *(v7 + 22) = 2048;
    v13 = *(a1 + 32);
    *(v7 + 24) = *(*(a1 + 24) + 16);
    *(v7 + 32) = 2048;
    *(v7 + 34) = *(v13 + 16);
    *(v7 + 42) = 2080;
    v14 = CyclingPowerZonesConfiguration.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v7 + 44) = v16;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[CyclingPowerZones] Complete %s configuration with FTP: %f (automatic: %f, manual: %f) configuration: %s", v7, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  return a2(a1);
}

uint64_t closure #1 in CyclingPowerZonesConfigurationStore.createCyclingPowerZonesConfigurationFromAppleFTP(configuration:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  if (a1)
  {

    v16 = specialized static CyclingPowerZonesConfigurationEditor.changeAutomaticFTP(to:using:)(v15, a2);
    CyclingPowerZonesConfigurationStore.saveCyclingPowerZonesConfiguration(_:)();
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.core);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v51 = v21;
      *v20 = 136315394;

      v22 = FunctionalThresholdPower.description.getter();
      v24 = v23;

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v51);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;

      v26 = CyclingPowerZonesConfiguration.description.getter();
      v28 = v27;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v51);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_20AEA4000, v18, v19, "[CyclingPowerZones] Most recent Apple FTP is available, updated with appleFTP: %s, configuration: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v21, -1, -1);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    a4(v16);
  }

  else
  {
    static Date.now.getter();
    (*(v8 + 16))(v12, v14, v7);
    v31 = type metadata accessor for FunctionalThresholdPower();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 1;
    v35 = *(v8 + 32);
    v35(v34 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v12, v7);
    v35(v34 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v14, v7);
    v36 = specialized static CyclingPowerZonesConfigurationEditor.changeAutomaticFTP(to:using:)(v34, a2);
    CyclingPowerZonesConfigurationStore.saveCyclingPowerZonesConfiguration(_:)();
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static WOLog.core);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v51 = v41;
      *v40 = 136315394;

      v42 = FunctionalThresholdPower.description.getter();
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v51);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;

      v46 = CyclingPowerZonesConfiguration.description.getter();
      v48 = v47;

      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v51);

      *(v40 + 14) = v49;
      _os_log_impl(&dword_20AEA4000, v38, v39, "[CyclingPowerZones] Most recent Apple FTP is not available, updated with emptyFTP: %s, configuration: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v41, -1, -1);
      MEMORY[0x20F2E9420](v40, -1, -1);
    }

    a4(v36);
  }
}

uint64_t CyclingPowerZonesConfigurationStore.saveCyclingPowerZonesConfiguration(_:)()
{
  v1 = v0;
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.core);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[CyclingPowerZones] Saving CyclingPowerZonesConfiguration to valueStore", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = type metadata accessor for JSONEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for CyclingPowerZonesConfiguration();
  _s11WorkoutCore30CyclingPowerZonesConfigurationCACSEAAWlTm_0(&lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration);
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v11 = v10;
  v12 = v1[5];
  v13 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v12);
  v14 = *(v13 + 32);
  outlined copy of Data._Representation(v9, v11);
  v14(v9, v11, 0xD00000000000001ELL, 0x800000020B4656E0, v12, v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v15, v16))
  {
    outlined consume of Data._Representation(v9, v11);
LABEL_18:
    outlined consume of Data._Representation(v9, v11);
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v18 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v18 != 2)
    {
      v19 = 0;
      goto LABEL_17;
    }

    v21 = *(v9 + 16);
    v20 = *(v9 + 24);
    v22 = __OFSUB__(v20, v21);
    v19 = v20 - v21;
    if (!v22)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v18)
  {
    v19 = BYTE6(v11);
LABEL_17:
    *(result + 4) = v19;
    v23 = result;
    outlined consume of Data._Representation(v9, v11);
    _os_log_impl(&dword_20AEA4000, v15, v16, "[CyclingPowerZones] Saved CyclingPowerZonesConfiguration to valueStore, data: %ld bytes", v23, 0xCu);
    MEMORY[0x20F2E9420](v23, -1, -1);
    goto LABEL_18;
  }

  LODWORD(v19) = HIDWORD(v9) - v9;
  if (!__OFSUB__(HIDWORD(v9), v9))
  {
    v19 = v19;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t CyclingPowerZonesConfigurationStore.removeCyclingPowerZonesConfiguration(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.core);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[CyclingPowerZones] Removing CyclingPowerZonesConfiguration from valueStore", v9, 2u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v10 = v3[5];
  v11 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v10);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(v11 + 40);

  v13(0xD00000000000001ELL, 0x800000020B4656E0, partial apply for closure #1 in CyclingPowerZonesConfigurationStore.removeCyclingPowerZonesConfiguration(completion:), v12, v10, v11);
}

uint64_t closure #1 in CyclingPowerZonesConfigurationStore.removeCyclingPowerZonesConfiguration(completion:)(char a1, id a2, uint64_t (*a3)(void, id))
{
  if (a2)
  {
    v6 = a2;
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.core);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {

      return a3(a1 & 1, a2);
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = a2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_20AEA4000, v9, v10, "[CyclingPowerZones] Cannot remove CyclingPowerZonesConfiguration from valueStore, error: %@", v11, 0xCu);
    _sSo8NSObjectCSgWOhTm_12(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.core);
    v9 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20AEA4000, v9, v16, "[CyclingPowerZones] Removed CyclingPowerZonesConfiguration from valueStore", v17, 2u);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }
  }

  return a3(a1 & 1, a2);
}

uint64_t CyclingPowerZonesConfigurationStore.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 56));
  return v0;
}

uint64_t CyclingPowerZonesConfigurationStore.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t specialized static CyclingPowerZonesConfigurationStore.create(with:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCD570]) initWithCategory:0 domainName:*MEMORY[0x277CCE4C8] healthStore:a1];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for nanoSyncControl != -1)
  {
    swift_once();
  }

  v3 = static WorkoutCoreInjector.nanoSyncControl;
  v4 = type metadata accessor for FunctionalThresholdPowerStore();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v14 = &type metadata for FastSyncHKKeyValueDomain;
  v15 = &protocol witness table for FastSyncHKKeyValueDomain;
  *&v13 = v2;
  *(&v13 + 1) = v3;
  v11 = v4;
  v12 = &protocol witness table for FunctionalThresholdPowerStore;
  *&v10 = v5;
  v6 = v3;
  v7 = a1;
  type metadata accessor for CyclingPowerZonesConfigurationStore();
  v8 = swift_allocObject();
  sub_20AED9F54(&v13, v8 + 16);
  sub_20AED9F54(&v10, v8 + 56);
  return v8;
}

uint64_t specialized CyclingPowerZonesConfigurationStore.createCyclingPowerZonesConfigurationFromAppleFTP(configuration:completion:)(uint64_t a1, NSObject *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v122 = a2;
  v123 = a8;
  v120 = a6;
  v121 = a7;
  v128 = a1;
  v10 = type metadata accessor for Calendar.Component();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for Calendar();
  v15 = *(v127 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v127);
  v18 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v115 - v21;
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v130 = v23;
  v131 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v126 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v118 = &v115 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v124 = &v115 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v129 = &v115 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v115 - v34;
  v36 = swift_allocObject();
  v115 = a3;
  *(v36 + 16) = a3;
  *(v36 + 24) = a4;
  v125 = v36;
  v116 = a4;

  v132 = v35;
  static Date.now.getter();
  v37 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v38 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4605A0);
  v39 = [v37 initWithSuiteName_];

  if (v39)
  {
    v40 = MEMORY[0x20F2E6C00](0xD00000000000002FLL, 0x800000020B465750);
    v41 = [v39 objectForKey_];

    if (v41)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sSo8NSObjectCSgWOhTm_12(v133, &_sypSgMd, &_sypSgMR);
      v42 = MEMORY[0x20F2E6C00](0xD00000000000002FLL, 0x800000020B465750);
      v43 = [v39 integerForKey_];

      LODWORD(v39) = 1;
      goto LABEL_6;
    }

    memset(v133, 0, 32);
    _sSo8NSObjectCSgWOhTm_12(v133, &_sypSgMd, &_sypSgMR);
    LODWORD(v39) = 0;
  }

  v43 = 30;
LABEL_6:
  v44 = v128;
  v45 = v131;
  static Calendar.current.getter();
  (*(v11 + 104))(v14, *MEMORY[0x277CC9968], v10);
  if (__OFSUB__(0, v43))
  {
    __break(1u);
    goto LABEL_27;
  }

  v119 = v43;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v127);
  v46 = v130;
  if ((*(v45 + 48))(v22, 1, v130) != 1)
  {
    (*(v45 + 32))(v129, v22, v46);
    v10 = *(v44 + 24);
    if (*(v10 + 16) > 0.0)
    {
      v47 = OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate;
      v48 = v130;
      v49 = v131;
      v50 = *(v131 + 16);
      v51 = v124;
      v50(v124, v10 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v130);
      v52 = static Date.> infix(_:_:)();
      v127 = *(v49 + 8);
      v127(v51, v48);
      if (v52)
      {
        v123 = v47;
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        __swift_project_value_buffer(v53, static WOLog.core);
        v54 = v118;
        v55 = v130;
        v50(v118, v132, v130);

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();

        LODWORD(v126) = v57;
        if (os_log_type_enabled(v56, v57))
        {
          v122 = v56;
          v117 = v39;
          v58 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          *&v133[0] = v121;
          *v58 = 134219266;
          *(v58 + 4) = v119;
          *(v58 + 12) = 2080;
          v59 = v124;
          v50(v124, v10 + v123, v55);
          v60 = v55;
          if (one-time initialization token for logDateFormatter != -1)
          {
            swift_once();
          }

          v61 = static WOLog.logDateFormatter;
          isa = Date._bridgeToObjectiveC()().super.isa;
          v63 = [v61 stringFromDate_];

          v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = v65;

          v67 = v59;
          v68 = v127;
          v127(v67, v60);
          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v133);

          *(v58 + 14) = v69;
          *(v58 + 22) = 2080;
          v70 = v118;
          v71 = Date._bridgeToObjectiveC()().super.isa;
          v72 = [v61 stringFromDate_];

          v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;

          v68(v70, v60);
          v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v133);

          *(v58 + 24) = v76;
          *(v58 + 32) = 2048;
          *(v58 + 34) = v119;
          *(v58 + 42) = 1024;
          *(v58 + 44) = v117;
          *(v58 + 48) = 2080;
          v77 = FunctionalThresholdPower.description.getter();
          v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v133);

          *(v58 + 50) = v79;
          v80 = v122;
          _os_log_impl(&dword_20AEA4000, v122, v126, "[CyclingPowerZones] Current automatic FTP is available and less then %ld days old (fetchDate: %s, now: %s, daysBack: %ld, defaultsOverride: %{BOOL}d), skip fetching most recent Apple FTP, current: %s", v58, 0x3Au);
          v81 = v121;
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v81, -1, -1);
          MEMORY[0x20F2E9420](v58, -1, -1);

          v44 = v128;
          v55 = v60;
        }

        else
        {

          v127(v54, v55);
        }

        closure #1 in closure #1 in CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(v44, v115);
LABEL_25:
        v113 = v127;
        v127(v129, v55);
        v113(v132, v55);
      }
    }

    v117 = v39;
    if (one-time initialization token for core == -1)
    {
LABEL_17:
      v82 = type metadata accessor for Logger();
      __swift_project_value_buffer(v82, static WOLog.core);
      v83 = v131;
      v84 = *(v131 + 16);
      v85 = v126;
      v55 = v130;
      v84(v126, v132, v130);

      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v86, v87))
      {
        LODWORD(v116) = v87;
        v88 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *&v133[0] = v118;
        *v88 = 67110146;
        *(v88 + 4) = *(v10 + 16) > 0.0;

        *(v88 + 8) = 2080;
        v89 = v124;
        v84(v124, (v10 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate), v55);
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v90 = static WOLog.logDateFormatter;
        v91 = Date._bridgeToObjectiveC()().super.isa;
        v92 = v89;
        v93 = [v90 stringFromDate_];

        v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v96 = v95;

        v97 = *(v131 + 8);
        v97(v92, v55);
        v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, v133);

        *(v88 + 10) = v98;
        *(v88 + 18) = 2080;
        v99 = v126;
        v100 = Date._bridgeToObjectiveC()().super.isa;
        v101 = [v90 stringFromDate_];

        v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v103;

        v127 = v97;
        v97(v99, v55);
        v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, v133);

        *(v88 + 20) = v105;
        *(v88 + 28) = 2048;
        *(v88 + 30) = v119;
        *(v88 + 38) = 1024;
        *(v88 + 40) = v117;
        _os_log_impl(&dword_20AEA4000, v86, v116, "[CyclingPowerZones] Fetching most recent Apple FTP, current automatic FTP is available: %{BOOL}d, (fetchDate: %s, now: %s, daysBack: %ld, defaultsOverride: %{BOOL}d)", v88, 0x2Cu);
        v106 = v118;
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v106, -1, -1);
        MEMORY[0x20F2E9420](v88, -1, -1);

        v44 = v128;
      }

      else
      {

        v127 = *(v83 + 8);
        v127(v85, v55);
      }

      v107 = v122;
      v108 = v122[10].isa;
      v109 = v122[11].isa;
      __swift_project_boxed_opaque_existential_1(&v122[7].isa, v108);
      v110 = swift_allocObject();
      v110[2] = v44;
      v110[3] = v107;
      v111 = v125;
      v110[4] = v121;
      v110[5] = v111;
      v112 = *(v109 + 1);

      v112(v123, v110, v108, v109);

      goto LABEL_25;
    }

LABEL_27:
    swift_once();
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t _s11WorkoutCore30CyclingPowerZonesConfigurationCACSEAAWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CyclingPowerZonesConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t ElevationSample.init(date:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ElevationSample();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for ElevationSample()
{
  result = type metadata singleton initialization cache for ElevationSample;
  if (!type metadata singleton initialization cache for ElevationSample)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ElevationSample.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id ElevationSample.value.getter()
{
  v1 = *(v0 + *(type metadata accessor for ElevationSample() + 20));

  return v1;
}

uint64_t ElevationSample.description.getter()
{
  _StringGuts.grow(_:)(23);
  MEMORY[0x20F2E6D80](0x6F69746176656C65, 0xED00003D296D286ELL);
  v1 = *(v0 + *(type metadata accessor for ElevationSample() + 20));
  v2 = [objc_opt_self() meterUnit];
  [v1 doubleValueForUnit_];

  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x3D6574616420, 0xE600000000000000);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v3);

  return 0;
}

unint64_t type metadata completion function for ElevationSample()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HKQuantity();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for HKQuantity()
{
  result = lazy cache variable for type metadata for HKQuantity;
  if (!lazy cache variable for type metadata for HKQuantity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKQuantity);
  }

  return result;
}

uint64_t CustomDistanceSplitsTracker.alertDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CustomDistanceSplitsTracker.alertDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_alertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return CustomDistanceSplitsTracker.alertDelegate.modify;
}

void CustomDistanceSplitsTracker.alertDelegate.modify(uint64_t a1, char a2)
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

id CustomDistanceSplitsTracker.__allocating_init(activityType:activityMoveMode:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_distanceType] = FIUIDistanceTypeForActivityType();
  *&v5[OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityType] = a1;
  *&v5[OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityMoveMode] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id CustomDistanceSplitsTracker.init(activityType:activityMoveMode:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_distanceType] = FIUIDistanceTypeForActivityType();
  *&v2[OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityType] = a1;
  *&v2[OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityMoveMode] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CustomDistanceSplitsTracker();
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Void __swiftcall CustomDistanceSplitsTracker.processCustomSplitEvent(_:)(HKWorkoutEvent a1)
{
  v3 = [objc_allocWithZone(NLSessionActivitySegmentMarker) init];
  v4 = [(objc_class *)a1.super.isa metadata];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = *MEMORY[0x277D09568];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v6 + 16))
  {

    goto LABEL_12;
  }

  v10 = v1;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  outlined init with copy of Any(*(v6 + 56) + 32 * v11, v40);

  type metadata accessor for HKQuantity();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static WOLog.app);
    v31 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_20AEA4000, v31, v36, "Split does not have either distance or total distance", v37, 2u);
      MEMORY[0x20F2E9420](v37, -1, -1);
    }

    v14 = v3;
    goto LABEL_18;
  }

  v14 = v39;
  v15 = [(objc_class *)a1.super.isa fiui_splitDistance];
  if (!v15)
  {

    goto LABEL_13;
  }

  v16 = v15;
  v17 = objc_opt_self();
  v18 = [v17 meterUnit];
  [v39 doubleValueForUnit_];
  v20 = v19;

  v21 = [v17 meterUnit];
  [v16 doubleValueForUnit_];
  v23 = v22;

  v24 = round(v20 / v23);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v24 < 9.22337204e18)
  {
    v25 = v10;
    [v3 setSegmentIndex_];
    [(objc_class *)a1.super.isa fiui_splitActiveDuration];
    [v3 setDuration_];
    v26 = [(objc_class *)a1.super.isa fiui_splitDistance];
    [v3 setDistance_];

    v27 = *(v10 + OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityType);
    v28 = *(v25 + OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityMoveMode);
    v29 = type metadata accessor for WorkoutAlertSegment();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR___WOSegmentAlert_segmentMarker] = v3;
    *&v30[OBJC_IVAR___WOSegmentAlert_activityType] = v27;
    *&v30[OBJC_IVAR___WOSegmentAlert_activityMoveMode] = v28;
    v30[OBJC_IVAR___WOSegmentAlert_gpsAvailable] = 1;
    v30[OBJC_IVAR___WOSegmentAlert_shouldHideTime] = 0;
    v38.receiver = v30;
    v38.super_class = v29;
    v31 = v3;
    v32 = v27;
    v33 = objc_msgSendSuper2(&v38, sel_init);
    [v33 setType_];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong alertSource:v25 didTriggerAlert:v33];

      swift_unknownObjectRelease();
    }

    else
    {
    }

LABEL_18:

    return;
  }

LABEL_23:
  __break(1u);
}