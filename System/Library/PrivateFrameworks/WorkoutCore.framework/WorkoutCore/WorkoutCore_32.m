unint64_t lazy protocol witness table accessor for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t WorkoutDeviceWatchScanner.foundDevice.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

BOOL WorkoutDeviceWatchScanner.pairedWatchNearby.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_client) activeDevices];
  _sSo17OS_dispatch_queueCMaTm_14(0, &lazy cache variable for type metadata for RPCompanionLinkDevice, 0x277D44170);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_6;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while ((v3 & 0xC000000000000001) == 0)
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v5)
      {
        return v4 != 0;
      }

      __break(1u);
LABEL_6:
      v6 = v3;
      v4 = __CocoaSet.count.getter();
      v3 = v6;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    MEMORY[0x20F2E7A20](0, v3);
    swift_unknownObjectRelease();
  }

LABEL_9:

  return v4 != 0;
}

id WorkoutDeviceWatchScanner.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21RPCompanionLinkDeviceCSgGMd, &_s7Combine9PublishedVySo21RPCompanionLinkDeviceCSgGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_client;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  *&v0[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_watchController] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationCancellable] = 0;
  v7 = OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner__foundDevice;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21RPCompanionLinkDeviceCSgMd, &_sSo21RPCompanionLinkDeviceCSgMR);
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v7], v5, v1);
  *&v0[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationUtility] = [objc_allocWithZone(type metadata accessor for WorkoutAppInstallationUtility()) init];
  v8 = type metadata accessor for WorkoutDeviceWatchScanner();
  v12.receiver = v0;
  v12.super_class = v8;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  WorkoutDeviceWatchScanner.setupClient()();
  WorkoutDeviceWatchScanner.observeWorkoutAppInstallation()();

  return v9;
}

id WorkoutDeviceWatchScanner.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_watchController;
  v3 = *&v1[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_watchController];
  if (v3)
  {
    [v3 cancel];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  v5 = OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationCancellable;
  if (*&v1[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationCancellable])
  {
    v6 = *&v1[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationCancellable];

    AnyCancellable.cancel()();

    v7 = *&v1[v5];
  }

  *&v1[v5] = 0;

  v9.receiver = v1;
  v9.super_class = type metadata accessor for WorkoutDeviceWatchScanner();
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t WorkoutDeviceWatchScanner.observeWorkoutAppInstallation()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D20AppInstallationStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D20AppInstallationStateO_GMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy11WorkoutCore0G20AppInstallationStateO_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy11WorkoutCore0G20AppInstallationStateO_GSo17OS_dispatch_queueCGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationUtility);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  _sSo17OS_dispatch_queueCMaTm_14(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v16 = static OS_dispatch_queue.main.getter();
  v22[1] = v16;
  v17 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type Published<WorkoutAppInstallationState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D20AppInstallationStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D20AppInstallationStateO_GMR);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  Publisher.receive<A>(on:options:)();
  _sSo8NSObjectCSgWOhTm_10(v4, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v6 + 8))(v9, v5);
  swift_allocObject();
  v18 = v22[0];
  swift_unknownObjectWeakInit();
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<WorkoutAppInstallationState>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy11WorkoutCore0G20AppInstallationStateO_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy11WorkoutCore0G20AppInstallationStateO_GSo17OS_dispatch_queueCGMR);
  v19 = Publisher<>.sink(receiveValue:)();

  (*(v11 + 8))(v14, v10);
  v20 = *(v18 + OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationCancellable);
  *(v18 + OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationCancellable) = v19;
}

void closure #1 in WorkoutDeviceWatchScanner.observeWorkoutAppInstallation()(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.devices);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      v9 = 0xE900000000000064;
      v10 = 0x656C6C6174736E69;
      if (v1 != 1)
      {
        v10 = 0x6174736E49746F6ELL;
        v9 = 0xEC00000064656C6CLL;
      }

      if (v1)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0x6E776F6E6B6E75;
      }

      if (v1)
      {
        v12 = v9;
      }

      else
      {
        v12 = 0xE700000000000000;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_20AEA4000, v5, v6, "[WorkoutDeviceWatchScanner] workout app installation state changed to %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F2E9420](v8, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    WorkoutDeviceWatchScanner.reevaluateDeviceAvailability()();
  }
}

void WorkoutDeviceWatchScanner.reevaluateDeviceAvailability()()
{
  v2 = [*&v0[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_client] activeDevices];
  _sSo17OS_dispatch_queueCMaTm_14(0, &lazy cache variable for type metadata for RPCompanionLinkDevice, 0x277D44170);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x20F2E7A20](0, v3);
      goto LABEL_6;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v3 + 32);
LABEL_6:
      v10 = v4;

      WorkoutDeviceWatchScanner.updateFoundDevice(with:)(v10);

      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  v1 = v0;

  if (one-time initialization token for devices != -1)
  {
LABEL_16:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.devices);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20AEA4000, v6, v7, "[WorkoutDeviceWatchScanner] No active device available", v8, 2u);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v1;
  static Published.subscript.setter();
}

void WorkoutDeviceWatchScanner.updateFoundDevice(with:)(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationUtility];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v20 == 2)
  {
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.devices);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_19;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "[WorkoutDeviceWatchScanner] Workout app not installed, clearing foundDevice";
LABEL_18:
    _os_log_impl(&dword_20AEA4000, v6, v7, v9, v8, 2u);
    MEMORY[0x20F2E9420](v8, -1, -1);
LABEL_19:

    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v2;
    static Published.subscript.setter();
    return;
  }

  v10 = *&v2[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_watchController];
  if (!v10)
  {
LABEL_14:
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.devices);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_19;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "[WorkoutDeviceWatchScanner] Watch not unlocked and on wrist, clearing foundDevice";
    goto LABEL_18;
  }

  v11 = v10;
  if (![v11 isUnlockedAndOnWrist])
  {

    goto LABEL_14;
  }

  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.devices);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20AEA4000, v13, v14, "[WorkoutDeviceWatchScanner] Device is available and workout app is installed", v15, 2u);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v2;
  v17 = a1;
  static Published.subscript.setter();
}

void WorkoutDeviceWatchScanner.setupClient()()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_client);
  v2 = MEMORY[0x20F2E6C00](0xD00000000000002DLL, 0x800000020B463250);
  [v1 setAppID_];

  [v1 setControlFlags_];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = partial apply for closure #1 in WorkoutDeviceWatchScanner.setupClient();
  v17 = v3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice) -> ();
  v15 = &block_descriptor_31_2;
  v4 = _Block_copy(&v12);

  [v1 setDeviceFoundHandler_];
  _Block_release(v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = partial apply for closure #2 in WorkoutDeviceWatchScanner.setupClient();
  v17 = v5;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice) -> ();
  v15 = &block_descriptor_35;
  v6 = _Block_copy(&v12);

  [v1 setDeviceLostHandler_];
  _Block_release(v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = partial apply for closure #3 in WorkoutDeviceWatchScanner.setupClient();
  v17 = v7;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice, @unowned RPDeviceChangeFlags) -> ();
  v15 = &block_descriptor_39_2;
  v8 = _Block_copy(&v12);

  [v1 setDeviceChangedHandler_];
  _Block_release(v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = partial apply for closure #4 in WorkoutDeviceWatchScanner.setupClient();
  v17 = v9;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice) -> ();
  v15 = &block_descriptor_43_0;
  v10 = _Block_copy(&v12);

  [v1 setLocalDeviceUpdatedHandler_];
  _Block_release(v10);
  v16 = closure #5 in WorkoutDeviceWatchScanner.setupClient();
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v15 = &block_descriptor_46;
  v11 = _Block_copy(&v12);
  [v1 activateWithCompletion_];
  _Block_release(v11);
}

uint64_t closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

uint64_t closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient()()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 72) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient(), v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  closure #1 in WorkoutDeviceWatchScanner.handleDeviceChanged(_:)(v2, v3);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

void thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

uint64_t closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient()()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 72) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient(), v4, v3);
  }

  else
  {
    **(v0 + 48) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v2 = v0[8];
  v1 = v0[9];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[5] = 0;
  v3 = v2;
  static Published.subscript.setter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

{

  **(v0 + 48) = *(v0 + 64) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #3 in WorkoutDeviceWatchScanner.setupClient()(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v37 - v7;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.devices);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v37 = a3;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315394;
    v15 = [v10 identifier];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v38 = v17;
    v39 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v20 = Optional.description.getter();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v40);

    *(v13 + 4) = v23;
    *(v13 + 12) = 2080;
    v24 = [v10 name];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v38 = v26;
    v39 = v28;
    v29 = Optional.description.getter();
    v31 = v30;

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v40);

    *(v13 + 14) = v32;
    _os_log_impl(&dword_20AEA4000, v11, v12, "[WorkoutDeviceWatchScanner] Device changed: %s: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);

    a3 = v37;
  }

  else
  {
  }

  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v8, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = a3;
  v34[5] = v10;
  v35 = v10;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient(), v34);
}

uint64_t closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

uint64_t closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient()()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 72) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient(), v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  closure #1 in WorkoutDeviceWatchScanner.handleDeviceChanged(_:)(v2, v3);

  return MEMORY[0x2822009F8](closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

{

  **(v0 + 40) = *(v0 + 64) == 0;
  v1 = *(v0 + 8);

  return v1();
}

void thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice, @unowned RPDeviceChangeFlags) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t closure #1 in WorkoutDeviceWatchScanner.setupClient()(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v42 - v12;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.devices);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v43 = a3;
    v44 = a4;
    v45 = a2;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v49 = v19;
    *v18 = 136315394;
    v20 = [v15 identifier];
    v46 = a5;
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v47 = v22;
    v48 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v25 = Optional.description.getter();
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v49);

    *(v18 + 4) = v28;
    *(v18 + 12) = 2080;
    v29 = [v15 name];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    a5 = v46;
    v47 = v31;
    v48 = v33;
    v34 = Optional.description.getter();
    v36 = v35;

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v49);

    *(v18 + 14) = v37;
    _os_log_impl(&dword_20AEA4000, v16, v17, v43, v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v19, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);

    a2 = v45;
  }

  else
  {
  }

  v38 = type metadata accessor for TaskPriority();
  (*(*(v38 - 8) + 56))(v13, 1, 1, v38);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = a2;
  v39[5] = v15;
  v40 = v15;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v13, a5, v39);
}

uint64_t closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

uint64_t closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient()()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 72) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient(), v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  closure #1 in WorkoutDeviceWatchScanner.handleDeviceChanged(_:)(v2, v3);

  return MEMORY[0x2822009F8](closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient(), 0, 0);
}

void closure #5 in WorkoutDeviceWatchScanner.setupClient()(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.activityPicker);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      swift_getErrorValue();
      v9 = MEMORY[0x20F2E7F50]();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_20AEA4000, v5, v6, "Error activating paired companion link: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F2E9420](v8, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    else
    {
    }
  }
}

void closure #1 in WorkoutDeviceWatchScanner.handleDeviceChanged(_:)(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_watchController;
  if (!*(a1 + OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_watchController))
  {
    v5 = [objc_allocWithZone(WOWorkoutDevicePairedWatchController) init];
    v6 = *(a1 + v4);
    *(a1 + v4) = v5;
    v7 = v5;

    if (v7)
    {
      [v7 setDelegate_];
    }

    [*(a1 + v4) activate];
  }

  WorkoutDeviceWatchScanner.updateFoundDevice(with:)(a2);
}

uint64_t closure #1 in WorkoutDeviceWatchScanner.workoutDevicePairedWatchControllerDidUpdateStatus(_:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.devices);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a2 & 1;
      _os_log_impl(&dword_20AEA4000, v6, v7, "[WorkoutDeviceWatchScanner] Paired watch status updated: isUnlockedAndOnWrist = %{BOOL}d", v8, 8u);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    if ((a2 & 1) == 0 || (v9 = *&v4[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationUtility], swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v36 == 2))
    {
      v10 = v4;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v36 = v14;
        *v13 = 67109378;
        *(v13 + 4) = a2 & 1;
        *(v13 + 8) = 2080;
        v15 = *&v10[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationUtility];
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v16 = 0xE900000000000064;
        v17 = 0x656C6C6174736E69;
        if (v35 != 1)
        {
          v17 = 0x6174736E49746F6ELL;
          v16 = 0xEC00000064656C6CLL;
        }

        if (v35)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0x6E776F6E6B6E75;
        }

        if (v35)
        {
          v19 = v16;
        }

        else
        {
          v19 = 0xE700000000000000;
        }

        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v36);

        *(v13 + 10) = v20;
        _os_log_impl(&dword_20AEA4000, v11, v12, "[WorkoutDeviceWatchScanner] Clearing found device - watch not on wrist (%{BOOL}d) or workout app not installed (%s)", v13, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x20F2E9420](v14, -1, -1);
        MEMORY[0x20F2E9420](v13, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v36 = 0;
      return static Published.subscript.setter();
    }

    v21 = [*&v4[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_client] activeDevices];
    _sSo17OS_dispatch_queueCMaTm_14(0, &lazy cache variable for type metadata for RPCompanionLinkDevice, 0x277D44170);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (result)
      {
        goto LABEL_23;
      }
    }

    else
    {
      result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_23:
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x20F2E7A20](0, v22);
        }

        else
        {
          if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v23 = *(v22 + 32);
        }

        v24 = v23;

        v25 = v24;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v28 = 138412290;
          *(v28 + 4) = v25;
          *v29 = v25;
          v30 = v25;
          _os_log_impl(&dword_20AEA4000, v26, v27, "[WorkoutDeviceWatchScanner] Updating found device status %@ - workout app is installed and watch is on wrist", v28, 0xCu);
          _sSo8NSObjectCSgWOhTm_10(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x20F2E9420](v29, -1, -1);
          MEMORY[0x20F2E9420](v28, -1, -1);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v36 = v25;
        return static Published.subscript.setter();
      }
    }

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_20AEA4000, v31, v32, "[WorkoutDeviceWatchScanner] activeDevices is empty when the watch is on wrist. Setting foundDevice.", v33, 2u);
      MEMORY[0x20F2E9420](v33, -1, -1);
    }

    v34 = [objc_allocWithZone(MEMORY[0x277D44170]) init];
    swift_getKeyPath();
    swift_getKeyPath();
    v36 = v34;
    return static Published.subscript.setter();
  }

  return result;
}

void type metadata completion function for WorkoutDeviceWatchScanner()
{
  type metadata accessor for Published<RPCompanionLinkDevice?>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<RPCompanionLinkDevice?>()
{
  if (!lazy cache variable for type metadata for Published<RPCompanionLinkDevice?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo21RPCompanionLinkDeviceCSgMd, &_sSo21RPCompanionLinkDeviceCSgMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<RPCompanionLinkDevice?>);
    }
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutDeviceWatchScanner@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutDeviceWatchScanner();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for WorkoutDeviceWatchScanner.foundDevice : WorkoutDeviceWatchScanner@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutDeviceWatchScanner.foundDevice : WorkoutDeviceWatchScanner(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

uint64_t partial apply for closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient();

  return closure #1 in closure #4 in WorkoutDeviceWatchScanner.setupClient()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient();

  return closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #3 in WorkoutDeviceWatchScanner.setupClient()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient();

  return closure #1 in closure #2 in WorkoutDeviceWatchScanner.setupClient()(a1, v4, v5, v7);
}

uint64_t objectdestroy_48Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient();

  return closure #1 in closure #1 in WorkoutDeviceWatchScanner.setupClient()(a1, v4, v5, v7, v6);
}

uint64_t HeartRateZone.__allocating_init(displaySpan:configuration:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  result = swift_allocObject();
  v9 = floor(a3);
  v10 = floor(a4);
  if (v9 > v10)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v9;
    *(result + 24) = v10;
    *(result + 32) = a1;
    *(result + 40) = a2;
  }

  return result;
}

uint64_t zoneColor(for:index:count:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v4 = type metadata accessor for Color.RGBColorSpace();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B4238A0;
  v10 = *MEMORY[0x277CE0EE0];
  v11 = *(v5 + 104);
  v11(v8, v10, v4);
  *(inited + 32) = Color.init(_:red:green:blue:opacity:)();
  v11(v8, v10, v4);
  v40 = Color.init(_:red:green:blue:opacity:)();
  *(inited + 40) = v40;
  v11(v8, v10, v4);
  v12 = Color.init(_:red:green:blue:opacity:)();
  *(inited + 48) = v12;
  v11(v8, v10, v4);
  v13 = Color.init(_:red:green:blue:opacity:)();
  *(inited + 56) = v13;
  v11(v8, v10, v4);
  v14 = Color.init(_:red:green:blue:opacity:)();
  *(inited + 64) = v14;
  v11(v8, v10, v4);
  *(inited + 72) = Color.init(_:red:green:blue:opacity:)();
  v11(v8, v10, v4);
  v15 = Color.init(_:red:green:blue:opacity:)();
  *(inited + 80) = v15;
  v16 = v4;
  v17 = v43;
  v11(v8, v10, v16);
  v18 = v42;
  v19 = Color.init(_:red:green:blue:opacity:)();
  *(inited + 88) = v19;
  if ((v18 & 0x8000000000000000) != 0 || v18 >= v17)
  {
    goto LABEL_33;
  }

  if (v17 > 5)
  {
    switch(v17)
    {
      case 6:
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_20B423930;
        v25 = v40;
        *(v24 + 32) = *(inited + 32);
        *(v24 + 40) = v25;
        *(v24 + 48) = v12;
        *(v24 + 56) = v13;
        *(v24 + 64) = v14;

        *(v24 + 72) = v15;
        inited = v24;
        goto LABEL_15;
      case 7:
        v21 = v19;
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_20B423920;
        v23 = v40;
        *(v22 + 32) = *(inited + 32);
        *(v22 + 40) = v23;
        *(v22 + 48) = v12;
        *(v22 + 56) = v13;
        *(v22 + 64) = v14;
        *(v22 + 72) = v15;

        v17 = v43;

        *(v22 + 80) = v21;
        inited = v22;
        goto LABEL_15;
      case 8:
        v27 = *(inited + 16);
        goto LABEL_28;
    }

    goto LABEL_33;
  }

  if (v17 == 3)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_20B423A20;
    *(v20 + 32) = *(inited + 32);
    *(v20 + 40) = v12;

    *(v20 + 48) = v15;
    goto LABEL_14;
  }

  if (v17 != 4)
  {
    if (v17 == 5)
    {
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_20B423940;
      v26 = v40;
      *(v20 + 32) = *(inited + 32);
      *(v20 + 40) = v26;
      *(v20 + 48) = v12;
      *(v20 + 56) = v14;

      *(v20 + 64) = v15;
      goto LABEL_14;
    }

    while (1)
    {
LABEL_33:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20B4290B0;
  *(v20 + 32) = *(inited + 32);
  *(v20 + 40) = v12;
  *(v20 + 48) = v14;

  *(v20 + 56) = v15;
LABEL_14:
  inited = v20;
LABEL_15:
  v27 = *(inited + 16);
  if (v27 > v18)
  {
LABEL_28:
    if (v27 > v18)
    {
      v36 = *(inited + 8 * v18 + 32);

      return v36;
    }

    __break(1u);
    goto LABEL_32;
  }

  if (one-time initialization token for core != -1)
  {
LABEL_32:
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static WOLog.core);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v44 = v32;
    *v31 = 136315650;
    if (v39)
    {
      v33 = 0x6E6F5A7265776F70;
    }

    else
    {
      v33 = 0x7461527472616568;
    }

    if (v39)
    {
      v34 = 0xE900000000000065;
    }

    else
    {
      v34 = 0xED0000656E6F5A65;
    }

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v44);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2048;
    *(v31 + 14) = v18;
    *(v31 + 22) = 2048;
    *(v31 + 24) = v17;
    _os_log_impl(&dword_20AEA4000, v29, v30, "Unsupported zone color for (zoneViewType: %s,  index: %ld, count: %ld)", v31, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm_6(v32);
    MEMORY[0x20F2E9420](v32, -1, -1);
    MEMORY[0x20F2E9420](v31, -1, -1);
  }

  return Color.init(hue:saturation:brightness:opacity:)();
}

uint64_t HeartRateZone.init(displaySpan:configuration:)(uint64_t result, uint64_t a2, double a3, double a4)
{
  v5 = floor(a3);
  v6 = floor(a4);
  if (v5 > v6)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = v6;
    *(v4 + 32) = result;
    *(v4 + 40) = a2;
    return v4;
  }

  return result;
}

uint64_t HeartRateZone.__allocating_init(from:)(uint64_t *a1)
{
  swift_allocObject();
  outlined init with copy of Decoder(a1, v4);
  v2 = Zone.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_0Tm_6(a1);
  return v2;
}

uint64_t HeartRateZone.init(from:)(uint64_t *a1)
{
  outlined init with copy of Decoder(a1, v4);
  v2 = Zone.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_0Tm_6(a1);
  return v2;
}

id WorkoutChartDataElement.__allocating_init(date:value:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  *&v5[OBJC_IVAR___WOWorkoutChartDataElement_value] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

uint64_t key path getter for WorkoutChartDataElement.date : WorkoutChartDataElement@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for WorkoutChartDataElement.date : WorkoutChartDataElement(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t WorkoutChartDataElement.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t WorkoutChartDataElement.date.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double WorkoutChartDataElement.value.getter()
{
  v1 = OBJC_IVAR___WOWorkoutChartDataElement_value;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorkoutChartDataElement.value.setter(double a1)
{
  v3 = OBJC_IVAR___WOWorkoutChartDataElement_value;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id WorkoutChartDataElement.init(date:value:)(uint64_t a1, double a2)
{
  v5 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  *&v2[OBJC_IVAR___WOWorkoutChartDataElement_value] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for WorkoutChartDataElement();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t type metadata accessor for WorkoutChartDataElement()
{
  result = type metadata singleton initialization cache for WorkoutChartDataElement;
  if (!type metadata singleton initialization cache for WorkoutChartDataElement)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int WorkoutChartDataElement.hash.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  v7 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
  dispatch thunk of Hashable.hash(into:)();
  (*(v3 + 8))(v6, v2);
  v8 = OBJC_IVAR___WOWorkoutChartDataElement_value;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v9);
  return Hasher.finalize()();
}

BOOL WorkoutChartDataElement.isEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  outlined init with copy of Any?(a1, v22);
  if (v23)
  {
    type metadata accessor for WorkoutChartDataElement();
    if (swift_dynamicCast())
    {
      v11 = v21[7];
      v12 = OBJC_IVAR___WOWorkoutChartDataElement_date;
      swift_beginAccess();
      v13 = v4[2];
      v13(v10, v1 + v12, v3);
      v14 = OBJC_IVAR___WOWorkoutChartDataElement_date;
      swift_beginAccess();
      v13(v8, &v11[v14], v3);
      LOBYTE(v14) = static Date.== infix(_:_:)();
      v15 = v4[1];
      v15(v8, v3);
      v15(v10, v3);
      if (v14)
      {
        v16 = OBJC_IVAR___WOWorkoutChartDataElement_value;
        swift_beginAccess();
        v17 = *(v1 + v16);
        v18 = OBJC_IVAR___WOWorkoutChartDataElement_value;
        swift_beginAccess();
        v19 = *&v11[v18];

        return v17 == v19;
      }
    }
  }

  else
  {
    outlined destroy of Any?(v22);
  }

  return 0;
}

BOOL static WorkoutChartDataElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v20[-v10];
  v12 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  v13 = v5[2];
  v13(v11, a1 + v12, v4);
  v14 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  v13(v9, a2 + v14, v4);
  LOBYTE(v14) = static Date.== infix(_:_:)();
  v15 = v5[1];
  v15(v9, v4);
  v15(v11, v4);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v16 = OBJC_IVAR___WOWorkoutChartDataElement_value;
  swift_beginAccess();
  v17 = *(a1 + v16);
  v18 = OBJC_IVAR___WOWorkoutChartDataElement_value;
  swift_beginAccess();
  return v17 == *(a2 + v18);
}

id WorkoutChartDataElement.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutChartDataElement.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutChartDataElement.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance WorkoutChartDataElement.CodingKeys()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 1702125924;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkoutChartDataElement.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutChartDataElement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutChartDataElement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id WorkoutChartDataElement.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutChartDataElement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WorkoutChartDataElement.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D16ChartDataElementC10CodingKeys33_6F6E8A068D440DC4B222C7D8CFCBB10FLLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D16ChartDataElementC10CodingKeys33_6F6E8A068D440DC4B222C7D8CFCBB10FLLOGMR);
  v20 = *(v9 - 8);
  v10 = *(v20 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v14, v4);
  v21 = 0;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
  v15 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v5 + 8))(v8, v4);
  if (!v15)
  {
    v16 = OBJC_IVAR___WOWorkoutChartDataElement_value;
    swift_beginAccess();
    v17 = *(v2 + v16);
    v22 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v20 + 8))(v12, v9);
}

unint64_t lazy protocol witness table accessor for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys);
  }

  return result;
}

id WorkoutChartDataElement.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v25 = *(v5 - 8);
  v26 = v5;
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D16ChartDataElementC10CodingKeys33_6F6E8A068D440DC4B222C7D8CFCBB10FLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D16ChartDataElementC10CodingKeys33_6F6E8A068D440DC4B222C7D8CFCBB10FLLOGMR);
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v27);
  v12 = v23 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutChartDataElement.CodingKeys and conformance WorkoutChartDataElement.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for WorkoutChartDataElement();
    v17 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
    v18 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v9;
    v14 = v25;
    v29 = 0;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
    v15 = v26;
    v16 = v27;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = *(v14 + 32);
    v23[1] = OBJC_IVAR___WOWorkoutChartDataElement_date;
    v20(v1 + OBJC_IVAR___WOWorkoutChartDataElement_date, v8, v15);
    v29 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + OBJC_IVAR___WOWorkoutChartDataElement_value) = v21;
    v22 = type metadata accessor for WorkoutChartDataElement();
    v28.receiver = v1;
    v28.super_class = v22;
    v3 = objc_msgSendSuper2(&v28, sel_init);
    (*(v24 + 8))(v12, v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

id protocol witness for Decodable.init(from:) in conformance WorkoutChartDataElement@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for WorkoutChartDataElement());
  result = WorkoutChartDataElement.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance WorkoutChartDataElement@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = NSObject.hashValue.getter();
  *a1 = result;
  return result;
}

uint64_t WorkoutChartDataElement.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = 0;
  v14 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v15 = v13;
  v16 = v14;
  MEMORY[0x20F2E6D80](0x3D65746164, 0xE500000000000000);
  v7 = OBJC_IVAR___WOWorkoutChartDataElement_date;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v8);

  (*(v3 + 8))(v6, v2);
  MEMORY[0x20F2E6D80](0x3D65756C6176202CLL, 0xE800000000000000);
  v9 = OBJC_IVAR___WOWorkoutChartDataElement_value;
  swift_beginAccess();
  v10 = *(v1 + v9);
  Double.write<A>(to:)();
  return v15;
}

uint64_t type metadata completion function for WorkoutChartDataElement()
{
  result = type metadata accessor for Date();
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

uint64_t getEnumTagSinglePayload for WorkoutChartDataElement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutChartDataElement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t LocationProvider.preSessionSetup(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a1 + 24);
  v6 = *(a1 + 48);
  swift_beginAccess();
  v7 = *(a1 + 56);
  type metadata accessor for RunningTrackInfo();
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = v6;
  *(v8 + 56) = v7;
  v9 = one-time initialization token for trackRunning;
  v10 = v4;
  v11 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.trackRunning);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;

    v17 = RunningTrackInfo.description.getter();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_20AEA4000, v13, v14, "[LocationProvider] Setting pre-session trackInfo to %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  v21 = *(v2 + OBJC_IVAR___WOCoreLocationProvider_trackInfo);
  *(v2 + OBJC_IVAR___WOCoreLocationProvider_trackInfo) = v8;
}

uint64_t closure #1 in LocationProvider.addObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for location != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.location);
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[0] = v10;
    v23[1] = a1;
    *v9 = 136315138;
    v23[2] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore17TrackInfoObserver_pMd, &_s11WorkoutCore17TrackInfoObserver_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v23);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[LocationProvider] Adding observer %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v14 = *(a3 + OBJC_IVAR___WOCoreLocationProvider_observers);
  ObjectType = swift_getObjectType();
  [v14 addObject_];
  v16 = OBJC_IVAR___WOCoreLocationProvider_isTrackingLocations;
  if ((*(a3 + OBJC_IVAR___WOCoreLocationProvider_isTrackingLocations) & 1) == 0)
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v18, "[LocationProvider] Starting continuous updates", v19, 2u);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    [*(a3 + OBJC_IVAR___WOCoreLocationProvider_locationManager) startUpdatingLocation];
    *(a3 + v16) = 1;
  }

  v20 = *(a3 + OBJC_IVAR___WOCoreLocationProvider_trackInfo);
  swift_beginAccess();
  LOBYTE(v23[0]) = *(v20 + 24);
  v21 = *(a2 + 8);

  v21(0, v23, v20, ObjectType, a2);
  LOBYTE(v23[0]) = 0;
  (*(a2 + 16))(0, v20, v23, ObjectType, a2);
  (*(a2 + 24))(0, v20, ObjectType, a2);
}

uint64_t LocationProvider.removeObserver(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR___WOCoreLocationProvider_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = partial apply for closure #1 in LocationProvider.removeObserver(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_50;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t LocationProvider.validateObservers()()
{
  v1 = [*(v0 + OBJC_IVAR___WOCoreLocationProvider_observers) allObjects];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    v5 = OBJC_IVAR___WOCoreLocationProvider_isTrackingLocations;
    if (*(v0 + OBJC_IVAR___WOCoreLocationProvider_isTrackingLocations) == 1)
    {
      v6 = v0;
      if (one-time initialization token for location != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static WOLog.location);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_20AEA4000, v8, v9, "[LocationProvider] Stopping continuous updates", v10, 2u);
        MEMORY[0x20F2E9420](v10, -1, -1);
      }

      [*(v6 + OBJC_IVAR___WOCoreLocationProvider_locationManager) stopUpdatingLocation];
      if (one-time initialization token for defaultTrackInfo != -1)
      {
        swift_once();
      }

      v11 = *(v6 + OBJC_IVAR___WOCoreLocationProvider_trackInfo);
      *(v6 + OBJC_IVAR___WOCoreLocationProvider_trackInfo) = static RunningTrackInfo.defaultTrackInfo;

      *(v6 + v5) = 0;
    }
  }

  return result;
}

Swift::Void __swiftcall LocationProvider.select(laneNumber:)(Swift::Int laneNumber)
{
  v2 = v1;
  v30 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for location != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.location);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = laneNumber;
    _os_log_impl(&dword_20AEA4000, v14, v15, "[LocationProvider] Manually selected lane number: %ld", v16, 0xCu);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  v25 = 0;
  aBlock = mach_continuous_time();
  if (laneNumber < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (laneNumber > 0x7FFFFFFF)
  {
    goto LABEL_9;
  }

  LODWORD(v25) = laneNumber;
  CLSetTrackRunHint();
  v21 = *&v2[OBJC_IVAR___WOCoreLocationProvider_queue];
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = laneNumber;
  v28 = partial apply for closure #1 in LocationProvider.select(laneNumber:);
  v29 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v27 = &block_descriptor_9_6;
  v18 = _Block_copy(&aBlock);
  v19 = v2;
  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v12, v8, v18);
  _Block_release(v18);
  (*(v5 + 8))(v8, v4);
  (*(v22 + 8))(v12, v9);

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t closure #1 in LocationProvider.select(laneNumber:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR___WOCoreLocationProvider_manualLaneSelection;
  *v4 = a2;
  *(v4 + 8) = 0;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in closure #1 in LocationProvider.select(laneNumber:);
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  aBlock[3] = &block_descriptor_49_1;
  v7 = _Block_copy(aBlock);

  v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:30.0];
  _Block_release(v7);
  v9 = *(a1 + OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimer);
  *(a1 + OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimer) = v8;

  v10 = OBJC_IVAR___WOCoreLocationProvider_trackInfo;
  [*(a1 + OBJC_IVAR___WOCoreLocationProvider_trackInfo) copyWithZone_];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for RunningTrackInfo();
  if (swift_dynamicCast())
  {
    v11 = v14;
    v12 = *(a1 + v10);
    swift_beginAccess();
    *(v12 + 32) = a2;
    LOBYTE(v14) = 1;

    LocationProvider.notifyChangedTrackInfo(_:to:reason:)(v11, v12, &v14);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in LocationProvider.select(laneNumber:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = &Strong[OBJC_IVAR___WOCoreLocationProvider_manualLaneSelection];
    *v1 = 0;
    v1[8] = 1;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimer];
    *&v2[OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimer] = 0;
  }
}

void LocationProvider.configureLocationUpdates()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR___WOCoreLocationProvider_queue];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  v10 = *&v1[OBJC_IVAR___WOCoreLocationProvider_locationManager];
  if (!v10)
  {
    return;
  }

  outlined init with copy of ForegroundProviding(&v1[OBJC_IVAR___WOCoreLocationProvider_foregroundProvider], v22);
  v11 = v23;
  v12 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v13 = *(v12 + 16);
  v2 = v10;
  v9 = v13(v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm_11(v22);
  if (one-time initialization token for location != -1)
  {
    goto LABEL_16;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.location);
  v15 = v1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109376;
    *(v18 + 4) = v9 & 1;
    *(v18 + 8) = 1024;
    *(v18 + 10) = *&v15[OBJC_IVAR___WOCoreLocationProvider_currentAuthorizationStatus];

    _os_log_impl(&dword_20AEA4000, v16, v17, "[LocationProvider] Configuring... isEffectivelyForeground: %{BOOL}d, authorizationStatus: %d", v18, 0xEu);
    MEMORY[0x20F2E9420](v18, -1, -1);

    if ((v9 & 1) == 0)
    {
LABEL_6:
      v19 = &selRef_stopUpdatingLocation;
LABEL_12:
      [v2 *v19];
      goto LABEL_13;
    }
  }

  else
  {

    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v20 = *&v15[OBJC_IVAR___WOCoreLocationProvider_currentAuthorizationStatus];
  if ((v20 - 3) < 2)
  {
    v19 = &selRef_startUpdatingLocation;
    goto LABEL_12;
  }

  if (!v20)
  {
    v19 = &selRef_requestWhenInUseAuthorization;
    goto LABEL_12;
  }

LABEL_13:
}

void LocationProvider.completeLocationRequests(location:)(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR___WOCoreLocationProvider_queue];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (one-time initialization token for location == -1)
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
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.location);
  v11 = a1;
  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v15 = 136315394;
    v17 = *&v12[OBJC_IVAR___WOCoreLocationProvider_locationRequests];
    v18 = type metadata accessor for LocationRequest();

    v20 = MEMORY[0x20F2E6F70](v19, v18);
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v35);

    *(v15 + 4) = v23;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v11;
    *v16 = a1;
    v24 = v11;
    _os_log_impl(&dword_20AEA4000, v13, v14, "[LocationProvider] Completing locationRequests: %s with location: %@", v15, 0x16u);
    outlined destroy of NSObject?(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    v25 = v34;
    __swift_destroy_boxed_opaque_existential_1Tm_11(v34);
    MEMORY[0x20F2E9420](v25, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  v26 = OBJC_IVAR___WOCoreLocationProvider_locationRequests;
  v27 = *&v12[OBJC_IVAR___WOCoreLocationProvider_locationRequests];
  if (v27 >> 62)
  {
    if (v27 < 0)
    {
      v33 = *&v12[OBJC_IVAR___WOCoreLocationProvider_locationRequests];
    }

    v28 = __CocoaSet.count.getter();
    if (!v28)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
LABEL_14:
      v32 = *&v12[v26];
      *&v12[v26] = MEMORY[0x277D84F90];

      LocationProvider.validateObservers()();
      return;
    }
  }

  if (v28 >= 1)
  {

    v29 = 0;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v29, v27);
      }

      else
      {
        v31 = *(v27 + 8 * v29 + 32);
      }

      ++v29;
      v30.value.super.isa = a1;
      LocationRequest.received(_:)(v30);
    }

    while (v28 != v29);

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t LocationProvider.notifyChangedTrackInfo(_:to:reason:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = *a3;
  v12 = *(v3 + OBJC_IVAR___WOCoreLocationProvider_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (one-time initialization token for location == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_30:
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static WOLog.location);

  v16 = v3;
  v72 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  p_cb = &OBJC_PROTOCOL___NLWorkoutAlertDelegate.cb;
  v70 = a2;
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v76[0] = v22;
    *v21 = 136315650;
    v75[10] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore16RunningTrackInfoCSgMd, &_s11WorkoutCore16RunningTrackInfoCSgMR);
    v23 = Optional.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v76);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = RunningTrackInfo.description.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v76);

    *(v21 + 14) = v28;
    *(v21 + 22) = 2048;
    v29 = [*&v16[OBJC_IVAR___WOCoreLocationProvider_observers] allObjects];
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v30 >> 62)
    {
      v31 = __CocoaSet.count.getter();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 24) = v31;

    _os_log_impl(&dword_20AEA4000, v17, v18, "[LocationProvider] Changed from: %s to %s. Updating %ld observers.", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v22, -1, -1);
    MEMORY[0x20F2E9420](v21, -1, -1);

    a2 = v70;
    p_cb = (&OBJC_PROTOCOL___NLWorkoutAlertDelegate + 64);
  }

  else
  {
  }

  v32 = [*&v16[*(p_cb + 474)] allObjects];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v33 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_10;
    }

LABEL_33:
    v68 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v33 = __CocoaSet.count.getter();
  if (!v33)
  {
    goto LABEL_33;
  }

LABEL_10:
  v34 = 0;
  v68 = MEMORY[0x277D84F90];
  do
  {
    v35 = v34;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x20F2E7A20](v35, v3);
        v34 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v35 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v36 = *(v3 + 8 * v35 + 32);
        swift_unknownObjectRetain();
        v34 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      swift_getObjectType();
      v37 = swift_conformsToProtocol2();
      if (v37)
      {
        if (v36)
        {
          break;
        }
      }

      swift_unknownObjectRelease();
      ++v35;
      if (v34 == v33)
      {
        goto LABEL_34;
      }
    }

    v38 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68[2] + 1, 1, v68);
    }

    v41 = v68[2];
    v40 = v68[3];
    if (v41 >= v40 >> 1)
    {
      v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v68);
    }

    v42 = v38;
    a2 = v70;
    v43 = v68;
    v68[2] = v41 + 1;
    v44 = &v43[2 * v41];
    v44[4] = v36;
    v44[5] = v42;
  }

  while (v34 != v33);
LABEL_34:

  v45 = v68[2];
  if (v45)
  {
    v46 = (v68 + 4);
    swift_beginAccess();
    swift_beginAccess();
    *&v47 = 136315138;
    v69 = v47;
    do
    {
      v73 = *v46;
      swift_unknownObjectRetain_n();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v75[0] = v51;
        *v50 = v69;
        v74 = v73;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore17TrackInfoObserver_pMd, &_s11WorkoutCore17TrackInfoObserver_pMR);
        v52 = String.init<A>(describing:)();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v75);

        *(v50 + 4) = v54;
        a2 = v70;
        _os_log_impl(&dword_20AEA4000, v48, v49, "[LocationProvider] Updating %s about trackInfo change.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_11(v51);
        MEMORY[0x20F2E9420](v51, -1, -1);
        MEMORY[0x20F2E9420](v50, -1, -1);
      }

      if (!a1)
      {
        ObjectType = swift_getObjectType();
        LOBYTE(v74) = *(a2 + 24);
        v57 = *(&v73 + 1);
        (*(*(&v73 + 1) + 8))(0, &v74, a2, ObjectType, *(&v73 + 1));
        LOBYTE(v74) = v71;
        (*(v57 + 16))(0, a2, &v74, ObjectType, v57);
        (*(v57 + 24))(0, a2, ObjectType, v57);
        goto LABEL_37;
      }

      swift_beginAccess();
      v55 = *(a1 + 24);
      if (v55 == *(a2 + 24))
      {

        if (v55 != 3)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v58 = swift_getObjectType();
        v59 = objc_allocWithZone(MEMORY[0x277CCABB0]);

        v60 = [v59 initWithInteger_];
        LOBYTE(v74) = *(a2 + 24);
        (*(*(&v73 + 1) + 8))(v60, &v74, a2, v58);

        if (*(a2 + 24) != 3)
        {
LABEL_46:
          if (v71 == 1)
          {
            v61 = swift_getObjectType();
            swift_beginAccess();
            v62 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            LOBYTE(v74) = 1;
            (*(*(&v73 + 1) + 16))(v62, a2, &v74, v61);
          }

          swift_beginAccess();
          v63 = *(a1 + 40);
          if (v63 != *(a2 + 40))
          {
            v64 = swift_getObjectType();
            v65 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            (*(*(&v73 + 1) + 24))(v65, a2, v64);
          }
        }
      }

LABEL_37:
      swift_unknownObjectRelease();
      ++v46;
      --v45;
    }

    while (v45);
  }
}

uint64_t LocationProvider.update(observer:from:to:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v7 = *a5;
  if (!a3)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v22[0] = *(a4 + 24);
    (*(a2 + 8))(0, v22, a4, ObjectType, a2);
    v22[0] = v7;
    (*(a2 + 16))(0, a4, v22, ObjectType, a2);
    return (*(a2 + 24))(0, a4, ObjectType, a2);
  }

  swift_beginAccess();
  v9 = *(a3 + 24);
  swift_beginAccess();
  if (v9 == *(a4 + 24))
  {

    if (v9 == 3)
    {
    }

LABEL_7:
    if (v7 == 1)
    {
      v16 = swift_getObjectType();
      swift_beginAccess();
      v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v21[0] = 1;
      (*(a2 + 16))(v17, a4, v21, v16, a2);
    }

    swift_beginAccess();
    v18 = *(a3 + 40);
    swift_beginAccess();
    if (v18 != *(a4 + 40))
    {
      v19 = swift_getObjectType();
      v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      (*(a2 + 24))(v20, a4, v19, a2);
    }
  }

  v12 = swift_getObjectType();
  v13 = *(a3 + 24);
  v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  v15 = [v14 initWithInteger_];
  v21[0] = *(a4 + 24);
  (*(a2 + 8))(v15, v21, a4, v12, a2);

  if (*(a4 + 24) != 3)
  {
    goto LABEL_7;
  }
}

Swift::Void __swiftcall LocationProvider.locationManagerDidChangeAuthorization(_:)(CLLocationManager a1)
{
  isa = a1.super.isa;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR___WOCoreLocationProvider_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = [(objc_class *)isa authorizationStatus];
    *(v1 + OBJC_IVAR___WOCoreLocationProvider_currentAuthorizationStatus) = v10;
    LocationProvider.configureLocationUpdates()();
  }

  else
  {
    __break(1u);
  }
}

void LocationProvider.locationManager(_:didFailWithError:)()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___WOCoreLocationProvider_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    LocationProvider.completeLocationRequests(location:)(0);
  }

  else
  {
    __break(1u);
  }
}

id LocationProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocationProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized LocationProvider.addObserver(_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&a2[OBJC_IVAR___WOCoreLocationProvider_queue];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a4;
  v16[4] = a2;
  aBlock[4] = _s11WorkoutCore16LocationProviderC11addObserveryyAA09TrackInfoF0_pFyyYbcfU_TA_0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_55_1;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v18 = a2;
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v21);
}

void specialized LocationProvider.locationManager(_:didUpdateLocations:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + OBJC_IVAR___WOCoreLocationProvider_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (!(a1 >> 62))
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_12:
      v15 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  v11 = __CocoaSet.count.getter();
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_4:
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v14 = MEMORY[0x20F2E7A20](v13, a1);
    goto LABEL_9;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:
    __break(1u);
    return;
  }

  v14 = *(a1 + 8 * v13 + 32);
LABEL_9:
  v15 = v14;
LABEL_13:
  v16 = OBJC_IVAR___WOCoreLocationProvider_trackInfo;
  v17 = *(v2 + OBJC_IVAR___WOCoreLocationProvider_trackInfo);
  type metadata accessor for RunningTrackInfo();
  swift_allocObject();
  v18 = v15;

  v19 = RunningTrackInfo.init(location:)(v15);
  v20 = (v2 + OBJC_IVAR___WOCoreLocationProvider_manualLaneSelection);
  if (*(v2 + OBJC_IVAR___WOCoreLocationProvider_manualLaneSelection + 8))
  {
    v21 = 2;
  }

  else
  {
    v22 = *v20;
    swift_beginAccess();
    if (*(v19 + 32) == v22)
    {
      *v20 = 0;
      *(v20 + 8) = 1;
      v23 = OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimer;
      [*(v2 + OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimer) invalidate];
      v24 = *(v2 + v23);
      *(v2 + v23) = 0;

      v21 = 2;
    }

    else
    {
      *(v19 + 32) = v22;
      v21 = 1;
    }
  }

  v25 = *(v2 + v16);
  *(v2 + v16) = v19;

  if (!specialized static RunningTrackInfo.== infix(_:_:)(v17, v19))
  {
    v28 = v21;

    LocationProvider.notifyChangedTrackInfo(_:to:reason:)(v26, v19, &v28);
  }

  LocationProvider.completeLocationRequests(location:)(v15);
}

double static WorkoutAlertTimingConstants.alertHoldoffTime(workoutConfiguration:)()
{
  type metadata accessor for IntervalWorkoutConfiguration();
  v0 = swift_dynamicCastClass();
  result = 60.0;
  if (v0)
  {
    return 10.0;
  }

  return result;
}

double static WorkoutAlertTimingConstants.alertHoldoffTime(liveWorkoutConfiguration:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration();
  v2 = swift_dynamicCastClass();
  result = 60.0;
  if (v2)
  {
    return 10.0;
  }

  return result;
}

id WorkoutAlertTimingConstants.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertTimingConstants.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertTimingConstants();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WorkoutAlertTimingConstants.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertTimingConstants();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WorkoutReadinessCheckError.disclaimerMessage.getter()
{
  v1 = *v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = "INCOMPATIBLE_GIZMO_VERSION_BODY";
  v5 = "R_DISCONNECTED_BODY";
  v6 = 0xD000000000000016;
  if (v1 != 2)
  {
    v5 = "minTimeBetweenAlertsSec";
    v6 = 0xD000000000000023;
  }

  if (v1)
  {
    v4 = "TRACKING_DISABLED_BODY";
    v7 = 0xD00000000000001FLL;
  }

  else
  {
    v7 = 0xD000000000000018;
  }

  if (v1 <= 1)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (v1 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = MEMORY[0x20F2E6C00](v9, v8 | 0x8000000000000000);
  v11 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
  v12 = [v3 localizedStringForKey:v10 value:0 table:v11];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v13;
}

uint64_t WorkoutReadinessCheckError.disclaimerTitle.getter()
{
  if (*v0 != 2)
  {
    return 0;
  }

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = MEMORY[0x20F2E6C00](0xD000000000000017, 0x800000020B4635E0);
  v4 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

unint64_t WorkoutReadinessCheckError.disclaimerSymbol.getter()
{
  v1 = *v0;
  v2 = v1 >= 2;
  if (v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

unint64_t WorkoutReadinessCheckError.appStorageKey.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(22);

  v2 = 0xD000000000000016;
  v3 = "art_rate_monitor";
  v4 = "incompatibleGizmoVersion";
  v5 = 0xD000000000000017;
  if (v1 != 2)
  {
    v5 = 0xD00000000000001BLL;
    v4 = "fitnessTrackingDisabled";
  }

  if (v1)
  {
    v2 = 0xD000000000000018;
    v3 = "gizmoWorkoutAppMissing";
  }

  if (v1 <= 1)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  if (v1 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x20F2E6D80](v6, v7 | 0x8000000000000000);

  return 0xD000000000000014;
}

unint64_t WorkoutReadinessCheckError.rawValue.getter()
{
  v1 = 0xD000000000000016;
  v2 = 0xD00000000000001BLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t WorkoutReadinessCheckError.footerURLText.getter()
{
  v1 = *v0;
  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      return 0x73676E6974746553;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = MEMORY[0x20F2E6C00](0x5441575F4E45504FLL, 0xEE005050415F4843);
    v5 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v7;
  }
}

Swift::Void __swiftcall WorkoutReadinessCheckError.footerAction()()
{
  v1 = *v0;
  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      specialized static FitnessTrackingSettingsNavigator.openSettings()();
    }
  }

  else
  {
    specialized static FitnessBridgeAppSettingsNavigator.openSettings()();
  }
}

WorkoutCore::WorkoutReadinessCheckError_optional __swiftcall WorkoutReadinessCheckError.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutReadinessCheckError.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutReadinessCheckError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutReadinessCheckError()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutReadinessCheckError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutReadinessCheckError(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000016;
  v3 = "art_rate_monitor";
  v4 = "incompatibleGizmoVersion";
  v5 = 0xD00000000000001BLL;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v4 = "fitnessTrackingDisabled";
  }

  if (*v1)
  {
    v2 = 0xD000000000000018;
    v3 = "gizmoWorkoutAppMissing";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type WorkoutReadinessCheckError and conformance WorkoutReadinessCheckError()
{
  result = lazy protocol witness table cache variable for type WorkoutReadinessCheckError and conformance WorkoutReadinessCheckError;
  if (!lazy protocol witness table cache variable for type WorkoutReadinessCheckError and conformance WorkoutReadinessCheckError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutReadinessCheckError and conformance WorkoutReadinessCheckError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutReadinessCheckError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutReadinessCheckError(uint64_t result, unsigned int a2, unsigned int a3)
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

id WorkoutAlertPacer.__allocating_init(activityType:distanceGoalInMeters:finishTime:)(void *a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType] = a1;
  *&v7[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_finishTime] = a3;
  *&v7[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters] = a2;
  v11.receiver = v7;
  v11.super_class = v3;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  [v9 setType_];

  return v9;
}

void key path setter for WorkoutAlertPacer.activityType : WorkoutAlertPacer(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id WorkoutAlertPacer.activityType.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WorkoutAlertPacer.activityType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double WorkoutAlertPacer.finishTime.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_finishTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorkoutAlertPacer.finishTime.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_finishTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double WorkoutAlertPacer.distanceGoalInMeters.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorkoutAlertPacer.distanceGoalInMeters.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id WorkoutAlertPacer.init(activityType:distanceGoalInMeters:finishTime:)(void *a1, double a2, double a3)
{
  *&v3[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType] = a1;
  *&v3[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_finishTime] = a3;
  *&v3[OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters] = a2;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WorkoutAlertPacer();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  [v6 setType_];

  return v6;
}

id WorkoutAlertPacer.spokenDescription(with:)(void *a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = FIUIDistanceTypeForActivityType();
  result = [a1 unitManager];
  if (result)
  {
    v7 = result;
    v8 = [result userDistanceUnitForDistanceType_];

    v9 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters;
    swift_beginAccess();
    v10 = [a1 localizedStringWithDistanceInMeters:v8 distanceUnit:0 unitStyle:3 decimalPrecision:2 roundingMode:2 decimalTrimmingMode:*(v1 + v9)];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v15 = [objc_opt_self() meterUnit];
    v16 = [objc_opt_self() quantityWithUnit:v15 doubleValue:*(v1 + v9)];

    v17 = MEMORY[0x20F2E8320](v8);
    [v16 doubleValueForUnit_];
    v19 = v18;

    v20 = [a1 localizedLongUnitStringForDistanceUnit:v8 distanceInUnit:2 textCase:v19];
    if (v20 && (v21 = v20, v22 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v24 = v23, v21, v14) && v24)
    {
      v25 = MEMORY[0x20F2E6C00](v12, v14);

      v26 = MEMORY[0x20F2E6C00](v22, v24);

      v27 = objc_opt_self();
      v28 = [v27 stringWithValueString:v25 unitString:v26];

      v29 = [v28 spokenString];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_finishTime;
      swift_beginAccess();
      v34 = [a1 stringWithDuration:6 durationFormat:*(v1 + v33)];
      if (v34)
      {
        v35 = v34;
        v36 = [v27 stringWithValueString:v34 unitString:0];

        v37 = [v36 spokenString];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v42 = [objc_opt_self() bundleForClass_];
        v43 = MEMORY[0x20F2E6C00](0xD00000000000002BLL, 0x800000020B463660);
        v44 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v45 = [v42 localizedStringForKey:v43 value:0 table:v44];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_20B4282E0;
        v47 = MEMORY[0x277D837D0];
        *(v46 + 56) = MEMORY[0x277D837D0];
        v48 = lazy protocol witness table accessor for type String and conformance String();
        *(v46 + 32) = v30;
        *(v46 + 40) = v32;
        *(v46 + 96) = v47;
        *(v46 + 104) = v48;
        *(v46 + 64) = v48;
        *(v46 + 72) = v38;
        *(v46 + 80) = v40;
        v49 = String.init(format:_:)();

        return v49;
      }
    }

    else
    {
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WorkoutAlertPacer.distanceGoalString(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType;
  swift_beginAccess();
  v6 = [a1 localizedCompactGoalDescriptionForGoalType:1 goalValue:*(v1 + v5) activityType:v4];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

Swift::String __swiftcall WorkoutAlertPacer.goalCompletionString()()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD000000000000022, 0x800000020B463690);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

id WorkoutAlertPacer.spokenUserData(with:)(void *a1)
{
  v3 = type metadata accessor for PacerGoalCompletionModel();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_activityType;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = FIUIDistanceTypeForActivityType();
  result = [a1 unitManager];
  if (result)
  {
    v12 = result;
    v13 = [result userDistanceHKUnitForDistanceType_];

    v14 = [objc_opt_self() meterUnit];
    v15 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_distanceGoalInMeters;
    swift_beginAccess();
    v16 = [objc_opt_self() quantityWithUnit:v14 doubleValue:*(v1 + v15)];

    [v16 doubleValueForUnit_];
    v17 = [v13 unitString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = OBJC_IVAR____TtC11WorkoutCore17WorkoutAlertPacer_finishTime;
    swift_beginAccess();
    v19 = *(v1 + v18);
    PacerGoalCompletionModel.init(magnitude:unit:duration:)();
    v20 = specialized VoiceFeedbackAlerting.toDictionary()();

    (*(v4 + 8))(v7, v3);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id WorkoutAlertPacer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertPacer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertPacer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double keypath_get_2Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_set_3Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

id WorkoutAlertLapChange.__allocating_init(activityType:lapNumber:lapDuration:lapDistance:)(void *a1, uint64_t a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___WorkoutAlertLapChange_activityType] = a1;
  *&v9[OBJC_IVAR___WorkoutAlertLapChange_lapNumber] = a2;
  *&v9[OBJC_IVAR___WorkoutAlertLapChange_lapDuration] = a3;
  *&v9[OBJC_IVAR___WorkoutAlertLapChange_lapDistance] = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  v10 = a1;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v11 setType_];

  return v11;
}

uint64_t WorkoutAlertLapChange.lapNumber.getter()
{
  v1 = OBJC_IVAR___WorkoutAlertLapChange_lapNumber;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorkoutAlertLapChange.lapNumber.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WorkoutAlertLapChange_lapNumber;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double WorkoutAlertLapChange.lapDuration.getter()
{
  v1 = OBJC_IVAR___WorkoutAlertLapChange_lapDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorkoutAlertLapChange.lapDuration.setter(double a1)
{
  v3 = OBJC_IVAR___WorkoutAlertLapChange_lapDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double WorkoutAlertLapChange.lapDistance.getter()
{
  v1 = OBJC_IVAR___WorkoutAlertLapChange_lapDistance;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorkoutAlertLapChange.lapDistance.setter(double a1)
{
  v3 = OBJC_IVAR___WorkoutAlertLapChange_lapDistance;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id WorkoutAlertLapChange.init(activityType:lapNumber:lapDuration:lapDistance:)(void *a1, uint64_t a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___WorkoutAlertLapChange_activityType] = a1;
  *&v4[OBJC_IVAR___WorkoutAlertLapChange_lapNumber] = a2;
  *&v4[OBJC_IVAR___WorkoutAlertLapChange_lapDuration] = a3;
  *&v4[OBJC_IVAR___WorkoutAlertLapChange_lapDistance] = a4;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for WorkoutAlertLapChange();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v7 setType_];

  return v7;
}

id WorkoutAlertLapChange.spokenDescription(with:)(void *a1)
{
  v3 = WorkoutAlertLapChange.lapDescription()();
  v4 = *(v1 + OBJC_IVAR___WorkoutAlertLapChange_activityType);
  v5 = FIUIDistanceTypeForActivityType();
  v6 = [objc_opt_self() meterUnit];
  v7 = OBJC_IVAR___WorkoutAlertLapChange_lapDistance;
  swift_beginAccess();
  v8 = [objc_opt_self() quantityWithUnit:v6 doubleValue:*(v1 + v7)];

  v9 = OBJC_IVAR___WorkoutAlertLapChange_lapDuration;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = MEMORY[0x20F2E8410](v5);
  v12 = MEMORY[0x277D837D0];
  if (v11 != 4)
  {
    result = [a1 unitManager];
    if (!result)
    {
      __break(1u);
      goto LABEL_16;
    }

    v14 = result;
    [result paceWithDistance:v8 overDuration:v11 paceFormat:v5 distanceType:v10];
    v16 = v15;

    if (v16 <= 0.0)
    {

      v35 = 0;
      v37 = 0xE000000000000000;
LABEL_14:
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x20F2E6D80](v38);

      MEMORY[0x20F2E6D80](92, 0xE100000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_20B423A20;
      *(v39 + 56) = v12;
      v40 = lazy protocol witness table accessor for type String and conformance String();
      *(v39 + 32) = v3;
      *(v39 + 96) = v12;
      *(v39 + 104) = v40;
      *(v39 + 64) = v40;
      *(v39 + 72) = 0x3D65737561705C1BLL;
      *(v39 + 80) = 0xE800000000000000;
      *(v39 + 136) = v12;
      *(v39 + 144) = v40;
      *(v39 + 112) = v35;
      *(v39 + 120) = v37;
      return String.init(format:_:)();
    }
  }

  v17 = MEMORY[0x20F2E8410](v5);
  if (v17 == 4)
  {
LABEL_7:
    v21 = [a1 localizedPaceAndUnitWithDistance:v8 overDuration:v17 paceFormat:v5 distanceType:3 unitStyle:2 decimalTrimmingMode:v10];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

LABEL_10:
      v26 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(36, v11, 0);
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_20B423A20;
      *(v29 + 56) = v12;
      v30 = lazy protocol witness table accessor for type String and conformance String();
      *(v29 + 64) = v30;
      *(v29 + 32) = v26;
      *(v29 + 40) = v28;
      if (one-time initialization token for pausePunctuation != -1)
      {
        v41 = v30;
        swift_once();
        v30 = v41;
      }

      v32 = static SpokenUtilities.pausePunctuation;
      v31 = *algn_27C72C6E8;
      *(v29 + 96) = v12;
      *(v29 + 104) = v30;
      *(v29 + 72) = v32;
      *(v29 + 80) = v31;
      *(v29 + 136) = v12;
      *(v29 + 144) = v30;
      *(v29 + 112) = v23;
      *(v29 + 120) = v25;

      v33 = String.init(format:_:)();
      v35 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v33, v34);
      v37 = v36;

      goto LABEL_14;
    }

LABEL_9:
    v23 = 0;
    v25 = 0xE000000000000000;
    goto LABEL_10;
  }

  result = [a1 unitManager];
  if (result)
  {
    v18 = result;
    [result paceWithDistance:v8 overDuration:v17 paceFormat:v5 distanceType:v10];
    v20 = v19;

    if (v20 <= 0.0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
  return result;
}

Swift::String __swiftcall WorkoutAlertLapChange.lapDescription()()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = MEMORY[0x20F2E6C00](0x4C5F4E454B4F5053, 0xEA00000000005041);
  v4 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20B423A90;
  v7 = OBJC_IVAR___WorkoutAlertLapChange_lapNumber;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v9 = MEMORY[0x277D83C10];
  *(v6 + 56) = MEMORY[0x277D83B88];
  *(v6 + 64) = v9;
  *(v6 + 32) = v8;
  v10 = String.init(format:_:)();
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

id WorkoutAlertLapChange.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertLapChange.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertLapChange();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized WorkoutAlertLapChange.localizedProgressDescription(with:formattingManager:)()
{
  v1 = v0;
  v13 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x20F2E6C00](0x6574656C706D6F43, 0xE900000000000064);
  v3 = objc_opt_self();
  v4 = [v3 stringWithValueString:v2 unitString:0];

  MEMORY[0x20F2E6F30]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v10 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v5 = OBJC_IVAR___WorkoutAlertLapChange_lapNumber;
  swift_beginAccess();
  v12 = *(v1 + v5);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v6);

  v7 = MEMORY[0x20F2E6C00](544235884, 0xE400000000000000);

  v8 = [v3 stringWithValueString:v7 unitString:0];

  MEMORY[0x20F2E6F30]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v13;
}

double keypath_get_2Tm_0@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_set_3Tm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

unint64_t type metadata accessor for NLWorkoutAlertUnitAnnotatedString()
{
  result = lazy cache variable for type metadata for NLWorkoutAlertUnitAnnotatedString;
  if (!lazy cache variable for type metadata for NLWorkoutAlertUnitAnnotatedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NLWorkoutAlertUnitAnnotatedString);
  }

  return result;
}

uint64_t WorkoutAlertInterval.completedStep.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep;
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep);
  v4 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 8);
  v5 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 16);
  v6 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 24);
  v7 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = *(v2 + 40);
  return outlined copy of CompletedWorkoutStep?(v3, v4, v5);
}

__n128 WorkoutAlertInterval.repetitionCounter.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_repetitionCounter);
  *a1 = result;
  return result;
}

uint64_t WorkoutAlertInterval.internalType.getter()
{
  v1 = [v0 type];
  if (v1 == 16)
  {
    return 0;
  }

  if (v1 == 17)
  {
    return 1;
  }

  _StringGuts.grow(_:)(46);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
  [v0 type];
  type metadata accessor for NLWorkoutAlertType(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](0xD000000000000019, 0x800000020B45AC30);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t WorkoutAlertInterval.__allocating_init(type:completedStep:nextStep:repetition:maxRepetitions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = objc_allocWithZone(v5);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  LOBYTE(a2) = *(a2 + 40);
  v16 = &v10[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep];
  *v16 = v11;
  *(v16 + 1) = v12;
  *(v16 + 2) = v13;
  *(v16 + 3) = v14;
  *(v16 + 4) = v15;
  v16[40] = a2;
  *&v10[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep] = a3;
  v17 = &v10[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_repetitionCounter];
  *v17 = a4;
  *(v17 + 1) = a5;
  outlined copy of CompletedWorkoutStep?(v11, v12, v13);
  v24.receiver = v10;
  v24.super_class = v6;

  v18 = objc_msgSendSuper2(&v24, sel_init);
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 0x10)
  {
    v19 = v18;
    outlined consume of CompletedWorkoutStep?(v11, v12, v13);
    [v19 setType_];

    return v19;
  }

  else
  {
    v21 = v18;
    _StringGuts.grow(_:)(46);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD000000000000019, 0x800000020B45AC30);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t WorkoutAlertInterval.init(type:completedStep:nextStep:repetition:maxRepetitions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = &v5[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep];
  *v13 = *a2;
  *(v13 + 1) = v8;
  *(v13 + 2) = v9;
  *(v13 + 3) = v10;
  *(v13 + 4) = v11;
  v13[40] = v12;
  *&v5[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep] = a3;
  v14 = &v5[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_repetitionCounter];
  *v14 = a4;
  *(v14 + 1) = a5;
  outlined copy of CompletedWorkoutStep?(v7, v8, v9);
  v19.receiver = v5;
  v19.super_class = type metadata accessor for WorkoutAlertInterval();

  v15 = objc_msgSendSuper2(&v19, sel_init);
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 0x10)
  {
    v16 = v15;
    outlined consume of CompletedWorkoutStep?(v7, v8, v9);
    [v16 setType_];

    return v16;
  }

  else
  {
    v18 = v15;
    _StringGuts.grow(_:)(46);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD000000000000019, 0x800000020B45AC30);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t WorkoutAlertInterval.spokenGoalString(formattingManager:)(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v3 = [v23 goalTypeIdentifier];

  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = MEMORY[0x20F2E82D0]();
      if (v4)
      {
        v5 = v4;
        v24._object = 0xE000000000000000;
        v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v6.value._object = 0xEB00000000656C62;
        v7._object = 0x800000020B460130;
        v7._countAndFlagsBits = 0xD000000000000011;
        v8._countAndFlagsBits = 0;
        v8._object = 0xE000000000000000;
        v24._countAndFlagsBits = 0;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v24)._countAndFlagsBits;
LABEL_17:
        v10 = countAndFlagsBits;

        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_21;
    }

LABEL_10:
    if (v3 != 1)
    {
      goto LABEL_23;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v14 = [v23 value];

    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = [v14 _unit];
    v16 = MEMORY[0x20F2E8310]();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    [v23 doubleValue];
    v18 = v17;

    v19 = [a1 localizedStringWithDistanceInMeters:v16 distanceUnit:3 unitStyle:objc_msgSend(objc_opt_self() decimalPrecision:sel_defaultPrecisionForDistanceUnit_ roundingMode:v16) decimalTrimmingMode:{6, 1, v18}];
    if (v19)
    {
      v5 = v19;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_18:
      return v10;
    }

    goto LABEL_22;
  }

  if (v3 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v3 = v23;
    [v23 doubleValue];
    v12 = v11;

    v13 = [a1 stringWithDuration:6 durationFormat:v12];
    if (!v13)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_16:
    v5 = v13;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_17;
  }

  if (v3 == 3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    [v23 doubleValue];
    v21 = v20;

    v13 = [a1 localizedStringWithEnergyInCalories:1 energyType:2 unitStyle:v21];
    if (!v13)
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_16;
  }

LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t WorkoutAlertInterval.writtenDescription(step:prefix:formattingManager:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20B425990;
  v11 = MEMORY[0x20F2E6C00](a2, a3);
  v12 = objc_opt_self();
  v13 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
  v14 = [v12 stringWithValueString:v11 unitString:0];

  *(v10 + 32) = v14;
  v69 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v68)
  {
    goto LABEL_6;
  }

  v15 = HIBYTE(v68) & 0xF;
  if ((v68 & 0x2000000000000000) == 0)
  {
    v15 = *v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

LABEL_6:
    swift_beginAccess();
    LOBYTE(v66) = *(a1 + 16);
    StepType.displayString.getter();
  }

  v16 = MEMORY[0x20F2E6C00]();

  v17 = [v12 stringWithValueString:v16 unitString:0];

  MEMORY[0x20F2E6F30]();
  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v18 = *(v5 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep);
    if (v18)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v19 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
      swift_beginAccess();
      v20 = *(v18 + v19);
      v21 = FIUIDistanceTypeForActivityType();
      v22 = NLSessionActivityGoal.intervalDisplayString(formattingManager:distanceType:)(a4, v21, 0);
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    v65 = a4;
    v25 = MEMORY[0x20F2E6C00](v22, v24);

    v5 = [v12 *(v13 + 3400)];

    MEMORY[0x20F2E6F30]();
    if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v60 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 = v69;
    v27 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
    swift_beginAccess();
    v28 = *(a1 + v27);
    v64 = v12;
    v29 = v28 >> 62 ? __CocoaSet.count.getter() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v29)
    {
      break;
    }

    v13 = 0;
    v12 = (v28 & 0xC000000000000001);
    a4 = (v28 & 0xFFFFFFFFFFFFFF8);
    while (v12)
    {
      v5 = MEMORY[0x20F2E7A20](v13, v28);
      v30 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_20:
      swift_beginAccess();
      if (*(v5 + 40))
      {

        v38 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
        swift_beginAccess();
        v39 = *(a1 + v38);
        swift_beginAccess();
        v40 = *(v5 + 24);
        swift_beginAccess();
        v41 = *(v5 + 32);
        v42 = v39;
        if (v40 == v41)
        {
          v43 = TargetZone.alertSpokenStringForSingleThreshold(formattingManager:activityType:)(v65, v42);
        }

        else
        {
          v43 = TargetZone.alertSpokenStringForMultiThreshold(formattingManager:activityType:)(v65, v42);
        }

        v55 = v43;
        v56 = v44;

        v57 = MEMORY[0x20F2E6C00](v55, v56);

        v58 = [v64 stringWithValueString:v57 unitString:0];

        MEMORY[0x20F2E6F30]();
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v62 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        return v69;
      }

      ++v13;
      if (v30 == v29)
      {
        goto LABEL_26;
      }
    }

    if (v13 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v28 + 8 * v13 + 32);

      v30 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

LABEL_26:

  v5 = *(a1 + v27);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v61 = *(a1 + v27);
    }

    v31 = __CocoaSet.count.getter();
  }

  else
  {
    v31 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v31)
  {
    v32 = 0;
    v12 = (v5 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x20F2E7A20](v32, v5);
        a4 = (v32 + 1);
        if (__OFADD__(v32, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v32 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v13 = *(v5 + 8 * v32 + 32);

        a4 = (v32 + 1);
        if (__OFADD__(v32, 1))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }
      }

      swift_beginAccess();
      v33 = *(v13 + 40);

      if (v33 == 1)
      {
        break;
      }

      ++v32;
      if (a4 == v31)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
LABEL_39:

    v34 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
    swift_beginAccess();
    v35 = *(a1 + v34);
    if (v35)
    {
      v36 = *(a1 + v34);
      v37 = v65;
    }

    else
    {
      v37 = v65;
      if (one-time initialization token for defaultZone != -1)
      {
        swift_once();
      }

      v36 = static HeartRateTargetZone.defaultZone;
    }

    if (*(v36 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(v36 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
    {
      v54 = v35;
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v46 = v35;

      if (v45)
      {
      }

      else
      {
        v47 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
        swift_beginAccess();
        v48 = *(a1 + v47);
        v49 = specialized HeartRateTargetZone.spokenString(formattingManager:activityType:)(v37);
        v51 = v50;

        v52 = MEMORY[0x20F2E6C00](v49, v51);

        v53 = [v64 stringWithValueString:v52 unitString:0];

        MEMORY[0x20F2E6F30]();
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v63 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        return v69;
      }
    }
  }

  return v26;
}

uint64_t WorkoutAlertInterval.upcomingSpokenDescription(formattingManager:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v5 = v118;
  if (v118)
  {
    v6 = v116;
    v7 = HIBYTE(v118) & 0xF;
    if ((v118 & 0x2000000000000000) == 0)
    {
      v7 = v116 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      goto LABEL_8;
    }
  }

  swift_beginAccess();
  v117 = *(v2 + 16);
  v6 = StepType.displayString.getter();
  v5 = v8;
LABEL_8:
  v9 = WorkoutAlertInterval.spokenGoalString(formattingManager:)(a1);
  v11 = v10;
  v12 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v13 = *(v2 + v12);
  v113 = v3;
  v115 = a1;
  v110 = v11;
  v112 = v6;
  v109 = v9;
  if (v13 >> 62)
  {
    goto LABEL_66;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x20F2E7A20](v15, v13);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          v14 = __CocoaSet.count.getter();
          goto LABEL_10;
        }

        v16 = *(v13 + 8 * v15 + 32);

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_20;
        }
      }

      swift_beginAccess();
      if (*(v16 + 40))
      {

        v27 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
        swift_beginAccess();
        v28 = *(v2 + v27);
        swift_beginAccess();
        v29 = *(v16 + 24);
        swift_beginAccess();
        v30 = *(v16 + 32);
        v31 = v28;
        if (v29 == v30)
        {
          v32 = TargetZone.alertSpokenStringForSingleThreshold(formattingManager:activityType:)(v115, v31);
        }

        else
        {
          v32 = TargetZone.alertSpokenStringForMultiThreshold(formattingManager:activityType:)(v115, v31);
        }

        v67 = v32;
        v68 = v33;

        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v70 = [objc_opt_self() bundleForClass_];
        v71 = MEMORY[0x20F2E6C00](0xD000000000000036, 0x800000020B463920);
        v72 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v73 = [v70 localizedStringForKey:v71 value:0 table:v72];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_20B423A20;
        v75 = MEMORY[0x277D837D0];
        *(v74 + 56) = MEMORY[0x277D837D0];
        v76 = lazy protocol witness table accessor for type String and conformance String();
        *(v74 + 32) = v112;
        *(v74 + 40) = v5;
        *(v74 + 96) = v75;
        *(v74 + 104) = v76;
        *(v74 + 64) = v76;
        *(v74 + 72) = v109;
        *(v74 + 80) = v110;
        *(v74 + 136) = v75;
        *(v74 + 144) = v76;
        *(v74 + 112) = v67;
        *(v74 + 120) = v68;
        v23 = String.init(format:_:)();
        v57 = v77;

        goto LABEL_56;
      }

      ++v15;
    }

    while (v17 != v14);
  }

  v18 = *(v2 + v12);
  if (v18 >> 62)
  {
    if (v18 < 0)
    {
      v105 = *(v2 + v12);
    }

    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v19 = 0;
    v12 = v18 & 0xC000000000000001;
    do
    {
      if (v12)
      {
        v20 = MEMORY[0x20F2E7A20](v19, v18);
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v20 = *(v18 + 8 * v19 + 32);

        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_33:
          __break(1u);
          return 0;
        }
      }

      swift_beginAccess();
      v22 = *(v20 + 40);

      if (v22 == 1)
      {
        goto LABEL_49;
      }

      ++v19;
    }

    while (v21 != v13);
  }

  v24 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v25 = *(v2 + v24);
  if (v25)
  {
    v26 = *(v2 + v24);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v26 = static HeartRateTargetZone.defaultZone;
  }

  if (v26[OBJC_IVAR___WOCoreHeartRateTargetZone_type] && v26[OBJC_IVAR___WOCoreHeartRateTargetZone_type] != 1)
  {
    v46 = v25;

LABEL_49:
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v35 = v25;

    if ((v34 & 1) == 0)
    {
      v36 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
      swift_beginAccess();
      v37 = *(v2 + v36);
      v38 = specialized HeartRateTargetZone.spokenString(formattingManager:activityType:)(v115);
      v40 = v39;

      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v41 = swift_getObjCClassFromMetadata();
      v42 = [objc_opt_self() bundleForClass_];
      v43 = MEMORY[0x20F2E6C00](0xD000000000000036, 0x800000020B463920);
      v44 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v45 = [v42 localizedStringForKey:v43 value:0 table:v44];
      goto LABEL_52;
    }
  }

  v47 = WorkoutStep.activePowerZonesAlertTargetZone.getter();
  if (!v47)
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v58 = swift_getObjCClassFromMetadata();
    v59 = [objc_opt_self() bundleForClass_];
    v60 = MEMORY[0x20F2E6C00](0xD00000000000002BLL, 0x800000020B463A10);
    v61 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v62 = [v59 localizedStringForKey:v60 value:0 table:v61];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_20B4282E0;
    v64 = MEMORY[0x277D837D0];
    *(v63 + 56) = MEMORY[0x277D837D0];
    v65 = lazy protocol witness table accessor for type String and conformance String();
    *(v63 + 32) = v112;
    *(v63 + 40) = v5;
    *(v63 + 96) = v64;
    *(v63 + 104) = v65;
    *(v63 + 64) = v65;
    *(v63 + 72) = v9;
    *(v63 + 80) = v110;
    v23 = String.init(format:_:)();
    v57 = v66;

    goto LABEL_56;
  }

  v26 = v47;
  v48 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v49 = *(v2 + v48);
  v38 = PowerZonesAlertTargetZone.spokenString(formattingManager:activityType:)(v115, v49);
  v40 = v50;

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  v51 = swift_getObjCClassFromMetadata();
  v42 = [objc_opt_self() bundleForClass_];
  v43 = MEMORY[0x20F2E6C00](0xD000000000000036, 0x800000020B463920);
  v44 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v45 = [v42 localizedStringForKey:v43 value:0 table:v44];
LABEL_52:
  v52 = v45;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_20B423A20;
  v54 = MEMORY[0x277D837D0];
  *(v53 + 56) = MEMORY[0x277D837D0];
  v55 = lazy protocol witness table accessor for type String and conformance String();
  *(v53 + 32) = v112;
  *(v53 + 40) = v5;
  *(v53 + 96) = v54;
  *(v53 + 104) = v55;
  *(v53 + 64) = v55;
  *(v53 + 72) = v109;
  *(v53 + 80) = v110;
  *(v53 + 136) = v54;
  *(v53 + 144) = v55;
  *(v53 + 112) = v38;
  *(v53 + 120) = v40;
  v23 = String.init(format:_:)();
  v57 = v56;

LABEL_56:
  v78 = v113 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep;
  v79 = *(v113 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 16);
  if (v79)
  {
    v80 = *(v78 + 8);
    v81 = *(v78 + 24);
    v82 = *(v78 + 32);
    v83 = *(v78 + 40);
    v114 = *v78;

    v84 = CompletedWorkoutStep.spokenString(formattingManager:)(v115);
    if (!v85)
    {

      outlined consume of CompletedWorkoutStep?(v114, v80, v79);
      return v23;
    }

    v86 = v85;
    v107 = v84;
    swift_beginAccess();
    v87 = *(v79 + 16);
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v88 = swift_getObjCClassFromMetadata();
    v89 = [objc_opt_self() bundleForClass_];
    v90 = "H_ALERT_SUMMARY_SPOKEN";
    if (v87 == 1)
    {
      v90 = "OMBINED_STEPS_SUMMARIES_SPOKEN";
    }

    v91 = MEMORY[0x20F2E6C00](0xD000000000000030, v90 | 0x8000000000000000);
    v92 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v111 = v80;
    v93 = [v89 localizedStringForKey:v91 value:0 table:v92];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_20B423A90;
    *(v94 + 56) = MEMORY[0x277D837D0];
    v95 = lazy protocol witness table accessor for type String and conformance String();
    *(v94 + 64) = v95;
    *(v94 + 32) = v107;
    *(v94 + 40) = v86;
    v96 = String.init(format:_:)();
    v106 = v97;
    v108 = v96;

    v98 = [objc_opt_self() bundleForClass_];
    v99 = MEMORY[0x20F2E6C00](0xD00000000000002ELL, 0x800000020B4639A0);
    v100 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v101 = [v98 localizedStringForKey:v99 value:0 table:v100];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_20B4282E0;
    v103 = MEMORY[0x277D837D0];
    *(v102 + 56) = MEMORY[0x277D837D0];
    *(v102 + 64) = v95;
    *(v102 + 32) = v108;
    *(v102 + 40) = v106;
    *(v102 + 96) = v103;
    *(v102 + 104) = v95;
    *(v102 + 72) = v23;
    *(v102 + 80) = v57;
    v23 = String.init(format:_:)();
    outlined consume of CompletedWorkoutStep?(v114, v111, v79);
  }

  return v23;
}

id WorkoutAlertInterval.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertInterval.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertInterval();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized WorkoutAlertInterval.endSpokenDescription()()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001ELL, 0x800000020B463A40);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t specialized WorkoutAlertInterval.localizedProgressDescription(with:formattingManager:)(void *a1)
{
  v3 = [v1 type];
  if (v3 == 16)
  {
    if (*&v1[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep])
    {
      v4 = *&v1[OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep];

      v6 = WorkoutAlertInterval.writtenDescription(step:prefix:formattingManager:)(v5, 0x7478654E207055, 0xE700000000000000, a1);

      return v6;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else if (v3 == 17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20B425990;
    v9 = specialized WorkoutAlertInterval.endSpokenDescription()();
    v10 = MEMORY[0x20F2E6C00](v9);

    v11 = [objc_opt_self() stringWithValueString:v10 unitString:0];

    result = v8;
    *(v8 + 32) = v11;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    [v1 type];
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD000000000000019, 0x800000020B45AC30);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id WorkoutAlertTrackStatusChange.__allocating_init(trackStatusAlertType:)()
{
  v3.receiver = objc_allocWithZone(v0);
  v3.super_class = v0;
  v1 = objc_msgSendSuper2(&v3, sel_init);
  [v1 setType_];
  return v1;
}

uint64_t TrackStatusAlertType.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TrackStatusAlertType.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TrackStatusAlertType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrackStatusAlertType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TrackStatusAlertType@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TrackStatusAlertType, *a1);

  *a2 = v3 != 0;
  return result;
}

id WorkoutAlertTrackStatusChange.init(trackStatusAlertType:)()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for WorkoutAlertTrackStatusChange();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  [v1 setType_];
  return v1;
}

id WorkoutAlertTrackStatusChange.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertTrackStatusChange.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertTrackStatusChange();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized WorkoutAlertTrackStatusChange.localizedAlertTitle.getter()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001ELL, 0x800000020B463B20);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

unint64_t lazy protocol witness table accessor for type TrackStatusAlertType and conformance TrackStatusAlertType()
{
  result = lazy protocol witness table cache variable for type TrackStatusAlertType and conformance TrackStatusAlertType;
  if (!lazy protocol witness table cache variable for type TrackStatusAlertType and conformance TrackStatusAlertType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrackStatusAlertType and conformance TrackStatusAlertType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrackStatusAlertType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TrackStatusAlertType(_WORD *result, int a2, int a3)
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

id TrainerTimerEndEventAlert.__allocating_init(duration:)()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = objc_allocWithZone(v0);
  v9.super_class = v0;
  v6 = objc_msgSendSuper2(&v9, sel_init);
  [v6 setType_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v5, v1);
  [v6 setEventDate_];

  return v6;
}

id TrainerTimerEndEventAlert.init(duration:)()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TrainerTimerEndEventAlert();
  v10.receiver = v0;
  v10.super_class = v6;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  [v7 setType_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v5, v1);
  [v7 setEventDate_];

  return v7;
}

id TrainerTimerEndEventAlert.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TrainerTimerEndEventAlert.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrainerTimerEndEventAlert();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WorkoutAlertTimeSplit.init(workoutAlertType:elapsedTime:formattingManager:)(uint64_t a1, void *a2, double a3)
{
  *&v3[OBJC_IVAR____TtC11WorkoutCore21WorkoutAlertTimeSplit_elapsedTime] = a3;
  *&v3[OBJC_IVAR____TtC11WorkoutCore21WorkoutAlertTimeSplit_formattingManager] = a2;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for WorkoutAlertTimeSplit();
  v6 = a2;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  if (a1 == 5)
  {
    v8 = v7;
    [v8 setType_];

    return v8;
  }

  else
  {
    v10 = v7;
    _StringGuts.grow(_:)(47);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD00000000000001ALL, 0x800000020B463BD0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id WorkoutAlertTimeSplit.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertTimeSplit.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertTimeSplit();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized WorkoutAlertTimeSplit.localizedProgressDescription(with:formattingManager:)(void *a1)
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B463C50);
  v6 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = MEMORY[0x20F2E6C00](v8);
  }

  v9 = [objc_opt_self() splitStringOnNewlines_];
  type metadata accessor for NLWorkoutAlertUnitAnnotatedString();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore21WorkoutAlertTimeSplit_elapsedTime) < 3600.0)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = [a1 stringWithDuration:v11 durationFormat:?];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = MEMORY[0x20F2E6C00](v14, v16);

  v18 = [objc_opt_self() stringWithValueString:v17 unitString:0];

  MEMORY[0x20F2E6F30]();
  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v10;
}

void key path setter for WorkoutAlertHeartRateZone.heartRateTargetZone : WorkoutAlertHeartRateZone(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id WorkoutAlertHeartRateZone.heartRateTargetZone.getter()
{
  v1 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

double WorkoutAlertHeartRateZone.heartRate.getter()
{
  v1 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
  swift_beginAccess();
  return *(v0 + v1);
}

id WorkoutAlertHeartRateZone.init(heartRateTargetZone:heartRate:)(void *a1, double a2)
{
  *&v2[OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone] = a1;
  *&v2[OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for WorkoutAlertHeartRateZone();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v15, sel_init);
  v7 = HeartRateTargetZone.applicableRange.getter();
  if ((v9 & 1) != 0 || a2 <= 2.22044605e-16)
  {
    v11 = v6;
    v12 = 0;
  }

  else
  {
    if (v8 <= a2)
    {
      v14 = v6;
      [v14 setType_];
      goto LABEL_8;
    }

    v10 = *&v7;
    v11 = v6;
    if (v10 <= a2)
    {
      v12 = 10;
    }

    else
    {
      v12 = 9;
    }
  }

  [v11 setType_];
LABEL_8:

  return v6;
}

id WorkoutAlertHeartRateZone.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertHeartRateZone.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertHeartRateZone();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized WorkoutAlertHeartRateZone.localizedProgressDescription(with:formattingManager:)()
{
  v1 = v0;
  v52 = MEMORY[0x277D84F90];
  v2 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
  if ([v0 type] == 8)
  {
    v3 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone;
    swift_beginAccess();
    v4 = *&v1[v3];
    if (*(v4 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1 && (v5 = v4 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange, swift_beginAccess(), (*(v5 + 16) & 1) == 0) && *(v5 + 8) - *v5 <= 1.0)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      v43 = MEMORY[0x20F2E6C00](0xD000000000000017, 0x800000020B463E30);
      v44 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v10 = [v7 localizedStringForKey:v43 value:0 table:v44];

      if (!v10)
      {
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = MEMORY[0x20F2E6C00](v45);
      }
    }

    else
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v6 = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      v8 = MEMORY[0x20F2E6C00](0x4F5A5F45564F4241, 0xEA0000000000454ELL);
      v9 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

      if (!v10)
      {
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = MEMORY[0x20F2E6C00](v11);
      }
    }
  }

  else if ([v0 type] == 9)
  {
    v12 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone;
    swift_beginAccess();
    v13 = *&v1[v12];
    if (*(v13 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1 && (v14 = v13 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange, swift_beginAccess(), (*(v14 + 16) & 1) == 0) && *(v14 + 8) - *v14 <= 1.0)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v46 = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      v47 = MEMORY[0x20F2E6C00](0xD000000000000017, 0x800000020B463E10);
      v48 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v10 = [v7 localizedStringForKey:v47 value:0 table:v48];

      if (!v10)
      {
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = MEMORY[0x20F2E6C00](v49);
      }
    }

    else
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v15 = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      v16 = MEMORY[0x20F2E6C00](0x4F5A5F574F4C4542, 0xEA0000000000454ELL);
      v17 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v10 = [v7 localizedStringForKey:v16 value:0 table:v17];

      if (!v10)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = MEMORY[0x20F2E6C00](v18);
      }
    }
  }

  else
  {
    if ([v0 type] != 10)
    {
LABEL_34:
      _StringGuts.grow(_:)(50);

      [v1 v2[476]];
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x20F2E6D80](v51);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v19 = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v20 = MEMORY[0x20F2E6C00](0x5A5F4E4948544957, 0xEB00000000454E4FLL);
    v21 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v10 = [v7 localizedStringForKey:v20 value:0 table:v21];

    if (!v10)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = MEMORY[0x20F2E6C00](v22);
    }
  }

  v23 = [objc_opt_self() splitStringOnNewlines_];
  type metadata accessor for NLWorkoutAlertUnitAnnotatedString();
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.append<A>(contentsOf:)(v24);
  v25 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
  swift_beginAccess();
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  if (one-time initialization token for integralFormatter != -1)
  {
    swift_once();
  }

  v26 = [static NSNumberFormatter.integralFormatter stringFromNumber_];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v29;
  }

  else
  {
    v2 = 0xA300000000000000;
    v28 = 9666786;
  }

  v30 = MEMORY[0x20F2E82D0]();
  if (!v30)
  {
    __break(1u);
    goto LABEL_34;
  }

  v31 = v30;
  v53._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0x524F48535F4D5042;
  v32._object = 0xE900000000000054;
  v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v33.value._object = 0xEB00000000656C62;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v53);

  lazy protocol witness table accessor for type String and conformance String();
  v35 = StringProtocol.localizedUppercase.getter();
  v37 = v36;

  v38 = MEMORY[0x20F2E6C00](v28, v2);

  v39 = MEMORY[0x20F2E6C00](v35, v37);

  v40 = [objc_opt_self() stringWithValueString:v38 shortDescriptionString:v39 unitString:0];

  MEMORY[0x20F2E6F30]();
  if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v50 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v52;
}

uint64_t specialized WorkoutAlertHeartRateZone.spokenDescription(with:)()
{
  v1 = [v0 type];
  if (v1 != 8)
  {
    if (v1 != 10)
    {
      goto LABEL_14;
    }

    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = MEMORY[0x20F2E6C00](0xD00000000000001ELL, 0x800000020B463D10);
    v5 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20B423A90;
    v8 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
    swift_beginAccess();
    v9 = *&v0[v8];
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v9 <= -9.22337204e18)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v9 < 9.22337204e18)
    {
LABEL_21:
      v28 = MEMORY[0x277D83C10];
      *(v7 + 56) = MEMORY[0x277D83B88];
      *(v7 + 64) = v28;
      *(v7 + 32) = v9;
      v29 = String.init(format:_:)();

      return v29;
    }

    __break(1u);
  }

  v10 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone;
  swift_beginAccess();
  v11 = *&v0[v10];
  if (*(v11 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
  {
    v12 = v11 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
    swift_beginAccess();
    if ((*(v12 + 16) & 1) == 0 && *(v12 + 8) - *v12 <= 1.0)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v31 = swift_getObjCClassFromMetadata();
      v32 = [objc_opt_self() bundleForClass_];
      v33 = MEMORY[0x20F2E6C00](0xD000000000000024, 0x800000020B463D50);
      v34 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v35 = [v32 localizedStringForKey:v33 value:0 table:v34];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_20B423A90;
      v36 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
      swift_beginAccess();
      v9 = *&v0[v36];
      if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v9 <= -9.22337204e18)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (v9 < 9.22337204e18)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_26:
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v37 = swift_getObjCClassFromMetadata();
      v38 = [objc_opt_self() bundleForClass_];
      v39 = MEMORY[0x20F2E6C00](0xD000000000000024, 0x800000020B463DA0);
      v40 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v41 = [v38 localizedStringForKey:v39 value:0 table:v40];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_20B423A90;
      v42 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
      swift_beginAccess();
      v9 = *&v0[v42];
      if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v9 <= -9.22337204e18)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v9 < 9.22337204e18)
      {
        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  v13 = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B463D30);
  v16 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20B423A90;
  v18 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
  v1 = swift_beginAccess();
  v9 = *&v0[v18];
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v9 < 9.22337204e18)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_14:
  if (v1 == 9)
  {
    v19 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone;
    swift_beginAccess();
    v20 = *&v0[v19];
    if (*(v20 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1 || (v21 = v20 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange, swift_beginAccess(), (*(v21 + 16) & 1) != 0) || *(v21 + 8) - *v21 > 1.0)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v22 = swift_getObjCClassFromMetadata();
      v23 = [objc_opt_self() bundleForClass_];
      v24 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B463D80);
      v25 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_20B423A90;
      v27 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRate;
      swift_beginAccess();
      v9 = *&v0[v27];
      if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v9 > -9.22337204e18)
        {
          if (v9 < 9.22337204e18)
          {
            goto LABEL_21;
          }

          goto LABEL_36;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      goto LABEL_33;
    }

    goto LABEL_26;
  }

LABEL_41:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t WorkoutAlertSegment.__allocating_init(workoutAlertType:segmentMarker:activityType:activityMoveMode:gpsAvailable:shouldHideTime:)(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, char a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR___WOSegmentAlert_segmentMarker] = a2;
  *&v13[OBJC_IVAR___WOSegmentAlert_activityType] = a3;
  *&v13[OBJC_IVAR___WOSegmentAlert_activityMoveMode] = a4;
  v13[OBJC_IVAR___WOSegmentAlert_gpsAvailable] = a5;
  v13[OBJC_IVAR___WOSegmentAlert_shouldHideTime] = a6;
  v20.receiver = v13;
  v20.super_class = v6;
  v14 = a2;
  v15 = a3;
  v16 = objc_msgSendSuper2(&v20, sel_init);
  if (a1 == 26 || a1 == 6)
  {
    v17 = v16;
    [v17 setType_];

    return v17;
  }

  else
  {
    v19 = v16;
    _StringGuts.grow(_:)(45);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD000000000000018, 0x800000020B463E80);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t WorkoutAlertSegment.init(workoutAlertType:segmentMarker:activityType:activityMoveMode:gpsAvailable:shouldHideTime:)(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, char a6)
{
  *&v6[OBJC_IVAR___WOSegmentAlert_segmentMarker] = a2;
  *&v6[OBJC_IVAR___WOSegmentAlert_activityType] = a3;
  *&v6[OBJC_IVAR___WOSegmentAlert_activityMoveMode] = a4;
  v6[OBJC_IVAR___WOSegmentAlert_gpsAvailable] = a5;
  v6[OBJC_IVAR___WOSegmentAlert_shouldHideTime] = a6;
  v16.receiver = v6;
  v16.super_class = type metadata accessor for WorkoutAlertSegment();
  v10 = a2;
  v11 = a3;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  if (a1 == 26 || a1 == 6)
  {
    v13 = v12;
    [v13 setType_];

    return v13;
  }

  else
  {
    v15 = v12;
    _StringGuts.grow(_:)(45);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD000000000000018, 0x800000020B463E80);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::String __swiftcall WorkoutAlertSegment.segmentDescription()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___WOSegmentAlert_segmentMarker];
  v3 = NLSessionActivitySegmentMarker.segmentDescription(alertType:)([v1 type]);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id WorkoutAlertSegment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertSegment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAlertSegment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WorkoutAlertRaceComplete.init(type:raceTime:secondsAhead:)(uint64_t a1, double a2, double a3)
{
  if ((a1 - 23) > 1)
  {
    _StringGuts.grow(_:)(50);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD00000000000001DLL, 0x800000020B464010);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC11WorkoutCore24WorkoutAlertRaceComplete_didWinRace) = a1 == 23;
    *(v3 + OBJC_IVAR____TtC11WorkoutCore24WorkoutAlertRaceComplete_raceTime) = a2;
    *(v3 + OBJC_IVAR____TtC11WorkoutCore24WorkoutAlertRaceComplete_secondsAhead) = a3;

    return WorkoutAlertRace.init(type:)(a1);
  }

  return result;
}

uint64_t WorkoutAlertRace.init(type:)(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for WorkoutAlertRace();
  v3 = objc_msgSendSuper2(&v7, sel_init);
  if ((a1 - 18) > 6)
  {
    v6 = v3;
    _StringGuts.grow(_:)(42);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B464030);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = v3;
    [v3 setType_];
    return v4;
  }

  return result;
}

Swift::String __swiftcall WorkoutAlertRaceComplete.resultTitle()()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001CLL, 0x800000020B464050);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

unint64_t WorkoutAlertRace.internalType.getter()
{
  v1 = [v0 type];
  if ((v1 - 18) < 7)
  {
    return 0x4030200010605uLL >> (8 * (v1 - 18));
  }

  _StringGuts.grow(_:)(42);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
  [v0 type];
  type metadata accessor for NLWorkoutAlertType(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B464030);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::String __swiftcall WorkoutAlertRace.alertTitle()()
{
  v0 = WorkoutAlertRace.internalType.getter();
  v1 = 0xD000000000000013;
  v2 = "RACE_ALERT_OFF_ROUTE";
  v3 = "RACE_ALERT_BEHIND_GHOST";
  v4 = 0xD000000000000016;
  if (v0 != 5)
  {
    v4 = 0xD000000000000017;
    v3 = "lete";
  }

  v5 = "RACE_ALERT_ROUTE_COMPLETE_LOST";
  v6 = 0xD00000000000001DLL;
  if (v0 != 3)
  {
    v6 = 0xD00000000000001ELL;
    v5 = "RACE_ALERT_AHEAD_GHOST";
  }

  if (v0 <= 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = "RACE_ALERT_EXPIRED";
  v8 = 0xD000000000000014;
  if (v0 != 1)
  {
    v8 = 0xD000000000000012;
    v7 = "RACE_ALERT_ROUTE_COMPLETE_WON";
  }

  if (v0)
  {
    v1 = v8;
    v2 = v7;
  }

  if (v0 <= 2u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  if (v0 <= 2u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v3;
  }

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = MEMORY[0x20F2E6C00](v9, v10 | 0x8000000000000000);

  v14 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

Swift::String __swiftcall WorkoutAlertRace.alertTitleLocalizationKey()()
{
  v0 = WorkoutAlertRace.internalType.getter();
  v1 = 0xD000000000000013;
  v2 = "RACE_ALERT_OFF_ROUTE";
  v3 = v0;
  v4 = "RACE_ALERT_BEHIND_GHOST";
  v5 = 0xD000000000000016;
  if (v0 != 5)
  {
    v5 = 0xD000000000000017;
    v4 = "lete";
  }

  v6 = "RACE_ALERT_ROUTE_COMPLETE_LOST";
  v7 = 0xD00000000000001DLL;
  if (v0 != 3)
  {
    v7 = 0xD00000000000001ELL;
    v6 = "RACE_ALERT_AHEAD_GHOST";
  }

  if (v0 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "RACE_ALERT_EXPIRED";
  v9 = 0xD000000000000014;
  if (v0 != 1)
  {
    v9 = 0xD000000000000012;
    v8 = "RACE_ALERT_ROUTE_COMPLETE_WON";
  }

  if (v0)
  {
    v1 = v9;
    v2 = v8;
  }

  if (v0 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v5;
  }

  if (v3 <= 2)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  v12 = (v11 | 0x8000000000000000);
  result._object = v12;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String_optional __swiftcall WorkoutAlertRace.alertSubtitle()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

id WorkoutAlertRace.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertRaceComplete.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t specialized WorkoutAlertRace.spokenDescription(with:)()
{
  v0 = WorkoutAlertRace.internalType.getter();
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = "RACE_ALERT_OFF_ROUTE_SPOKEN";
  v4 = "RACE_ALERT_BEHIND_GHOST_SPOKEN";
  if (v0 == 5)
  {
    v5 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = "e16WorkoutAlertRace";
    v5 = 0xD00000000000001ELL;
  }

  v6 = "_COMPLETE_LOST_SPOKEN";
  v7 = 0xD000000000000024;
  if (v0 != 3)
  {
    v6 = "RACE_ALERT_AHEAD_GHOST_SPOKEN";
    v7 = 0xD000000000000025;
  }

  if (v0 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = "RACE_ALERT_EXPIRED_SPOKEN";
  v9 = 0xD00000000000001BLL;
  if (v0 != 1)
  {
    v8 = "_COMPLETE_WON_SPOKEN";
    v9 = 0xD000000000000019;
  }

  if (v0)
  {
    v3 = v8;
    v10 = v9;
  }

  else
  {
    v10 = 0xD00000000000001ALL;
  }

  if (v0 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v3 = v4;
    v11 = v5;
  }

  v12 = MEMORY[0x20F2E6C00](v11, v3 | 0x8000000000000000);
  v13 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v14 = [v2 localizedStringForKey:v12 value:0 table:v13];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v15;
}

uint64_t specialized WorkoutAlertRace.spokenUserData(with:)()
{
  v0 = type metadata accessor for BasicVoiceFeedbackAlerts();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = WorkoutAlertRace.internalType.getter();
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        static BasicVoiceFeedbackAlerts.raceOffRoute.getter();
      }

      else
      {
        static BasicVoiceFeedbackAlerts.raceExpired.getter();
      }
    }

    else
    {
      static BasicVoiceFeedbackAlerts.raceOnRoute.getter();
    }
  }

  else if (v5 > 4)
  {
    if (v5 == 5)
    {
      static BasicVoiceFeedbackAlerts.raceAheadOfGhost.getter();
    }

    else
    {
      static BasicVoiceFeedbackAlerts.raceBehindGhost.getter();
    }
  }

  else if (v5 == 3)
  {
    static BasicVoiceFeedbackAlerts.raceRouteCompleteRaceWon.getter();
  }

  else
  {
    static BasicVoiceFeedbackAlerts.raceRouteCompletedRaceLost.getter();
  }

  v6 = specialized VoiceFeedbackAlerting.toDictionary()();
  (*(v1 + 8))(v4, v0);
  return v6;
}

id TaskFinalizer.().init()()
{
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v13 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v13);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v12 = OBJC_IVAR___WOCoreTaskFinalizer_queue;
  v11 = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_7(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v13);
  *&v0[v12] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR___WOCoreTaskFinalizer_tasks] = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR___WOCoreTaskFinalizer_finalizedIdentifiers] = MEMORY[0x277D84FA0];
  v9 = type metadata accessor for TaskFinalizer();
  v14.receiver = v0;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t static TaskFinalizer.appendTask(identifier:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for shared != -1)
  {
    v5 = a1;
    v6 = a2;
    v7 = a4;
    v8 = a3;
    swift_once();
    a1 = v5;
    a2 = v6;
    a3 = v8;
    a4 = v7;
  }

  return TaskFinalizer.appendTask(identifier:task:)(a1, a2, a3, a4);
}

uint64_t TaskFinalizer.appendTask(identifier:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + OBJC_IVAR___WOCoreTaskFinalizer_queue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = partial apply for closure #1 in TaskFinalizer.appendTask(identifier:task:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_68;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_7(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v16, v12, v19);
  _Block_release(v19);
  (*(v23 + 8))(v12, v9);
  (*(v13 + 8))(v16, v22);
}

void closure #1 in TaskFinalizer.appendTask(identifier:task:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    TaskFinalizer._queue_appendTask(identifier:task:)(a2, a3, a4, a5);
  }
}

uint64_t TaskFinalizer._queue_appendTask(identifier:task:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a3;
  v56 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR___WOCoreTaskFinalizer_tasks;
  swift_beginAccess();
  v17 = *(v4 + v16);
  v18 = MEMORY[0x277D84F90];
  if (*(v17 + 16))
  {

    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v20)
    {
      v18 = *(*(v17 + 56) + 8 * v19);
    }
  }

  v21 = OBJC_IVAR___WOCoreTaskFinalizer_finalizedIdentifiers;
  swift_beginAccess();
  v22 = *(v5 + v21);

  LOBYTE(v21) = specialized Set.contains(_:)(a1, a2, v22);

  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v18[2])
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.core);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
      _os_log_impl(&dword_20AEA4000, v24, v25, "Finalizer: Identifier %s is currently being finalized, enqueueing new task.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x20F2E9420](v27, -1, -1);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

LABEL_12:
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static WOLog.core);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
      _os_log_impl(&dword_20AEA4000, v29, v30, "Finalizer: Enqueueing new task for identifier %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x20F2E9420](v32, -1, -1);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }

    v33 = swift_allocObject();
    *(v33 + 16) = v55;
    *(v33 + 24) = v56;
    v34 = v18[2];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v18;
    if (!isUniquelyReferenced_nonNull_native || v34 >= v18[3] >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v34 + 1, 1, v18);
      v59 = v18;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, _sIeg_ytIegr_TRTA_4, v33);

    swift_beginAccess();

    v36 = *(v5 + v16);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(v5 + v16);
    *(v5 + v16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, a1, a2, v37);

    *(v5 + v16) = v58;
    return swift_endAccess();
  }

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static WOLog.core);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    _os_log_impl(&dword_20AEA4000, v40, v41, "Finalizer: Identifier %s was already finalized, just running task", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x20F2E9420](v43, -1, -1);
    MEMORY[0x20F2E9420](v42, -1, -1);
  }

  v44 = MEMORY[0x277D84F90];
  type metadata accessor for OS_dispatch_queue();
  v45 = static OS_dispatch_queue.main.getter();
  v46 = swift_allocObject();
  v47 = v56;
  *(v46 + 16) = v55;
  *(v46 + 24) = v47;
  aBlock[4] = partial apply for closure #1 in TaskFinalizer._queue_appendTask(identifier:task:);
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_18_2;
  v48 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = v44;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_7(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v49 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v15, v11, v48);
  _Block_release(v48);

  (*(v53 + 8))(v11, v49);
  return (*(v51 + 8))(v15, v52);
}

uint64_t static TaskFinalizer.replaceTasks(identifier:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static TaskFinalizer.shared;
  v9 = *(static TaskFinalizer.shared + OBJC_IVAR___WOCoreTaskFinalizer_queue);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in TaskFinalizer.replaceTasks(identifier:with:);
  *(v11 + 24) = v10;
  v16[4] = _sIg_Ieg_TRTA_4;
  v16[5] = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed () -> ();
  v16[3] = &block_descriptor_51;
  v12 = _Block_copy(v16);
  v13 = v8;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t @objc static TaskFinalizer.appendTask(identifier:task:)(int a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  a7(v10, v12, a6, v13);
}

uint64_t TaskFinalizer.replaceTasks(identifier:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR___WOCoreTaskFinalizer_queue];
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = closure #1 in TaskFinalizer.replaceTasks(identifier:with:)partial apply;
  *(v11 + 24) = v10;
  v16[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v16[5] = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed () -> ();
  v16[3] = &block_descriptor_59;
  v12 = _Block_copy(v16);
  v13 = v4;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in TaskFinalizer.replaceTasks(identifier:with:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.core);
  v11 = a1;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v27 = a5;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29[0] = v15;
    *v14 = 134218242;
    v16 = OBJC_IVAR___WOCoreTaskFinalizer_tasks;
    swift_beginAccess();
    v17 = *&v11[v16];
    v18 = *(v17 + 16);

    if (v18 && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v20 & 1) != 0))
    {
      v21 = *(*(v17 + 56) + 8 * v19);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v22 = *(v21 + 16);

    *(v14 + 4) = v22;

    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v29);
    _os_log_impl(&dword_20AEA4000, v12, v13, "Finalizer: Replacing %ld tasks for %s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F2E9420](v15, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);

    a5 = v27;
  }

  else
  {
  }

  v23 = TaskFinalizer.tasks.modify();
  v25 = specialized Dictionary.subscript.modify(v28, a2, a3);
  if (*v24)
  {
    *v24 = MEMORY[0x277D84F90];
  }

  (v25)(v28, 0);
  (v23)(v29, 0);
  return TaskFinalizer._queue_appendTask(identifier:task:)(a2, a3, a4, a5);
}

uint64_t static TaskFinalizer.finalize(identifier:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for shared != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  return TaskFinalizer.finalize(identifier:)(a1, a2);
}

uint64_t TaskFinalizer.finalize(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___WOCoreTaskFinalizer_queue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in TaskFinalizer.finalize(identifier:);
  *(v7 + 24) = v6;
  v29 = thunk for @callee_guaranteed () -> ()partial apply;
  v30 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed () -> ();
  v28 = &block_descriptor_35_0;
  v8 = _Block_copy(&aBlock);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    goto LABEL_10;
  }

  v23 = 0;
  v24 = 0;
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = &v23;
  v12 = v9;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(0);
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #2 in TaskFinalizer.finalize(identifier:);
  *(v13 + 24) = v11;
  v29 = thunk for @callee_guaranteed () -> ()partial apply;
  v30 = v13;
  v14 = MEMORY[0x277D85DD0];
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed () -> ();
  v28 = &block_descriptor_45_5;
  v15 = _Block_copy(&aBlock);

  dispatch_sync(v5, v15);
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v16 = v23;
  if (v23)
  {
    while (1)
    {

      v16(v17);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v16);
      v18 = v23;
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v23);
      if (!v18)
      {
        break;
      }

      v23 = 0;
      v24 = 0;
      v19 = swift_allocObject();
      v19[2] = v12;
      v19[3] = a1;
      v19[4] = a2;
      v19[5] = &v23;
      v20 = v12;

      outlined consume of (@escaping @callee_guaranteed () -> ())?(partial apply for closure #2 in TaskFinalizer.finalize(identifier:));
      v21 = swift_allocObject();
      *(v21 + 16) = partial apply for closure #2 in TaskFinalizer.finalize(identifier:);
      *(v21 + 24) = v19;
      v29 = thunk for @callee_guaranteed () -> ()partial apply;
      v30 = v21;
      aBlock = v14;
      v26 = 1107296256;
      v27 = thunk for @escaping @callee_guaranteed () -> ();
      v28 = &block_descriptor_45_5;
      v22 = _Block_copy(&aBlock);

      dispatch_sync(v5, v22);
      _Block_release(v22);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if (v22)
      {
        goto LABEL_9;
      }

      v16 = v23;
      if (!v23)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    outlined consume of (@escaping @callee_guaranteed () -> ())?(0);
  }
}

void closure #1 in TaskFinalizer.finalize(identifier:)(void *a1, Swift::Int a2, unint64_t a3)
{
  swift_beginAccess();

  specialized Set._Variant.insert(_:)(&v19, a2, a3);
  swift_endAccess();

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.core);

  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v19);
    *(v10 + 12) = 2048;
    v12 = OBJC_IVAR___WOCoreTaskFinalizer_tasks;
    swift_beginAccess();
    v13 = *&v7[v12];
    v14 = *(v13 + 16);

    if (v14 && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v16 & 1) != 0))
    {
      v17 = *(*(v13 + 56) + 8 * v15);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);

    *(v10 + 14) = v18;

    _os_log_impl(&dword_20AEA4000, v8, v9, "Finalizer: Finalized identifier %s, running %ld tasks", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #2 in TaskFinalizer.finalize(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = OBJC_IVAR___WOCoreTaskFinalizer_tasks;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    v13 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_8;
    }

LABEL_5:
    v14 = 0;
    v15 = 0;
LABEL_11:
    v22 = *a4;
    v21 = a4[1];
    *a4 = v14;
    a4[1] = v15;
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v22);
    swift_beginAccess();

    v23 = *(a1 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(a1 + v8);
    *(a1 + v8) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a1 + v8) = v25;
    return swift_endAccess();
  }

  v10 = *(a1 + v8);

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if (v12)
  {
    v13 = *(*(v9 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (!v13[2])
  {
    goto LABEL_5;
  }

LABEL_8:
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v17 = v13[2];
    if (v17)
    {
LABEL_10:
      v18 = v17 - 1;
      v19 = &v13[2 * v17 - 2];
      v15 = swift_allocObject();
      v20 = *(v19 + 2);
      v13[2] = v18;
      *(v15 + 16) = v20;
      v14 = _sytIegr_Ieg_TRTA_4;
      goto LABEL_11;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    v13 = result;
    v17 = *(result + 16);
    if (v17)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id TaskFinalizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TaskFinalizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _sIeg_ytIegr_TRTA_4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for closure #1 in TaskFinalizer._queue_appendTask(identifier:task:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_27Tm(uint64_t a1)
{
  v3 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t key path setter for QueriedExternalProvider.externalProvider : QueriedExternalProvider(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t QueriedExternalProvider.externalProvider.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t QueriedExternalProvider.externalProvider.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t QueriedExternalProvider.permissionState.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t QueriedExternalProvider.__allocating_init(externalProvider:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t QueriedExternalProvider.init(externalProvider:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

void QueriedExternalProvider.init(persistence:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
LABEL_21:
    type metadata accessor for QueriedExternalProvider();
    swift_deallocPartialClassInstance();
    return;
  }

  type metadata accessor for ExternalProvider();
  v9 = a1;
  static ExternalProvider.deserialize(from:)(v9, v51);
  if (!v51[3])
  {
    _sypSgWOhTm_2(v51, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.core);
    v23 = v9;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51[0] = v27;
      *v26 = 136315138;
      v28 = [v23 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v5;
      v32 = v31;
      (*(v30 + 8))(v8, v4);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v32, v51);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_20AEA4000, v24, v25, "Unable to deserialize ExternalProvider from persistence, uuid: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x20F2E9420](v27, -1, -1);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    goto LABEL_21;
  }

  v10 = v50;
  v11 = *MEMORY[0x277D7E818];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = [v9 keyedNumbers];
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v16 + 16))
  {

    goto LABEL_15;
  }

  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v14);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_15:

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static WOLog.core);
    v35 = v9;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v38 = 136315394;
      v39 = [v35 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v5;
      v43 = v42;
      (*(v41 + 8))(v8, v4);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v43, &v50);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2080;
      swift_beginAccess();
      v45 = *(v10 + 32);
      v46 = *(v10 + 40);

      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v50);

      *(v38 + 14) = v47;
      _os_log_impl(&dword_20AEA4000, v36, v37, "Unable to determine permission value from uuid: %s, bundleId: %s", v38, 0x16u);
      v48 = v49;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v48, -1, -1);
      MEMORY[0x20F2E9420](v38, -1, -1);
    }

    else
    {
    }

    goto LABEL_21;
  }

  v20 = *(*(v16 + 56) + 8 * v17);

  v21 = [v20 integerValue];

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v10;
    *(v2 + 24) = v21;
  }
}

uint64_t QueriedExternalProvider.hash(into:)()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  String.hash(into:)();

  swift_beginAccess();
  return MEMORY[0x20F2E7FF0](*(v0 + 24));
}

id QueriedExternalProvider.serialize(with:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  swift_beginAccess();
  v16 = [*(v2 + 16) serialize];
  v17 = *MEMORY[0x277D7E818];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (a2)
  {
    swift_beginAccess();
    v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v22 = [v16 keyedNumbers];
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = v23;
    specialized Dictionary.subscript.setter(v21, v18, v20);
    v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v16 setKeyedNumbers_];
  }

  else
  {
    v47 = v9;
    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v48 = v5;
    v26 = v20;
    v27 = v6;
    v28 = v25;
    v29 = [v16 keyedNumbers];
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = v30;
    v31 = v28;
    v32 = v27;
    v33 = v26;
    v34 = v48;
    specialized Dictionary.subscript.setter(v31, v18, v33);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v16 setKeyedNumbers_];

    v36 = *MEMORY[0x277D7E820];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
    Date.init()();
    (*(v32 + 56))(v15, 0, 1, v34);
    v40 = [v16 keyedDates];
    v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = v41;
    if ((*(v32 + 48))(v15, 1, v34) == 1)
    {
      _sypSgWOhTm_2(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v42 = v49;
      specialized Dictionary._Variant.removeValue(forKey:)(v37, v39, v49);

      _sypSgWOhTm_2(v42, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v43 = v47;
      (*(v32 + 32))(v47, v15, v34);
      v44 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v44;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v37, v39, isUniquelyReferenced_nonNull_native);

      v51 = v50;
    }

    v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v16 setKeyedDates_];
  }

  return v16;
}

uint64_t QueriedExternalProvider.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  MEMORY[0x20F2E6D80](v2, v3);

  MEMORY[0x20F2E6D80](39, 0xE100000000000000);

  MEMORY[0x20F2E6D80](0x3D6574617473202CLL, 0xE800000000000000);
  swift_beginAccess();
  v4 = *(v0 + 24);
  v5 = NSStringForWOPersistencePermissionState();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x20F2E6D80](v6, v8);

  return 0x72656469766F7270;
}

uint64_t QueriedExternalProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t QueriedExternalProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Int QueriedExternalProvider.hashValue.getter()
{
  Hasher.init(_seed:)();
  swift_beginAccess();
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  String.hash(into:)();

  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v0 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance QueriedExternalProvider()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_beginAccess();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  String.hash(into:)();

  swift_beginAccess();
  return MEMORY[0x20F2E7FF0](*(v1 + 24));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance QueriedExternalProvider()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  swift_beginAccess();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  String.hash(into:)();

  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v1 + 24));
  return Hasher._finalize()();
}

Swift::Int QueryClient.QueryClientError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance QueryClient.QueryClientError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance QueryClient.QueryClientError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

void closure #1 in QueryClient.fetchConfiguration(uuid:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, void *a5)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v8 = aBlock[6];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v10 = swift_allocObject();
    v10[2] = a5;
    v10[3] = a2;
    v10[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.fetchConfiguration(uuid:completion:);
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed WOPersistence?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_492;
    v11 = _Block_copy(aBlock);
    v12 = a5;

    [v8 remote:isa fetchConfiguration:v11 withCompletion:?];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.core);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v15, "Unable to interpret proxy for fetch", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v17 = swift_allocError();
    a2(0, v17);
  }
}

uint64_t closure #1 in closure #1 in QueryClient.fetchConfiguration(uuid:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v25);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + OBJC_IVAR____TtC11WorkoutCore11QueryClient_clientQueue);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a2;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in QueryClient.fetchConfiguration(uuid:completion:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_498;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  v22 = a2;
  static DispatchQoS.unspecified.getter();
  v27 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v17, v13, v20);
  _Block_release(v20);
  (*(v26 + 8))(v13, v10);
  (*(v14 + 8))(v17, v25);
}

void closure #1 in closure #1 in closure #1 in QueryClient.fetchConfiguration(uuid:completion:)(void *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for WorkoutConfiguration();
    v13 = one-time initialization token for shared;
    v14 = a1;
    if (v13 != -1)
    {
      swift_once();
    }

    static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(v14, 1, static WorkoutConfigurationValidator.shared, v32);
    if (v32[3])
    {
      if (swift_dynamicCast())
      {

        a1 = v31;
        goto LABEL_14;
      }
    }

    else
    {
      _sypSgWOhTm_2(v32, &_sypSgMd, &_sypSgMR);
    }

    v29 = a4;
    v30 = a3;
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.core);
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = a2;
      v20 = v19;
      v21 = swift_slowAlloc();
      v32[0] = v21;
      *v20 = 136315138;
      v22 = [v16 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v9 + 8))(v12, v8);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v32);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_20AEA4000, v17, v18, "Unable to deserialize WorkoutConfiguration from persistence, uuid: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x20F2E9420](v21, -1, -1);
      v27 = v20;
      a2 = v28;
      MEMORY[0x20F2E9420](v27, -1, -1);
    }

    else
    {
    }

    a1 = 0;
    a4 = v29;
  }

LABEL_14:
  a2(a1, a4);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed WOPersistence?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void *QueryClient.fetchConfigurationSynchronously(uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  v13[2] = v7;
  v13[3] = a1;

  QueryClient.remoteSynchronousProxy(handler:errorHandler:)(a3, v13, a4, v7);

  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  v10 = v8;
  v11 = v9;

  return v8;
}

void closure #1 in QueryClient.fetchConfigurationSynchronously(uuid:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v10 = aBlock[6];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    aBlock[4] = a4;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed WOPersistence?, @guaranteed Error?) -> ();
    aBlock[3] = a5;
    v12 = _Block_copy(aBlock);

    [v10 *a6];
    _Block_release(v12);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.core);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v15, "Unable to interpret proxy for fetch", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v17 = swift_allocError();
    swift_beginAccess();
    v18 = *(a2 + 24);
    *(a2 + 24) = v17;
  }
}

void closure #1 in closure #1 in QueryClient.fetchConfigurationSynchronously(uuid:)(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  type metadata accessor for WorkoutConfiguration();
  v11 = one-time initialization token for shared;
  v12 = a1;
  if (v11 != -1)
  {
    swift_once();
  }

  static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(v12, 1, static WorkoutConfigurationValidator.shared, v33);
  if (!v33[3])
  {
    _sypSgWOhTm_2(v33, &_sypSgMd, &_sypSgMR);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.core);
    v15 = v12;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33[0] = v31;
      *v18 = 136315138;
      v19 = [v15 uuid];
      v30 = v17;
      v20 = v19;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v7 + 8))(v10, v6);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v33);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_20AEA4000, v16, v30, "Unable to deserialize WorkoutConfiguration from persistence, uuid: %s", v18, 0xCu);
      v25 = v31;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x20F2E9420](v25, -1, -1);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

    else
    {
    }

    goto LABEL_13;
  }

  v13 = v32;
LABEL_14:
  swift_beginAccess();
  v27 = *(a3 + 16);
  v26 = *(a3 + 24);
  *(a3 + 16) = v13;
  *(a3 + 24) = a2;
  v28 = a2;
}

void closure #1 in QueryClient.fetchConfigurations(completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v14 = aBlock[6];
    v15 = swift_allocObject();
    v15[2] = a4;
    v15[3] = a2;
    v15[4] = a3;
    aBlock[4] = a6;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
    aBlock[3] = a7;
    v16 = _Block_copy(aBlock);
    v17 = a4;

    [v14 *a8];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.core);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20AEA4000, v19, v20, "Unable to interpret proxy for fetch", v21, 2u);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v22 = swift_allocError();
    a2(MEMORY[0x277D84F90], v22);
  }
}

uint64_t closure #1 in closure #1 in QueryClient.fetchConfigurations(completion:)(uint64_t a1, unint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a5;
  v31 = a8;
  v32 = a9;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v18 = *(v34 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v34);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = specialized QueryClient.decodePersistences(data:)(a1, a2);
  v33 = *&a4[OBJC_IVAR____TtC11WorkoutCore11QueryClient_clientQueue];
  v23 = swift_allocObject();
  v24 = v31;
  v23[2] = v30;
  v23[3] = a6;
  v23[4] = a4;
  v23[5] = v22;
  v23[6] = a3;
  aBlock[4] = v24;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v32;
  v25 = _Block_copy(aBlock);

  v26 = a4;
  v27 = a3;
  static DispatchQoS.unspecified.getter();
  v36 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v21, v17, v25);
  _Block_release(v25);
  (*(v35 + 8))(v17, v14);
  (*(v18 + 8))(v21, v34);
}

uint64_t QueryClient.fetchConfigurationsSynchronously()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = 0;
  v6[2] = v1;
  v7 = v0;

  QueryClient.remoteSynchronousProxy(handler:errorHandler:)(partial apply for closure #1 in QueryClient.fetchConfigurationsSynchronously(), v6, partial apply for closure #2 in QueryClient.fetchConfigurationsSynchronously(), v1);

  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  v4 = v3;

  return v2;
}

void closure #2 in QueryClient.fetchConfigurationSynchronously(uuid:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 24);
  *(a2 + 24) = a1;
  v5 = a1;
}

uint64_t QueryClient.fetchConfigurations(activityType:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v8 = swift_allocObject();
  v8[2] = partial apply for closure #1 in QueryClient.fetchConfigurations(activityType:completion:);
  v8[3] = v7;
  v8[4] = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in QueryClient.fetchConfigurations(activityType:completion:);
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = a1;

  v11 = v3;
  QueryClient.remoteProxy(handler:errorHandler:)(closure #1 in QueryClient.fetchConfigurations(completion:)partial apply, v8, closure #2 in QueryClient.fetchConfigurations(completion:)partial apply, v9);
}

uint64_t closure #1 in QueryClient.fetchConfigurations(activityType:completion:)(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v20 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v18 = a2;
      v19 = a4;
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x20F2E7A20](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v7 = *(a1 + 8 * i + 32);
        }

        v8 = v7;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
        v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        v11 = *&v8[v10];
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v13 = *(v20 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        if (v9 == v5)
        {
          v19(v20, v18);
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v14 = a4;
      v15 = a2;
      v16 = __CocoaSet.count.getter();
      a2 = v15;
      a4 = v14;
      v5 = v16;
    }

    while (v16);
  }

  a4(MEMORY[0x277D84F90], a2);
}

uint64_t QueryClient.save(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v7[5] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  swift_retain_n();
  v9 = a1;
  v10 = v3;
  QueryClient.remoteProxy(handler:errorHandler:)(partial apply for closure #1 in QueryClient.save(_:completion:), v7, partial apply for closure #2 in QueryClient.save(_:completion:), v8);
}

void closure #1 in QueryClient.save(_:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, void *a4, void *a5)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v9 = aBlock[6];
    v10 = [a4 serialize];
    v11 = swift_allocObject();
    v11[2] = a5;
    v11[3] = a2;
    v11[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.save(_:completion:);
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_417;
    v12 = _Block_copy(aBlock);
    v13 = a5;

    [v9 remote:v10 saveConfiguration:v12 withCompletion:?];
    _Block_release(v12);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.core);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20AEA4000, v15, v16, "Unable to interpret proxy for save", v17, 2u);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v18 = swift_allocError();
    a2(0, v18);
  }
}

uint64_t QueryClient.fetchConfiguration(uuid:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a6;
  v20 = a7;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  (*(v12 + 16))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v12 + 32))(v15 + v14, &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v15 + ((v13 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  swift_retain_n();
  v17 = v7;
  QueryClient.remoteProxy(handler:errorHandler:)(v19, v15, v20, v16);
}

void closure #1 in QueryClient.deleteConfiguration(uuid:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, void *a5)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v8 = aBlock[6];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v10 = swift_allocObject();
    v10[2] = a5;
    v10[3] = a2;
    v10[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.deleteConfiguration(uuid:completion:);
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_405;
    v11 = _Block_copy(aBlock);
    v12 = a5;

    [v8 remote:isa deleteConfiguration:v11 withCompletion:?];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.core);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v15, "Unable to interpret proxy for delete configuration", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v17 = swift_allocError();
    a2(0, v17);
  }
}

void closure #1 in QueryClient.fetchManagedConfigurations(sourceIdentifier:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v11 = aBlock[6];
    v12 = MEMORY[0x20F2E6C00](a4, a5);
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a2;
    v13[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.fetchManagedConfigurations(sourceIdentifier:completion:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [WOPersistence]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_393;
    v14 = _Block_copy(aBlock);
    v15 = a6;

    [v11 remote:v12 fetchManagedConfigurations:v14 withCompletion:?];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.core);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v18, "Unable to interpret proxy for fetching managed configurations", v19, 2u);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v20 = swift_allocError();
    a2(MEMORY[0x277D84F90], v20);
  }
}

uint64_t closure #1 in closure #1 in QueryClient.fetchManagedConfigurations(sourceIdentifier:completion:)(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v15 = *(v25 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v25);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&a3[OBJC_IVAR____TtC11WorkoutCore11QueryClient_clientQueue];
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a3;
  v19[5] = a1;
  v19[6] = a2;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in QueryClient.fetchManagedConfigurations(sourceIdentifier:completion:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_399;
  v20 = _Block_copy(aBlock);

  v21 = a3;

  v22 = a2;
  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v25);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [WOPersistence]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for WOPersistence, 0x277D7E7E8);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t closure #1 in QueryClient.fetchManagedConfigurationsByProvider(completion:)(uint64_t a1, void (*a2)(unint64_t, void *), uint64_t a3, void *a4)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v7 = aBlock[6];
    v8 = swift_allocObject();
    v8[2] = a4;
    v8[3] = a2;
    v8[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.fetchManagedConfigurationsByProvider(completion:);
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [WOPersistence : [WOPersistence]]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_381;
    v9 = _Block_copy(aBlock);
    v10 = a4;

    [v7 remote:v9 fetchManagedConfigurationsByProviderWithCompletion:?];
    _Block_release(v9);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.core);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20AEA4000, v13, v14, "Unable to interpret proxy for fetching managed configurations", v15, 2u);
      MEMORY[0x20F2E9420](v15, -1, -1);
    }

    v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore23QueriedExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v17 = swift_allocError();
    a2(v16, v17);
  }
}

uint64_t closure #1 in closure #1 in QueryClient.fetchManagedConfigurationsByProvider(completion:)(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v15 = *(v25 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v25);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&a3[OBJC_IVAR____TtC11WorkoutCore11QueryClient_clientQueue];
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in QueryClient.fetchManagedConfigurationsByProvider(completion:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_387;
  v20 = _Block_copy(aBlock);

  v21 = a2;
  v22 = a3;
  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v25);
}

uint64_t closure #1 in closure #1 in closure #1 in QueryClient.fetchManagedConfigurationsByProvider(completion:)(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1 + 64;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    v42 = MEMORY[0x277D84F98];
    while (v10)
    {
      v13 = v12;
LABEL_10:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = (v13 << 9) | (8 * v14);
      v16 = *(*(a1 + 48) + v15);
      v17 = *(*(a1 + 56) + v15);
      type metadata accessor for QueriedExternalProvider();
      swift_allocObject();
      v18 = v16;

      QueriedExternalProvider.init(persistence:)(v16);
      if (v19)
      {
        v20 = v19;
        v38 = QueryClient.handleRetrievedPersistences(_:)(v17);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v42;
        v39 = v20;
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
        v24 = v42[2];
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          goto LABEL_28;
        }

        if (v42[3] >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v35 = v22;
            specialized _NativeDictionary.copy()();
            v22 = v35;
          }
        }

        else
        {
          v43 = v22;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
          v27 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
          v29 = v28 & 1;
          v22 = v43;
          if ((v43 & 1) != v29)
          {
            goto LABEL_30;
          }

          v23 = v27;
        }

        v42 = v44;
        if (v22)
        {
          v30 = v44[7];
          v31 = *(v30 + 8 * v23);
          *(v30 + 8 * v23) = v38;

          v12 = v13;
        }

        else
        {
          v44[(v23 >> 6) + 8] |= 1 << v23;
          *(v44[6] + 8 * v23) = v39;
          *(v44[7] + 8 * v23) = v38;

          v32 = v44[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_29;
          }

          v44[2] = v34;
          v12 = v13;
        }
      }

      else
      {

        v12 = v13;
      }
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        a2(v42, a4);
        goto LABEL_24;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore23QueriedExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    a2(v36, a4);
LABEL_24:
  }

  return result;
}

void closure #1 in QueryClient.addManagedConfigurations(managedConfigurations:completion:)(uint64_t a1, void (*a2)(void, void), uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v15 = aBlock[6];
    if (a4 >> 62)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = a7;
    if (!v16)
    {
LABEL_17:
      type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for WOPersistence, 0x277D7E7E8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v28 = swift_allocObject();
      v28[2] = a5;
      v28[3] = a2;
      v28[4] = a3;
      aBlock[4] = v34;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = a8;
      v29 = _Block_copy(aBlock);
      v30 = a5;

      [v15 *a9];
      _Block_release(v29);
      swift_unknownObjectRelease();

      return;
    }

    aBlock[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v31 = v15;
      v32 = a8;
      v33 = a2;
      v17 = 0;
      do
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x20F2E7A20](v17, a4);
        }

        else
        {
          v18 = *(a4 + 8 * v17 + 32);
        }

        v19 = v18;
        ++v17;
        v20 = [v18 serialize];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v21 = *(aBlock[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v16 != v17);
      a8 = v32;
      a2 = v33;
      v15 = v31;
      goto LABEL_17;
    }

    __break(1u);
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.core);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20AEA4000, v23, v24, "Unable to interpret proxy for setting managed configurations", v25, 2u);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v26 = swift_allocError();
    a2(0, v26);
  }
}

uint64_t QueryClient.addManagedConfigurations(managedConfigurations:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  v13[5] = v7;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  swift_retain_n();

  v15 = v7;
  QueryClient.remoteProxy(handler:errorHandler:)(a6, v13, a7, v14);
}

void closure #1 in QueryClient.deleteManagedConfigurations(sourceIdentifier:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v11 = aBlock[6];
    v12 = MEMORY[0x20F2E6C00](a4, a5);
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a2;
    v13[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.deleteManagedConfigurations(sourceIdentifier:completion:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_333;
    v14 = _Block_copy(aBlock);
    v15 = a6;

    [v11 remote:v12 deleteManagedConfigurations:v14 withCompletion:?];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.core);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v18, "Unable to interpret proxy for deleting managed configurations", v19, 2u);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v20 = swift_allocError();
    a2(0, v20);
  }
}

void closure #1 in QueryClient.deleteExternalProvider(sourceIdentifier:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v11 = aBlock[6];
    v12 = MEMORY[0x20F2E6C00](a4, a5);
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a2;
    v13[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.deleteExternalProvider(sourceIdentifier:completion:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_321;
    v14 = _Block_copy(aBlock);
    v15 = a6;

    [v11 remote:v12 deleteExternalProvider:v14 withCompletion:?];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.core);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v18, "Unable to interpret proxy for deleting providers", v19, 2u);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v20 = swift_allocError();
    a2(0, v20);
  }
}

uint64_t closure #1 in closure #1 in QueryClient.save(_:completion:)(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v26 = a4;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v17 = *(v30 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v30);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a3 + OBJC_IVAR____TtC11WorkoutCore11QueryClient_clientQueue);
  v21 = swift_allocObject();
  v22 = v27;
  *(v21 + 16) = v26;
  *(v21 + 24) = a5;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  aBlock[4] = v22;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v28;
  v23 = _Block_copy(aBlock);

  v24 = a2;
  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v20, v16, v23);
  _Block_release(v23);
  (*(v13 + 8))(v16, v12);
  (*(v17 + 8))(v20, v30);
}

uint64_t QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3 & 1;
  *(v11 + 56) = v5;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  swift_retain_n();

  v13 = v5;
  QueryClient.remoteProxy(handler:errorHandler:)(partial apply for closure #1 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:), v11, partial apply for closure #2 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:), v12);
}

void closure #1 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v13 = aBlock[6];
    v14 = a6 & 1;
    v15 = QueriedExternalProvider.serialize(with:)(a5, a6 & 1);
    v16 = swift_allocObject();
    *(v16 + 16) = a7;
    *(v16 + 24) = a5;
    *(v16 + 32) = v14;
    *(v16 + 40) = a4;
    *(v16 + 48) = a2;
    *(v16 + 56) = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_301;
    v17 = _Block_copy(aBlock);
    v18 = a7;

    [v13 remote:v15 saveConfiguration:v17 withCompletion:?];
    _Block_release(v17);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.core);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20AEA4000, v20, v21, "Unable to interpret proxy for fetching external provider", v22, 2u);
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v23 = swift_allocError();
    a2(0, v23);
  }
}

uint64_t closure #1 in closure #1 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)(char a1, void *a2, char *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[0] = a7;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v15 - 8);
  v16 = *(v31 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v29 = *(v19 - 8);
  v30 = v19;
  v20 = *(v29 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = *&a3[OBJC_IVAR____TtC11WorkoutCore11QueryClient_clientQueue];
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5 & 1;
  *(v23 + 32) = a3;
  *(v23 + 40) = a6;
  *(v23 + 48) = v28[0];
  *(v23 + 56) = a8;
  *(v23 + 64) = a1;
  *(v23 + 72) = a2;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_307;
  v24 = _Block_copy(aBlock);
  v25 = a3;

  v26 = a2;
  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v22, v18, v24);
  _Block_release(v24);
  (*(v31 + 8))(v18, v15);
  (*(v29 + 8))(v22, v30);
}

uint64_t closure #1 in closure #1 in closure #1 in QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t), uint64_t a6, char a7, uint64_t a8)
{
  if ((a2 & 1) != 0 || a1 != 1)
  {
    return a5(a7 & 1, a8);
  }

  swift_beginAccess();
  v12 = *(a4 + 16);
  swift_beginAccess();
  v14 = *(v12 + 32);
  v13 = *(v12 + 40);
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = v14;
  v15[5] = v13;
  v15[6] = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  swift_retain_n();

  v17 = a3;
  QueryClient.remoteProxy(handler:errorHandler:)(closure #1 in QueryClient.deleteManagedConfigurations(sourceIdentifier:completion:)partial apply, v15, closure #2 in QueryClient.deleteManagedConfigurations(sourceIdentifier:completion:)partial apply, v16);
}

uint64_t QueryClient.fetchManagedConfigurations(sourceIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v8;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  swift_retain_n();

  v17 = v8;
  QueryClient.remoteProxy(handler:errorHandler:)(a7, v15, a8, v16);
}

void closure #1 in QueryClient.fetchExternalProvider(sourceIdentifier:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v11 = aBlock[6];
    v12 = MEMORY[0x20F2E6C00](a4, a5);
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a2;
    v13[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.fetchExternalProvider(sourceIdentifier:completion:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed WOPersistence?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_289;
    v14 = _Block_copy(aBlock);
    v15 = a6;

    [v11 remote:v12 fetchExternalProviderForIdentifier:v14 withCompletion:?];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.core);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v18, "Unable to interpret proxy for fetching external provider", v19, 2u);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v20 = swift_allocError();
    a2(0, v20);
  }
}

uint64_t closure #1 in closure #1 in QueryClient.fetchExternalProvider(sourceIdentifier:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v25);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + OBJC_IVAR____TtC11WorkoutCore11QueryClient_clientQueue);
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in QueryClient.fetchExternalProvider(sourceIdentifier:completion:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_295;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  v22 = a1;

  static DispatchQoS.unspecified.getter();
  v27 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v17, v13, v20);
  _Block_release(v20);
  (*(v26 + 8))(v13, v10);
  (*(v14 + 8))(v17, v25);
}

void closure #1 in closure #1 in closure #1 in QueryClient.fetchExternalProvider(sourceIdentifier:completion:)(void *a1, void (*a2)(void), uint64_t a3, void *a4)
{
  if (a1)
  {
    v6 = a1;
    (a2)(0, a1);
  }

  else
  {
    type metadata accessor for QueriedExternalProvider();
    swift_allocObject();
    v8 = a4;
    QueriedExternalProvider.init(persistence:)(a4);
    a2();
  }
}

uint64_t QueryClient.fetchConfigurations(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v6;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_retain_n();
  v13 = v6;
  QueryClient.remoteProxy(handler:errorHandler:)(a5, v11, a6, v12);
}

void closure #1 in QueryClient.fetchExternalProviders(completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3, void *a4)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v7 = aBlock[6];
    v8 = swift_allocObject();
    v8[2] = a4;
    v8[3] = a2;
    v8[4] = a3;
    aBlock[4] = partial apply for closure #1 in closure #1 in QueryClient.fetchExternalProviders(completion:);
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [WOPersistence]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_277;
    v9 = _Block_copy(aBlock);
    v10 = a4;

    [v7 remote:v9 fetchAllExternalProvidersWithCompletion:?];
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.core);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20AEA4000, v12, v13, "Unable to interpret proxy for fetching external providers", v14, 2u);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v15 = swift_allocError();
    a2(MEMORY[0x277D84F90], v15);
  }
}

uint64_t closure #1 in closure #1 in QueryClient.fetchExternalProviders(completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v24);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + OBJC_IVAR____TtC11WorkoutCore11QueryClient_clientQueue);
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in QueryClient.fetchExternalProviders(completion:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_283;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v17, v13, v20);
  _Block_release(v20);
  (*(v25 + 8))(v13, v10);
  (*(v14 + 8))(v17, v24);
}

void closure #1 in closure #1 in closure #1 in QueryClient.fetchExternalProviders(completion:)(void *a1, void (*a2)(uint64_t, void *), uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    a2(MEMORY[0x277D84F90], a1);
  }

  else if (a4)
  {
    v16 = MEMORY[0x277D84F90];
    if (a4 >> 62)
    {
LABEL_25:
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (v8 != v9)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x20F2E7A20](v9, a4);
      }

      else
      {
        if (v9 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v11 = *(a4 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      type metadata accessor for QueriedExternalProvider();
      swift_allocObject();
      QueriedExternalProvider.init(persistence:)(v12);
      ++v9;
      if (v14)
      {
        MEMORY[0x20F2E6F30]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v10 = v16;
        v9 = v13;
      }
    }

    a2(v10, 0);
  }

  else
  {
    a2(MEMORY[0x277D84F90], 0);
  }
}

void closure #1 in QueryClient.savePersistences(_:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  outlined init with copy of Any(a1, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24WOWorkoutServerInterface_pMd, &_sSo24WOWorkoutServerInterface_pMR);
  if (swift_dynamicCast())
  {
    v5 = aBlock[6];
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for WOPersistence, 0x277D7E7E8);
    isa = Array._bridgeToObjectiveC()().super.isa;
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_52;
    v7 = _Block_copy(aBlock);

    [v5 remote:isa saveConfigurations:v7 withCompletion:?];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.core);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Unable to interpret proxy for saving persistences", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    lazy protocol witness table accessor for type QueryClient.QueryClientError and conformance QueryClient.QueryClientError();
    v12 = swift_allocError();
    a2(0, v12);
  }
}