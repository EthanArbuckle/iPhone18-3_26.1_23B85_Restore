void specialized static GuidedActivityTypesMigrator.migrateGuidedActivityTypesIfNeeded(with:)(void (*a1)(id))
{
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = MEMORY[0x20F2E6C00](0xD00000000000001CLL, 0x800000020B469D30);
  v5 = [v3 BOOLForKey_];

  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.activityPicker);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5 ^ 1;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[GuidedActivityTypesMigrator] migrateGuidedActivityTypesIfNeeded: %{BOOL}d", v9, 8u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  if (v5)
  {
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v10))
    {
      goto LABEL_15;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "[GuidedActivityTypesMigrator] isFeaturedTileHidden already migrated";
    v13 = v10;
    v14 = oslog;
    v15 = v11;
    v16 = 2;
    goto LABEL_14;
  }

  v17 = [v2 standardUserDefaults];
  v18 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B469D50);
  v19 = [v17 BOOLForKey_];

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v19;
    _os_log_impl(&dword_20AEA4000, v20, v21, "[GuidedActivityTypesMigrator] migrating isFeaturedTileHidden: %{BOOL}d", v22, 8u);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

  if (v19)
  {
    specialized static GuidedActivityTypesMigrator.hide(mediaType:with:)(1, a1);
    specialized static GuidedActivityTypesMigrator.hide(mediaType:with:)(0, a1);
  }

  v23 = [v2 standardUserDefaults];
  v24 = MEMORY[0x20F2E6C00](0xD00000000000001CLL, 0x800000020B469D30);
  [v23 setBool:1 forKey:v24];

  oslog = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v25))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v19;
    v12 = "[GuidedActivityTypesMigrator] migrated  isFeaturedTileHidden: %{BOOL}d";
    v13 = v25;
    v14 = oslog;
    v15 = v11;
    v16 = 8;
LABEL_14:
    _os_log_impl(&dword_20AEA4000, v14, v13, v12, v15, v16);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

LABEL_15:
}

id DataLinkHealthKitClientConnection.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier;
  v2 = *MEMORY[0x277D767B0];
  if (*&v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier] != *MEMORY[0x277D767B0])
  {
    v3 = [objc_opt_self() sharedApplication];
    [v3 endBackgroundTask_];

    *&v0[v1] = v2;
  }

  v4 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didFailTaskIdentifier;
  if (*&v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didFailTaskIdentifier] != v2)
  {
    v5 = [objc_opt_self() sharedApplication];
    [v5 endBackgroundTask_];

    *&v0[v4] = v2;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for DataLinkHealthKitClientConnection();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t DataLinkHealthKitClientConnection.activateLink(started:activated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v12 = *(v24 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v18 = v23;
  v17[4] = a2;
  v17[5] = v18;
  v17[6] = a4;
  aBlock[4] = partial apply for closure #1 in DataLinkHealthKitClientConnection.activateLink(started:activated:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_84;
  v19 = _Block_copy(aBlock);
  v20 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v15, v11, v19);
  _Block_release(v19);

  (*(v25 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v24);
}

uint64_t closure #1 in DataLinkHealthKitClientConnection.activateLink(started:activated:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.dataLink);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = *&v9[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_store];
    *(v12 + 4) = v14;
    *v13 = v14;
    v15 = v14;
    _os_log_impl(&dword_20AEA4000, v10, v11, "We are setting our remote session handler in %@", v12, 0xCu);
    outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v13, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v18 = &v9[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
  v19 = *&v9[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
  v20 = *&v9[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler + 8];
  *v18 = partial apply for closure #1 in closure #1 in DataLinkHealthKitClientConnection.activateLink(started:activated:);
  v18[1] = v17;

  _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v19);

  v21 = *&v9[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_store];
  v22 = *v18;
  v23 = v18[1];
  if (*v18)
  {
    v28[4] = *v18;
    v28[5] = v23;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 1107296256;
    v28[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession) -> ();
    v28[3] = &block_descriptor_91_1;
    v24 = _Block_copy(v28);
    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession) -> ())?(v22);
    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession) -> ())?(v22);
  }

  else
  {
    v25 = v18[1];
    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession) -> ())?(0);
    v24 = 0;
  }

  [v21 setWorkoutSessionMirroringStartHandler_];
  _Block_release(v24);
  v26 = _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v22);
  return a4(v26);
}

void closure #1 in closure #1 in DataLinkHealthKitClientConnection.activateLink(started:activated:)(void *a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session);
    *(Strong + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session) = a1;
    v8 = a1;

    [v8 setDelegate_];
    v9 = *&v6[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_presenceHandler];
    if (v9)
    {
      v10 = *&v6[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_presenceHandler + 8];

      v9(1, closure #1 in closure #1 in closure #1 in DataLinkHealthKitClientConnection.activateLink(started:activated:), 0);
      _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v9);
    }

    a3(0);
  }
}

void closure #1 in closure #1 in closure #1 in DataLinkHealthKitClientConnection.activateLink(started:activated:)()
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
    _os_log_impl(&dword_20AEA4000, oslog, v1, "activateLink: set presenceHandler to true completed", v2, 2u);
    MEMORY[0x20F2E9420](v2, -1, -1);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t DataLinkHealthKitClientConnection.sendCommand(_:sequence:closure:)(unsigned __int8 *a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v7 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 1, 1, v13);
  v15 = &v11[*(v8 + 28)];
  UnknownStorage.init()();
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v11, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  *v11 = v12;
  v11[8] = 1;
  swift_storeEnumTagMultiPayload();
  v14(v11, 0, 1, v13);
  DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:)(v11, a3, a4);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v11, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
}

void DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session);
  if (v6)
  {
    type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
    _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
    v7 = v6;
    v14 = Message.serializedData(partial:)();
    v16 = v15;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.dataLink);
    outlined copy of Data._Representation(v14, v16);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      outlined consume of Data._Representation(v14, v16);
LABEL_25:

      isa = Data._bridgeToObjectiveC()().super.isa;
      v28 = swift_allocObject();
      *(v28 + 16) = a2;
      *(v28 + 24) = a3;
      aBlock[4] = partial apply for closure #1 in DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:);
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_78_0;
      v29 = _Block_copy(aBlock);

      [v7 sendDataToRemoteWorkoutSession:isa completion:v29];

      _Block_release(v29);
      outlined consume of Data._Representation(v14, v16);
      return;
    }

    v20 = swift_slowAlloc();
    *v20 = 134217984;
    v21 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v21 != 2)
      {
        v22 = 0;
        goto LABEL_24;
      }

      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (!v25)
      {
        goto LABEL_24;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v22 = BYTE6(v16);
LABEL_24:
      *(v20 + 4) = v22;
      v26 = v20;
      outlined consume of Data._Representation(v14, v16);
      _os_log_impl(&dword_20AEA4000, v18, v19, "Sending data of size %ld", v26, 0xCu);
      MEMORY[0x20F2E9420](v26, -1, -1);
      goto LABEL_25;
    }

    LODWORD(v22) = HIDWORD(v14) - v14;
    if (!__OFSUB__(HIDWORD(v14), v14))
    {
      v22 = v22;
      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.dataLink);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Can't send command if we don't have a session", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    lazy protocol witness table accessor for type DataLinkConnectionCommandError and conformance DataLinkConnectionCommandError();
    v12 = swift_allocError();
    *v13 = 0;
    a2(0, v12);
  }
}

void closure #1 in DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:)(int a1, id a2, void (*a3)(void))
{
  if (a2)
  {
    v5 = a2;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.dataLink);
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Error sending data: %@", v10, 0xCu);
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    lazy protocol witness table accessor for type DataLinkConnectionCommandError and conformance DataLinkConnectionCommandError();
    v14 = swift_allocError();
    *v15 = a2;
    v16 = a2;
    (a3)(0, v14);
  }

  else
  {
    a3(1);
  }
}

void DataLinkHealthKitClientConnection.sendCurrentKnownSequences()()
{
  v2 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v90 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = (&v82 - v11);
  v12 = type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = MEMORY[0x28223BE20](v14);
  v18 = &v82 - v17;
  v19 = *(v0 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session);
  if (!v19)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static WOLog.dataLink);
    v93 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v93, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_20AEA4000, v93, v63, "Can't send reset if we don't have a session", v64, 2u);
      MEMORY[0x20F2E9420](v64, -1, -1);
    }

    v65 = v93;

    return;
  }

  v82 = v7;
  v83 = v6;
  v86 = v16;
  v87 = v2;
  v88 = v5;
  v84 = MEMORY[0x277D84F90];
  *v18 = MEMORY[0x277D84F90];
  v20 = *(v15 + 20);
  v85 = v19;
  v91 = v18;
  UnknownStorage.init()();
  v21 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_knownSequences;
  swift_beginAccess();
  v22 = *(v0 + v21);
  v23 = v22 + 8;
  v24 = 1 << LOBYTE(v22[4].isa);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  isa = v25 & v22[8].isa;
  v27 = (v24 + 63) >> 6;

  p_cache = &OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider.cache;
  *&v29 = 136446210;
  v92 = v29;
  v93 = v22;
  v30 = 0;
  if (isa)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      swift_once();
      v54 = type metadata accessor for Logger();
      __swift_project_value_buffer(v54, static WOLog.dataLink);
      v55 = v18;
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 138412290;
        v60 = v18;
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v58 + 4) = v61;
        *v59 = v61;
        _os_log_impl(&dword_20AEA4000, v56, v57, "Failed to send reset: %@", v58, 0xCu);
        outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v59, -1, -1);
        MEMORY[0x20F2E9420](v58, -1, -1);
      }

      goto LABEL_50;
    }

    if (v31 >= v27)
    {
      break;
    }

    isa = v23[v31].isa;
    ++v30;
    if (isa)
    {
      while (1)
      {
        v32 = __clz(__rbit64(isa));
        isa &= isa - 1;
        v33 = v32 | (v31 << 6);
        v34 = v22[6].isa + 16 * v33;
        v18 = *v34;
        v35 = *(v34 + 8);
        if (v35 == 1 && ((1 << v18) & 0x30001) == 0)
        {
          v45 = *(v22[7].isa + v33);
          v46 = v89;
          *v89 = 0;
          *(v46 + 8) = 1;
          v47 = v46 + *(v83 + 24);
          UnknownStorage.init()();
          *v46 = v18;
          *(v46 + 8) = 1;
          *(v46 + 3) = v45;
          outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v46, v90, type metadata accessor for Apple_Workout_Core_PublisherSequence);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v84 + 2) + 1, 1, v84);
          }

          v18 = *(v84 + 2);
          v48 = *(v84 + 3);
          if (v18 >= v48 >> 1)
          {
            v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v18 + 1, 1, v84);
          }

          _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v89, type metadata accessor for Apple_Workout_Core_PublisherSequence);
          v49 = v84;
          *(v84 + 2) = v18 + 1;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v90, v49 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v18, type metadata accessor for Apple_Workout_Core_PublisherSequence);
          v91->isa = v49;
          v22 = v93;
          v30 = v31;
          if (!isa)
          {
            goto LABEL_8;
          }
        }

        else
        {
          if (p_cache[310] != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static WOLog.dataLink);
          v37 = Logger.logObject.getter();
          v1 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v37, v1))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v100 = v39;
            *v38 = v92;
            aBlock = v18;
            LOBYTE(v95) = v35;
            v40 = String.init<A>(describing:)();
            v18 = v41;
            v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v100);

            *(v38 + 4) = v42;
            _os_log_impl(&dword_20AEA4000, v37, v1, "Skipping sequence rest for publisher %{public}s", v38, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v39);
            v43 = v39;
            p_cache = (&OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider + 16);
            MEMORY[0x20F2E9420](v43, -1, -1);
            v44 = v38;
            v22 = v93;
            MEMORY[0x20F2E9420](v44, -1, -1);
          }

          v30 = v31;
          if (!isa)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v31 = v30;
      }
    }
  }

  v50 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v51 = *(*(v50 - 8) + 56);
  v1 = v88;
  v51(v88, 1, 1, v50);
  v52 = v1 + *(v87 + 20);
  UnknownStorage.init()();
  v23 = v91;
  v53 = v86;
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v91, v86, type metadata accessor for Apple_Workout_Core_SequenceReset);
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v1, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v53, v1, type metadata accessor for Apple_Workout_Core_SequenceReset);
  swift_storeEnumTagMultiPayload();
  v51(v1, 0, 1, v50);
  _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  v66 = Message.serializedData(partial:)();
  v68 = v67;
  if (p_cache[310] != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  __swift_project_value_buffer(v69, static WOLog.dataLink);
  outlined copy of Data._Representation(v66, v68);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v70, v71))
  {
    outlined consume of Data._Representation(v66, v68);
LABEL_49:

    v79 = Data._bridgeToObjectiveC()().super.isa;
    v98 = closure #1 in DataLinkHealthKitClientConnection.sendCurrentKnownSequences();
    v99 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v95 = 1107296256;
    v96 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v97 = &block_descriptor_72_0;
    v80 = _Block_copy(&aBlock);
    v81 = v85;
    [v85 sendDataToRemoteWorkoutSession:v79 completion:v80];
    _Block_release(v80);

    outlined consume of Data._Representation(v66, v68);
LABEL_50:
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v1, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v23, type metadata accessor for Apple_Workout_Core_SequenceReset);
    return;
  }

  v72 = swift_slowAlloc();
  *v72 = 134217984;
  v73 = v68 >> 62;
  if ((v68 >> 62) > 1)
  {
    if (v73 == 2)
    {
      v76 = *(v66 + 16);
      v75 = *(v66 + 24);
      v77 = __OFSUB__(v75, v76);
      v74 = v75 - v76;
      if (v77)
      {
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      v74 = 0;
    }

LABEL_48:
    *(v72 + 4) = v74;
    v78 = v72;
    outlined consume of Data._Representation(v66, v68);
    _os_log_impl(&dword_20AEA4000, v70, v71, "Sending data of size %ld", v78, 0xCu);
    MEMORY[0x20F2E9420](v78, -1, -1);
    goto LABEL_49;
  }

  if (!v73)
  {
    v74 = BYTE6(v68);
    goto LABEL_48;
  }

LABEL_45:
  LODWORD(v74) = HIDWORD(v66) - v66;
  if (!__OFSUB__(HIDWORD(v66), v66))
  {
    v74 = v74;
    goto LABEL_48;
  }

  __break(1u);
}

void closure #1 in DataLinkHealthKitClientConnection.sendCurrentKnownSequences()(int a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.dataLink);
    v5 = a2;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_20AEA4000, oslog, v6, "Error sending data: %@", v7, 0xCu);
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v8, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);

      v11 = oslog;
    }

    else
    {

      v11 = a2;
    }
  }
}

id DataLinkHealthKitClientConnection.init()()
{
  *&v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_mirroredClientDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_store;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v2 = static WorkoutCoreInjector.healthStore;
  *&v0[v1] = static WorkoutCoreInjector.healthStore;
  *&v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session] = 0;
  v3 = &v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_metricsUpdater];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_notificationHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_presenceHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_knownSequences;
  v8 = v2;
  *&v0[v7] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore06Apple_c1_D13_PublisherKeyO_s6UInt32VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v9 = *MEMORY[0x277D767B0];
  *&v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier] = *MEMORY[0x277D767B0];
  *&v0[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didFailTaskIdentifier] = v9;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for DataLinkHealthKitClientConnection();
  return objc_msgSendSuper2(&v11, sel_init);
}

void DataLinkHealthKitClientConnection.workoutSession(_:didFailWithError:)(void *a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.dataLink);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v83 = v7;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    aBlock[0] = v81;
    *v11 = 136315650;
    v13 = v7;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, aBlock);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2080;
    v86 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v19 = Optional.description.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, aBlock);

    *(v11 + 14) = v21;
    *(v11 + 22) = 2112;
    v22 = [objc_opt_self() currentThread];
    *(v11 + 24) = v22;
    *v12 = v22;
    _os_log_impl(&dword_20AEA4000, v9, v10, "workoutSession (%s) didFailWithError: %s, thread: %@", v11, 0x20u);
    outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v81, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  v23 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session];
  *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session] = 0;

  v24 = &v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
  v25 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
  v26 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler + 8];
  *v24 = 0;
  *(v24 + 1) = 0;
  _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v25);
  v27 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_presenceHandler];
  if (v27)
  {
    v28 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_presenceHandler + 8];
    v29 = objc_opt_self();

    v30 = [v29 sharedApplication];
    v31 = MEMORY[0x20F2E6C00](0xD000000000000020, 0x800000020B469EB0);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = v83;
    v33[4] = a2;
    aBlock[4] = partial apply for closure #1 in DataLinkHealthKitClientConnection.workoutSession(_:didFailWithError:);
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_65_0;
    v34 = _Block_copy(aBlock);
    v35 = v83;
    v36 = a2;

    v37 = [v30 beginBackgroundTaskWithName:v31 expirationHandler:v34];
    _Block_release(v34);

    v38 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didFailTaskIdentifier;
    *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didFailTaskIdentifier] = v37;
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = v35;
    v40[4] = a2;
    v41 = v35;
    v42 = a2;

    v27(0, partial apply for closure #2 in DataLinkHealthKitClientConnection.workoutSession(_:didFailWithError:), v40);

    v43 = v3;
    v44 = v41;
    v45 = a2;
    v46 = v43;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v80 = v48;
      v49 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      aBlock[0] = v84;
      *v49 = 136315906;
      v50 = v44;
      v51 = [v50 description];
      v82 = v27;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v38;
      v55 = v54;

      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v55, aBlock);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2048;
      v57 = *&v3[v53];

      *(v49 + 14) = v57;
      *(v49 + 22) = 2080;
      v86 = a2;
      v58 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v59 = String.init<A>(describing:)();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, aBlock);

      *(v49 + 24) = v61;
      *(v49 + 32) = 2112;
      v62 = [objc_opt_self() currentThread];
      *(v49 + 34) = v62;
      *v79 = v62;
      _os_log_impl(&dword_20AEA4000, v47, v80, "workoutSession (%s) started background task (%ld) didFailWithError: %s, thread: %@", v49, 0x2Au);
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v79, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v79, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v84, -1, -1);
      MEMORY[0x20F2E9420](v49, -1, -1);
      v63 = v82;
    }

    else
    {

      v63 = v27;
    }

    _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v63);
  }

  else
  {
    v64 = v83;
    v65 = a2;
    v47 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      aBlock[0] = v68;
      *v67 = 136315394;
      v69 = v64;
      v70 = [v69 description];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, aBlock);

      *(v67 + 4) = v74;
      *(v67 + 12) = 2080;
      v86 = a2;
      v75 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v76 = String.init<A>(describing:)();
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, aBlock);

      *(v67 + 14) = v78;
      _os_log_impl(&dword_20AEA4000, v47, v66, "workoutSession (%s) didFailWithError: %s, presenceHandler is not set", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v68, -1, -1);
      MEMORY[0x20F2E9420](v67, -1, -1);
    }
  }
}

void closure #1 in DataLinkHealthKitClientConnection.workoutSession(_:didFailWithError:)(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void), char *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.dataLink);
    v12 = v10;
    v13 = a2;
    v14 = a3;
    v15 = Logger.logObject.getter();
    v16 = a4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v17 = 136315906;
      v19 = v13;
      v20 = [v19 description];
      format = a5;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v35);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2048;
      v25 = *&v12[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didFailTaskIdentifier];

      *(v17 + 14) = v25;
      *(v17 + 22) = 2080;
      v26 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v35);

      *(v17 + 24) = v29;
      *(v17 + 32) = 2112;
      v30 = [objc_opt_self() currentThread];
      *(v17 + 34) = v30;
      *v18 = v30;
      _os_log_impl(&dword_20AEA4000, v15, v16, format, v17, 0x2Au);
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v18, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v34, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    else
    {
    }

    v31 = [objc_opt_self() sharedApplication];
    v32 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didFailTaskIdentifier;
    [v31 endBackgroundTask_];

    *&v12[v32] = *MEMORY[0x277D767B0];
  }
}

uint64_t DataLinkHealthKitClientConnection.workoutSession(_:didReceiveDataFromRemoteDevice:)(void *a1, uint64_t a2, unint64_t a3)
{
  v104 = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v88 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v90 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v95 = &v83 - v21;
  v22 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v93 = *(v22 - 8);
  v94 = v22;
  v23 = *(v93 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v92 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v83 - v26;
  v28 = type metadata accessor for BinaryDecodingOptions();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v98 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v31 = *(*(v97 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v97);
  v34 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v83 - v35;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v99 = v34;
  v37 = type metadata accessor for Logger();
  v38 = __swift_project_value_buffer(v37, static WOLog.dataLink);
  outlined copy of Data._Representation(a2, a3);
  outlined copy of Data._Representation(a2, a3);
  v39 = a1;
  v96 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v40, v41))
  {
    outlined consume of Data._Representation(a2, a3);
    outlined consume of Data._Representation(a2, a3);

    goto LABEL_17;
  }

  v87 = v9;
  v85 = v27;
  v86 = v36;
  v42 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  *&v100[0] = v43;
  *v42 = 136315394;
  v84 = v39;
  v44 = v39;
  v45 = [v44 description];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v100);

  *(v42 + 4) = v49;
  *(v42 + 12) = 2048;
  v50 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v50 != 2)
    {
      outlined consume of Data._Representation(a2, a3);
      v51 = 0;
      goto LABEL_15;
    }

    v53 = *(a2 + 16);
    v52 = *(a2 + 24);
    outlined consume of Data._Representation(a2, a3);
    v51 = v52 - v53;
    v9 = v87;
    if (!__OFSUB__(v52, v53))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_12:
    outlined consume of Data._Representation(a2, a3);
    LODWORD(v51) = HIDWORD(a2) - a2;
    v9 = v87;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
    }

    v51 = v51;
    goto LABEL_16;
  }

  if (v50)
  {
    goto LABEL_12;
  }

  outlined consume of Data._Representation(a2, a3);
  v51 = BYTE6(a3);
LABEL_15:
  v9 = v87;
LABEL_16:
  v39 = v84;
  *(v42 + 14) = v51;
  outlined consume of Data._Representation(a2, a3);
  _os_log_impl(&dword_20AEA4000, v40, v41, "workoutSession (%s) didReceiveDataFromRemoteDevice: (%ld bytes)", v42, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v43);
  MEMORY[0x20F2E9420](v43, -1, -1);
  MEMORY[0x20F2E9420](v42, -1, -1);

  v36 = v86;
  v27 = v85;
LABEL_17:
  v54.super.isa = Data._bridgeToObjectiveC()().super.isa;
  *&v100[0] = 0;
  v55 = [(objc_class *)v54.super.isa decompressedDataUsingAlgorithm:0 error:v100];
  v56 = *&v100[0];
  if (v55)
  {
    a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;
  }

  else
  {
    v59 = v56;
    v60 = _convertNSErrorToError(_:)();
    v87 = a3;
    v61 = v39;
    v62 = v60;

    swift_willThrow();
    v63 = v62;
    v39 = v61;
    v58 = v87;

    outlined copy of Data._Representation(a2, v58);
  }

  v102 = a2;
  v103 = v58;
  v101 = 0;
  memset(v100, 0, sizeof(v100));
  outlined copy of Data._Representation(a2, v58);
  BinaryDecodingOptions.init()();
  _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  v64 = v99;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v64, v36, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  v65 = v95;
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v36, v95, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  if ((*(v93 + 48))(v65, 1, v94) != 1)
  {
    outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v65, v27, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    v67 = v92;
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v27, v92, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v69 = v89;
        outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v67, v89, type metadata accessor for Apple_Workout_Core_MetricsDelta);
        DataLinkHealthKitClientConnection.handleDeltaMetricsUpdate(_:workoutSession:)(v69, v39);

        outlined consume of Data._Representation(a2, v58);
        v70 = type metadata accessor for Apple_Workout_Core_MetricsDelta;
        goto LABEL_35;
      }

      if (EnumCaseMultiPayload != 5)
      {
LABEL_29:
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_20AEA4000, v72, v73, "Ignoring unexpected message", v74, 2u);
          MEMORY[0x20F2E9420](v74, -1, -1);
        }

        outlined consume of Data._Representation(a2, v58);
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v27, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v36, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
        v75 = v92;
        v76 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message;
        goto LABEL_40;
      }

      outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v67, v9, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
      DataLinkHealthKitClientConnection.handleMirroredHostMessage(_:)(v9);

      outlined consume of Data._Representation(a2, v58);
      v71 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v69 = v88;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v67, v88, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
          DataLinkHealthKitClientConnection.handleNotificationUpdate(_:)(v69);

          outlined consume of Data._Representation(a2, v58);
          v70 = type metadata accessor for Apple_Workout_Core_NotificationUpdate;
LABEL_35:
          v80 = v70;
          v81 = v69;
LABEL_39:
          _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v81, v80);
          _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v27, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
          v76 = type metadata accessor for Apple_Workout_Core_DataLinkMessage;
          v75 = v36;
LABEL_40:
          result = _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v75, v76);
          goto LABEL_41;
        }

        goto LABEL_29;
      }

      v9 = v90;
      outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v67, v90, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      v77 = [objc_allocWithZone(type metadata accessor for MetricsPublisher()) init];
      Apple_Workout_Core_MetricsPublisher.decodeInto(publisher:)(v77);
      v78 = *(v91 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_metricsUpdater);
      if (v78)
      {
        v79 = *(v91 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_metricsUpdater + 8);

        v78(v77);

        _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v78);
      }

      else
      {
      }

      outlined consume of Data._Representation(a2, v58);
      v71 = type metadata accessor for Apple_Workout_Core_MetricsPublisher;
    }

    v80 = v71;
    v81 = v9;
    goto LABEL_39;
  }

  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v36, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  outlined consume of Data._Representation(a2, v58);

  result = outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v65, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_41:
  v82 = *MEMORY[0x277D85DE8];
  return result;
}

void DataLinkHealthKitClientConnection.handleNotificationUpdate(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v38 - v4;
  v5 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v5);
  v40 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v41 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v19 = *(v41 + 24);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(a1 + v19, v18, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v20 = *(v9 + 48);
  v21 = v20(v18, 1, v8);
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v18, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  if (v21 != 1)
  {
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(a1 + v19, v16, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
    if (v20(v16, 1, v8) == 1)
    {
      v22 = v39;
      UnknownStorage.init()();
      v23 = *(v8 + 20);
      if (one-time initialization token for defaultInstance != -1)
      {
        swift_once();
      }

      *(v22 + v23) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
      v24 = v20(v16, 1, v8);

      if (v24 != 1)
      {
        outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v16, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
      }
    }

    else
    {
      v22 = v39;
      outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v16, v39, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    }

    v25 = [objc_allocWithZone(type metadata accessor for MetricsPublisher()) init];
    Apple_Workout_Core_MetricsPublisher.decodeInto(publisher:)(v25);
    v26 = *(v45 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_metricsUpdater);
    if (v26)
    {
      v27 = *(v45 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_metricsUpdater + 8);

      v26(v25);

      _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v26);
    }

    else
    {
    }

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v22, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  v28 = a1 + *(v41 + 20);
  v29 = v44;
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v28, v44, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v30 = v43;
  v31 = *(v42 + 48);
  if (v31(v29, 1, v43) == 1)
  {
    v32 = v40;
    *v40 = 0;
    *(v32 + 8) = 1;
    v32[2] = MEMORY[0x277D84F90];
    v32[3] = 0;
    v33 = v32 + *(v30 + 28);
    UnknownStorage.init()();
    v34 = v32 + *(v30 + 32);
    *v34 = 0;
    v34[8] = 1;
    if (v31(v29, 1, v30) != 1)
    {
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v29, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
    }
  }

  else
  {
    v32 = v40;
    outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v29, v40, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  }

  v35 = Apple_Workout_Core_WorkoutNotification.decoded.getter();
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v32, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  v36 = *(v45 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_notificationHandler);
  if (v36)
  {
    v37 = *(v45 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_notificationHandler + 8);

    v36(v35);
    _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v36);
  }
}

void DataLinkHealthKitClientConnection.handleDeltaMetricsUpdate(_:workoutSession:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v4 - 8);
  isa = v27[8].isa;
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v26);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  if ([a2 state] == 3)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.dataLink);
    v27 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20AEA4000, v27, v16, "handleDeltaMetricsUpdate: not Handling delta metrics update, workout session state is ended", v17, 2u);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    v18 = v27;
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v25 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(a1, &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Apple_Workout_Core_MetricsDelta);
    v20 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    aBlock[4] = partial apply for closure #1 in DataLinkHealthKitClientConnection.handleDeltaMetricsUpdate(_:workoutSession:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_48_1;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v25;
    MEMORY[0x20F2E7580](0, v11, v7, v22);
    _Block_release(v22);

    (v27[1].isa)(v7, v4);
    (*(v8 + 8))(v11, v26);
  }
}

void DataLinkHealthKitClientConnection.handleMirroredHostMessage(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v16 = v1 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_mirroredClientDelegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v34 = v3;
    v19 = *(v16 + 8);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(a1, v15, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v15, v13, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    v21 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v15, v22 + v21, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    v23 = (v22 + ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v23 = v18;
    v23[1] = v19;
    v24 = objc_opt_self();
    swift_unknownObjectRetain();

    if ([v24 isMainThread])
    {
      closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostMessage(_:)(v20, v13, v18, v19);
      swift_unknownObjectRelease();

      _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v13, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    }

    else
    {
      _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v13, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
      type metadata accessor for OS_dispatch_queue();
      v29 = static OS_dispatch_queue.main.getter();
      v30 = swift_allocObject();
      *(v30 + 16) = partial apply for closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostMessage(_:);
      *(v30 + 24) = v22;
      aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_10;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_58_1;
      v31 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v32 = v36;
      v33 = v34;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F2E7580](0, v8, v32, v31);
      _Block_release(v31);
      swift_unknownObjectRelease();

      (*(v38 + 8))(v32, v33);
      (*(v35 + 8))(v8, v37);
    }
  }

  else
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.dataLink);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20AEA4000, v26, v27, "[mirrored] handleMirroredHostMessage mirroredClientDelegate is not set", v28, 2u);
      MEMORY[0x20F2E9420](v28, -1, -1);
    }
  }
}

Swift::Void __swiftcall DataLinkHealthKitClientConnection.workoutSession(_:didReceiveDataFromRemoteWorkoutSession:)(HKWorkoutSession _, Swift::OpaquePointer didReceiveDataFromRemoteWorkoutSession)
{
  v3 = v2;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.dataLink);
  swift_bridgeObjectRetain_n();
  v7 = _.super.isa;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v10 = 136315394;
    v11 = v7;
    v12 = [(objc_class *)v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v24);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2048;
    v17 = *(didReceiveDataFromRemoteWorkoutSession._rawValue + 2);

    *(v10 + 14) = v17;

    _os_log_impl(&dword_20AEA4000, v8, v9, "workoutSession (%s) didReceiveDataFromRemoteWorkoutSession: (array with %ld data elements)", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x20F2E9420](v23, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);

    v18 = *(didReceiveDataFromRemoteWorkoutSession._rawValue + 2);
    if (!v18)
    {
      return;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v18 = *(didReceiveDataFromRemoteWorkoutSession._rawValue + 2);
    if (!v18)
    {
      return;
    }
  }

  v19 = (didReceiveDataFromRemoteWorkoutSession._rawValue + 40);
  do
  {
    v20 = *(v19 - 1);
    v21 = *v19;
    outlined copy of Data._Representation(v20, *v19);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v3 workoutSession:v7 didReceiveDataFromRemoteDevice:isa];

    outlined consume of Data._Representation(v20, v21);
    v19 += 2;
    --v18;
  }

  while (v18);
}

uint64_t DataLinkHealthKitClientConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:)(void *a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.dataLink);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v87 = v7;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    aBlock[0] = v86;
    *v11 = 136315650;
    v13 = v7;
    v14 = v3;
    v15 = a2;
    v16 = [v13 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    a2 = v15;
    v3 = v14;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, aBlock);

    *(v11 + 4) = v20;
    *(v11 + 12) = 2080;
    v91 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v21 = Optional.description.getter();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, aBlock);

    *(v11 + 14) = v23;
    *(v11 + 22) = 2112;
    v24 = [objc_opt_self() currentThread];
    *(v11 + 24) = v24;
    *v12 = v24;
    _os_log_impl(&dword_20AEA4000, v9, v10, "workoutSession (%s) didDisconnectFromRemoteDeviceWithError: %s, thread: %@", v11, 0x20u);
    outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v86, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  v25 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_presenceHandler];
  if (v25)
  {
    v26 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_presenceHandler + 8];
    v27 = objc_opt_self();

    v28 = [v27 sharedApplication];
    v29 = MEMORY[0x20F2E6C00](0xD000000000000036, 0x800000020B469E70);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v87;
    v31[4] = a2;
    aBlock[4] = partial apply for closure #1 in DataLinkHealthKitClientConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:);
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_76;
    v32 = _Block_copy(aBlock);
    v33 = a2;
    v34 = v87;
    v35 = v33;

    v36 = [v28 beginBackgroundTaskWithName:v29 expirationHandler:v32];
    _Block_release(v32);

    v37 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier;
    *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier] = v36;
    v38 = v3;
    v39 = v34;
    v40 = v33;
    v41 = v38;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v83 = v3;
      v44 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      aBlock[0] = v89;
      *v44 = 136315906;
      log = v42;
      v45 = v39;
      v84 = v43;
      v46 = [v45 description];
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v25;
      v50 = v49;

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v50, aBlock);
      v25 = v48;

      *(v44 + 4) = v51;
      *(v44 + 12) = 2048;
      v52 = *&v83[v37];

      *(v44 + 14) = v52;
      *(v44 + 22) = 2080;
      v91 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v53 = Optional.description.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, aBlock);

      *(v44 + 24) = v55;
      *(v44 + 32) = 2112;
      v56 = [objc_opt_self() currentThread];
      *(v44 + 34) = v56;
      *v88 = v56;
      _os_log_impl(&dword_20AEA4000, log, v84, "workoutSession (%s) started background task (%ld) didDisconnectFromRemoteDeviceWithError: %s, thread: %@", v44, 0x2Au);
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v88, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v88, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v89, -1, -1);
      MEMORY[0x20F2E9420](v44, -1, -1);
    }

    else
    {
    }

    v78 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v79 = swift_allocObject();
    v79[2] = v78;
    v79[3] = v39;
    v79[4] = v33;
    v80 = v39;
    v81 = v33;

    v25(0, partial apply for closure #2 in DataLinkHealthKitClientConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:), v79);

    v76 = v25;
  }

  else
  {
    v57 = v87;
    v58 = a2;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = v3;
      v62 = a2;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v63 = 136315394;
      v65 = v57;
      v66 = [v65 description];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, aBlock);

      *(v63 + 4) = v70;
      *(v63 + 12) = 2080;
      v91 = v62;
      v3 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v71 = Optional.description.getter();
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, aBlock);

      *(v63 + 14) = v73;
      _os_log_impl(&dword_20AEA4000, v59, v60, "workoutSession (%s) didDisconnectFromRemoteDeviceWithError: %s, presenceHandler is not set", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v64, -1, -1);
      MEMORY[0x20F2E9420](v63, -1, -1);
    }

    v74 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session];
    *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session] = 0;

    v75 = &v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
    v76 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
    v77 = *&v3[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler + 8];
    *v75 = 0;
    *(v75 + 1) = 0;
  }

  return _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v76);
}

void closure #1 in DataLinkHealthKitClientConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:)(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.dataLink);
    v8 = v6;
    v9 = a2;
    v10 = a3;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v13 = 136315906;
      v15 = v9;
      v16 = [v15 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v29);

      *(v13 + 4) = v20;
      *(v13 + 12) = 2048;
      v21 = *&v8[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier];

      *(v13 + 14) = v21;
      *(v13 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v22 = Optional.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v29);

      *(v13 + 24) = v24;
      *(v13 + 32) = 2112;
      v25 = [objc_opt_self() currentThread];
      *(v13 + 34) = v25;
      *v14 = v25;
      _os_log_impl(&dword_20AEA4000, v11, v12, "workoutSession (%s) expired background task (%ld) didDisconnectFromRemoteDeviceWithError: %s, thread: %@", v13, 0x2Au);
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v14, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v28, -1, -1);
      MEMORY[0x20F2E9420](v13, -1, -1);
    }

    else
    {
    }

    v26 = [objc_opt_self() sharedApplication];
    v27 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier;
    [v26 endBackgroundTask_];

    *&v8[v27] = *MEMORY[0x277D767B0];
  }
}

void closure #2 in DataLinkHealthKitClientConnection.workoutSession(_:didDisconnectFromRemoteDeviceWithError:)(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session);
    *(Strong + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session) = 0;

    v8 = &v6[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
    v9 = *&v6[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
    v10 = *&v6[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler + 8];
    *v8 = 0;
    *(v8 + 1) = 0;
    _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v9);
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.dataLink);
    v12 = v6;
    v13 = a2;
    v14 = a3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v17 = 136315906;
      v19 = v13;
      v20 = [v19 description];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v33);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2048;
      v25 = *&v12[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier];

      *(v17 + 14) = v25;
      *(v17 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v26 = Optional.description.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v33);

      *(v17 + 24) = v28;
      *(v17 + 32) = 2112;
      v29 = [objc_opt_self() currentThread];
      *(v17 + 34) = v29;
      *v18 = v29;
      _os_log_impl(&dword_20AEA4000, v15, v16, "workoutSession (%s) end background task (%ld) didDisconnectFromRemoteDeviceWithError: %s, thread: %@", v17, 0x2Au);
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v18, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v32, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    else
    {
    }

    v30 = [objc_opt_self() sharedApplication];
    v31 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier;
    [v30 endBackgroundTask_];

    *&v12[v31] = *MEMORY[0x277D767B0];
  }
}

void closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v51 = a2;
  v4 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  v20 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v47 - v25;
  v27 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v47 - v33;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v51, v26, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {

      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v26, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
      return;
    }

    outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v26, v34, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v34, v32, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v32, v14, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
        specialized DataLinkHealthKitClientConnection.handleMirroredHostCountdownStart(_:with:)(v14, v49, v50);

        v42 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart;
        v43 = v14;
      }

      else if (EnumCaseMultiPayload == 4)
      {
        outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v32, v10, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
        specialized DataLinkHealthKitClientConnection.handleMirroredHostAlertStackRequest(_:with:)(v10, v49, v50);

        v42 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest;
        v43 = v10;
      }

      else
      {
        v45 = v32;
        v46 = v48;
        outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v45, v48, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
        specialized DataLinkHealthKitClientConnection.handleMirroredHostSummaryUpdate(_:with:)(v46, v49, v50);

        v42 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate;
        v43 = v46;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v44 = v32[8];
        v52 = *v32;
        v53 = v44;
        specialized DataLinkHealthKitClientConnection.handleMirroredHostCommand(_:with:)(&v52, v49, v50);

LABEL_21:
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v34, type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message);
        return;
      }

      if (EnumCaseMultiPayload == 1)
      {
        outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v32, v22, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
        specialized DataLinkHealthKitClientConnection.handleMirroredHostStartConfiguration(_:with:)(v22, v49, v50);

        v42 = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration;
        v43 = v22;
      }

      else
      {
        outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v32, v18, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
        specialized DataLinkHealthKitClientConnection.handleMirroredHostMachTimestampRequest(_:with:)(v18, v49, v50);

        v42 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest;
        v43 = v18;
      }
    }

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v43, v42);
    goto LABEL_21;
  }

  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static WOLog.dataLink);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_20AEA4000, v38, v39, "[mirrored] handleMirroredHostMessage weak self is nil", v40, 2u);
    MEMORY[0x20F2E9420](v40, -1, -1);
  }
}

void closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostCommand(_:with:)(char a1, void *a2, const char *a3)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.dataLink);
  v7 = a2;
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 67109378;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2112;
    if (a2)
    {
      v11 = a2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v9 + 10) = v12;
    *v10 = v13;
    _os_log_impl(&dword_20AEA4000, oslog, v8, a3, v9, 0x12u);
    outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }
}

void closure #1 in DataLinkHealthKitClientConnection.handleDeltaMetricsUpdate(_:workoutSession:)(uint64_t a1, unint64_t a2)
{
  v454 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v3 = *(*(v454 - 8) + 64);
  MEMORY[0x28223BE20](v454);
  v5 = &v387 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v387 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v387 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v427 = &v387 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v393 = &v387 - v19;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v20 = *(*(v396 - 8) + 64);
  MEMORY[0x28223BE20](v396);
  v397 = &v387 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v426 = &v387 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v425 = &v387 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v424 = &v387 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v423 = &v387 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v422 = &v387 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v421 = &v387 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v420 = &v387 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v419 = &v387 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v418 = &v387 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v417 = &v387 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v416 = &v387 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v415 = &v387 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v414 = &v387 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v61 - 8);
  v446 = &v387 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v444 = &v387 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v443 = &v387 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v442 = &v387 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v394 = &v387 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v441 = &v387 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v440 = &v387 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v439 = &v387 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v438 = &v387 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v437 = &v387 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v436 = &v387 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v435 = &v387 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v434 = &v387 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v433 = &v387 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v432 = &v387 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v431 = &v387 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v430 = &v387 - v96;
  MEMORY[0x28223BE20](v95);
  v429 = &v387 - v97;
  v98 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v447 = *(v98 - 8);
  v99 = *(v447 + 64);
  v100 = MEMORY[0x28223BE20](v98);
  v445 = &v387 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = MEMORY[0x28223BE20](v100);
  v413 = &v387 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v412 = &v387 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v411 = &v387 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v392 = &v387 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v410 = &v387 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v409 = &v387 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v408 = &v387 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v407 = &v387 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v406 = &v387 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v405 = &v387 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v404 = &v387 - v123;
  v124 = MEMORY[0x28223BE20](v122);
  v403 = &v387 - v125;
  v126 = MEMORY[0x28223BE20](v124);
  v402 = &v387 - v127;
  v128 = MEMORY[0x28223BE20](v126);
  v401 = &v387 - v129;
  v130 = MEMORY[0x28223BE20](v128);
  v400 = &v387 - v131;
  v132 = MEMORY[0x28223BE20](v130);
  v399 = &v387 - v133;
  MEMORY[0x28223BE20](v132);
  v398 = &v387 - v134;
  v395 = type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
  v459 = *(v395 - 8);
  v135 = *(v459 + 64);
  v136 = MEMORY[0x28223BE20](v395);
  v456 = &v387 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = MEMORY[0x28223BE20](v136);
  v428 = &v387 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v450 = &v387 - v141;
  v142 = MEMORY[0x28223BE20](v140);
  v449 = &v387 - v143;
  MEMORY[0x28223BE20](v142);
  v145 = &v387 - v144;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v147 = Strong;
  v390 = v9;
  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_200;
  }

LABEL_3:
  v148 = type metadata accessor for Logger();
  v448 = __swift_project_value_buffer(v148, static WOLog.dataLink);
  v149 = Logger.logObject.getter();
  v150 = static os_log_type_t.default.getter();
  v151 = os_log_type_enabled(v149, v150);
  v452 = v145;
  if (v151)
  {
    v152 = v13;
    v153 = swift_slowAlloc();
    *v153 = 0;
    _os_log_impl(&dword_20AEA4000, v149, v150, "Handling delta metrics update", v153, 2u);
    v154 = v153;
    v13 = v152;
    v145 = v452;
    MEMORY[0x20F2E9420](v154, -1, -1);
  }

  swift_beginAccess();
  v391 = swift_unknownObjectWeakLoadStrong();
  if (!v391)
  {
    a2 = v147;
    goto LABEL_194;
  }

  v451 = a2;
  v462 = *a2;
  v458 = *(v462 + 16);
  if (!v458)
  {
    goto LABEL_177;
  }

  v387 = v13;
  v388 = v5;
  v464 = v462 + ((*(v459 + 80) + 32) & ~*(v459 + 80));
  v460 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_knownSequences;
  swift_beginAccess();
  v155 = 0;
  v453 = (v447 + 48);
  *&v156 = 67109634;
  v389 = v156;
  v5 = v451;
  v457 = v147;
  v455 = v98;
  while (1)
  {
    if (v155 >= *(v462 + 16))
    {
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      swift_once();
      goto LABEL_3;
    }

    v461 = *(v459 + 72);
    v463 = v155;
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v464 + v461 * v155, v145, type metadata accessor for Apple_Workout_Core_PublisherSequence);
    v164 = *(v147 + v460);
    if (!*(v164 + 16))
    {
      goto LABEL_20;
    }

    v165 = *(v145 + 8);
    v13 = *v145;
    v166 = *(v147 + v460);

    v167 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v165);
    if (v168)
    {
      break;
    }

LABEL_20:
    v169 = 0;
    a2 = *(v145 + 12);
LABEL_21:
    if (a2 != v169)
    {
      goto LABEL_22;
    }

LABEL_12:
    v155 = v463 + 1;
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v145, type metadata accessor for Apple_Workout_Core_PublisherSequence);
    if (v458 == v155)
    {
      v13 = *(v462 + 16);
      if (v13)
      {
        a2 = 0;
        v5 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_knownSequences;
        while (1)
        {
          if (a2 >= *(v462 + 16))
          {
            goto LABEL_197;
          }

          v336 = v456;
          outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v464, v456, type metadata accessor for Apple_Workout_Core_PublisherSequence);
          v337 = *v336;
          v145 = *(v336 + 8);
          v98 = *(v336 + 12);
          _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v336, type metadata accessor for Apple_Workout_Core_PublisherSequence);
          swift_beginAccess();
          v338 = *&v5[v147];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v467 = *&v5[v147];
          v340 = v467;
          *&v5[v147] = 0x8000000000000000;
          v341 = specialized __RawDictionaryStorage.find<A>(_:)(v337, v145);
          v343 = *(v340 + 16);
          v344 = (v342 & 1) == 0;
          v334 = __OFADD__(v343, v344);
          v345 = v343 + v344;
          if (v334)
          {
            goto LABEL_198;
          }

          v147 = v342;
          if (*(v340 + 24) < v345)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_172;
          }

          v351 = v341;
          specialized _NativeDictionary.copy()();
          v341 = v351;
          v347 = v467;
          if (v147)
          {
LABEL_164:
            *(v347[7] + 4 * v341) = v98;
            goto LABEL_165;
          }

LABEL_173:
          v347[(v341 >> 6) + 8] |= 1 << v341;
          v348 = v347[6] + 16 * v341;
          *v348 = v337;
          *(v348 + 8) = v145;
          *(v347[7] + 4 * v341) = v98;
          v349 = v347[2];
          v334 = __OFADD__(v349, 1);
          v350 = v349 + 1;
          if (v334)
          {
            goto LABEL_199;
          }

          v347[2] = v350;
LABEL_165:
          ++a2;
          v147 = v457;
          *&v5[v457] = v347;
          swift_endAccess();
          v464 += v461;
          v98 = v455;
          if (v13 == a2)
          {
            goto LABEL_177;
          }
        }

        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v345, isUniquelyReferenced_nonNull_native);
        v341 = specialized __RawDictionaryStorage.find<A>(_:)(v337, v145);
        if ((v147 & 1) != (v346 & 1))
        {
          goto LABEL_205;
        }

LABEL_172:
        v347 = v467;
        if (v147)
        {
          goto LABEL_164;
        }

        goto LABEL_173;
      }

LABEL_177:
      v186 = v446;
      _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v451[*(v454 + 24)], v446, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
      v172 = *(v447 + 48);
      if ((v172)(v186, 1, v98) != 1)
      {
        v353 = v445;
        outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v186, v445, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        a2 = v391;
LABEL_182:
        Apple_Workout_Core_MetricsPublisher.decodeInto(publisher:)(a2);
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v353, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        v354 = *(v147 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_metricsUpdater);
        if (v354)
        {
          v355 = *(v147 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_metricsUpdater + 8);

          v354(a2);
          _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v354);
        }

        goto LABEL_193;
      }

      v171 = v445;
      UnknownStorage.init()();
      v13 = *(v98 + 20);
      a2 = v391;
      if (one-time initialization token for defaultInstance == -1)
      {
LABEL_179:
        *(v171 + v13) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
        v352 = (v172)(v186, 1, v98);

        v353 = v171;
        if (v352 != 1)
        {
          outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v186, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        }

        goto LABEL_182;
      }

LABEL_204:
      swift_once();
      goto LABEL_179;
    }
  }

  v169 = *(*(v164 + 56) + 4 * v167);

  a2 = *(v145 + 12);
  if (a2 >= v169)
  {
    goto LABEL_21;
  }

  v13 = v449;
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v145, v449, type metadata accessor for Apple_Workout_Core_PublisherSequence);
  v98 = v450;
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v145, v450, type metadata accessor for Apple_Workout_Core_PublisherSequence);
  v170 = Logger.logObject.getter();
  v171 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v467 = v173;
    *v172 = v389;
    v174 = *(v13 + 12);
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v13, type metadata accessor for Apple_Workout_Core_PublisherSequence);
    *(v172 + 4) = v174;
    *(v172 + 8) = 1024;
    *(v172 + 10) = v169;
    *(v172 + 14) = 2080;
    v175 = *(v98 + 8);
    v465 = *v98;
    v466 = v175;
    v176 = String.init<A>(describing:)();
    v177 = v98;
    v98 = v176;
    v179 = v178;
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v177, type metadata accessor for Apple_Workout_Core_PublisherSequence);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v179, &v467);

    *(v172 + 16) = v13;
    _os_log_impl(&dword_20AEA4000, v170, v171, "Received an earlier sequence %u than our known %u for publisher %s", v172, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v173);
    v180 = v173;
    v147 = v457;
    MEMORY[0x20F2E9420](v180, -1, -1);
    MEMORY[0x20F2E9420](v172, -1, -1);
  }

  else
  {
    v172 = type metadata accessor for Apple_Workout_Core_PublisherSequence;
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v13, type metadata accessor for Apple_Workout_Core_PublisherSequence);

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v98, type metadata accessor for Apple_Workout_Core_PublisherSequence);
  }

  v186 = (a2 - 1);
  if (!a2)
  {
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  v171 = *v452;
  v172 = *(v452 + 8);
  v98 = v460;
  swift_beginAccess();
  v187 = *(v147 + v98);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v467 = *(v147 + v98);
  v188 = v467;
  *(v147 + v98) = 0x8000000000000000;
  v147 = specialized __RawDictionaryStorage.find<A>(_:)(v171, v172);
  v190 = *(v188 + 16);
  v191 = (v189 & 1) == 0;
  v192 = v190 + v191;
  if (__OFADD__(v190, v191))
  {
    goto LABEL_202;
  }

  v98 = v189;
  if (*(v188 + 24) >= v192)
  {
    if (v13)
    {
      v195 = v467;
      if ((v189 & 1) == 0)
      {
        goto LABEL_158;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v195 = v467;
      if ((v98 & 1) == 0)
      {
        goto LABEL_158;
      }
    }

    goto LABEL_38;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v192, v13);
  v193 = specialized __RawDictionaryStorage.find<A>(_:)(v171, v172);
  if ((v98 & 1) != (v194 & 1))
  {
LABEL_205:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v147 = v193;
  v195 = v467;
  if (v98)
  {
LABEL_38:
    *(v195[7] + 4 * v147) = v186;
    goto LABEL_160;
  }

LABEL_158:
  v195[(v147 >> 6) + 8] |= 1 << v147;
  v332 = v195[6] + 16 * v147;
  *v332 = v171;
  *(v332 + 8) = v172;
  *(v195[7] + 4 * v147) = v186;
  v333 = v195[2];
  v334 = __OFADD__(v333, 1);
  v335 = v333 + 1;
  if (v334)
  {
    goto LABEL_203;
  }

  v195[2] = v335;
LABEL_160:
  v147 = v457;
  *(v457 + v460) = v195;
  swift_endAccess();
  v5 = v451;
  v98 = v455;
  v145 = v452;
  if (a2 == v169)
  {
    goto LABEL_12;
  }

LABEL_22:
  if (*(v145 + 8) == 1)
  {
    switch(*v145)
    {
      case 1:
        goto LABEL_12;
      case 2:
        v181 = v429;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v429, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v182 = *v453;
        if ((*v453)(v181, 1, v98) == 1)
        {
          a2 = v398;
          UnknownStorage.init()();
          v183 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v183) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v184 = v429;
          v185 = v182(v429, 1, v98);

          if (v185 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v184, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v398;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v181, v398, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v305 = *(a2 + *(v98 + 20));
        v306 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
        swift_beginAccess();
        v307 = v305 + v306;
        v160 = v414;
        v13 = &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v307, v414, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
        break;
      case 3:
        v216 = v430;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v430, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v217 = *v453;
        if ((*v453)(v216, 1, v98) == 1)
        {
          a2 = v399;
          UnknownStorage.init()();
          v218 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v218) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v219 = v430;
          v220 = v217(v430, 1, v98);

          if (v220 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v219, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v399;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v216, v399, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v293 = *(a2 + *(v98 + 20));
        v294 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
        swift_beginAccess();
        v295 = v293 + v294;
        v160 = v415;
        v13 = &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v295, v415, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
        break;
      case 4:
        v221 = v431;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v431, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v222 = *v453;
        if ((*v453)(v221, 1, v98) == 1)
        {
          a2 = v400;
          UnknownStorage.init()();
          v223 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v223) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v224 = v431;
          v225 = v222(v431, 1, v98);

          if (v225 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v224, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v400;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v221, v400, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v296 = *(a2 + *(v98 + 20));
        v297 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
        swift_beginAccess();
        v298 = v296 + v297;
        v160 = v416;
        v13 = &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v298, v416, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
        break;
      case 5:
        v211 = v433;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v433, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v212 = *v453;
        if ((*v453)(v211, 1, v98) == 1)
        {
          a2 = v402;
          UnknownStorage.init()();
          v213 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v213) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v214 = v433;
          v215 = v212(v433, 1, v98);

          if (v215 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v214, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v402;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v211, v402, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v290 = *(a2 + *(v98 + 20));
        v291 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
        swift_beginAccess();
        v292 = v290 + v291;
        v160 = v418;
        v13 = &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v292, v418, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
        break;
      case 6:
        v236 = v434;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v434, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v237 = *v453;
        if ((*v453)(v236, 1, v98) == 1)
        {
          a2 = v403;
          UnknownStorage.init()();
          v238 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v238) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v239 = v434;
          v240 = v237(v434, 1, v98);

          if (v240 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v239, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v403;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v236, v403, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v308 = *(a2 + *(v98 + 20));
        v309 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
        swift_beginAccess();
        v310 = v308 + v309;
        v160 = v419;
        v13 = &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v310, v419, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
        break;
      case 7:
        v241 = v435;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v435, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v242 = *v453;
        if ((*v453)(v241, 1, v98) == 1)
        {
          a2 = v404;
          UnknownStorage.init()();
          v243 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v243) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v244 = v435;
          v245 = v242(v435, 1, v98);

          if (v245 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v244, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v404;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v241, v404, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v311 = *(a2 + *(v98 + 20));
        v312 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
        swift_beginAccess();
        v313 = v311 + v312;
        v160 = v420;
        v13 = &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v313, v420, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
        break;
      case 8:
        v231 = v437;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v437, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v232 = *v453;
        if ((*v453)(v231, 1, v98) == 1)
        {
          a2 = v406;
          UnknownStorage.init()();
          v233 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v233) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v234 = v437;
          v235 = v232(v437, 1, v98);

          if (v235 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v234, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v406;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v231, v406, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v302 = *(a2 + *(v98 + 20));
        v303 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
        swift_beginAccess();
        v304 = v302 + v303;
        v160 = v422;
        v13 = &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v304, v422, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
        break;
      case 9:
        v259 = v438;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v438, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v260 = *v453;
        if ((*v453)(v259, 1, v98) == 1)
        {
          a2 = v407;
          UnknownStorage.init()();
          v261 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v261) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v262 = v438;
          v263 = v260(v438, 1, v98);

          if (v263 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v262, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v407;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v259, v407, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v314 = *(a2 + *(v98 + 20));
        v315 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
        swift_beginAccess();
        v316 = v314 + v315;
        v160 = v423;
        v13 = &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v316, v423, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
        break;
      case 0xALL:
        v206 = v439;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v439, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v207 = *v453;
        if ((*v453)(v206, 1, v98) == 1)
        {
          a2 = v408;
          UnknownStorage.init()();
          v208 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v208) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v209 = v439;
          v210 = v207(v439, 1, v98);

          if (v210 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v209, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v408;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v206, v408, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v287 = *(a2 + *(v98 + 20));
        v288 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
        swift_beginAccess();
        v289 = v287 + v288;
        v160 = v424;
        v13 = &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v289, v424, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
        break;
      case 0xBLL:
        v201 = v440;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v440, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v202 = *v453;
        if ((*v453)(v201, 1, v98) == 1)
        {
          a2 = v409;
          UnknownStorage.init()();
          v203 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v203) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v204 = v440;
          v205 = v202(v440, 1, v98);

          if (v205 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v204, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v409;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v201, v409, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v284 = *(a2 + *(v98 + 20));
        v285 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
        swift_beginAccess();
        v286 = v284 + v285;
        v160 = v425;
        v13 = &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v286, v425, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
        break;
      case 0xCLL:
        v264 = v441;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v441, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v265 = *v453;
        if ((*v453)(v264, 1, v98) == 1)
        {
          a2 = v410;
          UnknownStorage.init()();
          v266 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v266) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v267 = v441;
          v268 = v265(v441, 1, v98);

          if (v268 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v267, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v410;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v264, v410, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v317 = *(a2 + *(v98 + 20));
        v318 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
        swift_beginAccess();
        v319 = v317 + v318;
        v160 = v426;
        v13 = &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v319, v426, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
        break;
      case 0xDLL:
        v246 = FIGetActivePairedDevice();
        if (!v246)
        {
          goto LABEL_12;
        }

        v247 = v246;
        if (one-time initialization token for NAPILI_ALIGNED_UUID != -1)
        {
          swift_once();
        }

        v248 = __swift_project_value_buffer(v396, static DataLinkBackwardCompatibilityUtility.NAPILI_ALIGNED_UUID);
        v249 = v397;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v248, v397, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v250 = type metadata accessor for UUID();
        v251 = *(v250 - 8);
        v252 = (*(v251 + 48))(v249, 1, v250);
        isa = 0;
        if (v252 != 1)
        {
          a2 = v397;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (*(v251 + 8))(a2, v250);
        }

        v13 = [v247 supportsCapability_];

        v145 = v452;
        if (!v13)
        {
          goto LABEL_12;
        }

        v254 = v394;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v394, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v255 = *v453;
        if ((*v453)(v254, 1, v98) == 1)
        {
          a2 = v392;
          UnknownStorage.init()();
          v256 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v256) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v257 = v394;
          v258 = v255(v394, 1, v98);

          if (v258 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v257, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v392;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v254, v392, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v329 = *(a2 + *(v98 + 20));
        v330 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
        swift_beginAccess();
        v331 = v329 + v330;
        v160 = v393;
        v13 = &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v331, v393, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
        break;
      case 0xELL:
        v196 = v442;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v442, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v197 = *v453;
        if ((*v453)(v196, 1, v98) == 1)
        {
          a2 = v411;
          UnknownStorage.init()();
          v198 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v198) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v199 = v442;
          v200 = v197(v442, 1, v98);

          if (v200 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v199, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v411;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v196, v411, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v157 = *(a2 + *(v98 + 20));
        v158 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
        swift_beginAccess();
        v159 = v157 + v158;
        v160 = v427;
        v13 = &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v159, v427, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
        break;
      case 0xFLL:
        v274 = v432;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v432, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v275 = *v453;
        if ((*v453)(v274, 1, v98) == 1)
        {
          a2 = v401;
          UnknownStorage.init()();
          v276 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v276) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v277 = v432;
          v278 = v275(v432, 1, v98);

          if (v278 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v277, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v401;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v274, v401, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v323 = *(a2 + *(v98 + 20));
        v324 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
        swift_beginAccess();
        v325 = v323 + v324;
        v160 = v417;
        v13 = &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v325, v417, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
        break;
      case 0x10:
        v269 = v436;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v436, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v270 = *v453;
        if ((*v453)(v269, 1, v98) == 1)
        {
          a2 = v405;
          UnknownStorage.init()();
          v271 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v271) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v272 = v436;
          v273 = v270(v436, 1, v98);

          if (v273 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v272, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v405;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v269, v405, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v320 = *(a2 + *(v98 + 20));
        v321 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
        swift_beginAccess();
        v322 = v320 + v321;
        v160 = v421;
        v13 = &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v322, v421, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
        break;
      case 0x11:
        v279 = v443;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v443, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v280 = *v453;
        if ((*v453)(v279, 1, v98) == 1)
        {
          a2 = v412;
          UnknownStorage.init()();
          v281 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v281) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v282 = v443;
          v283 = v280(v443, 1, v98);

          if (v283 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v282, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v412;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v279, v412, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v326 = *(a2 + *(v98 + 20));
        v327 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
        swift_beginAccess();
        v328 = v326 + v327;
        v160 = v387;
        v13 = &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v328, v387, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
        break;
      case 0x12:
        v226 = v444;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(&v5[*(v454 + 24)], v444, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
        v227 = *v453;
        if ((*v453)(v226, 1, v98) == 1)
        {
          a2 = v413;
          UnknownStorage.init()();
          v228 = *(v98 + 20);
          if (one-time initialization token for defaultInstance != -1)
          {
            swift_once();
          }

          *(a2 + v228) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
          v229 = v444;
          v230 = v227(v444, 1, v98);

          if (v230 != 1)
          {
            outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v229, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
          }
        }

        else
        {
          a2 = v413;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v226, v413, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
        }

        v299 = *(a2 + *(v98 + 20));
        v300 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
        swift_beginAccess();
        v301 = v299 + v300;
        v160 = v390;
        v13 = &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd;
        v161 = &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR;
        _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(v301, v390, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
        v162 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
        break;
      default:
        goto LABEL_184;
    }

    v163 = (*(*(v162 - 8) + 48))(v160, 1, v162);
    outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v160, v13, v161);
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(a2, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    if (v163 != 1)
    {
      goto LABEL_12;
    }
  }

LABEL_184:
  v356 = v428;
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v145, v428, type metadata accessor for Apple_Workout_Core_PublisherSequence);
  v357 = Logger.logObject.getter();
  v358 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v357, v358))
  {
    v359 = swift_slowAlloc();
    v360 = swift_slowAlloc();
    v467 = v360;
    *v359 = 136315138;
    v361 = *(v356 + 8);
    v465 = *v356;
    v466 = v361;
    v362 = String.init<A>(describing:)();
    v364 = v363;
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v356, type metadata accessor for Apple_Workout_Core_PublisherSequence);
    v365 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v362, v364, &v467);

    *(v359 + 4) = v365;
    _os_log_impl(&dword_20AEA4000, v357, v358, "Marking delta update as invalid when checking %s", v359, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v360);
    MEMORY[0x20F2E9420](v360, -1, -1);
    MEMORY[0x20F2E9420](v359, -1, -1);
  }

  else
  {

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v356, type metadata accessor for Apple_Workout_Core_PublisherSequence);
  }

  v366 = v147;
  v367 = Logger.logObject.getter();
  v368 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v367, v368))
  {
    v369 = swift_slowAlloc();
    v370 = swift_slowAlloc();
    v465 = v370;
    *v369 = 136315138;
    v371 = *(v147 + v460);
    lazy protocol witness table accessor for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey();

    v372 = Dictionary.description.getter();
    v374 = v373;

    v375 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v372, v374, &v465);

    *(v369 + 4) = v375;
    _os_log_impl(&dword_20AEA4000, v367, v368, "Known sequences: %s", v369, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v370);
    MEMORY[0x20F2E9420](v370, -1, -1);
    MEMORY[0x20F2E9420](v369, -1, -1);
  }

  v376 = v388;
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v451, v388, type metadata accessor for Apple_Workout_Core_MetricsDelta);
  v377 = Logger.logObject.getter();
  v378 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v377, v378))
  {
    v379 = swift_slowAlloc();
    v380 = swift_slowAlloc();
    v465 = v380;
    *v379 = 136315138;
    v381 = MEMORY[0x20F2E6F70](*v376, v395);
    v383 = v382;
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v376, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    v384 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v381, v383, &v465);

    *(v379 + 4) = v384;
    _os_log_impl(&dword_20AEA4000, v377, v378, "Incoming sequences: %s", v379, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v380);
    MEMORY[0x20F2E9420](v380, -1, -1);
    MEMORY[0x20F2E9420](v379, -1, -1);

    v385 = type metadata accessor for Apple_Workout_Core_PublisherSequence;
    v386 = v452;
  }

  else
  {

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v452, type metadata accessor for Apple_Workout_Core_PublisherSequence);
    v385 = type metadata accessor for Apple_Workout_Core_MetricsDelta;
    v386 = v376;
  }

  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v386, v385);
  v147 = v457;
  a2 = v391;
  DataLinkHealthKitClientConnection.sendCurrentKnownSequences()();
LABEL_193:

LABEL_194:
}

uint64_t DataLinkHealthKitClientConnection.sendMirroredClientCommand(_:sequence:closure:)(unsigned __int8 *a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v28 = a4;
  v27 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = *a1;
  v19 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v20 = *(*(v19 - 8) + 56);
  v20(v17, 1, 1, v19);
  v21 = &v17[*(v11 + 28)];
  UnknownStorage.init()();
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v17, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  *v17 = v18;
  v17[8] = 1;
  swift_storeEnumTagMultiPayload();
  v20(v17, 0, 1, v19);
  v22 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v23 = *(*(v22 - 8) + 56);
  v23(v9, 1, 1, v22);
  v24 = &v9[*(v6 + 28)];
  UnknownStorage.init()();
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v17, v15, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v15, v9, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  swift_storeEnumTagMultiPayload();
  v23(v9, 0, 1, v22);
  DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:)(v9, v27, v28);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v9, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v17, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
}

uint64_t DataLinkHealthKitClientConnection.sendMirroredClientMachTimestampResponse(_:sequence:closure:)(uint64_t *a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v33 = a4;
  v32 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  v22 = *a1;
  v23 = a1[1];
  v24 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v21, 1, 1, v24);
  v26 = &v21[*(v15 + 28)];
  UnknownStorage.init()();
  v34 = v22;
  v35 = v23;
  _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  static Message.with(_:)();
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v21, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v13, v21, type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse);
  swift_storeEnumTagMultiPayload();
  v25(v21, 0, 1, v24);
  v27 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v28 = *(*(v27 - 8) + 56);
  v28(v9, 1, 1, v27);
  v29 = &v9[*(v6 + 28)];
  UnknownStorage.init()();
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v21, v19, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v19, v9, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  swift_storeEnumTagMultiPayload();
  v28(v9, 0, 1, v27);
  DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:)(v9, v32, v33);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v9, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v21, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
}

uint64_t DataLinkHealthKitClientConnection.sendMirroredClientAlertStackResponse(_:sequence:closure:)(uint64_t *a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v39 = a4;
  v38 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v6 = *(v5 - 8);
  v37 = v5 - 8;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse(0);
  v10 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v36 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  v20 = *a1;
  v19 = a1[1];
  v21 = *(a1 + 16);
  v22 = a1[3];
  v23 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v33 = v24 + 56;
  v25(v18, 1, 1, v23);
  v26 = &v18[*(v13 + 28)];
  UnknownStorage.init()();
  v40 = v20;
  v41 = v19;
  v42 = v21;
  v43 = v22;
  _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientAlertStackResponse and conformance Apple_Workout_Core_MirroredClientAlertStackResponse, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  v27 = v35;
  static Message.with(_:)();
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v18, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v27, v18, type metadata accessor for Apple_Workout_Core_MirroredClientAlertStackResponse);
  swift_storeEnumTagMultiPayload();
  v25(v18, 0, 1, v23);
  v28 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v29 = *(*(v28 - 8) + 56);
  v29(v9, 1, 1, v28);
  v30 = &v9[*(v37 + 28)];
  UnknownStorage.init()();
  v31 = v36;
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v18, v36, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v31, v9, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  swift_storeEnumTagMultiPayload();
  v29(v9, 0, 1, v28);
  DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:)(v9, v38, v39);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v9, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v18, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
}

uint64_t DataLinkHealthKitClientConnection.sendMirroredClientPrecisionStart(_:sequence:closure:)(uint64_t a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v31 = a4;
  v30 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v29 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v29 - v19;
  v21 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 1, 1, v21);
  v23 = &v20[*(v15 + 28)];
  UnknownStorage.init()();
  v32 = a1;
  _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  static Message.with(_:)();
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v20, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v13, v20, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart);
  swift_storeEnumTagMultiPayload();
  v22(v20, 0, 1, v21);
  v24 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v9, 1, 1, v24);
  v26 = &v9[*(v6 + 28)];
  UnknownStorage.init()();
  v27 = v29;
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v20, v29, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v27, v9, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  swift_storeEnumTagMultiPayload();
  v25(v9, 0, 1, v24);
  DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:)(v9, v30, v31);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v9, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v20, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
}

void DataLinkHealthKitClientConnection.endSession(closure:)(void (*a1)(uint64_t, uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session);
  if (v3)
  {
    v11 = v3;
    [v11 end];
    a1(1, 0);
    v4 = v11;
  }

  else
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.dataLink);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20AEA4000, v6, v7, "Cannot end mirroring session, no mirroring session found", v8, 2u);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    lazy protocol witness table accessor for type DataLinkConnectionCommandError and conformance DataLinkConnectionCommandError();
    v9 = swift_allocError();
    *v10 = 0;
    a1(0, v9);
    v4 = v9;
  }
}

uint64_t protocol witness for DataLinkMirroredClientConnectionProtocol.mirroredClientDelegate.getter in conformance DataLinkHealthKitClientConnection()
{
  v1 = v0 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_mirroredClientDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t protocol witness for DataLinkMirroredClientConnectionProtocol.mirroredClientDelegate.setter in conformance DataLinkHealthKitClientConnection(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_mirroredClientDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*protocol witness for DataLinkMirroredClientConnectionProtocol.mirroredClientDelegate.modify in conformance DataLinkHealthKitClientConnection(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_mirroredClientDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return protocol witness for DataLinkMirroredClientConnectionProtocol.mirroredClientDelegate.modify in conformance DataLinkHealthKitClientConnection;
}

void protocol witness for DataLinkMirroredClientConnectionProtocol.mirroredClientDelegate.modify in conformance DataLinkHealthKitClientConnection(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

uint64_t protocol witness for DataLinkMirroredClientConnectionProtocol.workoutSessionMirroringStartHandler.getter in conformance DataLinkHealthKitClientConnection()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler);
  v2 = *(v0 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler + 8);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession) -> ())?(v1);
  return v1;
}

uint64_t protocol witness for DataLinkClientConnection.registerMetricsUpdater(closure:) in conformance DataLinkHealthKitClientConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = (v6 + *a5);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a1;
  v7[1] = a2;

  return a6(v8, v9);
}

void protocol witness for DataLinkClientConnection.deltaMetricsPublisher.setter in conformance DataLinkHealthKitClientConnection(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*protocol witness for DataLinkClientConnection.deltaMetricsPublisher.modify in conformance DataLinkHealthKitClientConnection(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_deltaMetricsPublisher;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return protocol witness for DataLinkClientConnection.deltaMetricsPublisher.modify in conformance DataLinkHealthKitClientConnection;
}

void protocol witness for DataLinkClientConnection.deltaMetricsPublisher.modify in conformance DataLinkHealthKitClientConnection(id **a1, char a2)
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

uint64_t protocol witness for DataLinkClientConnection.sessionUUID.getter in conformance DataLinkHealthKitClientConnection@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session);
  if (v3)
  {
    v4 = [v3 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DataLinkConnectionCommandError and conformance DataLinkConnectionCommandError()
{
  result = lazy protocol witness table cache variable for type DataLinkConnectionCommandError and conformance DataLinkConnectionCommandError;
  if (!lazy protocol witness table cache variable for type DataLinkConnectionCommandError and conformance DataLinkConnectionCommandError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkConnectionCommandError and conformance DataLinkConnectionCommandError);
  }

  return result;
}

void partial apply for closure #1 in DataLinkHealthKitClientConnection.handleDeltaMetricsUpdate(_:workoutSession:)()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_MetricsDelta(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in DataLinkHealthKitClientConnection.handleDeltaMetricsUpdate(_:workoutSession:)(v2, v3);
}

uint64_t _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void partial apply for closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostMessage(_:)()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostMessage(_:)(v3, v0 + v2, v5, v6);
}

uint64_t _s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void specialized DataLinkHealthKitClientConnection.workoutSession(_:didChangeTo:from:date:)(void *a1)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.dataLink);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315650;
    v7 = v3;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v24);

    *(v5 + 4) = v12;
    *(v5 + 12) = 2080;
    v13 = HKWorkoutSessionStateToString();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v24);

    *(v5 + 14) = v17;
    *(v5 + 22) = 2080;
    v18 = HKWorkoutSessionStateToString();
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v24);

    *(v5 + 24) = v22;
    _os_log_impl(&dword_20AEA4000, oslog, v4, "workoutSession (%s) did change state from (%s) to (%s)", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }
}

void specialized DataLinkHealthKitClientConnection.handleMirroredHostCommand(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = *(a1 + 8);
  type metadata accessor for OS_dispatch_queue();
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  v22 = v10;
  v23 = v11;
  MirroredHostCommand.init(protobuf:)(&v22, &v24);
  v12 = v24;
  if (v24 != 3)
  {
    ObjectType = swift_getObjectType();
    v21 = v12;
    (*(a3 + 8))(&v21, closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostCommand(_:with:), 0, ObjectType, a3);
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.dataLink);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    if (v11)
    {
      v10 = qword_20B449728[v10];
    }

    *(v16 + 4) = v10;
    v17 = v15;
    v18 = v16;
    _os_log_impl(&dword_20AEA4000, v14, v17, "[mirrored] handleMirroredHostCommand cannot convert protobuf: %ld", v16, 0xCu);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }
}

void specialized DataLinkHealthKitClientConnection.handleMirroredHostStartConfiguration(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  v6 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(a1, v8, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
    MirroredHostStartConfiguration.init(protobuf:)(v8, &v19);
    v15 = v19;
    v16 = v20;
    v17 = v21;
    ObjectType = swift_getObjectType();
    v19 = v15;
    v20 = v16;
    v21 = v17;
    (*(a3 + 16))(&v19, closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostStartConfiguration(_:with:), 0, ObjectType, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized DataLinkHealthKitClientConnection.handleMirroredHostMachTimestampRequest(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(a1, v8, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    v16 = *v8;
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v8, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
    ObjectType = swift_getObjectType();
    v19 = v16;
    return (*(a3 + 32))(&v19, closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostMachTimestampRequest(_:with:), 0, ObjectType, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized DataLinkHealthKitClientConnection.handleMirroredHostCountdownStart(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(a1, v8, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    v16 = *v8;
    v17 = v8[1];
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v8, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
    ObjectType = swift_getObjectType();
    v19[0] = v16;
    v19[1] = v17;
    return (*(a3 + 40))(v19, closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostCountdownStart(_:with:), 0, ObjectType, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized DataLinkHealthKitClientConnection.handleMirroredHostAlertStackRequest(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(a1, v8, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
    v16 = *v8;
    v17 = v8[1];
    v19 = v8[2];
    v18 = v8[3];
    v21 = v8[4];
    v20 = v8[5];
    v22 = v8[6];

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v8, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
    ObjectType = swift_getObjectType();
    v25[0] = v16;
    v25[1] = v17;
    v25[2] = v19;
    v25[3] = v18;
    v25[4] = v21;
    v25[5] = v20;
    v25[6] = v22;
    (*(a3 + 24))(v25, closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostAlertStackRequest(_:with:), 0, ObjectType, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized DataLinkHealthKitClientConnection.handleMirroredHostSummaryUpdate(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    outlined init with copy of Apple_Workout_Core_MirroredClientMessage(a1, v8, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    MirroredHostSummaryUpdate.init(protobuf:)(v8, &v18);
    v15 = v18;
    ObjectType = swift_getObjectType();
    v18 = v15;
    (*(a3 + 48))(&v18, closure #1 in DataLinkHealthKitClientConnection.handleMirroredHostSummaryUpdate(_:with:), 0, ObjectType, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t objectdestroy_36Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined init with copy of Apple_Workout_Core_MirroredClientMessage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_11WorkoutCore30DataLinkConnectionCommandErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for DataLinkConnectionCommandError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataLinkConnectionCommandError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for DataLinkConnectionCommandError(void *result, int a2)
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

Swift::Bool __swiftcall ZonesAlertTrackingProtocol.alertPreconditionSatified(_:)(Swift::Double a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *(v2 + 56);
  if (v6() >= a1)
  {
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.zones);
    swift_unknownObjectRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v11 = 136315650;
      v12 = _typeName(_:qualified:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2048;
      *(v11 + 14) = a1;
      *(v11 + 22) = 2048;
      *(v11 + 24) = (v6)(v4, v3);
      _os_log_impl(&dword_20AEA4000, v9, v10, "%s Not alerting. Elapsed time: %f < %f", v11, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x20F2E9420](v23, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }
  }

  else
  {
    if (ZonesAlertTrackingProtocol.enoughTimePassedBetweenAlerts()())
    {
      return 1;
    }

    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.zones);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = _typeName(_:qualified:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_20AEA4000, v16, v17, "%s Not alerting. Enough time not passed between two heart rate alerts", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x20F2E9420](v19, -1, -1);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }
  }

  return 0;
}

Swift::Bool __swiftcall ZonesAlertTrackingProtocol.enoughTimePassedBetweenAlerts()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  (*(v2 + 8))(v3, v2);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Date?(v7);
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v17 = v16;
    v18 = *(v9 + 8);
    v18(v13, v8);
    v18(v15, v8);
    if (v17 < 15.0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t WindowedAccumulator.__allocating_init(timeWindow:strict:)(char a1, double a2)
{
  result = swift_allocObject();
  *(result + 48) = MEMORY[0x277D84F90];
  *(result + 56) = 0;
  *(result + 16) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 1;
  *(result + 41) = a1;
  return result;
}

uint64_t WindowedAccumulator.init(positionWindow:strict:)(char a1, double a2)
{
  *(v2 + 48) = MEMORY[0x277D84F90];
  *(v2 + 56) = 0;
  *(v2 + 16) = a2;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 41) = a1;
  return v2;
}

uint64_t WindowedAccumulator.__allocating_init(countWindow:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WindowedAccumulator.init(countWindow:)(a1);
  return v2;
}

uint64_t WindowedAccumulator.init(countWindow:)(uint64_t result)
{
  *(v1 + 48) = MEMORY[0x277D84F90];
  *(v1 + 56) = 0;
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  if (__OFADD__(result, 2))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 48) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (result + 2) & ~((result + 2) >> 63), 0, MEMORY[0x277D84F90]);
    *(v1 + 16) = 0;
    *(v1 + 24) = 1;
    *(v1 + 41) = 0;
    return v1;
  }

  return result;
}

uint64_t WindowedAccumulator.trimOldSamples()()
{
  if ((*(v0 + 24) & 1) != 0 || (v1 = *(v0 + 48), (v2 = *(v1 + 16)) == 0))
  {
    if (*(v0 + 40))
    {
      return result;
    }

    v7 = *(v0 + 32);
    v8 = *(*(v0 + 48) + 16);
    if (v7 >= v8)
    {
      return result;
    }

    v9 = __OFSUB__(v8, v7);
    v10 = v8 - v7;
    if (v9)
    {
      __break(1u);
    }

    else if ((v10 & 0x8000000000000000) == 0)
    {
      if (!__OFADD__(v10, 1))
      {
        return specialized Array.replaceSubrange<A>(_:with:)(0, v10 + 1);
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = *(v1 + 16 * v2 + 24);
  v5 = (v1 + 40);
  v6 = 0.0;
  while (*(v0 + 16) < v4 - *v5)
  {
    ++v3;
    v6 = v6 + *(v5 - 1);
    v5 += 2;
    if (v2 == v3)
    {
      v3 = v2;
      goto LABEL_14;
    }
  }

  if (!v3)
  {
    return result;
  }

LABEL_14:
  result = specialized Array.replaceSubrange<A>(_:with:)(0, v3);
  *(v0 + 56) = *(v0 + 56) - v6;
  return result;
}

uint64_t WindowedAccumulator.calculateRate()()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2 < 3 || (v3 = (v1 + 32), v4 = *(v1 + 40), v5 = v1 + 32 + 16 * v2, v6 = *(v5 - 8) - v4, v6 <= 0.0))
  {
    *&result = 0.0;
  }

  else
  {
    *&result = (*(v5 - 16) - *v3) / v6;
  }

  return result;
}

void WindowedAccumulator.add(_:date:)(Swift::Double a1)
{
  Date.timeIntervalSinceReferenceDate.getter();

  WindowedAccumulator.add(_:position:)(a1, v2);
}

Swift::Void __swiftcall WindowedAccumulator.add(_:position:)(Swift::Double _, Swift::Double position)
{
  v4 = (v2 + 48);
  v5 = *(v2 + 48);
  v6 = *(v5 + 2);
  if (v6)
  {
    v7 = v6 + 1;
    v8 = &v5[16 * v6 + 24];
    while (--v7)
    {
      v9 = *v8;
      v8 -= 2;
      if (v9 <= position)
      {
        v10 = v7;
        goto LABEL_12;
      }
    }

    v10 = 0;
LABEL_12:
    specialized Array.replaceSubrange<A>(_:with:)(v7, v10, _, position);
  }

  else
  {
    v12 = *(v2 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v5);
      *v4 = v5;
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v5);
      v16 = position;
      v5 = v18;
    }

    else
    {
      v16 = position;
    }

    *(v5 + 2) = v15 + 1;
    v17 = &v5[16 * v15];
    *(v17 + 4) = _;
    *(v17 + 5) = v16;
    *v4 = v5;
  }

  *(v2 + 56) = *(v2 + 56) + _;

  WindowedAccumulator.trimOldSamples()();
}

double WindowedAccumulator.value(for:)()
{
  Date.timeIntervalSinceReferenceDate.getter();
  *&result = WindowedAccumulator.value(for:)(v0);
  return result;
}

Swift::Double_optional __swiftcall WindowedAccumulator.value(for:)(Swift::Double a1)
{
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v13 = v2;
    v4 = 16 * v3 + 24;
    do
    {
      v5 = v3;
      if (!v3)
      {
        break;
      }

      --v3;
      v6 = *(v2 + v4);
      v4 -= 16;
    }

    while (v6 > a1);
    v7 = v5 == 0;
    (MEMORY[0x28223BE20])();
    v12[2] = &v13;

    v8 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_11WorkoutCore19WindowedAccumulatorC6Sample33_F335A3D6900FCBD2DC08458B4BDD2C84LLVTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v12, v3, v7);
    v10 = v9;

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8;
    }
  }

  else
  {
    v11 = 0;
  }

  result.value = a1;
  result.is_nil = v11;
  return result;
}

uint64_t WindowedAccumulator.latestValue.getter()
{
  v1 = *(v0 + 48);
  v4 = *(v1 + 16);
  v3 = v1 + 16;
  v2 = v4;
  if (v4)
  {
    return *(v3 + 16 * v2);
  }

  else
  {
    return 0;
  }
}

double WindowedAccumulator.positionWindowMean()(double result)
{
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = *(v1 + 48);
    v3 = *(v2 + 16);
    if (v3)
    {
      result = *(v1 + 16);
      v4 = *(v2 + 32 + 16 * (v3 - 1) + 8) - *(v2 + 40);
      if (*(v1 + 41) != 1 || result < 10.0)
      {
        if (v3 == 1)
        {
          v6 = *(v2 + 32);
          return result;
        }
      }

      else if (v3 == 1 || v4 < v4 / (v3 - 1) * (result / (v4 / (v3 - 1)) + -2.0))
      {
        return result;
      }

      return (*(v2 + 32) * (result - v4) + v4 * (*(v1 + 56) / v3)) / result;
    }
  }

  return result;
}

Swift::Double_optional __swiftcall WindowedAccumulator.mean()()
{
  if (*(v0 + 24))
  {
    v2 = *(*(v0 + 48) + 16);
    if (v2)
    {
      v1 = *(v0 + 56) / v2;
      *&v3 = v1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    v1 = WindowedAccumulator.positionWindowMean()(v1);
  }

  result.value = v1;
  result.is_nil = v3;
  return result;
}

Swift::Double_optional __swiftcall WindowedAccumulator.estimatedCompletionPosition(targetValue:)(Swift::Double targetValue)
{
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  if (v3 < 3)
  {
    goto LABEL_10;
  }

  v4 = (v2 + 32);
  v5 = *(v2 + 40);
  v6 = v2 + 32 + 16 * v3;
  v7 = *(v6 - 8);
  v8 = v7 - v5;
  if (v7 - v5 <= 0.0)
  {
    goto LABEL_10;
  }

  v9 = targetValue;
  v10 = *(v6 - 16);
  v11 = v10 - *v4;
  if (one-time initialization token for core != -1)
  {
    v19 = v10 - *v4;
    swift_once();
    v11 = v19;
  }

  v12 = v11 / v8;
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.core);
  v14 = v1;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134218240;
    *(v17 + 4) = v12;
    *(v17 + 12) = 2048;
    *(v17 + 14) = *(*(v14 + 48) + 16);

    _os_log_impl(&dword_20AEA4000, v15, v16, "rps %f samples: %ld", v17, 0x16u);
    MEMORY[0x20F2E9420](v17, -1, -1);
  }

  else
  {
  }

  targetValue = (v9 - v10) / v12;
  if (targetValue <= 0.0)
  {
LABEL_10:
    v18 = 0;
  }

  else
  {
    targetValue = v7 + targetValue;
    v18 = LOBYTE(targetValue);
  }

  result.value = targetValue;
  result.is_nil = v18;
  return result;
}

Swift::Void __swiftcall WindowedAccumulator.reset()()
{
  v1 = *(v0 + 48);
  *(v0 + 48) = MEMORY[0x277D84F90];
}

uint64_t WindowedAccumulator.trimSamples(upTo:)()
{
  Date.timeIntervalSinceReferenceDate.getter();
  v4 = (v0 + 48);
  v3 = *v4;
  v5 = *(*v4 + 2);
  if (v5)
  {
    v6 = 0;
    v7 = 40;
    do
    {
      if (*&v3[v7] <= v2)
      {
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_22;
        }

        v1 = v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v4 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_23;
        }

        while (1)
        {
          v11 = *(v3 + 2);
          if (v9 == v11)
          {
LABEL_9:
            *v4 = v3;
            v8 = *(v3 + 2);
            v5 = v6;
            if (v8 >= v6)
            {
              return specialized Array.replaceSubrange<A>(_:with:)(v5, v8);
            }
          }

          else
          {
            v13 = &v3[v7 + 8];
            while (v9 < v11)
            {
              v16 = *(v13 + 8);
              if (v16 > v1)
              {
                if (v9 != v6)
                {
                  if (v6 >= v11)
                  {
                    __break(1u);
                    break;
                  }

                  v14 = &v3[16 * v6 + 32];
                  v15 = *v14;
                  *v14 = *v13;
                  *(v14 + 8) = v16;
                  *v13 = v15;
                  v11 = *(v3 + 2);
                }

                ++v6;
              }

              ++v9;
              v13 += 16;
              if (v9 == v11)
              {
                goto LABEL_9;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        }
      }

      ++v6;
      v7 += 16;
    }

    while (v5 != v6);
  }

  v8 = *(v3 + 2);
  return specialized Array.replaceSubrange<A>(_:with:)(v5, v8);
}

Swift::Void __swiftcall WindowedAccumulator.trimSamples(upTo:)(Swift::Double upTo)
{
  v5 = *(v1 + 48);
  v4 = (v1 + 48);
  v3 = v5;
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 40;
    do
    {
      if (*&v3[v8] <= upTo)
      {
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_22;
        }

        v2 = upTo;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v4 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_23;
        }

        while (1)
        {
          v12 = *(v3 + 2);
          if (v10 == v12)
          {
LABEL_9:
            *v4 = v3;
            v9 = *(v3 + 2);
            v6 = v7;
            if (v9 >= v7)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v13 = &v3[v8 + 8];
            while (v10 < v12)
            {
              v16 = *(v13 + 8);
              if (v16 > v2)
              {
                if (v10 != v7)
                {
                  if (v7 >= v12)
                  {
                    __break(1u);
                    break;
                  }

                  v14 = &v3[16 * v7 + 32];
                  v15 = *v14;
                  *v14 = *v13;
                  *(v14 + 8) = v16;
                  *v13 = v15;
                  v12 = *(v3 + 2);
                }

                ++v7;
              }

              ++v10;
              v13 += 16;
              if (v10 == v12)
              {
                goto LABEL_9;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        }
      }

      ++v7;
      v8 += 16;
    }

    while (v6 != v7);
  }

  v9 = v6;
LABEL_10:
  specialized Array.replaceSubrange<A>(_:with:)(v6, v9);
}

uint64_t WindowedAccumulator.deinit()
{
  v1 = *(v0 + 48);

  return v0;
}

uint64_t WindowedAccumulator.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_11WorkoutCore19WindowedAccumulatorC6Sample33_F335A3D6900FCBD2DC08458B4BDD2C84LLVTg5(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t *partial apply for specialized closure #1 in BidirectionalCollection.last(where:)@<X0>(unint64_t *result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = **(v2 + 16);
    if (v3 < *(v4 + 16))
    {
      *a2 = *(v4 + 16 * v3 + 32);
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t dispatch thunk of WindowedAccumulator.value(for:)()
{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 232))();
}

uint64_t dispatch thunk of WindowedAccumulator.trimSamples(upTo:)()
{
  return (*(*v0 + 288))();
}

{
  return (*(*v0 + 296))();
}

uint64_t getEnumTagSinglePayload for WindowedAccumulator.Sample(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WindowedAccumulator.Sample(uint64_t result, int a2, int a3)
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

unint64_t NLPlaybackError.description.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  if (v2 <= 3)
  {
    v5 = 0xD00000000000001CLL;
    if (v2 != 2)
    {
      v5 = 0xD000000000000017;
    }

    if (*v0)
    {
      v1 = 0xD000000000000013;
    }

    if (*v0 <= 1u)
    {
      result = v1;
    }

    else
    {
      result = v5;
    }

    *v0;
  }

  else
  {
    v3 = 0xD00000000000001DLL;
    if (v2 != 7)
    {
      v3 = 0xD000000000000017;
    }

    if (v2 == 6)
    {
      v3 = 0xD000000000000011;
    }

    if (v2 != 4)
    {
      v1 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      result = v1;
    }

    else
    {
      result = v3;
    }

    *v0;
  }

  return result;
}

Swift::Int NLPlaybackError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NLPlaybackError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NLPlaybackError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for NLPlaybackError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NLPlaybackError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static ZonesMetadata.unpackedLastProcessedDate(from:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if (v7)
      {
        outlined init with copy of Any(*(a1 + 56) + 32 * v6, v18);
        if (swift_dynamicCast())
        {
          v8 = type metadata accessor for PropertyListDecoder();
          v9 = *(v8 + 48);
          v10 = *(v8 + 52);
          swift_allocObject();
          PropertyListDecoder.init()();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
          lazy protocol witness table accessor for type [Date] and conformance <A> [A](&lazy protocol witness table cache variable for type [Date] and conformance <A> [A], &lazy protocol witness table cache variable for type Date and conformance Date);
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          v13 = v18[0];
          if (*(v18[0] + 16))
          {
            v14 = type metadata accessor for Date();
            v15 = *(v14 - 8);
            (*(v15 + 16))(a4, v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v14);
            outlined consume of Data._Representation(v16, v17);

            return (*(v15 + 56))(a4, 0, 1, v14);
          }

          outlined consume of Data._Representation(v16, v17);
        }
      }
    }
  }

  v11 = type metadata accessor for Date();
  return (*(*(v11 - 8) + 56))(a4, 1, 1, v11);
}

uint64_t specialized static ZonesMetadata.packedLastProcessedDate(_:)(uint64_t a1)
{
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20B423A90;
  (*(v6 + 16))(v9 + v8, a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
  lazy protocol witness table accessor for type [Date] and conformance <A> [A](&lazy protocol witness table cache variable for type [Date] and conformance <A> [A], &lazy protocol witness table cache variable for type Date and conformance Date);
  v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  return v10;
}

uint64_t specialized static ZonesMetadata.packedCurrentZoneIndex(_:)(uint64_t a1)
{
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20B423A90;
  *(v5 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  return v6;
}

uint64_t specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for PropertyListDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  lazy protocol witness table accessor for type [Int : Double] and conformance <> [A : B]();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v10, v11);

  return v12[0];
}

uint64_t specialized static ZonesMetadata.unpackedCurrentZoneIndex(from:key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      v4 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if (v5)
      {
        outlined init with copy of Any(*(a1 + 56) + 32 * v4, v13);
        if (swift_dynamicCast())
        {
          v6 = type metadata accessor for PropertyListDecoder();
          v7 = *(v6 + 48);
          v8 = *(v6 + 52);
          swift_allocObject();
          PropertyListDecoder.init()();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
          lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          if (*(v13[0] + 16))
          {
            v10 = *(v13[0] + 32);
            outlined consume of Data._Representation(v11, v12);

            return v10;
          }

          outlined consume of Data._Representation(v11, v12);
        }
      }
    }
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Date] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DateVGMd, &_sSay10Foundation4DateVGMR);
    _s10Foundation4DateVACSEAAWlTm_1(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4DateVACSEAAWlTm_1(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RunningTrackInfo.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  return static Message.with(_:)();
}

uint64_t Apple_Workout_Core_RunningTrackInfo.decoded.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo() + 40);
  outlined init with copy of Apple_Workout_Core_CLLocation?(v1 + v18, v17);
  v19 = *(v7 + 48);
  v20 = v19(v17, 1, v6);
  outlined destroy of Apple_Workout_Core_CLLocation?(v17);
  v21 = 0;
  if (v20 != 1)
  {
    outlined init with copy of Apple_Workout_Core_CLLocation?(v1 + v18, v15);
    if (v19(v15, 1, v6) == 1)
    {
      *(v10 + 1) = 0u;
      *(v10 + 2) = 0u;
      *v10 = 0u;
      v22 = &v10[*(v6 + 40)];
      UnknownStorage.init()();
      if (v19(v15, 1, v6) != 1)
      {
        outlined destroy of Apple_Workout_Core_CLLocation?(v15);
      }
    }

    else
    {
      outlined init with take of Apple_Workout_Core_CLLocation(v15, v10);
    }

    v23 = *v10;
    v24 = *(v10 + 1);
    v25 = *(v10 + 2);
    v26 = *(v10 + 3);
    v28 = *(v10 + 4);
    v27 = *(v10 + 5);
    Date.init(timeIntervalSinceReferenceDate:)();
    v29 = objc_allocWithZone(MEMORY[0x277CE41F8]);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v21 = [v29 initWithCoordinate:isa altitude:v23 horizontalAccuracy:v24 verticalAccuracy:v25 timestamp:{v26, v28}];

    (*(v39 + 8))(v5, v40);
    outlined destroy of Apple_Workout_Core_CLLocation(v10);
  }

  v31 = *(v1 + 8);
  v42 = *v1;
  v43 = v31;
  Apple_Workout_Core_RunningTrackProximity.decoded.getter(&v41);
  v32 = v41;
  v33 = *(v1 + 3);
  v34 = *(v1 + 4);
  v35 = *(v1 + 5);
  v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  type metadata accessor for RunningTrackInfo();
  result = swift_allocObject();
  *(result + 16) = v21;
  *(result + 24) = v32;
  *(result + 32) = v33;
  *(result + 40) = v34;
  *(result + 48) = v35;
  *(result + 56) = v36;
  return result;
}

uint64_t RunningTrackInfo.__allocating_init(location:proximity:laneNumber:lapNumber:laneCount:trackId:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  v13 = *a2;
  *(result + 16) = a1;
  *(result + 24) = v13;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  return result;
}

uint64_t RunningTrackInfo.__allocating_init(location:)(void *a1)
{
  v2 = swift_allocObject();
  RunningTrackInfo.init(location:)(a1);
  return v2;
}

uint64_t static RunningTrackInfo.defaultTrackInfo.getter()
{
  if (one-time initialization token for defaultTrackInfo != -1)
  {
    swift_once();
  }
}

void *RunningTrackInfo.location.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t RunningTrackInfo.proximity.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 24);
  return result;
}

uint64_t RunningTrackInfo.proximity.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

uint64_t RunningTrackInfo.laneNumber.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t RunningTrackInfo.estimatedLaneNumber.getter()
{
  if (*(v0 + 48) <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = *(v0 + 48);
  }

  swift_beginAccess();
  v2 = *(v0 + 32);
  if (v1 >= v2)
  {
    v4 = __OFSUB__(v2, 1);
    v3 = v2 - 1 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 1;
  }

  if (v3 != v4)
  {
    return 1;
  }

  else
  {
    return *(v0 + 32);
  }
}

uint64_t RunningTrackInfo.laneNumberRange.getter()
{
  if (*(v0 + 48) > 1)
  {
    v1 = *(v0 + 48);
  }

  return 1;
}

void key path setter for RunningTrackInfo.trackId : RunningTrackInfo(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
  v5 = v2;
}

id RunningTrackInfo.trackId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

void RunningTrackInfo.trackId.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t RunningTrackInfo.init(location:proximity:laneNumber:lapNumber:laneCount:trackId:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = v7;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

uint64_t RunningTrackInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t RunningTrackInfo.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RunningTrackInfo();
  v5 = swift_allocObject();
  RunningTrackInfo.init(location:)(0);
  swift_beginAccess();
  v6 = *(v2 + 24);
  swift_beginAccess();
  *(v5 + 24) = v6;
  swift_beginAccess();
  v7 = *(v2 + 32);
  swift_beginAccess();
  *(v5 + 32) = v7;
  swift_beginAccess();
  v8 = *(v2 + 40);
  result = swift_beginAccess();
  *(v5 + 40) = v8;
  a1[3] = v4;
  *a1 = v5;
  return result;
}

uint64_t RunningTrackInfo.description.getter()
{
  _StringGuts.grow(_:)(57);
  MEMORY[0x20F2E6D80](0x74696D69786F7250, 0xEB00000000203A79);
  swift_beginAccess();
  v1 = 0xEA00000000006B63;
  v2 = 0x6172742061206E4FLL;
  v3 = 0xEC0000006B636172;
  v4 = 0x742061207261654ELL;
  if (*(v0 + 24) != 2)
  {
    v4 = 0x61206E6F20746F4ELL;
    v3 = 0xEE006B6361727420;
  }

  if (*(v0 + 24))
  {
    v2 = 0xD000000000000013;
    v1 = 0x800000020B45CD90;
  }

  if (*(v0 + 24) <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(v0 + 24) <= 1u)
  {
    v6 = v1;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x20F2E6D80](v5, v6);

  MEMORY[0x20F2E6D80](0x754E656E616C202CLL, 0xEE00203A7265626DLL);
  swift_beginAccess();
  v16 = *(v0 + 32);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v7);

  MEMORY[0x20F2E6D80](0x6D754E70616C202CLL, 0xED0000203A726562);
  swift_beginAccess();
  v15 = *(v0 + 40);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v8);

  MEMORY[0x20F2E6D80](0x496B63617274202CLL, 0xEB00000000203A64);
  swift_beginAccess();
  v9 = *(v0 + 56);
  v10 = [v9 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  MEMORY[0x20F2E6D80](v11, v13);

  return 0;
}

id closure #1 in RunningTrackInfo.protobuf.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_CLLocation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v18 = v17;
    MEMORY[0x28223BE20](v7);
    v17[-2] = v10;
    lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation);
    v11 = v10;
    static Message.with(_:)();

    v12 = *(type metadata accessor for Apple_Workout_Core_RunningTrackInfo() + 40);
    outlined destroy of Apple_Workout_Core_CLLocation?(a1 + v12);
    outlined init with take of Apple_Workout_Core_CLLocation(v9, a1 + v12);
    (*(v5 + 56))(a1 + v12, 0, 1, v4);
  }

  swift_beginAccess();
  *a1 = *(a2 + 24);
  *(a1 + 8) = 1;
  result = swift_beginAccess();
  v14 = *(a2 + 32);
  if (v14 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v14 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(a1 + 12) = v14;
  result = swift_beginAccess();
  v15 = *(a2 + 40);
  if (v15 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  if (v16 < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    *(a1 + 20) = v16;
    swift_beginAccess();
    result = [*(a2 + 56) longLongValue];
    *(a1 + 24) = result;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_CLLocation?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMd, &_s11WorkoutCore06Apple_a1_B11_CLLocationVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CLLocation.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_CLLocation();
  lazy protocol witness table accessor for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation);
  return static Message.with(_:)();
}

uint64_t closure #1 in CLLocation.protobuf.getter(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 coordinate];
  *a1 = v9;
  [a2 coordinate];
  a1[1] = v10;
  [a2 altitude];
  a1[2] = v11;
  [a2 horizontalAccuracy];
  a1[3] = v12;
  [a2 verticalAccuracy];
  a1[4] = v13;
  v14 = [a2 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceReferenceDate.getter();
  v16 = v15;
  result = (*(v5 + 8))(v8, v4);
  a1[5] = v16;
  return result;
}

BOOL specialized static RunningTrackInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  swift_beginAccess();
  if (v4 != *(a2 + 24))
  {
    return 0;
  }

  swift_beginAccess();
  v5 = *(a1 + 32);
  swift_beginAccess();
  if (v5 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v6 = *(a1 + 40);
  swift_beginAccess();
  return v6 == *(a2 + 40);
}

id @objc NSDictionary.logString.getter(void *a1)
{
  v1 = a1;
  v2 = NSDictionary.logString.getter();
  v4 = v3;

  v5 = MEMORY[0x20F2E6C00](v2, v4);

  return v5;
}

uint64_t NSDictionary.logString.getter()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v15[0] = 0;
  v3 = [objc_opt_self() dataWithJSONObject:v0 options:2 error:v15];
  v4 = v15[0];
  if (!v3)
  {
    v12 = v4;
    v13 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_5;
  }

  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  static String.Encoding.utf8.getter();
  v8 = String.init(data:encoding:)();
  v10 = v9;
  outlined consume of Data._Representation(v5, v7);
  if (!v10)
  {
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  result = v8;
LABEL_6:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t protocol witness for CustomLogStringConvertible.logString.getter in conformance NSDictionary()
{
  v1 = [*v0 logString];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t type metadata instantiation function for NestedDictionary()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id NLWorkoutAlert.isFirstMilestone(with:activityType:)(void *a1, void *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = v2;
  result = [a1 unitManager];
  if (result)
  {
    v9 = result;
    v10 = [result userDistanceHKUnitForActivityType_];

    [v6 distanceValue];
    v12 = NLMilestoneForDistance(a2, v10, v11);

    return (v12 == 1);
  }

  __break(1u);
  return result;
}

id NLWorkoutAlert.isCustomSplitMultipleOfFirstMileStone(with:activityType:)(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for WorkoutAlertSegment();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = v3;
  if ([v7 type] != 6)
  {

    return 0;
  }

  v9 = OBJC_IVAR___WOSegmentAlert_segmentMarker;
  v10 = [*&v7[OBJC_IVAR___WOSegmentAlert_segmentMarker] segmentIndex];
  result = [*&v7[v9] distance];
  if (result)
  {
    v12 = result;
    v13 = objc_opt_self();
    v14 = [v13 meterUnit];
    [v12 doubleValueForUnit_];
    v16 = v15;

    result = [a1 unitManager];
    if (result)
    {
      v17 = result;
      v18 = v16 * v10;
      v19 = [result userDistanceHKUnitForActivityType_];

      v20 = FIUIDistanceTypeForActivityType();
      v21 = NLDistanceNotificationIntervalForDistanceType(v20);
      v22 = [objc_opt_self() quantityWithUnit:v19 doubleValue:v21];
      v23 = [v13 meterUnit];
      [v22 doubleValueForUnit_];
      v25 = v24;

      return (vabdd_f64(v18, v25) <= 1.0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t NLWorkoutAlert.isPowerAlert.getter()
{
  type metadata accessor for WorkoutAlertZone();
  result = swift_dynamicCastClass();
  if (result)
  {
    v1 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
    v2 = result;
    swift_beginAccess();
    return [*(v2 + v1) primaryType] == 3;
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_MetricsPublisher.clearActivitySummaryMetricsPublisher()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v17 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v17);
    *(v9 + v14) = v17;
  }

  v21 = a3(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v13, v17 + v22, a1, a2);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v2) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
}

BOOL Apple_Workout_Core_MetricsPublisher.hasActivitySummaryMetricsPublisher.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v12, a1, a2);
  return v16;
}

unint64_t Apple_Workout_Core_ConfigurationType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_ConfigurationType()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_ConfigurationType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_ConfigurationType()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_Core_MetricsPublisher.isFaked.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.isFaked : Apple_Workout_Core_MetricsPublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 16) = v3;
  return result;
}

uint64_t Apple_Workout_Core_MetricsPublisher.isFaked.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1 & 1;
  return result;
}

void (*Apple_Workout_Core_MetricsPublisher.isFaked.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 16);
  return Apple_Workout_Core_MetricsPublisher.isFaked.modify;
}

void Apple_Workout_Core_MetricsPublisher.isFaked.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = v4;

  free(v1);
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutIdentifierDeprecated.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  return v2;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.workoutIdentifierDeprecated : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.workoutIdentifierDeprecated : Apple_Workout_Core_MetricsPublisher(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  swift_beginAccess();
  v12 = *(v8 + 32);
  *(v8 + 24) = v4;
  *(v8 + 32) = v3;
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutIdentifierDeprecated.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v9);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v13 = *(v9 + 32);
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
}

void (*Apple_Workout_Core_MetricsPublisher.workoutIdentifierDeprecated.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  *(v4 + 72) = *(v6 + 24);
  *(v4 + 80) = v7;

  return Apple_Workout_Core_MetricsPublisher.workoutIdentifierDeprecated.modify;
}

void Apple_Workout_Core_MetricsPublisher.workoutIdentifierDeprecated.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    swift_beginAccess();
    v16 = *(v10 + 32);
    *(v10 + 24) = v3;
    *(v10 + 32) = v5;

    v17 = *(v2 + 80);
  }

  else
  {
    v18 = *(v6 + v4);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v4);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 96);
      v22 = *(v2 + 88);
      v23 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v20);
      *(v22 + v21) = v20;
    }

    swift_beginAccess();
    v26 = *(v20 + 32);
    *(v20 + 24) = v3;
    *(v20 + 32) = v5;
  }

  free(v2);
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutConfigurationType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  result = swift_beginAccess();
  v5 = *(v3 + 48);
  *a1 = *(v3 + 40);
  *(a1 + 8) = v5;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.workoutConfigurationType : Apple_Workout_Core_MetricsPublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  result = swift_beginAccess();
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  return result;
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutConfigurationType.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
    *(v2 + v5) = v8;
  }

  result = swift_beginAccess();
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  return result;
}

void (*Apple_Workout_Core_MetricsPublisher.workoutConfigurationType.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 48);
  *(v4 + 72) = *(v6 + 40);
  *(v4 + 80) = v7;
  return Apple_Workout_Core_MetricsPublisher.workoutConfigurationType.modify;
}

void Apple_Workout_Core_MetricsPublisher.workoutConfigurationType.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    v11 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  swift_beginAccess();
  *(v8 + 40) = v2;
  *(v8 + 48) = v5;

  free(v1);
}

uint64_t Apple_Workout_Core_MetricsPublisher.multisportWorkoutInAutoMode.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  swift_beginAccess();
  return *(v1 + 49);
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.multisportWorkoutInAutoMode : Apple_Workout_Core_MetricsPublisher(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 49) = v3;
  return result;
}

uint64_t Apple_Workout_Core_MetricsPublisher.multisportWorkoutInAutoMode.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 49) = a1 & 1;
  return result;
}

void (*Apple_Workout_Core_MetricsPublisher.multisportWorkoutInAutoMode.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 49);
  return Apple_Workout_Core_MetricsPublisher.multisportWorkoutInAutoMode.modify;
}

void Apple_Workout_Core_MetricsPublisher.multisportWorkoutInAutoMode.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 49) = v4;

  free(v1);
}

uint64_t Apple_Workout_Core_MetricsPublisher.elapsedTimeMetricsPublisher.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  }

  *a1 = 0;
  v11 = a1 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.elapsedTimeMetricsPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  }

  *a2 = 0;
  v12 = a2 + *(v10 + 20);
  UnknownStorage.init()();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.elapsedTimeMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.elapsedTimeMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  v15 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.elapsedTimeMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v19 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.elapsedTimeMetricsPublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.activitySummaryMetricsPublisher.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  }

  *a1 = 0;
  v11 = &a1[*(v9 + 20)];
  UnknownStorage.init()();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.activitySummaryMetricsPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  }

  *a2 = 0;
  v12 = &a2[*(v10 + 20)];
  UnknownStorage.init()();
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.activitySummaryMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.activitySummaryMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  v15 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.activitySummaryMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v19 = &v14[*(v9 + 20)];
    UnknownStorage.init()();
    v20 = *(v9 + 24);
    v21 = type metadata accessor for Apple_Workout_Core_HKActivitySummary(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.activitySummaryMetricsPublisher.modify;
}

void Apple_Workout_Core_MetricsPublisher.elapsedTimeMetricsPublisher.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(*(v8 + 120), *(v8 + 112), a3);
    v11 = *(v10 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v8 + 128);
      v15 = *(v8 + 72);
      v16 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v13 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v13);
      *(v15 + v14) = v13;
    }

    v20 = *(v8 + 112);
    v19 = *(v8 + 120);
    v21 = *(v8 + 96);
    v22 = *(v8 + 104);
    v24 = *(v8 + 80);
    v23 = *(v8 + 88);
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v20, v24, a3);
    (*(v22 + 56))(v24, 0, 1, v21);
    v25 = *a4;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v24, v13 + v25, a5, a6);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v19, a3);
  }

  else
  {
    v26 = *(v8 + 72);
    v27 = *(v26 + v9);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v26 + v9);
    if ((v28 & 1) == 0)
    {
      v30 = *(v8 + 128);
      v31 = *(v8 + 72);
      v32 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      v29 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v29);
      *(v31 + v30) = v29;
    }

    v20 = *(v8 + 112);
    v19 = *(v8 + 120);
    v35 = *(v8 + 96);
    v36 = *(v8 + 104);
    v24 = *(v8 + 80);
    v23 = *(v8 + 88);
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v19, v24, a3);
    (*(v36 + 56))(v24, 0, 1, v35);
    v37 = *a4;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v24, v29 + v37, a5, a6);
    swift_endAccess();
  }

  free(v19);
  free(v20);
  free(v23);
  free(v24);

  free(v8);
}

uint64_t Apple_Workout_Core_MetricsPublisher.heartRateMetricsPublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  v11 = a1 + v9[6];
  UnknownStorage.init()();
  v12 = a1 + v9[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v9[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v9[9];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v9[10];
  v16 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.heartRateMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.heartRateMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  v15 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.heartRateMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    v19 = v14 + v9[6];
    UnknownStorage.init()();
    v20 = v14 + v9[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v14 + v9[9];
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v9[10];
    v24 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
    (*(*(v24 - 8) + 56))(v14 + v23, 1, 1, v24);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.heartRateMetricsPublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.energyMetricsPublisher.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  }

  *a1 = 0;
  a1[1] = 0;
  v11 = a1 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.energyMetricsPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  }

  *a2 = 0;
  a2[1] = 0;
  v12 = a2 + *(v10 + 24);
  UnknownStorage.init()();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.energyMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.energyMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  v15 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.energyMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v19 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.energyMetricsPublisher.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.distance.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.distance.modify;
}

double Apple_Workout_Core_MetricsPublisher.distance.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.distance : Apple_Workout_Core_MetricsPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(a2 + v8) = v11;
  }

  v15 = *a5;
  result = swift_beginAccess();
  *(v11 + v15) = v7;
  return result;
}

uint64_t Apple_Workout_Core_MetricsPublisher.distance.setter(uint64_t *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v9);
    *(v4 + v6) = v9;
  }

  v13 = *a1;
  result = swift_beginAccess();
  *(v9 + v13) = a2;
  return result;
}

void (*Apple_Workout_Core_MetricsPublisher.secondsAheadOfPacer.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.secondsAheadOfPacer.modify;
}

void Apple_Workout_Core_MetricsPublisher.distance.modify(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 88);
    v12 = *(v4 + 80);
    v13 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v12 + v11) = v10;
  }

  v16 = *a3;
  swift_beginAccess();
  *(v10 + v16) = v5;

  free(v4);
}

void (*Apple_Workout_Core_MetricsPublisher.currentPace.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.currentPace.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.averagePace.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.averagePace.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.rollingPace.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.rollingPace.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.requiredPace.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.requiredPace.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.fastestPace.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.fastestPace.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.lapsMetricsPublisher.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  }

  *a1 = 0;
  v11 = a1 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.lapsMetricsPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  }

  *a2 = 0;
  v12 = a2 + *(v10 + 20);
  UnknownStorage.init()();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.lapsMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.lapsMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  v15 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.lapsMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v19 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.lapsMetricsPublisher.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.elevationGain.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.elevationGain.modify;
}

double Apple_Workout_Core_MetricsPublisher.elevationGain.getter(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + *a1;
  swift_beginAccess();
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.elevationGain : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, void *a2@<X3>, double *a3@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + *a2;
  result = swift_beginAccess();
  v6 = *v4;
  if (*(v4 + 8))
  {
    v6 = 0.0;
  }

  *a3 = v6;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.elevationGain : Apple_Workout_Core_MetricsPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(a2 + v8) = v11;
  }

  v15 = v11 + *a5;
  result = swift_beginAccess();
  *v15 = v7;
  *(v15 + 8) = 0;
  return result;
}

uint64_t Apple_Workout_Core_MetricsPublisher.elevationGain.setter(void *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v9);
    *(v4 + v6) = v9;
  }

  v13 = v9 + *a1;
  result = swift_beginAccess();
  *v13 = a2;
  *(v13 + 8) = 0;
  return result;
}

void (*Apple_Workout_Core_MetricsPublisher.currentElevation.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.currentElevation.modify;
}

void Apple_Workout_Core_MetricsPublisher.elevationGain.modify(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 88);
    v12 = *(v4 + 80);
    v13 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v12 + v11) = v10;
  }

  v16 = v10 + *a3;
  swift_beginAccess();
  *v16 = v5;
  *(v16 + 8) = 0;

  free(v4);
}

BOOL Apple_Workout_Core_MetricsPublisher.hasElevationGain.getter(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + *a1;
  swift_beginAccess();
  return (*(v2 + 8) & 1) == 0;
}

uint64_t Apple_Workout_Core_MetricsPublisher.clearElevationGain()(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(v3 + v4) = v7;
  }

  v11 = v7 + *a1;
  result = swift_beginAccess();
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

uint64_t Apple_Workout_Core_MetricsPublisher.elevationChartData.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v2 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.elevationChartData : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v4 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.elevationChartData : Apple_Workout_Core_MetricsPublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);

  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  swift_beginAccess();
  v12 = *(v7 + v11);
  *(v7 + v11) = v3;
}

uint64_t Apple_Workout_Core_MetricsPublisher.elevationChartData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  swift_beginAccess();
  v12 = *(v7 + v11);
  *(v7 + v11) = a1;
}

void (*Apple_Workout_Core_MetricsPublisher.elevationChartData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return Apple_Workout_Core_MetricsPublisher.elevationChartData.modify;
}

void Apple_Workout_Core_MetricsPublisher.elevationChartData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
    swift_beginAccess();
    v17 = *(v10 + v16);
    *(v10 + v16) = v3;

    v18 = *v4;
  }

  else
  {
    v19 = *(v6 + v5);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v5);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 88);
      v23 = *(v2 + 80);
      v24 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v21);
      *(v23 + v22) = v21;
    }

    v27 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
    swift_beginAccess();
    v28 = *(v21 + v27);
    *(v21 + v27) = v3;
  }

  free(v2);
}

uint64_t Apple_Workout_Core_MetricsPublisher.elevationChartUnit.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.elevationChartUnit : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.elevationChartUnit : Apple_Workout_Core_MetricsPublisher(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  v12 = (v8 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  v13 = v12[1];
  *v12 = v4;
  v12[1] = v3;
}

uint64_t Apple_Workout_Core_MetricsPublisher.elevationChartUnit.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v9);
    *(v3 + v6) = v9;
  }

  v13 = (v9 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  v14 = v13[1];
  *v13 = a1;
  v13[1] = a2;
}

void (*Apple_Workout_Core_MetricsPublisher.elevationChartUnit.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return Apple_Workout_Core_MetricsPublisher.elevationChartUnit.modify;
}

void Apple_Workout_Core_MetricsPublisher.elevationChartUnit.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
      *(v12 + v11) = v10;
    }

    v16 = (v10 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
    swift_beginAccess();
    v17 = v16[1];
    *v16 = v3;
    v16[1] = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v21);
      *(v23 + v22) = v21;
    }

    v27 = (v21 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
    swift_beginAccess();
    v28 = v27[1];
    *v27 = v3;
    v27[1] = v5;
  }

  free(v2);
}

void (*Apple_Workout_Core_MetricsPublisher.currentCadence.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.currentCadence.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.averageCadence.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.averageCadence.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.powerMetricsPublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  }

  *a1 = 0;
  v11 = MEMORY[0x277D84F90];
  *(a1 + 8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5Int32V_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a1 + 16) = v11;
  v12 = a1 + v9[7];
  UnknownStorage.init()();
  v13 = a1 + v9[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v9[9];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v9[10];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v9[11];
  v17 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.powerMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.powerMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  v15 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.powerMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v19 = MEMORY[0x277D84F90];
    *(v14 + 8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5Int32V_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v14 + 16) = v19;
    v20 = v14 + v9[7];
    UnknownStorage.init()();
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v14 + v9[9];
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v14 + v9[10];
    *v23 = 0;
    *(v23 + 8) = 1;
    v24 = v9[11];
    v25 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
    (*(*(v25 - 8) + 56))(v14 + v24, 1, 1, v25);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.powerMetricsPublisher.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.flightsClimbed.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.flightsClimbed.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutStatePublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v11) = static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.workoutStatePublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  }

  UnknownStorage.init()();
  v12 = *(v10 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v12) = static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance;
  v13 = v11(v7, 1, v10);

  if (v13 != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.workoutStatePublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutStatePublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  v15 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.workoutStatePublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.workoutStatePublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  }

  *(a1 + 60) = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  v11 = a1 + v9[14];
  UnknownStorage.init()();
  v12 = v9[15];
  v13 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v14 = *(*(v13 - 8) + 56);
  v14(a1 + v12, 1, 1, v13);
  v14(a1 + v9[16], 1, 1, v13);
  v15 = a1 + v9[17];
  *v15 = 0;
  v15[8] = 1;
  v16 = a1 + v9[18];
  *v16 = 0;
  v16[8] = 1;
  v17 = a1 + v9[19];
  *v17 = 0;
  v17[4] = 1;
  v18 = a1 + v9[20];
  *v18 = 0;
  v18[8] = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  v15 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v10 = *(v9 + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v5[11] = v11;
  Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher.getter(v11);
  return Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher.modify;
}

void Apple_Workout_Core_MetricsPublisher.intervalsMetricsPublisher.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[6];
    outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v2[11], v2[10], type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
    v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
    v5 = *(v3 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v3 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
      *(v3 + v4) = v7;
    }

    v12 = v2[10];
    v11 = v2[11];
    v13 = v2[8];
    v14 = v2[9];
    v15 = v2[7];
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v15, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
    (*(v14 + 56))(v15, 0, 1, v13);
    v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v15, v7 + v16, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v11, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  }

  else
  {
    v17 = v2[6];
    v18 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
    v19 = *(v17 + v18);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v17 + v18);
    if ((v20 & 1) == 0)
    {
      v22 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      v21 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v21);
      *(v17 + v18) = v21;
    }

    v12 = v2[10];
    v11 = v2[11];
    v25 = v2[8];
    v26 = v2[9];
    v15 = v2[7];
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v11, v15, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
    (*(v26 + 56))(v15, 0, 1, v25);
    v27 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v15, v21 + v27, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
    swift_endAccess();
  }

  free(v11);
  free(v12);
  free(v15);

  free(v2);
}

uint64_t Apple_Workout_Core_MetricsPublisher.multisportMetricsPublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v11) = static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance;
  v12 = v10(v6, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.multisportMetricsPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  }

  UnknownStorage.init()();
  v12 = *(v10 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v12) = static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance;
  v13 = v11(v7, 1, v10);

  if (v13 != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.multisportMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.multisportMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  v15 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.multisportMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.multisportMetricsPublisher.modify;
}