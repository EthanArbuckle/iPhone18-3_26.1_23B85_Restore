uint64_t type metadata accessor for ActivityPausedRingsObserver()
{
  result = type metadata singleton initialization cache for ActivityPausedRingsObserver;
  if (!type metadata singleton initialization cache for ActivityPausedRingsObserver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ActivityPausedRingsObserver()
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
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

uint64_t type metadata accessor for WorkoutConfigurationOccurrenceStore()
{
  result = type metadata singleton initialization cache for WorkoutConfigurationOccurrenceStore;
  if (!type metadata singleton initialization cache for WorkoutConfigurationOccurrenceStore)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutConfigurationOccurrenceStore()
{
  type metadata accessor for Published<Int>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Int>()
{
  if (!lazy cache variable for type metadata for Published<Int>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Int>);
    }
  }
}

char *WorkoutConfigurationOccurrenceStore.__allocating_init(applicationSignificantTimeChangeNotificationName:)(void *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v2 = static WorkoutCoreInjector.healthStore;
  v3 = objc_allocWithZone(type metadata accessor for QueryClient());
  v4 = QueryClient.init(_:)(v2);
  type metadata accessor for UnlockedSinceBootMonitor();
  v5 = swift_allocObject();
  *(v5 + 16) = -1;
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for backgroundAssertionManager != -1)
  {
    swift_once();
  }

  v6 = static WorkoutCoreInjector.backgroundAssertionManager;

  return _s11WorkoutCore0A28ConfigurationOccurrenceStoreC11queryClient24unlockedSinceBootMonitor26backgroundAssertionManager48applicationSignificantTimeChangeNotificationName21activityMoveModeBlockAcA05QueryG8Protocol_p_AA08UnlockedijkZ0_pAA010BackgroundmnZ0_pSo014NSNotificationT0aSo010HKActivityvW0VyctcfCTfq4eeennn_nAA0yG0C_AA010BackgroundmN0CAA08UnlockedijK0CTt4g5(v4, v5, v6, a1, closure #1 in WorkoutConfigurationOccurrenceStore.init(applicationSignificantTimeChangeNotificationName:), 0);
}

id one-time initialization function for shared(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void *a4)
{
  result = [objc_allocWithZone(a3(a2)) init];
  *a4 = result;
  return result;
}

id one-time initialization function for healthStore()
{
  result = [objc_opt_self() fiui_sharedHealthStoreForCarousel];
  if (result)
  {
    static WorkoutCoreInjector.healthStore = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v0 = static WorkoutCoreInjector.healthStore;
  static HeartRateConfiguration.healthStore = static WorkoutCoreInjector.healthStore;

  return v0;
}

char *QueryClient.init(_:)(void *a1)
{
  v27 = a1;
  v24 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v24 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  MEMORY[0x28223BE20]();
  v26 = OBJC_IVAR____TtC11WorkoutCore11QueryClient_serverQueue;
  v23[0] = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v25 = "finalizedIdentifiers";
  static DispatchQoS.userInteractive.getter();
  v30 = MEMORY[0x277D84F90];
  v23[3] = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x277D85230]);
  v23[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v7 = *MEMORY[0x277D85260];
  v8 = v1 + 104;
  v9 = *(v1 + 104);
  v23[1] = v8;
  v10 = v24;
  v9(v4, v7, v24);
  *&v28[v26] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v26 = OBJC_IVAR____TtC11WorkoutCore11QueryClient_clientQueue;
  static DispatchQoS.userInteractive.getter();
  v30 = MEMORY[0x277D84F90];
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9(v4, v7, v10);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = v28;
  *&v28[v26] = v11;
  *&v12[OBJC_IVAR____TtC11WorkoutCore11QueryClient_pluginProxyProvider] = 0;
  v13 = v12;
  Client = type metadata accessor for QueryClient();
  v29.receiver = v13;
  v29.super_class = Client;
  v15 = objc_msgSendSuper2(&v29, sel_init);
  v16 = objc_allocWithZone(MEMORY[0x277CCD7A0]);
  v17 = v15;
  v18 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B4643B0);
  v19 = v27;
  v20 = [v16 initWithHealthStore:v27 pluginIdentifier:v18 exportedObject:v17];

  v21 = *&v17[OBJC_IVAR____TtC11WorkoutCore11QueryClient_pluginProxyProvider];
  *&v17[OBJC_IVAR____TtC11WorkoutCore11QueryClient_pluginProxyProvider] = v20;

  return v17;
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

char *_s11WorkoutCore0A28ConfigurationOccurrenceStoreC11queryClient24unlockedSinceBootMonitor26backgroundAssertionManager48applicationSignificantTimeChangeNotificationName21activityMoveModeBlockAcA05QueryG8Protocol_p_AA08UnlockedijkZ0_pAA010BackgroundmnZ0_pSo014NSNotificationT0aSo010HKActivityvW0VyctcfCTfq4eeennn_nAA0yG0C_AA010BackgroundmN0CAA08UnlockedijK0CTt4g5(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for WorkoutConfigurationOccurrenceStore();
  v13 = objc_allocWithZone(v12);
  v39[3] = type metadata accessor for QueryClient();
  v39[4] = &protocol witness table for QueryClient;
  v39[0] = a1;
  v38[3] = type metadata accessor for UnlockedSinceBootMonitor();
  v38[4] = &protocol witness table for UnlockedSinceBootMonitor;
  v38[0] = a2;
  v37[3] = type metadata accessor for BackgroundAssertionManager();
  v37[4] = &protocol witness table for BackgroundAssertionManager;
  v37[0] = a3;
  v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loaded] = 0;
  v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurationsDeduplicated] = 0;
  *&v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore____lazy_storage___managedConfigurationsStore] = 0;
  *&v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete] = 1;
  *&v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncWorkoutEntityNotifyToken] = -1;
  outlined init with copy of UnlockedSinceBootMonitorProtocol(v39, &v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient]);
  v33 = a1;

  v32 = a3;
  v14 = MEMORY[0x277D84F90];
  *&v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11WorkoutCore0E13ConfigurationCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_alternativeConfigurations] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11WorkoutCore0E13ConfigurationCTt0g5Tf4g_n(v14);
  swift_beginAccess();
  v36 = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  v15 = &v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_activityMoveModeBlock];
  *v15 = a5;
  v15[1] = a6;
  outlined init with copy of UnlockedSinceBootMonitorProtocol(v38, &v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor]);
  outlined init with copy of UnlockedSinceBootMonitorProtocol(v37, &v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_backgroundAssertionManager]);
  *&v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_applicationSignificantTimeChangeNotificationName] = a4;
  v35.receiver = v13;
  v35.super_class = v12;

  v31 = a4;
  v16 = objc_msgSendSuper2(&v35, sel_init);
  v17 = v16 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
  swift_beginAccess();
  v19 = *(v17 + 24);
  v18 = *(v17 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v17, v19);
  v20 = *(v18 + 16);
  v21 = v16;
  v20(v16, &protocol witness table for WorkoutConfigurationOccurrenceStore, v19, v18);
  swift_endAccess();
  v22 = NSNotificationNameForSyncedPersistenceType();
  v23 = [v22 UTF8String];
  _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = v25;
  aBlock[4] = partial apply for closure #1 in WorkoutConfigurationOccurrenceStore.init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  aBlock[3] = &block_descriptor_134;
  v27 = _Block_copy(aBlock);
  v28 = v22;

  v29 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncWorkoutEntityNotifyToken;
  swift_beginAccess();
  notify_register_dispatch(v23, &v21[v29], v24, v27);
  swift_endAccess();

  _Block_release(v27);

  __swift_destroy_boxed_opaque_existential_1Tm_6(v37);
  __swift_destroy_boxed_opaque_existential_1Tm_6(v38);
  __swift_destroy_boxed_opaque_existential_1Tm_6(v39);

  return v21;
}

uint64_t type metadata accessor for NSNumber(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo8NSNumberCMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo8NSNumberCMaTm_1(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_1(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_2(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_5(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_6(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_7(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id BackgroundAssertionManager.init()()
{
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v15);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v14 = OBJC_IVAR___WOBackgroundAssertionManager_serialQueue;
  v13[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_1(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v15);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v16;
  *&v16[v14] = v8;
  *&v9[OBJC_IVAR___WOBackgroundAssertionManager_assertions] = MEMORY[0x277D84F98];
  v10 = v9;
  v11 = type metadata accessor for BackgroundAssertionManager();
  v17.receiver = v10;
  v17.super_class = v11;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_6(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_7(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of UnlockedSinceBootMonitorProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for WorkoutConfiguration()
{
  result = type metadata singleton initialization cache for WorkoutConfiguration;
  if (!type metadata singleton initialization cache for WorkoutConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_1(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_2(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_3(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_5(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_6(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_7(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_9(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_10(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_11(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_12(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_13(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_14(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_15(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_16(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_17(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_18(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_19(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with copy of ForegroundProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void type metadata completion function for WorkoutConfiguration()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      type metadata accessor for Date?(319, &lazy cache variable for type metadata for WorkoutPlan.Route?, MEMORY[0x277CE3FA8]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        type metadata accessor for Date?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for Date?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void _s10Foundation4DateVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

char *LocationProvider.init(foregroundProvider:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OBJC_IVAR___WOCoreLocationProvider_queue;
  _sSo17OS_dispatch_queueCMaTm_15(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v15 = static OS_dispatch_queue.main.getter();
  *&v2[v14] = v15;
  *&v2[OBJC_IVAR___WOCoreLocationProvider_locationManager] = 0;
  v2[OBJC_IVAR___WOCoreLocationProvider_isTrackingLocations] = 0;
  *&v2[OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimeout] = 0x403E000000000000;
  v16 = &v2[OBJC_IVAR___WOCoreLocationProvider_manualLaneSelection];
  *v16 = 0;
  v16[8] = 1;
  *&v2[OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimer] = 0;
  *&v2[OBJC_IVAR___WOCoreLocationProvider_cancellables] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR___WOCoreLocationProvider_currentAuthorizationStatus] = 0;
  *v13 = v15;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v17 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v15)
  {
    outlined init with copy of ForegroundProviding(a1, &v2[OBJC_IVAR___WOCoreLocationProvider_foregroundProvider]);
    *&v2[OBJC_IVAR___WOCoreLocationProvider_locationRequests] = MEMORY[0x277D84F90];
    *&v2[OBJC_IVAR___WOCoreLocationProvider_observers] = [objc_opt_self() weakObjectsHashTable];
    if (one-time initialization token for defaultTrackInfo == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v47 = a1;
  *&v2[OBJC_IVAR___WOCoreLocationProvider_trackInfo] = static RunningTrackInfo.defaultTrackInfo;
  v18 = type metadata accessor for LocationProvider();
  v48.receiver = v2;
  v48.super_class = v18;

  v19 = objc_msgSendSuper2(&v48, sel_init);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = *&v21[OBJC_IVAR___WOCoreLocationProvider_queue];
    v28 = v21;
    v29 = v27;
    v30 = MEMORY[0x20F2E6C00](v24, v26);
  }

  else
  {
    v31 = *&v21[OBJC_IVAR___WOCoreLocationProvider_queue];
    v32 = v21;
    v29 = v31;
    v30 = 0;
  }

  v33 = [objc_allocWithZone(MEMORY[0x277CBFC10]) initWithEffectiveBundleIdentifier:v30 delegate:v21 onQueue:v29];

  v34 = *&v21[OBJC_IVAR___WOCoreLocationProvider_locationManager];
  *&v21[OBJC_IVAR___WOCoreLocationProvider_locationManager] = v33;
  v35 = v33;

  if (v35)
  {
    [v35 setTrackRunInfoEnabled:1];
    [v35 setActivityType:3];
  }

  else
  {
    if (one-time initialization token for location != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static WOLog.location);
    v35 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_20AEA4000, v35, v37, "[LocationProvider] Failed to construct a location manager", v38, 2u);
      MEMORY[0x20F2E9420](v38, -1, -1);
    }
  }

  v39 = *&v21[OBJC_IVAR___WOCoreLocationProvider_foregroundProvider + 24];
  v40 = *&v21[OBJC_IVAR___WOCoreLocationProvider_foregroundProvider + 32];
  v41 = __swift_project_boxed_opaque_existential_1(&v21[OBJC_IVAR___WOCoreLocationProvider_foregroundProvider], v39);
  v42 = *(v39 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v47 - v44;
  (*(v42 + 16))(&v47 - v44);
  (*(v40 + 8))(v39, v40);
  (*(v42 + 8))(v45, v39);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm_11(v47);
  return v21;
}

uint64_t sub_20AEAA38C()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t one-time initialization function for defaultTrackInfo()
{
  type metadata accessor for RunningTrackInfo();
  v0 = swift_allocObject();
  result = RunningTrackInfo.init(location:)(0);
  static RunningTrackInfo.defaultTrackInfo = v0;
  return result;
}

void closure #1 in LocationProvider.init(foregroundProvider:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    LocationProvider.onEffectiveVisibilityChange()();
  }
}

uint64_t LocationProvider.onEffectiveVisibilityChange()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v0[OBJC_IVAR___WOCoreLocationProvider_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in LocationProvider.onEffectiveVisibilityChange();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_45_4;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

uint64_t sub_20AEAA6F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

char *LocationRequestManager.init()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v0 - 8);
  v36 = v0;
  v1 = *(v35 + 64);
  MEMORY[0x28223BE20](v0);
  v34 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = type metadata accessor for DispatchQoS();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR___NLLocationRequestManager_queue;
  v27 = type metadata accessor for OS_dispatch_queue();
  aBlock = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  if (one-time initialization token for bundleIdentifier != -1)
  {
    swift_once();
  }

  v14 = static LocationRequestManager.bundleIdentifier;
  v13 = *algn_280CF23A8;

  aBlock = v14;
  v39 = v13;
  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B46D920);
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_7(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v29 + 104))(v6, *MEMORY[0x277D85260], v30);
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = v31;
  *&v31[v28] = v15;
  *&v16[OBJC_IVAR___NLLocationRequestManager_locationManager] = 0;
  *&v16[OBJC_IVAR___NLLocationRequestManager_authorizationCompletionBlocks] = MEMORY[0x277D84F90];
  v17 = type metadata accessor for LocationRequestManager();
  v44.receiver = v16;
  v44.super_class = v17;
  v18 = objc_msgSendSuper2(&v44, sel_init);
  v19 = *&v18[OBJC_IVAR___NLLocationRequestManager_queue];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = partial apply for closure #1 in LocationRequestManager.init();
  v43 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v41 = &block_descriptor_89;
  v21 = _Block_copy(&aBlock);
  v22 = v18;
  v23 = v19;

  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v24 = v34;
  v25 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v12, v24, v21);
  _Block_release(v21);

  (*(v35 + 8))(v24, v25);
  (*(v32 + 8))(v12, v33);

  return v22;
}

uint64_t sub_20AEAAD64()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t protocol witness for UnlockedSinceBootMonitorProtocol.delegate.setter in conformance UnlockedSinceBootMonitor(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void one-time initialization function for bundleIdentifier()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0x800000020B4605A0;
    v2 = 0xD00000000000001BLL;
  }

  static LocationRequestManager.bundleIdentifier = v2;
  *algn_280CF23A8 = v4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_2(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_3(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_5(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_6(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_7(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_9(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_10(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_11(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_12(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_13(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_14(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_15(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_16(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_17(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_18(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_19(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_20(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_21(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_22(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_23(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t RunningTrackInfo.init(location:)(void *a1)
{
  *(v1 + 16) = a1;
  v2 = a1;
  v3 = [v2 trackRunInfo];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 trackProximity];
    v6 = 0x1020303uLL >> (8 * v5);
    if (v5 >= 5)
    {
      LOBYTE(v6) = 3;
    }

    *(v1 + 24) = v6;
    *(v1 + 32) = [v4 laneNumber];
    [v4 lapInfo];
    *(v1 + 40) = v9;
    *(v1 + 48) = [v4 laneCount];
    v7 = [v4 trackId];

    v2 = v4;
  }

  else
  {
    *(v1 + 24) = 3;
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 32) = 0;
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  *(v1 + 56) = v7;
  return v1;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void closure #1 in LocationRequestManager.init()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() mainBundle];
    v3 = [v2 bundleIdentifier];

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      v7 = *&v1[OBJC_IVAR___NLLocationRequestManager_queue];
      v8 = v1;
      v9 = v7;
      v10 = MEMORY[0x20F2E6C00](v4, v6);
    }

    else
    {
      v11 = *&v1[OBJC_IVAR___NLLocationRequestManager_queue];
      v12 = v1;
      v9 = v11;
      v10 = 0;
    }

    v13 = [objc_allocWithZone(MEMORY[0x277CBFC10]) initWithEffectiveBundleIdentifier:v10 delegate:v1 onQueue:v9];

    v14 = *&v1[OBJC_IVAR___NLLocationRequestManager_locationManager];
    *&v1[OBJC_IVAR___NLLocationRequestManager_locationManager] = v13;
  }
}

uint64_t block_destroy_helper_21(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

Swift::Void __swiftcall LocationRequestManager.locationManagerDidChangeAuthorization(_:)(CLLocationManager a1)
{
  isa = a1.super.isa;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + OBJC_IVAR___NLLocationRequestManager_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v18 = [(objc_class *)isa _authorizationStatus];
    v19 = OBJC_IVAR___NLLocationRequestManager_authorizationCompletionBlocks;
    swift_beginAccess();
    v20 = *(v1 + v19);
    v21 = MEMORY[0x277D84F90];
    *(v1 + v19) = MEMORY[0x277D84F90];
    type metadata accessor for OS_dispatch_queue();
    v22 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = v18;
    aBlock[4] = partial apply for closure #1 in LocationRequestManager.locationManagerDidChangeAuthorization(_:);
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_12_4;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = v21;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v10, v6, v24);
    _Block_release(v24);

    (*(v27 + 8))(v6, v3);
    (*(v7 + 8))(v10, v26);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20AEAC6E8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

const char *WorkoutFeatures.feature.getter()
{
  result = "AnnounceVoiceFeedback";
  switch(*v0)
  {
    case 1:
      result = "SplitSegmentAveragePower";
      break;
    case 2:
      result = "IntervalAverageCadence";
      break;
    case 3:
      result = "IntervalActiveEnergy";
      break;
    case 4:
      result = "MapPageView";
      break;
    case 5:
      result = "InSessionPreferences";
      break;
    case 6:
      result = "SwiftUISummary";
      break;
    case 7:
      result = "WatchRemoteViewPreview";
      break;
    case 8:
      result = "SwimmingSegments";
      break;
    case 9:
      result = "RepeatIndicatorEverywhere";
      break;
    case 0xA:
      result = "MediaPlayback";
      break;
    case 0xB:
      result = "WorkoutPlatterRedesign";
      break;
    case 0xC:
      result = "ManualLogging";
      break;
    case 0xD:
      result = "MirroredStart";
      break;
    case 0xE:
      result = "Trimming";
      break;
    case 0xF:
      result = "Kahana";
      break;
    case 0x10:
      result = "UnmaskFitness";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t one-time initialization function for default(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
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

uint64_t protocol witness for BackgroundAssertionManagerProtocol.acquire(type:uuid:explanation:timeout:) in conformance BackgroundAssertionManager(char *a1)
{
  v2 = *(*v1 + OBJC_IVAR___WOBackgroundAssertionManager_serialQueue);
  v4 = *a1;
  OS_dispatch_queue.sync<A>(execute:)();
  return v5;
}

void partial apply for closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)(uint64_t *a1@<X8>)
{
  closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), a1, *(v1 + 56));
}

{
  partial apply for closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)(a1);
}

id specialized NestedDictionary.get(_:_:)(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = *(*(a3 + 56) + 8 * v5);
    if (*(v7 + 16))
    {

      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 8 * v8);

        return v10;
      }
    }
  }

  return 0;
}

uint64_t static WOLog.default.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

id SFPairedWatchWristStateToString(uint64_t a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v2 = MEMORY[0x277D82BE0](@"Wrist detect disabled");
        break;
      case 2:
        v2 = MEMORY[0x277D82BE0](@"Off");
        break;
      case 3:
        v2 = MEMORY[0x277D82BE0](@"On");
        break;
      default:
        v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Undefined state (%ld)", a1];
        break;
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"Unknown");
  }

  return v2;
}

uint64_t __os_log_helper_16_2_3_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

Swift::Void __swiftcall WorkoutDeviceWatchScanner.workoutDevicePairedWatchControllerDidUpdateStatus(_:)(Swift::Bool a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v2 - 8);
  v3 = *(v15 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_14(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in WorkoutDeviceWatchScanner.workoutDevicePairedWatchControllerDidUpdateStatus(_:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_49;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v13);
  _Block_release(v13);

  (*(v15 + 8))(v5, v2);
  (*(v6 + 8))(v9, v14);
}

uint64_t sub_20AEAD30C()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEAD344()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t type metadata accessor for WorkoutDeviceWatchScanner()
{
  result = type metadata singleton initialization cache for WorkoutDeviceWatchScanner;
  if (!type metadata singleton initialization cache for WorkoutDeviceWatchScanner)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *WorkoutConfigurationOccurrenceStore.topSuggested(for:)(id a1)
{
  swift_getObjectType();
  v2 = WorkoutConfigurationOccurrenceStore.configurations(for:)(a1);
  v50 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v2 = v19)
  {
    v46 = a1;
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v47 = v2;
    a1 = (v2 + 32);
    while (1)
    {
      if (v5)
      {
        v2 = MEMORY[0x20F2E7A20](v4, v47);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_20;
        }

        v2 = *(a1 + v4);
      }

      v7 = v2;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v9 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType();
      v48[0] = MEMORY[0x20F2E7290](5, &type metadata for ConfigurationType, v9);
      specialized Set._Variant.insert(_:)(&v49, 0);
      specialized Set._Variant.insert(_:)(&v49, 1);
      specialized Set._Variant.insert(_:)(&v49, 2);
      specialized Set._Variant.insert(_:)(&v49, 3);
      specialized Set._Variant.insert(_:)(&v49, 4);
      v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      if (*(v48[0] + 16) && (v11 = v7[v10], v12 = *(v48[0] + 40), Hasher.init(_seed:)(), MEMORY[0x20F2E7FF0](v11 + 1), v13 = Hasher._finalize()(), v14 = -1 << *(v48[0] + 32), v15 = v13 & ~v14, ((*(v48[0] + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
      {
        v16 = ~v14;
        while (*(*(v48[0] + 48) + v15) != v11)
        {
          v15 = (v15 + 1) & v16;
          if (((*(v48[0] + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v17 = v50[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = specialized ContiguousArray._endMutation()();
      }

      else
      {
LABEL_4:
      }

      if (v4 == i)
      {
        v18 = v50;
        a1 = v46;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v19 = v2;
    i = __CocoaSet.count.getter();
  }

  v18 = MEMORY[0x277D84F90];
LABEL_23:

  LOBYTE(v48[0]) = 0;
  v20 = static WorkoutConfigurationOccurrenceStore.sortedWorkoutConfigurations(_:filterType:activityType:currentLocation:)(v18, v48, a1, 0);

  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

LABEL_36:

    if ([a1 identifier] == 82)
    {
      return 0;
    }

    v38 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
    a1 = specialized static WorkoutConfiguration.make(activityType:goal:)(a1, v38);

    if (one-time initialization token for app == -1)
    {
      goto LABEL_39;
    }

    goto LABEL_43;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_36;
  }

LABEL_25:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x20F2E7A20](0, v20);
    goto LABEL_28;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_43:
    swift_once();
LABEL_39:
    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static WOLog.app);
    v25 = a1;
    v22 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48[0] = v42;
      *v41 = 136315138;
      v43 = WorkoutConfiguration.logDisplayName.getter();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v48);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_20AEA4000, v22, v40, "[topSuggested] workout_configuration not found, created transient: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v42);
      MEMORY[0x20F2E9420](v42, -1, -1);
      MEMORY[0x20F2E9420](v41, -1, -1);
    }

    goto LABEL_33;
  }

  v21 = *(v20 + 32);
LABEL_28:
  v22 = v21;

  v23 = specialized static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(v22, a1, 1);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static WOLog.app);
  v25 = v23;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v50 = v30;
    *v28 = 138412546;
    v31 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v32 = *&v25[v31];
    *(v28 + 4) = v32;
    *v29 = v32;
    *(v28 + 12) = 2080;
    v33 = v32;
    v34 = WorkoutConfiguration.logDisplayName.getter();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v50);

    *(v28 + 14) = v36;
    _os_log_impl(&dword_20AEA4000, v26, v27, "[topSuggested] occurrence (%@) found for workout_configuration: %s", v28, 0x16u);
    _sSo8NSObjectCSgWOhTm_3(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v30);
    MEMORY[0x20F2E9420](v30, -1, -1);
    MEMORY[0x20F2E9420](v28, -1, -1);
  }

LABEL_33:
  return v25;
}

id CompoundActivityTypeProvider.lastGoal(for:)(char *a1)
{
  v2 = *(v1 + 24);
  v3 = WorkoutConfigurationOccurrenceStore.recentWorkoutConfiguration(for:)(a1);
  if (v3 && (type metadata accessor for GoalWorkoutConfiguration(), swift_dynamicCastClass()))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v6;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];

    return v5;
  }
}

void *WorkoutConfigurationOccurrenceStore.configurations(for:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_activityMoveModeBlock);
  v5 = *(v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_activityMoveModeBlock + 8);
  v6 = v4();
  v7 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  if (v6 == 2)
  {
    swift_beginAccess();
    v8 = *(v2 + v7);

    v10 = specialized _NativeDictionary.filter(_:)(v9);
  }

  else
  {
    swift_beginAccess();
    v10 = *(v2 + v7);
  }

  v11 = a1;
  v12 = specialized _NativeDictionary.filter(_:)(v10, v11);

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H16ChartDataElementC_Tt1g5Tm(*(v12 + 16), 0);
    v15 = specialized Sequence._copySequenceContents(initializing:)(&v18, v14 + 4, v13, v12);
    sub_20AEBDF2C();
    if (v15 == v13)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v14 = MEMORY[0x277D84F90];
LABEL_8:
  if ((*(v2 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurationsDeduplicated) & 1) == 0)
  {
    v16 = WorkoutConfigurationOccurrenceStore.deduplicate(_:)(v14);

    return v16;
  }

  return v14;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v49 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v43 = &v38 - v13;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV11WorkoutCore0E13ConfigurationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11WorkoutCore0E13ConfigurationCGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v48 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v40 = a4;
  v41 = v9 + 16;
  v47 = v9 + 32;
  v17 = v48 + 64;
  v39 = a1;
  v42 = v9;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v22 = a4[6];
    v46 = *(v9 + 72);
    v23 = v43;
    (*(v9 + 16))(v43, v22 + v46 * v21, v8);
    v24 = *(a4[7] + 8 * v21);
    v45 = *(v9 + 32);
    v45(v49, v23, v8);
    v25 = v48;
    v26 = *(v48 + 40);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v27 = v24;
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v28 = -1 << *(v25 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      v9 = v42;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v17 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v9 = v42;
LABEL_26:
    *(v17 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v36 = v48;
    result = (v45)(*(v48 + 48) + v31 * v46, v49, v8);
    *(*(v36 + 56) + 8 * v31) = v27;
    ++*(v36 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a1 = v39;
    a4 = v40;
    v15 = v44;
    if (!a3)
    {
      return v48;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v48;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v44 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v49 = type metadata accessor for UUID();
  v47 = *(v49 - 8);
  v8 = *(v47 + 64);
  v9 = MEMORY[0x28223BE20](v49);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v38 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v40 = v47 + 16;
  v41 = result;
  v48 = v47 + 32;
  v17 = result + 64;
  v42 = a1;
  v39 = a4;
  v18 = v49;
  while (v15)
  {
    v19 = v11;
    v20 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v23 = v20 | (v16 << 6);
    v24 = a4[6];
    v25 = v47;
    v46 = *(v47 + 72);
    v26 = v43;
    (*(v47 + 16))(v43, v24 + v46 * v23, v18);
    v45 = *(a4[7] + 8 * v23);
    v27 = *(v25 + 32);
    v11 = v19;
    v27(v19, v26, v18);
    v14 = v41;
    v28 = *(v41 + 40);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      a1 = v42;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    a1 = v42;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = (v27)(*(v14 + 48) + v32 * v46, v11, v49);
    *(*(v14 + 56) + 8 * v32) = v45;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v39;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v21 = v16;
  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v22 = a1[v16];
    ++v21;
    if (v22)
    {
      v19 = v11;
      v20 = __clz(__rbit64(v22));
      v44 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void closure #4 in StandardActivityItemsDataSource.queryCompoundActivityPickerItems()(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.activityPicker);
  v7 = v5;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = a3;
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    v13 = [*&v8[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider] activityTypeKeyForActivityType_];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v27);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_20AEA4000, v9, v10, "Standard: activityType, key: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_7(v12);
    v18 = v12;
    a3 = v26;
    MEMORY[0x20F2E9420](v18, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  v19 = *&v8[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_occurrenceStore];
  v20 = WorkoutConfigurationOccurrenceStore.topSuggested(for:)(v7);
  v28 = 0;
  v21 = *&v8[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider];
  v22 = v7;
  v23 = [v21 lastGoalForActivityType_];
  v24 = objc_allocWithZone(type metadata accessor for StandardActivityPickerItem());
  v25 = specialized StandardActivityPickerItem.init(type:activityType:goal:topSuggested:)(&v28, v22, v23, v20);

  *a3 = v25;
}

id specialized Occurrence.__allocating_init(count:)(int a1)
{
  v22 = a1;
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21[-v8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-v13];
  Date.init()();
  v15 = v2[2];
  v15(v12, v14, v1);
  v15(v9, v14, v1);
  v15(v6, v14, v1);
  v16 = type metadata accessor for Occurrence();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC11WorkoutCore10Occurrence_count] = v22;
  v15(&v17[OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate], v12, v1);
  v15(&v17[OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate], v9, v1);
  v15(&v17[OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate], v6, v1);
  v23.receiver = v17;
  v23.super_class = v16;
  v18 = objc_msgSendSuper2(&v23, sel_init);
  v19 = v2[1];
  v19(v6, v1);
  v19(v9, v1);
  v19(v12, v1);
  v19(v14, v1);
  return v18;
}

uint64_t type metadata accessor for Occurrence()
{
  result = type metadata singleton initialization cache for Occurrence;
  if (!type metadata singleton initialization cache for Occurrence)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for GoalWorkoutConfiguration()
{
  result = type metadata singleton initialization cache for GoalWorkoutConfiguration;
  if (!type metadata singleton initialization cache for GoalWorkoutConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FIUIWorkoutActivityType(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_1(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t StandardActivityItemsDataSource.queryCompoundActivityPickerItems()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = *&v0[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_wheelchairUseProvider];
  v4 = [v3 isWheelchairUser];
  LODWORD(v5) = v0[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_swimmingSupported];
  v101 = OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_activityMoveMode;
  v6 = [v2 defaultActivityTypesWithIsWheelchairUser:v4 isSwimmingSupported:v0[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_swimmingSupported] activityMoveMode:*&v0[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_activityMoveMode]];
  v7 = v6;
  isa = v6;
  if (!v6)
  {
    type metadata accessor for FIUIWorkoutActivityType();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = Array._bridgeToObjectiveC()().super.isa;
  }

  v99 = isa;
  v100 = v7;
  v104 = v3;
  type metadata accessor for FIUIWorkoutActivityType();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = one-time initialization token for activityPicker;
  v11 = v6;
  if (v10 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.activityPicker);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20AEA4000, v13, v14, "Standard: defaultActivities", v15, 2u);
      MEMORY[0x20F2E9420](v15, -1, -1);
    }

    v97 = v9 >> 62;
    v105 = v2;
    v102 = v5;
    if (v9 >> 62)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v116 = v1;
    v115 = v9;
    if (v16)
    {
      v5 = 0;
      v109 = OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider;
      v17 = v9 & 0xC000000000000001;
      v113 = v9 & 0xFFFFFFFFFFFFFF8;
      v107 = v9 & 0xC000000000000001;
      do
      {
        if (v17)
        {
          v19 = MEMORY[0x20F2E7A20](v5, v9);
          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_19:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(v113 + 16))
          {
            __break(1u);
            goto LABEL_44;
          }

          v19 = *(v9 + 8 * v5 + 32);
          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_19;
          }
        }

        v20 = v19;
        v21 = v1;
        v22 = Logger.logObject.getter();
        v2 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v22, v2))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v119[0] = v24;
          *v23 = 136315138;
          v25 = [*&v1[v109] activityTypeKeyForActivityType_];
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v111 = v20;
          v27 = v9;
          v28 = v16;
          v30 = v29;

          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v30, v119);
          v16 = v28;
          v9 = v27;

          *(v23 + 4) = v31;
          v1 = v116;
          _os_log_impl(&dword_20AEA4000, v22, v2, "Standard: defaultActivity, key: %s)", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm_7(v24);
          MEMORY[0x20F2E9420](v24, -1, -1);
          v32 = v23;
          v17 = v107;
          MEMORY[0x20F2E9420](v32, -1, -1);
        }

        else
        {
        }

        ++v5;
        v18 = v9 == v16;
        v9 = v115;
      }

      while (!v18);
    }

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      v2 = v105;
      v5 = v102;
      if (v97)
      {
        v36 = __CocoaSet.count.getter();
      }

      else
      {
        v36 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v35 + 4) = v36;

      _os_log_impl(&dword_20AEA4000, v33, v34, "Standard: defaultActivities.count: %ld", v35, 0xCu);
      MEMORY[0x20F2E9420](v35, -1, -1);
    }

    else
    {

      v2 = v105;
      v5 = v102;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v37 = static WorkoutDevicesProvider.shared;
    v38 = [v104 isWheelchairUser];
    v119[0] = v37;
    v39 = WorkoutReadinessChecker.supportsPairedWatchFeatures()();
    v98 = v37;
    v119[0] = v37;
    v40 = [v2 unsupportedActivityTypesWithIsWheelchairUser:v38 isSwimmingSupported:v5 supportsPairedWatchFeatures:v39 supportsExternalHeartRateSensorFeatures:WorkoutReadinessChecker.supportsExternalHeartRateSensorFeatures()()];
    if (!v40)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = Array._bridgeToObjectiveC()().super.isa;
    }

    v103 = v40;
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_20AEA4000, v42, v43, "Standard: unsupportedActivities", v44, 2u);
      MEMORY[0x20F2E9420](v44, -1, -1);
    }

    v96 = v41 >> 62;
    if (v41 >> 62)
    {
      break;
    }

    v45 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v110 = v41;
    if (!v45)
    {
      goto LABEL_49;
    }

LABEL_34:
    v9 = 0;
    v106 = OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider;
    v112 = v41 & 0xFFFFFFFFFFFFFF8;
    v114 = v41 & 0xC000000000000001;
    v108 = v45;
    while (1)
    {
      if (v114)
      {
        v46 = MEMORY[0x20F2E7A20](v9, v41);
      }

      else
      {
        if (v9 >= *(v112 + 16))
        {
          goto LABEL_45;
        }

        v46 = *(v41 + 8 * v9 + 32);
      }

      v47 = v46;
      v5 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v48 = v1;
      v2 = v47;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v119[0] = v52;
        *v51 = 136315138;
        v53 = [*&v1[v106] activityTypeKeyForActivityType_];
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v57 = v54;
        v1 = v116;
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v56, v119);
        v41 = v110;

        *(v51 + 4) = v58;
        _os_log_impl(&dword_20AEA4000, v49, v50, "Standard: unsupportedActivity, key: %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm_7(v52);
        MEMORY[0x20F2E9420](v52, -1, -1);
        v59 = v51;
        v45 = v108;
        MEMORY[0x20F2E9420](v59, -1, -1);
      }

      ++v9;
      if (v5 == v45)
      {
        goto LABEL_49;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v45 = __CocoaSet.count.getter();
  v110 = v41;
  if (v45)
  {
    goto LABEL_34;
  }

LABEL_49:

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    v64 = v100;
    v63 = v101;
    v65 = v104;
    v66 = v99;
    if (v96)
    {
      v67 = __CocoaSet.count.getter();
    }

    else
    {
      v67 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v62 + 4) = v67;

    _os_log_impl(&dword_20AEA4000, v60, v61, "Standard: unsupportedActivities.count: %ld", v62, 0xCu);
    MEMORY[0x20F2E9420](v62, -1, -1);
  }

  else
  {

    v64 = v100;
    v63 = v101;
    v65 = v104;
    v66 = v99;
  }

  if ([v65 hasFetchedWheelchairUse])
  {
    [*&v1[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider] setActivityPickerWheelchairMode_];
  }

  v68 = *&v1[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider];
  [v68 setActivityPickerActivityMoveMode:*&v1[v63] defaultActivityTypes:v66];

  v69 = [v68 workoutActivityTypesInFrequencyOrderDescendingWithDefaultActivities:v64 unsupportedActivities:v103];
  v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v119[0] = MEMORY[0x277D84F90];
  if (v70 >> 62)
  {
    goto LABEL_92;
  }

  v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v72 = MEMORY[0x277D84F90];
    if (v71)
    {
      v73 = 0;
      while (1)
      {
        if ((v70 & 0xC000000000000001) != 0)
        {
          v74 = MEMORY[0x20F2E7A20](v73, v70);
        }

        else
        {
          if (v73 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }

          v74 = *(v70 + 8 * v73 + 32);
        }

        v75 = v74;
        v76 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          break;
        }

        if ([v74 isStandard])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v77 = *(v119[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v73;
        if (v76 == v71)
        {
          v78 = v119[0];
          v72 = MEMORY[0x277D84F90];
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      v71 = __CocoaSet.count.getter();
      continue;
    }

    break;
  }

  v78 = MEMORY[0x277D84F90];
LABEL_72:

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&dword_20AEA4000, v79, v80, "Standard: activityTypes", v81, 2u);
    MEMORY[0x20F2E9420](v81, -1, -1);
  }

  v82 = v78 < 0 || (v78 & 0x4000000000000000) != 0;
  if (!v82)
  {
    v83 = *(v78 + 16);
    if (!v83)
    {
      goto LABEL_94;
    }

    goto LABEL_79;
  }

  v83 = __CocoaSet.count.getter();
  if (v83)
  {
LABEL_79:
    v119[0] = v72;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v83 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v84 = 0;
    v70 = 0;
    while (1)
    {
      v85 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        goto LABEL_90;
      }

      if ((v78 & 0xC000000000000001) != 0)
      {
        v86 = MEMORY[0x20F2E7A20](v84, v78);
      }

      else
      {
        if (v84 >= *(v78 + 16))
        {
          goto LABEL_91;
        }

        v86 = *(v78 + 8 * v84 + 32);
      }

      v87 = v86;
      v117 = v86;
      closure #4 in StandardActivityItemsDataSource.queryCompoundActivityPickerItems()(&v117, v116, &v118);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v88 = *(v119[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v84;
      if (v85 == v83)
      {

        v89 = v119[0];
        goto LABEL_95;
      }
    }
  }

LABEL_94:

  v89 = MEMORY[0x277D84F90];
LABEL_95:

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 134217984;
    if (v82)
    {
      v93 = __CocoaSet.count.getter();
    }

    else
    {
      v93 = *(v78 + 16);
    }

    *(v92 + 4) = v93;

    _os_log_impl(&dword_20AEA4000, v90, v91, "Standard: activityTypes.count: %ld", v92, 0xCu);
    MEMORY[0x20F2E9420](v92, -1, -1);
  }

  else
  {
  }

  v94 = specialized _arrayForceCast<A, B>(_:)(v89);

  return v94;
}

uint64_t specialized CompoundActivityTypeProvider.activityTypeKey(for:)(void *a1)
{
  v2 = [a1 effectiveTypeIdentifier];
  v3 = [a1 isIndoor];
  v4 = [a1 swimmingLocationType];
  v5 = [a1 metadata];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  if (v2 != 46)
  {
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D83E88];
    *(v10 + 16) = xmmword_20B423A90;
    v12 = MEMORY[0x277D83ED0];
    *(v10 + 56) = v11;
    *(v10 + 64) = v12;
    *(v10 + 32) = v2;
LABEL_5:
    v13 = String.init(format:_:)();
    specialized static WOCatalogMediaTypeHelper.guidedTypeString(from:)(v6);
    v15 = v14;

    if (v15)
    {
      v16 = String.init<A>(_:)();
      String.append<A>(contentsOf:)();
    }

    else
    {
      if (!v3 || ![objc_opt_self() shouldDisambiguateOnLocationType_])
      {
        return v13;
      }

      v16 = String.init<A>(_:)();
      String.append<A>(contentsOf:)();
    }

    return v16;
  }

  result = swift_allocObject();
  *(result + 16) = xmmword_20B4282E0;
  v8 = MEMORY[0x277D83E88];
  v9 = MEMORY[0x277D83ED0];
  *(result + 56) = MEMORY[0x277D83E88];
  *(result + 64) = v9;
  *(result + 32) = 46;
  *(result + 96) = v8;
  *(result + 104) = v9;
  if ((v4 & 0x8000000000000000) == 0)
  {
    *(result + 72) = v4;
    goto LABEL_5;
  }

  __break(1u);
  return result;
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
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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
  v5 = _swift_stdlib_malloc_size_2(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
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
  v7 = *v1;
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
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for URLQueryItem();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_5(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_6(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_7(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_9(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_11(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_12(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_13(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_15(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_16(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_17(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_19(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized Array._copyToContiguousArray()(unint64_t a1)
{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H13ConfigurationC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore20ActivityTypeListItemC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H16ChartDataElementC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo10CLLocationC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore04GoalH13ConfigurationC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore04RaceH13ConfigurationC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo17HKWorkoutActivityC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo30NLSessionActivitySegmentMarkerC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore23QueriedExternalProviderC_Tt1g5, specialized Array._copyContents(initializing:));
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t specialized static WOCatalogMediaTypeHelper.guidedTypeString(from:)(uint64_t a1)
{
  v2 = static HealthDataConstants.mediaTypeProperty.getter();
  if (*(a1 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v3);
    v6 = v5;

    if (v6)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v4, v10);
      if (swift_dynamicCast())
      {
        v7 = MEMORY[0x20F2E52F0]();
        result = *&aGuidedrGuidedw[8 * v7];
        v9 = *&aUn[8 * v7];
        return result;
      }
    }
  }

  else
  {
  }

  return 0;
}

char *WorkoutConfigurationOccurrenceStore.recentWorkoutConfiguration(for:)(char *a1)
{
  v46 = type metadata accessor for Date();
  v2 = *(v46 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v46);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v40 - v6;
  v7 = WorkoutConfigurationOccurrenceStore.configurations(for:)(a1);
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v45 = v8 & 0xC000000000000001;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x20F2E7A20](0, v8);
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_36;
      }

      v10 = *(v8 + 32);
    }

    v49 = v10;
    v40 = a1;
    if (i == 1)
    {
LABEL_7:
      v2 = v49;
LABEL_8:

      a1 = specialized static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(v2, v40, 1);
      if (one-time initialization token for app == -1)
      {
LABEL_9:
        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static WOLog.app);
        v12 = a1;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v50 = v16;
          *v15 = 136315138;
          v17 = WorkoutConfiguration.logDisplayName.getter();
          v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v50);

          *(v15 + 4) = v19;
          _os_log_impl(&dword_20AEA4000, v13, v14, "[recentWorkoutConfiguration] found workout_configuration: %s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm_6(v16);
          MEMORY[0x20F2E9420](v16, -1, -1);
          MEMORY[0x20F2E9420](v15, -1, -1);
        }

        return v12;
      }

LABEL_36:
      swift_once();
      goto LABEL_9;
    }

    v41 = v8 & 0xFFFFFFFFFFFFFF8;
    v43 = v8;
    v44 = (v2 + 2);
    v42 = (v2 + 1);
    v20 = 1;
    while (1)
    {
      if (v45)
      {
        v21 = MEMORY[0x20F2E7A20](v20, v8);
      }

      else
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        if (v20 >= *(v41 + 16))
        {
          goto LABEL_26;
        }

        v21 = *(v8 + 8 * v20 + 32);
      }

      v2 = v21;
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
      v24 = v49;
      swift_beginAccess();
      v25 = *&v24[v23];
      v26 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
      swift_beginAccess();
      v27 = *v44;
      a1 = v46;
      v28 = v47;
      (*v44)(v47, v25 + v26, v46);
      v29 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
      swift_beginAccess();
      v30 = *(v2 + v29);
      v31 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
      swift_beginAccess();
      v32 = v30 + v31;
      v33 = v48;
      v27(v48, v32, a1);
      LOBYTE(v31) = static Date.< infix(_:_:)();
      v34 = *v42;
      (*v42)(v33, a1);
      v34(v28, a1);
      if (v31)
      {

        v49 = v2;
        ++v20;
        v8 = v43;
        if (v22 == i)
        {
          goto LABEL_8;
        }
      }

      else
      {

        ++v20;
        v8 = v43;
        if (v22 == i)
        {
          goto LABEL_7;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static WOLog.app);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_20AEA4000, v36, v37, "[recentWorkoutConfiguration] workout_configuration not found. Returning nil", v38, 2u);
    MEMORY[0x20F2E9420](v38, -1, -1);
  }

  return 0;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      v15 = v9;
      v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV11WorkoutCore0K13ConfigurationCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_11k8Core0J13M4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s11kw3A28m82OccurrenceStoreC14configurations3forSayAA0aC0CGSo23FIUIWorkoutActivityTypeC_tFSb10U26UUIDV3key_AG5valuet_tXEfU_So23FIUIWorkoutActivityTypeCTf1nnc_n(v14, v6, a1, v15);
      MEMORY[0x20F2E9420](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8);
  bzero(v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  v11 = specialized closure #1 in _NativeDictionary.filter(_:)((v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);

  if (v2)
  {
    swift_willThrow();
  }

LABEL_6:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a2;
  v53 = a4;
  v41 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);
  v5 = *(*(v52 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v52);
  v51 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v39 - v8;
  v49 = type metadata accessor for UUID();
  v9 = *(*(v49 - 8) + 64);
  result = MEMORY[0x28223BE20](v49);
  v56 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v54 = a3;
  v14 = *(a3 + 64);
  v44 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v42 = 0;
  v43 = (v15 + 63) >> 6;
  v47 = v11 + 16;
  v48 = v11;
  v46 = v11 + 8;
  while (v17)
  {
    v18 = __clz(__rbit64(v17));
    v55 = (v17 - 1) & v17;
LABEL_11:
    v21 = v18 | (v13 << 6);
    v22 = v54;
    v24 = v48;
    v23 = v49;
    v25 = *(v48 + 16);
    v26 = v56;
    v25(v56, v54[6] + *(v48 + 72) * v21, v49);
    v27 = v22[7];
    v45 = v21;
    v28 = *(v27 + 8 * v21);
    v29 = v50;
    v25(v50, v26, v23);
    v30 = v51;
    v31 = v52;
    *(v29 + *(v52 + 48)) = v28;
    _s10Foundation4UUIDVSgWOcTm_0(v29, v30, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);
    v32 = *(v30 + *(v31 + 48));
    v33 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v34 = *&v32[v33];
    v35 = v28;
    v36 = v34;

    v37 = *(v24 + 8);
    v37(v30, v23);
    LODWORD(v32) = [v53 isEqual_];

    _sSo8NSObjectCSgWOhTm_3(v29, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);
    result = (v37)(v56, v23);
    v17 = v55;
    if (v32)
    {
      *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      if (__OFADD__(v42++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v41, v40, v42, v54);
      }
    }
  }

  v19 = v13;
  while (1)
  {
    v13 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v13 >= v43)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v41, v40, v42, v54);
    }

    v20 = *(v44 + 8 * v13);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v55 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_2(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_3(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_5(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_6(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_7(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_9(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t static WorkoutConfigurationOccurrenceStore.sortedWorkoutConfigurations(_:filterType:activityType:currentLocation:)(char *a1, unint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v110 = a3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  KeyPath = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v108 - v14;
  LODWORD(a2) = *a2;
  v123 = a1;
  v116 = a1;

  Date.init()();
  if (one-time initialization token for app != -1)
  {
    goto LABEL_132;
  }

LABEL_2:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.app);
  (*(v9 + 16))(KeyPath, v15, v8);
  v18 = a4;
  v19 = Logger.logObject.getter();
  v20 = v8;
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v19, v21);
  v114 = v15;
  v115 = v9;
  v112 = v20;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v120[0] = v108;
    *v23 = 134218754;
    v109 = v5;
    v111 = a4;
    if (v116 >> 62)
    {
      v25 = __CocoaSet.count.getter();
    }

    else
    {
      v25 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v23 + 4) = v25;
    *(v23 + 12) = 2080;
    LOBYTE(v118) = a2;
    v26 = WorkoutConfigurationFilterType.displayName.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v120);

    *(v23 + 14) = v28;
    *(v23 + 22) = 2112;
    *(v23 + 24) = v18;
    *v24 = v111;
    *(v23 + 32) = 2080;
    v29 = one-time initialization token for logDateFormatter;
    v30 = v18;
    if (v29 != -1)
    {
      swift_once();
    }

    v31 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v33 = [v31 stringFromDate_];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = v115;
    v38 = v112;
    v113 = *(v115 + 8);
    v113(KeyPath, v112);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v120);

    *(v23 + 34) = v39;
    v40 = v21;
    v8 = v38;
    _os_log_impl(&dword_20AEA4000, v19, v40, "sort %ld workout_configurations with filterType: (%s), current location: %@, now: %s", v23, 0x2Au);
    _sSo8NSObjectCSgWOhTm_3(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v41 = v24;
    v9 = v37;
    MEMORY[0x20F2E9420](v41, -1, -1);
    v42 = v108;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v42, -1, -1);
    MEMORY[0x20F2E9420](v23, -1, -1);

    v15 = v114;
    v5 = v109;
    a4 = v111;
  }

  else
  {

    v113 = *(v9 + 8);
    v113(KeyPath, v20);
    v8 = v20;
  }

  v43 = v116;
  if (a2 > 2)
  {
    if ((a2 - 3) >= 2)
    {
      LOBYTE(v120[0]) = 5;

      v51 = specialized static WorkoutConfigurationOccurrenceStore.sortedRaceConfigurations(_:filterType:)(v57, v120);

      if (v51 >> 62)
      {
        type metadata accessor for WorkoutConfiguration();

        v15 = v114;
        v92 = _bridgeCocoaArray<A>(_:)();
        swift_bridgeObjectRelease_n();
        v51 = v92;
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for WorkoutConfiguration();
      }
    }

    else
    {

      v51 = v43;
    }

    goto LABEL_164;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      v121 = &type metadata for WorkoutFeatures;
      v122 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      LOBYTE(v120[0]) = 11;
      isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1Tm_6(v120);
      v120[0] = MEMORY[0x277D84F90];
      if (v43 >> 62)
      {
        a2 = __CocoaSet.count.getter();
      }

      else
      {
        a2 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a2)
      {
        v8 = 0;
        v15 = (v43 & 0xC000000000000001);
        v9 = v43 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v15)
          {
            v58 = MEMORY[0x20F2E7A20](v8, v43);
          }

          else
          {
            if (v8 >= *(v9 + 16))
            {
              goto LABEL_128;
            }

            v58 = *(v43 + 8 * v8 + 32);
          }

          v59 = v58;
          v5 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_126;
          }

          type metadata accessor for GoalWorkoutConfiguration();
          if (swift_dynamicCastClass())
          {
            KeyPath = swift_getKeyPath();
            swift_getKeyPath();
            v60 = v59;
            static Published.subscript.getter();

            v61 = v118;
            a4 = [v118 goalTypeIdentifier];

            if (a4)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              a4 = *(v120[0] + 2);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            v43 = v116;
          }

          else
          {
          }

          ++v8;
        }

        while (v5 != a2);
        v51 = v120[0];
        v8 = v112;
        v15 = v114;
      }

      else
      {
        v51 = MEMORY[0x277D84F90];
      }

      goto LABEL_74;
    }

    v121 = &type metadata for WorkoutFeatures;
    v122 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v120[0]) = 11;
    isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm_6(v120);
    if ([v110 identifier] == 82)
    {
      goto LABEL_106;
    }

    v5 = (v43 >> 62);
    if (v43 >> 62)
    {
      v44 = __CocoaSet.count.getter();
      if (!v44)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v44)
      {
LABEL_27:
        v84 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
        v50 = specialized static WorkoutConfiguration.make(activityType:goal:)(v110, v84);

        swift_beginAccess();
        if (!v5 || (__CocoaSet.count.getter() & 0x8000000000000000) == 0)
        {
          v50 = v50;
          specialized Array.replaceSubrange<A>(_:with:)(0, 0, v50);
          swift_endAccess();

          goto LABEL_105;
        }

        __break(1u);
        goto LABEL_178;
      }
    }

    v111 = (v43 >> 62);
    v45 = v43 & 0xC000000000000001;
    v8 = v43 & 0xFFFFFFFFFFFFFF8;

    a2 = 0;
    v5 = &selRef_adjustedStatisticsForStatistics_;
    v15 = &unk_20B438F40;
    while (1)
    {
      if (v45)
      {
        v46 = MEMORY[0x20F2E7A20](a2, v43);
      }

      else
      {
        if (a2 >= *(v8 + 16))
        {
          __break(1u);
LABEL_135:
          a2 = __CocoaSet.count.getter();
          goto LABEL_34;
        }

        v46 = *(v43 + 8 * a2 + 32);
      }

      v47 = v46;
      type metadata accessor for GoalWorkoutConfiguration();
      if (swift_dynamicCastClass())
      {
        swift_getKeyPath();
        KeyPath = swift_getKeyPath();
        static Published.subscript.getter();

        v48 = v120[0];
        a4 = [v120[0] goalTypeIdentifier];

        v9 = v115;
        if (!a4)
        {

          swift_beginAccess();
          v84 = &v123;
          v50 = specialized Array.remove(at:)(a2);
          if (!(v123 >> 62))
          {
LABEL_104:
            specialized Array.replaceSubrange<A>(_:with:)(0, 0, v50);
            swift_endAccess();
            v8 = v112;
            v15 = v114;
LABEL_105:

LABEL_106:
            swift_beginAccess();
            v85 = v123;
            v119 = MEMORY[0x277D84F90];
            if (v123 >> 62)
            {
              a2 = __CocoaSet.count.getter();
            }

            else
            {
              a2 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (a2)
            {
              v8 = 0;
              a4 = v85 & 0xC000000000000001;
              KeyPath = v85 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if (a4)
                {
                  v15 = v85;
                  v87 = MEMORY[0x20F2E7A20](v8, v85);
                }

                else
                {
                  if (v8 >= *(KeyPath + 16))
                  {
                    goto LABEL_130;
                  }

                  v15 = v85;
                  v87 = *&v85[8 * v8 + 32];
                }

                v88 = v87;
                v5 = (v8 + 1);
                if (__OFADD__(v8, 1))
                {
                  goto LABEL_129;
                }

                v89 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
                swift_beginAccess();
                if (v88[v89] - 1 >= 3)
                {
                  if (v88[v89])
                  {
                    goto LABEL_121;
                  }
                }

                else
                {
                  if (one-time initialization token for shared != -1)
                  {
                    swift_once();
                  }

                  v117 = static WorkoutDevicesProvider.shared;
                  v90 = static WorkoutDevicesProvider.shared;
                  v91 = WorkoutReadinessChecker.supportsPairedWatchFeatures()();

                  if (!v91)
                  {
LABEL_121:

                    goto LABEL_112;
                  }
                }

                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                v86 = *(v119 + 16);
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                v9 = v115;
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
LABEL_112:
                ++v8;
                v85 = v15;
                if (v5 == a2)
                {
                  v51 = v119;
                  v8 = v112;
                  v15 = v114;
                  goto LABEL_74;
                }
              }
            }

            v51 = MEMORY[0x277D84F90];
LABEL_74:

            goto LABEL_164;
          }

LABEL_178:
          if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
          {
            goto LABEL_104;
          }

          __break(1u);

          __break(1u);
LABEL_180:
          if (v84 >= 0xA)
          {
            v107 = 10;
          }

          else
          {
            v107 = v84;
          }

          if (v84 >= 0)
          {
            v94 = v107;
          }

          else
          {
            v94 = 10;
          }

          result = __CocoaSet.count.getter();
          if (result >= v94)
          {
            goto LABEL_146;
          }

LABEL_187:
          __break(1u);
          return result;
        }
      }

      else
      {

        v9 = v115;
      }

      v49 = a2 + 1;
      v43 = v116;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_131;
      }

      ++a2;
      if (v49 == v44)
      {

        v5 = v111;
        v8 = v112;
        v15 = v114;
        goto LABEL_27;
      }
    }
  }

  LOBYTE(v120[0]) = 0;

  KeyPath = static WorkoutConfigurationOccurrenceStore.sortedNearbyRaceConfigurations(_:filterType:currentLocation:)(v52, v120, a4);

  v118 = MEMORY[0x277D84F90];
  if (v43 >> 62)
  {
    goto LABEL_135;
  }

  a2 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_34:

  if (!a2)
  {
    goto LABEL_65;
  }

  v109 = v5;
  v8 = 0;
  v5 = (v43 & 0xC000000000000001);
  v9 = v43 & 0xFFFFFFFFFFFFFF8;
  a4 = &OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  do
  {
    if (v5)
    {
      v54 = MEMORY[0x20F2E7A20](v8, v43);
    }

    else
    {
      if (v8 >= *(v9 + 16))
      {
        goto LABEL_127;
      }

      v54 = *(v43 + 8 * v8 + 32);
    }

    v15 = v54;
    v55 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
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
      swift_once();
      goto LABEL_2;
    }

    v56 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
    swift_beginAccess();
    if (v15[v56] == 2)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v53 = *(v118 + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v43 = v116;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v8;
  }

  while (v55 != a2);
  v5 = v109;
LABEL_65:

  MEMORY[0x28223BE20](v62);
  v63 = v114;
  *(&v108 - 2) = v5;
  *(&v108 - 1) = v63;

  v118 = specialized Array._copyToContiguousArray()(v64);
  specialized MutableCollection<>.sort(by:)(partial apply for closure #2 in static WorkoutConfigurationOccurrenceStore.sortedWorkoutConfigurations(_:filterType:activityType:currentLocation:), (&v108 - 4));

  a4 = v118;
  MEMORY[0x28223BE20](v65);
  *(&v108 - 2) = v5;
  *(&v108 - 1) = v63;

  specialized Sequence.forEach(_:)(partial apply for closure #3 in static WorkoutConfigurationOccurrenceStore.sortedWorkoutConfigurations(_:filterType:activityType:currentLocation:), (&v108 - 4), a4);

  v66 = KeyPath >> 62;
  if (!(KeyPath >> 62))
  {
    v67 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v67)
    {
      goto LABEL_67;
    }

LABEL_140:

    goto LABEL_141;
  }

  v67 = __CocoaSet.count.getter();
  if (!v67)
  {
    goto LABEL_140;
  }

LABEL_67:
  if ((v67 & 0x8000000000000000) != 0)
  {
    v68 = 2;
    if (!v66)
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (v67 >= 2)
    {
      v68 = 2;
    }

    else
    {
      v68 = v67;
    }

    if (!v66)
    {
LABEL_72:
      v69 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_78;
    }
  }

  if (__CocoaSet.count.getter() < 0)
  {
    goto LABEL_167;
  }

  v69 = __CocoaSet.count.getter();
LABEL_78:
  if (v69 < v68)
  {
    goto LABEL_168;
  }

  if ((KeyPath & 0xC000000000000001) != 0)
  {
    type metadata accessor for RaceWorkoutConfiguration();

    v70 = 0;
    do
    {
      v71 = v70 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v70);
      v70 = v71;
    }

    while (v68 != v71);
  }

  else
  {
  }

  if (v66)
  {
    v72 = _CocoaArrayWrapper.subscript.getter();
    v73 = v75;
    v66 = v76;
    v74 = v77;

    if (v74)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  v72 = KeyPath & 0xFFFFFFFFFFFFFF8;
  v73 = (KeyPath & 0xFFFFFFFFFFFFFF8) + 32;
  v74 = (2 * v68) | 1;
  if ((v74 & 1) == 0)
  {
LABEL_88:
    specialized _copyCollectionToContiguousArray<A>(_:)(v72, v73, v66, v74, type metadata accessor for RaceWorkoutConfiguration);
    v79 = v78;
    goto LABEL_95;
  }

LABEL_89:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v80 = swift_dynamicCastClass();
  if (!v80)
  {
    swift_unknownObjectRelease();
    v80 = MEMORY[0x277D84F90];
  }

  v81 = *(v80 + 16);

  if (__OFSUB__(v74 >> 1, v66))
  {
    __break(1u);
    goto LABEL_176;
  }

  if (v81 != (v74 >> 1) - v66)
  {
LABEL_176:
    swift_unknownObjectRelease_n();
    goto LABEL_88;
  }

  v79 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v79)
  {
    v79 = MEMORY[0x277D84F90];
LABEL_95:
    swift_unknownObjectRelease();
  }

  if (v79 < 0 || (v79 & 0x4000000000000000) != 0)
  {
    goto LABEL_169;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for WorkoutConfiguration();
  v82 = v79;
  while (1)
  {

    if ((a4 & 0x8000000000000000) != 0 || (a4 & 0x4000000000000000) != 0)
    {
      v83 = __CocoaSet.count.getter();
    }

    else
    {
      v83 = *(a4 + 16);
    }

    specialized Array.replaceSubrange<A>(_:with:)(v83 != 0, v83 != 0, v82);

    a4 = v118;
LABEL_141:
    v8 = a4 >> 62;
    if (!(a4 >> 62))
    {
      break;
    }

    v84 = __CocoaSet.count.getter();
    if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
    {
      goto LABEL_180;
    }

    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    type metadata accessor for WorkoutConfiguration();

    v82 = _bridgeCocoaArray<A>(_:)();
  }

  result = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 0xA)
  {
    v94 = 10;
  }

  else
  {
    v94 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v94)
  {
    goto LABEL_187;
  }

LABEL_146:
  if ((a4 & 0xC000000000000001) != 0 && v94)
  {
    type metadata accessor for WorkoutConfiguration();

    v95 = 0;
    do
    {
      v96 = v95 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v95);
      v95 = v96;
    }

    while (v94 != v96);
  }

  else
  {
  }

  if (v8)
  {
    v98 = _CocoaArrayWrapper.subscript.getter();
    v99 = v101;
    v97 = v102;
    v100 = v103;

    if (v100)
    {
      goto LABEL_157;
    }

    goto LABEL_156;
  }

  v97 = 0;
  v98 = a4 & 0xFFFFFFFFFFFFFF8;
  v99 = (a4 & 0xFFFFFFFFFFFFFF8) + 32;
  v100 = (2 * v94) | 1;
  if ((v100 & 1) == 0)
  {
LABEL_156:
    specialized _copyCollectionToContiguousArray<A>(_:)(v98, v99, v97, v100, type metadata accessor for WorkoutConfiguration);
    v51 = v104;
    v8 = v112;
    v15 = v114;
    goto LABEL_163;
  }

LABEL_157:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v105 = swift_dynamicCastClass();
  if (!v105)
  {
    swift_unknownObjectRelease();
    v105 = MEMORY[0x277D84F90];
  }

  v106 = *(v105 + 16);

  if (__OFSUB__(v100 >> 1, v97))
  {
    __break(1u);
    goto LABEL_174;
  }

  if (v106 != (v100 >> 1) - v97)
  {
LABEL_174:
    swift_unknownObjectRelease_n();
    goto LABEL_156;
  }

  v51 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v8 = v112;
  v15 = v114;
  if (!v51)
  {
    v51 = MEMORY[0x277D84F90];
LABEL_163:
    swift_unknownObjectRelease();
  }

LABEL_164:
  v113(v15, v8);

  return v51;
}

uint64_t WorkoutConfigurationFilterType.displayName.getter()
{
  v1 = *v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = "ATION_FILTER_GOAL_BASED";
  v5 = "ATION_FILTER_ROUTE";
  v6 = 0xD000000000000025;
  v7 = "_averageCacheValue";
  if (v1 != 4)
  {
    v7 = "ATION_FILTER_ALL";
  }

  if (v1 != 3)
  {
    v5 = v7;
    v6 = 0xD000000000000022;
  }

  v8 = "ATION_FILTER_PACER";
  if (v1 == 1)
  {
    v9 = 0xD000000000000020;
  }

  else
  {
    v8 = "ATION_FILTER_INTERVAL";
    v9 = 0xD000000000000027;
  }

  if (v1)
  {
    v4 = v8;
    v10 = v9;
  }

  else
  {
    v10 = 0xD000000000000026;
  }

  if (v1 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v1 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  v13 = MEMORY[0x20F2E6C00](v12, v11 | 0x8000000000000000);
  v14 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v15 = [v3 localizedStringForKey:v13 value:0 table:v14];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v16;
}

unint64_t static WorkoutConfigurationOccurrenceStore.sortedNearbyRaceConfigurations(_:filterType:currentLocation:)(unint64_t a1, unsigned __int8 *a2, void *a3)
{
  LODWORD(v3) = *a2;
  if (a3)
  {
    v4 = a3;
    v6 = one-time initialization token for race;
    v7 = a3;
    if (v6 != -1)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v8 = type metadata accessor for Logger();
      v9 = __swift_project_value_buffer(v8, static WOLog.race);
      v10 = v7;
      v7 = v9;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      v59 = v3;
      v58 = v4;
      if (os_log_type_enabled(v11, v12))
      {
        v13 = v4;
        v4 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v62[0] = v15;
        *v4 = 136315650;
        LOBYTE(v63) = v3;
        v16 = WorkoutConfigurationFilterType.displayName.getter();
        v7 = v17;
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v62);

        *(v4 + 4) = v18;
        *(v4 + 12) = 2112;
        *(v4 + 14) = v10;
        *v14 = v13;
        *(v4 + 22) = 2048;
        *(v4 + 24) = 0x408F400000000000;
        v19 = v10;
        _os_log_impl(&dword_20AEA4000, v11, v12, "Race: filter (%s) currentLocation: %@, raceMaxDistanceFromCurrentLocation: %f meters", v4, 0x20u);
        _sSo8NSObjectCSgWOhTm_3(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v14, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm_6(v15);
        MEMORY[0x20F2E9420](v15, -1, -1);
        MEMORY[0x20F2E9420](v4, -1, -1);
      }

      v63 = MEMORY[0x277D84F90];
      if (a1 >> 62)
      {
        v20 = __CocoaSet.count.getter();
      }

      else
      {
        v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v20)
      {
        v4 = 0;
        v3 = a1 & 0xC000000000000001;
        do
        {
          if (v3)
          {
            v21 = MEMORY[0x20F2E7A20](v4, a1);
          }

          else
          {
            if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v21 = *(a1 + 8 * v4 + 32);
          }

          v22 = v21;
          v23 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
          swift_beginAccess();
          if (*(v7 + v22) == 2)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v24 = *(v63 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v7 = &v63;
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v4;
        }

        while (v23 != v20);
        v25 = v63;
        v63 = MEMORY[0x277D84F90];
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v25 = MEMORY[0x277D84F90];
        v63 = MEMORY[0x277D84F90];
        if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
        {
LABEL_26:
          if ((v25 & 0x4000000000000000) == 0)
          {
            v35 = *(v25 + 16);
            if (!v35)
            {
              goto LABEL_46;
            }

            goto LABEL_28;
          }
        }
      }

      v35 = __CocoaSet.count.getter();
      if (!v35)
      {
LABEL_46:
        v39 = v10;

        v63 = specialized Array._copyToContiguousArray()(v40);
        specialized MutableCollection<>.sort(by:)(&v63);

        v34 = v63;
        swift_retain_n();
        v41 = v39;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();

        LOBYTE(v3) = v59;
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v63 = v46;
          *v44 = 136315906;
          LOBYTE(v61) = v59;
          v47 = WorkoutConfigurationFilterType.displayName.getter();
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v63);

          *(v44 + 4) = v49;
          *(v44 + 12) = 2048;
          if ((v34 & 0x8000000000000000) != 0 || (v34 & 0x4000000000000000) != 0)
          {
            v50 = __CocoaSet.count.getter();
          }

          else
          {
            v50 = *(v34 + 16);
          }

          *(v44 + 14) = v50;

          *(v44 + 22) = 2112;
          *(v44 + 24) = v41;
          *v45 = v58;
          *(v44 + 32) = 2048;
          *(v44 + 34) = 0x408F400000000000;
          v51 = v41;
          _os_log_impl(&dword_20AEA4000, v42, v43, "Race: filter (%s) found %ld nearby race workout_configurations from current location: %@ within distance of %f meters", v44, 0x2Au);
          _sSo8NSObjectCSgWOhTm_3(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x20F2E9420](v45, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm_6(v46);
          MEMORY[0x20F2E9420](v46, -1, -1);
          MEMORY[0x20F2E9420](v44, -1, -1);

          LOBYTE(v3) = v59;
        }

        else
        {
        }

        goto LABEL_52;
      }

LABEL_28:
      v3 = 0;
      a1 = 0;
      v7 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x20F2E7A20](v3, v25);
        }

        else
        {
          if (v3 >= *(v25 + 16))
          {
            goto LABEL_42;
          }

          v36 = *(v25 + 8 * v3 + 32);
        }

        v4 = v36;
        v37 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v61 = v36;
        closure #2 in static WorkoutConfigurationOccurrenceStore.sortedNearbyRaceConfigurations(_:filterType:currentLocation:)(&v61, v59, v10, &v60);

        v4 = v60;
        if (v60)
        {
          MEMORY[0x20F2E6F30]();
          if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v38 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v7 = v63;
        }

        ++v3;
        if (v37 == v35)
        {
          goto LABEL_46;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
    }
  }

  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static WOLog.race);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v62[0] = v30;
    *v29 = 136315138;
    LOBYTE(v63) = v3;
    v31 = WorkoutConfigurationFilterType.displayName.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v62);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_20AEA4000, v27, v28, "Race: filter (%s) cannot find nearby race workout_configurations because currentLocation is nil", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v30);
    MEMORY[0x20F2E9420](v30, -1, -1);
    MEMORY[0x20F2E9420](v29, -1, -1);
  }

  v34 = MEMORY[0x277D84F90];
LABEL_52:
  if (v34 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x20F2E7A20](j, v34);
      }

      else
      {
        if (j >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v54 = *(v34 + 8 * j + 32);
      }

      v55 = v54;
      v56 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v63 = v54;
      closure #4 in static WorkoutConfigurationOccurrenceStore.sortedNearbyRaceConfigurations(_:filterType:currentLocation:)(&v63, v3, "Race: filter (%s) found nearby race workout_configuration (%s): %s, clusterUUID: %s, lastWorkoutStartingPoint: %@, relevanceValue: %f");

      if (v56 == i)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

  return v34;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v6);
    *v3 = v6;
  }

  v9 = *(v6 + 16);
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(a1, a2);
  return specialized ContiguousArray._endMutation()();
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = _minimumMergeRunLength(_:)(v5);
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for WorkoutConfiguration();
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, a1);
  }
}

void specialized Sequence.forEach(_:)(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2E7A20](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

id specialized static WorkoutConfiguration.make(activityType:goal:)(void *a1, void *a2)
{
  v33 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v32 = &v30 - v12;
  UUID.init()();
  v14 = specialized Occurrence.__allocating_init(count:)(0);
  v30 = v11;
  v31 = v14;
  v15 = *(v4 + 16);
  v15(v11, v13, v3);
  v16 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration());
  swift_beginAccess();
  v35 = a2;
  type metadata accessor for NLSessionActivityGoal();
  v17 = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  v15(v8, v11, v3);
  *&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v18 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 56);
  v20(&v16[v18], 1, 1, v19);
  v20(&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v19);
  v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v22 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v22 - 8) + 56))(&v16[v21], 1, 1, v22);
  (*(v4 + 56))(&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v3);
  v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v15(&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v8, v3);
  v24 = v33;
  *&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v33;
  v16[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v31;
  swift_beginAccess();
  *&v16[v23] = 0;
  v16[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v25 = type metadata accessor for WorkoutConfiguration();
  v34.receiver = v16;
  v34.super_class = v25;
  v26 = v24;
  v27 = objc_msgSendSuper2(&v34, sel_init);
  v28 = *(v4 + 8);
  v28(v8, v3);
  v28(v30, v3);
  v28(v32, v3);
  return v27;
}

unint64_t type metadata accessor for NLSessionActivityGoal()
{
  result = lazy cache variable for type metadata for NLSessionActivityGoal;
  if (!lazy cache variable for type metadata for NLSessionActivityGoal)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NLSessionActivityGoal);
  }

  return result;
}

uint64_t WorkoutConfiguration.logDisplayName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v3 + 16))(v6, &v1[v7], v2);
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v32 = dispatch thunk of CustomStringConvertible.description.getter();
  v33 = v8;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v10 = v1[v9];
  if (v10 <= 1)
  {
    if (v1[v9])
    {
      v11 = 0xE800000000000000;
      v12 = 0x6C61767265746E69;
    }

    else
    {
      v11 = 0xE400000000000000;
      v12 = 1818324839;
    }
  }

  else if (v10 == 2)
  {
    v11 = 0xE400000000000000;
    v12 = 1701011826;
  }

  else if (v10 == 3)
  {
    v11 = 0xE500000000000000;
    v12 = 0x7265636170;
  }

  else
  {
    v11 = 0xEA00000000007472;
    v12 = 0x6F707369746C756DLL;
  }

  MEMORY[0x20F2E6D80](v12, v11);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WorkoutConfiguration.logDisplayName.getter;
  *(v14 + 24) = v13;
  v34 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed FIUIFormattingManager) -> (@owned String);
  v35 = v14;
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSo21FIUIFormattingManagerCcMd, &_sSSSo21FIUIFormattingManagerCcMR);
  v16 = String.init<A>(describing:)();
  MEMORY[0x20F2E6D80](v16);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  v17 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v18 = *&v15[v17];
  v19 = [v18 description];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  MEMORY[0x20F2E6D80](v20, v22);

  v23 = v32;
  v36 = v32;
  v37 = v33;
  v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v25 = *&v15[v24];
  if (v25)
  {
    v30 = 0x6469766F7270202CLL;
    v31 = 0xEB000000003D7265;
    swift_beginAccess();
    v26 = *(v25 + 32);
    v27 = *(v25 + 40);

    MEMORY[0x20F2E6D80](v26, v27);

    MEMORY[0x20F2E6D80](v30, v31);

    return v36;
  }

  return v23;
}

uint64_t sub_20AEB3848()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEB3880()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v24 = MEMORY[0x277D84F90];
  result = (a2)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v23 = a2;
    v9 = v24;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x20F2E7A20](v11, a1);
        v14 = *(v24 + 16);
        v13 = *(v24 + 24);
        if (v14 >= v13 >> 1)
        {
          v23(v13 > 1, v14 + 1, 1);
        }

        ++v11;
        v15 = _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(a3, a4);
        *(v24 + 16) = v14 + 1;
        v16 = v24 + 16 * v14;
        *(v16 + 32) = v12;
        *(v16 + 40) = v15;
      }

      while (v8 != v11);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v19 = *(v24 + 16);
        v18 = *(v24 + 24);
        v20 = *v17;
        if (v19 >= v18 >> 1)
        {
          v23(v18 > 1, v19 + 1, 1);
        }

        v21 = _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(a3, a4);
        *(v24 + 16) = v19 + 1;
        v22 = v24 + 16 * v19;
        *(v22 + 32) = v20;
        *(v22 + 40) = v21;
        ++v17;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  return specialized _arrayForceCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), &lazy protocol witness table cache variable for type StandardActivityPickerItem and conformance StandardActivityPickerItem, type metadata accessor for StandardActivityPickerItem);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for WorkoutBlock, &protocol witness table for WorkoutBlock, outlined init with take of Equivalent);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for WorkoutStep, &protocol witness table for WorkoutStep, outlined init with take of Equivalent);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for LivePowerZone, &protocol witness table for Zone, outlined init with take of ZoneProtocol);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), &lazy protocol witness table cache variable for type StandardActivityPickerItem and conformance StandardActivityPickerItem, type metadata accessor for StandardActivityPickerItem);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), &lazy protocol witness table cache variable for type GuidedFeaturedActivityPickerItem and conformance GuidedFeaturedActivityPickerItem, type metadata accessor for GuidedFeaturedActivityPickerItem);
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore34CompoundActivityPickerItemProtocol_pGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore34CompoundActivityPickerItemProtocol_pGMR, &_s11WorkoutCore34CompoundActivityPickerItemProtocol_pMd, &_s11WorkoutCore34CompoundActivityPickerItemProtocol_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore18ActivityPickerItem_pGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore18ActivityPickerItem_pGMR, &_s11WorkoutCore18ActivityPickerItem_pMd, &_s11WorkoutCore18ActivityPickerItem_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore10Equivalent_pGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore10Equivalent_pGMR, &_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore15ChartableSample_pGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore15ChartableSample_pGMR, &_s11WorkoutCore15ChartableSample_pMd, &_s11WorkoutCore15ChartableSample_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore12ZoneProtocol_pGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore12ZoneProtocol_pGMR, &_s11WorkoutCore12ZoneProtocol_pMd, &_s11WorkoutCore12ZoneProtocol_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_1(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_1(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t instantiation function for generic protocol witness table for StandardActivityPickerItem(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StandardActivityPickerItem and conformance StandardActivityPickerItem(&lazy protocol witness table cache variable for type StandardActivityPickerItem and conformance StandardActivityPickerItem);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type StandardActivityPickerItem and conformance StandardActivityPickerItem(&lazy protocol witness table cache variable for type StandardActivityPickerItem and conformance StandardActivityPickerItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type StandardActivityPickerItem and conformance StandardActivityPickerItem(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StandardActivityPickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures()
{
  result = lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures;
  if (!lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures;
  if (!lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures);
  }

  return result;
}

Swift::Bool __swiftcall WorkoutConfigurationOccurrenceStore.loadIfNeededLegacy(enteringForeground:)(Swift::Bool enteringForeground)
{
  LODWORD(v2) = enteringForeground;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v130 = &v124[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v131 = type metadata accessor for DispatchQoS();
  v129 = *(v131 - 8);
  v7 = *(v129 + 64);
  MEMORY[0x28223BE20](v131);
  v128 = &v124[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for UUID();
  v137 = *(v9 - 8);
  v10 = v137[8];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v124[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v138 = &v124[-v15];
  MEMORY[0x28223BE20](v14);
  v134 = &v124[-v16];
  if (one-time initialization token for app != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.app);
    v18 = v1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = &unk_27C729000;
    v141 = v9;
    v133 = v3;
    v132 = v4;
    if (v21)
    {
      v23 = swift_slowAlloc();
      *v23 = 67110144;
      v24 = v18[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loaded];
      *(v23 + 4) = v24 ^ 1;
      *(v23 + 8) = 1024;
      *(v23 + 10) = v24;
      *(v23 + 14) = 1024;
      v25 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
      swift_beginAccess();
      *(v23 + 16) = v18[v25];
      *(v23 + 20) = 1024;
      v26 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
      swift_beginAccess();
      outlined init with copy of UnlockedSinceBootMonitorProtocol(&v18[v26], aBlock);
      v27 = v2;
      v2 = v18;
      v29 = v143;
      v28 = v144;
      __swift_project_boxed_opaque_existential_1(aBlock, v143);
      v30 = *(v28 + 4);
      v31 = v28;
      v18 = v2;
      LODWORD(v2) = v27;
      LOBYTE(v26) = v30(v29, v31);
      __swift_destroy_boxed_opaque_existential_1Tm_6(aBlock);
      v32 = v26 & 1;
      v22 = &unk_27C729000;
      *(v23 + 22) = v32;

      *(v23 + 26) = 1024;
      v9 = v141;
      *(v23 + 28) = v27 & 1;
      _os_log_impl(&dword_20AEA4000, v19, v20, "[ConfigurationStore] loadIfNeeded: %{BOOL}d (loaded: %{BOOL}d, syncComplete: %{BOOL}d, unlockedSinceBoot: %{BOOL}d, enteringForeground: %{BOOL}d", v23, 0x20u);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    else
    {
    }

    v33 = v22[487];
    if (v18[v33])
    {
      WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
      WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(v2 & 1);

      return v18[v33];
    }

    v34 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
    swift_beginAccess();
    if (v18[v34] != 1)
    {
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_20AEA4000, v58, v59, "[ConfigurationStore] Paired sync in progress, skip load workout_configurations", v60, 2u);
        MEMORY[0x20F2E9420](v60, -1, -1);
      }

      return v18[v33];
    }

    v35 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
    swift_beginAccess();
    outlined init with copy of UnlockedSinceBootMonitorProtocol(&v18[v35], aBlock);
    v36 = v18;
    v37 = v143;
    v38 = v144;
    __swift_project_boxed_opaque_existential_1(aBlock, v143);
    v39 = (*(v38 + 4))(v37, v38);
    __swift_destroy_boxed_opaque_existential_1Tm_6(aBlock);
    if ((v39 & 1) == 0)
    {
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_20AEA4000, v62, v63, "[ConfigurationStore] Device is locked since boot, skip load workout_configurations, start monitoring first unlock", v64, 2u);
        MEMORY[0x20F2E9420](v64, -1, -1);
      }

      outlined init with copy of UnlockedSinceBootMonitorProtocol(&v36[v35], aBlock);
      v65 = v143;
      v66 = v144;
      __swift_project_boxed_opaque_existential_1(aBlock, v143);
      (*(v66 + 5))(v65, v66);
      __swift_destroy_boxed_opaque_existential_1Tm_6(aBlock);
      return v36[v33];
    }

    v125 = v2;
    v40 = v134;
    UUID.init()();
    v127 = v36;
    outlined init with copy of UnlockedSinceBootMonitorProtocol(&v36[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_backgroundAssertionManager], aBlock);
    v41 = v143;
    v42 = v144;
    __swift_project_boxed_opaque_existential_1(aBlock, v143);
    v146[0] = 3;
    v43 = (*(v42 + 1))(v146, v40, 0xD00000000000002CLL, 0x800000020B45CFD0, v41, v42, 15.0);
    __swift_destroy_boxed_opaque_existential_1Tm_6(aBlock);
    v44 = v137;
    v45 = v137[2];
    v4 = v138;
    v140 = v137 + 2;
    v139 = v45;
    v45(v138, v40, v9);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    v48 = os_log_type_enabled(v46, v47);
    v126 = v33;
    if (v48)
    {
      LODWORD(v136) = v47;
      v49 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      aBlock[0] = v135;
      *v49 = 136315650;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1702256979, 0xE400000000000000, aBlock);
      *(v49 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v4;
      v53 = v52;
      v138 = v44[1];
      v138(v51, v9);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v53, aBlock);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2080;
      v55 = v127;
      if (v43)
      {
        if (v43 == 2)
        {
          v56 = 0xEC00000065746165;
          v57 = 0x7243746F6E6E6163;
        }

        else if (v43 == 1)
        {
          v56 = 0xED00007374736978;
          v57 = 0x4579646165726C61;
        }

        else
        {
          v57 = 0;
          v56 = 0xE000000000000000;
        }
      }

      else
      {
        v56 = 0xE700000000000000;
        v57 = 0x73736563637573;
      }

      v67 = v136;
      v68 = v135;
      v4 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v56, aBlock);

      *(v49 + 24) = v4;
      _os_log_impl(&dword_20AEA4000, v46, v67, "[ConfigurationStore] load background assertion (%s, %s) acquired: %s", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v68, -1, -1);
      MEMORY[0x20F2E9420](v49, -1, -1);

      v33 = v126;
    }

    else
    {

      v138 = v44[1];
      v138(v4, v9);
      v55 = v127;
    }

    v69 = v55 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v69 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(ObjectType, v4);
      swift_unknownObjectRelease();
    }

    v71 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient;
    outlined init with copy of UnlockedSinceBootMonitorProtocol(v55 + v35, aBlock);
    v1 = specialized static WorkoutConfigurationOccurrenceStore.load(with:unlockedSinceBootMonitor:)((v55 + v71), aBlock);
    v2 = v72;
    __swift_destroy_boxed_opaque_existential_1Tm_6(aBlock);
    *(v55 + v33) = v1 & 1;
    aBlock[0] = MEMORY[0x277D84F90];
    if (v2 >> 62)
    {
      break;
    }

    v73 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v73)
    {
      goto LABEL_44;
    }

LABEL_30:
    v74 = 0;
    v3 = v2 & 0xC000000000000001;
    v9 = v2 & 0xFFFFFFFFFFFFFF8;
    v75 = &OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
    v136 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v3)
      {
        v82 = MEMORY[0x20F2E7A20](v74, v2);
      }

      else
      {
        if (v74 >= *(v9 + 16))
        {
          goto LABEL_41;
        }

        v82 = *(v2 + v74 + 4);
      }

      v4 = v82;
      v83 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      v1 = *v75;
      swift_beginAccess();
      if (*(v4 + v1))
      {
      }

      else
      {
        v1 = aBlock;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v76 = v3;
        v77 = v73;
        v78 = v2;
        v79 = v13;
        v80 = v75;
        v81 = *(aBlock[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v75 = v80;
        v13 = v79;
        v2 = v78;
        v73 = v77;
        v3 = v76;
        v9 = v136;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v74;
      if (v83 == v73)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v73 = __CocoaSet.count.getter();
  if (v73)
  {
    goto LABEL_30;
  }

LABEL_44:

  v84 = WorkoutConfigurationOccurrenceStore.deduplicate(_:)(aBlock[0]);

  if (v84 >> 62)
  {
    goto LABEL_67;
  }

  for (i = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v86 = 0;
    v136 = v84 & 0xC000000000000001;
    v135 = v84 & 0xFFFFFFFFFFFFFF8;
    v87 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v136)
      {
        v90 = MEMORY[0x20F2E7A20](v86, v84);
      }

      else
      {
        if (v86 >= *(v135 + 16))
        {
          goto LABEL_64;
        }

        v90 = *(v84 + 8 * v86 + 32);
      }

      v91 = v90;
      v92 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        break;
      }

      v93 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      v139(v13, &v91[v93], v141);
      v94 = v91;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v87;
      v96 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      v98 = v87[2];
      v99 = (v97 & 1) == 0;
      v100 = __OFADD__(v98, v99);
      v101 = v98 + v99;
      if (v100)
      {
        goto LABEL_65;
      }

      v102 = v97;
      if (v87[3] >= v101)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v108 = v96;
          specialized _NativeDictionary.copy()();
          v96 = v108;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v101, isUniquelyReferenced_nonNull_native);
        v96 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
        if ((v102 & 1) != (v103 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v87 = aBlock[0];
      if (v102)
      {
        v88 = *(aBlock[0] + 56);
        v89 = *(v88 + 8 * v96);
        *(v88 + 8 * v96) = v94;

        v138(v13, v141);
      }

      else
      {
        *(aBlock[0] + 8 * (v96 >> 6) + 64) |= 1 << v96;
        v104 = v96;
        v105 = v141;
        v139((v87[6] + v137[9] * v96), v13, v141);
        *(v87[7] + 8 * v104) = v94;

        v138(v13, v105);
        v106 = v87[2];
        v100 = __OFADD__(v106, 1);
        v107 = v106 + 1;
        if (v100)
        {
          goto LABEL_66;
        }

        v87[2] = v107;
      }

      ++v86;
      if (v92 == i)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  v87 = MEMORY[0x277D84F98];
LABEL_69:

  v109 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  v110 = v127;
  swift_beginAccess();
  v111 = *(v110 + v109);
  *(v110 + v109) = v87;

  WorkoutConfigurationOccurrenceStore.configurations.didset();
  *(v110 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurationsDeduplicated) = 1;
  v112 = v126;
  if (*(v110 + v126) == 1)
  {
    v113 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v114 = objc_opt_self();

    if ([v114 isMainThread])
    {
      closure #3 in WorkoutConfigurationOccurrenceStore.loadIfNeededLegacy(enteringForeground:)();
    }

    else
    {
      _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v116 = static OS_dispatch_queue.main.getter();
      v117 = swift_allocObject();
      *(v117 + 16) = partial apply for closure #3 in WorkoutConfigurationOccurrenceStore.loadIfNeededLegacy(enteringForeground:);
      *(v117 + 24) = v113;
      v144 = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_4;
      v145 = v117;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      v143 = &block_descriptor_30;
      v118 = _Block_copy(aBlock);

      v119 = v128;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v120 = v130;
      v121 = v133;
      v110 = v127;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F2E7580](0, v119, v120, v118);
      _Block_release(v118);

      v112 = v126;
      (*(v132 + 8))(v120, v121);
      (*(v129 + 8))(v119, v131);
    }

    v122 = v125;

    WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
    WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(v122 & 1);

    v115 = *(v110 + v112);
  }

  else
  {
    v115 = 0;
  }

  v123 = v134;
  $defer #1 () in WorkoutConfigurationOccurrenceStore.loadIfNeededLegacy(enteringForeground:)(v110, 3u, v134);
  v138(v123, v141);
  return v115;
}

uint64_t sub_20AEB506C()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEB50A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  v152 = a4;
  v153 = a5;
  v156 = a6;
  v160 = type metadata accessor for UUID();
  v12 = *(v160 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v160);
  v146 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v145 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v148 = &v145 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v145 - v21;
  MEMORY[0x28223BE20](v20);
  v151 = &v145 - v23;
  v24 = OBJC_IVAR___WOBackgroundAssertionManager_assertions;
  swift_beginAccess();
  v157 = a1;
  v149 = v24;
  v25 = *(a1 + v24);

  v158 = a3;
  v26 = specialized NestedDictionary.get(_:_:)(a2, a3, v25);

  v159 = a2;
  if (v26)
  {
    if ([v26 isValid])
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static WOLog.default);
      v28 = v151;
      v29 = v160;
      (*(v12 + 16))(v151, v158, v160);
      v30 = v26;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v154 = v7;
        v155 = v12;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock[0] = v35;
        v36 = v159;
        v37 = 0xE700000000000000;
        *v33 = 138413058;
        *(v33 + 4) = v30;
        *v34 = v26;
        *(v33 + 12) = 2080;
        v38 = 1702256979;
        v39 = 0x797265766F636552;
        if (v36 == 1)
        {
          v37 = 0xE800000000000000;
        }

        else
        {
          v39 = 0x6E6F6973736553;
        }

        if (v36)
        {
          v38 = v39;
        }

        else
        {
          v37 = 0xE400000000000000;
        }

        if (v36 <= 2)
        {
          v40 = v38;
        }

        else
        {
          v40 = 1702256979;
        }

        if (v36 <= 2)
        {
          v41 = v37;
        }

        else
        {
          v41 = 0xE400000000000000;
        }

        v42 = v35;
        v43 = v30;
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, aBlock);

        *(v33 + 14) = v44;
        *(v33 + 22) = 2080;
        v45 = UUID.uuidString.getter();
        v47 = v46;
        (*(v155 + 8))(v28, v160);
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, aBlock);

        *(v33 + 24) = v48;
        *(v33 + 32) = 2112;
        v49 = [objc_opt_self() currentThread];
        *(v33 + 34) = v49;
        v34[1] = v49;
        _os_log_impl(&dword_20AEA4000, v31, v32, "Valid background assertion already exists %@ (type: %s, uuid: %s, thread: %@", v33, 0x2Au);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v34, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v42, -1, -1);
        MEMORY[0x20F2E9420](v33, -1, -1);

        v50 = 1;
      }

      else
      {

        (*(v12 + 8))(v28, v29);
        v50 = 1;
      }

      goto LABEL_95;
    }
  }

  v147 = v17;
  v154 = v7;
  v51 = 0xE700000000000000;
  v52 = 0x797265766F636552;
  if (a2 == 1)
  {
    v51 = 0xE800000000000000;
  }

  else
  {
    v52 = 0x6E6F6973736553;
  }

  if (a2)
  {
    v53 = v52;
  }

  else
  {
    v53 = 1702256979;
  }

  if (!a2)
  {
    v51 = 0xE400000000000000;
  }

  if (a2 <= 2u)
  {
    v54 = v53;
  }

  else
  {
    v54 = 1702256979;
  }

  if (a2 <= 2u)
  {
    v55 = v51;
  }

  else
  {
    v55 = 0xE400000000000000;
  }

  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = v160;
  v150 = *(v12 + 16);
  v151 = (v12 + 16);
  v150(v22, v158, v160);
  v58 = (*(v12 + 80) + 17) & ~*(v12 + 80);
  v59 = (v13 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  *(v60 + 16) = v159;
  v155 = v12;
  (*(v12 + 32))(v60 + v58, v22, v57);
  *(v60 + v59) = v56;

  v61 = MEMORY[0x20F2E6C00](v54, v55);

  v62 = MEMORY[0x20F2E6C00](v152, v153);
  aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:);
  aBlock[5] = v60;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_37;
  v63 = _Block_copy(aBlock);

  v64 = [objc_opt_self() assertionWithName:v61 explanation:v62 timeout:v63 timeoutHandler:a7];
  _Block_release(v63);

  if (v64)
  {
    v65 = *(v157 + v149);

    v66 = v158;
    v67 = specialized NestedDictionary.get(_:_:)(v159, v158, v65);

    v68 = v160;
    v69 = v66;
    if (v67)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      __swift_project_value_buffer(v70, static WOLog.default);
      v71 = v148;
      v150(v148, v66, v68);
      v72 = v64;
      v152 = v67;
      v73 = v67;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();

      LODWORD(v153) = v75;
      v76 = v75;
      v77 = v74;
      if (os_log_type_enabled(v74, v76))
      {
        v146 = v73;
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        aBlock[0] = v80;
        *v78 = 138413314;
        *(v78 + 4) = v72;
        v81 = v79;
        *v79 = v64;
        *(v78 + 12) = 2080;
        v82 = 0xE700000000000000;
        v83 = 0x797265766F636552;
        if (v159 == 1)
        {
          v82 = 0xE800000000000000;
        }

        else
        {
          v83 = 0x6E6F6973736553;
        }

        if (v159)
        {
          v84 = v83;
        }

        else
        {
          v84 = 1702256979;
        }

        if (!v159)
        {
          v82 = 0xE400000000000000;
        }

        if (v159 <= 2u)
        {
          v85 = v84;
        }

        else
        {
          v85 = 1702256979;
        }

        if (v159 <= 2u)
        {
          v86 = v82;
        }

        else
        {
          v86 = 0xE400000000000000;
        }

        v87 = v80;
        v88 = v72;
        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, aBlock);

        *(v78 + 14) = v89;
        *(v78 + 22) = 2080;
        v90 = v148;
        v91 = UUID.uuidString.getter();
        v93 = v92;
        v94 = v90;
        v95 = v160;
        (*(v155 + 8))(v94, v160);
        v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, aBlock);

        *(v78 + 24) = v96;
        *(v78 + 32) = 2112;
        v73 = v146;
        *(v78 + 34) = v146;
        v81[1] = v152;
        *(v78 + 42) = 2112;
        v97 = objc_opt_self();
        v98 = v73;
        v99 = [v97 currentThread];
        *(v78 + 44) = v99;
        v81[2] = v99;
        _os_log_impl(&dword_20AEA4000, v77, v153, "Acquiring background assertion %@ for (type: %s, uuid: %s) - existing assertion %@ will be invalidated, thread: %@", v78, 0x34u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v81, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v87, -1, -1);
        v100 = v78;
        v68 = v95;
        MEMORY[0x20F2E9420](v100, -1, -1);
      }

      else
      {

        (*(v155 + 8))(v71, v68);
      }

      [v73 invalidate];

      v69 = v158;
    }

    swift_beginAccess();
    v121 = v159;
    specialized NestedDictionary.put(_:_:_:)(v159, v69, v64);
    swift_endAccess();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v122 = type metadata accessor for Logger();
    __swift_project_value_buffer(v122, static WOLog.default);
    v123 = v147;
    v150(v147, v69, v68);
    v124 = v64;
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      aBlock[0] = v129;
      *v127 = 138413058;
      *(v127 + 4) = v124;
      *v128 = v64;
      *(v127 + 12) = 2080;
      v130 = v121;
      v131 = 0xE700000000000000;
      v132 = 0x797265766F636552;
      if (v121 == 1)
      {
        v131 = 0xE800000000000000;
      }

      else
      {
        v132 = 0x6E6F6973736553;
      }

      if (v121)
      {
        v133 = v132;
      }

      else
      {
        v133 = 1702256979;
      }

      if (!v121)
      {
        v131 = 0xE400000000000000;
      }

      if (v121 <= 2u)
      {
        v134 = v133;
      }

      else
      {
        v134 = 1702256979;
      }

      if (v130 <= 2)
      {
        v135 = v131;
      }

      else
      {
        v135 = 0xE400000000000000;
      }

      v136 = v129;
      v137 = v124;
      v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v135, aBlock);

      *(v127 + 14) = v138;
      *(v127 + 22) = 2080;
      v139 = v147;
      v140 = UUID.uuidString.getter();
      v142 = v141;
      (*(v155 + 8))(v139, v160);
      v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v142, aBlock);

      *(v127 + 24) = v143;
      *(v127 + 32) = 2112;
      v144 = [objc_opt_self() currentThread];
      *(v127 + 34) = v144;
      v128[1] = v144;
      _os_log_impl(&dword_20AEA4000, v125, v126, "Acquired background assertion %@ (type: %s, uuid: %s), thread: %@", v127, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v128, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v136, -1, -1);
      MEMORY[0x20F2E9420](v127, -1, -1);

      v50 = 0;
    }

    else
    {

      (*(v155 + 8))(v123, v68);
      v50 = 0;
    }
  }

  else
  {
    v101 = v159;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    __swift_project_value_buffer(v102, static WOLog.default);
    v103 = v146;
    v104 = v160;
    v150(v146, v158, v160);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      aBlock[0] = v109;
      *v107 = 136315650;
      v110 = 0xE700000000000000;
      v111 = 0x797265766F636552;
      if (v101 == 1)
      {
        v110 = 0xE800000000000000;
      }

      else
      {
        v111 = 0x6E6F6973736553;
      }

      if (v101)
      {
        v112 = v111;
      }

      else
      {
        v112 = 1702256979;
      }

      if (!v101)
      {
        v110 = 0xE400000000000000;
      }

      if (v101 <= 2u)
      {
        v113 = v112;
      }

      else
      {
        v113 = 1702256979;
      }

      if (v101 <= 2u)
      {
        v114 = v110;
      }

      else
      {
        v114 = 0xE400000000000000;
      }

      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, aBlock);

      *(v107 + 4) = v115;
      *(v107 + 12) = 2080;
      v116 = UUID.uuidString.getter();
      v118 = v117;
      (*(v155 + 8))(v103, v160);
      v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v118, aBlock);

      *(v107 + 14) = v119;
      *(v107 + 22) = 2112;
      v120 = [objc_opt_self() currentThread];
      *(v107 + 24) = v120;
      *v108 = v120;
      _os_log_impl(&dword_20AEA4000, v105, v106, "Cannot create background assertion for (type: %s, uuid: %s), thread: %@", v107, 0x20u);
      outlined destroy of NSObject?(v108);
      MEMORY[0x20F2E9420](v108, -1, -1);
      v50 = 2;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v109, -1, -1);
      MEMORY[0x20F2E9420](v107, -1, -1);
    }

    else
    {

      (*(v155 + 8))(v103, v104);
      v50 = 2;
    }
  }

LABEL_95:
  *v156 = v50;
}

uint64_t sub_20AEB6124()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t __os_log_helper_16_2_3_8_66_8_66_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t specialized NestedDictionary.put(_:_:_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if ((*v3)[2])
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v8)
    {
      goto LABEL_5;
    }

    v9 = *v3;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[0] = *v4;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(MEMORY[0x277D84F98], a1, isUniquelyReferenced_nonNull_native);
  *v4 = v14[0];
LABEL_5:
  v11 = specialized Dictionary.subscript.modify(v14, a1);
  if (*v12)
  {
  }

  return (v11)(v14, 0);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v18 = *v4;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v20);
  }
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v18 = *v4;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      type metadata accessor for NLCompoundActivityPickerSection(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v20);
  }
}

{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v25 = *v4;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v18 = *v4;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;

    return MEMORY[0x2821F96F8]();
  }

  return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v20);
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v18 = *v4;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;

    return MEMORY[0x2821F96F8]();
  }

  return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v20);
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v18 = *v4;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v20);
  }
}

{
  v4 = v3;
  v8 = type metadata accessor for Station.Mood();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v29 = *v4;
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

{
  v4 = v3;
  v8 = type metadata accessor for Station.Mood();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v25 = *v4;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v18 = *v4;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      type metadata accessor for HKWorkoutActivityType(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v20);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](a1);
  v4 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](a1 + 5);
  v4 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t lazy protocol witness table accessor for type BackgroundAssertionType and conformance BackgroundAssertionType()
{
  result = lazy protocol witness table cache variable for type BackgroundAssertionType and conformance BackgroundAssertionType;
  if (!lazy protocol witness table cache variable for type BackgroundAssertionType and conformance BackgroundAssertionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundAssertionType and conformance BackgroundAssertionType);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v19 + 48) + v4);
      if (v6 <= 1)
      {
        v7 = *(*(v19 + 48) + v4) ? 0xD000000000000013 : 0x7974697669746361;
        v8 = *(*(v19 + 48) + v4) ? 0x800000020B454C70 : 0xEC00000065707954;
      }

      else if (v6 == 2)
      {
        v8 = 0xE700000000000000;
        v7 = 0x646574754D7369;
      }

      else
      {
        v7 = v6 == 3 ? 0x6E6F697461636F6CLL : 0xD000000000000011;
        v8 = v6 == 3 ? 0xEC00000065707954 : 0x800000020B454CA0;
      }

      if (v5 == 3)
      {
        v9 = 0x6E6F697461636F6CLL;
      }

      else
      {
        v9 = 0xD000000000000011;
      }

      if (v5 == 3)
      {
        v10 = 0xEC00000065707954;
      }

      else
      {
        v10 = 0x800000020B454CA0;
      }

      if (v5 == 2)
      {
        v9 = 0x646574754D7369;
        v10 = 0xE700000000000000;
      }

      v11 = 0xD000000000000013;
      if (v5)
      {
        v12 = 0x800000020B454C70;
      }

      else
      {
        v11 = 0x7974697669746361;
        v12 = 0xEC00000065707954;
      }

      v13 = v5 <= 1 ? v11 : v9;
      v14 = v5 <= 1 ? v12 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, unsigned __int8 a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, unsigned __int8 a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = specialized Dictionary._Variant.asNative.modify(v6);
  v6[9] = specialized _NativeDictionary.subscript.modify((v6 + 4), a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

Swift::Int (*specialized _NativeDictionary.subscript.modify(uint64_t a1, unsigned __int8 a2, char a3))(Swift::Int result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v18 = *v4;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v20 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v20 = 0;
  }

  *a1 = v20;
  return _NativeDictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v29 = v14;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v16;
  if (*(v14 + 24) < v20)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v3 & 1) == (v21 & 1))
    {
      goto LABEL_6;
    }

    v15 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v25 = v15;
    specialized _NativeDictionary.copy()();
    v15 = v25;
    v22 = v29;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    v26 = v15;
    (*(v8 + 16))(v11, a2, v7);
    specialized _NativeDictionary._insert(at:key:value:)(v26, v11, a1, v22);
    v24 = 0;
    goto LABEL_11;
  }

LABEL_6:
  v22 = v29;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v23 = *(v22 + 56);
  v24 = *(v23 + 8 * v15);
  *(v23 + 8 * v15) = a1;
LABEL_11:
  *v4 = v22;
  return v24;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  v5 = MEMORY[0x277CC95F0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x277CC95F0], &lazy protocol witness table cache variable for type UUID and conformance UUID, v5, MEMORY[0x277CC9610]);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](a1);
  v4 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Date();
  v5 = MEMORY[0x277CC9578];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x277CC9578], &lazy protocol witness table cache variable for type Date and conformance Date, v5, MEMORY[0x277CC9598]);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = MEMORY[0x20F2E7FD0](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  swift_beginAccess();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  String.hash(into:)();

  v6 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Station.Mood();
  v5 = MEMORY[0x277D2B280];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, MEMORY[0x277D2B280]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x277D2B280], &lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, v5, MEMORY[0x277D2B298]);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for FIWorkoutActivityType, 0x277D095E0);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);

  String.hash(into:)();

  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(a1 + 24));
  v7 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v7);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for HKSampleType, 0x277CCD8D8);
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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