uint64_t DataLinkHost.deinit()
{
  v1 = v0;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.dataLink);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "DataLinkHost going away", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = *(v1 + 48);
  DataLinkHealthKitHostConnection.unregisterCommandHandler()();

  _s11WorkoutCore28DataLinkMirroredHostDelegate_pSgXwWOh_0(v1 + 16);
  _s11WorkoutCore28DataLinkMirroredHostDelegate_pSgXwWOh_0(v1 + 32);

  v7 = *(v1 + 72);

  v8 = *(v1 + 112);

  v9 = *(v1 + 120);

  v10 = *(v1 + 136);

  v11 = *(v1 + 144);

  return v1;
}

uint64_t DataLinkHost.__deallocating_deinit()
{
  DataLinkHost.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in DataLinkHost.activateLink()(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in DataLinkHost.activateLink();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_177;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t closure #1 in closure #1 in DataLinkHost.activateLink()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataLinkHost._mainThreadLinkActivationHandler(_:)(a2);
  }

  return result;
}

void closure #2 in DataLinkHost.activateLink()()
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.dataLink);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_20AEA4000, oslog, v1, "activateLink activated", v2, 2u);
    MEMORY[0x20F2E9420](v2, -1, -1);
  }
}

void DataLinkHost._mainThreadLinkActivationHandler(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (a1)
    {
      v10 = a1;
      DataLinkHost._mainThreadHandleLinkActivationError(_:)(a1);
    }

    else
    {
      *(v2 + 90) = 2;
      DataLinkHost.logStatus(_:)(0xD000000000000014, 0x800000020B458D00);
      v11 = *(*(v2 + 56) + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher);
      swift_getKeyPath();
      swift_getKeyPath();
      v14[15] = 1;

      static Published.subscript.setter();
      v12 = *(v2 + 48);
      v13 = swift_allocObject();
      swift_weakInit();

      DataLinkHealthKitHostConnection.setupCommandHandler(closure:)(partial apply for closure #1 in DataLinkHost._mainThreadLinkActivationHandler(_:), v13);

      DataLinkHost.updateRemote(workoutNotification:)(0);
    }
  }

  else
  {
    __break(1u);
  }
}

BOOL closure #1 in DataLinkHost._mainThreadLinkActivationHandler(_:)(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = v1;
    v2 = DataLinkHost.handleDataLinkCommand(_:)(&v7);
  }

  else
  {
    type metadata accessor for DataLinkError();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError);
    swift_allocError();
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
    (*(*(v5 - 8) + 56))(v4, 3, 5, v5);
    return 0;
  }

  return v2;
}

uint64_t DataLinkHost._mainThreadHandleLinkActivationError(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (one-time initialization token for dataLink == -1)
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
  __swift_project_value_buffer(v10, static WOLog.dataLink);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_20AEA4000, v12, v13, "Failed to activate connection: %{public}@", v14, 0xCu);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v15, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }

  *(v2 + 90) = 0;
  DataLinkHost.logStatus(_:)(0xD000000000000012, 0x800000020B458CC0);
  v18 = *(v2 + 96);
  if (v18 >= 5)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20AEA4000, v22, v23, "Giving up on activation after 5 tries.", v24, 2u);
      MEMORY[0x20F2E9420](v24, -1, -1);
    }

    v25 = *(v2 + 56);
    v26 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher;
    v27 = *(v25 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v32[15] == 1)
    {
      v29 = *(v25 + v26);
      swift_getKeyPath();
      swift_getKeyPath();
      v32[14] = 0;

      return static Published.subscript.setter();
    }
  }

  else
  {
    *(v2 + 96) = v18 + 1;

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134349056;
      *(v21 + 4) = *(v2 + 96);

      _os_log_impl(&dword_20AEA4000, v19, v20, "Retrying with reconnectionCount %{public}lu", v21, 0xCu);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    else
    {
    }

    *(v2 + 90) = 1;
    DataLinkHost.logStatus(_:)(0xD000000000000012, 0x800000020B458CE0);
    v30 = *(v2 + 48);
    v31 = swift_allocObject();
    swift_weakInit();

    DataLinkHealthKitHostConnection.activateLink(started:activated:)(partial apply for closure #1 in DataLinkHost.activateLink(), v31, closure #2 in DataLinkHost.activateLink());
  }

  return result;
}

void DataLinkHost.deactivateLink()()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;

  static Published.subscript.setter();
  *(v0 + 90) = 0;
  swift_beginAccess();
  v2 = *(v0 + 136);
  *(v0 + 136) = MEMORY[0x277D84FA0];

  DataLinkHost.logStatus(_:)(0x6576697463616564, 0xEC0000006B6E694CLL);
  v3 = *(*(v0 + 48) + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_session);
  aBlock[4] = closure #1 in DataLinkHealthKitHostConnection.deactivateLink();
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_169;
  v4 = _Block_copy(aBlock);
  [v3 stopMirroringToCompanionDeviceWithCompletion_];
  _Block_release(v4);
}

BOOL DataLinkHost.handleDataLinkCommand(_:)(char *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = *(v1 + 24);
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v16 = static OS_dispatch_queue.main.getter();
    v28 = v8;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = Strong;
    *(v18 + 32) = v15;
    aBlock[4] = partial apply for closure #1 in DataLinkHost.handleDataLinkCommand(_:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_160;
    v19 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v12, v7, v19);
    _Block_release(v19);
    swift_unknownObjectRelease();

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v28);
  }

  else
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.dataLink);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20AEA4000, v21, v22, "No command delegate set up", v23, 2u);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    type metadata accessor for DataLinkError();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError);
    swift_allocError();
    v25 = v24;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
    (*(*(v26 - 8) + 56))(v25, 1, 5, v26);
  }

  return Strong != 0;
}

void closure #1 in DataLinkHost.handleDataLinkCommand(_:)(unsigned __int8 a1, uint64_t a2, void (**a3)(void, void))
{
  ObjectType = swift_getObjectType();
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        a3[3](ObjectType, a3);
      }

      else
      {
        a3[4](ObjectType, a3);
      }
    }

    else if (a1)
    {
      a3[1](ObjectType, a3);
    }

    else
    {
      a3[2](ObjectType, a3);
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      a3[5](ObjectType, a3);
    }

    else
    {
      a3[6](ObjectType, a3);
    }
  }

  else if (a1 == 6)
  {
    a3[7](ObjectType, a3);
  }

  else if (a1 == 7)
  {
    a3[8](ObjectType, a3);
  }

  else
  {
    a3[9](ObjectType, a3);
  }
}

void DataLinkHost.sendUpdatedData(workoutNotification:closure:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    swift_beginAccess();
    v14 = v4[18];
    v4[18] = MEMORY[0x277D84FA0];
    v15 = v4[6];
    DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)(v4[7], v14, a2, a3);

    if (a1)
    {
      v18 = a1;
      DataLinkHealthKitHostConnection.sendNotification(_:)();
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.dataLink);
    v17 = a3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      v22 = a3;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_20AEA4000, v18, v19, "Unable to encode and send: %{public}@", v20, 0xCu);
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v21, -1, -1);
      MEMORY[0x20F2E9420](v20, -1, -1);

LABEL_5:
      return;
    }
  }
}

uint64_t DataLinkHost.sendNotification(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in DataLinkHost.sendNotification(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_16;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t closure #1 in DataLinkHost.sendNotification(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataLinkHost.updateRemote(workoutNotification:)(a2);
  }

  return result;
}

uint64_t DataLinkHost.setupKeyedListeners(_:)(void *a1)
{
  v2 = v1;
  result = specialized MetricsPublisher.observableSubs.getter();
  v5 = 0;
  v7 = result + 64;
  v6 = *(result + 64);
  v32 = result;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  if ((v9 & v6) != 0)
  {
    do
    {
LABEL_10:
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v14 = v13 | (v5 << 6);
        v15 = (*(v32 + 48) + 16 * v14);
        v16 = v15[1];
        v33 = *v15;
        v17 = *(*(v32 + 56) + 8 * v14);
        type metadata accessor for MetricsPublisher();

        v18 = a1;
        swift_getAtAnyKeyPath();

        if (v36[3])
        {
          break;
        }

        result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v36, &_sypSgMd, &_sypSgMR);
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine16ObservableObject_pMd, &_s7Combine16ObservableObject_pMR);
      if (swift_dynamicCast())
      {
        ObjectType = swift_getObjectType();
        v31 = DataLinkHost.createSink<A>(_:key:)(v34, v33, v16, ObjectType, v35);
        if (one-time initialization token for dataLink != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, static WOLog.dataLink);

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v30 = v2;
          v23 = swift_slowAlloc();
          v29 = a1;
          v24 = swift_slowAlloc();
          v36[0] = v24;
          *v23 = 136446210;
          *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v16, v36);
          _os_log_impl(&dword_20AEA4000, v21, v22, "Created sink with label %{public}s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          v25 = v24;
          a1 = v29;
          MEMORY[0x20F2E9420](v25, -1, -1);
          v26 = v23;
          v2 = v30;
          MEMORY[0x20F2E9420](v26, -1, -1);
        }

        swift_beginAccess();

        v27 = *(v2 + 120);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = *(v2 + 120);
        *(v2 + 120) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v33, v16, isUniquelyReferenced_nonNull_native);

        *(v2 + 120) = v34;
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    while (v10);
  }

LABEL_6:
  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
    }

    v10 = *(v7 + 8 * v12);
    ++v5;
    if (v10)
    {
      v5 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized DataLinkHost.createSink<A>(_:key:)(void *a1, uint64_t a2, uint64_t a3)
{
  v16[3] = type metadata accessor for MetricsPublisher();
  v16[0] = a1;
  outlined init with copy of Any(v16, v15);
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore22TimeSensitivePublisher_pMd, &_s11WorkoutCore22TimeSensitivePublisher_pMR);
  v7 = swift_dynamicCast();
  if ((v7 & 1) == 0)
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
  }

  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v13, &_s11WorkoutCore22TimeSensitivePublisher_pSgMd, &_s11WorkoutCore22TimeSensitivePublisher_pSgMR);
  __swift_destroy_boxed_opaque_existential_0(v16);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, type metadata accessor for MetricsPublisher);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = closure #1 in DataLinkHost.createSink<A>(_:key:)partial apply;
  *(v10 + 24) = v9;
  type metadata accessor for ObservableObjectPublisher();

  v11 = Publisher<>.sink(receiveValue:)();

  return v11;
}

uint64_t DataLinkHost.createSink<A>(_:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v21 - v12;
  v26[3] = a4;
  v26[0] = a1;
  outlined init with copy of Any(v26, v25);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore22TimeSensitivePublisher_pMd, &_s11WorkoutCore22TimeSensitivePublisher_pMR);
  v14 = swift_dynamicCast();
  if ((v14 & 1) == 0)
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
  }

  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v23, &_s11WorkoutCore22TimeSensitivePublisher_pSgMd, &_s11WorkoutCore22TimeSensitivePublisher_pSgMR);
  __swift_destroy_boxed_opaque_existential_0(v26);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = a3;
  *(v16 + 40) = v14;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = partial apply for closure #1 in DataLinkHost.createSink<A>(_:key:);
  v18[5] = v16;
  swift_getAssociatedConformanceWitness();

  v19 = Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v13, AssociatedTypeWitness);

  return v19;
}

uint64_t closure #1 in DataLinkHost.createSink<A>(_:key:)(uint64_t a1, uint64_t a2, Swift::Int a3, Swift::Int a4, int a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      DataLinkHost.markDirty(key:timeSensitive:)(a3, a4, a5 & 1);
    }
  }

  else
  {
    v28 = a3;
    v30 = v9;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v29 = a5;
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.dataLink);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20AEA4000, v20, v21, "Published variables should only ever be updated on the main thread.", v22, 2u);
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v23 = static OS_dispatch_queue.main.getter();
    v24 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v25 = swift_allocObject();
    v26 = v28;
    *(v25 + 16) = v24;
    *(v25 + 24) = v26;
    *(v25 + 32) = a4;
    *(v25 + 40) = v29 & 1;
    aBlock[4] = partial apply for closure #1 in closure #1 in DataLinkHost.createSink<A>(_:key:);
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_124;
    v27 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v17, v12, v27);
    _Block_release(v27);

    (*(v30 + 8))(v12, v8);
    return (*(v14 + 8))(v17, v13);
  }

  return result;
}

uint64_t closure #1 in closure #1 in DataLinkHost.createSink<A>(_:key:)(uint64_t a1, Swift::Int a2, Swift::Int a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataLinkHost.markDirty(key:timeSensitive:)(a2, a3, a4 & 1);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> ()(uint64_t a1, void (*a2)(uint64_t *))
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  a2(v7);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t DataLinkHost.markDirty(key:timeSensitive:)(Swift::Int a1, Swift::Int a2, char a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();

  specialized Set._Variant.insert(_:)(&v35, a1, a2);
  swift_endAccess();

  if ((a3 & 1) == 0)
  {
    return result;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static WOLog.dataLink);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_20AEA4000, v20, v21, "Queueing time sensitive update", v22, 2u);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in DataLinkHost.markDirty(key:timeSensitive:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_110;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v26 = v30;
  v27 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v26, v25);
  _Block_release(v25);

  (*(v32 + 8))(v26, v27);
  return (*(v29 + 8))(v11, v31);
}

uint64_t closure #1 in DataLinkHost.markDirty(key:timeSensitive:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataLinkHost.updateRemote(workoutNotification:)(0);
  }

  return result;
}

void DataLinkHost.updateRemote(workoutNotification:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(v2 + 90) != 2)
  {
    return;
  }

  if (a1)
  {
    goto LABEL_4;
  }

  swift_beginAccess();
  if (!*(*(v2 + 144) + 16))
  {
    return;
  }

  swift_beginAccess();
  if (!*(*(v2 + 136) + 16))
  {
LABEL_4:
    v10 = *(v2 + 104);
    v4 = v10 + 1;
    if (v10 != -1)
    {
      *(v2 + 104) = v4;
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(&v28, v4);
      swift_endAccess();
      if (one-time initialization token for dataLink == -1)
      {
LABEL_6:
        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static WOLog.dataLink);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134349056;
          *(v14 + 4) = v4;
          _os_log_impl(&dword_20AEA4000, v12, v13, "Sending data sequence %{public}lu", v14, 0xCu);
          MEMORY[0x20F2E9420](v14, -1, -1);
        }

        v15 = swift_allocObject();
        swift_weakInit();
        v16 = swift_allocObject();
        v16[2] = v4;
        v16[3] = v15;

        DataLinkHost.sendUpdatedData(workoutNotification:closure:)(a1, partial apply for closure #1 in DataLinkHost.updateRemote(workoutNotification:), v16);

        return;
      }

LABEL_20:
      swift_once();
      goto LABEL_6;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = *(v2 + 136);

  v18 = Set.description.getter();
  v20 = v19;

  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static WOLog.dataLink);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27[0] = v25;
    *v24 = 136446210;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v27);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_20AEA4000, v22, v23, "Delaying send to next timer as we're still waiting on %{public}s. Fitness may be in the background.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x20F2E9420](v25, -1, -1);
    MEMORY[0x20F2E9420](v24, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in DataLinkHost.updateRemote(workoutNotification:)(uint64_t a1)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.dataLink);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Finished sequence %lu", v5, 0xCu);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(a1);
    swift_endAccess();
  }

  return result;
}

void DataLinkHost.workoutSession(_:didChangeTo:from:date:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v7 workoutSession:a1 didChangeToState:a2 fromState:a3 date:isa];
}

void DataLinkHost.workoutSession(_:didFailWithError:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = _convertErrorToNSError(_:)();
  [v3 workoutSession:a1 didFailWithError:v4];
}

void DataLinkHost.workoutSession(_:didReceiveDataFromRemoteDevice:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20B423A90;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  outlined copy of Data._Representation(a2, a3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 workoutSession:a1 didReceiveDataFromRemoteWorkoutSession:isa];
}

Swift::Void __swiftcall DataLinkHost.workoutSession(_:didReceiveDataFromRemoteWorkoutSession:)(HKWorkoutSession _, Swift::OpaquePointer didReceiveDataFromRemoteWorkoutSession)
{
  v4 = *(v2 + 48);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v4 workoutSession:_.super.isa didReceiveDataFromRemoteWorkoutSession:isa];
}

void DataLinkHost.workoutSession(_:didDisconnectFromRemoteDeviceWithError:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 workoutSession:a1 didDisconnectFromRemoteDeviceWithError:?];
}

uint64_t DataLinkHost.sendMirroredHostCommand(_:acknowledged:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v6 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v33 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  v18 = type metadata accessor for UUID();
  v36 = *(v18 - 8);
  v37 = v18;
  v19 = *(v36 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = *a1;
  v34 = *(v3 + 48);
  v35 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v22 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v23 = *(*(v22 - 8) + 56);
  v23(v17, 1, 1, v22);
  v24 = *(v12 + 28);
  swift_retain_n();
  swift_retain_n();
  UnknownStorage.init()();
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v17, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  *v17 = v21;
  v17[8] = 1;
  swift_storeEnumTagMultiPayload();
  v23(v17, 0, 1, v22);
  v25 = swift_allocObject();
  v32 = v21;
  *(v25 + 16) = v21;
  v26 = v38;
  *(v25 + 24) = v3;
  *(v25 + 32) = v26;
  *(v25 + 40) = a3;
  v27 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v28 = *(*(v27 - 8) + 56);
  v28(v10, 1, 1, v27);
  v29 = *(v7 + 28);
  swift_retain_n();
  swift_retain_n();
  UnknownStorage.init()();
  v30 = v33;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v17, v33, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v10, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v30, v10, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  swift_storeEnumTagMultiPayload();
  v28(v10, 0, 1, v27);
  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v10, partial apply for closure #1 in DataLinkHost.sendMirroredHostCommand(_:acknowledged:), v25);
  outlined destroy of Apple_Workout_Core_DataLinkMessage(v10, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  (*(v36 + 8))(v35, v37);
  return outlined destroy of Apple_Workout_Core_DataLinkMessage(v17, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t closure #1 in DataLinkHost.sendMirroredHostCommand(_:acknowledged:)(char a1, void *a2, char a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.dataLink);
  v11 = a2;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v14 = 136315906;
    v29 = a5;
    if (a3)
    {
      if (a3 == 1)
      {
        v17 = 0xD000000000000020;
      }

      else
      {
        v17 = 0x75716552676E6970;
      }

      if (a3 == 1)
      {
        v18 = 0x800000020B458D20;
      }

      else
      {
        v18 = 0xEB00000000747365;
      }
    }

    else
    {
      v17 = 0xD000000000000019;
      v18 = 0x800000020B458D50;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v30);

    *(v14 + 4) = v19;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a1 & 1;
    *(v14 + 18) = 2112;
    if (a2)
    {
      v20 = a2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v14 + 20) = v21;
    *v15 = v22;
    *(v14 + 28) = 2080;
    swift_beginAccess();
    v23 = *(a4 + 72);
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v24 = Dictionary.Keys.description.getter();
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v30);

    *(v14 + 30) = v27;
    _os_log_impl(&dword_20AEA4000, v12, v13, "[mirrored] sendMirroredHostCommand acknowledged (%s) (success: %{BOOL}d, error: %@) all expected %s", v14, 0x26u);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);

    a5 = v29;
  }

  else
  {
  }

  return a5(a1 & 1, a2);
}

uint64_t DataLinkHost.sendMirroredHostAlertStackRequest(_:acknowledged:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v6 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v7 = *(v6 - 8);
  v41 = v6 - 8;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v43 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - v19;
  v46 = type metadata accessor for UUID();
  v45 = *(v46 - 8);
  v21 = *(v45 + 64);
  MEMORY[0x28223BE20](v46);
  v23 = a1[1];
  v50 = *a1;
  v51 = v23;
  v52 = a1[2];
  v53 = *(a1 + 6);
  v39 = v3;
  v42 = *(v3 + 48);
  v44 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v24 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v20, 1, 1, v24);
  v26 = *(v15 + 28);
  outlined init with copy of MirroredHostAlertStackRequest(&v50, v49);

  UnknownStorage.init()();
  v48 = &v50;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
  static Message.with(_:)();
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v20, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v13, v20, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
  swift_storeEnumTagMultiPayload();
  v27 = v24;
  v28 = a3;
  v29 = v40;
  v25(v20, 0, 1, v27);
  v30 = v39;
  v31 = swift_allocObject();
  v32 = v51;
  *(v31 + 16) = v50;
  *(v31 + 32) = v32;
  *(v31 + 48) = v52;
  *(v31 + 64) = v53;
  *(v31 + 72) = v30;
  *(v31 + 80) = v47;
  *(v31 + 88) = v28;
  v33 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v34 = *(*(v33 - 8) + 56);
  v34(v29, 1, 1, v33);
  v35 = *(v41 + 28);
  outlined init with copy of MirroredHostAlertStackRequest(&v50, v49);

  UnknownStorage.init()();
  v36 = v43;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v20, v43, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v29, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v36, v29, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  swift_storeEnumTagMultiPayload();
  v34(v29, 0, 1, v33);
  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v29, partial apply for closure #1 in DataLinkHost.sendMirroredHostAlertStackRequest(_:acknowledged:), v31);
  outlined destroy of Apple_Workout_Core_DataLinkMessage(v29, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  outlined destroy of MirroredHostAlertStackRequest(&v50);
  (*(v45 + 8))(v44, v46);
  return outlined destroy of Apple_Workout_Core_DataLinkMessage(v20, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t closure #1 in DataLinkHost.sendMirroredHostAlertStackRequest(_:acknowledged:)(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.dataLink);
  outlined init with copy of MirroredHostAlertStackRequest(a3, v35);
  v11 = a2;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  outlined destroy of MirroredHostAlertStackRequest(a3);

  if (os_log_type_enabled(v12, v13))
  {
    v31 = v13;
    v32 = a5;
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34 = v30;
    *v14 = 136315906;
    v15 = *(a3 + 16);
    v35[0] = *a3;
    v35[1] = v15;
    v35[2] = *(a3 + 32);
    v36 = *(a3 + 48);
    outlined init with copy of MirroredHostAlertStackRequest(a3, v33);
    v16 = MirroredHostAlertStackRequest.description.getter();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v34);

    *(v14 + 4) = v19;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a1 & 1;
    *(v14 + 18) = 2112;
    if (a2)
    {
      v20 = a2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v14 + 20) = v21;
    *v29 = v22;
    *(v14 + 28) = 2080;
    swift_beginAccess();
    v23 = *(a4 + 72);
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v24 = Dictionary.Keys.description.getter();
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v34);

    *(v14 + 30) = v27;
    _os_log_impl(&dword_20AEA4000, v12, v31, "[mirrored] sendMirroredHostAlertStackRequest acknowledged (%s) (success: %{BOOL}d, error: %@) all expected %s", v14, 0x26u);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v29, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v30, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);

    a5 = v32;
  }

  else
  {
  }

  return a5(a1 & 1, a2);
}

uint64_t DataLinkHost.sendMirroredHostStartConfiguration(_:acknowledged:)(unsigned __int8 *a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v57 = a3;
  v67 = a2;
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v6 = *(v5 - 8);
  v62 = (v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v53[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  v9 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v56 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v60 = &v53[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v53[-v16];
  v18 = type metadata accessor for UUID();
  v64 = *(v18 - 8);
  v65 = v18;
  v19 = *(v64 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = *a1;
  v22 = a1[1];
  v23 = *(a1 + 1);
  v66 = v3;
  v61 = *(v3 + 48);
  v63 = &v53[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UUID.init()();
  v24 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v17, 1, 1, v24);
  v26 = *(v12 + 28);
  v27 = v23;
  v55 = v27;

  v28 = v57;

  UnknownStorage.init()();
  v68 = v21;
  v69 = v22;
  v70 = v27;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartConfiguration and conformance Apple_Workout_Core_MirroredHostStartConfiguration, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  v29 = v56;
  static Message.with(_:)();
  started = 0;
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v17, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v29, v17, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  swift_storeEnumTagMultiPayload();
  v25(v17, 0, 1, v24);
  v30 = swift_allocObject();
  LODWORD(v56) = v21;
  *(v30 + 16) = v21;
  v31 = v59;
  v54 = v22;
  *(v30 + 17) = v22;
  v32 = v55;
  v34 = v66;
  v33 = v67;
  *(v30 + 24) = v55;
  *(v30 + 32) = v34;
  *(v30 + 40) = v33;
  *(v30 + 48) = v28;
  v35 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v36 = *(*(v35 - 8) + 56);
  v36(v31, 1, 1, v35);
  v37 = *(v62 + 7);
  v38 = v32;

  UnknownStorage.init()();
  v62 = v17;
  v39 = v60;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v17, v60, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v31, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v39, v31, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  swift_storeEnumTagMultiPayload();
  v36(v31, 0, 1, v35);
  v40 = v34;
  v41 = started;
  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v31, partial apply for closure #1 in DataLinkHost.sendMirroredHostStartConfiguration(_:acknowledged:), v30);
  if (v41)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static WOLog.dataLink);
    v43 = v41;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      v48 = v41;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v49;
      *v47 = v49;
      _os_log_impl(&dword_20AEA4000, v44, v45, "[mirrored] Error sending MirroredHostMessage: %@", v46, 0xCu);
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v40 = v66;
      MEMORY[0x20F2E9420](v47, -1, -1);
      MEMORY[0x20F2E9420](v46, -1, -1);
    }

    v50 = v41;
    if (v54)
    {
      v51 = 256;
    }

    else
    {
      v51 = 0;
    }

    closure #1 in DataLinkHost.sendMirroredHostStartConfiguration(_:acknowledged:)(0, v41, v51 | v56, v38, v40, v67);
  }

  outlined destroy of Apple_Workout_Core_DataLinkMessage(v31, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  (*(v64 + 8))(v63, v65);
  return outlined destroy of Apple_Workout_Core_DataLinkMessage(v62, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t closure #1 in DataLinkHost.sendMirroredHostStartConfiguration(_:acknowledged:)(char a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(void, void))
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.dataLink);
  v11 = a4;
  v12 = a2;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v32 = a6;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = v17;
    *v15 = 136315906;
    v18 = v11;
    started = MirroredHostStartConfiguration.description.getter();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(started, v21, &v34);

    *(v15 + 4) = v22;
    *(v15 + 12) = 1024;
    *(v15 + 14) = a1 & 1;
    *(v15 + 18) = 2112;
    if (a2)
    {
      v23 = a2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v25 = v24;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    *(v15 + 20) = v24;
    *v16 = v25;
    *(v15 + 28) = 2080;
    swift_beginAccess();
    v26 = *(a5 + 72);
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v27 = Dictionary.Keys.description.getter();
    v29 = v28;

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v34);

    *(v15 + 30) = v30;
    _os_log_impl(&dword_20AEA4000, v13, v14, "[mirrored] sendMirroredHostStartConfiguration acknowledged (%s) (success: %{BOOL}d, error: %@) all expected %s", v15, 0x26u);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);

    a6 = v32;
  }

  else
  {
  }

  return a6(a1 & 1, a2);
}

uint64_t DataLinkHost.sendMirroredHostMachTimestampRequest(_:acknowledged:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v6 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v7 = *(v6 - 8);
  v40 = v6 - 8;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v38 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - v20;
  v22 = type metadata accessor for UUID();
  v42 = *(v22 - 8);
  v43 = v22;
  v23 = *(v42 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = *a1;
  v37 = v3;
  v39 = *(v3 + 48);
  v41 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v26 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v27 = *(*(v26 - 8) + 56);
  v27(v21, 1, 1, v26);
  v28 = *(v16 + 28);

  UnknownStorage.init()();
  v45 = v25;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
  static Message.with(_:)();
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v21, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v14, v21, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
  swift_storeEnumTagMultiPayload();
  v27(v21, 0, 1, v26);
  v29 = v37;
  v30 = swift_allocObject();
  v30[2] = v25;
  v31 = v44;
  v30[3] = v29;
  v30[4] = v31;
  v30[5] = a3;
  v32 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v33 = *(*(v32 - 8) + 56);
  v33(v10, 1, 1, v32);
  v34 = *(v40 + 28);

  UnknownStorage.init()();
  v35 = v38;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v21, v38, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v10, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v35, v10, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  swift_storeEnumTagMultiPayload();
  v33(v10, 0, 1, v32);
  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v10, partial apply for closure #1 in DataLinkHost.sendMirroredHostMachTimestampRequest(_:acknowledged:), v30);
  outlined destroy of Apple_Workout_Core_DataLinkMessage(v10, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  (*(v42 + 8))(v41, v43);
  return outlined destroy of Apple_Workout_Core_DataLinkMessage(v21, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t closure #1 in DataLinkHost.sendMirroredHostMachTimestampRequest(_:acknowledged:)(char a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.dataLink);
  v9 = a2;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v27 = a4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v12 = 136315906;
    lazy protocol witness table accessor for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v28);

    *(v12 + 4) = v17;
    *(v12 + 12) = 1024;
    *(v12 + 14) = a1 & 1;
    *(v12 + 18) = 2112;
    if (a2)
    {
      v18 = a2;
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
    *(v12 + 28) = 2080;
    swift_beginAccess();
    v21 = *(a3 + 72);
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v22 = Dictionary.Keys.description.getter();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v28);

    *(v12 + 30) = v25;
    _os_log_impl(&dword_20AEA4000, v10, v11, "[mirrored] sendMirroredHostMachTimestampRequest acknowledged (%s) (success: %{BOOL}d, error: %@) all expected %s", v12, 0x26u);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);

    a4 = v27;
  }

  else
  {
  }

  return a4(a1 & 1, a2);
}

uint64_t DataLinkHost.sendMirroredHostCountdownStart(_:acknowledged:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v6 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v7 = *(v6 - 8);
  v45 = v6 - 8;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v43 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - v19;
  v21 = type metadata accessor for UUID();
  v47 = *(v21 - 8);
  v48 = v21;
  v22 = *(v47 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = *a1;
  v25 = a1[1];
  v41 = v3;
  v44 = *(v3 + 48);
  v46 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v26 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v27 = *(*(v26 - 8) + 56);
  v27(v20, 1, 1, v26);
  v28 = *(v15 + 28);

  UnknownStorage.init()();
  v50 = v24;
  v51 = v25;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
  static Message.with(_:)();
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v20, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v13, v20, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
  swift_storeEnumTagMultiPayload();
  v29 = v26;
  v30 = a3;
  v31 = v42;
  v27(v20, 0, 1, v29);
  v32 = v41;
  v33 = swift_allocObject();
  v33[2] = v24;
  v33[3] = v25;
  v34 = v49;
  v33[4] = v32;
  v33[5] = v34;
  v33[6] = v30;
  v35 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v36 = *(*(v35 - 8) + 56);
  v36(v31, 1, 1, v35);
  v37 = *(v45 + 28);

  UnknownStorage.init()();
  v38 = v43;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v20, v43, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v31, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v38, v31, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  swift_storeEnumTagMultiPayload();
  v36(v31, 0, 1, v35);
  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v31, partial apply for closure #1 in DataLinkHost.sendMirroredHostCountdownStart(_:acknowledged:), v33);
  outlined destroy of Apple_Workout_Core_DataLinkMessage(v31, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  (*(v47 + 8))(v46, v48);
  return outlined destroy of Apple_Workout_Core_DataLinkMessage(v20, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t closure #1 in DataLinkHost.sendMirroredHostCountdownStart(_:acknowledged:)(char a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.dataLink);
  v9 = a2;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v27 = a4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v12 = 136315906;
    lazy protocol witness table accessor for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v28);

    *(v12 + 4) = v17;
    *(v12 + 12) = 1024;
    *(v12 + 14) = a1 & 1;
    *(v12 + 18) = 2112;
    if (a2)
    {
      v18 = a2;
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
    *(v12 + 28) = 2080;
    swift_beginAccess();
    v21 = *(a3 + 72);
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v22 = Dictionary.Keys.description.getter();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v28);

    *(v12 + 30) = v25;
    _os_log_impl(&dword_20AEA4000, v10, v11, "[mirrored] sendMirroredHostCountdownStart acknowledged (%s) (success: %{BOOL}d, error: %@) all expected %s", v12, 0x26u);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);

    a4 = v27;
  }

  else
  {
  }

  return a4(a1 & 1, a2);
}

uint64_t DataLinkHost.sendMirroredHostSummaryUpdate(_:acknowledged:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v29 = a2;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v27 = *(v14 - 8);
  v28 = v14;
  v15 = *(v27 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v26 = *(v3 + 48);
  UUID.init()();
  v19 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v20 = *(*(v19 - 8) + 56);
  v20(v13, 1, 1, v19);
  v21 = *(v10 + 28);
  v22 = v25;

  UnknownStorage.init()();
  v30 = v18;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  static Message.with(_:)();
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v13, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v8, v13, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  swift_storeEnumTagMultiPayload();
  v20(v13, 0, 1, v19);
  specialized DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(v13, v26, v29, v22);

  (*(v27 + 8))(v17, v28);
  return outlined destroy of Apple_Workout_Core_DataLinkMessage(v13, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

void DataLinkHost.addHostExpectation(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DataLinkMirroredHostExpectation();
  v70 = *(v4 - 8);
  v5 = *(v70 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v65 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v65 - v11);
  MEMORY[0x28223BE20](v10);
  v14 = &v65 - v13;
  v15 = *a1;
  v16 = a1[1];
  swift_beginAccess();
  v17 = specialized Dictionary._Variant.removeValue(forKey:)(v15, v16);
  swift_endAccess();
  p_cache = &OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider.cache;
  if (v17)
  {
    [v17 invalidate];
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.dataLink);
    outlined init with copy of Apple_Workout_Core_MirroredHostMessage(a1, v14, type metadata accessor for DataLinkMirroredHostExpectation);
    outlined init with copy of Apple_Workout_Core_MirroredHostMessage(a1, v12, type metadata accessor for DataLinkMirroredHostExpectation);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v67 = v21;
      v23 = v22;
      v68 = swift_slowAlloc();
      v72 = v68;
      *v23 = 136315394;
      v66 = v20;
      v24 = DataLinkMirroredHostExpectation.description.getter();
      v26 = v25;
      v69 = v9;
      outlined destroy of Apple_Workout_Core_DataLinkMessage(v14, type metadata accessor for DataLinkMirroredHostExpectation);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v72);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      aBlock = *v12;
      lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v9 = v69;
      outlined destroy of Apple_Workout_Core_DataLinkMessage(v12, type metadata accessor for DataLinkMirroredHostExpectation);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v72);
      p_cache = (&OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider + 16);

      *(v23 + 14) = v31;
      v32 = v66;
      _os_log_impl(&dword_20AEA4000, v66, v67, "[mirrored] addHostExpectation (%s) is replacing existing expected (%s)", v23, 0x16u);
      v33 = v68;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v33, -1, -1);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    else
    {

      outlined destroy of Apple_Workout_Core_DataLinkMessage(v12, type metadata accessor for DataLinkMirroredHostExpectation);
      outlined destroy of Apple_Workout_Core_DataLinkMessage(v14, type metadata accessor for DataLinkMirroredHostExpectation);
    }
  }

  v34 = objc_opt_self();
  v35 = *(a1 + 2);
  v36 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(a1, v9, type metadata accessor for DataLinkMirroredHostExpectation);
  v37 = v9;
  v38 = (*(v70 + 80) + 24) & ~*(v70 + 80);
  v39 = p_cache;
  v40 = swift_allocObject();
  *(v40 + 16) = v36;
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v37, v40 + v38, type metadata accessor for DataLinkMirroredHostExpectation);
  v76 = partial apply for closure #1 in DataLinkHost.addHostExpectation(_:);
  v77 = v40;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v74 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v75 = &block_descriptor_38;
  v41 = _Block_copy(&aBlock);

  v42 = [v34 scheduledTimerWithTimeInterval:0 repeats:v41 block:v35];
  _Block_release(v41);
  LOBYTE(aBlock) = 0;
  DataLinkHost.extendHostWorkoutSessionStartedTimer(by:timeoutAction:)(v35, &aBlock);
  v43 = *a1;
  v44 = a1[1];
  swift_beginAccess();
  v45 = v42;
  v46 = *(v2 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *(v2 + 72);
  *(v2 + 72) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v43, v44, isUniquelyReferenced_nonNull_native);
  *(v2 + 72) = v72;
  swift_endAccess();
  if (v39[310] != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static WOLog.dataLink);
  v49 = v71;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(a1, v71, type metadata accessor for DataLinkMirroredHostExpectation);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&aBlock = v54;
    *v52 = 136315650;
    v55 = DataLinkMirroredHostExpectation.description.getter();
    v57 = v56;
    outlined destroy of Apple_Workout_Core_DataLinkMessage(v49, type metadata accessor for DataLinkMirroredHostExpectation);
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &aBlock);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    v59 = *(v2 + 72);
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v60 = Dictionary.Keys.description.getter();
    v62 = v61;

    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &aBlock);

    *(v52 + 14) = v63;
    *(v52 + 22) = 2112;
    v64 = [objc_opt_self() currentThread];
    *(v52 + 24) = v64;
    *v53 = v64;
    _os_log_impl(&dword_20AEA4000, v50, v51, "[mirrored] addHostExpectation (%s) added, all expected %s, thread: %@", v52, 0x20u);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v53, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v54, -1, -1);
    MEMORY[0x20F2E9420](v52, -1, -1);
  }

  else
  {

    outlined destroy of Apple_Workout_Core_DataLinkMessage(v49, type metadata accessor for DataLinkMirroredHostExpectation);
  }
}

uint64_t closure #1 in DataLinkHost.addHostExpectation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a3;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v76[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v85 = &v76[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DataLinkMirroredHostExpectation();
  v86 = *(v12 - 8);
  v13 = *(v86 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v87 = &v76[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v76[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v76[-v20];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v80 = v9;
    v84 = v7;
    v81 = v8;
    v88 = &v76[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v82 = v4;
    v83 = v3;
    swift_beginAccess();
    v24 = *(v23 + 72);
    v25 = 1 << *(v24 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v24 + 64);
    v28 = (v25 + 63) >> 6;
    v29 = *(v23 + 72);
    swift_bridgeObjectRetain_n();
    v30 = 0;
    v31 = &selRef_adjustedStatisticsForStatistics_;
    if (v27)
    {
      while (1)
      {
        v32 = v30;
LABEL_10:
        v33 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        [*(*(v24 + 56) + ((v32 << 9) | (8 * v33))) invalidate];
        if (!v27)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v32 >= v28)
      {
        break;
      }

      v27 = *(v24 + 64 + 8 * v32);
      ++v30;
      if (v27)
      {
        v30 = v32;
        goto LABEL_10;
      }
    }

    v34 = *(v23 + 72);
    *(v23 + 72) = MEMORY[0x277D84F98];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      v30 = *(v23 + 40);
      v27 = v89;
      if (one-time initialization token for dataLink == -1)
      {
LABEL_14:
        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static WOLog.dataLink);
        outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v27, v19, type metadata accessor for DataLinkMirroredHostExpectation);

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v79 = v31;
          v40 = v39;
          v78 = swift_slowAlloc();
          aBlock[0] = v78;
          *v40 = 136315394;
          v77 = v38;
          v41 = DataLinkMirroredHostExpectation.description.getter();
          v42 = v27;
          v43 = v30;
          v45 = v44;
          outlined destroy of Apple_Workout_Core_DataLinkMessage(v19, type metadata accessor for DataLinkMirroredHostExpectation);
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v45, aBlock);
          v30 = v43;
          v27 = v42;

          *(v40 + 4) = v46;
          *(v40 + 12) = 2080;
          _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
          lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();
          v47 = Dictionary.Keys.description.getter();
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, aBlock);

          *(v40 + 14) = v49;
          _os_log_impl(&dword_20AEA4000, v37, v77, "[mirrored] call failedHostExpectation (%s) due timeout, cleaned up all expected %s", v40, 0x16u);
          v50 = v78;
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v50, -1, -1);
          v51 = v40;
          v31 = v79;
          MEMORY[0x20F2E9420](v51, -1, -1);
        }

        else
        {

          outlined destroy of Apple_Workout_Core_DataLinkMessage(v19, type metadata accessor for DataLinkMirroredHostExpectation);
        }

        v62 = v84;
        v64 = v86;
        v63 = v87;
        outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v27, v87, type metadata accessor for DataLinkMirroredHostExpectation);
        outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v63, v88, type metadata accessor for DataLinkMirroredHostExpectation);
        v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v66 = swift_allocObject();
        *(v66 + 16) = v31;
        *(v66 + 24) = v30;
        outlined init with take of Apple_Workout_Core_MirroredHostMessage(v63, v66 + v65, type metadata accessor for DataLinkMirroredHostExpectation);
        v67 = objc_opt_self();
        swift_unknownObjectRetain();
        if ([v67 isMainThread])
        {
          ObjectType = swift_getObjectType();
          v69 = v88;
          (*(v30 + 40))(v88, ObjectType, v30);

          swift_unknownObjectRelease();
          v70 = v69;
        }

        else
        {
          _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v89 = static OS_dispatch_queue.main.getter();
          v71 = swift_allocObject();
          *(v71 + 16) = partial apply for closure #2 in closure #1 in DataLinkHost.addHostExpectation(_:);
          *(v71 + 24) = v66;
          aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_0;
          aBlock[5] = v71;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_187;
          v72 = _Block_copy(aBlock);

          v73 = v85;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v74 = v83;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v75 = v89;
          MEMORY[0x20F2E7580](0, v73, v62, v72);
          _Block_release(v72);

          swift_unknownObjectRelease();

          (*(v82 + 8))(v62, v74);
          (*(v80 + 8))(v73, v81);
          v70 = v88;
        }

        return outlined destroy of Apple_Workout_Core_DataLinkMessage(v70, type metadata accessor for DataLinkMirroredHostExpectation);
      }

LABEL_28:
      swift_once();
      goto LABEL_14;
    }

    v52 = v89;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static WOLog.dataLink);
    outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v52, v21, type metadata accessor for DataLinkMirroredHostExpectation);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = 136315138;
      v58 = DataLinkMirroredHostExpectation.description.getter();
      v60 = v59;
      outlined destroy of Apple_Workout_Core_DataLinkMessage(v21, type metadata accessor for DataLinkMirroredHostExpectation);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, aBlock);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_20AEA4000, v54, v55, "[mirrored] cannot call failedHostExpectation (%s), mirroredClientDelegate is not set", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x20F2E9420](v57, -1, -1);
      MEMORY[0x20F2E9420](v56, -1, -1);
    }

    v70 = v21;
    return outlined destroy of Apple_Workout_Core_DataLinkMessage(v70, type metadata accessor for DataLinkMirroredHostExpectation);
  }

  return result;
}

void DataLinkHost.receivedMirroredClientClearExpected(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  isa = v4[-1].isa;
  v6 = *(isa + 8);
  MEMORY[0x28223BE20](v4);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v9 = a1[1];
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(isa + 13))(v8, *MEMORY[0x277D85200], v4);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(isa + 1))(v8, v4);
  if ((a1 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();
  v4 = specialized Dictionary._Variant.removeValue(forKey:)(v10, v9);
  swift_endAccess();
  if (v4)
  {
    if (one-time initialization token for dataLink == -1)
    {
LABEL_4:
      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static WOLog.dataLink);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v36 = v15;
        v37 = v10;
        *v14 = 136315394;
        v38 = v9;
        lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v36);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        v19 = *(v2 + 72);
        _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
        lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

        v20 = Dictionary.Keys.description.getter();
        v22 = v21;

        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v36);

        *(v14 + 14) = v23;
        _os_log_impl(&dword_20AEA4000, v12, v13, "[mirrored] receivedMirroredClientClearExpected fulfilled host expectation for (%s), all expected %s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v15, -1, -1);
        MEMORY[0x20F2E9420](v14, -1, -1);
      }

      [v4 invalidate];
      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static WOLog.dataLink);

  v4 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    v37 = v10;
    *v26 = 136315394;
    v38 = v9;
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v36);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = *(v2 + 72);
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v32 = Dictionary.Keys.description.getter();
    v34 = v33;

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v36);

    *(v26 + 14) = v35;
    _os_log_impl(&dword_20AEA4000, v4, v25, "[mirrored] receivedMirroredClientClearExpected no client expectation for (%s), all expected %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v27, -1, -1);
    MEMORY[0x20F2E9420](v26, -1, -1);
  }

LABEL_11:
}

void DataLinkHost.removeHostExpectation(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  isa = v4[-1].isa;
  v6 = *(isa + 8);
  MEMORY[0x28223BE20](v4);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v9 = a1[1];
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(isa + 13))(v8, *MEMORY[0x277D85200], v4);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(isa + 1))(v8, v4);
  if ((a1 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();
  v4 = specialized Dictionary._Variant.removeValue(forKey:)(v10, v9);
  swift_endAccess();
  if (v4)
  {
    if (one-time initialization token for dataLink == -1)
    {
LABEL_4:
      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static WOLog.dataLink);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v36 = v15;
        v37 = v10;
        *v14 = 136315394;
        v38 = v9;
        lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v36);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        v19 = *(v2 + 72);
        _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
        lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

        v20 = Dictionary.Keys.description.getter();
        v22 = v21;

        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v36);

        *(v14 + 14) = v23;
        _os_log_impl(&dword_20AEA4000, v12, v13, "[mirrored] removeHostExpectation (%s), all expected %s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v15, -1, -1);
        MEMORY[0x20F2E9420](v14, -1, -1);
      }

      [v4 invalidate];
      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static WOLog.dataLink);

  v4 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    v37 = v10;
    *v26 = 136315394;
    v38 = v9;
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v36);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = *(v2 + 72);
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v32 = Dictionary.Keys.description.getter();
    v34 = v33;

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v36);

    *(v26 + 14) = v35;
    _os_log_impl(&dword_20AEA4000, v4, v25, "[mirrored] removeHostExpectation no client expectation for (%s), all expected %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v27, -1, -1);
    MEMORY[0x20F2E9420](v26, -1, -1);
  }

LABEL_11:
}

uint64_t closure #1 in DataLinkHost.startHostWorkoutSessionStartedTimer(timeoutAction:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v7 = *(v5 + 40);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      v9 = a3 & 1;
      (*(v7 + 48))(&v9, ObjectType, v7);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall DataLinkHost.stopHostWorkoutSessionStartedTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 80);
  p_cache = &OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider.cache;
  v9 = &selRef_adjustedStatisticsForStatistics_;
  if (!v7)
  {
    goto LABEL_9;
  }

  v10 = one-time initialization token for dataLink;
  v11 = v7;
  if (v10 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.dataLink);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v44 = v3;
      v16 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v16 = 136315138;
      v17 = [v13 fireDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      if (one-time initialization token for logDateFormatter != -1)
      {
        swift_once();
      }

      v18 = static WOLog.logDateFormatter;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v3 = [v18 stringFromDate_];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      (v44[1])(v6, v2);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v46);

      *(v16 + 4) = v23;
      _os_log_impl(&dword_20AEA4000, v14, v15, "[mirrored] stopHostWorkoutSessionStartedTimer: stop timer with fireDate: %s", v16, 0xCu);
      v24 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x20F2E9420](v24, -1, -1);
      MEMORY[0x20F2E9420](v16, -1, -1);

      v9 = &selRef_adjustedStatisticsForStatistics_;
      p_cache = (&OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider + 16);
    }

    else
    {
    }

    v25 = *(v1 + 80);
    [v25 v9[442]];

    v26 = *(v1 + 80);
    *(v1 + 80) = 0;

LABEL_9:
    swift_beginAccess();
    if (!*(*(v1 + 72) + 16))
    {
      break;
    }

    if (p_cache[310] != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static WOLog.dataLink);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      *v30 = 136315138;
      v32 = *(v1 + 72);
      _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
      lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

      v33 = Dictionary.Keys.description.getter();
      p_cache = v34;

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, p_cache, &v45);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_20AEA4000, v28, v29, "[mirrored] stopHostWorkoutSessionStartedTimer: remove all hostExpectations %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x20F2E9420](v31, -1, -1);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }

    v11 = *(v1 + 72);
    v36 = 1 << *(v11 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v6 = v37 & *(v11 + 8);
    v2 = (v36 + 63) >> 6;
    v38 = *(v1 + 72);
    swift_bridgeObjectRetain_n();
    v39 = 0;
    while (v6)
    {
      v40 = v39;
LABEL_22:
      v41 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      [*(*(v11 + 7) + ((v40 << 9) | (8 * v41))) v9[442]];
    }

    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= v2)
      {

        v42 = *(v1 + 72);
        *(v1 + 72) = MEMORY[0x277D84F98];

        return;
      }

      v6 = *(v11 + v40 + 8);
      ++v39;
      if (v6)
      {
        v39 = v40;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }
}

uint64_t protocol witness for DataLinkMirroredHostProtocol.mirroredHostDelegate.getter in conformance DataLinkHost()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 40);
  return result;
}

uint64_t protocol witness for DataLinkMirroredHostProtocol.mirroredHostDelegate.setter in conformance DataLinkHost(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for DataLinkMirroredHostProtocol.mirroredHostDelegate.modify in conformance DataLinkHost(uint64_t *a1))()
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
  v7 = *(v5 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return protocol witness for DataLinkMirroredHostProtocol.mirroredHostDelegate.modify in conformance DataLinkHost;
}

void DataLinkHost.mirroredHostDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
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

void DataLinkHost.receivedMirroredClientCommand(_:closure:)(unsigned __int8 *a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v4 + 40);
      v21[0] = v13;
      v21[1] = 0;
      DataLinkHost.receivedMirroredClientClearExpected(_:)(v21);
      ObjectType = swift_getObjectType();
      LOBYTE(v21[0]) = v13;
      (*(v14 + 8))(v21, a2, a3, ObjectType, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for DataLinkError();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError);
      v16 = swift_allocError();
      v18 = v17;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
      (*(*(v19 - 8) + 56))(v18, 5, 5, v19);
      a2(0, v16);
    }
  }

  else
  {
    __break(1u);
  }
}

void DataLinkHost.receivedMirroredClientMachTimestampResponse(_:closure:)(ValueMetadata **a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = a1[1];
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v4 + 40);
      v16 = lazy protocol witness table accessor for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse();
      v23 = &type metadata for MirroredClientMachTimestampResponse;
      v24 = v16 | 0x8000000000000000;
      DataLinkHost.receivedMirroredClientClearExpected(_:)(&v23);
      ObjectType = swift_getObjectType();
      v23 = v13;
      v24 = v14;
      (*(v15 + 16))(&v23, a2, a3, ObjectType, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for DataLinkError();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError);
      v18 = swift_allocError();
      v20 = v19;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
      (*(*(v21 - 8) + 56))(v20, 5, 5, v21);
      a2(0, v18);
    }
  }

  else
  {
    __break(1u);
  }
}

void DataLinkHost.receivedMirroredClientPrecisionStart(_:closure:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v4 + 40);
      v15 = type metadata accessor for MirroredClientPrecisionStart();
      v16 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type MirroredClientPrecisionStart and conformance MirroredClientPrecisionStart, type metadata accessor for MirroredClientPrecisionStart);
      v23[0] = v15;
      v23[1] = v16 | 0x8000000000000000;
      DataLinkHost.receivedMirroredClientClearExpected(_:)(v23);
      ObjectType = swift_getObjectType();
      (*(v14 + 24))(a1, a2, a3, ObjectType, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for DataLinkError();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError);
      v18 = swift_allocError();
      v20 = v19;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
      (*(*(v21 - 8) + 56))(v20, 5, 5, v21);
      a2(0, v18);
    }
  }

  else
  {
    __break(1u);
  }
}

void DataLinkHost.receivedMirroredClientAlertStackResponse(_:closure:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v23 = a3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v4 + 40);
      v17 = lazy protocol witness table accessor for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse();
      v24 = &type metadata for MirroredClientAlertStackResponse;
      v25 = v17 | 0x8000000000000000;
      DataLinkHost.receivedMirroredClientClearExpected(_:)(&v24);
      ObjectType = swift_getObjectType();
      v24 = v12;
      v25 = v13;
      v26 = v14;
      v27 = v15;
      (*(v16 + 32))(&v24, a2, v23, ObjectType, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for DataLinkError();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError);
      v19 = swift_allocError();
      v21 = v20;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
      (*(*(v22 - 8) + 56))(v21, 5, 5, v22);
      a2(0, v19);
    }
  }

  else
  {
    __break(1u);
  }
}

void DataLinkHost.failedHostExpectation(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DataLinkMirroredHostExpectation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    (*(v14 + 40))(a1, ObjectType, v14);
    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static WOLog.dataLink);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(a1, v7, type metadata accessor for DataLinkMirroredHostExpectation);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v21 = DataLinkMirroredHostExpectation.description.getter();
    v23 = v22;
    outlined destroy of Apple_Workout_Core_DataLinkMessage(v7, type metadata accessor for DataLinkMirroredHostExpectation);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v25);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_20AEA4000, v17, v18, "[mirrored] cannot call failedHostExpectation (%s), mirroredClientDelegate is not set", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x20F2E9420](v20, -1, -1);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  else
  {

    outlined destroy of Apple_Workout_Core_DataLinkMessage(v7, type metadata accessor for DataLinkMirroredHostExpectation);
  }
}

unint64_t specialized MetricsPublisher.observableSubs.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_s10AnyKeyPathCtGMd, &_ss23_ContiguousArrayStorageCySS_s10AnyKeyPathCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B426280;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x800000020B4541B0;
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = 0x800000020B4541D0;
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x800000020B4541F0;
  *(inited + 96) = swift_getKeyPath();
  strcpy((inited + 104), "goalPublisher");
  *(inited + 118) = -4864;
  *(inited + 120) = swift_getKeyPath();
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x800000020B454220;
  *(inited + 144) = swift_getKeyPath();
  *(inited + 152) = 0xD000000000000019;
  *(inited + 160) = 0x800000020B454240;
  *(inited + 168) = swift_getKeyPath();
  *(inited + 176) = 0xD000000000000014;
  *(inited + 184) = 0x800000020B454260;
  *(inited + 192) = swift_getKeyPath();
  *(inited + 200) = 0xD00000000000001ALL;
  *(inited + 208) = 0x800000020B4542A0;
  *(inited + 216) = swift_getKeyPath();
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x800000020B4542C0;
  *(inited + 240) = swift_getKeyPath();
  *(inited + 248) = 0xD000000000000015;
  *(inited + 256) = 0x800000020B4542E0;
  *(inited + 264) = swift_getKeyPath();
  *(inited + 272) = 0xD000000000000020;
  *(inited + 280) = 0x800000020B454300;
  *(inited + 288) = swift_getKeyPath();
  *(inited + 296) = 0xD000000000000018;
  *(inited + 304) = 0x800000020B454330;
  *(inited + 312) = swift_getKeyPath();
  *(inited + 320) = 0xD00000000000001ALL;
  *(inited + 328) = 0x800000020B454350;
  *(inited + 336) = swift_getKeyPath();
  *(inited + 344) = 0xD00000000000001CLL;
  *(inited + 352) = 0x800000020B454370;
  *(inited + 360) = swift_getKeyPath();
  *(inited + 368) = 0xD000000000000015;
  *(inited + 376) = 0x800000020B4543A0;
  *(inited + 384) = swift_getKeyPath();
  *(inited + 392) = 0xD00000000000001ALL;
  *(inited + 400) = 0x800000020B4543C0;
  *(inited + 408) = swift_getKeyPath();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s10AnyKeyPathCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_s10AnyKeyPathCtMd, &_sSS_s10AnyKeyPathCtMR);
  swift_arrayDestroy();
  return v1;
}

uint64_t specialized DataLinkHost.init(publisher:session:coalescingPeriod:)(void *a1, void *a2, double a3)
{
  v4 = v3;
  v69 = a2;
  v70 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  MEMORY[0x28223BE20](v6);
  v74 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v72 = *(v9 - 8);
  v73 = v9;
  v10 = *(v72 + 64);
  MEMORY[0x28223BE20](v9);
  v71 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  swift_unknownObjectWeakInit();
  v12 = MEMORY[0x277D84F98];
  *(v3 + 72) = MEMORY[0x277D84F98];
  *(v3 + 80) = 0;
  *(v3 + 87) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  v13 = MEMORY[0x277D84FA0];
  *(v3 + 112) = 0;
  *(v3 + 120) = v12;
  *(v3 + 128) = 0;
  *(v3 + 136) = v13;
  aBlock[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 18, 0);
  v14 = 0;
  v15 = aBlock[0];
  v16 = 0x800000020B4543C0;
  v17 = 0x800000020B4543A0;
  v18 = 0x800000020B454370;
  v19 = 0x800000020B454350;
  v20 = 0x800000020B454330;
  v21 = 0x800000020B454300;
  v22 = 0x800000020B4542E0;
  v23 = 0x800000020B4542C0;
  v24 = 0x800000020B4542A0;
  v25 = 0x800000020B454280;
  v26 = 0x800000020B454260;
  v27 = 0x800000020B454240;
  v28 = 0x800000020B454220;
  v29 = 0x800000020B4541F0;
  v30 = 0x800000020B4541D0;
  v77 = 0x800000020B4541B0;
  do
  {
    v31 = 0xED00007265687369;
    v32 = 0x6C6275506C616F67;
    switch(outlined read-only object #0 of static KnownPublishers.allCases.getter[v14 + 32])
    {
      case 1u:
        v32 = 0xD00000000000001BLL;
        v31 = v30;
        break;
      case 2u:
        v32 = 0xD000000000000016;
        v31 = v29;
        break;
      case 3u:
        break;
      case 4u:
        v32 = 0xD000000000000019;
        v31 = v28;
        break;
      case 5u:
        v32 = 0xD000000000000019;
        v31 = v27;
        break;
      case 6u:
        v32 = 0xD000000000000014;
        v31 = v26;
        break;
      case 7u:
        v32 = 0xD000000000000019;
        v31 = v25;
        break;
      case 8u:
        v32 = 0xD00000000000001ALL;
        v31 = v24;
        break;
      case 9u:
        v32 = 0xD000000000000010;
        v31 = v23;
        break;
      case 0xAu:
        v32 = 0xD000000000000015;
        v31 = v22;
        break;
      case 0xBu:
        v32 = 0xD000000000000020;
        v31 = v21;
        break;
      case 0xCu:
        v32 = 0xD000000000000018;
        v31 = v20;
        break;
      case 0xDu:
        v32 = 0xD00000000000001ALL;
        v31 = v19;
        break;
      case 0xEu:
        v32 = 0xD00000000000001CLL;
        v31 = v18;
        break;
      case 0xFu:
        v31 = 0xE800000000000000;
        v32 = 0x6C6576654C706F54;
        break;
      case 0x10u:
        v32 = 0xD000000000000015;
        v31 = v17;
        break;
      case 0x11u:
        v32 = 0xD00000000000001ALL;
        v31 = v16;
        break;
      default:
        v32 = 0xD00000000000001FLL;
        v31 = v77;
        break;
    }

    aBlock[0] = v15;
    v34 = *(v15 + 16);
    v33 = *(v15 + 24);
    if (v34 >= v33 >> 1)
    {
      v62 = v22;
      v61 = v23;
      v60 = v24;
      v68 = v16;
      v67 = v17;
      v66 = v18;
      v65 = v19;
      v64 = v20;
      v63 = v21;
      v59 = v25;
      v58 = v26;
      v57 = v27;
      v56 = v28;
      v55 = v29;
      v54 = v30;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
      v30 = v54;
      v29 = v55;
      v28 = v56;
      v27 = v57;
      v26 = v58;
      v25 = v59;
      v24 = v60;
      v23 = v61;
      v22 = v62;
      v21 = v63;
      v20 = v64;
      v19 = v65;
      v18 = v66;
      v17 = v67;
      v16 = v68;
      v15 = aBlock[0];
    }

    ++v14;
    *(v15 + 16) = v34 + 1;
    v35 = v15 + 16 * v34;
    *(v35 + 32) = v32;
    *(v35 + 40) = v31;
  }

  while (v14 != 18);
  v36 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v15);

  *(v4 + 144) = v36;
  v37 = objc_allocWithZone(type metadata accessor for DataLinkHealthKitHostConnection());
  v38 = v69;
  v39 = specialized DataLinkHealthKitHostConnection.init(session:)(v38);

  v40 = v70;
  *(v4 + 48) = v39;
  *(v4 + 56) = v40;
  *(v4 + 64) = a3;
  v41 = &v39[OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_mirroredHostDelegate];
  swift_beginAccess();
  *(v41 + 1) = &protocol witness table for DataLinkHost;
  swift_unknownObjectWeakAssign();
  v42 = *(v4 + 56);
  v43 = v40;
  v44 = specialized DataLinkHost.createSink<A>(_:key:)(v42, 0x6C6576654C706F54, 0xE800000000000000);
  v45 = *(v4 + 112);
  *(v4 + 112) = v44;

  DataLinkHost.setupKeyedListeners(_:)(*(v4 + 56));
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v46 = static OS_dispatch_queue.main.getter();
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  *(v48 + 24) = a3;
  aBlock[4] = partial apply for closure #1 in DataLinkHost.init(publisher:session:coalescingPeriod:);
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_198;
  v49 = _Block_copy(aBlock);

  v50 = v71;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v51 = v74;
  v52 = v76;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v50, v51, v49);
  _Block_release(v49);

  (*(v75 + 8))(v51, v52);
  (*(v72 + 8))(v50, v73);
  return v4;
}

void partial apply for closure #1 in MirroredHostStartConfiguration.protobuf.getter(uint64_t a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  closure #1 in MirroredHostStartConfiguration.protobuf.getter(a1, v2 | *(v1 + 16), *(v1 + 24));
}

{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  closure #1 in MirroredHostStartConfiguration.protobuf.getter(a1, v2 | *(v1 + 16), *(v1 + 24));
}

uint64_t partial apply for closure #1 in DataLinkHost.sendMirroredHostStartConfiguration(_:acknowledged:)(char a1, void *a2)
{
  if (*(v2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 48);
  return closure #1 in DataLinkHost.sendMirroredHostStartConfiguration(_:acknowledged:)(a1, a2, v3 | *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in DataLinkHost.sendMirroredHostMachTimestampRequest(_:acknowledged:)(char a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 40);
  return closure #1 in DataLinkHost.sendMirroredHostMachTimestampRequest(_:acknowledged:)(a1, a2, *(v2 + 24), *(v2 + 32));
}

uint64_t partial apply for closure #1 in DataLinkHost.sendMirroredHostCountdownStart(_:acknowledged:)(char a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 48);
  return closure #1 in DataLinkHost.sendMirroredHostCountdownStart(_:acknowledged:)(a1, a2, *(v2 + 32), *(v2 + 40));
}

uint64_t outlined init with copy of Apple_Workout_Core_MirroredHostMessage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_MirroredHostMessage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in DataLinkHost.addHostExpectation(_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DataLinkMirroredHostExpectation() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #1 in DataLinkHost.addHostExpectation(_:)(a1, v4, v5);
}

uint64_t outlined destroy of Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse()
{
  result = lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse;
  if (!lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse;
  if (!lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse;
  if (!lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse;
  if (!lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse()
{
  result = lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse;
  if (!lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse;
  if (!lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse;
  if (!lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataLinkHost.MirrorLinkState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataLinkHost.MirrorLinkState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type DataLinkHost.MirrorLinkState and conformance DataLinkHost.MirrorLinkState()
{
  result = lazy protocol witness table cache variable for type DataLinkHost.MirrorLinkState and conformance DataLinkHost.MirrorLinkState;
  if (!lazy protocol witness table cache variable for type DataLinkHost.MirrorLinkState and conformance DataLinkHost.MirrorLinkState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkHost.MirrorLinkState and conformance DataLinkHost.MirrorLinkState);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> ()(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> ()(a1, *(v1 + 32));
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t partial apply for closure #2 in closure #1 in DataLinkHost.addHostExpectation(_:)()
{
  v1 = *(type metadata accessor for DataLinkMirroredHostExpectation() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v4 + 40))(v0 + v2, ObjectType, v4);
}

unint64_t lazy protocol witness table accessor for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart()
{
  result = lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart;
  if (!lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart;
  if (!lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart;
  if (!lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart;
  if (!lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest()
{
  result = lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest;
  if (!lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest;
  if (!lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest;
  if (!lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest;
  if (!lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest);
  }

  return result;
}

uint64_t objectdestroy_113Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4[3] = MEMORY[0x277D84F78] + 8;
  v1(v4);
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  v3 = a1 + *(v2 + 40);
  UnknownStorage.init()();
  v4 = *(v2 + 44);
  v5 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.racePosition.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0) + 44);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v1 + v3, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_RacePosition);
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.racePosition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1 + *(v7 + 44), v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v6, a1, type metadata accessor for Apple_Workout_Core_RacePosition);
  }

  v10 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  }

  return result;
}

uint64_t Apple_Workout_Core_RacePosition.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Apple_Workout_Core_RacePosition(0) + 20);
  return UnknownStorage.init()();
}

uint64_t _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Apple_Workout_Core_RacePositionOnRoute.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0) + 24);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_RacePosition.notYetOnRoute.setter(uint64_t a1, uint64_t (*a2)(void))
{
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v2, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(a1, v2, a2);
  v5 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

uint64_t type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t Apple_Workout_Core_RacePositionState.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 7;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_RacePositionState()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_RacePositionState()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void Apple_Workout_Core_RacePositionStatePublisher.racePositionState.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.racePositionState.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t key path getter for Apple_Workout_Core_RacePositionStatePublisher.racePosition : Apple_Workout_Core_RacePositionStatePublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1 + *(v8 + 44), v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a2, type metadata accessor for Apple_Workout_Core_RacePosition);
  }

  v11 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_RacePositionStatePublisher.racePosition : Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition(a1, v8, type metadata accessor for Apple_Workout_Core_RacePosition);
  v9 = *(type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0) + 44);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(a2 + v9, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_RacePosition);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Workout_Core_RacePositionStatePublisher.racePosition.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0) + 44);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    }
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v14, type metadata accessor for Apple_Workout_Core_RacePosition);
  }

  return Apple_Workout_Core_RacePositionStatePublisher.racePosition.modify;
}

void Apple_Workout_Core_RacePositionStatePublisher.racePosition.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_RacePosition((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_RacePosition);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v9 + v3, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_RacePosition);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_RacePosition(v5, type metadata accessor for Apple_Workout_Core_RacePosition);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v9 + v3, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_RacePosition);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_RacePositionStatePublisher.hasRacePosition.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(v0 + *(v5 + 44), v4, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v4, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_RacePositionStatePublisher.clearRacePosition()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0) + 44);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v0 + v1, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t outlined assign with take of Apple_Workout_Core_RacePosition.OneOf_Type?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Workout_Core_RacePosition.notYetOnRoute.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a1, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

uint64_t outlined destroy of Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t key path getter for Apple_Workout_Core_RacePosition.notYetOnRoute : Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a2, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_RacePosition.notYetOnRoute.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v11, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
      return Apple_Workout_Core_RacePosition.notYetOnRoute.modify;
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  UnknownStorage.init()();
  return Apple_Workout_Core_RacePosition.notYetOnRoute.modify;
}

uint64_t outlined init with copy of Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Apple_Workout_Core_RacePosition.onRoute.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v2, &v11 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a1, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v10 = a1 + *(type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0) + 24);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_RacePosition.onRoute : Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, &v11 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a2, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = a2 + *(type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0) + 24);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_RacePosition.onRoute.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
LABEL_15:
    *v12 = 0;
    *(v12 + 8) = 0;
    v15 = v12 + *(v9 + 24);
    UnknownStorage.init()();
    return Apple_Workout_Core_RacePosition.onRoute.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    goto LABEL_15;
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v12, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
  return Apple_Workout_Core_RacePosition.onRoute.modify;
}

uint64_t Apple_Workout_Core_RacePosition.offRoute.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a1, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_RacePosition.offRoute : Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a2, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_RacePosition.offRoute.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_RacePositionOffRoute(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return Apple_Workout_Core_RacePosition.offRoute.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    goto LABEL_15;
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v11, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
  return Apple_Workout_Core_RacePosition.offRoute.modify;
}

uint64_t Apple_Workout_Core_RacePosition.completed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a1, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_RacePosition.completed : Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a2, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_RacePosition.completed.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_RacePositionCompleted(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return Apple_Workout_Core_RacePosition.completed.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    goto LABEL_15;
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v11, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
  return Apple_Workout_Core_RacePosition.completed.modify;
}

uint64_t Apple_Workout_Core_RacePosition.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a1, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_RacePosition.unknown : Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a2, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_RacePosition.unknown.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_RacePositionUnknown(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return Apple_Workout_Core_RacePosition.unknown.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    goto LABEL_15;
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v11, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
  return Apple_Workout_Core_RacePosition.unknown.modify;
}

uint64_t Apple_Workout_Core_RacePosition.expired.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a1, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_RacePosition.expired : Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v7, a2, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
    }

    outlined destroy of Apple_Workout_Core_RacePosition(v7, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  }

  return UnknownStorage.init()();
}

uint64_t key path setter for Apple_Workout_Core_RacePosition.notYetOnRoute : Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v15 - v11;
  outlined init with copy of Apple_Workout_Core_RacePosition(a1, &v15 - v11, a6);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(a2, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v12, a2, a6);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
}

void (*Apple_Workout_Core_RacePosition.expired.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_RacePositionExpired(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
LABEL_15:
    UnknownStorage.init()();
    return Apple_Workout_Core_RacePosition.expired.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    goto LABEL_15;
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v11, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
  return Apple_Workout_Core_RacePosition.expired.modify;
}

void Apple_Workout_Core_RacePosition.notYetOnRoute.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  v12 = **a1;
  v11 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_RacePosition((*a1)[3], v9, a3);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v12, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v9, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
    outlined destroy of Apple_Workout_Core_RacePosition(v10, a5);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(**a1, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v10, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v6);
}

uint64_t Apple_Workout_Core_RacePosition.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RacePosition(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_RacePosition.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RacePosition(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_RacePositionOnRoute.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0) + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t static Apple_Workout_Core_RacePositionNotYetOnRoute.== infix(_:_:)()
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_Core_RacePositionOnRoute.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_RacePositionOnRoute.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_RacePositionNotYetOnRoute.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_RacePositionNotYetOnRoute.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        switch(result)
        {
          case 1:
            lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 2:
            closure #2 in Apple_Workout_Core_RacePositionStatePublisher.decodeMessage<A>(decoder:)();
            break;
          case 4:
            goto LABEL_4;
        }
      }

      else if (result < 8 || result == 8)
      {
LABEL_4:
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_RacePositionStatePublisher.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0) + 44);
  type metadata accessor for Apple_Workout_Core_RacePosition(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePosition and conformance Apple_Workout_Core_RacePosition, type metadata accessor for Apple_Workout_Core_RacePosition);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v11 = *(v3 + 8), lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_Core_RacePositionStatePublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 16))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 24))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 32))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 40))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 48))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      v9 = v3 + *(type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0) + 40);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_RacePositionStatePublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1 + *(v14 + 44), v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v13, type metadata accessor for Apple_Workout_Core_RacePosition);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePosition and conformance Apple_Workout_Core_RacePosition, type metadata accessor for Apple_Workout_Core_RacePosition);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_RacePosition(v13, type metadata accessor for Apple_Workout_Core_RacePosition);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_RacePositionStatePublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  v4 = a2 + *(a1 + 40);
  UnknownStorage.init()();
  v5 = *(a1 + 44);
  v6 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_RacePositionStatePublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_RacePositionStatePublisher;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionStatePublisher()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          closure #4 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 5:
          closure #5 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 6:
          closure #6 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          closure #1 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 2:
          closure #2 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 3:
          closure #3 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v14, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v14, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v14, v22, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v22, v20, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Apple_Workout_Core_RacePosition(v20, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
      v33 = v48;
    }

    else
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMR);
      v35 = v43;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v20, v43, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v35, v28, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionNotYetOnRoute and conformance Apple_Workout_Core_RacePositionNotYetOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v28, v36, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMR);
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v36, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMR);
  }

  else
  {
    v39 = v44;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v36, v44, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B26_RacePositionNotYetOnRouteVSgMR);
    v40 = v42;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v42, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v39, v40, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #2 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v14, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v14, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v14, v22, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v22, v20, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMR);
      v35 = v44;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v20, v44, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v35, v28, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_RacePosition(v20, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOnRoute and conformance Apple_Workout_Core_RacePositionOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v28, v36, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMR);
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v36, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMR);
  }

  else
  {
    v39 = v43;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v36, v43, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionOnRouteVSgMR);
    v40 = v42;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v42, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v39, v40, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #3 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionOffRoute(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMd, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v14, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v14, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v14, v22, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v22, v20, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMd, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMR);
      v35 = v44;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v20, v44, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v35, v28, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_RacePosition(v20, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOffRoute and conformance Apple_Workout_Core_RacePositionOffRoute, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMd, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v28, v36, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMd, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMd, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMR);
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v36, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMd, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMR);
  }

  else
  {
    v39 = v43;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v36, v43, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMd, &_s11WorkoutCore06Apple_a1_B21_RacePositionOffRouteVSgMR);
    v40 = v42;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v42, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v39, v40, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #4 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionCompleted(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMd, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v14, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v14, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v14, v22, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v22, v20, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMd, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMR);
      v35 = v44;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v20, v44, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v35, v28, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_RacePosition(v20, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionCompleted and conformance Apple_Workout_Core_RacePositionCompleted, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMd, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v28, v36, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMd, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMd, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMR);
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v36, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMd, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMR);
  }

  else
  {
    v39 = v43;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v36, v43, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMd, &_s11WorkoutCore06Apple_a1_B22_RacePositionCompletedVSgMR);
    v40 = v42;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v42, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v39, v40, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #5 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionUnknown(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v14, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v14, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v14, v22, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v22, v20, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMR);
      v35 = v44;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v20, v44, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v35, v28, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_RacePosition(v20, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionUnknown and conformance Apple_Workout_Core_RacePositionUnknown, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v28, v36, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMR);
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v36, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMR);
  }

  else
  {
    v39 = v43;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v36, v43, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionUnknownVSgMR);
    v40 = v42;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v42, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v39, v40, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t closure #6 in Apple_Workout_Core_RacePosition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionExpired(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v14, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v14, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v14, v22, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v22, v20, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMR);
      v35 = v44;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v20, v44, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v35, v28, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_RacePosition(v20, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
      v33 = v48;
    }
  }

  v36 = v46;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionExpired and conformance Apple_Workout_Core_RacePositionExpired, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
  v37 = v47;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v37)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v28, v36, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMR);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMR);
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v36, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMR);
  }

  else
  {
    v39 = v43;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v36, v43, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
    if (v32 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v28, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMd, &_s11WorkoutCore06Apple_a1_B20_RacePositionExpiredVSgMR);
    v40 = v42;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v42, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v39, v40, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v3, &v16 - v10, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_14;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      closure #4 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      closure #5 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #6 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Apple_Workout_Core_RacePosition(v11, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  if (!v4)
  {
LABEL_14:
    v15 = v3 + *(type metadata accessor for Apple_Workout_Core_RacePosition(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v12, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionNotYetOnRoute and conformance Apple_Workout_Core_RacePositionNotYetOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
  }

  result = outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v12, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOnRoute and conformance Apple_Workout_Core_RacePositionOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
  }

  result = outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionOffRoute(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v12, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOffRoute and conformance Apple_Workout_Core_RacePositionOffRoute, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
  }

  result = outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #4 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionCompleted(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v12, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionCompleted and conformance Apple_Workout_Core_RacePositionCompleted, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
  }

  result = outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #5 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionUnknown(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v12, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionUnknown and conformance Apple_Workout_Core_RacePositionUnknown, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
  }

  result = outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #6 in Apple_Workout_Core_RacePosition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionExpired(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v8, v12, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionExpired and conformance Apple_Workout_Core_RacePositionExpired, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
  }

  result = outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_RacePosition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_RacePosition;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePosition and conformance Apple_Workout_Core_RacePosition, type metadata accessor for Apple_Workout_Core_RacePosition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePosition(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePosition and conformance Apple_Workout_Core_RacePosition, type metadata accessor for Apple_Workout_Core_RacePosition);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePosition()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePosition and conformance Apple_Workout_Core_RacePosition, type metadata accessor for Apple_Workout_Core_RacePosition);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_RacePositionNotYetOnRoute._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_RacePositionOffRoute._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_RacePositionCompleted._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_RacePositionUnknown._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_RacePositionExpired._protobuf_nameMap);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_MirroredHostProtocolVersion._protobuf_nameMap, 0, "NAPILI_ALIGNED", 14);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_MirroredHostMachTimestampRequest._protobuf_nameMap, 1, "hostMachTimestamp", 17);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_MirroredClientPrecisionStart._protobuf_nameMap, 1, "precisionStartReferenceTime", 27);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_Core_MirroredHostSummaryUpdate._protobuf_nameMap, 1, "hkWorkoutBlob", 13);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePositionNotYetOnRoute(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionNotYetOnRoute and conformance Apple_Workout_Core_RacePositionNotYetOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePositionNotYetOnRoute(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionNotYetOnRoute and conformance Apple_Workout_Core_RacePositionNotYetOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionNotYetOnRoute()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionNotYetOnRoute and conformance Apple_Workout_Core_RacePositionNotYetOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_RacePositionOnRoute.decodeMessage<A>(decoder:)()
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
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularFloatField(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_RacePositionOnRoute.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 8) || (result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_RacePositionOnRoute@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_RacePositionOnRoute@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_RacePositionOnRoute(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_RacePositionOnRoute(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_RacePositionOnRoute;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePositionOnRoute(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOnRoute and conformance Apple_Workout_Core_RacePositionOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePositionOnRoute(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOnRoute and conformance Apple_Workout_Core_RacePositionOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionOnRoute()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOnRoute and conformance Apple_Workout_Core_RacePositionOnRoute, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_RacePositionOnRoute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePositionOffRoute(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOffRoute and conformance Apple_Workout_Core_RacePositionOffRoute, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePositionOffRoute(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOffRoute and conformance Apple_Workout_Core_RacePositionOffRoute, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionOffRoute()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionOffRoute and conformance Apple_Workout_Core_RacePositionOffRoute, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePositionCompleted(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionCompleted and conformance Apple_Workout_Core_RacePositionCompleted, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePositionCompleted(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionCompleted and conformance Apple_Workout_Core_RacePositionCompleted, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionCompleted()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionCompleted and conformance Apple_Workout_Core_RacePositionCompleted, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePositionUnknown(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionUnknown and conformance Apple_Workout_Core_RacePositionUnknown, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePositionUnknown(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionUnknown and conformance Apple_Workout_Core_RacePositionUnknown, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionUnknown()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionUnknown and conformance Apple_Workout_Core_RacePositionUnknown, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return _NameMap.init()();
}

uint64_t static Apple_Workout_Core_RacePositionState._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Apple_Workout_Core_RacePositionExpired.decodeMessage<A>(decoder:)()
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

Swift::Int Apple_Workout_Core_RacePositionStatePublisher.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_RacePositionNotYetOnRoute@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_RacePositionNotYetOnRoute(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RacePositionExpired(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionExpired and conformance Apple_Workout_Core_RacePositionExpired, type metadata accessor for Apple_Workout_Core_RacePositionExpired);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_RacePositionState@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RacePositionExpired(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionExpired and conformance Apple_Workout_Core_RacePositionExpired, type metadata accessor for Apple_Workout_Core_RacePositionExpired);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_RacePositionStatePublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RacePositionExpired()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionExpired and conformance Apple_Workout_Core_RacePositionExpired, type metadata accessor for Apple_Workout_Core_RacePositionExpired);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_RacePositionStatePublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_RacePositionNotYetOnRoute()
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_Core_RacePositionStatePublisher.== infix(_:_:)(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v18 <= 2)
    {
      if (v18)
      {
        if (v18 == 1)
        {
          if (*&v17 != 1)
          {
            goto LABEL_35;
          }
        }

        else if (*&v17 != 2)
        {
          goto LABEL_35;
        }
      }

      else if (v17 != 0.0)
      {
        goto LABEL_35;
      }
    }

    else if (v18 > 4)
    {
      if (v18 == 5)
      {
        if (*&v17 != 5)
        {
          goto LABEL_35;
        }
      }

      else if (*&v17 != 6)
      {
        goto LABEL_35;
      }
    }

    else if (v18 == 3)
    {
      if (*&v17 != 3)
      {
        goto LABEL_35;
      }
    }

    else if (*&v17 != 4)
    {
      goto LABEL_35;
    }
  }

  else if (*&v17 != v18)
  {
    goto LABEL_35;
  }

  v19 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v20 = *(v19 + 44);
  v21 = a1;
  v22 = *(v13 + 48);
  v28 = v19;
  v29 = v21;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v21 + v20, v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a2 + v20, &v16[v22], &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) != 1)
  {
    outlined init with copy of Apple_Workout_Core_RacePosition?(v16, v12, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    if (v23(&v16[v22], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePosition);
      goto LABEL_13;
    }

    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(&v16[v22], v8, type metadata accessor for Apple_Workout_Core_RacePosition);
    v24 = specialized static Apple_Workout_Core_RacePosition.== infix(_:_:)(v12, v8);
    outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition);
    outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePosition);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    if (v24)
    {
      goto LABEL_22;
    }

LABEL_35:
    v26 = 0;
    return v26 & 1;
  }

  if (v23(&v16[v22], 1, v4) != 1)
  {
LABEL_13:
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMR);
    goto LABEL_35;
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
LABEL_22:
  if (v29[2] != *(a2 + 16) || v29[3] != *(a2 + 24) || v29[4] != *(a2 + 32) || v29[5] != *(a2 + 40) || v29[6] != *(a2 + 48))
  {
    goto LABEL_35;
  }

  v25 = *(v28 + 40);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v26 & 1;
}

uint64_t specialized static Apple_Workout_Core_RacePosition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSg_AFtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSg_AFtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1, &v24 - v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a2, &v17[v18], &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v17, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Workout_Core_RacePosition(0) + 20);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v17, v12, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
LABEL_6:
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v17, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSg_AFtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSg_AFtMR);
    goto LABEL_7;
  }

  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(&v17[v18], v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  v21 = specialized static Apple_Workout_Core_RacePosition.OneOf_Type.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_RacePosition(v8, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  outlined destroy of Apple_Workout_Core_RacePosition(v12, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v17, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_Core_RacePosition.OneOf_Type.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v73 = a2;
  v2 = type metadata accessor for Apple_Workout_Core_RacePositionExpired(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v71 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Workout_Core_RacePositionUnknown(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v70 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Workout_Core_RacePositionCompleted(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v69 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_RacePositionOffRoute(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v68 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
  v14 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v67 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v66 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v64 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v64 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v64 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = (&v64 - v34);
  MEMORY[0x28223BE20](v33);
  v37 = &v64 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeO_AEtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeO_AEtMR);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v42 = &v64 - v41;
  v43 = *(v40 + 56);
  outlined init with copy of Apple_Workout_Core_RacePosition(v72, &v64 - v41, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  outlined init with copy of Apple_Workout_Core_RacePosition(v73, &v42[v43], type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        outlined init with copy of Apple_Workout_Core_RacePosition(v42, v26, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          v53 = type metadata accessor for Apple_Workout_Core_RacePositionUnknown;
          v54 = v26;
          goto LABEL_26;
        }

        v49 = &v42[v43];
        v50 = v70;
        _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v49, v70, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v48 = dispatch thunk of static Equatable.== infix(_:_:)();
        v51 = type metadata accessor for Apple_Workout_Core_RacePositionUnknown;
        outlined destroy of Apple_Workout_Core_RacePosition(v50, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
        v52 = v26;
      }

      else
      {
        outlined init with copy of Apple_Workout_Core_RacePosition(v42, v23, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
        if (swift_getEnumCaseMultiPayload() != 5)
        {
          v53 = type metadata accessor for Apple_Workout_Core_RacePositionExpired;
          v54 = v23;
          goto LABEL_26;
        }

        v59 = &v42[v43];
        v60 = v71;
        _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v59, v71, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
        v48 = dispatch thunk of static Equatable.== infix(_:_:)();
        v51 = type metadata accessor for Apple_Workout_Core_RacePositionExpired;
        outlined destroy of Apple_Workout_Core_RacePosition(v60, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
        v52 = v23;
      }

LABEL_29:
      outlined destroy of Apple_Workout_Core_RacePosition(v52, v51);
      outlined destroy of Apple_Workout_Core_RacePosition(v42, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
      return v48 & 1;
    }

    outlined init with copy of Apple_Workout_Core_RacePosition(v42, v29, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v55 = &v42[v43];
      v56 = v69;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v55, v69, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v51 = type metadata accessor for Apple_Workout_Core_RacePositionCompleted;
      outlined destroy of Apple_Workout_Core_RacePosition(v56, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
      v52 = v29;
      goto LABEL_29;
    }

    v53 = type metadata accessor for Apple_Workout_Core_RacePositionCompleted;
    v54 = v29;
LABEL_26:
    outlined destroy of Apple_Workout_Core_RacePosition(v54, v53);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(v42, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeO_AEtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeO_AEtMR);
LABEL_27:
    v48 = 0;
    return v48 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_Core_RacePosition(v42, v37, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    if (!swift_getEnumCaseMultiPayload())
    {
      v61 = &v42[v43];
      v62 = v66;
      _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v61, v66, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v51 = type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute;
      outlined destroy of Apple_Workout_Core_RacePosition(v62, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
      v52 = v37;
      goto LABEL_29;
    }

    v53 = type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute;
    v54 = v37;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of Apple_Workout_Core_RacePosition(v42, v32, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v53 = type metadata accessor for Apple_Workout_Core_RacePositionOffRoute;
      v54 = v32;
      goto LABEL_26;
    }

    v57 = &v42[v43];
    v58 = v68;
    _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(v57, v68, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();
    v51 = type metadata accessor for Apple_Workout_Core_RacePositionOffRoute;
    outlined destroy of Apple_Workout_Core_RacePosition(v58, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
    v52 = v32;
    goto LABEL_29;
  }

  outlined init with copy of Apple_Workout_Core_RacePosition(v42, v35, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v53 = type metadata accessor for Apple_Workout_Core_RacePositionOnRoute;
    v54 = v35;
    goto LABEL_26;
  }

  v45 = v67;
  _s11WorkoutCore06Apple_a1_B13_RacePositionVWObTm_0(&v42[v43], v67, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
  if (*v35 != *v45 || v35[2] != *(v45 + 8))
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v45, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    goto LABEL_32;
  }

  v46 = *(v65 + 24);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_RacePosition(v45, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
  if ((v47 & 1) == 0)
  {
LABEL_32:
    outlined destroy of Apple_Workout_Core_RacePosition(v35, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    outlined destroy of Apple_Workout_Core_RacePosition(v42, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    goto LABEL_27;
  }

  outlined destroy of Apple_Workout_Core_RacePosition(v35, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
  outlined destroy of Apple_Workout_Core_RacePosition(v42, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  v48 = 1;
  return v48 & 1;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionState and conformance Apple_Workout_Core_RacePositionState);
  }

  return result;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_RacePositionState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_RacePositionState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_RacePositionState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B18_RacePositionStateOGMd, &_sSay11WorkoutCore06Apple_a1_B18_RacePositionStateOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_RacePositionState] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_RacePositionState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_RacePositionState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for Apple_Workout_Core_RacePositionState(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_RacePositionState(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_RacePositionStatePublisher()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_RacePosition?(319, &lazy cache variable for type metadata for Apple_Workout_Core_RacePosition?, type metadata accessor for Apple_Workout_Core_RacePosition);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Apple_Workout_Core_RacePosition()
{
  type metadata accessor for Apple_Workout_Core_RacePosition?(319, &lazy cache variable for type metadata for Apple_Workout_Core_RacePosition.OneOf_Type?, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_Core_RacePosition?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata completion function for Apple_Workout_Core_RacePosition.OneOf_Type()
{
  result = type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_Core_RacePositionOffRoute(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Workout_Core_RacePositionCompleted(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Apple_Workout_Core_RacePositionUnknown(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Apple_Workout_Core_RacePositionExpired(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_Core_RacePositionOnRoute()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_44Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_45Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for Apple_Workout_Core_RacePositionNotYetOnRoute()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_RacePosition?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *WorkoutGoal.workoutCoreRepresentation(activityType:configurationType:validator:)(void *a1, char *a2, uint64_t a3)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v84 = *(v78 - 8);
  v7 = *(v84 + 64);
  v8 = MEMORY[0x28223BE20](v78);
  v75 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v73 = *(v11 - 8);
  v74 = v11;
  v12 = *(v73 + 64);
  MEMORY[0x28223BE20](v11);
  v72 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v79 = *(v14 - 8);
  v80 = v14;
  v15 = *(v79 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v77 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v72 - v18;
  v20 = type metadata accessor for WorkoutGoal();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a2;
  v81 = *(v21 + 16);
  v82 = v3;
  v81(v24, v3, v20);
  v26 = (*(v21 + 88))(v24, v20);
  if (v26 == *MEMORY[0x277CE3F78])
  {
    (*(v21 + 96))(v24, v20);
    v27 = *v24;
    v28 = *(v24 + 1);
    v86 = v25;
    if ((*(*a3 + 320))(1, a1, &v86))
    {
      type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
      v29 = v28;
      Measurement.init(value:unit:)();
      v30 = Measurement<>.hkQuantity.getter();
      v3 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v30];

      (*(v79 + 8))(v19, v80);
      return v3;
    }

    v32 = a1;
    goto LABEL_8;
  }

  if (v26 == *MEMORY[0x277CE3F68])
  {
    (*(v21 + 96))(v24, v20);
    v31 = *v24;
    v28 = *(v24 + 1);
    v88 = v25;
    v32 = a1;
    v33 = (*(*a3 + 320))(2, a1, &v88);
    v34 = v84;
    if (v33)
    {
      type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
      v35 = v28;
      v36 = v76;
      Measurement.init(value:unit:)();
      v37 = Measurement<>.hkQuantity.getter();
      v3 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v37];

      (*(v34 + 8))(v36, v78);
      return v3;
    }

    goto LABEL_8;
  }

  v45 = v84;
  if (v26 == *MEMORY[0x277CE3F70])
  {
    (*(v21 + 96))(v24, v20);
    v46 = *v24;
    v28 = *(v24 + 1);
    v87 = v25;
    v32 = a1;
    if ((*(*a3 + 320))(3, a1, &v87))
    {
      type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
      v47 = v28;
      v48 = v72;
      Measurement.init(value:unit:)();
      v49 = Measurement<>.hkQuantity.getter();
      v3 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:3 value:v49];

      (*(v73 + 8))(v48, v74);
      return v3;
    }

LABEL_8:
    v38 = type metadata accessor for GoalValidationError();
    lazy protocol witness table accessor for type ImportError and conformance ImportError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, MEMORY[0x277CE40B0]);
    swift_allocError();
    v3 = v39;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, _s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
    v41 = *(v40 + 48);
    v81(v3, v82, v20);
    *&v3[v41] = [v32 effectiveTypeIdentifier];
    v42 = [v32 isIndoor];
    v43 = 2;
    if (!v42)
    {
      v43 = 3;
    }

    *&v3[*(v40 + 64)] = v43;
    (*(*(v38 - 8) + 104))(v3, *MEMORY[0x277CE40A0], v38);
    swift_willThrow();

    return v3;
  }

  if (v26 == *MEMORY[0x277CE3F58])
  {
    (*(v21 + 96))(v24, v20);
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
    v51 = v79;
    (*(v79 + 32))(v77, v24, v80);
    v52 = v75;
    (*(v45 + 32))(v75, &v24[v50], v78);
    v89 = v25;
    v53 = a1;
    if (specialized WorkoutConfigurationValidator.supportsDistanceWithTimeGoal(activityType:configurationType:)(a1, &v89))
    {
      v54 = v52;
      v55 = Measurement<>.hkQuantity.getter();
      v56 = v77;
      v57 = Measurement<>.hkQuantity.getter();
      v3 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v55 requiredDistance:v57];

      (*(v45 + 8))(v54, v78);
      (*(v51 + 8))(v56, v80);
    }

    else
    {
      v83 = type metadata accessor for GoalValidationError();
      lazy protocol witness table accessor for type ImportError and conformance ImportError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, MEMORY[0x277CE40B0]);
      swift_allocError();
      v3 = v59;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, _s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v61 = *(v60 + 48);
      v81(v3, v82, v20);
      *&v3[v61] = [v53 effectiveTypeIdentifier];
      v62 = [v53 isIndoor];
      v63 = 2;
      if (!v62)
      {
        v63 = 3;
      }

      *&v3[*(v60 + 64)] = v63;
      (*(*(v83 - 8) + 104))(v3, *MEMORY[0x277CE40A0]);
      swift_willThrow();
      (*(v45 + 8))(v75, v78);
      (*(v51 + 8))(v77, v80);
    }
  }

  else if (v26 == *MEMORY[0x277CE3F60])
  {
    v85 = v25;
    v58 = a1;
    if ((*(*a3 + 320))(0, a1, &v85))
    {
      return [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
    }

    else
    {
      v66 = type metadata accessor for GoalValidationError();
      lazy protocol witness table accessor for type ImportError and conformance ImportError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, MEMORY[0x277CE40B0]);
      swift_allocError();
      v3 = v67;
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, _s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v69 = *(v68 + 48);
      v81(v3, v82, v20);
      *&v3[v69] = [v58 effectiveTypeIdentifier];
      v70 = [v58 isIndoor];
      v71 = 2;
      if (!v70)
      {
        v71 = 3;
      }

      *&v3[*(v68 + 64)] = v71;
      (*(*(v66 - 8) + 104))(v3, *MEMORY[0x277CE40A0], v66);
      swift_willThrow();
    }
  }

  else
  {
    v64 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type ImportError and conformance ImportError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, MEMORY[0x277CE4010]);
    swift_allocError();
    (*(*(v64 - 8) + 104))(v65, *MEMORY[0x277CE4000], v64);
    swift_willThrow();
    (*(v21 + 8))(v24, v20);
  }

  return v3;
}

Swift::Bool __swiftcall NLSessionActivityGoal.isTimeAndDistanceGoal()()
{
  if ([v0 goalTypeIdentifier] == 2)
  {
    v1 = [v0 requiredDistance];
    if (v1)
    {

      LOBYTE(v1) = 1;
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

uint64_t lazy protocol witness table accessor for type ImportError and conformance ImportError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for NSUnitDuration(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id one-time initialization function for hoursMinutesFormatter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v5 setAllowedUnits_];
  result = [v5 setZeroFormattingBehavior_];
  *a3 = v5;
  return result;
}

id one-time initialization function for accessibilityDateFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setZeroFormattingBehavior_];
  [v0 setUnitsStyle_];
  result = [v0 setAllowedUnits_];
  static ElapsedTimeFormatter.accessibilityDateFormatter = v0;
  return result;
}

uint64_t static ElapsedTimeFormatter.accessibilityStringFromElapsedTime(_:)()
{
  if (one-time initialization token for accessibilityDateFormatter != -1)
  {
    swift_once();
  }

  v0 = [static ElapsedTimeFormatter.accessibilityDateFormatter stringFromTimeInterval_];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t specialized static ElapsedTimeFormatter.stringFromElapsedTime(_:trimDoubleLeadingZero:compactHours:)(char a1, char a2, double a3)
{
  if (a3 / 60.0 <= 90.0)
  {
    if (one-time initialization token for minutesSecondsFormatter != -1)
    {
      swift_once();
    }

    v5 = &static ElapsedTimeFormatter.minutesSecondsFormatter;
    goto LABEL_11;
  }

  if ((a2 & 1) == 0)
  {
    if (one-time initialization token for hoursMinutesSecondsFormatter != -1)
    {
      swift_once();
    }

    v5 = &static ElapsedTimeFormatter.hoursMinutesSecondsFormatter;
    goto LABEL_11;
  }

  if (one-time initialization token for hoursMinutesFormatter != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v5 = &static ElapsedTimeFormatter.hoursMinutesFormatter;
LABEL_11:
    v6 = *v5;
    if (a3 >= 0.0 || a3 <= -60.0)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20B423A90;
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (a3 >= 9.22337204e18)
    {
      goto LABEL_27;
    }

    if (a3 > -9.22337204e18)
    {
      v8 = MEMORY[0x277D83C10];
      *(v7 + 56) = MEMORY[0x277D83B88];
      *(v7 + 64) = v8;
      *(v7 + 32) = -a3;
      v9 = v6;
      v10 = String.init(format:_:)();
      v12 = v11;
      if ((a1 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v13 = [v6 stringFromTimeInterval_];
  if (v13)
  {
    v14 = v13;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v15;

    if ((a1 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
    if ((a1 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_22:
  v16._countAndFlagsBits = 12336;
  v16._object = 0xE200000000000000;
  if (String.hasPrefix(_:)(v16))
  {

    v17 = specialized Collection.dropFirst(_:)(1uLL, v10, v12);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v10 = MEMORY[0x20F2E6D00](v17, v19, v21, v23);

    return v10;
  }

LABEL_24:

  return v10;
}

uint64_t static AppleExertionScale.numberOfValues.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static AppleExertionScale.numberOfValues = a1;
  return result;
}

uint64_t static AppleExertionScale.range.setter(double a1, double a2)
{
  result = swift_beginAccess();
  *&static AppleExertionScale.range = a1;
  *(&static AppleExertionScale.range + 1) = a2;
  return result;
}

void AppleExertionScale.rawValue.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = qword_20B42E308[v2];
  LOBYTE(v2) = asc_20B4590EA[v2];
  *a1 = v3;
  *(a1 + 8) = v2;
}

WorkoutCore::AppleExertionScale_optional __swiftcall AppleExertionScale.init(rawValue:)(WorkoutCore::ExertionValue rawValue)
{
  v2 = v1;
  v3 = *rawValue.level;
  if (*rawValue.level >= 0xBuLL)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.core);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 134218242;
      *(v8 + 4) = v3;
      *(v8 + 12) = 2080;
      *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000020B42E1B0, &v11);
      _os_log_impl(&dword_20AEA4000, v6, v7, "Invalid exertion level %ld for %s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F2E9420](v9, -1, -1);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    v4 = 11;
  }

  else
  {
    v4 = byte_20B42E360[v3];
  }

  *v2 = v4;
  return rawValue.level;
}

uint64_t static AppleExertionScale.exertionForRow(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 9)
  {
    _StringGuts.grow(_:)(21);

    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v2);

    MEMORY[0x20F2E6D80](0x20726F6620, 0xE500000000000000);
    MEMORY[0x20F2E6D80](0xD000000000000012, 0x800000020B42E1B0);
  }

  else
  {
    if ((result & 0x8000000000000000) == 0)
    {
      *a2 = outlined read-only object #0 of static AppleExertionScale.allCases.getter[result + 32];
      return result;
    }

    _StringGuts.grow(_:)(27);

    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v3);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppleExertionScale()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v6 = v1;
  AppleExertionScale.rawValue.getter(&v4);
  v2 = v5;
  MEMORY[0x20F2E7FF0](v4);
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppleExertionScale()
{
  v5 = *v0;
  AppleExertionScale.rawValue.getter(&v3);
  v1 = v4;
  MEMORY[0x20F2E7FF0](v3);
  return MEMORY[0x20F2E7FF0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppleExertionScale()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v6 = v1;
  AppleExertionScale.rawValue.getter(&v4);
  v2 = v5;
  MEMORY[0x20F2E7FF0](v4);
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

WorkoutCore::AppleExertionScale_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AppleExertionScale(WorkoutCore::ExertionValue a1)
{
  v1 = *(a1.level + 8);
  v3 = *a1.level;
  v4 = v1;
  a1.level = &v3;
  return AppleExertionScale.init(rawValue:)(a1);
}

unint64_t lazy protocol witness table accessor for type AppleExertionScale and conformance AppleExertionScale()
{
  result = lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale;
  if (!lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleExertionScale and conformance AppleExertionScale);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AppleExertionScale] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AppleExertionScale] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AppleExertionScale] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore18AppleExertionScaleOGMd, &_sSay11WorkoutCore18AppleExertionScaleOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AppleExertionScale] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleExertionScale(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleExertionScale(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RaceAlerts.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceAlerts.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RaceAlerts.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance RaceAlerts.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RaceAlerts.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance RaceAlerts.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RaceAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RaceAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RaceAlerts.aheadBehindAlertsEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t RaceAlerts.__allocating_init(aheadBehindAlertsEnabled:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t RaceAlerts.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  RaceAlerts.init(from:)(a1);
  return v2;
}

uint64_t RaceAlerts.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore10RaceAlertsC10CodingKeys33_36A94705790B12666887693346F21308LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore10RaceAlertsC10CodingKeys33_36A94705790B12666887693346F21308LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for RaceAlerts();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    *(v1 + 16) = v11 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t lazy protocol witness table accessor for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys);
  }

  return result;
}

uint64_t RaceAlerts.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore10RaceAlertsC10CodingKeys33_36A94705790B12666887693346F21308LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore10RaceAlertsC10CodingKeys33_36A94705790B12666887693346F21308LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RaceAlerts.CodingKeys and conformance RaceAlerts.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v10 = *(v2 + 16);
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t static RaceAlerts.defaultRaceAlerts()()
{
  type metadata accessor for RaceAlerts();
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

Swift::Int RaceAlerts.hashValue.getter()
{
  Hasher.init(_seed:)();
  swift_beginAccess();
  Hasher._combine(_:)(*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance RaceAlerts@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for RaceAlerts();
  v5 = swift_allocObject();
  result = RaceAlerts.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RaceAlerts()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 16));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance RaceAlerts()
{
  v1 = *v0;
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 16));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceAlerts()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 16));
  return Hasher._finalize()();
}

BOOL static RaceAlerts.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  LODWORD(a1) = *(a1 + 16);
  swift_beginAccess();
  return ((a1 ^ *(a2 + 16)) & 1) == 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance RaceAlerts(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  LODWORD(v2) = *(v2 + 16);
  swift_beginAccess();
  return ((v2 ^ *(v3 + 16)) & 1) == 0;
}

unint64_t RaceAlerts.description.getter()
{
  _StringGuts.grow(_:)(42);

  swift_beginAccess();
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v1, v2);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0xD000000000000027;
}

unint64_t lazy protocol witness table accessor for type RaceAlerts and conformance RaceAlerts()
{
  result = lazy protocol witness table cache variable for type RaceAlerts and conformance RaceAlerts;
  if (!lazy protocol witness table cache variable for type RaceAlerts and conformance RaceAlerts)
  {
    type metadata accessor for RaceAlerts();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceAlerts and conformance RaceAlerts);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RaceAlerts.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RaceAlerts.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t WorkoutDeviceType.supportsPedometer(activityType:)(void *a1)
{
  v3 = *v1;
  v4 = [a1 isIndoor];
  v5 = ([a1 isDownhillSnowSport] & 1) == 0 && objc_msgSend(a1, sel_effectiveTypeIdentifier) != 21;
  v6 = v5 & (v4 ^ 1);
  if (v3 == 2)
  {
    v6 = 0;
  }

  if (!v3)
  {
    v5 = 1;
  }

  if (v3 <= 1)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

void static MetricPlatter.addGymKitMetrics(to:workoutSettingsManager:)(id a1@<X1>, char *a2@<X0>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 1);
  v8 = [a1 defaultMetricsProvider];
  if (!v8)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v9 = v8;
  v29 = v5;
  v30 = v6;
  v31 = a3;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v32 = MEMORY[0x277D84F90];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 32);

    do
    {
      v13 = *v12++;
      if ([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_])
      {
        MEMORY[0x20F2E6F30]();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      --v11;
    }

    while (v11);
  }

  else
  {
  }

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  swift_beginAccess();
  v16 = static MetricSlotProvider.standardMetricSlots;
  v17 = [a1 workoutActivityType];
  v18 = [v9 appendMachineMetricsToMetrics:isa maxNumMetrics:v16 activityType:v17];

  if (!v18)
  {
    goto LABEL_34;
  }

  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x20F2E7A20](v21, v19);
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v23 = *(v19 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v26 = [v23 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
      }

      v28 = *(v22 + 2);
      v27 = *(v22 + 3);
      if (v28 >= v27 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v22);
      }

      *(v22 + 2) = v28 + 1;
      *&v22[8 * v28 + 32] = v26;
      ++v21;
      if (v25 == i)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_32:

  *v31 = v29;
  *(v31 + 8) = v22;
  *(v31 + 1) = v30;
}

WorkoutCore::RaceRoute __swiftcall RaceRoute.init(locations:)(Swift::OpaquePointer locations)
{
  v2 = v1;
  v3 = specialized _arrayConditionalCast<A, B>(_:)(locations._rawValue, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);

  v5 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v25 = &v23 - v12;
  v13 = *(a1 + 16);
  v27 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
  v14 = v27;
  if (v13)
  {
    v15 = a1 + 32;
    v23 = v5;
    v24 = (v7 + 56);
    v16 = (v7 + 32);
    while (1)
    {
      outlined init with copy of Any(v15, v26);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v24)(v5, 0, 1, v6);
      v17 = *v16;
      v18 = v25;
      (*v16)(v25, v5, v6);
      v17(v11, v18, v6);
      v27 = v14;
      v19 = v11;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
        v14 = v27;
      }

      *(v14 + 16) = v21 + 1;
      v17((v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21), v19, v6);
      v15 += 32;
      --v13;
      v11 = v19;
      v5 = v23;
      if (!v13)
      {
        return v14;
      }
    }

    (*v24)(v5, 1, 1, v6);
    outlined destroy of UUID?(v5);
    return 0;
  }

  return v14;
}

{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
}

{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for RaceRoute(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RaceRoute(uint64_t result, int a2, int a3)
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

uint64_t specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1)
{
  v10 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2E7A20](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = *(v10 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v7 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __CocoaSet.count.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return v10;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v11 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v6)
  {
    return v11;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v10);
    type metadata accessor for FIUIWorkoutActivityType(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v8 = *(v11 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v6)
    {
      return v11;
    }
  }

  return 0;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for kMGQWatchAppButtonCapability()
{
  result = MEMORY[0x20F2E6C00](0xD000000000000018, 0x800000020B459150);
  static MobileGestaltConstants.kMGQWatchAppButtonCapability = result;
  return result;
}

id static MobileGestaltConstants.kMGQWatchAppButtonCapability.getter()
{
  if (one-time initialization token for kMGQWatchAppButtonCapability != -1)
  {
    swift_once();
  }

  v1 = static MobileGestaltConstants.kMGQWatchAppButtonCapability;

  return v1;
}

uint64_t getEnumTagSinglePayload for MobileGestaltConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MobileGestaltConstants(_WORD *result, int a2, int a3)
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

WorkoutCore::WorkoutNotification::NotificationType_optional __swiftcall WorkoutNotification.NotificationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutNotification.NotificationType.init(rawValue:), v3);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t WorkoutNotification.NotificationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C61767265746E69;
  v3 = 0x697263736E617274;
  if (v1 != 6)
  {
    v3 = 1701736314;
  }

  v4 = 0x706D6F4365636172;
  if (v1 != 4)
  {
    v4 = 0x647261646E617473;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F7473656C696DLL;
  if (v1 != 2)
  {
    v5 = 0x6D6F437265636170;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutNotification.NotificationType(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6C61767265746E69;
  v5 = 0xEA00000000007470;
  v6 = 0x697263736E617274;
  if (v2 != 6)
  {
    v6 = 1701736314;
    v5 = 0xE400000000000000;
  }

  v7 = 0xEC0000006574656CLL;
  v8 = 0x706D6F4365636172;
  if (v2 != 4)
  {
    v8 = 0x647261646E617473;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000065;
  v10 = 0x6E6F7473656C696DLL;
  if (v2 != 2)
  {
    v10 = 0x6D6F437265636170;
    v9 = 0xED00006574656C70;
  }

  if (*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000020B454400;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t WorkoutNotification.notificationType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t WorkoutNotification.notificationType.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t key path setter for WorkoutNotification.units : WorkoutNotification(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t WorkoutNotification.units.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t WorkoutNotification.units.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double WorkoutNotification.displayDuration.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t WorkoutNotification.displayDuration.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for WorkoutNotification.createdAt : WorkoutNotification@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for WorkoutNotification.createdAt : WorkoutNotification(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t WorkoutNotification.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t WorkoutNotification.createdAt.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

char *WorkoutNotification.description.getter()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 91;
  v42 = 0xE100000000000000;
  v6 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v33 = *(v0 + v6);
    }

    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  v38 = v0;
  v39 = v5;
  if (!v8)
  {
    goto LABEL_31;
  }

  v40 = MEMORY[0x277D84F90];

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v35 = v2;
    v36 = v1;
    v11 = 0;
    v9 = v40;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F2E7A20](v11, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v11 + 32);
      }

      swift_beginAccess();
      v13 = *(v12 + 16);

      v14 = 0xEE0065636E656461;
      v15 = 0x4365676172657661;
      switch(v13)
      {
        case 1:
          v15 = 0x5065676172657661;
          goto LABEL_23;
        case 2:
          v15 = 0x5065676172657661;
          v14 = 0xEC0000007265776FLL;
          break;
        case 3:
          v14 = 0xE700000000000000;
          v15 = 0x65636E65646163;
          break;
        case 4:
          v14 = 0xE800000000000000;
          v15 = 0x65636E6174736964;
          break;
        case 5:
          v14 = 0xE600000000000000;
          v15 = 0x796772656E65;
          break;
        case 6:
          v14 = 0xE700000000000000;
          v15 = 0x676E6964616568;
          break;
        case 7:
          v14 = 0xE900000000000065;
          v15 = 0x7461527472616568;
          break;
        case 8:
          v14 = 0xE500000000000000;
          v15 = 0x6567616D69;
          break;
        case 9:
          v14 = 0xE400000000000000;
          v15 = 1701011824;
          break;
        case 10:
          v15 = 0x6874695765636170;
          v14 = 0xEE0053504774756FLL;
          break;
        case 11:
          v14 = 0xE500000000000000;
          v15 = 0x7265776F70;
          break;
        case 12:
          v14 = 0xE800000000000000;
          v15 = 0x656D695465636172;
          break;
        case 13:
          v15 = 0x50676E696C6C6F72;
LABEL_23:
          v14 = 0xEB00000000656361;
          break;
        case 14:
          v14 = 0xE500000000000000;
          v15 = 0x74696C7073;
          break;
        case 15:
          v14 = 0xE600000000000000;
          v15 = 0x676E69727473;
          break;
        case 16:
          v14 = 0xE400000000000000;
          v15 = 1701669236;
          break;
        default:
          break;
      }

      v40 = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v9 = v40;
      }

      ++v11;
      *(v9 + 16) = v17 + 1;
      v18 = v9 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
    }

    while (v8 != v11);

    v1 = v36;
    v2 = v35;
LABEL_31:
    v40 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v20;

    MEMORY[0x20F2E6D80](v19, v21);

    MEMORY[0x20F2E6D80](93, 0xE100000000000000);
    v23 = v41;
    v22 = v42;
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v43 = v41;
    v44 = v42;
    MEMORY[0x20F2E6D80](60, 0xE100000000000000);
    v24 = _typeName(_:qualified:)();
    MEMORY[0x20F2E6D80](v24);

    MEMORY[0x20F2E6D80](0x203A6570797420, 0xE700000000000000);
    v25 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
    v26 = v38;
    swift_beginAccess();
    LOBYTE(v40) = *(v26 + v25);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0x3A7374696E75202CLL, 0xE900000000000020);
    MEMORY[0x20F2E6D80](v23, v22);

    MEMORY[0x20F2E6D80](0x697461727564202CLL, 0xEC000000203A6E6FLL);
    v27 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
    swift_beginAccess();
    v28 = *(v26 + v27);
    Double.write<A>(to:)();
    MEMORY[0x20F2E6D80](0x657461657263202CLL, 0xED0000203A744164);
    v29 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
    swift_beginAccess();
    v30 = v26 + v29;
    v31 = v39;
    (*(v2 + 16))(v39, v30, v1);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v32);

    (*(v2 + 8))(v31, v1);
    MEMORY[0x20F2E6D80](62, 0xE100000000000000);
    return v43;
  }

  __break(1u);
  return result;
}

id WorkoutNotification.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutNotification.init()()
{
  static Date.now.getter();
  v0[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType] = 5;
  *&v0[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutNotification();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WorkoutNotification.__allocating_init(units:notificationType:displayDuration:)(uint64_t a1, _BYTE *a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  LOBYTE(a2) = *a2;
  static Date.now.getter();
  v7[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType] = a2;
  *&v7[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units] = a1;
  *&v7[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id WorkoutNotification.init(units:notificationType:displayDuration:)(uint64_t a1, char *a2, double a3)
{
  v6 = *a2;
  static Date.now.getter();
  v3[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType] = v6;
  *&v3[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units] = a1;
  *&v3[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WorkoutNotification();
  return objc_msgSendSuper2(&v8, sel_init);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutNotification.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutNotification.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutNotification.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutNotification.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutNotification.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutNotification.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7374696E75;
  v4 = 0xEF6E6F6974617275;
  v5 = 0x4479616C70736964;
  if (*v1 != 2)
  {
    v5 = 0x4164657461657263;
    v4 = 0xE900000000000074;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000020B454460;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance WorkoutNotification.CodingKeys()
{
  v1 = 0x7374696E75;
  v2 = 0x4479616C70736964;
  if (*v0 != 2)
  {
    v2 = 0x4164657461657263;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkoutNotification.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutNotification.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutNotification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutNotification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *WorkoutNotification.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v30 = type metadata accessor for Date();
  v28 = *(v30 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D12NotificationC10CodingKeys33_8DEBBB2F0B07F4632E4FD2278137350ELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D12NotificationC10CodingKeys33_8DEBBB2F0B07F4632E4FD2278137350ELLOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v29 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
  static Date.now.getter();
  v14 = a1[3];
  v13 = a1[4];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v16 = v30;
    __swift_destroy_boxed_opaque_existential_1(v27);
    (*(v28 + 8))(&v3[v29], v16);
    type metadata accessor for WorkoutNotification();
    v17 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
    v18 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = v7;
    LOBYTE(v32) = 0;
    v15._countAndFlagsBits = KeyedDecodingContainer.decode(_:forKey:)();
    WorkoutNotification.NotificationType.init(rawValue:)(v15);
    v20 = v32;
    if (v32 == 8)
    {
      v20 = 5;
    }

    v3[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16NotificationUnitCGMd, &_sSay11WorkoutCore0A16NotificationUnitCGMR);
    v33 = 1;
    lazy protocol witness table accessor for type [WorkoutNotificationUnit] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutNotificationUnit] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = v30;
    *&v3[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units] = v32;
    LOBYTE(v32) = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v3[OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration] = v22;
    LOBYTE(v32) = 3;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v23 = v26;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v9 + 8))(v12, v8);
    v24 = v29;
    swift_beginAccess();
    (*(v28 + 40))(&v3[v24], v23, v21);
    swift_endAccess();
    v25 = type metadata accessor for WorkoutNotification();
    v31.receiver = v3;
    v31.super_class = v25;
    v3 = objc_msgSendSuper2(&v31, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  return v3;
}

uint64_t WorkoutNotification.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D12NotificationC10CodingKeys33_8DEBBB2F0B07F4632E4FD2278137350ELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D12NotificationC10CodingKeys33_8DEBBB2F0B07F4632E4FD2278137350ELLOGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutNotification.CodingKeys and conformance WorkoutNotification.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_notificationType;
  swift_beginAccess();
  *(v3 + v15);
  *(v3 + v15);
  *(v3 + v15);
  v28 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {

    v17 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_units;
    swift_beginAccess();
    v27 = *(v3 + v17);
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16NotificationUnitCGMd, &_sSay11WorkoutCore0A16NotificationUnitCGMR);
    lazy protocol witness table accessor for type [WorkoutNotificationUnit] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutNotificationUnit] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
    swift_beginAccess();
    v19 = *(v3 + v18);
    v26 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
    swift_beginAccess();
    v21 = v24;
    v22 = v3 + v20;
    v23 = v25;
    (*(v24 + 16))(v8, v22, v25);
    v29 = 3;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v21 + 8))(v8, v23);
    return (*(v10 + 8))(v13, v9);
  }
}