id one-time initialization function for abstract()
{
  type metadata accessor for CallState();
  result = CallState.__allocating_init(name:parent:eventHandler:)(0x7463617274736241, 0xE800000000000000, 0, implicit closure #1 in variable initialization expression of static CallState.abstract, 0);
  static CallState.abstract = result;
  return result;
}

{
  type metadata accessor for State();
  result = State.__allocating_init(name:parent:eventHandler:)(0x7463617274736241, 0xE800000000000000, 0, implicit closure #1 in variable initialization expression of static CallState.abstract, 0);
  static State.abstract = result;
  return result;
}

{
  type metadata accessor for SharedState();
  result = SharedState.__allocating_init(name:parent:eventHandler:)(0x7463617274736241, 0xE800000000000000, 0, implicit closure #1 in variable initialization expression of static CallState.abstract, 0);
  static SharedState.abstract = result;
  return result;
}

uint64_t *CallState.abstract.unsafeMutableAddressor()
{
  if (one-time initialization token for abstract != -1)
  {
    swift_once();
  }

  return &static CallState.abstract;
}

uint64_t *State.abstract.unsafeMutableAddressor()
{
  if (one-time initialization token for abstract != -1)
  {
    swift_once();
  }

  return &static State.abstract;
}

uint64_t *SharedState.abstract.unsafeMutableAddressor()
{
  if (one-time initialization token for abstract != -1)
  {
    swift_once();
  }

  return &static SharedState.abstract;
}

id static CallState.abstract.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id one-time initialization function for passive()
{
  type metadata accessor for SharedState();
  v0 = *SharedState.mirroring.unsafeMutableAddressor();
  v1 = v0;
  result = SharedState.__allocating_init(name:parent:eventHandler:)(0x65766973736150, 0xE700000000000000, v0, implicit closure #1 in variable initialization expression of static SharedState.passive, 0);
  static SharedState.passive = result;
  return result;
}

uint64_t implicit closure #1 in variable initialization expression of static SharedState.passive(uint64_t a1)
{
  if (a1 == 6 || a1 == 4)
  {
    return 1;
  }

  if (a1 != 3)
  {
    return 0;
  }

  v1 = *SharedState.preparingToServe.unsafeMutableAddressor();
  v2 = v1;
  return v1;
}

uint64_t *SharedState.passive.unsafeMutableAddressor()
{
  if (one-time initialization token for passive != -1)
  {
    swift_once();
  }

  return &static SharedState.passive;
}

id static SharedState.passive.getter()
{
  if (one-time initialization token for passive != -1)
  {
    swift_once();
  }

  v1 = static SharedState.passive;

  return v1;
}

id one-time initialization function for resting()
{
  type metadata accessor for State();
  v0 = *State.attending.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x676E6974736552, 0xE700000000000000, v0, implicit closure #1 in variable initialization expression of static State.resting, 0);
  static State.resting = result;
  return result;
}

void *implicit closure #1 in variable initialization expression of static State.resting(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) != 0xC)
  {
    return 0;
  }

  v1 = *State.available.unsafeMutableAddressor();
  v2 = v1;
  return v1;
}

uint64_t *State.resting.unsafeMutableAddressor()
{
  if (one-time initialization token for resting != -1)
  {
    swift_once();
  }

  return &static State.resting;
}

id static State.resting.getter()
{
  if (one-time initialization token for resting != -1)
  {
    swift_once();
  }

  v1 = static State.resting;

  return v1;
}

uint64_t SharedClient.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for SharedClient.delegate : SharedClient@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SharedClient.delegate : SharedClient(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x78);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

void (*SharedClient.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____SRSTSharedClient_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SharedClient.delegate.modify;
}

void SharedClient.delegate.modify(uint64_t a1, char a2)
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

uint64_t SharedClient.currentState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t SharedClient.currentState.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t key path getter for SharedClient.currentState : SharedClient@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SharedClient.currentState : SharedClient(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*SharedClient.currentState.modify(uint64_t *a1))()
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
  return SharedClient.currentState.modify;
}

uint64_t key path setter for SharedClient.$currentState : SharedClient(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateCSg_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xA8))(v8);
}

uint64_t SharedClient.$currentState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateCSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates11SharedStateCSgGMd, &_s7Combine9PublishedVy10SiriStates11SharedStateCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharedClient.$currentState.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateCSg_GMR);
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

  v10 = OBJC_IVAR____SRSTSharedClient__currentState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates11SharedStateCSgGMd, &_s7Combine9PublishedVy10SiriStates11SharedStateCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SharedClient.$currentState.modify;
}

uint64_t key path getter for SharedClient.mostRecentEvent : SharedClient@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t SharedClient.mostRecentEvent.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t SharedClient.mostRecentEvent.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*SharedClient.mostRecentEvent.modify(uint64_t *a1))()
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
  return SharedClient.mostRecentEvent.modify;
}

void SharedClient.currentState.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for SharedClient.$mostRecentEvent : SharedClient(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates11SharedEventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedEventOSg_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xD8))(v8);
}

uint64_t SharedClient.$currentState.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t SharedClient.$mostRecentEvent.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates11SharedEventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedEventOSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates11SharedEventOSgGMd, &_s7Combine9PublishedVy10SiriStates11SharedEventOSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharedClient.$mostRecentEvent.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates11SharedEventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedEventOSg_GMR);
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

  v10 = OBJC_IVAR____SRSTSharedClient__mostRecentEvent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates11SharedEventOSgGMd, &_s7Combine9PublishedVy10SiriStates11SharedEventOSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SharedClient.$mostRecentEvent.modify;
}

void SharedClient.$currentState.modify(uint64_t a1, char a2)
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

uint64_t SharedClient.mostRecentEventName.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();
  if (v2)
  {
    return 0;
  }

  else
  {
    return SharedEvent.name.getter(v1);
  }
}

void SharedClient.dispatchEvent(_:)(uint64_t a1)
{
  type metadata accessor for NotificationCenterHelper();
  v3 = a1;
  v2 = lazy protocol witness table accessor for type SharedEvent and conformance SharedEvent();
  static NotificationCenterHelper.dispatch<A>(_:)(&v3, &type metadata for SharedEvent, v2);
}

id SharedClient.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____SRSTSharedClient_stopped) & 1) == 0)
  {
    v8 = type metadata accessor for SharedClient();
    lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedClient and conformance SharedClient, type metadata accessor for SharedClient);
    static Clientele.remove<A>(_:)(v1, v8);
    v9 = Logger.framework.unsafeMutableAddressor();
    (*(v3 + 16))(v7, v9, v2);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_269189000, v10, v11, "Deinit called for SharedClient", v12, 2u);
      MEMORY[0x26D632230](v12, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    type metadata accessor for OS_dispatch_queue();
    *(swift_allocObject() + 16) = v1;
    v13 = v1;
    static OS_dispatch_queue.executeOnMain<A>(_:)(partial apply for closure #1 in SharedClient.deinit);
  }

  v14 = type metadata accessor for SharedClient();
  v16.receiver = v1;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_dealloc);
}

void @objc closure #1 in variable initialization expression of static SharedClient.handleStateTransititionNotification(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in variable initialization expression of static SharedClient.handleStateTransititionNotification(a2, a3);
}

uint64_t static SharedClient.handleStateTransititionNotification.setter(uint64_t (*a1)())
{
  result = swift_beginAccess();
  static SharedClient.handleStateTransititionNotification[0] = a1;
  return result;
}

uint64_t key path getter for static SharedClient.handleStateTransititionNotification : SharedClient.Type@<X0>(uint64_t (**a1)()@<X8>)
{
  result = swift_beginAccess();
  *a1 = static SharedClient.handleStateTransititionNotification[0];
  return result;
}

uint64_t key path setter for static SharedClient.handleStateTransititionNotification : SharedClient.Type(uint64_t (**a1)())
{
  v1 = *a1;
  result = swift_beginAccess();
  static SharedClient.handleStateTransititionNotification[0] = v1;
  return result;
}

void @objc closure #1 in variable initialization expression of static SharedClient.handleEventNotification(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in variable initialization expression of static SharedClient.handleEventNotification(a2, a3);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharedEvent and conformance SharedEvent()
{
  result = lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent;
  if (!lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent;
  if (!lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent;
  if (!lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent;
  if (!lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent);
  }

  return result;
}

uint64_t type metadata accessor for SharedClient()
{
  result = type metadata singleton initialization cache for SharedClient;
  if (!type metadata singleton initialization cache for SharedClient)
  {
    return swift_getSingletonMetadata();
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

uint64_t sub_26918E12C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t static SharedClient.handleEventNotification.setter(uint64_t (*a1)())
{
  result = swift_beginAccess();
  static SharedClient.handleEventNotification = a1;
  return result;
}

uint64_t key path getter for static SharedClient.handleEventNotification : SharedClient.Type@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static SharedClient.handleEventNotification;
  return result;
}

uint64_t key path setter for static SharedClient.handleEventNotification : SharedClient.Type(uint64_t (**a1)())
{
  v1 = *a1;
  result = swift_beginAccess();
  static SharedClient.handleEventNotification = v1;
  return result;
}

id SharedClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SharedClient.init()()
{
  v66 = type metadata accessor for Logger();
  v65 = *(v66 - 8);
  v1 = *(v65 + 64);
  MEMORY[0x28223BE20](v66, v2);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates11SharedEventOSgGMd, &_s7Combine9PublishedVy10SiriStates11SharedEventOSgGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates11SharedStateCSgGMd, &_s7Combine9PublishedVy10SiriStates11SharedStateCSgGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v62 - v14;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____SRSTSharedClient__currentState;
  v74 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates11SharedStateCSgMd, &_s10SiriStates11SharedStateCSgMR);
  Published.init(initialValue:)();
  (*(v11 + 32))(&v0[v16], v15, v10);
  v17 = OBJC_IVAR____SRSTSharedClient__mostRecentEvent;
  v74 = 0;
  LOBYTE(v75) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates11SharedEventOSgMd, &_s10SiriStates11SharedEventOSgMR);
  Published.init(initialValue:)();
  (*(v5 + 32))(&v0[v17], v9, v4);
  v0[OBJC_IVAR____SRSTSharedClient_stopped] = 0;
  v18 = type metadata accessor for SharedClient();
  v73.receiver = v0;
  v73.super_class = v18;
  v19 = objc_msgSendSuper2(&v73, sel_init);
  lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedClient and conformance SharedClient, type metadata accessor for SharedClient);
  v63 = v19;
  v20 = static Clientele.add<A>(_:)(v63, v18);
  v21 = SharedState.allStates.unsafeMutableAddressor();
  v22 = *v21;
  if ((*v21 & 0xC000000000000001) != 0)
  {
    if (v22 < 0)
    {
      v23 = *v21;
    }

    v24 = *v21;

    __CocoaSet.makeIterator()();
    type metadata accessor for SharedState();
    lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedState and conformance NSObject, type metadata accessor for SharedState);
    Set.Iterator.init(_cocoa:)();
    v22 = v74;
    v25 = v75;
    v26 = v76;
    v27 = v77;
    v28 = v78;
  }

  else
  {
    v29 = -1 << *(v22 + 32);
    v25 = v22 + 56;
    v26 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v28 = v31 & *(v22 + 56);
    v32 = *v21;

    v27 = 0;
  }

  v67 = v26;
  v68 = v20;
  v33 = (v26 + 64) >> 6;
  if (v22 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v34 = v27;
    v35 = v28;
    v36 = v27;
    if (!v28)
    {
      break;
    }

LABEL_14:
    v37 = (v35 - 1) & v35;
    v38 = *(*(v22 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
    if (!v38)
    {
LABEL_20:
      outlined consume of Set<SharedState>.Iterator._Variant();
      v67 = static SharedEvent.allCases.getter();
      v45 = v67[2];
      v46 = v68;
      if (v45)
      {
        type metadata accessor for NotificationCenterHelper();
        v47 = v67 + 4;
        v48 = darwinNotificationCenter.unsafeMutableAddressor();
        swift_beginAccess();
        v49 = lazy protocol witness table accessor for type SharedEvent and conformance SharedEvent();
        do
        {
          v50 = *v47++;
          value = v48->value;
          v52 = static SharedClient.handleEventNotification;
          v70 = &type metadata for SharedEvent;
          v71 = v49;
          v69[0] = v50;
          v53 = value;
          v54 = static NotificationCenterHelper.notifcationName(for:)(v69);
          __swift_destroy_boxed_opaque_existential_1Tm(v69);
          CFNotificationCenterAddObserver(v53, v46, v52, v54, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

          --v45;
        }

        while (v45);
      }

      v55 = Logger.framework.unsafeMutableAddressor();
      v56 = v65;
      v57 = v64;
      v58 = v66;
      (*(v65 + 16))(v64, v55, v66);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_269189000, v59, v60, "SharedClient added Darwin observers", v61, 2u);
        MEMORY[0x26D632230](v61, -1, -1);
      }

      (*(v56 + 8))(v57, v58);
      return;
    }

    while (1)
    {
      v40 = darwinNotificationCenter.unsafeMutableAddressor()->value;
      swift_beginAccess();
      v41 = static SharedClient.handleStateTransititionNotification[0];
      type metadata accessor for NotificationCenterHelper();
      v70 = type metadata accessor for SharedState();
      v71 = lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedState and conformance SharedState, type metadata accessor for SharedState);
      v69[0] = v38;
      v42 = v40;
      v43 = v38;
      v44 = static NotificationCenterHelper.notifcationName(for:)(v69);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      CFNotificationCenterAddObserver(v42, v68, v41, v44, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      v27 = v36;
      v28 = v37;
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      v39 = __CocoaSet.Iterator.next()();
      if (v39)
      {
        v72 = v39;
        type metadata accessor for SharedState();
        swift_dynamicCast();
        v38 = v69[0];
        v36 = v27;
        v37 = v28;
        if (v69[0])
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v36 >= v33)
    {
      goto LABEL_20;
    }

    v35 = *(v25 + 8 * v36);
    ++v34;
    if (v35)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall SharedClient.stopClient()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____SRSTSharedClient_stopped;
  if ((v1[OBJC_IVAR____SRSTSharedClient_stopped] & 1) == 0)
  {
    v9 = Logger.framework.unsafeMutableAddressor();
    (*(v3 + 16))(v7, v9, v2);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_269189000, v10, v11, "#SiriStates stopping client", v12, 2u);
      MEMORY[0x26D632230](v12, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    v1[v8] = 1;
    v13 = type metadata accessor for SharedClient();
    lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedClient and conformance SharedClient, type metadata accessor for SharedClient);
    static Clientele.remove<A>(_:)(v1, v13);
    type metadata accessor for OS_dispatch_queue();
    *(swift_allocObject() + 16) = v1;
    v14 = v1;
    static OS_dispatch_queue.executeOnMain<A>(_:)(partial apply for closure #1 in SharedClient.stopClient());
  }
}

uint64_t protocol witness for ClientProtocol.delegate.getter in conformance SharedClient@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.delegate.modify in conformance SharedClient(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x80))();
  return protocol witness for ClientProtocol.delegate.modify in conformance SharedClient;
}

uint64_t protocol witness for ClientProtocol.currentState.getter in conformance SharedClient@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.currentState.modify in conformance SharedClient(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x98))();
  return protocol witness for ClientProtocol.currentState.modify in conformance SharedClient;
}

uint64_t protocol witness for ClientProtocol.mostRecentEvent.getter in conformance SharedClient@<X0>(uint64_t a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0xB8))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.mostRecentEvent.modify in conformance SharedClient(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))();
  return protocol witness for ClientProtocol.delegate.modify in conformance SharedClient;
}

void protocol witness for ClientProtocol.delegate.modify in conformance SharedClient(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

id protocol witness for ClientProtocol.init() in conformance SharedClient()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t lazy protocol witness table accessor for type SharedClient and conformance SharedClient(unint64_t *a1, void (*a2)(uint64_t))
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

void partial apply for closure #1 in SharedClient.stopClient()()
{
  v1 = *(v0 + 16);
  type metadata accessor for NotificationCenterHelper();
  static NotificationCenterHelper.removeEveryObserver(_:)(v1);
}

void type metadata completion function for SharedClient()
{
  type metadata accessor for Published<SharedState?>(319, &lazy cache variable for type metadata for Published<SharedState?>, &_s10SiriStates11SharedStateCSgMd, &_s10SiriStates11SharedStateCSgMR);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<SharedState?>(319, &lazy cache variable for type metadata for Published<SharedEvent?>, &_s10SiriStates11SharedEventOSgMd, &_s10SiriStates11SharedEventOSgMR);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for Published<SharedState?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
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
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
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

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
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

void specialized closure #1 in variable initialization expression of static SharedClient.handleStateTransititionNotification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v46 - v12;
  type metadata accessor for NotificationCenterHelper();
  v14 = type metadata accessor for SharedState();
  v15 = lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedState and conformance SharedState, type metadata accessor for SharedState);
  static NotificationCenterHelper.state<A>(from:)(a2, v14, v15, &v53);
  v16 = v53;
  if (v53)
  {
    v52 = a1;
    v17 = Logger.framework.unsafeMutableAddressor();
    v50 = v5[2];
    v50(v13, v17, v4);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    v21 = os_log_type_enabled(v19, v20);
    v51 = v18;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v48 = v5 + 2;
      v23 = v22;
      v24 = swift_slowAlloc();
      v49 = v5;
      v25 = v24;
      v53 = v24;
      *v23 = 136315138;
      v47 = v17;
      v26 = v4;
      v27 = v10;
      v28 = *&v18[OBJC_IVAR____SRSTSharedState_name];
      v29 = *&v18[OBJC_IVAR____SRSTSharedState_name + 8];

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v53);

      *(v23 + 4) = v30;
      v10 = v27;
      v4 = v26;
      v17 = v47;
      _os_log_impl(&dword_269189000, v19, v20, "SharedClient received valid state transition: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v31 = v25;
      v5 = v49;
      MEMORY[0x26D632230](v31, -1, -1);
      MEMORY[0x26D632230](v23, -1, -1);
    }

    v32 = v5[1];
    v32(v13, v4);
    v33 = type metadata accessor for SharedClient();
    lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedClient and conformance SharedClient, type metadata accessor for SharedClient);
    v34 = static Clientele.contains<A>(_:)(v52, v33);
    if (v34)
    {
      v35 = v34;
      v36 = MEMORY[0x277D85000];
      v37 = *((*MEMORY[0x277D85000] & *v34) + 0x90);
      v38 = v51;
      v39 = v37(v16);
      v40 = (*((*v36 & *v35) + 0x70))(v39);
      if (v40)
      {
        [v40 stateMachineWithClient:v35 didTransitionToState:v38];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v50(v10, v17, v4);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = v10;
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_269189000, v41, v42, "Observer for darwin callback handler not found", v44, 2u);
        MEMORY[0x26D632230](v44, -1, -1);

        v45 = v43;
      }

      else
      {

        v45 = v10;
      }

      v32(v45, v4);
    }
  }
}

void specialized closure #1 in variable initialization expression of static SharedClient.handleEventNotification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v41 - v12;
  type metadata accessor for NotificationCenterHelper();
  v14 = lazy protocol witness table accessor for type SharedEvent and conformance SharedEvent();
  static NotificationCenterHelper.event<A>(from:)(a2, &type metadata for SharedEvent, v14, &v47);
  if ((v48 & 1) == 0)
  {
    v46 = a1;
    v15 = v47;
    v16 = Logger.framework.unsafeMutableAddressor();
    v44 = v5[2];
    v44(v13, v16, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    v19 = os_log_type_enabled(v17, v18);
    v45 = v15;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v43 = v5;
      v21 = v20;
      v22 = swift_slowAlloc();
      v42 = v16;
      v23 = v22;
      v47 = v22;
      *v21 = 136315138;
      v24 = SharedEvent.name.getter(v15);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v47);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_269189000, v17, v18, "SharedClient received valid event reception: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v27 = v23;
      v16 = v42;
      MEMORY[0x26D632230](v27, -1, -1);
      v28 = v21;
      v5 = v43;
      MEMORY[0x26D632230](v28, -1, -1);
    }

    v29 = v5[1];
    v29(v13, v4);
    v30 = type metadata accessor for SharedClient();
    lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedClient and conformance SharedClient, type metadata accessor for SharedClient);
    v31 = static Clientele.contains<A>(_:)(v46, v30);
    if (v31)
    {
      v32 = v31;
      v33 = MEMORY[0x277D85000];
      v34 = v45;
      v35 = (*((*MEMORY[0x277D85000] & *v31) + 0xC0))(v45, 0);
      v36 = (*((*v33 & *v32) + 0x70))(v35);
      if (v36)
      {
        v37 = v36;
        if ([v36 respondsToSelector_])
        {
          [v37 stateMachineWithClient:v32 didReceiveEvent:v34];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v44(v10, v16, v4);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_269189000, v38, v39, "Observer for darwin callback handler not found", v40, 2u);
        MEMORY[0x26D632230](v40, -1, -1);
      }

      v29(v10, v4);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id one-time initialization function for ongoingCall()
{
  type metadata accessor for CallState();
  v0 = *CallState.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = CallState.__allocating_init(name:parent:eventHandler:)(0x43676E696F676E4FLL, 0xEB000000006C6C61, v0, implicit closure #1 in variable initialization expression of static CallState.ongoingCall, 0);
  static CallState.ongoingCall = result;
  return result;
}

uint64_t implicit closure #1 in variable initialization expression of static CallState.ongoingCall(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        goto LABEL_16;
      }
    }

    else if (a1)
    {
      if (a1 != 1)
      {
        return v1;
      }

      goto LABEL_16;
    }

    return 1;
  }

  if (a1 > 7)
  {
    if (a1 == 11)
    {
      goto LABEL_16;
    }

    if (a1 != 10)
    {
      if (a1 == 8)
      {
        v2 = CallState.onHoldCall.unsafeMutableAddressor();
        goto LABEL_17;
      }

      return v1;
    }

    return 1;
  }

  if ((a1 - 4) < 2)
  {
    v2 = CallState.noCall.unsafeMutableAddressor();
LABEL_17:
    v1 = *v2;
    v3 = *v2;
    return v1;
  }

  if (a1 == 6)
  {
LABEL_16:
    v2 = CallState.micMutedCall.unsafeMutableAddressor();
    goto LABEL_17;
  }

  return v1;
}

uint64_t static CallState.handleForOngoingCallState(event:)(uint64_t a1)
{
  v1 = 1;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return v1;
      }

      goto LABEL_14;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        goto LABEL_14;
      }

      return 0;
    }
  }

  else
  {
    if (a1 <= 7)
    {
      if ((a1 - 4) < 2)
      {
        v2 = CallState.noCall.unsafeMutableAddressor();
LABEL_15:
        v1 = *v2;
        v3 = *v2;
        return v1;
      }

      if (a1 != 6)
      {
        return 0;
      }

LABEL_14:
      v2 = CallState.micMutedCall.unsafeMutableAddressor();
      goto LABEL_15;
    }

    if (a1 == 8)
    {
      v2 = CallState.onHoldCall.unsafeMutableAddressor();
      goto LABEL_15;
    }

    if (a1 != 10)
    {
      if (a1 == 11)
      {
        goto LABEL_14;
      }

      return 0;
    }
  }

  return v1;
}

uint64_t *CallState.ongoingCall.unsafeMutableAddressor()
{
  if (one-time initialization token for ongoingCall != -1)
  {
    swift_once();
  }

  return &static CallState.ongoingCall;
}

id static CallState.ongoingCall.getter()
{
  if (one-time initialization token for ongoingCall != -1)
  {
    swift_once();
  }

  v1 = static CallState.ongoingCall;

  return v1;
}

id one-time initialization function for responding()
{
  type metadata accessor for State();
  v0 = *State.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x69646E6F70736552, 0xEA0000000000676ELL, v0, implicit closure #1 in variable initialization expression of static State.responding, 0);
  static State.responding = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static State.responding(uint64_t a1)
{
  if (a1 == 13)
  {
    v1 = State.available.unsafeMutableAddressor();
  }

  else if (a1 == 7)
  {
    v1 = State.postResponse.unsafeMutableAddressor();
  }

  else
  {
    if (a1)
    {
      return 0;
    }

    v1 = State.analyzing.unsafeMutableAddressor();
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

uint64_t *State.responding.unsafeMutableAddressor()
{
  if (one-time initialization token for responding != -1)
  {
    swift_once();
  }

  return &static State.responding;
}

id static State.responding.getter()
{
  if (one-time initialization token for responding != -1)
  {
    swift_once();
  }

  v1 = static State.responding;

  return v1;
}

__CFNotificationCenter *one-time initialization function for darwinNotificationCenter()
{
  result = CFNotificationCenterGetDarwinNotifyCenter();
  darwinNotificationCenter.value = result;
  return result;
}

CFNotificationCenterRef_optional *darwinNotificationCenter.unsafeMutableAddressor()
{
  if (one-time initialization token for darwinNotificationCenter != -1)
  {
    swift_once();
  }

  return &darwinNotificationCenter;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SharedEvent()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D631B90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SharedEvent()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D631B90](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SharedEvent@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized SharedEvent.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t specialized SharedEvent.init(rawValue:)(unint64_t result)
{
  if (result > 9)
  {
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SharedEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SharedEvent and conformance SharedEvent();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type SharedEvent and conformance SharedEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [SharedEvent] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SharedEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SharedEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SiriStates11SharedEventOGMd, &_sSay10SiriStates11SharedEventOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SharedEvent] and conformance [A]);
  }

  return result;
}

id one-time initialization function for micMutedCall()
{
  type metadata accessor for CallState();
  v0 = *CallState.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = CallState.__allocating_init(name:parent:eventHandler:)(0x646574754D63694DLL, 0xEC0000006C6C6143, v0, implicit closure #1 in variable initialization expression of static CallState.micMutedCall, 0);
  static CallState.micMutedCall = result;
  return result;
}

uint64_t implicit closure #1 in variable initialization expression of static CallState.micMutedCall(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!a1)
      {
        goto LABEL_16;
      }

      if (a1 != 1)
      {
        return v1;
      }
    }

    return 1;
  }

  if (a1 > 7)
  {
    if (a1 != 11)
    {
      if (a1 == 10)
      {
        goto LABEL_16;
      }

      if (a1 == 8)
      {
        v2 = CallState.onHoldCall.unsafeMutableAddressor();
        goto LABEL_17;
      }

      return v1;
    }

    return 1;
  }

  if ((a1 - 4) < 2)
  {
    v2 = CallState.noCall.unsafeMutableAddressor();
LABEL_17:
    v1 = *v2;
    v3 = *v2;
    return v1;
  }

  if (a1 == 7)
  {
LABEL_16:
    v2 = CallState.ongoingCall.unsafeMutableAddressor();
    goto LABEL_17;
  }

  return v1;
}

uint64_t static CallState.handleForMicMutedCallState(event:)(uint64_t a1)
{
  v1 = 1;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        return v1;
      }

      goto LABEL_16;
    }

    if (!a1)
    {
LABEL_16:
      v2 = CallState.ongoingCall.unsafeMutableAddressor();
      goto LABEL_17;
    }

    if (a1 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (a1 <= 7)
    {
      if ((a1 - 4) < 2)
      {
        v2 = CallState.noCall.unsafeMutableAddressor();
LABEL_17:
        v1 = *v2;
        v3 = *v2;
        return v1;
      }

      if (a1 == 7)
      {
        goto LABEL_16;
      }

      return 0;
    }

    if (a1 == 8)
    {
      v2 = CallState.onHoldCall.unsafeMutableAddressor();
      goto LABEL_17;
    }

    if (a1 == 10)
    {
      goto LABEL_16;
    }

    if (a1 != 11)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t *CallState.micMutedCall.unsafeMutableAddressor()
{
  if (one-time initialization token for micMutedCall != -1)
  {
    swift_once();
  }

  return &static CallState.micMutedCall;
}

id static CallState.micMutedCall.getter()
{
  if (one-time initialization token for micMutedCall != -1)
  {
    swift_once();
  }

  v1 = static CallState.micMutedCall;

  return v1;
}

id one-time initialization function for noCall()
{
  type metadata accessor for CallState();
  v0 = *CallState.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = CallState.__allocating_init(name:parent:eventHandler:)(0x6C6C61436F4ELL, 0xE600000000000000, v0, implicit closure #1 in variable initialization expression of static CallState.noCall, 0);
  static CallState.noCall = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static CallState.noCall(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return v1;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a1 == 3)
  {
LABEL_8:
    v2 = CallState.micMutedCall.unsafeMutableAddressor();
    goto LABEL_9;
  }

  if (a1 == 2)
  {
LABEL_7:
    v2 = CallState.ongoingCall.unsafeMutableAddressor();
LABEL_9:
    v1 = *v2;
    v3 = *v2;
  }

  return v1;
}

id static CallState.handleForNoCallState(event:)(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return v1;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a1 == 3)
  {
LABEL_8:
    v2 = CallState.micMutedCall.unsafeMutableAddressor();
    goto LABEL_9;
  }

  if (a1 == 2)
  {
LABEL_7:
    v2 = CallState.ongoingCall.unsafeMutableAddressor();
LABEL_9:
    v1 = *v2;
    v3 = *v2;
  }

  return v1;
}

uint64_t *CallState.noCall.unsafeMutableAddressor()
{
  if (one-time initialization token for noCall != -1)
  {
    swift_once();
  }

  return &static CallState.noCall;
}

id static CallState.noCall.getter()
{
  if (one-time initialization token for noCall != -1)
  {
    swift_once();
  }

  v1 = static CallState.noCall;

  return v1;
}

id one-time initialization function for mirroring()
{
  type metadata accessor for SharedState();
  v0 = *SharedState.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = SharedState.__allocating_init(name:parent:eventHandler:)(0x6E69726F7272694DLL, 0xE900000000000067, v0, implicit closure #1 in variable initialization expression of static SharedState.mirroring, 0);
  static SharedState.mirroring = result;
  return result;
}

uint64_t implicit closure #1 in variable initialization expression of static SharedState.mirroring(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1;
    case 5:
      v1 = SharedState.serving.unsafeMutableAddressor();
      break;
    case 1:
      v1 = SharedState.unshared.unsafeMutableAddressor();
      break;
    default:
      return 0;
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

uint64_t *SharedState.mirroring.unsafeMutableAddressor()
{
  if (one-time initialization token for mirroring != -1)
  {
    swift_once();
  }

  return &static SharedState.mirroring;
}

id static SharedState.mirroring.getter()
{
  if (one-time initialization token for mirroring != -1)
  {
    swift_once();
  }

  v1 = static SharedState.mirroring;

  return v1;
}

id one-time initialization function for available()
{
  type metadata accessor for State();
  v0 = *State.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x6C62616C69617641, 0xE900000000000065, v0, implicit closure #1 in variable initialization expression of static State.available, 0);
  static State.available = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static State.available(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 4)
    {
      return 0;
    }

    v1 = State.disabled.unsafeMutableAddressor();
  }

  else
  {
    v1 = State.analyzing.unsafeMutableAddressor();
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

uint64_t *State.available.unsafeMutableAddressor()
{
  if (one-time initialization token for available != -1)
  {
    swift_once();
  }

  return &static State.available;
}

id static State.available.getter()
{
  if (one-time initialization token for available != -1)
  {
    swift_once();
  }

  v1 = static State.available;

  return v1;
}

id one-time initialization function for onHoldCall()
{
  type metadata accessor for CallState();
  v0 = *CallState.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = CallState.__allocating_init(name:parent:eventHandler:)(0x6143646C6F486E4FLL, 0xEA00000000006C6CLL, v0, implicit closure #1 in variable initialization expression of static CallState.onHoldCall, 0);
  static CallState.onHoldCall = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static CallState.onHoldCall(unint64_t a1)
{
  v1 = 0;
  if (a1 <= 0xB)
  {
    if (((1 << a1) & 0x605) != 0)
    {
      v2 = CallState.ongoingCall.unsafeMutableAddressor();
      goto LABEL_8;
    }

    if (((1 << a1) & 0x80A) != 0)
    {
      v2 = CallState.micMutedCall.unsafeMutableAddressor();
LABEL_8:
      v1 = *v2;
      v3 = *v2;
      return v1;
    }

    if (((1 << a1) & 0x30) != 0)
    {
      v2 = CallState.noCall.unsafeMutableAddressor();
      goto LABEL_8;
    }
  }

  return v1;
}

id static CallState.handleForOnHoldCallState(event:)(unint64_t a1)
{
  v1 = 0;
  if (a1 <= 0xB)
  {
    if (((1 << a1) & 0x605) != 0)
    {
      v2 = CallState.ongoingCall.unsafeMutableAddressor();
      goto LABEL_8;
    }

    if (((1 << a1) & 0x80A) != 0)
    {
      v2 = CallState.micMutedCall.unsafeMutableAddressor();
LABEL_8:
      v1 = *v2;
      v3 = *v2;
      return v1;
    }

    if (((1 << a1) & 0x30) != 0)
    {
      v2 = CallState.noCall.unsafeMutableAddressor();
      goto LABEL_8;
    }
  }

  return v1;
}

uint64_t *CallState.onHoldCall.unsafeMutableAddressor()
{
  if (one-time initialization token for onHoldCall != -1)
  {
    swift_once();
  }

  return &static CallState.onHoldCall;
}

id static CallState.onHoldCall.getter()
{
  if (one-time initialization token for onHoldCall != -1)
  {
    swift_once();
  }

  v1 = static CallState.onHoldCall;

  return v1;
}

uint64_t CallEvent.name.getter(uint64_t a1)
{
  result = 0x6C61437472617473;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return 0xD000000000000011;
    case 2:
      v3 = 1852403562;
      goto LABEL_16;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 0x6C6143657661656CLL;
    case 5:
      return 0x6C6C6143646E65;
    case 6:
      v3 = 1702131053;
      goto LABEL_16;
    case 7:
      return 0x61436574756D6E75;
    case 8:
      v3 = 1684828008;
LABEL_16:
      result = v3 | 0x6C6C614300000000;
      break;
    case 9:
      result = 0x6143646C6F686E75;
      break;
    case 10:
      result = 0x6143686374697773;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 1953069157;
      break;
    case 13:
      result = 0x7265746E65;
      break;
    case 14:
      result = 0x6C616974696E69;
      break;
    default:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      JUMPOUT(0x269191BD0);
  }

  return result;
}

uint64_t protocol witness for EventProtocol.init(name:) in conformance CallEvent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = specialized CallEvent.init(name:)(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

unint64_t Event.name.getter(uint64_t a1)
{
  result = 0x72656767697274;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 2:
      result = 0x6F69746E65747461;
      break;
    case 3:
      result = 0x656C62616E65;
      break;
    case 4:
      result = 0x656C6261736964;
      break;
    case 5:
      result = 0x4372656767697274;
      break;
    case 6:
      result = 0x655274696D627573;
      break;
    case 7:
      result = 0x6449656D6F636562;
      break;
    case 8:
      result = 0x636F72506C696166;
      break;
    case 9:
      result = 0x52746E6573657270;
      break;
    case 10:
      result = 0x71655274726F6261;
      break;
    case 11:
      result = 0x5474756F656D6974;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x7373696D736964;
      break;
    case 14:
      result = 1953069157;
      break;
    case 15:
      result = 0x7265746E65;
      break;
    case 16:
      result = 0x6C616974696E69;
      break;
    default:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      JUMPOUT(0x269191ED8);
  }

  return result;
}

uint64_t protocol witness for EventProtocol.init(name:) in conformance Event@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = specialized Event.init(name:)(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t SharedEvent.name.getter(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000015;
      }

      if (a1 == 3)
      {
        return 0xD000000000000012;
      }

      return 0xD000000000000016;
    }

    if (!a1)
    {
      return 0xD000000000000017;
    }

    if (a1 == 1)
    {
      return 0xD000000000000019;
    }

LABEL_22:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 1953069157;
      case 8:
        return 0x7265746E65;
      case 9:
        return 0x6C616974696E69;
    }

    goto LABEL_22;
  }

  if (a1 == 5)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t protocol witness for EventProtocol.init(name:) in conformance SharedEvent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = specialized SharedEvent.init(name:)(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t specialized CallEvent.init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61437472617473 && a2 == 0xE90000000000006CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002691AC140 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6C61436E696F6ALL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002691AC120 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6143657661656CLL && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6C6143646E65 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6C61436574756DLL && a2 == 0xEB0000000063694DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x61436574756D6E75 && a2 == 0xED000063694D6C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C6C6143646C6F68 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6143646C6F686E75 && a2 == 0xEA00000000006C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6143686374697773 && a2 == 0xEB00000000736C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002691AC100 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 1953069157 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7265746E65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6C616974696E69 && a2 == 0xE700000000000000)
  {

    return 14;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t specialized Event.init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746E65747461 && a2 == 0xED00006E6961476ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746E65747461 && a2 == 0xED000073736F4C6ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C62616E65 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C6261736964 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4372656767697274 && a2 == 0xED000074696D6D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x655274696D627573 && a2 == 0xED00007473657571 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6449656D6F636562 && a2 == 0xEA0000000000656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x636F72506C696166 && a2 == 0xEE00676E69737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x52746E6573657270 && a2 == 0xEF65736E6F707365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x71655274726F6261 && a2 == 0xEC00000074736575 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x5474756F656D6974 && a2 == 0xEB000000006E7275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002691AC160 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7373696D736964 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 1953069157 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7265746E65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6C616974696E69 && a2 == 0xE700000000000000)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t specialized SharedEvent.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000002691AC240 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002691AC220 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002691AC200 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002691AC1E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002691AC1C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002691AC1A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002691AC180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1953069157 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7265746E65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C616974696E69 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t instantiation function for generic protocol witness table for CallEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CallEvent and conformance CallEvent();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type CallEvent and conformance CallEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CallEvent and conformance CallEvent()
{
  result = lazy protocol witness table cache variable for type CallEvent and conformance CallEvent;
  if (!lazy protocol witness table cache variable for type CallEvent and conformance CallEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallEvent and conformance CallEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallEvent and conformance CallEvent;
  if (!lazy protocol witness table cache variable for type CallEvent and conformance CallEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallEvent and conformance CallEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallEvent and conformance CallEvent;
  if (!lazy protocol witness table cache variable for type CallEvent and conformance CallEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallEvent and conformance CallEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallEvent and conformance CallEvent;
  if (!lazy protocol witness table cache variable for type CallEvent and conformance CallEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallEvent and conformance CallEvent);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Event(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Event and conformance Event();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Event and conformance Event();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Event and conformance Event()
{
  result = lazy protocol witness table cache variable for type Event and conformance Event;
  if (!lazy protocol witness table cache variable for type Event and conformance Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event and conformance Event);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Event and conformance Event;
  if (!lazy protocol witness table cache variable for type Event and conformance Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event and conformance Event);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Event and conformance Event;
  if (!lazy protocol witness table cache variable for type Event and conformance Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event and conformance Event);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Event and conformance Event;
  if (!lazy protocol witness table cache variable for type Event and conformance Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event and conformance Event);
  }

  return result;
}

id one-time initialization function for postResponse()
{
  type metadata accessor for State();
  v0 = *State.attending.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x7365522D74736F50, 0xED000065736E6F70, v0, implicit closure #1 in variable initialization expression of static State.postResponse, 0);
  static State.postResponse = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static State.postResponse(uint64_t a1)
{
  switch(a1)
  {
    case 9:
      v1 = State.responding.unsafeMutableAddressor();
      break;
    case 13:
      v1 = State.available.unsafeMutableAddressor();
      break;
    case 11:
      v1 = State.resting.unsafeMutableAddressor();
      break;
    default:
      return 0;
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

uint64_t *State.postResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for postResponse != -1)
  {
    swift_once();
  }

  return &static State.postResponse;
}

id static State.postResponse.getter()
{
  if (one-time initialization token for postResponse != -1)
  {
    swift_once();
  }

  v1 = static State.postResponse;

  return v1;
}

uint64_t (*CallState.parent.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____SRSTCallState_parent;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return CallState.parent.modify;
}

uint64_t CallState.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____SRSTCallState_name);
  v2 = *(v0 + OBJC_IVAR____SRSTCallState_name + 8);

  return v1;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id protocol witness for ProxyProtocol.state.getter in conformance CallStateProxy@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____SRSTCallStateProxy_state);
  *a1 = v2;
  return v2;
}

uint64_t @objc CallState.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of Any?(v10);
  return v8 & 1;
}

uint64_t CallState.handle(event:)()
{
  v1 = *(v0 + OBJC_IVAR____SRSTCallState_eventHandler);
  v2 = *(v0 + OBJC_IVAR____SRSTCallState_eventHandler + 8);
  return v1();
}

uint64_t protocol witness for StateProtocol.name.getter in conformance CallState()
{
  v1 = (*v0 + OBJC_IVAR____SRSTCallState_name);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t protocol witness for StateProtocol.handle(event:) in conformance CallState@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2 + OBJC_IVAR____SRSTCallState_eventHandler;
  v5 = *(v4 + 8);
  result = (*v4)(*a1);
  *a2 = result;
  return result;
}

uint64_t (*State.parent.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____SRSTState_parent;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return CallState.parent.modify;
}

uint64_t State.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____SRSTState_name);
  v2 = *(v0 + OBJC_IVAR____SRSTState_name + 8);

  return v1;
}

uint64_t CallStateProxy.init(from:)(uint64_t *a1, uint64_t (*a2)(void), void *a3, uint64_t a4)
{
  v19[6] = a4;
  v8 = v4;
  ObjectType = swift_getObjectType();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    swift_deallocPartialClassInstance();
    return v11;
  }

  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v17 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v14 = v13;
  v15 = a2();
  if (v15)
  {
    v16 = v15;

    *&v8[*a3] = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v18.receiver = v8;
    v18.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v18, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v11;
  }

  _StringGuts.grow(_:)(67);
  MEMORY[0x26D6318B0](0xD00000000000001BLL, 0x80000002691AC2C0);
  MEMORY[0x26D6318B0](v17, v14);
  MEMORY[0x26D6318B0](0xD000000000000026, 0x80000002691AC2E0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id StateProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for ProxyProtocol.state.getter in conformance StateProxy@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____SRSTStateProxy_state);
  *a1 = v2;
  return v2;
}

uint64_t State.handle(event:)()
{
  v1 = *(v0 + OBJC_IVAR____SRSTState_eventHandler);
  v2 = *(v0 + OBJC_IVAR____SRSTState_eventHandler + 8);
  return v1();
}

uint64_t protocol witness for StateProtocol.name.getter in conformance State()
{
  v1 = (*v0 + OBJC_IVAR____SRSTState_name);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t protocol witness for StateProtocol.handle(event:) in conformance State@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2 + OBJC_IVAR____SRSTState_eventHandler;
  v5 = *(v4 + 8);
  result = (*v4)(*a1);
  *a2 = result;
  return result;
}

uint64_t key path getter for CallState.parent : CallState@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t key path setter for CallState.parent : CallState(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t CallState.parent.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void CallState.parent.setter(void *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t (*SharedState.parent.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____SRSTSharedState_parent;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SharedState.parent.modify;
}

void CallState.parent.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id @objc CallState.name.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = MEMORY[0x26D631880](v4, v5);

  return v6;
}

uint64_t SharedState.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____SRSTSharedState_name);
  v2 = *(v0 + OBJC_IVAR____SRSTSharedState_name + 8);

  return v1;
}

id CallState.__allocating_init(name:parent:eventHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, void *a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = *a6;
  swift_unknownObjectWeakInit();
  v19 = &v17[*a7];
  *v19 = a1;
  *(v19 + 1) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v20 = &v17[*a8];
  *v20 = a4;
  *(v20 + 1) = a5;
  v23.receiver = v17;
  v23.super_class = v8;
  v21 = objc_msgSendSuper2(&v23, sel_init);

  return v21;
}

id CallState.init(name:parent:eventHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, void *a8)
{
  ObjectType = swift_getObjectType();
  v18 = *a6;
  swift_unknownObjectWeakInit();
  v19 = &v8[*a7];
  *v19 = a1;
  *(v19 + 1) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v20 = &v8[*a8];
  *v20 = a4;
  *(v20 + 1) = a5;
  v23.receiver = v8;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, sel_init);

  return v21;
}

uint64_t CallState.isEqual(_:)(uint64_t a1, void *a2)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v11);
  if (!v12)
  {
    outlined destroy of Any?(v11);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    return v8 & 1;
  }

  v5 = &v10[*a2];
  v6 = (v2 + *a2);
  if (*v5 == *v6 && *(v5 + 1) == v6[1])
  {

    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t @objc CallState.hash.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v5 = *v3;
  v6 = v3[1];
  lazy protocol witness table accessor for type String and conformance String();
  return StringProtocol.hash.getter();
}

uint64_t CallState.hash.getter(void *a1)
{
  v2 = (v1 + *a1);
  v4 = *v2;
  v5 = v2[1];
  lazy protocol witness table accessor for type String and conformance String();
  return StringProtocol.hash.getter();
}

id CallState.makeProxy()(uint64_t (*a1)(void), void *a2)
{
  v4 = a1();
  v5 = objc_allocWithZone(v4);
  *&v5[*a2] = v2;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id CallStateProxy.__allocating_init(_:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id @objc CallState.makeProxy()(void *a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v6 = a3();
  v7 = objc_allocWithZone(v6);
  *&v7[*a4] = a1;
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

uint64_t @objc CallState.__ivar_destroyer(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = *(a1 + *a3 + 8);

  MEMORY[0x26D632270](a1 + *a4);
  v9 = *(a1 + *a5 + 8);
}

id CallStateProxy.init(_:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[*a2] = a1;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id @objc CallStateProxy.init(_:)(char *a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&a1[*a4] = a3;
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v8 = a3;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t CallStateProxy.encode(to:)(void *a1, void *a2, void *a3)
{
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v7 = (*(v3 + *a2) + *a3);
  v8 = *v7;
  v9 = v7[1];
  __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);

  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

id CallState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance CallStateProxy@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = objc_allocWithZone(v3);
  result = a2(a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance CallStateProxy(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = *v5;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v10 = (*(v8 + *a4) + *a5);
  v11 = *v10;
  v12 = v10[1];
  __swift_mutable_project_boxed_opaque_existential_1(v14, v14[3]);

  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

id protocol witness for ProxyProtocol.state.getter in conformance SharedStateProxy@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____SRSTSharedStateProxy_state);
  *a1 = v2;
  return v2;
}

uint64_t CallStateProxy.isEqual(_:)(uint64_t a1, uint64_t *a2)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v11);
  if (!v12)
  {
    outlined destroy of Any?(v11);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  type metadata accessor for NSObject();
  v5 = *a2;
  v6 = *(v2 + *a2);
  v7 = *&v10[v5];
  v8 = static NSObject.== infix(_:_:)();

  return v8 & 1;
}

uint64_t @objc CallStateProxy.hash.getter(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = (*(a1 + *a3) + *a4);
  v6 = *v4;
  v7 = v4[1];
  lazy protocol witness table accessor for type String and conformance String();
  return StringProtocol.hash.getter();
}

uint64_t CallStateProxy.hash.getter(void *a1, void *a2)
{
  v3 = (*(v2 + *a1) + *a2);
  v5 = *v3;
  v6 = v3[1];
  lazy protocol witness table accessor for type String and conformance String();
  return StringProtocol.hash.getter();
}

uint64_t SharedState.handle(event:)()
{
  v1 = *(v0 + OBJC_IVAR____SRSTSharedState_eventHandler);
  v2 = *(v0 + OBJC_IVAR____SRSTSharedState_eventHandler + 8);
  return v1();
}

uint64_t protocol witness for StateProtocol.parent.getter in conformance CallState@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t protocol witness for StateProtocol.name.getter in conformance SharedState()
{
  v1 = (*v0 + OBJC_IVAR____SRSTSharedState_name);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t protocol witness for StateProtocol.handle(event:) in conformance SharedState@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2 + OBJC_IVAR____SRSTSharedState_eventHandler;
  v5 = *(v4 + 8);
  result = (*v4)(*a1);
  *a2 = result;
  return result;
}

id protocol witness for StateProtocol.makeProxy() in conformance CallState@<X0>(uint64_t (*a1)(void)@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = a1();
  v8 = objc_allocWithZone(v7);
  *&v8[*a2] = v6;
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = v6;
  result = objc_msgSendSuper2(&v11, sel_init);
  *a3 = result;
  return result;
}

void specialized static CallState.named(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *CallState.allStates.unsafeMutableAddressor();
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CallState();
    lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type CallState and conformance NSObject, type metadata accessor for CallState);
    Set.Iterator.init(_cocoa:)();
    v6 = v21;
    v5 = v22;
    v8 = v23;
    v7 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    v6 = v4;
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  v13 = (v8 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v7;
  v15 = v9;
  v16 = v7;
  if (v9)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      do
      {
        v19 = *&v18[OBJC_IVAR____SRSTCallState_name] == a1 && *&v18[OBJC_IVAR____SRSTCallState_name + 8] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v7 = v16;
        v9 = v17;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        type metadata accessor for CallState();
        swift_dynamicCast();
        v18 = v20;
        v16 = v7;
        v17 = v9;
      }

      while (v20);
    }

LABEL_23:
    outlined consume of Set<SharedState>.Iterator._Variant();
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_23;
      }

      v15 = *(v5 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
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

void specialized static State.named(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *State.allStates.unsafeMutableAddressor();
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for State();
    lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type State and conformance NSObject, type metadata accessor for State);
    Set.Iterator.init(_cocoa:)();
    v6 = v21;
    v5 = v22;
    v8 = v23;
    v7 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    v6 = v4;
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  v13 = (v8 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v7;
  v15 = v9;
  v16 = v7;
  if (v9)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      do
      {
        v19 = *&v18[OBJC_IVAR____SRSTState_name] == a1 && *&v18[OBJC_IVAR____SRSTState_name + 8] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v7 = v16;
        v9 = v17;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        type metadata accessor for State();
        swift_dynamicCast();
        v18 = v20;
        v16 = v7;
        v17 = v9;
      }

      while (v20);
    }

LABEL_23:
    outlined consume of Set<SharedState>.Iterator._Variant();
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_23;
      }

      v15 = *(v5 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void specialized static SharedState.named(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *SharedState.allStates.unsafeMutableAddressor();
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for SharedState();
    lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type SharedState and conformance NSObject, type metadata accessor for SharedState);
    Set.Iterator.init(_cocoa:)();
    v6 = v21;
    v5 = v22;
    v8 = v23;
    v7 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    v6 = v4;
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  v13 = (v8 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v7;
  v15 = v9;
  v16 = v7;
  if (v9)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      do
      {
        v19 = *&v18[OBJC_IVAR____SRSTSharedState_name] == a1 && *&v18[OBJC_IVAR____SRSTSharedState_name + 8] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v7 = v16;
        v9 = v17;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        type metadata accessor for SharedState();
        swift_dynamicCast();
        v18 = v20;
        v16 = v7;
        v17 = v9;
      }

      while (v20);
    }

LABEL_23:
    outlined consume of Set<SharedState>.Iterator._Variant();
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_23;
      }

      v15 = *(v5 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t instantiation function for generic protocol witness table for CallStateProxy(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type CallStateProxy and conformance CallStateProxy, type metadata accessor for CallStateProxy);
  result = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type CallStateProxy and conformance CallStateProxy, type metadata accessor for CallStateProxy);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CallState(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type CallState and conformance NSObject, type metadata accessor for CallState);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for StateProxy(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type StateProxy and conformance StateProxy, type metadata accessor for StateProxy);
  result = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type StateProxy and conformance StateProxy, type metadata accessor for StateProxy);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for State(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type State and conformance NSObject, type metadata accessor for State);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for SharedStateProxy(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type SharedStateProxy and conformance SharedStateProxy, type metadata accessor for SharedStateProxy);
  result = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type SharedStateProxy and conformance SharedStateProxy, type metadata accessor for SharedStateProxy);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for SharedState(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type SharedState and conformance NSObject, type metadata accessor for SharedState);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CallState and conformance CallState(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id one-time initialization function for preparingToServe()
{
  type metadata accessor for SharedState();
  v0 = *SharedState.mirroring.unsafeMutableAddressor();
  v1 = v0;
  result = SharedState.__allocating_init(name:parent:eventHandler:)(0xD000000000000010, 0x80000002691AC580, v0, implicit closure #1 in variable initialization expression of static SharedState.preparingToServe, 0);
  static SharedState.preparingToServe = result;
  return result;
}

uint64_t implicit closure #1 in variable initialization expression of static SharedState.preparingToServe(uint64_t a1)
{
  if (a1 == 3)
  {
    return 1;
  }

  if (a1 != 4 && a1 != 6)
  {
    return 0;
  }

  v1 = *SharedState.passive.unsafeMutableAddressor();
  v2 = v1;
  return v1;
}

uint64_t *SharedState.preparingToServe.unsafeMutableAddressor()
{
  if (one-time initialization token for preparingToServe != -1)
  {
    swift_once();
  }

  return &static SharedState.preparingToServe;
}

id static SharedState.preparingToServe.getter()
{
  if (one-time initialization token for preparingToServe != -1)
  {
    swift_once();
  }

  v1 = static SharedState.preparingToServe;

  return v1;
}

id one-time initialization function for unshared()
{
  type metadata accessor for SharedState();
  v0 = *SharedState.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = SharedState.__allocating_init(name:parent:eventHandler:)(0x6465726168736E55, 0xE800000000000000, v0, implicit closure #1 in variable initialization expression of static SharedState.unshared, 0);
  static SharedState.unshared = result;
  return result;
}

void *implicit closure #1 in variable initialization expression of static SharedState.unshared(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v1 = *SharedState.passive.unsafeMutableAddressor();
  v2 = v1;
  return v1;
}

uint64_t *SharedState.unshared.unsafeMutableAddressor()
{
  if (one-time initialization token for unshared != -1)
  {
    swift_once();
  }

  return &static SharedState.unshared;
}

id static SharedState.unshared.getter()
{
  if (one-time initialization token for unshared != -1)
  {
    swift_once();
  }

  v1 = static SharedState.unshared;

  return v1;
}

id one-time initialization function for listening()
{
  type metadata accessor for State();
  v0 = *State.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x6E696E657473694CLL, 0xE900000000000067, v0, variable initialization expression of SharedClient.delegate, 0);
  static State.listening = result;
  return result;
}

uint64_t *State.listening.unsafeMutableAddressor()
{
  if (one-time initialization token for listening != -1)
  {
    swift_once();
  }

  return &static State.listening;
}

id static State.listening.getter()
{
  if (one-time initialization token for listening != -1)
  {
    swift_once();
  }

  v1 = static State.listening;

  return v1;
}

uint64_t sub_2691968FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id CallServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t CallServer.init()()
{
  ObjectType = swift_getObjectType();
  v1 = *InstrumentationManager.sharedLogger.unsafeMutableAddressor();
  v2 = *(ObjectType + 128);

  v4 = v2(v3);
  swift_deallocPartialClassInstance();
  return v4;
}

char *CallServer.init(instrumentationManager:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateC_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateC_GMR);
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v30 = &v29 - v6;
  *&v1[OBJC_IVAR____SRSTCallServer_stateMachineObserver] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates12StateMachineCyAA04CallC0CGMd, &_s10SiriStates12StateMachineCyAA04CallC0CGMR);

  v33 = a1;
  *&v1[OBJC_IVAR____SRSTCallServer_stateMachine] = StateMachine<>.init(instrumentationManager:)(v7);
  v8 = type metadata accessor for CallServer();
  v37.receiver = v1;
  v37.super_class = v8;
  v9 = objc_msgSendSuper2(&v37, sel_init);
  v34 = static CallEvent.allCases.getter();
  v10 = v34[2];
  if (v10)
  {
    v11 = v34 + 4;
    v12 = darwinNotificationCenter.unsafeMutableAddressor();
    do
    {
      v13 = *v11++;
      v14 = v12->value;
      v15 = eventDispatchNotificationNamePrefix.unsafeMutableAddressor();
      countAndFlagsBits = v15->_countAndFlagsBits;
      object = v15->_object;

      v18 = CallEvent.name.getter(v13);
      v20 = v19;
      v35 = countAndFlagsBits;
      v36 = object;

      MEMORY[0x26D6318B0](v18, v20);

      v21 = MEMORY[0x26D631880](v35, v36);

      CFNotificationCenterAddObserver(v14, v9, @objc closure #1 in CallServer.init(instrumentationManager:), v21, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      --v10;
    }

    while (v10);
  }

  v22 = *(**&v9[OBJC_IVAR____SRSTCallServer_stateMachine] + 160);

  v24 = v30;
  v22(v23);

  lazy protocol witness table accessor for type Published<CallState>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<CallState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateC_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateC_GMR);
  v25 = v32;
  v26 = Publisher<>.sink(receiveValue:)();

  (*(v31 + 8))(v24, v25);
  v27 = *&v9[OBJC_IVAR____SRSTCallServer_stateMachineObserver];
  *&v9[OBJC_IVAR____SRSTCallServer_stateMachineObserver] = v26;

  return v9;
}

void @objc closure #1 in CallServer.init(instrumentationManager:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in CallServer.init(instrumentationManager:)(a2, a3, "CallServer received valid event dispatch: %s", "CallServer posting darwin notification for event reception", &OBJC_IVAR____SRSTCallServer_stateMachine, CallEvent.init(name:));
}

uint64_t Server.init()()
{
  ObjectType = swift_getObjectType();
  v1 = *InstrumentationManager.sharedLogger.unsafeMutableAddressor();
  v2 = *(ObjectType + 128);

  v4 = v2(v3);
  swift_deallocPartialClassInstance();
  return v4;
}

char *Server.init(instrumentationManager:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates5StateC_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5StateC_GMR);
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v30 = &v29 - v6;
  *&v1[OBJC_IVAR____SRSTServer_stateMachineObserver] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates12StateMachineCyAA0C0CGMd, &_s10SiriStates12StateMachineCyAA0C0CGMR);

  v33 = a1;
  *&v1[OBJC_IVAR____SRSTServer_stateMachine] = StateMachine<>.init(instrumentationManager:)(v7);
  v8 = type metadata accessor for Server();
  v37.receiver = v1;
  v37.super_class = v8;
  v9 = objc_msgSendSuper2(&v37, sel_init);
  v34 = static Event.allCases.getter();
  v10 = v34[2];
  if (v10)
  {
    v11 = v34 + 4;
    v12 = darwinNotificationCenter.unsafeMutableAddressor();
    do
    {
      v13 = *v11++;
      v14 = v12->value;
      v15 = eventDispatchNotificationNamePrefix.unsafeMutableAddressor();
      countAndFlagsBits = v15->_countAndFlagsBits;
      object = v15->_object;

      v18 = Event.name.getter(v13);
      v20 = v19;
      v35 = countAndFlagsBits;
      v36 = object;

      MEMORY[0x26D6318B0](v18, v20);

      v21 = MEMORY[0x26D631880](v35, v36);

      CFNotificationCenterAddObserver(v14, v9, @objc closure #1 in Server.init(instrumentationManager:), v21, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      --v10;
    }

    while (v10);
  }

  v22 = *(**&v9[OBJC_IVAR____SRSTServer_stateMachine] + 160);

  v24 = v30;
  v22(v23);

  lazy protocol witness table accessor for type Published<CallState>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy10SiriStates5StateC_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5StateC_GMR);
  v25 = v32;
  v26 = Publisher<>.sink(receiveValue:)();

  (*(v31 + 8))(v24, v25);
  v27 = *&v9[OBJC_IVAR____SRSTServer_stateMachineObserver];
  *&v9[OBJC_IVAR____SRSTServer_stateMachineObserver] = v26;

  return v9;
}

void @objc closure #1 in Server.init(instrumentationManager:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in CallServer.init(instrumentationManager:)(a2, a3, "Server received valid event dispatch: %s", "Server posting darwin notification for event reception", &OBJC_IVAR____SRSTServer_stateMachine, Event.init(name:));
}

id @objc CallServer.currentState.getter(char *a1, uint64_t a2, void *a3)
{
  v3 = *(**&a1[*a3] + 136);
  v4 = a1;
  v3(&v7);

  v5 = v7;

  return v5;
}

id CallServer.__deallocating_deinit(const char *a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Logger.framework.unsafeMutableAddressor();
  (*(v10 + 16))(v14, v15, v9);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a3;
    v19 = a4;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_269189000, v16, v17, a1, v20, 2u);
    v21 = v20;
    a4 = v19;
    a3 = v18;
    MEMORY[0x26D632230](v21, -1, -1);
  }

  (*(v10 + 8))(v14, v9);
  type metadata accessor for OS_dispatch_queue();
  *(swift_allocObject() + 16) = v8;
  v22 = v8;
  static OS_dispatch_queue.executeOnMain<A>(_:)(a3);

  v24 = a4(v23);
  v26.receiver = v22;
  v26.super_class = v24;
  return objc_msgSendSuper2(&v26, sel_dealloc);
}

uint64_t @objc CallServer.__ivar_destroyer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + *a3);

  v7 = *(a1 + *a4);
}

uint64_t SharedServer.init()()
{
  ObjectType = swift_getObjectType();
  v1 = *InstrumentationManager.sharedLogger.unsafeMutableAddressor();
  v2 = *(ObjectType + 128);

  v4 = v2(v3);
  swift_deallocPartialClassInstance();
  return v4;
}

char *SharedServer.init(instrumentationManager:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateC_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateC_GMR);
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v30 = &v29 - v6;
  *&v1[OBJC_IVAR____SRSTSharedServer_stateMachineObserver] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates12StateMachineCyAA06SharedC0CGMd, &_s10SiriStates12StateMachineCyAA06SharedC0CGMR);

  v33 = a1;
  *&v1[OBJC_IVAR____SRSTSharedServer_stateMachine] = StateMachine<>.init(instrumentationManager:)(v7);
  v8 = type metadata accessor for SharedServer();
  v37.receiver = v1;
  v37.super_class = v8;
  v9 = objc_msgSendSuper2(&v37, sel_init);
  v34 = static SharedEvent.allCases.getter();
  v10 = v34[2];
  if (v10)
  {
    v11 = v34 + 4;
    v12 = darwinNotificationCenter.unsafeMutableAddressor();
    do
    {
      v13 = *v11++;
      v14 = v12->value;
      v15 = eventDispatchNotificationNamePrefix.unsafeMutableAddressor();
      countAndFlagsBits = v15->_countAndFlagsBits;
      object = v15->_object;

      v18 = SharedEvent.name.getter(v13);
      v20 = v19;
      v35 = countAndFlagsBits;
      v36 = object;

      MEMORY[0x26D6318B0](v18, v20);

      v21 = MEMORY[0x26D631880](v35, v36);

      CFNotificationCenterAddObserver(v14, v9, @objc closure #1 in SharedServer.init(instrumentationManager:), v21, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      --v10;
    }

    while (v10);
  }

  v22 = *(**&v9[OBJC_IVAR____SRSTSharedServer_stateMachine] + 160);

  v24 = v30;
  v22(v23);

  lazy protocol witness table accessor for type Published<CallState>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<SharedState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateC_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateC_GMR);
  v25 = v32;
  v26 = Publisher<>.sink(receiveValue:)();

  (*(v31 + 8))(v24, v25);
  v27 = *&v9[OBJC_IVAR____SRSTSharedServer_stateMachineObserver];
  *&v9[OBJC_IVAR____SRSTSharedServer_stateMachineObserver] = v26;

  return v9;
}

void @objc closure #1 in SharedServer.init(instrumentationManager:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in CallServer.init(instrumentationManager:)(a2, a3, "SharedServer received valid event dispatch: %s", "SharedServer posting darwin notification for event reception", &OBJC_IVAR____SRSTSharedServer_stateMachine, SharedEvent.init(name:));
}

void closure #2 in CallServer.init(instrumentationManager:)(void **a1, void *a2, const char *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = Logger.framework.unsafeMutableAddressor();
  (*(v7 + 16))(v11, v13, v6);
  v14 = v12;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    *v18 = 136315138;
    v20 = &v14[*a2];
    v35 = v6;
    v36 = v19;
    v21 = v14;
    v22 = a2;
    v24 = *v20;
    v23 = v20[1];

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, &v36);
    a2 = v22;
    v14 = v21;

    *(v18 + 4) = v25;
    _os_log_impl(&dword_269189000, v15, v16, v34, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x26D632230](v19, -1, -1);
    MEMORY[0x26D632230](v18, -1, -1);

    (*(v7 + 8))(v11, v35);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v26 = darwinNotificationCenter.unsafeMutableAddressor()->value;
  v27 = stateTransitionNotificationNamePrefix.unsafeMutableAddressor();
  countAndFlagsBits = v27->_countAndFlagsBits;
  object = v27->_object;
  v30 = &v14[*a2];
  v31 = *v30;
  v32 = *(v30 + 1);
  v36 = countAndFlagsBits;
  v37 = object;

  MEMORY[0x26D6318B0](v31, v32);
  v33 = MEMORY[0x26D631880](v36, v37);

  CFNotificationCenterPostNotification(v26, v33, 0, 0, 1u);
}

uint64_t lazy protocol witness table accessor for type Published<CallState>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void specialized closure #1 in CallServer.init(instrumentationManager:)(void *a1, uint64_t a2, const char *a3, const char *a4, void *a5, uint64_t (*a6)(uint64_t, unint64_t))
{
  v67 = a3;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v61 - v23;
  if (!a2)
  {
    v51 = unknownNotificationName.unsafeMutableAddressor();
    countAndFlagsBits = v51->_countAndFlagsBits;
    object = v51->_object;

LABEL_11:
    v55 = Logger.framework.unsafeMutableAddressor();
    (*(v12 + 16))(v17, v55, v11);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v73 = v59;
      *v58 = 136315138;
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v73);

      *(v58 + 4) = v60;
      _os_log_impl(&dword_269189000, v56, v57, "Event dispatch darwin notification was malformed: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x26D632230](v59, -1, -1);
      MEMORY[0x26D632230](v58, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v17, v11);
    return;
  }

  v64 = a4;
  v66 = a5;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = a1;
  v73 = v25;
  v74 = v26;
  v27 = eventDispatchNotificationNamePrefix.unsafeMutableAddressor();
  v28 = v27->_object;
  v71 = v27->_countAndFlagsBits;
  v72 = v28;
  v69 = 0;
  v70 = 0xE000000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v31 = v30;

  if (!v68)
  {

    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v54;
    goto LABEL_11;
  }

  v65 = v29;
  v63 = a6;
  v32 = Logger.framework.unsafeMutableAddressor();
  v61 = *(v12 + 16);
  v62 = v32;
  v61(v24);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v73 = v36;
    *v35 = 136315138;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v31, &v73);
    _os_log_impl(&dword_269189000, v33, v34, v67, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x26D632230](v36, -1, -1);
    MEMORY[0x26D632230](v35, -1, -1);
  }

  v37 = *(v12 + 8);
  v37(v24, v11);
  v38 = v68;
  (v61)(v21, v62, v11);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_269189000, v39, v40, v64, v41, 2u);
    MEMORY[0x26D632230](v41, -1, -1);
  }

  v37(v21, v11);
  v42 = darwinNotificationCenter.unsafeMutableAddressor()->value;
  v43 = eventReceivedNotificationNamePrefix.unsafeMutableAddressor();
  v45 = v43->_countAndFlagsBits;
  v44 = v43->_object;
  v73 = v45;
  v74 = v44;

  v46 = v65;
  MEMORY[0x26D6318B0](v65, v31);
  v47 = MEMORY[0x26D631880](v73, v74);

  CFNotificationCenterPostNotification(v42, v47, 0, 0, 1u);

  v48 = *&v38[*v66];
  v49 = v63(v46, v31);
  if (v50)
  {
    __break(1u);
  }

  else
  {
    v73 = v49;
    (*(*v48 + 216))(&v73);
  }
}

id one-time initialization function for disabled()
{
  type metadata accessor for State();
  v0 = *State.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x64656C6261736944, 0xE800000000000000, v0, implicit closure #1 in variable initialization expression of static State.disabled, 0);
  static State.disabled = result;
  return result;
}

void *implicit closure #1 in variable initialization expression of static State.disabled(uint64_t a1)
{
  if (a1 != 3)
  {
    return 0;
  }

  v1 = *State.available.unsafeMutableAddressor();
  v2 = v1;
  return v1;
}

uint64_t *State.disabled.unsafeMutableAddressor()
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  return &static State.disabled;
}

id static State.disabled.getter()
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v1 = static State.disabled;

  return v1;
}

id one-time initialization function for analyzing()
{
  type metadata accessor for State();
  v0 = *State.listening.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x6E697A796C616E41, 0xE900000000000067, v0, implicit closure #1 in variable initialization expression of static State.analyzing, 0);
  static State.analyzing = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static State.analyzing(uint64_t a1)
{
  v1 = 0;
  if (a1 > 9)
  {
    if (a1 == 10 || a1 == 13)
    {
      v2 = State.available.unsafeMutableAddressor();
      goto LABEL_9;
    }
  }

  else
  {
    if (a1 == 5)
    {
      v2 = State.understanding.unsafeMutableAddressor();
      goto LABEL_9;
    }

    if (a1 == 7)
    {
      v2 = State.postResponse.unsafeMutableAddressor();
LABEL_9:
      v1 = *v2;
      v3 = *v2;
    }
  }

  return v1;
}

uint64_t *State.analyzing.unsafeMutableAddressor()
{
  if (one-time initialization token for analyzing != -1)
  {
    swift_once();
  }

  return &static State.analyzing;
}

id static State.analyzing.getter()
{
  if (one-time initialization token for analyzing != -1)
  {
    swift_once();
  }

  v1 = static State.analyzing;

  return v1;
}

uint64_t one-time initialization function for allStates()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2691AB590;
  v1 = State.abstract.unsafeMutableAddressor();
  v2 = *v1;
  *(inited + 32) = *v1;
  v3 = v2;
  v4 = State.disabled.unsafeMutableAddressor();
  v5 = *v4;
  *(inited + 40) = *v4;
  v6 = v5;
  v7 = State.available.unsafeMutableAddressor();
  v8 = *v7;
  *(inited + 48) = *v7;
  v9 = v8;
  v10 = State.listening.unsafeMutableAddressor();
  v11 = *v10;
  *(inited + 56) = *v10;
  v12 = v11;
  v13 = State.analyzing.unsafeMutableAddressor();
  v14 = *v13;
  *(inited + 64) = *v13;
  v15 = v14;
  v16 = State.understanding.unsafeMutableAddressor();
  v17 = *v16;
  *(inited + 72) = *v16;
  v18 = v17;
  v19 = State.processing.unsafeMutableAddressor();
  v20 = *v19;
  *(inited + 80) = *v19;
  v21 = v20;
  v22 = State.responding.unsafeMutableAddressor();
  v23 = *v22;
  *(inited + 88) = *v22;
  v24 = v23;
  v25 = State.attending.unsafeMutableAddressor();
  v26 = *v25;
  *(inited + 96) = *v25;
  v27 = v26;
  v28 = State.postResponse.unsafeMutableAddressor();
  v29 = *v28;
  *(inited + 104) = *v28;
  v30 = v29;
  v31 = State.resting.unsafeMutableAddressor();
  v32 = *v31;
  *(inited + 112) = *v31;
  v33 = v32;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SiriStates5StateC_Tt0g5Tf4g_n(inited);
  v35 = v34;
  swift_setDeallocating();
  v36 = *(inited + 16);
  result = swift_arrayDestroy();
  static State.allStates = v35;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2691AB5B0;
  v1 = SharedState.abstract.unsafeMutableAddressor();
  v2 = *v1;
  *(inited + 32) = *v1;
  v3 = v2;
  v4 = SharedState.unshared.unsafeMutableAddressor();
  v5 = *v4;
  *(inited + 40) = *v4;
  v6 = v5;
  v7 = SharedState.mirroring.unsafeMutableAddressor();
  v8 = *v7;
  *(inited + 48) = *v7;
  v9 = v8;
  v10 = SharedState.passive.unsafeMutableAddressor();
  v11 = *v10;
  *(inited + 56) = *v10;
  v12 = v11;
  v13 = SharedState.preparingToServe.unsafeMutableAddressor();
  v14 = *v13;
  *(inited + 64) = *v13;
  v15 = v14;
  v16 = SharedState.serving.unsafeMutableAddressor();
  v17 = *v16;
  *(inited + 72) = *v16;
  v18 = v17;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SiriStates11SharedStateC_Tt0g5Tf4g_n(inited);
  v20 = v19;
  swift_setDeallocating();
  v21 = *(inited + 16);
  result = swift_arrayDestroy();
  static SharedState.allStates = v20;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2691ABC20;
  v1 = CallState.abstract.unsafeMutableAddressor();
  v2 = *v1;
  *(inited + 32) = *v1;
  v3 = v2;
  v4 = CallState.noCall.unsafeMutableAddressor();
  v5 = *v4;
  *(inited + 40) = *v4;
  v6 = v5;
  v7 = CallState.ongoingCall.unsafeMutableAddressor();
  v8 = *v7;
  *(inited + 48) = *v7;
  v9 = v8;
  v10 = CallState.onHoldCall.unsafeMutableAddressor();
  v11 = *v10;
  *(inited + 56) = *v10;
  v12 = v11;
  v13 = CallState.micMutedCall.unsafeMutableAddressor();
  v14 = *v13;
  *(inited + 64) = *v13;
  v15 = v14;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SiriStates9CallStateC_Tt0g5Tf4g_n(inited);
  v17 = v16;
  swift_setDeallocating();
  v18 = *(inited + 16);
  result = swift_arrayDestroy();
  static CallState.allStates = v17;
  return result;
}

uint64_t *State.allStates.unsafeMutableAddressor()
{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }

  return &static State.allStates;
}

uint64_t static State.allStates.getter()
{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }
}

uint64_t StateMachine<>.init(instrumentationManager:)(uint64_t a1)
{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }

  v3 = static State.allStates;

  v7 = *State.available.unsafeMutableAddressor();
  v4 = *(v1 + 208);
  v5 = v7;
  return v4(v3, &v7, a1);
}

{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }

  v3 = static SharedState.allStates;

  v7 = *SharedState.unshared.unsafeMutableAddressor();
  v4 = *(v1 + 208);
  v5 = v7;
  return v4(v3, &v7, a1);
}

{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }

  v3 = static CallState.allStates;

  v7 = *CallState.noCall.unsafeMutableAddressor();
  v4 = *(v1 + 208);
  v5 = v7;
  return v4(v3, &v7, a1);
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SiriStates5StateC_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    if (MEMORY[0x26D631B00](a1))
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10SiriStates5StateCGMd, &_ss11_SetStorageCy10SiriStates5StateCGMR);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_10:
      if (v1 < 0)
      {
        v6 = v1;
      }

      else
      {
        v6 = v4;
      }

      v5 = MEMORY[0x26D631B00](v6);
      if (!v5)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_14:
  v7 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v37 = v1;
    while (1)
    {
      v9 = MEMORY[0x26D631AD0](v8, v1);
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        break;
      }

      v11 = v9;
      v12 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v7 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        type metadata accessor for State();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = static NSObject.== infix(_:_:)();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v7 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_23;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v8 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_23:
        *(v7 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v11;
        v21 = *(v3 + 16);
        v10 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v10)
        {
          goto LABEL_37;
        }

        *(v3 + 16) = v22;
        if (v8 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = NSObject._rawHashValue(seed:)(v24);
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v7 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        type metadata accessor for State();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = static NSObject.== infix(_:_:)();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v7 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
LABEL_34:
        *(v7 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v10 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v10)
        {
          goto LABEL_39;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t *SharedState.allStates.unsafeMutableAddressor()
{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }

  return &static SharedState.allStates;
}

uint64_t static SharedState.allStates.getter()
{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SiriStates11SharedStateC_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    if (MEMORY[0x26D631B00](a1))
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10SiriStates11SharedStateCGMd, &_ss11_SetStorageCy10SiriStates11SharedStateCGMR);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_10:
      if (v1 < 0)
      {
        v6 = v1;
      }

      else
      {
        v6 = v4;
      }

      v5 = MEMORY[0x26D631B00](v6);
      if (!v5)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_14:
  v7 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v37 = v1;
    while (1)
    {
      v9 = MEMORY[0x26D631AD0](v8, v1);
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        break;
      }

      v11 = v9;
      v12 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v7 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        type metadata accessor for SharedState();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = static NSObject.== infix(_:_:)();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v7 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_23;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v8 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_23:
        *(v7 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v11;
        v21 = *(v3 + 16);
        v10 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v10)
        {
          goto LABEL_37;
        }

        *(v3 + 16) = v22;
        if (v8 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = NSObject._rawHashValue(seed:)(v24);
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v7 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        type metadata accessor for SharedState();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = static NSObject.== infix(_:_:)();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v7 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
LABEL_34:
        *(v7 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v10 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v10)
        {
          goto LABEL_39;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

id one-time initialization function for serving()
{
  type metadata accessor for SharedState();
  v0 = *SharedState.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = SharedState.__allocating_init(name:parent:eventHandler:)(0x676E6976726553, 0xE700000000000000, v0, implicit closure #1 in variable initialization expression of static SharedState.serving, 0);
  static SharedState.serving = result;
  return result;
}

uint64_t implicit closure #1 in variable initialization expression of static SharedState.serving(uint64_t a1)
{
  switch(a1)
  {
    case 5:
      return 1;
    case 2:
      v1 = SharedState.passive.unsafeMutableAddressor();
      break;
    case 1:
      v1 = SharedState.unshared.unsafeMutableAddressor();
      break;
    default:
      return 0;
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

uint64_t *SharedState.serving.unsafeMutableAddressor()
{
  if (one-time initialization token for serving != -1)
  {
    swift_once();
  }

  return &static SharedState.serving;
}

id static SharedState.serving.getter()
{
  if (one-time initialization token for serving != -1)
  {
    swift_once();
  }

  v1 = static SharedState.serving;

  return v1;
}

uint64_t Client.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for Client.delegate : Client@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Client.delegate : Client(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x78);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

void (*Client.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____SRSTClient_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SharedClient.delegate.modify;
}

uint64_t Client.currentState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t Client.currentState.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t key path getter for Client.currentState : Client@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Client.currentState : Client(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*Client.currentState.modify(uint64_t *a1))()
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
  return SharedClient.currentState.modify;
}

uint64_t key path setter for Client.$currentState : Client(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates5StateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5StateCSg_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xA8))(v8);
}

uint64_t Client.$currentState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates5StateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5StateCSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates5StateCSgGMd, &_s7Combine9PublishedVy10SiriStates5StateCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Client.$currentState.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates5StateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5StateCSg_GMR);
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

  v10 = OBJC_IVAR____SRSTClient__currentState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates5StateCSgGMd, &_s7Combine9PublishedVy10SiriStates5StateCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SharedClient.$currentState.modify;
}

uint64_t key path getter for Client.mostRecentEvent : Client@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t Client.mostRecentEvent.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t Client.mostRecentEvent.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*Client.mostRecentEvent.modify(uint64_t *a1))()
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
  return SharedClient.mostRecentEvent.modify;
}

uint64_t key path setter for Client.$mostRecentEvent : Client(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates5EventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5EventOSg_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xD8))(v8);
}

uint64_t Client.$mostRecentEvent.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates5EventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5EventOSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates5EventOSgGMd, &_s7Combine9PublishedVy10SiriStates5EventOSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Client.$mostRecentEvent.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates5EventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5EventOSg_GMR);
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

  v10 = OBJC_IVAR____SRSTClient__mostRecentEvent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates5EventOSgGMd, &_s7Combine9PublishedVy10SiriStates5EventOSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SharedClient.$mostRecentEvent.modify;
}

unint64_t Client.mostRecentEventName.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();
  if (v2)
  {
    return 0;
  }

  else
  {
    return Event.name.getter(v1);
  }
}

void Client.dispatchEvent(_:)(uint64_t a1)
{
  type metadata accessor for NotificationCenterHelper();
  v3 = a1;
  v2 = lazy protocol witness table accessor for type Event and conformance Event();
  static NotificationCenterHelper.dispatch<A>(_:)(&v3, &type metadata for Event, v2);
}

id Client.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____SRSTClient_stopped) & 1) == 0)
  {
    v8 = type metadata accessor for Client();
    lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type Client and conformance Client, type metadata accessor for Client);
    static Clientele.remove<A>(_:)(v1, v8);
    v9 = Logger.framework.unsafeMutableAddressor();
    (*(v3 + 16))(v7, v9, v2);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_269189000, v10, v11, "Deinit called for Client", v12, 2u);
      MEMORY[0x26D632230](v12, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    type metadata accessor for OS_dispatch_queue();
    *(swift_allocObject() + 16) = v1;
    v13 = v1;
    static OS_dispatch_queue.executeOnMain<A>(_:)(partial apply for closure #1 in SharedClient.deinit);
  }

  v14 = type metadata accessor for Client();
  v16.receiver = v1;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_dealloc);
}

void @objc closure #1 in variable initialization expression of static Client.handleStateTransititionNotification(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in variable initialization expression of static Client.handleStateTransititionNotification(a2, a3);
}

uint64_t static Client.handleStateTransititionNotification.setter(uint64_t (*a1)())
{
  result = swift_beginAccess();
  static Client.handleStateTransititionNotification[0] = a1;
  return result;
}

uint64_t key path getter for static Client.handleStateTransititionNotification : Client.Type@<X0>(uint64_t (**a1)()@<X8>)
{
  result = swift_beginAccess();
  *a1 = static Client.handleStateTransititionNotification[0];
  return result;
}

uint64_t key path setter for static Client.handleStateTransititionNotification : Client.Type(uint64_t (**a1)())
{
  v1 = *a1;
  result = swift_beginAccess();
  static Client.handleStateTransititionNotification[0] = v1;
  return result;
}

void @objc closure #1 in variable initialization expression of static Client.handleEventNotification(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in variable initialization expression of static Client.handleEventNotification(a2, a3);
}

uint64_t type metadata accessor for Client()
{
  result = type metadata singleton initialization cache for Client;
  if (!type metadata singleton initialization cache for Client)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26919AE7C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t static Client.handleEventNotification.setter(uint64_t (*a1)())
{
  result = swift_beginAccess();
  static Client.handleEventNotification = a1;
  return result;
}

uint64_t key path getter for static Client.handleEventNotification : Client.Type@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static Client.handleEventNotification;
  return result;
}

uint64_t key path setter for static Client.handleEventNotification : Client.Type(uint64_t (**a1)())
{
  v1 = *a1;
  result = swift_beginAccess();
  static Client.handleEventNotification = v1;
  return result;
}

id Client.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void Client.init()()
{
  v66 = type metadata accessor for Logger();
  v65 = *(v66 - 8);
  v1 = *(v65 + 64);
  MEMORY[0x28223BE20](v66, v2);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates5EventOSgGMd, &_s7Combine9PublishedVy10SiriStates5EventOSgGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates5StateCSgGMd, &_s7Combine9PublishedVy10SiriStates5StateCSgGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v62 - v14;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____SRSTClient__currentState;
  v74 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates5StateCSgMd, &_s10SiriStates5StateCSgMR);
  Published.init(initialValue:)();
  (*(v11 + 32))(&v0[v16], v15, v10);
  v17 = OBJC_IVAR____SRSTClient__mostRecentEvent;
  v74 = 0;
  LOBYTE(v75) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates5EventOSgMd, &_s10SiriStates5EventOSgMR);
  Published.init(initialValue:)();
  (*(v5 + 32))(&v0[v17], v9, v4);
  v0[OBJC_IVAR____SRSTClient_stopped] = 0;
  v18 = type metadata accessor for Client();
  v73.receiver = v0;
  v73.super_class = v18;
  v19 = objc_msgSendSuper2(&v73, sel_init);
  lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type Client and conformance Client, type metadata accessor for Client);
  v63 = v19;
  v20 = static Clientele.add<A>(_:)(v63, v18);
  v21 = State.allStates.unsafeMutableAddressor();
  v22 = *v21;
  if ((*v21 & 0xC000000000000001) != 0)
  {
    if (v22 < 0)
    {
      v23 = *v21;
    }

    v24 = *v21;

    __CocoaSet.makeIterator()();
    type metadata accessor for State();
    lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type State and conformance NSObject, type metadata accessor for State);
    Set.Iterator.init(_cocoa:)();
    v22 = v74;
    v25 = v75;
    v26 = v76;
    v27 = v77;
    v28 = v78;
  }

  else
  {
    v29 = -1 << *(v22 + 32);
    v25 = v22 + 56;
    v26 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v28 = v31 & *(v22 + 56);
    v32 = *v21;

    v27 = 0;
  }

  v67 = v26;
  v68 = v20;
  v33 = (v26 + 64) >> 6;
  if (v22 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v34 = v27;
    v35 = v28;
    v36 = v27;
    if (!v28)
    {
      break;
    }

LABEL_14:
    v37 = (v35 - 1) & v35;
    v38 = *(*(v22 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
    if (!v38)
    {
LABEL_20:
      outlined consume of Set<SharedState>.Iterator._Variant();
      v67 = static Event.allCases.getter();
      v45 = v67[2];
      v46 = v68;
      if (v45)
      {
        type metadata accessor for NotificationCenterHelper();
        v47 = v67 + 4;
        v48 = darwinNotificationCenter.unsafeMutableAddressor();
        swift_beginAccess();
        v49 = lazy protocol witness table accessor for type Event and conformance Event();
        do
        {
          v50 = *v47++;
          value = v48->value;
          v52 = static Client.handleEventNotification;
          v70 = &type metadata for Event;
          v71 = v49;
          v69[0] = v50;
          v53 = value;
          v54 = static NotificationCenterHelper.notifcationName(for:)(v69);
          __swift_destroy_boxed_opaque_existential_1Tm(v69);
          CFNotificationCenterAddObserver(v53, v46, v52, v54, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

          --v45;
        }

        while (v45);
      }

      v55 = Logger.framework.unsafeMutableAddressor();
      v56 = v65;
      v57 = v64;
      v58 = v66;
      (*(v65 + 16))(v64, v55, v66);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_269189000, v59, v60, "Client added Darwin observers", v61, 2u);
        MEMORY[0x26D632230](v61, -1, -1);
      }

      (*(v56 + 8))(v57, v58);
      return;
    }

    while (1)
    {
      v40 = darwinNotificationCenter.unsafeMutableAddressor()->value;
      swift_beginAccess();
      v41 = static Client.handleStateTransititionNotification[0];
      type metadata accessor for NotificationCenterHelper();
      v70 = type metadata accessor for State();
      v71 = lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type State and conformance State, type metadata accessor for State);
      v69[0] = v38;
      v42 = v40;
      v43 = v38;
      v44 = static NotificationCenterHelper.notifcationName(for:)(v69);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      CFNotificationCenterAddObserver(v42, v68, v41, v44, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      v27 = v36;
      v28 = v37;
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      v39 = __CocoaSet.Iterator.next()();
      if (v39)
      {
        v72 = v39;
        type metadata accessor for State();
        swift_dynamicCast();
        v38 = v69[0];
        v36 = v27;
        v37 = v28;
        if (v69[0])
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v36 >= v33)
    {
      goto LABEL_20;
    }

    v35 = *(v25 + 8 * v36);
    ++v34;
    if (v35)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall Client.stopClient()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____SRSTClient_stopped;
  if ((v1[OBJC_IVAR____SRSTClient_stopped] & 1) == 0)
  {
    v9 = Logger.framework.unsafeMutableAddressor();
    (*(v3 + 16))(v7, v9, v2);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_269189000, v10, v11, "#SiriStates stopping client", v12, 2u);
      MEMORY[0x26D632230](v12, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    v1[v8] = 1;
    v13 = type metadata accessor for Client();
    lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type Client and conformance Client, type metadata accessor for Client);
    static Clientele.remove<A>(_:)(v1, v13);
    type metadata accessor for OS_dispatch_queue();
    *(swift_allocObject() + 16) = v1;
    v14 = v1;
    static OS_dispatch_queue.executeOnMain<A>(_:)(partial apply for closure #1 in SharedClient.stopClient());
  }
}

uint64_t protocol witness for ClientProtocol.delegate.getter in conformance Client@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.delegate.modify in conformance Client(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x80))();
  return protocol witness for ClientProtocol.delegate.modify in conformance SharedClient;
}

uint64_t protocol witness for ClientProtocol.currentState.getter in conformance Client@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.currentState.modify in conformance Client(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x98))();
  return protocol witness for ClientProtocol.currentState.modify in conformance SharedClient;
}

uint64_t protocol witness for ClientProtocol.mostRecentEvent.getter in conformance Client@<X0>(uint64_t a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0xB8))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.mostRecentEvent.modify in conformance Client(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))();
  return protocol witness for ClientProtocol.delegate.modify in conformance SharedClient;
}

uint64_t lazy protocol witness table accessor for type Client and conformance Client(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for Client()
{
  type metadata accessor for Published<SharedState?>(319, &lazy cache variable for type metadata for Published<State?>, &_s10SiriStates5StateCSgMd, &_s10SiriStates5StateCSgMR);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<SharedState?>(319, &lazy cache variable for type metadata for Published<Event?>, &_s10SiriStates5EventOSgMd, &_s10SiriStates5EventOSgMR);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void specialized closure #1 in variable initialization expression of static Client.handleStateTransititionNotification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v46 - v12;
  type metadata accessor for NotificationCenterHelper();
  v14 = type metadata accessor for State();
  v15 = lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type State and conformance State, type metadata accessor for State);
  static NotificationCenterHelper.state<A>(from:)(a2, v14, v15, &v53);
  v16 = v53;
  if (v53)
  {
    v52 = a1;
    v17 = Logger.framework.unsafeMutableAddressor();
    v50 = v5[2];
    v50(v13, v17, v4);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    v21 = os_log_type_enabled(v19, v20);
    v51 = v18;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v48 = v5 + 2;
      v23 = v22;
      v24 = swift_slowAlloc();
      v49 = v5;
      v25 = v24;
      v53 = v24;
      *v23 = 136315138;
      v47 = v17;
      v26 = v4;
      v27 = v10;
      v28 = *&v18[OBJC_IVAR____SRSTState_name];
      v29 = *&v18[OBJC_IVAR____SRSTState_name + 8];

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v53);

      *(v23 + 4) = v30;
      v10 = v27;
      v4 = v26;
      v17 = v47;
      _os_log_impl(&dword_269189000, v19, v20, "Client received valid state transition: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v31 = v25;
      v5 = v49;
      MEMORY[0x26D632230](v31, -1, -1);
      MEMORY[0x26D632230](v23, -1, -1);
    }

    v32 = v5[1];
    v32(v13, v4);
    v33 = type metadata accessor for Client();
    lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type Client and conformance Client, type metadata accessor for Client);
    v34 = static Clientele.contains<A>(_:)(v52, v33);
    if (v34)
    {
      v35 = v34;
      v36 = MEMORY[0x277D85000];
      v37 = *((*MEMORY[0x277D85000] & *v34) + 0x90);
      v38 = v51;
      v39 = v37(v16);
      v40 = (*((*v36 & *v35) + 0x70))(v39);
      if (v40)
      {
        [v40 stateMachineWithClient:v35 didTransitionToState:v38];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v50(v10, v17, v4);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = v10;
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_269189000, v41, v42, "Observer for darwin callback handler not found", v44, 2u);
        MEMORY[0x26D632230](v44, -1, -1);

        v45 = v43;
      }

      else
      {

        v45 = v10;
      }

      v32(v45, v4);
    }
  }
}

void specialized closure #1 in variable initialization expression of static Client.handleEventNotification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v41 - v12;
  type metadata accessor for NotificationCenterHelper();
  v14 = lazy protocol witness table accessor for type Event and conformance Event();
  static NotificationCenterHelper.event<A>(from:)(a2, &type metadata for Event, v14, &v47);
  if ((v48 & 1) == 0)
  {
    v46 = a1;
    v15 = v47;
    v16 = Logger.framework.unsafeMutableAddressor();
    v44 = v5[2];
    v44(v13, v16, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    v19 = os_log_type_enabled(v17, v18);
    v45 = v15;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v43 = v5;
      v21 = v20;
      v22 = swift_slowAlloc();
      v42 = v16;
      v23 = v22;
      v47 = v22;
      *v21 = 136315138;
      v24 = Event.name.getter(v15);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v47);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_269189000, v17, v18, "Client received valid event reception: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v27 = v23;
      v16 = v42;
      MEMORY[0x26D632230](v27, -1, -1);
      v28 = v21;
      v5 = v43;
      MEMORY[0x26D632230](v28, -1, -1);
    }

    v29 = v5[1];
    v29(v13, v4);
    v30 = type metadata accessor for Client();
    lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type Client and conformance Client, type metadata accessor for Client);
    v31 = static Clientele.contains<A>(_:)(v46, v30);
    if (v31)
    {
      v32 = v31;
      v33 = MEMORY[0x277D85000];
      v34 = v45;
      v35 = (*((*MEMORY[0x277D85000] & *v31) + 0xC0))(v45, 0);
      v36 = (*((*v33 & *v32) + 0x70))(v35);
      if (v36)
      {
        v37 = v36;
        if ([v36 respondsToSelector_])
        {
          [v37 stateMachineWithClient:v32 didReceiveEvent:v34];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v44(v10, v16, v4);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_269189000, v38, v39, "Observer for darwin callback handler not found", v40, 2u);
        MEMORY[0x26D632230](v40, -1, -1);
      }

      v29(v10, v4);
    }
  }
}

uint64_t type metadata completion function for EventHandlerResult(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for EventHandlerResult(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *storeEnumTagSinglePayload for EventHandlerResult(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

id variable initialization expression of StateMachine.backingStateMachine()
{
  v0 = objc_allocWithZone(MEMORY[0x277D02928]);

  return [v0 init];
}

uint64_t property wrapper backing initializer of StateMachine.currentState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2);
  Published.init(wrappedValue:)(v7, a2);
  return (*(v4 + 8))(a1, a2);
}

uint64_t Published.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1, a2);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  Published.init(initialValue:)();
  return (*(v4 + 8))(a1, a2);
}

uint64_t key path setter for StateMachine.currentState : <A>StateMachine<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(*(*(a3 + a4 - 16) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6);
  return (*(**a2 + 144))(v7);
}

void StateMachine.currentState.didset(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1, a2);
  v9 = &v16 - v8;
  v10 = v2[3];
  (*(v3 + 136))(v7);
  v11 = *(*v2 + 120);
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = type metadata accessor for CUState();
  v14 = *(*(v3 + 88) + 8);

  MEMORY[0x26D631860](&v16, v9, v12, v4, v13, v14);
  v15 = v16;
  if (v16)
  {
    (*(v5 + 8))(v9, v4);

    [v10 transitionToState_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t StateMachine.currentState.getter()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

__n128 sub_26919D728(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t StateMachine.currentState.setter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  specialized StateMachine.currentState.setter(a1, a2);
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

void (*StateMachine.currentState.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  StateMachine.currentState.getter();
  return StateMachine.currentState.modify;
}

uint64_t key path setter for StateMachine.$currentState : <A>StateMachine<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = type metadata accessor for Published.Publisher();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return (*(**a2 + 168))(v11);
}

uint64_t StateMachine.$currentState.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  swift_beginAccess();
  v3 = *(v1 + 80);
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t StateMachine.$currentState.setter(uint64_t a1)
{
  v3 = *v1;
  specialized StateMachine.$currentState.setter(a1);
  v4 = *(v3 + 80);
  v5 = type metadata accessor for Published.Publisher();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*StateMachine.$currentState.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v7 = type metadata accessor for Published.Publisher();
  v5[1] = v7;
  v8 = *(v7 - 8);
  v5[2] = v8;
  v9 = *(v8 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v5[4] = v10;
  StateMachine.$currentState.getter();
  return StateMachine.$currentState.modify;
}

void StateMachine.currentState.modify(uint64_t **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[3], v6, v7);
    a3(v5);
    v10 = *(v8 + 8);
    v10(v5, v7);
    v10(v6, v7);
  }

  else
  {
    a3((*a1)[4]);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t variable initialization expression of StateMachine.stateMapping(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CUState();
  v3 = *(a2 + 8);

  return Dictionary.init()();
}

uint64_t *StateMachine.__allocating_init(states:initialState:instrumentationManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 48);
  v9 = *(v4 + 52);
  swift_allocObject();
  v10 = specialized StateMachine.init(states:initialState:instrumentationManager:)(a1, a2, a3);

  (*(*(*(v4 + 80) - 8) + 8))(a2);
  return v10;
}

uint64_t *StateMachine.init(states:initialState:instrumentationManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = specialized StateMachine.init(states:initialState:instrumentationManager:)(a1, a2, a3);

  (*(*(*(v5 + 80) - 8) + 8))(a2);
  return v6;
}

uint64_t *StateMachine.deinit()
{
  v1 = *v0;
  [v0[3] invalidate];
  v2 = v0[2];

  v3 = *(*v0 + 112);
  v4 = *(v1 + 80);
  v5 = type metadata accessor for Published();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + *(*v0 + 120));

  v7 = *(v0 + *(*v0 + 128));

  return v0;
}

uint64_t StateMachine.__deallocating_deinit()
{
  StateMachine.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void StateMachine.dispatchEvent(_:)()
{
  v1 = v0[3];
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 24);
  v6 = swift_checkMetadataState();
  v7 = v5(v6, AssociatedConformanceWitness);
  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x277D02920]);
  v11 = MEMORY[0x26D631880](v7, v9);

  v12 = [v10 initWithName:v11 userInfo:0];

  [v1 dispatchEvent_];
}

uint64_t StateMachine.constructStateMapping()()
{
  v1 = *v0;
  v77 = *(*v0 + 80);
  v2 = v77;
  v3 = type metadata accessor for Optional();
  v73 = *(v3 - 8);
  v4 = *(v73 + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v51 - v11;
  v13 = *(v2 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v10, v15);
  v64 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v76 = &v51 - v18;
  v19 = v1;
  v20 = (v0 + *(v1 + 120));
  swift_beginAccess();
  v21 = *v20;
  v22 = type metadata accessor for CUState();
  v75 = v0;
  v23 = *(v19 + 88);
  v24 = *(v23 + 8);

  v65 = v24;
  v26 = MEMORY[0x26D631830](v25, v77, v22, v24);

  if (!v26)
  {
    v28 = v22;
    v63 = v23;
    v62 = v20;
    v29 = *(v75 + 16);
    v81 = v29;

    v30 = v77;
    if (Set.count.getter() < 1)
    {
    }

    else
    {
      v74 = v28;
      v59 = (v13 + 48);
      v72 = v13 + 32;
      v58 = v63 + 48;
      v73 += 8;
      v57 = v63 + 56;
      v56 = v13 + 16;
      v55 = v14 + 7;
      v54 = v80;
      v53 = v13 + 8;
      v71 = type metadata accessor for Set();
      v70 = 0;
      v31 = v76;
      v61 = v3;
      v60 = v8;
      v52 = v12;
      while (1)
      {
        aBlock[0] = v29;

        swift_getWitnessTable();
        v32 = v70;
        Sequence.first(where:)();

        if ((*v59)(v12, 1, v30) == 1)
        {
          break;
        }

        v67 = *(v13 + 32);
        v67(v31, v12, v30);
        v33 = v63;
        (*(v63 + 48))(v30, v63);
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in StateMachine.constructStateMapping(), v75, MEMORY[0x277D84A98], v74, v34, aBlock);
        v70 = v32;
        v69 = *v73;
        v69(v8, v3);
        v35 = aBlock[0];
        v36 = (*(v33 + 56))(v30, v33);
        v38 = v37;
        v39 = objc_allocWithZone(MEMORY[0x277D02918]);
        v40 = v35;
        v68 = v40;
        v41 = MEMORY[0x26D631880](v36, v38);

        v66 = [v39 initWithName:v41 parent:v40];

        v42 = swift_allocObject();
        swift_weakInit();
        v43 = *(v13 + 16);
        v44 = v64;
        v43(v64, v76, v77);
        v45 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v46 = (v55 + v45) & 0xFFFFFFFFFFFFFFF8;
        v47 = swift_allocObject();
        *(v47 + 16) = v77;
        *(v47 + 24) = v33;
        v12 = v52;
        v67((v47 + v45), v44, v77);
        *(v47 + v46) = v42;
        v80[2] = partial apply for closure #3 in StateMachine.constructStateMapping();
        v80[3] = v47;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v80[0] = thunk for @escaping @callee_guaranteed (@guaranteed CUStateEvent) -> (@unowned CUStateResult);
        v80[1] = &block_descriptor;
        v48 = _Block_copy(aBlock);

        v49 = v66;
        [v66 setEventHandler_];
        _Block_release(v48);
        v43(v44, v76, v77);
        v8 = v60;
        v78 = v49;
        swift_beginAccess();
        type metadata accessor for Dictionary();
        v50 = v49;
        v31 = v76;
        v30 = v77;
        Dictionary.subscript.setter();
        swift_endAccess();
        Set.remove(_:)();

        v3 = v61;
        v69(v8, v61);
        (*(v13 + 8))(v31, v30);
        v29 = v81;
        if (Set.count.getter() <= 0)
        {
        }
      }

      (*v73)(v12, v3);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in StateMachine.constructStateMapping()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 80);
  v29 = type metadata accessor for Optional();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v29, v7);
  v27 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - v11;
  v13 = *(*(v3 + 88) + 48);
  v28 = *(v3 + 88);
  v26 = v13;
  (v13)(v4);
  v25 = *(v4 - 8);
  v14 = *(v25 + 48);
  v15 = 1;
  v16 = v14(v12, 1, v4);
  (*(v5 + 8))(v12, v29);
  if (v16 == 1)
  {
    return v15;
  }

  v17 = v27;
  v18 = v28;
  v26(v4, v28);
  result = v14(v17, 1, v4);
  if (result != 1)
  {
    v20 = *(*a2 + 120);
    swift_beginAccess();
    v21 = *(a2 + v20);
    v22 = type metadata accessor for CUState();
    v23 = *(v18 + 8);

    MEMORY[0x26D631860](&v30, v17, v21, v4, v22, v23);

    v15 = v30 != 0;
    if (v30)
    {
    }

    (*(v25 + 8))(v17, v4);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v31 = a5;
  v32 = a2;
  v34 = a4;
  v33 = a1;
  v30 = *(a3 - 8);
  v10 = *(v30 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v11, v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v19, v24);
  v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26, v6);
  v28 = 1;
  if ((*(v16 + 48))(v26, 1, v15) != 1)
  {
    (*(v16 + 32))(v21, v26, v15);
    v33(v21, v13);
    (*(v16 + 8))(v21, v15);
    if (v7)
    {
      return (*(v30 + 32))(v31, v13, a3);
    }

    v28 = 0;
  }

  return (*(*(v34 - 8) + 56))(a6, v28, 1);
}

uint64_t closure #3 in StateMachine.constructStateMapping()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a3;
  v78 = a2;
  v81 = *(a4 - 8);
  v8 = *(v81 + 64);
  v9 = MEMORY[0x28223BE20](a1, a2);
  v74 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v75 = &v73 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v73 - v15;
  v82 = type metadata accessor for EventHandlerResult();
  v80 = *(v82 - 8);
  v17 = *(v80 + 64);
  v19 = MEMORY[0x28223BE20](v82, v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v83 = &v73 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v25 - 8, v27);
  v73 = &v73 - v29;
  v30 = *(AssociatedTypeWitness - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28, v32);
  v34 = &v73 - v33;
  v76 = a1;
  v35 = [a1 name];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v79 = v30;
  if (v36 == 0x7265746E65 && v38 == 0xE500000000000000)
  {

    v39 = v16;
LABEL_5:
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    goto LABEL_6;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v39 = v16;
  if (v40)
  {
    goto LABEL_5;
  }

  v56 = [v76 name];
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  if (v57 == 1953069157 && v59 == 0xE400000000000000)
  {

    v39 = v16;
LABEL_15:
    v61 = swift_getAssociatedConformanceWitness();
    (*(v61 + 40))(AssociatedTypeWitness, v61);
    goto LABEL_6;
  }

  v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v39 = v16;
  if (v60)
  {
    goto LABEL_15;
  }

  v62 = [v76 name];
  v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  if (v63 == 0x6C616974696E69 && v65 == 0xE700000000000000)
  {

    v39 = v16;
LABEL_24:
    v67 = swift_getAssociatedConformanceWitness();
    (*(v67 + 48))(AssociatedTypeWitness, v67);
    goto LABEL_6;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v39 = v16;
  if (v66)
  {
    goto LABEL_24;
  }

  v68 = [v76 name];
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;

  v71 = swift_getAssociatedConformanceWitness();
  v72 = v73;
  (*(v71 + 16))(v76, v70, AssociatedTypeWitness, v71);
  result = (*(v30 + 48))(v72, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(v30 + 32))(v34, v72, AssociatedTypeWitness);
LABEL_6:
  v43 = v80;
  v42 = v81;
  v44 = v83;
  (*(a5 + 64))(v34, a4, a5);
  v45 = v82;
  (*(v43 + 16))(v21, v44, v82);
  v46 = (*(v42 + 48))(v21, 2, a4);
  if (v46)
  {
    if (v46 == 1)
    {
      (*(v43 + 8))(v83, v45);
      (*(v79 + 8))(v34, AssociatedTypeWitness);
      return 1;
    }

    goto LABEL_17;
  }

  (*(v42 + 32))(v39, v21, a4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v42 + 8))(v39, a4);
LABEL_17:
    (*(v43 + 8))(v83, v45);
    (*(v79 + 8))(v34, AssociatedTypeWitness);
    return 2;
  }

  v49 = v75;
  v50 = v43;
  v51 = Strong;
  (*(*Strong + 136))();
  v52 = v74;
  (*(v42 + 16))(v74, v39, a4);
  (*(*v51 + 144))(v52);
  v53 = *(v51 + *(*v51 + 128));
  v54 = mach_absolute_time();
  (*(*v53 + 168))(v49, v39, v34, v54, a4, a5);
  v55 = *(v42 + 8);
  v55(v49, a4);
  v55(v39, a4);
  (*(v50 + 8))(v83, v82);
  (*(v79 + 8))(v34, AssociatedTypeWitness);

  return 2;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed CUStateEvent) -> (@unowned CUStateResult)(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

void specialized StateMachine.currentState.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v8 = v13 - v7;
  v13[2] = v4;
  v14 = *(v9 + 88);
  v10 = v14;
  swift_getKeyPath();
  v13[0] = v4;
  v13[1] = v10;
  swift_getKeyPath();
  (*(v5 + 16))(v8, a1, v4);

  v11 = static Published.subscript.setter();
  StateMachine.currentState.didset(v11, v12);
}

uint64_t specialized StateMachine.$currentState.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Published.Publisher();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  (*(v8 + 16))(&v11 - v7, a1);
  v9 = *(*v1 + 112);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

unint64_t type metadata accessor for CUState()
{
  result = lazy cache variable for type metadata for CUState;
  if (!lazy cache variable for type metadata for CUState)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CUState);
  }

  return result;
}

uint64_t *specialized StateMachine.init(states:initialState:instrumentationManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v26[-1] - v11;
  v3[3] = [objc_allocWithZone(MEMORY[0x277D02928]) init];
  v13 = *(*v3 + 120);
  v14 = type metadata accessor for CUState();
  v15 = *(*(v7 + 88) + 8);
  *(v3 + v13) = Dictionary.init()();
  v3[2] = a1;
  (*(v9 + 16))(v12, a2, v8);
  v16 = *(*v3 + 112);
  swift_beginAccess();
  property wrapper backing initializer of StateMachine.currentState(v12, v8);
  swift_endAccess();
  *(v3 + *(*v3 + 128)) = a3;

  StateMachine.constructStateMapping()();
  v17 = v3[3];
  v18 = *(*v3 + 120);
  swift_beginAccess();
  v26[1] = *(v3 + v18);
  type metadata accessor for Dictionary.Values();
  v19 = v17;

  swift_getWitnessTable();
  Array.init<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 setStates_];

  v21 = *(*v3 + 136);
  v22 = v3[3];
  v21();
  swift_beginAccess();
  MEMORY[0x26D631860](v26, v12, *(v3 + v18), v8, v14, v15);
  v23 = v26[0];
  swift_endAccess();
  (*(v9 + 8))(v12, v8);
  [v22 setInitialState_];

  [v3[3] start];
  return v3;
}

uint64_t type metadata completion function for StateMachine(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Published();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *partial apply for closure #2 in StateMachine.constructStateMapping()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 120);
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = *(v5 + 80);
  v9 = type metadata accessor for CUState();
  v10 = *(*(v5 + 88) + 8);

  result = MEMORY[0x26D631860](&v13, a1, v7, v8, v9, v10);
  v12 = v13;
  if (v13)
  {

    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2691A003C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2691A0074()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static OS_dispatch_queue.executeOnMain<A>(_:)(void (*a1)(void))
{
  if ([objc_opt_self() isMainThread])
  {
    a1();
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v2 = static OS_dispatch_queue.main.getter();
    MEMORY[0x28223BE20](v2, v3);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

uint64_t partial apply for closure #1 in static OS_dispatch_queue.executeOnMain<A>(_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

void static NotificationCenterHelper.dispatch<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](a1, a2);
  v10 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v48[-v12];
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = Logger.framework.unsafeMutableAddressor();
  v54 = v15;
  (*(v15 + 16))(v19, v20, v14);
  v21 = v6[2];
  v21(v13, a1, a2);
  v21(v10, a1, a2);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v53 = a1;
    v25 = v24;
    v51 = swift_slowAlloc();
    v55 = v51;
    *v25 = 136315394;
    swift_getDynamicType();
    v26 = _typeName(_:qualified:)();
    v50 = v22;
    v27 = v26;
    v49 = v23;
    v29 = v28;
    v52 = v14;
    v30 = v6[1];
    v30(v13, a2);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v55);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    v32 = (*(a3 + 24))(a2, a3);
    v34 = v33;
    v30(v10, a2);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v55);

    *(v25 + 14) = v35;
    v36 = v50;
    _os_log_impl(&dword_269189000, v50, v49, "Client posting darwin notification for event dispatch type=%s, event: %s", v25, 0x16u);
    v37 = v51;
    swift_arrayDestroy();
    MEMORY[0x26D632230](v37, -1, -1);
    MEMORY[0x26D632230](v25, -1, -1);

    (*(v54 + 8))(v19, v52);
  }

  else
  {

    v38 = v6[1];
    v38(v10, a2);
    (*(v54 + 8))(v19, v14);
    v38(v13, a2);
  }

  v39 = darwinNotificationCenter.unsafeMutableAddressor()->value;
  v40 = eventDispatchNotificationNamePrefix.unsafeMutableAddressor();
  countAndFlagsBits = v40->_countAndFlagsBits;
  object = v40->_object;
  v43 = *(a3 + 24);

  v44 = v43(a2, a3);
  v46 = v45;
  v55 = countAndFlagsBits;
  v56 = object;

  MEMORY[0x26D6318B0](v44, v46);

  v47 = MEMORY[0x26D631880](v55, v56);

  CFNotificationCenterPostNotification(v39, v47, 0, 0, 1u);
}

void static NotificationCenterHelper.removeEveryObserver(_:)(const void *a1)
{
  value = darwinNotificationCenter.unsafeMutableAddressor()->value;

  CFNotificationCenterRemoveEveryObserver(value, a1);
}

uint64_t static NotificationCenterHelper.notifcationName(for:)(void *a1)
{
  v2 = eventReceivedNotificationNamePrefix.unsafeMutableAddressor();
  countAndFlagsBits = v2->_countAndFlagsBits;
  object = v2->_object;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = *(v6 + 24);

  v8 = v7(v5, v6);
  v10 = v9;

  MEMORY[0x26D6318B0](v8, v10);

  v11 = MEMORY[0x26D631880](countAndFlagsBits, object);

  return v11;
}

{
  v2 = stateTransitionNotificationNamePrefix.unsafeMutableAddressor();
  countAndFlagsBits = v2->_countAndFlagsBits;
  object = v2->_object;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = *(v6 + 56);

  v8 = v7(v5, v6);
  v10 = v9;

  MEMORY[0x26D6318B0](v8, v10);

  v11 = MEMORY[0x26D631880](countAndFlagsBits, object);

  return v11;
}

uint64_t static NotificationCenterHelper.state<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v47 - v15;
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v47 - v21;
  if (a1 && (objc_opt_self(), swift_dynamicCastObjCClass()) && (v55 = 0, v56 = 0, static String._conditionallyBridgeFromObjectiveC(_:result:)(), (v23 = v56) != 0))
  {
    v48 = v55;
    v49 = v16;
    v24 = stateTransitionNotificationNamePrefix.unsafeMutableAddressor();
    object = v24->_object;
    countAndFlagsBits = v24->_countAndFlagsBits;
    v54 = object;
    v51 = 0;
    v52 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    (*(a3 + 80))(v26);

    v27 = *(a2 - 8);
    if ((*(v27 + 48))(v22, 1, a2) == 1)
    {
      (*(v18 + 8))(v22, v17);
      v28 = Logger.framework.unsafeMutableAddressor();
      v29 = v49;
      (*(v8 + 16))(v49, v28, v7);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = v30;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v55 = v34;
        *v33 = 136315138;
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v23, &v55);

        *(v33 + 4) = v35;
        _os_log_impl(&dword_269189000, v32, v31, "State transition darwin notification was malformed: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x26D632230](v34, -1, -1);
        MEMORY[0x26D632230](v33, -1, -1);

        (*(v8 + 8))(v49, v7);
      }

      else
      {

        (*(v8 + 8))(v29, v7);
      }

      return (*(v27 + 56))(v50, 1, 1, a2);
    }

    else
    {

      v46 = v50;
      (*(v27 + 32))(v50, v22, a2);
      return (*(v27 + 56))(v46, 0, 1, a2);
    }
  }

  else
  {
    v36 = Logger.framework.unsafeMutableAddressor();
    (*(v8 + 16))(v13, v36, v7);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v55 = v40;
      *v39 = 136315138;
      v41 = unknownNotificationName.unsafeMutableAddressor();
      v42 = v41->_countAndFlagsBits;
      v43 = v41->_object;

      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v55);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_269189000, v37, v38, "State transition darwin notification was malformed: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x26D632230](v40, -1, -1);
      MEMORY[0x26D632230](v39, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    return (*(*(a2 - 8) + 56))(v50, 1, 1, a2);
  }
}

uint64_t static NotificationCenterHelper.event<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v48 - v15;
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v48 - v21;
  if (a1 && (objc_opt_self(), swift_dynamicCastObjCClass()) && (v54 = 0, v55 = 0, static String._conditionallyBridgeFromObjectiveC(_:result:)(), (v23 = v55) != 0))
  {
    v48 = v54;
    v24 = eventReceivedNotificationNamePrefix.unsafeMutableAddressor();
    object = v24->_object;
    countAndFlagsBits = v24->_countAndFlagsBits;
    v53 = object;
    v50 = 0;
    v51 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    (*(a3 + 16))(v26);
    v27 = *(a2 - 8);
    if ((*(v27 + 48))(v22, 1, a2) == 1)
    {
      (*(v18 + 8))(v22, v17);
      v28 = Logger.framework.unsafeMutableAddressor();
      (*(v8 + 16))(v16, v28, v7);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v54 = v32;
        *v31 = 136315138;
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v23, &v54);
        v48 = v29;
        v34 = v33;

        *(v31 + 4) = v34;
        v35 = v30;
        v36 = v48;
        _os_log_impl(&dword_269189000, v48, v35, "Event reception darwin notification was malformed: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x26D632230](v32, -1, -1);
        MEMORY[0x26D632230](v31, -1, -1);
      }

      else
      {
      }

      (*(v8 + 8))(v16, v7);
      return (*(v27 + 56))(v49, 1, 1, a2);
    }

    else
    {

      v47 = v49;
      (*(v27 + 32))(v49, v22, a2);
      return (*(v27 + 56))(v47, 0, 1, a2);
    }
  }

  else
  {
    v37 = Logger.framework.unsafeMutableAddressor();
    (*(v8 + 16))(v13, v37, v7);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54 = v41;
      *v40 = 136315138;
      v42 = unknownNotificationName.unsafeMutableAddressor();
      v43 = v42->_countAndFlagsBits;
      v44 = v42->_object;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v54);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_269189000, v38, v39, "Event reception darwin notification was malformed: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x26D632230](v41, -1, -1);
      MEMORY[0x26D632230](v40, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    return (*(*(a2 - 8) + 56))(v49, 1, 1, a2);
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CallEvent@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized CallEvent.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t specialized CallEvent.init(rawValue:)(unint64_t result)
{
  if (result > 0xE)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CallEvent] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CallEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CallEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SiriStates9CallEventOGMd, &_sSay10SiriStates9CallEventOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CallEvent] and conformance [A]);
  }

  return result;
}

uint64_t CallClient.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for CallClient.delegate : CallClient@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CallClient.delegate : CallClient(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x78);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

void (*CallClient.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____SRSTCallClient_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SharedClient.delegate.modify;
}

uint64_t CallClient.currentState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CallClient.currentState.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t key path getter for CallClient.currentState : CallClient@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CallClient.currentState : CallClient(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*CallClient.currentState.modify(uint64_t *a1))()
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
  return SharedClient.currentState.modify;
}

uint64_t key path setter for CallClient.$currentState : CallClient(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateCSg_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xA8))(v8);
}

uint64_t CallClient.$currentState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateCSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates9CallStateCSgGMd, &_s7Combine9PublishedVy10SiriStates9CallStateCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CallClient.$currentState.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateCSg_GMR);
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

  v10 = OBJC_IVAR____SRSTCallClient__currentState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates9CallStateCSgGMd, &_s7Combine9PublishedVy10SiriStates9CallStateCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SharedClient.$currentState.modify;
}

uint64_t key path getter for CallClient.mostRecentEvent : CallClient@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t CallClient.mostRecentEvent.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CallClient.mostRecentEvent.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*CallClient.mostRecentEvent.modify(uint64_t *a1))()
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
  return SharedClient.mostRecentEvent.modify;
}

uint64_t key path setter for CallClient.$mostRecentEvent : CallClient(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates9CallEventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallEventOSg_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xD8))(v8);
}

uint64_t CallClient.$mostRecentEvent.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates9CallEventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallEventOSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates9CallEventOSgGMd, &_s7Combine9PublishedVy10SiriStates9CallEventOSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CallClient.$mostRecentEvent.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates9CallEventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallEventOSg_GMR);
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

  v10 = OBJC_IVAR____SRSTCallClient__mostRecentEvent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates9CallEventOSgGMd, &_s7Combine9PublishedVy10SiriStates9CallEventOSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SharedClient.$mostRecentEvent.modify;
}

uint64_t CallClient.mostRecentEventName.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();
  if (v2)
  {
    return 0;
  }

  else
  {
    return CallEvent.name.getter(v1);
  }
}

void CallClient.dispatchEvent(_:)(uint64_t a1)
{
  type metadata accessor for NotificationCenterHelper();
  v3 = a1;
  v2 = lazy protocol witness table accessor for type CallEvent and conformance CallEvent();
  static NotificationCenterHelper.dispatch<A>(_:)(&v3, &type metadata for CallEvent, v2);
}

id CallClient.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____SRSTCallClient_stopped) & 1) == 0)
  {
    v8 = type metadata accessor for CallClient();
    lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallClient and conformance CallClient, type metadata accessor for CallClient);
    static Clientele.remove<A>(_:)(v1, v8);
    v9 = Logger.framework.unsafeMutableAddressor();
    (*(v3 + 16))(v7, v9, v2);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_269189000, v10, v11, "Deinit called for CallClient", v12, 2u);
      MEMORY[0x26D632230](v12, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    type metadata accessor for OS_dispatch_queue();
    *(swift_allocObject() + 16) = v1;
    v13 = v1;
    static OS_dispatch_queue.executeOnMain<A>(_:)(partial apply for closure #1 in SharedClient.deinit);
  }

  v14 = type metadata accessor for CallClient();
  v16.receiver = v1;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_dealloc);
}

void @objc closure #1 in variable initialization expression of static CallClient.handleStateTransititionNotification(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in variable initialization expression of static CallClient.handleStateTransititionNotification(a2, a3);
}

uint64_t static CallClient.handleStateTransititionNotification.setter(uint64_t (*a1)())
{
  result = swift_beginAccess();
  static CallClient.handleStateTransititionNotification[0] = a1;
  return result;
}

uint64_t key path getter for static CallClient.handleStateTransititionNotification : CallClient.Type@<X0>(uint64_t (**a1)()@<X8>)
{
  result = swift_beginAccess();
  *a1 = static CallClient.handleStateTransititionNotification[0];
  return result;
}

uint64_t key path setter for static CallClient.handleStateTransititionNotification : CallClient.Type(uint64_t (**a1)())
{
  v1 = *a1;
  result = swift_beginAccess();
  static CallClient.handleStateTransititionNotification[0] = v1;
  return result;
}

void @objc closure #1 in variable initialization expression of static CallClient.handleEventNotification(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in variable initialization expression of static CallClient.handleEventNotification(a2, a3);
}

uint64_t type metadata accessor for CallClient()
{
  result = type metadata singleton initialization cache for CallClient;
  if (!type metadata singleton initialization cache for CallClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691A2EE4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t static CallClient.handleEventNotification.setter(uint64_t (*a1)())
{
  result = swift_beginAccess();
  static CallClient.handleEventNotification = a1;
  return result;
}

uint64_t key path getter for static CallClient.handleEventNotification : CallClient.Type@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static CallClient.handleEventNotification;
  return result;
}

uint64_t key path setter for static CallClient.handleEventNotification : CallClient.Type(uint64_t (**a1)())
{
  v1 = *a1;
  result = swift_beginAccess();
  static CallClient.handleEventNotification = v1;
  return result;
}

id CallClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void CallClient.init()()
{
  v66 = type metadata accessor for Logger();
  v65 = *(v66 - 8);
  v1 = *(v65 + 64);
  MEMORY[0x28223BE20](v66, v2);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates9CallEventOSgGMd, &_s7Combine9PublishedVy10SiriStates9CallEventOSgGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates9CallStateCSgGMd, &_s7Combine9PublishedVy10SiriStates9CallStateCSgGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v62 - v14;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____SRSTCallClient__currentState;
  v74 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates9CallStateCSgMd, &_s10SiriStates9CallStateCSgMR);
  Published.init(initialValue:)();
  (*(v11 + 32))(&v0[v16], v15, v10);
  v17 = OBJC_IVAR____SRSTCallClient__mostRecentEvent;
  v74 = 0;
  LOBYTE(v75) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates9CallEventOSgMd, &_s10SiriStates9CallEventOSgMR);
  Published.init(initialValue:)();
  (*(v5 + 32))(&v0[v17], v9, v4);
  v0[OBJC_IVAR____SRSTCallClient_stopped] = 0;
  v18 = type metadata accessor for CallClient();
  v73.receiver = v0;
  v73.super_class = v18;
  v19 = objc_msgSendSuper2(&v73, sel_init);
  lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallClient and conformance CallClient, type metadata accessor for CallClient);
  v63 = v19;
  v20 = static Clientele.add<A>(_:)(v63, v18);
  v21 = CallState.allStates.unsafeMutableAddressor();
  v22 = *v21;
  if ((*v21 & 0xC000000000000001) != 0)
  {
    if (v22 < 0)
    {
      v23 = *v21;
    }

    v24 = *v21;

    __CocoaSet.makeIterator()();
    type metadata accessor for CallState();
    lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallState and conformance NSObject, type metadata accessor for CallState);
    Set.Iterator.init(_cocoa:)();
    v22 = v74;
    v25 = v75;
    v26 = v76;
    v27 = v77;
    v28 = v78;
  }

  else
  {
    v29 = -1 << *(v22 + 32);
    v25 = v22 + 56;
    v26 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v28 = v31 & *(v22 + 56);
    v32 = *v21;

    v27 = 0;
  }

  v67 = v26;
  v68 = v20;
  v33 = (v26 + 64) >> 6;
  if (v22 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v34 = v27;
    v35 = v28;
    v36 = v27;
    if (!v28)
    {
      break;
    }

LABEL_14:
    v37 = (v35 - 1) & v35;
    v38 = *(*(v22 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
    if (!v38)
    {
LABEL_20:
      outlined consume of Set<SharedState>.Iterator._Variant();
      v67 = static CallEvent.allCases.getter();
      v45 = v67[2];
      v46 = v68;
      if (v45)
      {
        type metadata accessor for NotificationCenterHelper();
        v47 = v67 + 4;
        v48 = darwinNotificationCenter.unsafeMutableAddressor();
        swift_beginAccess();
        v49 = lazy protocol witness table accessor for type CallEvent and conformance CallEvent();
        do
        {
          v50 = *v47++;
          value = v48->value;
          v52 = static CallClient.handleEventNotification;
          v70 = &type metadata for CallEvent;
          v71 = v49;
          v69[0] = v50;
          v53 = value;
          v54 = static NotificationCenterHelper.notifcationName(for:)(v69);
          __swift_destroy_boxed_opaque_existential_1Tm(v69);
          CFNotificationCenterAddObserver(v53, v46, v52, v54, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

          --v45;
        }

        while (v45);
      }

      v55 = Logger.framework.unsafeMutableAddressor();
      v56 = v65;
      v57 = v64;
      v58 = v66;
      (*(v65 + 16))(v64, v55, v66);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_269189000, v59, v60, "CallClient added Darwin observers", v61, 2u);
        MEMORY[0x26D632230](v61, -1, -1);
      }

      (*(v56 + 8))(v57, v58);
      return;
    }

    while (1)
    {
      v40 = darwinNotificationCenter.unsafeMutableAddressor()->value;
      swift_beginAccess();
      v41 = static CallClient.handleStateTransititionNotification[0];
      type metadata accessor for NotificationCenterHelper();
      v70 = type metadata accessor for CallState();
      v71 = lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallState and conformance CallState, type metadata accessor for CallState);
      v69[0] = v38;
      v42 = v40;
      v43 = v38;
      v44 = static NotificationCenterHelper.notifcationName(for:)(v69);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      CFNotificationCenterAddObserver(v42, v68, v41, v44, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      v27 = v36;
      v28 = v37;
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      v39 = __CocoaSet.Iterator.next()();
      if (v39)
      {
        v72 = v39;
        type metadata accessor for CallState();
        swift_dynamicCast();
        v38 = v69[0];
        v36 = v27;
        v37 = v28;
        if (v69[0])
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v36 >= v33)
    {
      goto LABEL_20;
    }

    v35 = *(v25 + 8 * v36);
    ++v34;
    if (v35)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall CallClient.stopClient()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____SRSTCallClient_stopped;
  if ((v1[OBJC_IVAR____SRSTCallClient_stopped] & 1) == 0)
  {
    v9 = Logger.framework.unsafeMutableAddressor();
    (*(v3 + 16))(v7, v9, v2);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_269189000, v10, v11, "#SiriStates stopping client", v12, 2u);
      MEMORY[0x26D632230](v12, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    v1[v8] = 1;
    v13 = type metadata accessor for CallClient();
    lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallClient and conformance CallClient, type metadata accessor for CallClient);
    static Clientele.remove<A>(_:)(v1, v13);
    type metadata accessor for OS_dispatch_queue();
    *(swift_allocObject() + 16) = v1;
    v14 = v1;
    static OS_dispatch_queue.executeOnMain<A>(_:)(partial apply for closure #1 in SharedClient.stopClient());
  }
}

uint64_t protocol witness for ClientProtocol.delegate.getter in conformance CallClient@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.delegate.modify in conformance CallClient(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x80))();
  return protocol witness for ClientProtocol.delegate.modify in conformance SharedClient;
}

uint64_t protocol witness for ClientProtocol.currentState.getter in conformance CallClient@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.currentState.modify in conformance CallClient(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x98))();
  return protocol witness for ClientProtocol.currentState.modify in conformance SharedClient;
}

uint64_t protocol witness for ClientProtocol.mostRecentEvent.getter in conformance CallClient@<X0>(uint64_t a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0xB8))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.mostRecentEvent.modify in conformance CallClient(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))();
  return protocol witness for ClientProtocol.delegate.modify in conformance SharedClient;
}

uint64_t lazy protocol witness table accessor for type CallClient and conformance CallClient(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for CallClient()
{
  type metadata accessor for Published<SharedState?>(319, &lazy cache variable for type metadata for Published<CallState?>, &_s10SiriStates9CallStateCSgMd, &_s10SiriStates9CallStateCSgMR);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<SharedState?>(319, &lazy cache variable for type metadata for Published<CallEvent?>, &_s10SiriStates9CallEventOSgMd, &_s10SiriStates9CallEventOSgMR);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void specialized closure #1 in variable initialization expression of static CallClient.handleStateTransititionNotification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v46 - v12;
  type metadata accessor for NotificationCenterHelper();
  v14 = type metadata accessor for CallState();
  v15 = lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallState and conformance CallState, type metadata accessor for CallState);
  static NotificationCenterHelper.state<A>(from:)(a2, v14, v15, &v53);
  v16 = v53;
  if (v53)
  {
    v52 = a1;
    v17 = Logger.framework.unsafeMutableAddressor();
    v50 = v5[2];
    v50(v13, v17, v4);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    v21 = os_log_type_enabled(v19, v20);
    v51 = v18;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v48 = v5 + 2;
      v23 = v22;
      v24 = swift_slowAlloc();
      v49 = v5;
      v25 = v24;
      v53 = v24;
      *v23 = 136315138;
      v47 = v17;
      v26 = v4;
      v27 = v10;
      v28 = *&v18[OBJC_IVAR____SRSTCallState_name];
      v29 = *&v18[OBJC_IVAR____SRSTCallState_name + 8];

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v53);

      *(v23 + 4) = v30;
      v10 = v27;
      v4 = v26;
      v17 = v47;
      _os_log_impl(&dword_269189000, v19, v20, "CallClient received valid state transition: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v31 = v25;
      v5 = v49;
      MEMORY[0x26D632230](v31, -1, -1);
      MEMORY[0x26D632230](v23, -1, -1);
    }

    v32 = v5[1];
    v32(v13, v4);
    v33 = type metadata accessor for CallClient();
    lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallClient and conformance CallClient, type metadata accessor for CallClient);
    v34 = static Clientele.contains<A>(_:)(v52, v33);
    if (v34)
    {
      v35 = v34;
      v36 = MEMORY[0x277D85000];
      v37 = *((*MEMORY[0x277D85000] & *v34) + 0x90);
      v38 = v51;
      v39 = v37(v16);
      v40 = (*((*v36 & *v35) + 0x70))(v39);
      if (v40)
      {
        [v40 stateMachineWithClient:v35 didTransitionToState:v38];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v50(v10, v17, v4);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = v10;
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_269189000, v41, v42, "Observer for darwin callback handler not found", v44, 2u);
        MEMORY[0x26D632230](v44, -1, -1);

        v45 = v43;
      }

      else
      {

        v45 = v10;
      }

      v32(v45, v4);
    }
  }
}

void specialized closure #1 in variable initialization expression of static CallClient.handleEventNotification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v41 - v12;
  type metadata accessor for NotificationCenterHelper();
  v14 = lazy protocol witness table accessor for type CallEvent and conformance CallEvent();
  static NotificationCenterHelper.event<A>(from:)(a2, &type metadata for CallEvent, v14, &v47);
  if ((v48 & 1) == 0)
  {
    v46 = a1;
    v15 = v47;
    v16 = Logger.framework.unsafeMutableAddressor();
    v44 = v5[2];
    v44(v13, v16, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    v19 = os_log_type_enabled(v17, v18);
    v45 = v15;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v43 = v5;
      v21 = v20;
      v22 = swift_slowAlloc();
      v42 = v16;
      v23 = v22;
      v47 = v22;
      *v21 = 136315138;
      v24 = CallEvent.name.getter(v15);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v47);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_269189000, v17, v18, "CallClient received valid event reception: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v27 = v23;
      v16 = v42;
      MEMORY[0x26D632230](v27, -1, -1);
      v28 = v21;
      v5 = v43;
      MEMORY[0x26D632230](v28, -1, -1);
    }

    v29 = v5[1];
    v29(v13, v4);
    v30 = type metadata accessor for CallClient();
    lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallClient and conformance CallClient, type metadata accessor for CallClient);
    v31 = static Clientele.contains<A>(_:)(v46, v30);
    if (v31)
    {
      v32 = v31;
      v33 = MEMORY[0x277D85000];
      v34 = v45;
      v35 = (*((*MEMORY[0x277D85000] & *v31) + 0xC0))(v45, 0);
      v36 = (*((*v33 & *v32) + 0x70))(v35);
      if (v36)
      {
        v37 = v36;
        if ([v36 respondsToSelector_])
        {
          [v37 stateMachineWithClient:v32 didReceiveEvent:v34];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v44(v10, v16, v4);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_269189000, v38, v39, "Observer for darwin callback handler not found", v40, 2u);
        MEMORY[0x26D632230](v40, -1, -1);
      }

      v29(v10, v4);
    }
  }
}

uint64_t one-time initialization function for framework()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.framework);
  __swift_project_value_buffer(v0, static Logger.framework);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.framework.unsafeMutableAddressor()
{
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.framework);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.framework.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.framework);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id one-time initialization function for attending()
{
  type metadata accessor for State();
  v0 = *State.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x6E69646E65747441, 0xE900000000000067, v0, implicit closure #1 in variable initialization expression of static State.attending, 0);
  static State.attending = result;
  return result;
}

void *implicit closure #1 in variable initialization expression of static State.attending(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v1 = *State.analyzing.unsafeMutableAddressor();
  v2 = v1;
  return v1;
}

uint64_t *State.attending.unsafeMutableAddressor()
{
  if (one-time initialization token for attending != -1)
  {
    swift_once();
  }

  return &static State.attending;
}

id static State.attending.getter()
{
  if (one-time initialization token for attending != -1)
  {
    swift_once();
  }

  v1 = static State.attending;

  return v1;
}

id one-time initialization function for understanding()
{
  type metadata accessor for State();
  v0 = *State.listening.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x6174737265646E55, 0xED0000676E69646ELL, v0, implicit closure #1 in variable initialization expression of static State.understanding, 0);
  static State.understanding = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static State.understanding(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 8)
  {
    if (a1 == 6)
    {
      v2 = State.processing.unsafeMutableAddressor();
      goto LABEL_12;
    }

    if (a1 == 7)
    {
      v2 = State.postResponse.unsafeMutableAddressor();
      goto LABEL_12;
    }
  }

  else
  {
    switch(a1)
    {
      case 13:
        v2 = State.available.unsafeMutableAddressor();
        goto LABEL_12;
      case 10:
        v2 = State.resting.unsafeMutableAddressor();
        goto LABEL_12;
      case 9:
        v2 = State.responding.unsafeMutableAddressor();
LABEL_12:
        v1 = *v2;
        v3 = *v2;
        break;
    }
  }

  return v1;
}

uint64_t *State.understanding.unsafeMutableAddressor()
{
  if (one-time initialization token for understanding != -1)
  {
    swift_once();
  }

  return &static State.understanding;
}

id static State.understanding.getter()
{
  if (one-time initialization token for understanding != -1)
  {
    swift_once();
  }

  v1 = static State.understanding;

  return v1;
}

uint64_t one-time initialization function for sharedLogger()
{
  v0 = [objc_opt_self() sharedStream];
  v1 = type metadata accessor for InstrumentationManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = specialized InstrumentationManager.init(_:)(v0);
  result = swift_unknownObjectRelease();
  static InstrumentationManager.sharedLogger = v4;
  return result;
}

uint64_t *InstrumentationManager.sharedLogger.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedLogger != -1)
  {
    swift_once();
  }

  return &static InstrumentationManager.sharedLogger;
}

uint64_t static InstrumentationManager.sharedLogger.getter()
{
  if (one-time initialization token for sharedLogger != -1)
  {
    swift_once();
  }
}

uint64_t key path setter for InstrumentationManager.currentSessionIdentifier : InstrumentationManager(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  return (*(**a2 + 120))(v8);
}

uint64_t InstrumentationManager.currentSessionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10SiriStates22InstrumentationManager_currentSessionIdentifier;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t InstrumentationManager.currentSessionIdentifier.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SiriStates22InstrumentationManager_currentSessionIdentifier;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t InstrumentationManager.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = specialized InstrumentationManager.init(_:)(a1);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t InstrumentationManager.init(_:)(uint64_t a1)
{
  v1 = specialized InstrumentationManager.init(_:)(a1);
  swift_unknownObjectRelease();
  return v1;
}

void InstrumentationManager.logStateTransition<A>(previousState:currentState:event:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v11 = *(a5 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](a1, a2);
  v100 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v104 = &v84 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v102 = &v84 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v101 = &v84 - v22;
  v106 = type metadata accessor for Logger();
  v23 = *(v106 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v106, v25);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v103 = &v84 - v30;
  v93 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(*(AssociatedTypeWitness - 8) + 64);
  v34 = MEMORY[0x28223BE20](AssociatedTypeWitness, v33);
  v95 = &v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v38 = *(v37 + 16);
  v99 = a3;
  v96 = v37 + 16;
  v94 = v38;
  v38(&v84 - v39, a3, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSY_pSS8RawValueSYRts_XPMd, &_sSY_pSS8RawValueSYRts_XPMR);
  v97 = AssociatedTypeWitness;
  v40 = swift_dynamicCast();
  v105 = a1;
  if (v40)
  {
    v98 = v9;
    __swift_project_boxed_opaque_existential_1(v109, v109[3]);
    v9 = v98;
    dispatch thunk of RawRepresentable.rawValue.getter();
    v41 = v108;
    v91 = v107;
    __swift_destroy_boxed_opaque_existential_1Tm(v109);
    v42 = Logger.framework.unsafeMutableAddressor();
    (*(v23 + 16))(v103, v42, v106);
    v43 = a1;
    v44 = v11[2];
    v44(v101, v43, a5);
    v44(v102, v9, a5);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    v92 = v41;

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v90 = v23;
      v48 = v47;
      v86 = swift_slowAlloc();
      v109[0] = v86;
      *v48 = 136315906;
      v49 = _typeName(_:qualified:)();
      v85 = v46;
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v109);
      v84 = v45;
      v52 = v51;

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      v53 = v93;
      v88 = v44;
      v54 = *(v93 + 56);
      v55 = v101;
      v56 = v54(a5, v93);
      v87 = (v11 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v58 = v57;
      v89 = v28;
      v59 = v11[1];
      v59(v55, a5);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v109);

      *(v48 + 14) = v60;
      *(v48 + 22) = 2080;
      v61 = v102;
      v62 = v54(a5, v53);
      v9 = v98;
      v63 = v62;
      v65 = v64;
      v59(v61, a5);
      v28 = v89;
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, v109);
      v44 = v88;

      *(v48 + 24) = v66;
      *(v48 + 32) = 2080;
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, v109);

      *(v48 + 34) = v67;
      v68 = v84;
      _os_log_impl(&dword_269189000, v84, v85, "%s transition from=%s to=%s event=%s", v48, 0x2Au);
      v69 = v86;
      swift_arrayDestroy();
      MEMORY[0x26D632230](v69, -1, -1);
      v70 = v48;
      v23 = v90;
      MEMORY[0x26D632230](v70, -1, -1);
    }

    else
    {

      v71 = v11[1];
      v71(v102, a5);
      v71(v101, a5);
    }

    (*(v23 + 8))(v103, v106);
    v44(v104, v105, a5);
  }

  else
  {
    v44 = v11[2];
    v44(v104, v105, a5);
  }

  type metadata accessor for State();
  if (swift_dynamicCast())
  {
    v72 = v109[0];
    v44(v100, v9, a5);
    if (swift_dynamicCast())
    {
      v73 = v109[0];
      v94(v95, v99, v97);
      if (swift_dynamicCast())
      {
        v74 = v109[0];
        v75 = mach_absolute_time();
        InstrumentationManager.doLogStateTransition(previousState:currentState:event:timestamp:)(v72, v73, v74, v75);

        return;
      }
    }
  }

  v76 = Logger.framework.unsafeMutableAddressor();
  (*(v23 + 16))(v28, v76, v106);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v109[0] = v80;
    *v79 = 136315138;
    v81 = _typeName(_:qualified:)();
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v109);

    *(v79 + 4) = v83;
    _os_log_impl(&dword_269189000, v77, v78, "No SELF state transition support added for type=%s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    MEMORY[0x26D632230](v80, -1, -1);
    MEMORY[0x26D632230](v79, -1, -1);
  }

  (*(v23 + 8))(v28, v106);
}

uint64_t InstrumentationManager.doLogStateTransition(previousState:currentState:event:timestamp:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v70 = a3;
  v71 = a4;
  v73 = a1;
  v74 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = *(v78 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v77 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = *(v75 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v66 - v18;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v66 - v28;
  v72 = swift_allocBox();
  v31 = v30;
  v32 = type metadata accessor for UUID();
  (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  v33 = *(v5 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_sruifUserDefaults);
  if (v33 && (v34 = MEMORY[0x26D631880](0xD00000000000001DLL, 0x80000002691AC930), v35 = [v33 stringForKey_], v34, v35))
  {
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = Logger.framework.unsafeMutableAddressor();
    (*(v21 + 16))(v29, v38, v20);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v67 = v5;
      v42 = v41;
      v43 = swift_slowAlloc();
      v68 = v14;
      v44 = v43;
      aBlock[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v37, aBlock);
      _os_log_impl(&dword_269189000, v39, v40, "#SRST RequestLinking turnID retrieved turn=%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      v45 = v44;
      v14 = v68;
      MEMORY[0x26D632230](v45, -1, -1);
      v46 = v42;
      v5 = v67;
      MEMORY[0x26D632230](v46, -1, -1);
    }

    (*(v21 + 8))(v29, v20);
    UUID.init(uuidString:)();

    outlined assign with take of UUID?(v19, v31);
  }

  else
  {
    v47 = Logger.framework.unsafeMutableAddressor();
    (*(v21 + 16))(v26, v47, v20);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v5;
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_269189000, v48, v49, "#SRST RequestLinking turnID not retrieved turn=nil", v51, 2u);
      v52 = v51;
      v5 = v50;
      MEMORY[0x26D632230](v52, -1, -1);
    }

    (*(v21 + 8))(v26, v20);
  }

  v53 = *(v5 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_queue);
  v54 = swift_allocObject();
  v56 = v73;
  v55 = v74;
  v54[2] = v73;
  v54[3] = v55;
  v58 = v70;
  v57 = v71;
  v54[4] = v5;
  v54[5] = v58;
  v54[6] = v72;
  v54[7] = v57;
  aBlock[4] = partial apply for closure #1 in InstrumentationManager.doLogStateTransition(previousState:currentState:event:timestamp:);
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_0;
  v59 = _Block_copy(aBlock);
  v60 = v53;
  v61 = v56;
  v62 = v55;

  static DispatchQoS.unspecified.getter();
  v80 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v63 = v77;
  v64 = v79;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26D6319C0](0, v14, v63, v59);
  _Block_release(v59);

  (*(v78 + 8))(v63, v64);
  (*(v75 + 8))(v14, v76);
}