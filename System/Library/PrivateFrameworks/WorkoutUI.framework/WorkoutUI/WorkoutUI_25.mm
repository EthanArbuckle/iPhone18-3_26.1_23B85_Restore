unint64_t protocol witness for CustomStringConvertible.description.getter in conformance DataLinkWorkoutState()
{
  v1 = 0x657669746341;
  v2 = 0x726F576E49746F4ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ELL;
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

uint64_t getEnumTagSinglePayload for DataLinkWorkoutState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataLinkWorkoutState(uint64_t result, unsigned int a2, unsigned int a3)
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

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for DataLinkMonitor()) init];
  static DataLinkMonitor.shared = result;
  return result;
}

id static DataLinkMonitor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static DataLinkMonitor.shared;

  return v1;
}

uint64_t DataLinkMonitor.delegate.getter()
{
  return DataLinkMonitor.delegate.getter();
}

{
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t (*DataLinkMonitor.delegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DataLinkMonitor.delegate.modify;
}

uint64_t DataLinkMonitor.delegate.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*DataLinkMonitor.analyticsDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_analyticsDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DataLinkMonitor.analyticsDelegate.modify;
}

void DataLinkMonitor.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
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

char *DataLinkMonitor.init()()
{
  v1 = v0;
  v52 = type metadata accessor for Logger();
  v2 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v48 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_analyticsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState] = 2;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_workoutStateCancellable] = 0;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_workoutNotificationCenter] = 0;
  v15 = OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_metricPlatterAnalytics;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v49 = v8;
  *&v1[v15] = static MetricPlatterAnalytics.shared;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_observers] = MEMORY[0x277D84F90];
  v16 = OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_healthStore;
  v17 = objc_allocWithZone(MEMORY[0x277CCD4D8]);

  *&v1[v16] = [v17 init];
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_observerQuery] = 0;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_delayedLongPressGestureMinimumDuration] = 0x4008000000000000;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_failedToEndWorkoutRetryCountMax] = 1;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_failedToEndWorkoutRetrySeconds] = 0x4008000000000000;
  static WOLog.dataLink.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20C66F000, v18, v19, "[DataLinkMonitor.init] begin", v20, 2u);
    MEMORY[0x20F30E080](v20, -1, -1);
  }

  v21 = *(v2 + 8);
  v21(v14, v52);
  v22 = [objc_allocWithZone(type metadata accessor for MetricsPublisher()) init];
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_publisher] = v22;
  type metadata accessor for DataLinkClient();
  swift_allocObject();
  v48 = v22;
  *&v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_client] = DataLinkClient.init(metricsPublisher:)();
  v1[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_mirroredStartOnLongPressGestureEnabled] = [objc_opt_self() isAppleInternalInstall];
  v23 = type metadata accessor for DataLinkMonitor();
  v54.receiver = v1;
  v54.super_class = v23;
  v24 = objc_msgSendSuper2(&v54, sel_init);
  v25 = *&v24[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_publisher];
  v26 = v24;
  v27 = v25;
  MetricsPublisher.workoutStatePublisher.getter();

  type metadata accessor for WorkoutStatePublisher();
  lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88]);
  v28 = ObservableObject<>.objectWillChange.getter();

  v53 = v28;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for ObservableObjectPublisher();
  v29 = Publisher<>.sink(receiveValue:)();

  *&v26[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_workoutStateCancellable] = v29;

  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of DataLinkClient.presenceDidChangeHandler.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of DataLinkClient.metricsUpdateHandler.setter();

  type metadata accessor for WorkoutNotificationCenter();
  swift_allocObject();
  *&v26[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_workoutNotificationCenter] = WorkoutNotificationCenter.init()();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of DataLinkClient.notificationHandler.setter();

  static WOLog.dataLink.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_20C66F000, v30, v31, "[DataLinkMonitor.init] updatePresence to false", v32, 2u);
    MEMORY[0x20F30E080](v32, -1, -1);
  }

  v33 = v52;
  v21(v11, v52);
  DataLinkMonitor.updatePresence(_:)(0);
  v34 = v49;
  static WOLog.dataLink.getter();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v50;
  if (v37)
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_20C66F000, v35, v36, "[DataLinkMonitor.init] activateLink", v39, 2u);
    MEMORY[0x20F30E080](v39, -1, -1);
  }

  v21(v34, v33);

  dispatch thunk of DataLinkClient.activateLink()();

  static WOLog.dataLink.getter();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 67109120;
    _os_log_impl(&dword_20C66F000, v40, v41, "[DataLinkMonitor.init] FakeDataLink: %{BOOL}d", v42, 8u);
    MEMORY[0x20F30E080](v42, -1, -1);
  }

  v21(v38, v33);
  v43 = v51;
  static WOLog.dataLink.getter();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_20C66F000, v44, v45, "[DataLinkMonitor.init] end", v46, 2u);
    MEMORY[0x20F30E080](v46, -1, -1);
  }

  v21(v43, v33);
  return v26;
}

uint64_t closure #1 in DataLinkMonitor.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v87[-v1];
  v3 = type metadata accessor for UUID();
  v99 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v87[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v87[-v7];
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v97);
  v98 = &v87[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v87[-v11];
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v100 = &v87[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v87[-v17];
  MEMORY[0x28223BE20](v19);
  v95 = &v87[-v20];
  MEMORY[0x28223BE20](v21);
  v23 = &v87[-v22];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = result;
    v91 = v18;
    v92 = v5;
    v93 = v2;
    static WOLog.dataLink.getter();
    v26 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v96 = v14;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v94 = v8;
      v31 = v30;
      v89 = swift_slowAlloc();
      v101 = v89;
      *v31 = 67109634;
      v88 = v28;
      v32 = v14;
      v33 = v13;
      MetricsPublisher.workoutStatePublisher.getter();
      v34 = WorkoutStatePublisher.workoutStarted.getter();
      v90 = v3;
      v35 = v34;

      *(v31 + 4) = v35 & 1;

      *(v31 + 8) = 2048;
      v36 = v32;
      MetricsPublisher.platterPublisher.getter();
      v37 = PlatterPublisher.metricPlatters.getter();

      v38 = *(v37 + 16);

      *(v31 + 10) = v38;

      *(v31 + 18) = 2080;
      DataLinkClient.connection.getter();
      swift_getObjectType();
      v3 = v90;
      dispatch thunk of DataLinkClientConnection.sessionUUID.getter();
      swift_unknownObjectRelease();
      v39 = Optional.description.getter();
      v41 = v40;
      outlined destroy of UUID?(v12);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v101);

      *(v31 + 20) = v42;
      _os_log_impl(&dword_20C66F000, v27, v88, "[DataLinkMonitor] workoutStatePublisher change (workoutStarted: %{BOOL}d, metricPlatters: %ld, sessionUUID: %s)", v31, 0x1Cu);
      v43 = v89;
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x20F30E080](v43, -1, -1);
      v44 = v31;
      v8 = v94;
      MEMORY[0x20F30E080](v44, -1, -1);

      v45 = *(v36 + 8);
      v13 = v33;
      v45(v23, v33);
    }

    else
    {

      v45 = *(v14 + 8);
      v45(v23, v13);
    }

    MetricsPublisher.platterPublisher.getter();
    v46 = PlatterPublisher.metricPlatters.getter();

    v47 = *(v46 + 16);

    if (!v47)
    {
      static WOLog.dataLink.getter();
      v54 = v26;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 134217984;
        MetricsPublisher.platterPublisher.getter();
        v58 = PlatterPublisher.metricPlatters.getter();

        v59 = *(v58 + 16);

        *(v57 + 4) = v59;

        _os_log_impl(&dword_20C66F000, v55, v56, "[DataLinkMonitor] workoutStatePublisher change skipped, no metricPlatters published (metricPlatters: %ld)", v57, 0xCu);
        MEMORY[0x20F30E080](v57, -1, -1);
      }

      else
      {

        v55 = v54;
      }

      v78 = v100;
      return (v45)(v78, v13);
    }

    DataLinkClient.connection.getter();
    swift_getObjectType();
    v48 = v98;
    dispatch thunk of DataLinkClientConnection.sessionUUID.getter();
    swift_unknownObjectRelease();
    v49 = v99;
    if ((*(v99 + 48))(v48, 1, v3) == 1)
    {
      outlined destroy of UUID?(v48);
      v50 = v95;
      static WOLog.dataLink.getter();
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_20C66F000, v51, v52, "[DataLinkMonitor] workoutStatePublisher change, no mirroring session, skip updatePresence", v53, 2u);
        MEMORY[0x20F30E080](v53, -1, -1);
      }

      else
      {
      }

      v78 = v50;
      return (v45)(v78, v13);
    }

    v100 = v45;
    (*(v49 + 32))(v8, v48, v3);
    v60 = v91;
    static WOLog.dataLink.getter();
    v61 = *(v49 + 16);
    v62 = v92;
    v94 = v8;
    v61(v92, v8, v3);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v98 = v26;
      v67 = v3;
      v68 = v66;
      v101 = v66;
      *v65 = 136315138;
      lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v49;
      v72 = v71;
      v73 = *(v70 + 8);
      v99 = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v74 = v62;
      v75 = v73;
      v73(v74, v67);
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v72, &v101);

      *(v65 + 4) = v76;
      _os_log_impl(&dword_20C66F000, v63, v64, "[DataLinkMonitor] workoutStatePublisher change, updatePresence for mirroring sessionUUID: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      v77 = v68;
      v3 = v67;
      v26 = v98;
      MEMORY[0x20F30E080](v77, -1, -1);
      MEMORY[0x20F30E080](v65, -1, -1);
    }

    else
    {

      v79 = *(v49 + 8);
      v99 = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v80 = v62;
      v75 = v79;
      v79(v80, v3);
    }

    (v100)(v60, v13);
    v81 = type metadata accessor for TaskPriority();
    v82 = v93;
    (*(*(v81 - 8) + 56))(v93, 1, 1, v81);
    v83 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v84 = static MainActor.shared.getter();
    v85 = swift_allocObject();
    v86 = MEMORY[0x277D85700];
    v85[2] = v84;
    v85[3] = v86;
    v85[4] = v83;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v82, &async function pointer to partial apply for closure #1 in DataLinkMonitor.workoutStatePublisherDidUpdate(), v85);

    return v75(v94, v3);
  }

  return result;
}

uint64_t closure #2 in DataLinkMonitor.init()(int a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v19 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for DispatchQoS();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSSortDescriptor(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v14 = swift_allocObject();
  *(v14 + 16) = v19;
  v15 = v20;
  *(v14 + 24) = v12;
  *(v14 + 32) = v15;
  *(v14 + 40) = a3;
  aBlock[4] = partial apply for closure #1 in closure #2 in DataLinkMonitor.init();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_81;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v10, v7, v16);
  _Block_release(v16);

  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v21);
}

uint64_t closure #1 in closure #2 in DataLinkMonitor.init()(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.dataLink.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&dword_20C66F000, v9, v10, "[DataLinkMonitor] Presence did change: %{BOOL}d, from presenceDidChangeHandler", v11, 8u);
    MEMORY[0x20F30E080](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    DataLinkMonitor.updatePresence(_:)(a1 & 1);
  }

  return a3();
}

void closure #3 in DataLinkMonitor.init()(void *a1)
{
  v2 = type metadata accessor for Logger();
  v37 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v35 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = v2;
    v16 = a1;
    MetricsPublisher.workoutStatePublisher.getter();
    v17 = WorkoutStatePublisher.workoutStarted.getter();

    if ((v17 & 1) != 0 && *(v14 + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState) == 1)
    {
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v20 = static MainActor.shared.getter();
      v21 = swift_allocObject();
      v22 = MEMORY[0x277D85700];
      v21[2] = v20;
      v21[3] = v22;
      v21[4] = v19;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #3 in DataLinkMonitor.init(), v21);
    }

    else
    {
    }

    a1 = v16;
    v2 = v15;
  }

  v23 = [objc_opt_self() sharedApplication];
  v24 = [v23 applicationState];

  if (v24)
  {
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      MetricsPublisher.platterPublisher.getter();
      v27 = PlatterPublisher.metricPlatters.getter();

      v28 = *(v27 + 16);

      if (v28)
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        dispatch thunk of DataLinkClient.sessionUUID.getter();
        v29 = type metadata accessor for UUID();
        v30 = v36;
        (*(*(v29 - 8) + 56))(v36, 1, 1, v29);
        v38 = v26[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState];
        if (*&v26[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_workoutNotificationCenter])
        {

          v31 = dispatch thunk of WorkoutNotificationCenter.notification.getter();
        }

        else
        {
          v31 = 0;
        }

        MirrorLiveActivity.update(publisher:sessionUUID:workoutUUID:monitorState:notification:)(a1, v9, v30, &v38, v31);

        outlined destroy of UUID?(v30);
        outlined destroy of UUID?(v9);
      }

      else
      {
      }
    }
  }

  else
  {
    static WOLog.dataLink.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_20C66F000, v32, v33, "[DataLinkMonitor] Metrics update received while app is active, ignoring LiveActivity update", v34, 2u);
      MEMORY[0x20F30E080](v34, -1, -1);
    }

    (*(v37 + 8))(v4, v2);
  }
}

uint64_t closure #1 in closure #3 in DataLinkMonitor.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #3 in DataLinkMonitor.init(), v7, v6);
}

uint64_t closure #1 in closure #3 in DataLinkMonitor.init()()
{
  v32 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[11];
    DataLinkClient.connection.getter();
    swift_getObjectType();
    dispatch thunk of DataLinkClientConnection.sessionUUID.getter();
    swift_unknownObjectRelease();
    v4 = type metadata accessor for UUID();
    v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
    outlined destroy of UUID?(v3);
    static WOLog.dataLink.getter();
    v6 = v2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v30 = v8;
      v9 = v0[10];
      v10 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v10 = 67110146;
      *(v10 + 4) = v5 != 1;
      *(v10 + 8) = 1024;
      MetricsPublisher.workoutStatePublisher.getter();
      v11 = WorkoutStatePublisher.workoutStarted.getter();

      *(v10 + 10) = v11 & 1;

      *(v10 + 14) = 2048;
      MetricsPublisher.platterPublisher.getter();
      v12 = PlatterPublisher.metricPlatters.getter();

      v13 = *(v12 + 16);

      *(v10 + 16) = v13;

      *(v10 + 24) = 2080;
      DataLinkClient.connection.getter();
      swift_getObjectType();
      dispatch thunk of DataLinkClientConnection.sessionUUID.getter();
      swift_unknownObjectRelease();
      v14 = Optional.description.getter();
      v16 = v15;
      outlined destroy of UUID?(v9);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v31);

      *(v10 + 26) = v17;
      *(v10 + 34) = 2080;
      if (v6[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState] > 1u)
      {
        if (v6[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState] == 2)
        {
          v18 = 0xEC00000074756F6BLL;
          v19 = 0x726F576E49746F4ELL;
        }

        else
        {
          v19 = 0xD000000000000012;
          v18 = 0x800000020CB9D220;
        }
      }

      else if (v6[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState])
      {
        v18 = 0x800000020CB9D240;
        v19 = 0xD00000000000001ELL;
      }

      else
      {
        v18 = 0xE600000000000000;
        v19 = 0x657669746341;
      }

      v24 = v0[7];
      v23 = v0[8];
      v25 = v0[6];
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v31);

      *(v10 + 36) = v26;
      _os_log_impl(&dword_20C66F000, v7, v30, "[DataLinkMonitor] metricsUpdateHandler reconnection support, updatePresence to %{BOOL}d (workoutStarted: %{BOOL}d, metricPlatters: %ld, sessionUUID: %s, state: %s)", v10, 0x2Cu);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v29, -1, -1);
      MEMORY[0x20F30E080](v10, -1, -1);

      (*(v24 + 8))(v23, v25);
    }

    else
    {
      v21 = v0[7];
      v20 = v0[8];
      v22 = v0[6];

      (*(v21 + 8))(v20, v22);
    }

    DataLinkMonitor.updatePresence(_:)(v5 != 1);
  }

  v27 = v0[1];

  return v27();
}

void closure #4 in DataLinkMonitor.init()(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.dataLink.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v32 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v33[0] = v13;
    *v12 = 136315138;
    v14 = v8;
    v31 = v8;
    v15 = v14;
    v16 = [v14 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v4;
    v19 = v18;

    v8 = v31;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v33);

    *(v12 + 4) = v20;
    _os_log_impl(&dword_20C66F000, v9, v10, "Notification received: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F30E080](v13, -1, -1);
    MEMORY[0x20F30E080](v12, -1, -1);

    (*(v5 + 8))(v7, v30);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_delegate;
    v23 = Strong;
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    v25 = *(v22 + 8);

    if (v24)
    {
      ObjectType = swift_getObjectType();
      (*(v25 + 16))(v8, ObjectType, v25);
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = *(v27 + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_workoutNotificationCenter);
    v29 = v27;

    if (v28)
    {
      dispatch thunk of WorkoutNotificationCenter.add(_:)();
    }
  }
}

id DataLinkMonitor.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.dataLink.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C66F000, v6, v7, "[DataLinkMonitor.deinit] Destroying the DataLinkMonitor", v8, 2u);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_observers;
  swift_beginAccess();
  v10 = *&v1[v9];
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = objc_opt_self();
    v13 = v10 + 32;

    do
    {
      outlined init with copy of Any(v13, v20);
      v14 = [v12 defaultCenter];
      __swift_project_boxed_opaque_existential_0(v20, v20[3]);
      v15 = _bridgeAnythingToObjectiveC<A>(_:)();
      __swift_destroy_boxed_opaque_existential_0(v20);
      [v14 removeObserver_];

      swift_unknownObjectRelease();
      v13 += 32;
      --v11;
    }

    while (v11);
  }

  v16 = type metadata accessor for DataLinkMonitor();
  v19.receiver = v1;
  v19.super_class = v16;
  return objc_msgSendSuper2(&v19, sel_dealloc);
}

uint64_t closure #1 in DataLinkMonitor.workoutStatePublisherDidUpdate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DataLinkMonitor.workoutStatePublisherDidUpdate(), v7, v6);
}

uint64_t closure #1 in DataLinkMonitor.workoutStatePublisherDidUpdate()()
{
  v29 = v0;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[11];
    DataLinkClient.connection.getter();
    swift_getObjectType();
    dispatch thunk of DataLinkClientConnection.sessionUUID.getter();
    swift_unknownObjectRelease();
    v4 = type metadata accessor for UUID();
    v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
    outlined destroy of UUID?(v3);
    static WOLog.dataLink.getter();
    v6 = v2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v24 = v8;
      v9 = v0[10];
      v25 = v0[7];
      v26 = v0[6];
      v27 = v0[8];
      v10 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v10 = 67109890;
      *(v10 + 4) = v5 != 1;
      *(v10 + 8) = 1024;
      MetricsPublisher.workoutStatePublisher.getter();
      v11 = WorkoutStatePublisher.workoutStarted.getter();

      *(v10 + 10) = v11 & 1;

      *(v10 + 14) = 2048;
      MetricsPublisher.platterPublisher.getter();
      v12 = PlatterPublisher.metricPlatters.getter();

      v13 = *(v12 + 16);

      *(v10 + 16) = v13;

      *(v10 + 24) = 2080;
      DataLinkClient.connection.getter();
      swift_getObjectType();
      dispatch thunk of DataLinkClientConnection.sessionUUID.getter();
      swift_unknownObjectRelease();
      v14 = Optional.description.getter();
      v16 = v15;
      outlined destroy of UUID?(v9);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v28);

      *(v10 + 26) = v17;
      _os_log_impl(&dword_20C66F000, v7, v24, "[DataLinkMonitor] workoutStatePublisherDidUpdate, updatePresence to %{BOOL}d, (workoutStarted: %{BOOL}d, metricPlatters: %ld, sessionUUID: %s)", v10, 0x22u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x20F30E080](v23, -1, -1);
      MEMORY[0x20F30E080](v10, -1, -1);

      (*(v25 + 8))(v27, v26);
    }

    else
    {
      v19 = v0[7];
      v18 = v0[8];
      v20 = v0[6];

      (*(v19 + 8))(v18, v20);
    }

    DataLinkMonitor.updatePresence(_:)(v5 != 1);
  }

  v21 = v0[1];

  return v21();
}

uint64_t DataLinkMonitor.addObserver(_:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for DataLinkCommand();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = [objc_opt_self() defaultCenter];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v7 + 32))(v12 + v11, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  aBlock[4] = partial apply for closure #1 in DataLinkMonitor.addObserver(_:command:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  aBlock[3] = &block_descriptor_93;
  v13 = _Block_copy(aBlock);

  v14 = [v9 addObserverForName:a1 object:0 queue:0 usingBlock:v13];
  _Block_release(v13);

  result = swift_getObjectType();
  a3[3] = result;
  *a3 = v14;
  return result;
}

void closure #1 in DataLinkMonitor.addObserver(_:command:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DataLinkCommand();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    (*(v5 + 32))(v10 + v9, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    dispatch thunk of DataLinkClient.send(command:acknowledged:)();
  }
}

uint64_t closure #1 in closure #1 in DataLinkMonitor.addObserver(_:command:)(char a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DataLinkCommand();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Logger();
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = (v7 + 16);
  if (a1)
  {
    static WOLog.dataLink.getter();
    (*v19)(v12, a3, v6);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v46 = v23;
      *v22 = 136315138;
      lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand, MEMORY[0x277D7E048]);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v7 + 8))(v12, v6);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v46);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_20C66F000, v20, v21, "Did send command %s successfully", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x20F30E080](v23, -1, -1);
      MEMORY[0x20F30E080](v22, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    return (*(v43 + 8))(v18, v44);
  }

  else
  {
    static WOLog.dataLink.getter();
    (*v19)(v9, a3, v6);
    v28 = a2;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v31 = 136315394;
      lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand, MEMORY[0x277D7E048]);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v7 + 8))(v9, v6);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v46);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v45 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v36 = Optional.description.getter();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v46);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_20C66F000, v29, v30, "We sent command %s and got back error %s", v31, 0x16u);
      v39 = v42;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v39, -1, -1);
      MEMORY[0x20F30E080](v31, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    return (*(v43 + 8))(v15, v44);
  }
}

uint64_t DataLinkMonitor.addNotificationCenterObserver(_:command:)(uint64_t a1, uint64_t a2)
{
  DataLinkMonitor.addObserver(_:command:)(a1, a2, v9);
  v3 = OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_observers;
  swift_beginAccess();
  v4 = *(v2 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    *(v2 + v3) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  outlined init with take of Any(v9, &v4[32 * v7 + 32]);
  *(v2 + v3) = v4;
  return swift_endAccess();
}

Swift::Void __swiftcall DataLinkMonitor.endMirroring()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v42 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataLinkCommand();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v43 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  (*(v6 + 104))(&v34 - v14, *MEMORY[0x277D7E008], v5, v13);
  static WOLog.dataLink.getter();
  v40 = *(v6 + 16);
  v40(v10, v15, v5);
  v41 = v4;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v2;
    v19 = v18;
    v35 = v18;
    v36 = swift_slowAlloc();
    v45 = v36;
    *v19 = 136315138;
    lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand, MEMORY[0x277D7E048]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v1;
    v22 = v21;
    v23 = *(v6 + 8);
    v39 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v10, v5);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v45);

    v25 = v35;
    *(v35 + 4) = v24;
    _os_log_impl(&dword_20C66F000, v16, v17, "[mirrored] endMirroring: sendCommand is sending (%s)", v25, 0xCu);
    v26 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x20F30E080](v26, -1, -1);
    MEMORY[0x20F30E080](v25, -1, -1);

    v27 = v23;
    (*(v42 + 8))(v41, v37);
  }

  else
  {

    v27 = *(v6 + 8);
    v39 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v10, v5);
    (*(v42 + 8))(v41, v2);
  }

  static Double.machTimestamp.getter();
  v29 = v28;
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v44;
  v40(v44, v15, v5);
  v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  *(v33 + 24) = v29;
  (*(v6 + 32))(v33 + v32, v31, v5);

  dispatch thunk of DataLinkClient.send(command:acknowledged:)();

  v27(v15, v5);
}

void closure #1 in DataLinkMonitor.endMirroring()(int a1, void *a2, double a3, uint64_t a4, uint64_t a5)
{
  v50 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for DataLinkCommand();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v49 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v48 = v15;
    static Double.machTimestamp.getter();
    v21 = v20;
    static WOLog.dataLink.getter();
    (*(v12 + 16))(v14, a5, v11);
    v22 = a2;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v47 = v10;
      v26 = v25;
      v45 = swift_slowAlloc();
      v52 = v45;
      *v26 = 136315906;
      lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand, MEMORY[0x277D7E048]);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v19;
      v29 = v28;
      (*(v12 + 8))(v14, v11);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v52);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2048;
      *(v26 + 14) = v21 - a3;
      *(v26 + 22) = 1024;
      v31 = v50;
      *(v26 + 24) = v50 & 1;
      *(v26 + 28) = 2080;
      v51 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v32 = Optional.description.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v52);

      *(v26 + 30) = v34;
      v19 = v46;
      _os_log_impl(&dword_20C66F000, v23, v24, "[mirrored] endMirroring: sendCommand completion (%s) with roundtripTime: %f (success: %{BOOL}d, error %s)", v26, 0x26u);
      v35 = v45;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v35, -1, -1);
      v36 = v26;
      v10 = v47;
      MEMORY[0x20F30E080](v36, -1, -1);

      (*(v49 + 8))(v17, v48);
      if (v31)
      {
        goto LABEL_7;
      }
    }

    else
    {

      (*(v12 + 8))(v14, v11);
      (*(v49 + 8))(v17, v48);
      if (v50)
      {
LABEL_7:

        return;
      }
    }

    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v39 = static MainActor.shared.getter();
    v40 = v19;
    v41 = swift_allocObject();
    v42 = MEMORY[0x277D85700];
    v41[2] = v39;
    v41[3] = v42;
    v41[4] = v38;

    v43 = v41;
    v19 = v40;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in DataLinkMonitor.endMirroring(), v43);

    goto LABEL_7;
  }
}

uint64_t closure #1 in closure #1 in DataLinkMonitor.endMirroring()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in DataLinkMonitor.endMirroring(), v7, v6);
}

uint64_t closure #1 in closure #1 in DataLinkMonitor.endMirroring()()
{

  static WOLog.dataLink.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20C66F000, v1, v2, "[mirrored] endMirroring: failed - updatePresence(false)", v3, 2u);
    MEMORY[0x20F30E080](v3, -1, -1);
  }

  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    DataLinkMonitor.updatePresence(_:)(0);
  }

  v9 = v0[1];

  return v9();
}

uint64_t DataLinkMonitor.endWorkout(retryCount:)(uint64_t a1)
{
  v3 = type metadata accessor for DataLinkCommand();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  Date.init()();
  (*(v9 + 16))(v11, v14, v8);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  (*(v9 + 32))(v16 + v15, v11, v8);
  v17 = v1;
  DataLinkMonitor.startObservingWorkouts(completion:)(partial apply for closure #1 in DataLinkMonitor.startMonitoringHealthDatabaseForWorkoutSaveTime(), v16);

  (*(v9 + 8))(v14, v8);
  static WOLog.dataLink.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v43 = v17;
    v21 = v20;
    v22 = swift_slowAlloc();
    v50 = v22;
    *v21 = 136315138;
    v42 = v7;
    v23 = *MEMORY[0x277D7E018];
    v44 = a1;
    v24 = v47;
    v25 = v48;
    v26 = v49;
    (*(v48 + 104))(v47, v23, v49);
    lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand, MEMORY[0x277D7E048]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v30 = v25;
    a1 = v44;
    (*(v30 + 8))(v24, v26);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v50);
    v32 = v23;

    *(v21 + 4) = v31;
    _os_log_impl(&dword_20C66F000, v18, v19, "[mirrored] endWorkout: sendCommand is sending (%s)", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x20F30E080](v22, -1, -1);
    MEMORY[0x20F30E080](v21, -1, -1);

    (*(v45 + 8))(v42, v46);
  }

  else
  {

    (*(v45 + 8))(v7, v46);
    v32 = *MEMORY[0x277D7E018];
  }

  static Double.machTimestamp.getter();
  v34 = v33;
  v36 = v47;
  v35 = v48;
  v37 = v49;
  (*(v48 + 104))(v47, v32, v49);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v34;
  v39[4] = a1;

  dispatch thunk of DataLinkClient.send(command:acknowledged:)();

  (*(v35 + 8))(v36, v37);
}

void closure #1 in DataLinkMonitor.endWorkout(retryCount:)(int a1, void *a2, double a3, uint64_t a4, uint64_t a5)
{
  v115 = a5;
  LODWORD(v114) = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v110 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v108 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DispatchQoS();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for DispatchTime();
  v105 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v103 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = &v97 - v12;
  v13 = type metadata accessor for DataLinkCommand();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v102 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v97 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v97 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v99 = v7;
    v101 = v22;
    static Double.machTimestamp.getter();
    v29 = v28;
    static WOLog.dataLink.getter();
    v30 = a2;
    v31 = v27;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    v116 = v31;
    v100 = v33;
    v34 = os_log_type_enabled(v32, v33);
    v35 = &unk_27C7EA000;
    v111 = v17;
    v112 = v18;
    if (v34)
    {
      v36 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v118 = v98;
      *v36 = 136316418;
      (*(v14 + 104))(v16, *MEMORY[0x277D7E018], v13);
      lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand, MEMORY[0x277D7E048]);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v14 + 8))(v16, v13);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v118);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2048;
      *(v36 + 14) = v29 - a3;
      *(v36 + 22) = 1024;
      v41 = v114;
      *(v36 + 24) = v114 & 1;
      *(v36 + 28) = 2080;
      aBlock = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v42 = Optional.description.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v118);

      *(v36 + 30) = v44;
      *(v36 + 38) = 2080;
      v45 = 0xE000000000000000;
      v46 = v115;
      if (v115 < 1)
      {
        v48 = 0;
      }

      else
      {
        aBlock = 0;
        v120 = 0xE000000000000000;
        _StringGuts.grow(_:)(18);

        aBlock = 0x6120797274657220;
        v120 = 0xEF2074706D657474;
        v117 = v46;
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x20F30BC00](v47);

        MEMORY[0x20F30BC00](44, 0xE100000000000000);
        v48 = aBlock;
        v45 = v120;
      }

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v45, &v118);

      *(v36 + 40) = v50;
      *(v36 + 48) = 2080;
      v51 = *(v116 + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState);
      v52 = v112;
      if (v51 > 1)
      {
        if (v51 == 2)
        {
          v53 = 0x726F576E49746F4ELL;
          v54 = 0xEC00000074756F6BLL;
        }

        else
        {
          v53 = 0xD000000000000012;
          v54 = 0x800000020CB9D220;
        }
      }

      else if (*(v116 + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState))
      {
        v54 = 0x800000020CB9D240;
        v53 = 0xD00000000000001ELL;
      }

      else
      {
        v53 = 0x657669746341;
        v54 = 0xE600000000000000;
      }

      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v118);

      *(v36 + 50) = v55;
      _os_log_impl(&dword_20C66F000, v32, v100, "[mirrored] endWorkout: sendCommand completion (%s) with roundtripTime: %f (success: %{BOOL}d, error %s),%s state: %s", v36, 0x3Au);
      v56 = v98;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v56, -1, -1);
      MEMORY[0x20F30E080](v36, -1, -1);

      v49 = *(v52 + 8);
      v17 = v111;
      v49(v25, v111);
      v35 = &unk_27C7EA000;
    }

    else
    {

      v49 = *(v18 + 8);
      v49(v25, v17);
      v46 = v115;
      v41 = v114;
    }

    v57 = v35[302];
    v58 = v116;
    v59 = v57[v116];
    if (v41)
    {
      if (v59 != 3)
      {

        return;
      }

      v57[v116] = 0;
      v60 = v102;
      static WOLog.dataLink.getter();
      v61 = v58;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v62, v63))
      {

        v91 = v60;
        v92 = v17;
LABEL_47:
        v49(v91, v92);
        return;
      }

      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock = v65;
      *v64 = 136315394;
      v66 = 0x800000020CB9D220;
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000020CB9D220, &aBlock);

      *(v64 + 4) = v67;
      *(v64 + 12) = 2080;
      v68 = v57[v58];
      if (v68 > 1)
      {
        v69 = v102;
        if (v68 == 2)
        {
          v70 = 0x726F576E49746F4ELL;
          v66 = 0xEC00000074756F6BLL;
        }

        else
        {
          v70 = 0xD000000000000012;
        }
      }

      else
      {
        v69 = v102;
        if (v68)
        {
          v66 = 0x800000020CB9D240;
          v70 = 0xD00000000000001ELL;
        }

        else
        {
          v70 = 0x657669746341;
          v66 = 0xE600000000000000;
        }
      }

      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v66, &aBlock);

      *(v64 + 14) = v96;
      _os_log_impl(&dword_20C66F000, v62, v63, "[mirrored] endWorkout: success, changed state from %s to %s", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v65, -1, -1);
      MEMORY[0x20F30E080](v64, -1, -1);

      v91 = v69;
    }

    else
    {
      v57[v116] = 3;
      v71 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        return;
      }

      v100 = v59;
      v102 = v57;
      v115 = v49;
      type metadata accessor for NSSortDescriptor(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v72 = static OS_dispatch_queue.main.getter();
      v73 = v103;
      static DispatchTime.now()();
      v74 = v104;
      + infix(_:_:)();
      v114 = *(v105 + 8);
      v114(v73, v113);
      v75 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v76 = swift_allocObject();
      *(v76 + 16) = v75;
      *(v76 + 24) = v71;
      v105 = v71;
      v123 = partial apply for closure #1 in closure #1 in DataLinkMonitor.endWorkout(retryCount:);
      v124 = v76;
      aBlock = MEMORY[0x277D85DD0];
      v120 = 1107296256;
      v121 = thunk for @escaping @callee_guaranteed () -> ();
      v122 = &block_descriptor_53_0;
      v77 = _Block_copy(&aBlock);

      v78 = v106;
      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v79 = v108;
      v80 = v99;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F30C1A0](v74, v78, v79, v77);
      _Block_release(v77);

      (*(v110 + 8))(v79, v80);
      (*(v107 + 8))(v78, v109);
      v114(v74, v113);
      v81 = v101;
      static WOLog.dataLink.getter();
      v82 = v58;
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v83, v84))
      {

        (v115)(v81, v111);
        return;
      }

      v85 = 0x657669746341;
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      aBlock = v87;
      *v86 = 134218754;
      *(v86 + 4) = v105;
      *(v86 + 12) = 2048;
      *(v86 + 14) = 0x4008000000000000;
      *(v86 + 22) = 2080;
      v49 = v115;
      if (v100 > 1)
      {
        v88 = v102;
        if (v100 == 2)
        {
          v90 = 0x726F576E49746F4ELL;
          v89 = 0xEC00000074756F6BLL;
        }

        else
        {
          v90 = 0xD000000000000012;
          v89 = 0x800000020CB9D220;
        }
      }

      else
      {
        v88 = v102;
        if (v100)
        {
          v89 = 0x800000020CB9D240;
          v90 = 0xD00000000000001ELL;
        }

        else
        {
          v89 = 0xE600000000000000;
          v90 = 0x657669746341;
        }
      }

      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v89, &aBlock);

      *(v86 + 24) = v93;
      *(v86 + 32) = 2080;
      if (v88[v116] > 1u)
      {
        if (v88[v116] == 2)
        {
          v85 = 0x726F576E49746F4ELL;
          v94 = 0xEC00000074756F6BLL;
        }

        else
        {
          v85 = 0xD000000000000012;
          v94 = 0x800000020CB9D220;
        }
      }

      else if (v88[v116])
      {
        v94 = 0x800000020CB9D240;
        v85 = 0xD00000000000001ELL;
      }

      else
      {
        v94 = 0xE600000000000000;
      }

      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v94, &aBlock);

      *(v86 + 34) = v95;
      _os_log_impl(&dword_20C66F000, v83, v84, "[mirrored] endWorkout: failed, retry attempt %ld scheduled in %f seconds, state changed from %s to %s", v86, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v87, -1, -1);
      MEMORY[0x20F30E080](v86, -1, -1);

      v91 = v101;
    }

    v92 = v111;
    goto LABEL_47;
  }
}

void closure #1 in closure #1 in DataLinkMonitor.endWorkout(retryCount:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState;
    if (*(Strong + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState) == 3)
    {
      if (a2 <= 1)
      {
        static WOLog.dataLink.getter();
        v40 = v14;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v55 = v4;
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v56 = v44;
          *v43 = 134218754;
          v54 = a2;
          *(v43 + 4) = a2;
          *(v43 + 12) = 2048;
          *(v43 + 14) = 1;

          *(v43 + 22) = 2048;
          *(v43 + 24) = 0x4008000000000000;
          *(v43 + 32) = 2080;
          v45 = 0xE600000000000000;
          v46 = 0x726F576E49746F4ELL;
          v47 = 0xEC00000074756F6BLL;
          if (v14[v15] != 2)
          {
            v46 = 0xD000000000000012;
            v47 = 0x800000020CB9D220;
          }

          v48 = 0xD00000000000001ELL;
          if (v14[v15])
          {
            v45 = 0x800000020CB9D240;
          }

          else
          {
            v48 = 0x657669746341;
          }

          if (v14[v15] <= 1u)
          {
            v49 = v48;
          }

          else
          {
            v49 = v46;
          }

          if (v14[v15] <= 1u)
          {
            v50 = v45;
          }

          else
          {
            v50 = v47;
          }

          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v56);

          *(v43 + 34) = v51;
          _os_log_impl(&dword_20C66F000, v41, v42, "[mirrored] endWorkout: retry (attempt: %ld, max: %ld, seconds: %f), state: %s", v43, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v44);
          MEMORY[0x20F30E080](v44, -1, -1);
          MEMORY[0x20F30E080](v43, -1, -1);

          (*(v55 + 8))(v12, v3);
          a2 = v54;
        }

        else
        {

          (*(v4 + 8))(v12, v3);
        }

        DataLinkMonitor.endWorkout(retryCount:)(a2);
      }

      else
      {
        static WOLog.dataLink.getter();
        v16 = v14;
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v55 = v4;
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v56 = v20;
          *v19 = 134218754;
          *(v19 + 4) = a2;
          *(v19 + 12) = 2048;
          *(v19 + 14) = 1;

          *(v19 + 22) = 2048;
          *(v19 + 24) = 0x4008000000000000;
          *(v19 + 32) = 2080;
          v21 = 0xE600000000000000;
          v22 = 0x726F576E49746F4ELL;
          v23 = 0xEC00000074756F6BLL;
          if (v14[v15] != 2)
          {
            v22 = 0xD000000000000012;
            v23 = 0x800000020CB9D220;
          }

          v24 = 0xD00000000000001ELL;
          if (v14[v15])
          {
            v21 = 0x800000020CB9D240;
          }

          else
          {
            v24 = 0x657669746341;
          }

          if (v14[v15] <= 1u)
          {
            v25 = v24;
          }

          else
          {
            v25 = v22;
          }

          if (v14[v15] <= 1u)
          {
            v26 = v21;
          }

          else
          {
            v26 = v23;
          }

          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v56);

          *(v19 + 34) = v27;
          _os_log_impl(&dword_20C66F000, v17, v18, "[mirrored] endWorkout: reached max retry count, changing presence to false, retry (attempt: %ld, max: %ld, seconds: %f), state: %s - updatePresence(false)", v19, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v20);
          MEMORY[0x20F30E080](v20, -1, -1);
          MEMORY[0x20F30E080](v19, -1, -1);

          (*(v55 + 8))(v9, v3);
        }

        else
        {

          (*(v4 + 8))(v9, v3);
        }

        DataLinkMonitor.updatePresence(_:)(0);
      }
    }

    else
    {
      static WOLog.dataLink.getter();
      v28 = v14;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v54 = v3;
        v55 = v4;
        v31 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v56 = v53;
        *v31 = 136316162;
        *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000020CB9D220, &v56);
        *(v31 + 12) = 2048;
        *(v31 + 14) = a2;
        *(v31 + 22) = 2048;
        *(v31 + 24) = 1;

        *(v31 + 32) = 2048;
        *(v31 + 34) = 0x4008000000000000;
        *(v31 + 42) = 2080;
        v32 = 0x726F576E49746F4ELL;
        v33 = 0xEC00000074756F6BLL;
        if (v14[v15] != 2)
        {
          v32 = 0xD000000000000012;
          v33 = 0x800000020CB9D220;
        }

        v34 = 0xE600000000000000;
        v35 = 0x657669746341;
        if (v14[v15])
        {
          v35 = 0xD00000000000001ELL;
          v34 = 0x800000020CB9D240;
        }

        if (v14[v15] <= 1u)
        {
          v36 = v35;
        }

        else
        {
          v36 = v32;
        }

        if (v14[v15] <= 1u)
        {
          v37 = v34;
        }

        else
        {
          v37 = v33;
        }

        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v56);

        *(v31 + 44) = v38;
        _os_log_impl(&dword_20C66F000, v29, v30, "[mirrored] endWorkout: stopped retry, current state is not %s anymore, retry (attempt: %ld, max: %ld, seconds: %f), state: %s", v31, 0x34u);
        v39 = v53;
        swift_arrayDestroy();
        MEMORY[0x20F30E080](v39, -1, -1);
        MEMORY[0x20F30E080](v31, -1, -1);

        (*(v55 + 8))(v6, v54);
      }

      else
      {

        (*(v4 + 8))(v6, v3);
      }
    }
  }
}

void DataLinkMonitor.updatePresence(_:)(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState;
  v9 = v2[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState];
  v10 = a1 ^ 1;
  if (v9 == 2)
  {
    v10 = 0;
  }

  v11 = v9 >= 2;
  v12 = v9 >= 2 && v9 == 2;
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v30 = v13;
  if (a1)
  {
    LODWORD(v14) = v12;
  }

  else
  {
    LODWORD(v14) = 2;
  }

  static WOLog.dataLink.getter();
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v29 = v14;
    v28 = v4;
    v18 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v18 = 67109890;
    *(v18 + 4) = a1 & 1;
    *(v18 + 8) = 2080;
    if (v2[v8] > 1u)
    {
      if (v2[v8] == 2)
      {
        v20 = 0x726F576E49746F4ELL;
        v19 = 0xEC00000074756F6BLL;
      }

      else
      {
        v19 = 0x800000020CB9D220;
        v20 = 0xD000000000000012;
      }
    }

    else if (v2[v8])
    {
      v20 = 0xD00000000000001ELL;
      v19 = 0x800000020CB9D240;
    }

    else
    {
      v19 = 0xE600000000000000;
      v20 = 0x657669746341;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v31);

    *(v18 + 10) = v22;
    *(v18 + 18) = 2080;
    v23 = 0xD00000000000001ELL;
    v24 = 0x800000020CB9D240;
    if (v29 != 1)
    {
      v23 = 0x726F576E49746F4ELL;
      v24 = 0xEC00000074756F6BLL;
    }

    if (v29)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0x657669746341;
    }

    if (v29)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0xE600000000000000;
    }

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v31);

    *(v18 + 20) = v27;
    *(v18 + 28) = 1024;
    v21 = v30;
    *(v18 + 30) = v30 & 1;
    _os_log_impl(&dword_20C66F000, v16, v17, "[DataLinkMonitor] updatePresence (%{BOOL}d), updating workout state from (%s) to (%s), shouldShowTimeout: %{BOOL}d", v18, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v14, -1, -1);
    MEMORY[0x20F30E080](v18, -1, -1);

    (*(v5 + 8))(v7, v28);
    LOBYTE(v14) = v29;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    v21 = v30;
  }

  v32 = v14;
  DataLinkMonitor.updateWorkoutState(_:shouldShowTimeout:)(&v32, v21 & 1);
}

Swift::Void __swiftcall DataLinkMonitor.updateWorkoutState(_:shouldShowTimeout:)(WorkoutUI::DataLinkWorkoutState _, Swift::Bool shouldShowTimeout)
{
  v3 = v2;
  v93 = shouldShowTimeout;
  v4 = _;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v82[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v82[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v82[-v12];
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v92 = &v82[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v21 = &v82[-v20];
  v22 = *v4;
  v94 = OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState;
  v23 = &unk_27C7EA000;
  if (v22 != v3[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_currentWorkoutState])
  {
    v87 = v19;
    v90 = v15;
    static WOLog.dataLink.getter();
    v24 = v3;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v91 = v24;

    v27 = os_log_type_enabled(v25, v26);
    v88 = v13;
    v89 = v10;
    if (v27)
    {
      v85 = v14;
      v86 = v7;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v96[0] = v29;
      *v28 = 136315650;
      v30 = v94;
      v31 = v3[v94];
      if (v31 > 1)
      {
        if (v31 == 2)
        {
          v33 = 0x726F576E49746F4ELL;
          v32 = 0xEC00000074756F6BLL;
        }

        else
        {
          v33 = 0xD000000000000012;
          v32 = 0x800000020CB9D220;
        }
      }

      else if (v3[v94])
      {
        v32 = 0x800000020CB9D240;
        v33 = 0xD00000000000001ELL;
      }

      else
      {
        v32 = 0xE600000000000000;
        v33 = 0x657669746341;
      }

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, v96);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2080;
      v36 = 0xE600000000000000;
      v37 = 0x726F576E49746F4ELL;
      v38 = 0xEC00000074756F6BLL;
      if (v22 != 2)
      {
        v37 = 0xD000000000000012;
        v38 = 0x800000020CB9D220;
      }

      v39 = 0xD00000000000001ELL;
      if (v22)
      {
        v36 = 0x800000020CB9D240;
      }

      else
      {
        v39 = 0x657669746341;
      }

      if (v22 <= 1)
      {
        v40 = v39;
      }

      else
      {
        v40 = v37;
      }

      if (v22 <= 1)
      {
        v41 = v36;
      }

      else
      {
        v41 = v38;
      }

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v96);

      *(v28 + 14) = v42;
      *(v28 + 22) = 1024;
      *(v28 + 24) = v93;
      _os_log_impl(&dword_20C66F000, v25, v26, "[DataLinkMonitor] updating workout state from (%s) to (%s), shouldShowTimeout: %{BOOL}d", v28, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v29, -1, -1);
      MEMORY[0x20F30E080](v28, -1, -1);

      v15 = v90;
      v34 = *(v90 + 8);
      v14 = v85;
      v34(v21, v85);
      v7 = v86;
    }

    else
    {

      v15 = v90;
      v34 = *(v90 + 8);
      v34(v21, v14);
      v30 = v94;
    }

    v3[v30] = v22;
    v43 = v91;
    v44 = &v91[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v45 = *(v44 + 1);
      ObjectType = swift_getObjectType();
      LOBYTE(v95) = v3[v30];
      (*(v45 + 8))(&v95, v93, ObjectType, v45);
      swift_unknownObjectRelease();
    }

    else
    {
      v84 = v34;
      v47 = v87;
      static WOLog.dataLink.getter();
      v48 = v43;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      v83 = v50;
      if (os_log_type_enabled(v49, v50))
      {
        v85 = v14;
        v86 = v7;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v95 = v52;
        v53 = v3[v30];
        *v51 = 136315650;
        if (v53 > 1)
        {
          if (v53 == 2)
          {
            v55 = 0x726F576E49746F4ELL;
            v54 = 0xEC00000074756F6BLL;
          }

          else
          {
            v55 = 0xD000000000000012;
            v54 = 0x800000020CB9D220;
          }
        }

        else if (v53)
        {
          v54 = 0x800000020CB9D240;
          v55 = 0xD00000000000001ELL;
        }

        else
        {
          v54 = 0xE600000000000000;
          v55 = 0x657669746341;
        }

        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, &v95);

        *(v51 + 4) = v56;
        *(v51 + 12) = 2080;
        v57 = 0xE600000000000000;
        v58 = 0x726F576E49746F4ELL;
        v59 = 0xEC00000074756F6BLL;
        if (v22 != 2)
        {
          v58 = 0xD000000000000012;
          v59 = 0x800000020CB9D220;
        }

        v60 = 0xD00000000000001ELL;
        if (v22)
        {
          v57 = 0x800000020CB9D240;
        }

        else
        {
          v60 = 0x657669746341;
        }

        if (v22 <= 1)
        {
          v61 = v60;
        }

        else
        {
          v61 = v58;
        }

        if (v22 <= 1)
        {
          v62 = v57;
        }

        else
        {
          v62 = v59;
        }

        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v95);

        *(v51 + 14) = v63;
        *(v51 + 22) = 1024;
        *(v51 + 24) = v93;
        _os_log_impl(&dword_20C66F000, v49, v83, "[DataLinkMonitor] updating workout state failed, delegate is nil, from (%s) to (%s), shouldShowTimeout: %{BOOL}d", v51, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x20F30E080](v52, -1, -1);
        MEMORY[0x20F30E080](v51, -1, -1);

        v15 = v90;
        v14 = v85;
        v84(v87, v85);
        v7 = v86;
      }

      else
      {

        v84(v47, v14);
      }

      v43 = v91;
    }

    v64 = *&v43[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_metricPlatterAnalytics];
    v23 = &unk_27C7EA000;
    v65 = *&v43[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_publisher];
    v66 = type metadata accessor for TaskPriority();
    v67 = v88;
    (*(*(v66 - 8) + 56))(v88, 1, 1, v66);
    type metadata accessor for MainActor();

    v68 = v65;
    v69 = static MainActor.shared.getter();
    v70 = swift_allocObject();
    v71 = MEMORY[0x277D85700];
    *(v70 + 16) = v69;
    *(v70 + 24) = v71;
    *(v70 + 32) = v22;
    *(v70 + 40) = v64;
    *(v70 + 48) = v68;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v67, &async function pointer to partial apply for closure #1 in MetricPlatterAnalytics.workoutStateChanged(to:publisher:), v70);

    v10 = v89;
  }

  v72 = *&v3[v23[303]];
  MetricsPublisher.platterPublisher.getter();
  v73 = PlatterPublisher.metricPlatters.getter();

  v74 = *(v73 + 16);

  if (v74)
  {
    v75 = v94;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    MetricsPublisher.workoutIdentifier.getter();
    v76 = type metadata accessor for UUID();
    v77 = *(*(v76 - 8) + 56);
    v77(v10, 0, 1, v76);
    v77(v7, 1, 1, v76);
    LOBYTE(v95) = v3[v75];
    MirrorLiveActivity.update(publisher:sessionUUID:workoutUUID:monitorState:notification:)(v72, v10, v7, &v95, 0);
    outlined destroy of UUID?(v7);
    outlined destroy of UUID?(v10);
  }

  else if (v3[v94] == 2)
  {
    v78 = v92;
    static WOLog.dataLink.getter();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_20C66F000, v79, v80, "[DataLinkMonitor] transitioning to notInWorkout with an empty metricsPlatter, ensure any Live Activity is torn down.", v81, 2u);
      MEMORY[0x20F30E080](v81, -1, -1);
    }

    (*(v15 + 8))(v78, v14);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    MirrorLiveActivity.discard()();
  }
}

void closure #1 in DataLinkMonitor.startMonitoringHealthDatabaseForWorkoutSaveTime()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  if (!a1)
  {
    (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6, v9);
    v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v11 = swift_allocObject();
    (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
    v12 = a2;
    DataLinkMonitor.fetchLatestWorkout(completion:)(partial apply for closure #1 in closure #1 in DataLinkMonitor.startMonitoringHealthDatabaseForWorkoutSaveTime(), v11);
  }
}

void closure #1 in closure #1 in DataLinkMonitor.startMonitoringHealthDatabaseForWorkoutSaveTime()(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  MEMORY[0x28223BE20](v15);
  v18 = v45 - v17 + 24;
  if (a2)
  {
    v19 = v16;
    v20 = a2;
    static WOLog.dataLink.getter();
    v21 = a2;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45[0] = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v26 = Error.localizedDescription.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v45);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_20C66F000, v22, v23, "[DataLinkMonitor] Error fetching latest workout: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x20F30E080](v25, -1, -1);
      MEMORY[0x20F30E080](v24, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v18, v19);
  }

  else if (a1)
  {
    v44 = v16;
    v29 = a1;
    v30 = [v29 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v30) = static Date.> infix(_:_:)();
    v31 = *(v8 + 8);
    v31(v10, v7);
    if (v30)
    {
      Date.init()();
      Date.timeIntervalSince(_:)();
      v33 = v32;
      v31(v10, v7);
      static WOLog.dataLink.getter();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        *(v36 + 4) = v33;
        _os_log_impl(&dword_20C66F000, v34, v35, "Time taken to save mirrored workout after end button tapped %f", v36, 0xCu);
        MEMORY[0x20F30E080](v36, -1, -1);
      }

      (*(v12 + 8))(v14, v44);
      v37 = a4;
      v38 = a4 + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_analyticsDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v39 = *(v38 + 8);
        ObjectType = swift_getObjectType();
        (*(v39 + 8))(v29, ObjectType, v39, v33);
        swift_unknownObjectRelease();
      }

      v41 = *(v37 + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_observerQuery);
      if (v41)
      {
        v42 = *(v37 + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_healthStore);
        v43 = v41;
        [v42 stopQuery_];
      }
    }
  }
}

void DataLinkMonitor.startObservingWorkouts(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() workoutType];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_allocWithZone(MEMORY[0x277CCD730]);
  v12[4] = partial apply for closure #1 in DataLinkMonitor.startObservingWorkouts(completion:);
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKObserverQuery, @guaranteed @escaping @callee_guaranteed () -> (), @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_30;
  v8 = _Block_copy(v12);

  v9 = [v7 initWithSampleType:v5 predicate:0 updateHandler:v8];
  _Block_release(v8);

  v10 = *(v2 + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_observerQuery);
  *(v2 + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_observerQuery) = v9;
  v11 = v9;

  if (v11)
  {
    [*(v2 + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_healthStore) executeQuery_];
  }
}

void closure #1 in DataLinkMonitor.startObservingWorkouts(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  if (a4)
  {
    v16 = a4;
    static WOLog.dataLink.getter();
    v17 = a4;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v33 = a5;
      v21 = v20;
      v22 = swift_slowAlloc();
      v32[1] = a6;
      v23 = v22;
      v34 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v34);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_20C66F000, v18, v19, "[DataLinkMonitor] Error observing workouts: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x20F30E080](v23, -1, -1);
      v27 = v21;
      a5 = v33;
      MEMORY[0x20F30E080](v27, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v28 = a4;
    a5(a4);
  }

  else
  {
    static WOLog.dataLink.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20C66F000, v29, v30, "[DataLinkMonitor] New workout detected in workout observer", v31, 2u);
      MEMORY[0x20F30E080](v31, -1, -1);
    }

    (*(v10 + 8))(v15, v9);
    a5(0);
  }
}

void DataLinkMonitor.fetchLatestWorkout(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() workoutType];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v10 = MEMORY[0x20F30BAD0](v6, v8);

  v11 = [v9 initWithKey:v10 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20CB67B90;
  *(v12 + 32) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
  type metadata accessor for NSSortDescriptor(0, &lazy cache variable for type metadata for NSSortDescriptor);
  v15 = v5;
  v16 = v11;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v20[4] = partial apply for closure #1 in DataLinkMonitor.fetchLatestWorkout(completion:);
  v20[5] = v13;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
  v20[3] = &block_descriptor_22;
  v18 = _Block_copy(v20);
  v19 = [v14 initWithSampleType:v15 predicate:0 limit:1 sortDescriptors:isa resultsHandler:v18];

  _Block_release(v18);

  [*(v2 + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_healthStore) executeQuery_];
}

void closure #1 in DataLinkMonitor.fetchLatestWorkout(completion:)(int a1, unint64_t a2, id a3, void (*a4)(void *, id))
{
  if (a3)
  {
    v6 = a3;
    a4(0, a3);
    v7 = a3;

LABEL_4:

    return;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

  v8 = specialized _arrayConditionalCast<A, B>(_:)(a2);
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
    v12 = v8;
    v13 = __CocoaSet.count.getter();
    v8 = v12;
    if (v13)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:

LABEL_17:
    a4(0, 0);
    return;
  }

LABEL_9:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x20F30C990](0);
LABEL_12:
    v11 = v10;

    v14 = v11;
    a4(v11, 0);

    v7 = v14;

    goto LABEL_4;
  }

  if (*(v9 + 16))
  {
    v10 = *(v8 + 32);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x20F30C990](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
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
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __CocoaSet.count.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return v8;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance DataLinkMonitor@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DataLinkMonitor();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKObserverQuery, @guaranteed @escaping @callee_guaranteed () -> (), @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a4;
  v6(v10, _sIeyB_Ieg_TRTA_0, v8, a4);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for NSSortDescriptor(0, &lazy cache variable for type metadata for HKSample);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_setTm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 8);
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in MetricPlatterAnalytics.workoutStateChanged(to:publisher:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in MetricPlatterAnalytics.workoutStateChanged(to:publisher:);

  return closure #1 in MetricPlatterAnalytics.workoutStateChanged(to:publisher:)(a1, v4, v5, v8, v6, v7);
}

void partial apply for closure #1 in DataLinkMonitor.startMonitoringHealthDatabaseForWorkoutSaveTime()(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  closure #1 in DataLinkMonitor.startMonitoringHealthDatabaseForWorkoutSaveTime()(a1, v4, v5);
}

uint64_t type metadata accessor for NSSortDescriptor(uint64_t a1, unint64_t *a2)
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

void partial apply for closure #1 in closure #1 in DataLinkMonitor.startMonitoringHealthDatabaseForWorkoutSaveTime()(void *a1, void *a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in DataLinkMonitor.startMonitoringHealthDatabaseForWorkoutSaveTime()(a1, a2, v2 + v6, v7);
}

void partial apply for closure #1 in DataLinkMonitor.endMirroring()(int a1, void *a2)
{
  v5 = *(type metadata accessor for DataLinkCommand() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  closure #1 in DataLinkMonitor.endMirroring()(a1, a2, v7, v6, v8);
}

uint64_t partial apply for closure #1 in closure #1 in DataLinkMonitor.endMirroring()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #1 in DataLinkMonitor.endMirroring();

  return closure #1 in closure #1 in DataLinkMonitor.endMirroring()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in DataLinkMonitor.endMirroring()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in closure #3 in DataLinkMonitor.init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #3 in DataLinkMonitor.init();

  return closure #1 in closure #3 in DataLinkMonitor.init()(a1, v4, v5, v6);
}

uint64_t objectdestroy_63Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in DataLinkMonitor.workoutStatePublisherDidUpdate()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DataLinkMonitor.workoutStatePublisherDidUpdate();

  return closure #1 in DataLinkMonitor.workoutStatePublisherDidUpdate()(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand(unint64_t *a1, void (*a2)(uint64_t))
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

void partial apply for closure #1 in DataLinkMonitor.addObserver(_:command:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DataLinkCommand() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  closure #1 in DataLinkMonitor.addObserver(_:command:)(a1, v4, v5);
}

uint64_t partial apply for closure #1 in closure #1 in DataLinkMonitor.addObserver(_:command:)(char a1, void *a2)
{
  v5 = *(type metadata accessor for DataLinkCommand() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in DataLinkMonitor.addObserver(_:command:)(a1, a2, v6);
}

uint64_t getEnumTagSinglePayload for ExpandedPickerLabel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for ExpandedPickerLabel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CenteredOrAlignmedOverflowFrame.placeSubviews(in:proposal:subviews:cache:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = a11;
  v48 = a8;
  v47 = a7;
  v46 = a6;
  v16 = type metadata accessor for LayoutSubview();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v45 = &v39 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - v24;
  v26 = type metadata accessor for LayoutSubviews();
  (*(*(v26 - 8) + 16))(v25, a9, v26);
  v27 = *(v23 + 44);
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_4(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v25[v27] == v50[0])
  {
    return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout>, _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>>>(v25, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  }

  v42 = (v17 + 32);
  v43 = (v17 + 16);
  v41 = (v17 + 8);
  v44 = v16;
  while (1)
  {
    v29 = dispatch thunk of Collection.subscript.read();
    v30 = v45;
    (*v43)(v45);
    v29(v50, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v42)(v19, v30, v16);
    v31 = v46 & 1;
    LOBYTE(v50[0]) = v46 & 1;
    v32 = v48 & 1;
    LOBYTE(v49) = v48 & 1;
    LayoutSubview.sizeThatFits(_:)();
    v34 = v33;
    v53.origin.x = a1;
    v53.origin.y = a2;
    v53.size.width = a3;
    v53.size.height = a4;
    if (CGRectGetWidth(v53) < v34)
    {
      break;
    }

    v51.origin.x = a1;
    v51.origin.y = a2;
    v51.size.width = a3;
    v51.size.height = a4;
    CGRectGetMidX(v51);
    v52.origin.x = a1;
    v52.origin.y = a2;
    v52.size.width = a3;
    v52.size.height = a4;
    CGRectGetMinY(v52);
    static UnitPoint.topLeading.getter();
    LOBYTE(v50[0]) = v31;
    LOBYTE(v49) = v32;
    LayoutSubview.place(at:anchor:proposal:)();
LABEL_5:
    v16 = v44;
    (*v41)(v19, v44);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v25[v27] == v50[0])
    {
      return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout>, _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>>>(v25, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
    }
  }

  v35 = static HorizontalAlignment.trailing.getter();
  v36 = v40;
  if (MEMORY[0x20F309570](v35, v40))
  {
    v54.origin.x = a1;
    v54.origin.y = a2;
    v54.size.width = a3;
    v54.size.height = a4;
    CGRectGetMaxX(v54);
    v55.origin.x = a1;
    v55.origin.y = a2;
    v55.size.width = a3;
    v55.size.height = a4;
    CGRectGetMinY(v55);
    static UnitPoint.topLeading.getter();
    LOBYTE(v50[0]) = v46 & 1;
    LOBYTE(v49) = v48 & 1;
LABEL_14:
    LayoutSubview.place(at:anchor:proposal:)();
    goto LABEL_5;
  }

  v37 = static HorizontalAlignment.leading.getter();
  if (MEMORY[0x20F309570](v37, v36))
  {
    v56.origin.x = a1;
    v56.origin.y = a2;
    v56.size.width = a3;
    v56.size.height = a4;
    CGRectGetMinX(v56);
LABEL_13:
    v58.origin.x = a1;
    v58.origin.y = a2;
    v58.size.width = a3;
    v58.size.height = a4;
    CGRectGetMinY(v58);
    static UnitPoint.topLeading.getter();
    LOBYTE(v50[0]) = v46 & 1;
    LOBYTE(v49) = v48 & 1;
    goto LABEL_14;
  }

  v38 = static HorizontalAlignment.center.getter();
  if (MEMORY[0x20F309570](v38, v36))
  {
    v57.origin.x = a1;
    v57.origin.y = a2;
    v57.size.width = a3;
    v57.size.height = a4;
    CGRectGetMidX(v57);
    goto LABEL_13;
  }

  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);
  MEMORY[0x20F30BC00](0xD000000000000016, 0x800000020CB9D470);
  v49 = v40;
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance CenteredOrAlignmedOverflowFrame(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance CenteredOrAlignmedOverflowFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance CenteredOrAlignmedOverflowFrame(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1158]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance CenteredOrAlignmedOverflowFrame(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1160]);
}

void (*protocol witness for Animatable.animatableData.modify in conformance CenteredOrAlignmedOverflowFrame(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance CenteredOrAlignmedOverflowFrame;
}

void protocol witness for Animatable.animatableData.modify in conformance CenteredOrAlignmedOverflowFrame(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t ExpandedPickerLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_gH0VGAA16_OverlayModifierVyAA13_VariadicViewO4TreeVy_AA01_H4RootVy07WorkoutB0026CenteredOrAlignmedOverflowG033_B8C4C7B821191F5831160CB64507453BLLVGACyACyACyACyACyACyACyAeA022_EnvironmentKeyWritingJ0VySiSgGGAA010_FixedSizeH0VGAA08_PaddingH0VGAZyAA4FontVSgGGAZyAA5ColorVSgGGAA011_BackgroundJ0VyACyAA16RoundedRectangleVA16_GGGAA14_OpacityEffectVGGGGMd);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - v4;
  LocalizedStringKey.init(stringLiteral:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v13 = v10 & 1;
  v39 = v10 & 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = static Alignment.center.getter();
  v16 = v15;
  v17 = &v5[*(v3 + 36)];
  *v17 = *(v2 + 32);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB031CenteredOrAlignmedOverflowFrame33_B8C4C7B821191F5831160CB64507453BLLVGAA15ModifiedContentVyANyANyANyANyANyANyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA010_FixedSizeF0VGAA08_PaddingF0VGARyAA4FontVSgGGARyAA5ColorVSgGGAA011_BackgroundZ0VyANyAA16RoundedRectangleVA8_GGGAA14_OpacityEffectVGGMd);
  closure #1 in closure #1 in ExpandedPickerLabel.body.getter(v2, &v17[*(v18 + 44)]);
  v19 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB031CenteredOrAlignmedOverflowFrame33_B8C4C7B821191F5831160CB64507453BLLVGAA15ModifiedContentVyAPyAPyAPyAPyAPyAPyAA4TextVAA022_EnvironmentKeyWritingD0VySiSgGGAA010_FixedSizeH0VGAA08_PaddingH0VGATyAA4FontVSgGGATyAA5ColorVSgGGAA011_BackgroundD0VyAPyAA16RoundedRectangleVA10_GGGAA14_OpacityEffectVGGGMd) + 36)];
  *v19 = v14;
  v19[1] = v16;
  *v5 = v6;
  *(v5 + 1) = v8;
  v5[16] = v13;
  *(v5 + 3) = v12;
  v20 = v33;
  *(v5 + 2) = v32;
  *(v5 + 3) = v20;
  v21 = v38;
  v22 = v37;
  *(v5 + 6) = v36;
  *(v5 + 7) = v22;
  v23 = v35;
  *(v5 + 4) = v34;
  *(v5 + 5) = v23;
  v24 = v29;
  v25 = v30;
  *(v5 + 8) = v21;
  *(v5 + 9) = v24;
  v26 = v31;
  *(v5 + 10) = v25;
  *(v5 + 11) = v26;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout>, _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityHidden(_:)();
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout>, _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>>>(v5, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_gH0VGAA16_OverlayModifierVyAA13_VariadicViewO4TreeVy_AA01_H4RootVy07WorkoutB0026CenteredOrAlignmedOverflowG033_B8C4C7B821191F5831160CB64507453BLLVGACyACyACyACyACyACyACyAeA022_EnvironmentKeyWritingJ0VySiSgGGAA010_FixedSizeH0VGAA08_PaddingH0VGAZyAA4FontVSgGGAZyAA5ColorVSgGGAA011_BackgroundJ0VyACyAA16RoundedRectangleVA16_GGGAA14_OpacityEffectVGGGGMd);
}

uint64_t closure #1 in closure #1 in ExpandedPickerLabel.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v48 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_FixedSizeLayoutVGAA08_PaddingL0VGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA011_BackgroundI0VyACyAA16RoundedRectangleVAYGGGMd);
  MEMORY[0x28223BE20](v52);
  v7 = &v48 - v6;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  KeyPath = swift_getKeyPath();
  v60 = v10;
  v59 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  v56 = v9;
  v57 = v8;
  v54 = v10;
  outlined copy of Text.Storage(v8, v9, v10);
  v55 = v11;

  LOBYTE(v9) = static Edge.Set.leading.getter();
  *(inited + 32) = v9;
  v13 = static Edge.Set.trailing.getter();
  *(inited + 33) = v13;
  v14 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v9)
  {
    v14 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v13)
  {
    v14 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v61 = 0;
  static Font.Weight.bold.getter();
  v23 = type metadata accessor for Font.Design();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  v51 = static Font.system(size:weight:design:)();
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout>, _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>>>(v5, &_s7SwiftUI4FontV6DesignOSgMd);
  v49 = swift_getKeyPath();
  v50 = static Color.black.getter();
  v24 = swift_getKeyPath();
  v25 = static Alignment.center.getter();
  v27 = v26;
  v28 = &v7[*(v52 + 36)];
  v29 = *(type metadata accessor for RoundedRectangle() + 20);
  v30 = *MEMORY[0x277CE0118];
  v31 = type metadata accessor for RoundedCornerStyle();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  __asm { FMOV            V0.2D, #6.0 }

  *v28 = _Q0;
  v37 = static Color.green.getter();
  v38 = swift_getKeyPath();
  v39 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd) + 36)];
  *v39 = v38;
  v39[1] = v37;
  v40 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA16RoundedRectangleVAA022_EnvironmentKeyWritingD0VyAA5ColorVSgGGGMd) + 36)];
  *v40 = v25;
  v40[1] = v27;
  v41 = v56;
  *v7 = v57;
  *(v7 + 1) = v41;
  v7[16] = v54;
  v42 = KeyPath;
  *(v7 + 3) = v55;
  *(v7 + 4) = v42;
  *(v7 + 5) = 1;
  *(v7 + 24) = 256;
  v7[50] = 1;
  v7[56] = v14;
  *(v7 + 8) = v16;
  *(v7 + 9) = v18;
  *(v7 + 10) = v20;
  *(v7 + 11) = v22;
  v7[96] = 0;
  v43 = v51;
  *(v7 + 13) = v49;
  *(v7 + 14) = v43;
  if (*(a1 + 40))
  {
    v44 = 1.0;
  }

  else
  {
    v44 = 0.0;
  }

  v45 = v50;
  *(v7 + 15) = v24;
  *(v7 + 16) = v45;
  v46 = v58;
  outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>(v7, v58);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_FixedSizeLayoutVGAA08_PaddingL0VGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA011_BackgroundI0VyACyAA16RoundedRectangleVAYGGGAA14_OpacityEffectVGMd);
  *(v46 + *(result + 36)) = v44;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout>, _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout>, _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout>, _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_gH0VGAA16_OverlayModifierVyAA13_VariadicViewO4TreeVy_AA01_H4RootVy07WorkoutB0026CenteredOrAlignmedOverflowG033_B8C4C7B821191F5831160CB64507453BLLVGACyACyACyACyACyACyACyAeA022_EnvironmentKeyWritingJ0VySiSgGGAA010_FixedSizeH0VGAA08_PaddingH0VGAZyAA4FontVSgGGAZyAA5ColorVSgGGAA011_BackgroundJ0VyACyAA16RoundedRectangleVA16_GGGAA14_OpacityEffectVGGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>> and conformance _OverlayModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout>, _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA01_gH0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>> and conformance _OverlayModifier<A>()
{
  result = lazy protocol witness table cache variable for type _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>> and conformance _OverlayModifier<A>;
  if (!lazy protocol witness table cache variable for type _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>> and conformance _OverlayModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16_OverlayModifierVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy07WorkoutB031CenteredOrAlignmedOverflowFrame33_B8C4C7B821191F5831160CB64507453BLLVGAA15ModifiedContentVyAPyAPyAPyAPyAPyAPyAA4TextVAA022_EnvironmentKeyWritingD0VySiSgGGAA010_FixedSizeH0VGAA08_PaddingH0VGATyAA4FontVSgGGATyAA5ColorVSgGGAA011_BackgroundD0VyAPyAA16RoundedRectangleVA10_GGGAA14_OpacityEffectVGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>> and conformance _OverlayModifier<A>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAA16_FixedSizeLayoutVGAA08_PaddingL0VGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA011_BackgroundI0VyACyAA16RoundedRectangleVAYGGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void specialized ExpandedPickerLabel.init(text:alignment:focused:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v12 = objc_opt_self();
  v13 = [v12 currentDevice];
  v14 = specialized UIDevice.screenType.getter();

  v15 = dbl_20CB7C570[v14];
  v16 = objc_opt_self();
  v17 = [v16 mainScreen];
  [v17 scale];
  v19 = v18;

  v20 = [v16 mainScreen];
  [v20 nativeScale];
  v22 = v21;

  if (v19 != v22)
  {
    v23 = [v16 mainScreen];
    [v23 scale];
    v25 = v24;

    v26 = [v16 mainScreen];
    [v26 nativeScale];
    v28 = v27;

    v15 = v15 * (v25 / v28 * 0.95);
  }

  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  *(a7 + 48) = 0x4014000000000000;
  *(a7 + 56) = v15;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout>, _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout>, _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout>, _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA16_FlexFrameLayoutVGAA01_gH0VGAA16_OverlayModifierVyAA13_VariadicViewO4TreeVy_AA01_H4RootVy07WorkoutB0026CenteredOrAlignmedOverflowG033_B8C4C7B821191F5831160CB64507453BLLVGACyACyACyACyACyACyACyAeA022_EnvironmentKeyWritingJ0VySiSgGGAA010_FixedSizeH0VGAA08_PaddingH0VGAZyAA4FontVSgGGAZyAA5ColorVSgGGAA011_BackgroundJ0VyACyAA16RoundedRectangleVA16_GGGAA14_OpacityEffectVGGGGAA023AccessibilityAttachmentJ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout>, _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_4(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout>, _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CenteredOrAlignmedOverflowFrame and conformance CenteredOrAlignmedOverflowFrame()
{
  result = lazy protocol witness table cache variable for type CenteredOrAlignmedOverflowFrame and conformance CenteredOrAlignmedOverflowFrame;
  if (!lazy protocol witness table cache variable for type CenteredOrAlignmedOverflowFrame and conformance CenteredOrAlignmedOverflowFrame)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CenteredOrAlignmedOverflowFrame and conformance CenteredOrAlignmedOverflowFrame);
  }

  return result;
}

uint64_t _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _FrameLayout>, _OverlayModifier<_VariadicView.Tree<_LayoutRoot<CenteredOrAlignmedOverflowFrame>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundModifier<ModifiedContent<RoundedRectangle, _EnvironmentKeyWritingModifier<Color?>>>>, _OpacityEffect>>>>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v11 = *(View - 8);
  MEMORY[0x28223BE20](View);
  v30 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(type metadata accessor for TrainingLoadSampleDaySummary() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = View;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, View) == 1)
    {
      outlined destroy of TrainingLoadSampleDaySummary?(v9, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
    }

    else
    {
      v20 = v28;
      _s9WorkoutUI21TrainingLoadViewModelV10ChartPointVWObTm_0(v9, v28, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      _s9WorkoutUI21TrainingLoadViewModelV10ChartPointVWObTm_0(v20, v30, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      _s9WorkoutUI21TrainingLoadViewModelV10ChartPointVWObTm_0(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      View = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 32); ; i += 13)
    {
      v8 = i[9];
      v9 = i[11];
      v56 = i[10];
      v57[0] = v9;
      *(v57 + 9) = *(i + 185);
      v10 = i[5];
      v11 = i[7];
      v52 = i[6];
      v53 = v11;
      v12 = i[7];
      v13 = i[9];
      v54 = i[8];
      v55 = v13;
      v14 = i[1];
      v15 = i[3];
      v48 = i[2];
      v49 = v15;
      v16 = i[3];
      v17 = i[5];
      v50 = i[4];
      v51 = v17;
      v18 = i[1];
      v47[0] = *i;
      v47[1] = v18;
      v19 = i[11];
      v45 = v56;
      v46[0] = v19;
      *(v46 + 9) = *(i + 185);
      v41 = v52;
      v42 = v12;
      v43 = v54;
      v44 = v8;
      v37 = v48;
      v38 = v16;
      v39 = v50;
      v40 = v10;
      v35 = v47[0];
      v36 = v14;
      outlined init with copy of DemoWorkout(v47, &v22);
      a1(&v34, &v35);
      if (v3)
      {
        break;
      }

      v32 = v45;
      v33[0] = v46[0];
      *(v33 + 9) = *(v46 + 9);
      v28 = v41;
      v29 = v42;
      v30 = v43;
      v31 = v44;
      v24 = v37;
      v25 = v38;
      v26 = v39;
      v27 = v40;
      v22 = v35;
      v23 = v36;
      v20 = outlined destroy of DemoWorkout(&v22);
      if (v34)
      {
        MEMORY[0x20F30BCF0](v20);
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v58;
      }

      if (!--v5)
      {
        return v4;
      }
    }

    v32 = v45;
    v33[0] = v46[0];
    *(v33 + 9) = *(v46 + 9);
    v28 = v41;
    v29 = v42;
    v30 = v43;
    v31 = v44;
    v24 = v37;
    v25 = v38;
    v26 = v39;
    v27 = v40;
    v22 = v35;
    v23 = v36;
    outlined destroy of DemoWorkout(&v22);
  }

  return v4;
}

uint64_t TrainingLoadViewModel.ChartPoint.init(value:date:color:baseline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a5, a1, v12);
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  DayIndex.init(integerLiteral:)();
  result = (*(v13 + 8))(a1, v12);
  v16 = a5 + View[6];
  v17 = a5 + View[8];
  *v16 = a6;
  *(v16 + 8) = 0;
  *(a5 + View[7]) = a2;
  *v17 = a3;
  *(v17 + 8) = a4 & 1;
  return result;
}

uint64_t TrainingLoadViewModel.ChartPoint.date.setter(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TrainingLoadViewModel.ChartPoint.baseline.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TrainingLoadViewModel.ChartPoint.init(value:date:dayIndex:color:baseline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v15 = a6 + View[6];
  v16 = a6 + View[8];
  *v15 = a7;
  *(v15 + 8) = 0;
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 32))(a6, a1, v17);
  v18 = View[5];
  v19 = type metadata accessor for DayIndex();
  result = (*(*(v19 - 8) + 32))(a6 + v18, a2, v19);
  *(a6 + View[7]) = a3;
  *v16 = a4;
  *(v16 + 8) = a5 & 1;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance TrainingLoadViewModel.ChartPoint@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TrainingLoadViewModel.ChartPoint.date.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t TrainingLoadViewModel.dayRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TrainingLoadViewModel(0) + 20);
  v4 = type metadata accessor for GregorianDayRange();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TrainingLoadViewModel.chronologicalTrainingLoadDaySummaries.getter()
{
  type metadata accessor for TrainingLoadViewModel(0);
}

uint64_t TrainingLoadViewModel.formattedFractionalDifferenceFromChronicBaselineForToday.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrainingLoadViewModel(0) + 40));

  return v1;
}

uint64_t TrainingLoadViewModel.chartPoints.getter()
{
  type metadata accessor for TrainingLoadViewModel(0);
}

uint64_t TrainingLoadViewModel.init(dataType:dayRange:chronologicalTrainingLoadDaySummaries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v179 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v178 = v153 - v8;
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v197 = *(View - 8);
  MEMORY[0x28223BE20](View);
  v200 = v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v190 = v153 - v11;
  v163 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v155 = v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v14 - 8);
  v153[1] = v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v154 = v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v168 = v153 - v18;
  MEMORY[0x28223BE20](v19);
  v156 = v153 - v20;
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  v166 = *(BaselineComparison - 8);
  MEMORY[0x28223BE20](BaselineComparison);
  v165 = v153 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for DayIndex();
  v22 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v202 = v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v203 = (v153 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
  MEMORY[0x28223BE20](v26 - 8);
  v176 = v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v170 = v153 - v29;
  MEMORY[0x28223BE20](v30);
  v182 = v153 - v31;
  MEMORY[0x28223BE20](v32);
  v180 = v153 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance16TrainingLoadBandOSgMd);
  MEMORY[0x28223BE20](v34 - 8);
  v177 = v153 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v173 = v153 - v37;
  MEMORY[0x28223BE20](v38);
  v181 = v153 - v39;
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v41 = *(SampleDaySummary - 8);
  MEMORY[0x28223BE20](SampleDaySummary);
  v164 = v153 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v201 = v153 - v44;
  MEMORY[0x28223BE20](v45);
  v195 = v153 - v46;
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  MEMORY[0x28223BE20](ViewModel);
  v49 = v153 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataType = type metadata accessor for TrainingLoadDataType();
  v172 = *(DataType - 8);
  v51 = *(v172 + 16);
  v187 = a1;
  v175 = DataType;
  v51(v49, a1);
  v52 = *(ViewModel + 20);
  v53 = type metadata accessor for GregorianDayRange();
  v171 = *(v53 - 8);
  v54 = *(v171 + 16);
  v55 = &v49[v52];
  v56 = a3;
  v186 = a2;
  v174 = v53;
  v54(v55, a2);
  v185 = ViewModel;
  v57 = *(ViewModel + 24);
  v184 = v49;
  *&v49[v57] = a3;
  v58 = a3[2];
  v196 = v22;
  v198 = a3;
  v194 = v58;
  if (!v58)
  {

    v60 = MEMORY[0x277D84F98];
    v61 = SampleDaySummary;
LABEL_18:
    v82 = v185;
    v83 = v184;
    *&v184[v185[16]] = v60;
    v84 = v82[8];

    v85 = v186;
    static TrainingLoadViewModel.calculateSummaryForToday(dataType:dayRange:chronologicalTrainingLoadDaySummaries:)(v187, v186, v56, v84 + v83);
    v194 = v84;
    v86 = v84 + v83;
    v87 = v180;
    outlined init with copy of TrainingLoadBand?(v86, v180, &_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
    v192 = v41[6];
    v193 = (v41 + 6);
    if (v192(v87, 1, v61) == 1)
    {
      outlined destroy of TrainingLoadSampleDaySummary?(v87, &_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
      Band = type metadata accessor for TrainingLoadBand();
      v89 = v181;
      (*(*(Band - 8) + 56))(v181, 1, 1, Band);
    }

    else
    {
      v89 = v181;
      TrainingLoadSampleDaySummary.band.getter();
      (v41)[1](v87, v61);
    }

    v90 = v182;
    outlined init with take of TrainingLoadBand?(v89, v83 + v82[7], &_s13HealthBalance16TrainingLoadBandOSgMd);
    outlined init with copy of TrainingLoadBand?(v194 + v83, v90, &_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
    v91 = v192(v90, 1, v61);
    v169 = v61;
    if (v91 == 1)
    {
      SampleDay = outlined destroy of TrainingLoadSampleDaySummary?(v90, &_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
      v93 = 0;
      v94 = 0;
      v95 = v83 + v82[9];
      *v95 = 0;
      *(v95 + 8) = 1;
    }

    else
    {
      v96 = v165;
      TrainingLoadSampleDaySummary.trainingLoad.getter();
      (v41)[1](v90, v61);
      Baseline = TrainingLoadBaselineComparison.fractionalBaselineDifferenceFromChronic.getter();
      v99 = v98;
      v100 = v98 & 1;
      SampleDay = (*(v166 + 8))(v96, BaselineComparison);
      v101 = v83 + v82[9];
      *v101 = Baseline;
      *(v101 + 8) = v100;
      if (v99)
      {
        v93 = 0;
        v94 = 0;
      }

      else
      {
        v205 = Baseline;
        static Locale.autoupdatingCurrent.getter();
        v203 = lazy protocol witness table accessor for type Double and conformance Double();
        v102 = v154;
        FloatingPointFormatStyle.Percent.init(locale:)();
        v103 = v155;
        static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)();
        v104 = v160;
        MEMORY[0x20F302480](v103, v160);
        (*(v157 + 8))(v103, v158);
        v105 = *(v159 + 8);
        v105(v102, v104);
        v106 = v161;
        static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
        v107 = v156;
        v108 = v168;
        MEMORY[0x20F3024A0](v106, v104);
        (*(v162 + 8))(v106, v163);
        v105(v108, v104);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
        BinaryFloatingPoint.formatted<A>(_:)();
        SampleDay = (v105)(v107, v104);
        v85 = v186;
        v93 = v206;
        v94 = v207;
      }
    }

    v109 = (v83 + v82[10]);
    *v109 = v93;
    v109[1] = v94;
    MEMORY[0x28223BE20](SampleDay);
    v153[-2] = v85;
    v110 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in TrainingLoadViewModel.init(dataType:dayRange:chronologicalTrainingLoadDaySummaries:), &v153[-4], v198);

    *(v83 + v82[11]) = v110;
    v201 = v110[2];
    if (!v201)
    {
      v113 = MEMORY[0x277D84F98];
      v136 = v170;
      v135 = v169;
LABEL_43:
      *(v83 + v82[15]) = v113;
      outlined init with copy of TrainingLoadBand?(v194 + v83, v136, &_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
      v137 = v192(v136, 1, v135);
      v138 = v178;
      if (v137 == 1)
      {
        (*(v197 + 56))(v178, 1, 1, View);
      }

      else
      {
        v139 = v136;
        v140 = v135;
        v141 = v164;
        (v41[4])(v164, v139, v140);

        static TrainingLoadViewModel.chartPoint(for:dayRange:)(v85, v138);
        v142 = v141;
        v135 = v140;
        (v41)[1](v142, v140);
      }

      outlined init with take of TrainingLoadBand?(v138, v83 + v82[12], &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
      v143 = v176;
      outlined init with copy of TrainingLoadBand?(v194 + v83, v176, &_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
      v144 = v192(v143, 1, v135);
      v145 = v177;
      v146 = v173;
      if (v144 == 1)
      {
        outlined destroy of TrainingLoadSampleDaySummary?(v143, &_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
        v147 = type metadata accessor for TrainingLoadBand();
        (*(*(v147 - 8) + 56))(v146, 1, 1, v147);
      }

      else
      {
        TrainingLoadSampleDaySummary.band.getter();
        (v41)[1](v143, v135);
      }

      v148 = v82[13];
      outlined init with take of TrainingLoadBand?(v146, v83 + v148, &_s13HealthBalance16TrainingLoadBandOSgMd);
      outlined init with copy of TrainingLoadBand?(v83 + v148, v145, &_s13HealthBalance16TrainingLoadBandOSgMd);
      v149 = type metadata accessor for TrainingLoadBand();
      v150 = *(v149 - 8);
      if ((*(v150 + 48))(v145, 1, v149) == 1)
      {
        outlined destroy of TrainingLoadSampleDaySummary?(v145, &_s13HealthBalance16TrainingLoadBandOSgMd);
        v151 = static Color.white.getter();
      }

      else
      {
        v151 = TrainingLoadBand.color.getter();
        (*(v150 + 8))(v145, v149);
      }

      (*(v172 + 8))(v187, v175);
      *(v83 + v82[14]) = v151;
      _s9WorkoutUI21TrainingLoadViewModelV10ChartPointVWObTm_0(v83, v179, type metadata accessor for TrainingLoadViewModel);
      return (*(v171 + 8))(v85, v174);
    }

    v191 = v41;
    v111 = *(View + 20);
    v199 = v110 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
    v203 = (v196 + 16);
    v198 = (v196 + 8);

    v112 = 0;
    v113 = MEMORY[0x277D84F98];
    v195 = v60;
    while (1)
    {
      if (v112 >= v110[2])
      {
        goto LABEL_55;
      }

      v114 = *(v197 + 72);
      v115 = v190;
      outlined init with copy of TrainingLoadViewModel.ChartPoint(&v199[v114 * v112], v190);
      v116 = v202;
      v117 = *v203;
      (*v203)(v202, v115 + v111, v204);
      _s9WorkoutUI21TrainingLoadViewModelV10ChartPointVWObTm_0(v115, v200, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v206 = v113;
      v119 = specialized __RawDictionaryStorage.find<A>(_:)(v116);
      v121 = *(v113 + 2);
      v122 = (v120 & 1) == 0;
      v80 = __OFADD__(v121, v122);
      v123 = v121 + v122;
      if (v80)
      {
        goto LABEL_56;
      }

      v124 = v120;
      if (*(v113 + 3) < v123)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v134 = v119;
      specialized _NativeDictionary.copy()();
      v119 = v134;
      v113 = v206;
      if ((v124 & 1) == 0)
      {
LABEL_37:
        v126 = v111;
        v127 = v110;
        *&v113[8 * (v119 >> 6) + 64] |= 1 << v119;
        v128 = v196;
        v129 = v119;
        v130 = v202;
        v131 = v204;
        v117(*(v113 + 6) + *(v196 + 72) * v119, v202, v204);
        _s9WorkoutUI21TrainingLoadViewModelV10ChartPointVWObTm_0(v200, *(v113 + 7) + v129 * v114, type metadata accessor for TrainingLoadViewModel.ChartPoint);
        (*(v128 + 8))(v130, v131);
        v132 = *(v113 + 2);
        v80 = __OFADD__(v132, 1);
        v133 = v132 + 1;
        if (v80)
        {
          goto LABEL_58;
        }

        *(v113 + 2) = v133;
        v110 = v127;
        v111 = v126;
        goto LABEL_29;
      }

LABEL_28:
      outlined assign with take of TrainingLoadViewModel.ChartPoint(v200, *(v113 + 7) + v119 * v114);
      (*v198)(v202, v204);
LABEL_29:
      if (v201 == ++v112)
      {

        v85 = v186;
        v82 = v185;
        v83 = v184;
        v135 = v169;
        v41 = v191;
        v136 = v170;
        goto LABEL_43;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v123, isUniquelyReferenced_nonNull_native);
    v119 = specialized __RawDictionaryStorage.find<A>(_:)(v202);
    if ((v124 & 1) != (v125 & 1))
    {
      goto LABEL_59;
    }

LABEL_36:
    v113 = v206;
    if ((v124 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v193 = a3 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v199 = (v41 + 4);
  v191 = (v22 + 8);
  v192 = (v41 + 2);
  v188 = (v41 + 5);
  v189 = v22 + 16;

  v59 = 0;
  v60 = MEMORY[0x277D84F98];
  v61 = SampleDaySummary;
  while (v59 < v56[2])
  {
    v62 = v41[9];
    v63 = v195;
    (v41[2])(v195, &v193[v62 * v59], v61);
    v64 = v203;
    TrainingLoadSampleDaySummary.morningIndex.getter();
    v65 = v41;
    v66 = v41[4];
    v66(v201, v63, v61);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v206 = v60;
    v69 = specialized __RawDictionaryStorage.find<A>(_:)(v64);
    v70 = *(v60 + 2);
    v71 = (v68 & 1) == 0;
    v72 = v70 + v71;
    if (__OFADD__(v70, v71))
    {
      goto LABEL_54;
    }

    v73 = v68;
    if (*(v60 + 3) >= v72)
    {
      if (v67)
      {
        v60 = v206;
        if (v68)
        {
          goto LABEL_3;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v60 = v206;
        if (v73)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v72, v67);
      v74 = specialized __RawDictionaryStorage.find<A>(_:)(v203);
      if ((v73 & 1) != (v75 & 1))
      {
        goto LABEL_59;
      }

      v69 = v74;
      v60 = v206;
      if (v73)
      {
LABEL_3:
        (*v188)(*(v60 + 7) + v69 * v62, v201, v61);
        (*v191)(v203, v204);
        goto LABEL_4;
      }
    }

    *&v60[8 * (v69 >> 6) + 64] |= 1 << v69;
    v76 = v196;
    v78 = v203;
    v77 = v204;
    (*(v196 + 16))(*(v60 + 6) + *(v196 + 72) * v69, v203, v204);
    v66((*(v60 + 7) + v69 * v62), v201, v61);
    (*(v76 + 8))(v78, v77);
    v79 = *(v60 + 2);
    v80 = __OFADD__(v79, 1);
    v81 = v79 + 1;
    if (v80)
    {
      goto LABEL_57;
    }

    *(v60 + 2) = v81;
LABEL_4:
    ++v59;
    v41 = v65;
    v56 = v198;
    if (v194 == v59)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t static TrainingLoadViewModel.calculateSummaryForToday(dataType:dayRange:chronologicalTrainingLoadDaySummaries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v181 = a2;
  v175 = a1;
  v178 = a4;
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v179 = *(SampleDaySummary - 8);
  v180 = SampleDaySummary;
  MEMORY[0x28223BE20](SampleDaySummary);
  v169 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  MEMORY[0x28223BE20](v170);
  v171 = &v156 - v7;
  v8 = type metadata accessor for DayIndex();
  v173 = *(v8 - 8);
  v174 = v8;
  MEMORY[0x28223BE20](v8);
  v167 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v172 = &v156 - v11;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexVSgMd);
  MEMORY[0x28223BE20](v166);
  v162 = (&v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v159 = &v156 - v14;
  MEMORY[0x28223BE20](v15);
  v157 = &v156 - v16;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
  MEMORY[0x28223BE20](v165);
  v18 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v158 = &v156 - v20;
  MEMORY[0x28223BE20](v21);
  v156 = &v156 - v22;
  v23 = type metadata accessor for GregorianDayRange();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v163 = &v156 - v28;
  MEMORY[0x28223BE20](v29);
  v160 = &v156 - v30;
  v31 = type metadata accessor for Logger();
  v176 = *(v31 - 8);
  v177 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = &v156 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v156 - v35;
  MEMORY[0x28223BE20](v37);
  v164 = &v156 - v38;
  MEMORY[0x28223BE20](v39);
  v161 = (&v156 - v40);
  DataType = type metadata accessor for TrainingLoadDataType();
  v42 = *(DataType - 8);
  v43 = MEMORY[0x28223BE20](DataType);
  v45 = &v156 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v45, v175, DataType, v43);
  v46 = (*(v42 + 88))(v45, DataType);
  if (v46 == *MEMORY[0x277D0FED8])
  {
    static WOLog.core.getter();
    v24[2](v26, v181, v23);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    v49 = a3;
    if (os_log_type_enabled(v47, v48))
    {
      v161 = v47;
      v163 = v26;
      v164 = v36;
      v175 = v23;
      v50 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v182[0] = v159;
      *v50 = 136315650;
      v51 = *(a3 + 16);
      v52 = v180;
      v168 = a3;
      LODWORD(v160) = v48;
      if (v51)
      {
        v53 = v179;
        (*(v179 + 16))(v18, a3 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * (v51 - 1), v180);
        v54 = 0;
      }

      else
      {
        v54 = 1;
        v53 = v179;
      }

      v85 = v162;
      v86 = 1;
      (*(v53 + 56))(v18, v54, 1, v52);
      v87 = Optional.description.getter();
      v89 = v88;
      outlined destroy of TrainingLoadSampleDaySummary?(v18, &_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
      v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, v182);

      *(v50 + 4) = v90;
      *(v50 + 12) = 2080;
      if (v51)
      {
        TrainingLoadSampleDaySummary.morningIndex.getter();
        v86 = 0;
      }

      v91 = v173;
      v92 = v86;
      v93 = v174;
      (*(v173 + 56))(v85, v92, 1, v174);
      v94 = Optional.description.getter();
      v96 = v95;
      outlined destroy of TrainingLoadSampleDaySummary?(v85, &_s9HealthKit8DayIndexVSgMd);
      v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, v182);

      *(v50 + 14) = v97;
      *(v50 + 22) = 2080;
      v98 = v171;
      v99 = v163;
      GregorianDayRange.dayIndexRange.getter();
      v100 = v172;
      (*(v91 + 16))(v172, v98 + *(v170 + 36), v93);
      outlined destroy of TrainingLoadSampleDaySummary?(v98, &_sSNy9HealthKit8DayIndexVGMd);
      _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
      v101 = dispatch thunk of CustomStringConvertible.description.getter();
      v103 = v102;
      (*(v91 + 8))(v100, v93);
      (v24[1])(v99, v175);
      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, v182);

      *(v50 + 24) = v104;
      v105 = v161;
      _os_log_impl(&dword_20C66F000, v161, v160, "type day summary today %s, morningIndex %s, upperbound %s", v50, 0x20u);
      v106 = v159;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v106, -1, -1);
      MEMORY[0x20F30E080](v50, -1, -1);

      (*(v176 + 8))(v164, v177);
      v65 = v180;
LABEL_32:
      v49 = v168;
      goto LABEL_33;
    }

    (v24[1])(v26, v23);
    (*(v176 + 8))(v36, v177);
    v53 = v179;
    v65 = v180;
  }

  else
  {
    v162 = v24;
    v175 = v23;
    v168 = a3;
    if (v46 == *MEMORY[0x277D0FEE0])
    {
      v55 = v164;
      static WOLog.core.getter();
      v57 = v162;
      v56 = v163;
      v58 = v175;
      (v162[2])(v163, v181, v175);
      v59 = v168;

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v60, v61))
      {
        LODWORD(v161) = v61;
        v62 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v182[0] = v160;
        *v62 = 136315650;
        v63 = *(v59 + 16);
        v64 = v179;
        v65 = v180;
        if (v63)
        {
          v66 = v158;
          (*(v179 + 16))(v158, v59 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * (v63 - 1), v180);
          v67 = 0;
          v68 = v159;
        }

        else
        {
          v67 = 1;
          v68 = v159;
          v66 = v158;
        }

        v107 = 1;
        (*(v64 + 56))(v66, v67, 1, v65);
        v108 = Optional.description.getter();
        v109 = v64;
        v111 = v110;
        outlined destroy of TrainingLoadSampleDaySummary?(v66, &_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
        v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v111, v182);

        *(v62 + 4) = v112;
        *(v62 + 12) = 2080;
        if (v63)
        {
          TrainingLoadSampleDaySummary.morningIndex.getter();
          v107 = 0;
        }

        v53 = v109;
        v114 = v173;
        v113 = v174;
        (*(v173 + 56))(v68, v107, 1, v174);
        v115 = Optional.description.getter();
        v117 = v116;
        outlined destroy of TrainingLoadSampleDaySummary?(v68, &_s9HealthKit8DayIndexVSgMd);
        v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v117, v182);

        *(v62 + 14) = v118;
        *(v62 + 22) = 2080;
        v119 = v171;
        v120 = v163;
        GregorianDayRange.dayIndexRange.getter();
        v121 = v172;
        (*(v114 + 16))(v172, v119 + *(v170 + 36), v113);
        outlined destroy of TrainingLoadSampleDaySummary?(v119, &_sSNy9HealthKit8DayIndexVGMd);
        _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
        v122 = dispatch thunk of CustomStringConvertible.description.getter();
        v124 = v123;
        (*(v114 + 8))(v121, v113);
        v162[1](v120, v175);
        v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, v182);

        *(v62 + 24) = v125;
        _os_log_impl(&dword_20C66F000, v60, v161, "All Day day summary today %s, morningIndex %s, upperbound %s ", v62, 0x20u);
        v126 = v160;
        swift_arrayDestroy();
        MEMORY[0x20F30E080](v126, -1, -1);
        MEMORY[0x20F30E080](v62, -1, -1);

        (*(v176 + 8))(v164, v177);
        goto LABEL_32;
      }

      v57[1](v56, v58);
      (*(v176 + 8))(v55, v177);
      v53 = v179;
      v65 = v180;
      v49 = v59;
    }

    else
    {
      if (v46 != *MEMORY[0x277D0FEE8])
      {
        static WOLog.core.getter();
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_20C66F000, v81, v82, "Unknown training load data type.", v83, 2u);
          MEMORY[0x20F30E080](v83, -1, -1);
        }

        (*(v176 + 8))(v33, v177);
        (*(v179 + 56))(v178, 1, 1, v180);
        return (*(v42 + 8))(v45, DataType);
      }

      v69 = v161;
      static WOLog.core.getter();
      v70 = v162;
      v71 = v160;
      v72 = v175;
      (v162[2])(v160, v181, v175);
      v73 = v168;

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v182[0] = v164;
        *v76 = 136315650;
        v77 = *(v73 + 16);
        v78 = v179;
        v65 = v180;
        if (v77)
        {
          v79 = v156;
          (*(v179 + 16))(v156, v73 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * (v77 - 1), v180);
          v80 = 0;
        }

        else
        {
          v80 = 1;
          v79 = v156;
        }

        v127 = 1;
        (*(v78 + 56))(v79, v80, 1, v65);
        v128 = Optional.description.getter();
        v130 = v129;
        outlined destroy of TrainingLoadSampleDaySummary?(v79, &_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
        v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v130, v182);

        *(v76 + 4) = v131;
        *(v76 + 12) = 2080;
        if (v77)
        {
          v132 = v157;
          TrainingLoadSampleDaySummary.morningIndex.getter();
          v127 = 0;
        }

        else
        {
          v132 = v157;
        }

        v134 = v173;
        v133 = v174;
        (*(v173 + 56))(v132, v127, 1, v174);
        v135 = Optional.description.getter();
        v137 = v136;
        outlined destroy of TrainingLoadSampleDaySummary?(v132, &_s9HealthKit8DayIndexVSgMd);
        v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v137, v182);

        *(v76 + 14) = v138;
        *(v76 + 22) = 2080;
        v139 = v171;
        v140 = v160;
        GregorianDayRange.dayIndexRange.getter();
        v141 = v172;
        (*(v134 + 16))(v172, v139 + *(v170 + 36), v133);
        outlined destroy of TrainingLoadSampleDaySummary?(v139, &_sSNy9HealthKit8DayIndexVGMd);
        _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
        v142 = dispatch thunk of CustomStringConvertible.description.getter();
        v144 = v143;
        (*(v134 + 8))(v141, v133);
        v162[1](v140, v175);
        v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v144, v182);

        *(v76 + 24) = v145;
        _os_log_impl(&dword_20C66F000, v74, v75, "workout day summary today %s, morningIndex %s, upperbound %s ", v76, 0x20u);
        v146 = v164;
        swift_arrayDestroy();
        MEMORY[0x20F30E080](v146, -1, -1);
        MEMORY[0x20F30E080](v76, -1, -1);

        (*(v176 + 8))(v161, v177);
        v53 = v179;
        goto LABEL_32;
      }

      v70[1](v71, v72);
      (*(v176 + 8))(v69, v177);
      v53 = v179;
      v65 = v180;
      v49 = v73;
    }
  }

LABEL_33:
  v147 = *(v49 + 16);
  v148 = v169;
  if (!v147)
  {
    return (*(v53 + 56))(v178, 1, 1, v65);
  }

  (*(v53 + 16))(v169, v49 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * (v147 - 1), v65);
  v149 = v172;
  TrainingLoadSampleDaySummary.morningIndex.getter();
  v150 = v171;
  GregorianDayRange.dayIndexRange.getter();
  v152 = v173;
  v151 = v174;
  v153 = v167;
  (*(v173 + 16))(v167, v150 + *(v170 + 36), v174);
  outlined destroy of TrainingLoadSampleDaySummary?(v150, &_sSNy9HealthKit8DayIndexVGMd);
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
  dispatch thunk of Strideable.distance(to:)();
  v154 = *(v152 + 8);
  v154(v153, v151);
  v154(v149, v151);
  if (v182[0])
  {
    (*(v53 + 8))(v148, v65);
    return (*(v53 + 56))(v178, 1, 1, v65);
  }

  v155 = v178;
  (*(v53 + 32))(v178, v148, v65);
  return (*(v53 + 56))(v155, 0, 1, v65);
}

uint64_t static TrainingLoadViewModel.chartPoint(for:dayRange:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v79 = a1;
  v80 = a2;
  Band = type metadata accessor for TrainingLoadBand();
  v61 = *(Band - 8);
  MEMORY[0x28223BE20](Band);
  v60 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x28223BE20](v3);
  v69 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v72 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
  v66 = *(ChronicBaseline - 8);
  v67 = ChronicBaseline;
  MEMORY[0x28223BE20](ChronicBaseline);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DayIndex();
  v10 = *(v9 - 8);
  v77 = v9;
  v78 = v10;
  MEMORY[0x28223BE20](v9);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  MEMORY[0x28223BE20](v75);
  v16 = &v60 - v15;
  AcuteBaseline = type metadata accessor for TrainingLoadAcuteBaseline();
  v18 = *(AcuteBaseline - 8);
  MEMORY[0x28223BE20](AcuteBaseline);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  v22 = *(BaselineComparison - 8);
  MEMORY[0x28223BE20](BaselineComparison);
  v64 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v63 = &v60 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v60 - v27;
  TrainingLoadSampleDaySummary.trainingLoad.getter();
  TrainingLoadBaselineComparison.acuteBaseline.getter();
  v29 = *(v22 + 8);
  v76 = BaselineComparison;
  v30 = BaselineComparison;
  v31 = v29;
  v29(v28, v30);
  Acute = TrainingLoadAcuteBaseline.quantity.getter();
  (*(v18 + 8))(v20, AcuteBaseline);
  if (!Acute)
  {
    goto LABEL_7;
  }

  [Acute _value];
  v34 = v33;

  GregorianDayRange.dayIndexRange.getter();
  TrainingLoadSampleDaySummary.morningIndex.getter();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
  v35 = v77;
  if ((dispatch thunk of static Comparable.>= infix(_:_:)() & 1) == 0)
  {
    (*(v78 + 8))(v14, v35);
    outlined destroy of TrainingLoadSampleDaySummary?(v16, &_sSNy9HealthKit8DayIndexVGMd);
    goto LABEL_7;
  }

  v36 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v37 = *(v78 + 8);
  v37(v14, v35);
  outlined destroy of TrainingLoadSampleDaySummary?(v16, &_sSNy9HealthKit8DayIndexVGMd);
  if ((v36 & 1) == 0)
  {
LABEL_7:
    View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
    return (*(*(View - 8) + 56))(v80, 1, 1, View);
  }

  v38 = v63;
  TrainingLoadSampleDaySummary.trainingLoad.getter();
  v39 = v65;
  TrainingLoadBaselineComparison.chronicBaseline.getter();
  v31(v38, v76);
  v41 = v66;
  v40 = v67;
  v42 = (*(v66 + 88))(v39, v67);
  v43 = *MEMORY[0x277D10020];
  LODWORD(v75) = v42;
  LODWORD(v63) = v43;
  if (v42 == v43)
  {
    (*(v41 + 96))(v39, v40);
    v78 = *v39;
  }

  else
  {
    (*(v41 + 8))(v39, v40);
    v78 = 0;
  }

  v46 = v72;
  v47 = v68;
  TrainingLoadSampleDaySummary.morningIndex.getter();
  v48 = v69;
  GregorianDayRange.gregorianCalendar.getter();
  DayIndex.middleOfDate(in:)(v46);
  (*(v70 + 8))(v48, v71);
  v37(v47, v35);
  v49 = v64;
  TrainingLoadSampleDaySummary.trainingLoad.getter();
  TrainingLoadBaselineComparison.fractionalBaselineDifferenceFromChronic.getter();
  if (v50)
  {
    v31(v49, v76);
    v51 = static Color.gray.getter();
  }

  else
  {
    v52 = v60;
    TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)();
    v51 = TrainingLoadBand.color.getter();
    (*(v61 + 8))(v52, Band);
    v31(v49, v76);
  }

  v53 = v75 != v63;
  v55 = v73;
  v54 = v74;
  v56 = v80;
  (*(v73 + 16))(v80, v46, v74);
  v57 = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  TrainingLoadSampleDaySummary.morningIndex.getter();
  (*(v55 + 8))(v46, v54);
  v58 = v56 + v57[6];
  v59 = v56 + v57[8];
  *v58 = v34;
  *(v58 + 8) = 0;
  *(v56 + v57[7]) = v51;
  *v59 = v78;
  *(v59 + 8) = v53;
  return (*(*(v57 - 1) + 56))(v56, 0, 1, v57);
}

uint64_t DayIndex.middleOfDate(in:)@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v19[0] = type metadata accessor for DayIndex();
  v1 = *(v19[0] - 8);
  MEMORY[0x28223BE20](v19[0]);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  DayIndex.startDate(in:)();
  DayIndex.init(integerLiteral:)();
  static DayIndex.+ infix(_:_:)();
  v14 = *(v1 + 8);
  v15 = v3;
  v16 = v19[0];
  v14(v15, v19[0]);
  DayIndex.startDate(in:)();
  v14(v6, v16);
  Date.timeIntervalSinceReferenceDate.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  v17 = *(v8 + 8);
  v17(v10, v7);
  return (v17)(v13, v7);
}

uint64_t TrainingLoadViewModel.hasValue(onDay:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for TrainingLoadViewModel(0) + 60));
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
    v12 = *(View - 8);
    outlined init with copy of TrainingLoadViewModel.ChartPoint(v10 + *(v12 + 72) * v9, v5);
    v13 = 1;
    (*(v12 + 56))(v5, 0, 1, View);
  }

  else
  {
    v14 = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    v13 = 0;
  }

  outlined destroy of TrainingLoadSampleDaySummary?(v5, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
  return v13;
}

uint64_t TrainingLoadViewModel.loadPercentage(onDay:)(unint64_t a1)
{
  v35 = a1;
  v42 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v13);
  v38 = &v34 - v14;
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v16 = *(View - 8);
  MEMORY[0x28223BE20](View);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - v20;
  v22 = *(v1 + *(type metadata accessor for TrainingLoadViewModel(0) + 60));
  if (!*(v22 + 16))
  {
    goto LABEL_8;
  }

  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v35);
  if ((v24 & 1) == 0)
  {
    goto LABEL_8;
  }

  outlined init with copy of TrainingLoadViewModel.ChartPoint(*(v22 + 56) + *(v16 + 72) * v23, v18);
  _s9WorkoutUI21TrainingLoadViewModelV10ChartPointVWObTm_0(v18, v21, type metadata accessor for TrainingLoadViewModel.ChartPoint);
  v25 = &v21[*(View + 24)];
  if (v25[8] & 1) != 0 || (v26 = &v21[*(View + 32)], (v26[8]) || *v26 <= 0.0)
  {
    outlined destroy of TrainingLoadViewModel.ChartPoint(v21);
LABEL_8:
    v43 = 0.0;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.Percent.init(locale:)();
    static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)();
    MEMORY[0x20F302480](v5, v7);
    (*(v36 + 8))(v5, v37);
    v30 = *(v41 + 8);
    v30(v9, v7);
    v31 = v39;
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    v32 = v38;
    MEMORY[0x20F3024A0](v31, v7);
    (*(v40 + 8))(v31, v42);
    v30(v12, v7);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
    BinaryFloatingPoint.formatted<A>(_:)();
    v30(v32, v7);
    return v44;
  }

  v43 = (*v25 - *v26) / *v26;
  static Locale.autoupdatingCurrent.getter();
  v35 = lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.Percent.init(locale:)();
  static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)();
  MEMORY[0x20F302480](v5, v7);
  (*(v36 + 8))(v5, v37);
  v27 = *(v41 + 8);
  v27(v9, v7);
  v28 = v39;
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  v29 = v38;
  MEMORY[0x20F3024A0](v28, v7);
  (*(v40 + 8))(v28, v42);
  v27(v12, v7);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd);
  BinaryFloatingPoint.formatted<A>(_:)();
  v27(v29, v7);
  outlined destroy of TrainingLoadViewModel.ChartPoint(v21);
  return v44;
}

uint64_t TrainingLoadViewModel.band(onDay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v6 = *(View - 8);
  MEMORY[0x28223BE20](View);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  v12 = *(v2 + *(type metadata accessor for TrainingLoadViewModel(0) + 60));
  if (*(v12 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v14 & 1) != 0))
  {
    outlined init with copy of TrainingLoadViewModel.ChartPoint(*(v12 + 56) + *(v6 + 72) * v13, v8);
    _s9WorkoutUI21TrainingLoadViewModelV10ChartPointVWObTm_0(v8, v11, type metadata accessor for TrainingLoadViewModel.ChartPoint);
    if (v11[*(View + 24) + 8] & 1) != 0 || (v11[*(View + 32) + 8])
    {
      v15 = 1;
    }

    else
    {
      TrainingLoadBand.init(value:baseline:)();
      v15 = 0;
    }

    outlined destroy of TrainingLoadViewModel.ChartPoint(v11);
  }

  else
  {
    v15 = 1;
  }

  Band = type metadata accessor for TrainingLoadBand();
  return (*(*(Band - 8) + 56))(a2, v15, 1, Band);
}

Swift::String __swiftcall TrainingLoadViewModel.loadPercentageToday()()
{
  v1 = (v0 + *(type metadata accessor for TrainingLoadViewModel(0) + 40));
  if (v1[1])
  {
    countAndFlagsBits = *v1;
    object = v1[1];
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = WorkoutUIBundle.super.isa;
    v12._object = 0xE000000000000000;
    v5._countAndFlagsBits = 0x45554C41564F4ELL;
    v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v6.value._object = 0xEB00000000656C62;
    v5._object = 0xE700000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v12);
    countAndFlagsBits = v8._countAndFlagsBits;
    object = v8._object;
  }

  v9 = countAndFlagsBits;
  v10 = object;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

Swift::String __swiftcall TrainingLoadViewModel.loadBandTodayLocalizedDescription()()
{
  View = TrainingLoadViewModel.loadBandTodayLocalizedDescription()(TrainingLoadViewModel.localizedDescription(onDay:));
  result._object = v1;
  result._countAndFlagsBits = View;
  return result;
}

uint64_t TrainingLoadViewModel.localizedDescription(onDay:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance16TrainingLoadBandOSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = &v60 - v4;
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
  v6 = *(ChronicBaseline - 8);
  MEMORY[0x28223BE20](ChronicBaseline);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  v10 = *(BaselineComparison - 8);
  MEMORY[0x28223BE20](BaselineComparison);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v63 = *(SampleDaySummary - 8);
  v64 = SampleDaySummary;
  MEMORY[0x28223BE20](SampleDaySummary);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  v19 = *(type metadata accessor for TrainingLoadViewModel(0) + 64);
  v61 = v1;
  v20 = *(v1 + v19);
  if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v22 & 1) != 0))
  {
    v23 = *(v20 + 56);
    v60 = v6;
    v24 = ChronicBaseline;
    v25 = v8;
    v26 = v18;
    v28 = v63;
    v27 = v64;
    (*(v63 + 16))(v15, v23 + *(v63 + 72) * v21, v64);
    v29 = v28;
    v30 = v26;
    v31 = v25;
    v32 = v24;
    v33 = v60;
    (*(v29 + 32))(v30, v15, v27);
    TrainingLoadSampleDaySummary.trainingLoad.getter();
    TrainingLoadBaselineComparison.chronicBaseline.getter();
    (*(v10 + 8))(v12, BaselineComparison);
    v34 = (*(v33 + 88))(v31, v32);
    if (v34 == *MEMORY[0x277D10010])
    {
      (*(v33 + 96))(v31, v32);
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v35 = WorkoutUIBundle.super.isa;
      v65._object = 0xE000000000000000;
      v36.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v36.value._object = 0xEB00000000656C62;
      v37._countAndFlagsBits = 0xD000000000000031;
      v37._object = 0x800000020CB9D4C0;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v65._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v36, v35, v38, v65)._countAndFlagsBits;

      (*(v63 + 8))(v30, v64);
      outlined destroy of TrainingLoadSampleDaySummary?(v31, &_sSny9HealthKit8DayIndexVGMd);
      return countAndFlagsBits;
    }

    if (v34 == *MEMORY[0x277D10020])
    {
      v45 = v62;
      TrainingLoadViewModel.band(onDay:)(a1, v62);
      Band = type metadata accessor for TrainingLoadBand();
      v47 = *(Band - 8);
      if ((*(v47 + 48))(v45, 1, Band) != 1)
      {
        countAndFlagsBits = TrainingLoadBand.localizedDescription.getter();
        (*(v47 + 8))(v45, Band);
        goto LABEL_22;
      }

      outlined destroy of TrainingLoadSampleDaySummary?(v45, &_s13HealthBalance16TrainingLoadBandOSgMd);
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v48 = WorkoutUIBundle.super.isa;
      v59 = 0xE000000000000000;
      v49 = 0x45554C41564F4ELL;
      v50 = 0x617A696C61636F4CLL;
      v51 = 0xEB00000000656C62;
      v52 = 0xE700000000000000;
LABEL_20:
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      v54 = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v49, *&v50, v48, v53, *(&v59 - 1))._countAndFlagsBits;

LABEL_22:
      (*(v63 + 8))(v30, v64);
      return countAndFlagsBits;
    }

    if (v34 == *MEMORY[0x277D10018])
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v48 = WorkoutUIBundle.super.isa;
      v59 = 0xE000000000000000;
      v52 = 0x800000020CB9D490;
      v49 = 0xD00000000000002CLL;
      v50 = 0x617A696C61636F4CLL;
      v51 = 0xEB00000000656C62;
      goto LABEL_20;
    }

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v55 = WorkoutUIBundle.super.isa;
    v67._object = 0xE000000000000000;
    v56._object = 0x800000020CB9D490;
    v56._countAndFlagsBits = 0xD00000000000002CLL;
    v57.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v57.value._object = 0xEB00000000656C62;
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    v67._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v57, v55, v58, v67)._countAndFlagsBits;

    (*(v63 + 8))(v30, v64);
    (*(v60 + 8))(v31, v32);
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v40 = WorkoutUIBundle.super.isa;
    v66._object = 0xE000000000000000;
    v41.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v41.value._object = 0xEB00000000656C62;
    v42._object = 0x800000020CB9D490;
    v42._countAndFlagsBits = 0xD00000000000002CLL;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    v66._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v41, v40, v43, v66)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

Swift::String __swiftcall TrainingLoadViewModel.loadBandTodayLocalizedLongDescriptionInNonActiveState()()
{
  View = TrainingLoadViewModel.loadBandTodayLocalizedDescription()(TrainingLoadViewModel.localizedLongDescriptionInNonActiveState(onDay:));
  result._object = v1;
  result._countAndFlagsBits = View;
  return result;
}

uint64_t TrainingLoadViewModel.loadBandTodayLocalizedDescription()(uint64_t (*a1)(char *))
{
  v2 = type metadata accessor for DayIndex();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  type metadata accessor for TrainingLoadViewModel(0);
  GregorianDayRange.dayIndexRange.getter();
  (*(v3 + 16))(v5, &v9[*(v7 + 44)], v2);
  outlined destroy of TrainingLoadSampleDaySummary?(v9, &_sSNy9HealthKit8DayIndexVGMd);
  v10 = a1(v5);
  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t TrainingLoadViewModel.localizedLongDescriptionInNonActiveState(onDay:)(uint64_t a1)
{
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
  v47 = *(ChronicBaseline - 8);
  MEMORY[0x28223BE20](ChronicBaseline);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  v7 = *(BaselineComparison - 8);
  MEMORY[0x28223BE20](BaselineComparison);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v11 = *(SampleDaySummary - 8);
  MEMORY[0x28223BE20](SampleDaySummary);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v48 = &v46 - v15;
  v16 = *(v1 + *(type metadata accessor for TrainingLoadViewModel(0) + 64));
  if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v18 & 1) != 0))
  {
    (*(v11 + 16))(v13, *(v16 + 56) + *(v11 + 72) * v17, SampleDaySummary);
    (*(v11 + 32))(v48, v13, SampleDaySummary);
    TrainingLoadSampleDaySummary.trainingLoad.getter();
    TrainingLoadBaselineComparison.chronicBaseline.getter();
    (*(v7 + 8))(v9, BaselineComparison);
    v19 = v47;
    v20 = (*(v47 + 88))(v5, ChronicBaseline);
    if (v20 == *MEMORY[0x277D10010])
    {
      (*(v19 + 96))(v5, ChronicBaseline);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny9HealthKit8DayIndexVG13analyzedRange_Si5countSi8requiredtMd);
      v22 = *&v5[*(v21 + 48)];
      v23 = *&v5[*(v21 + 64)];
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v24 = WorkoutUIBundle.super.isa;
      v49._object = 0xE000000000000000;
      v25._object = 0x800000020CB9D500;
      v25._countAndFlagsBits = 0xD000000000000031;
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      v49._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v49)._countAndFlagsBits;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_20CB5DA70;
      if (!__OFSUB__(v23, v22))
      {
        v30 = MEMORY[0x277D83C10];
        *(v29 + 56) = MEMORY[0x277D83B88];
        *(v29 + 64) = v30;
        *(v29 + 32) = v23 - v22;
        v31 = static String.localizedStringWithFormat(_:_:)();

        (*(v11 + 8))(v48, SampleDaySummary);
        outlined destroy of TrainingLoadSampleDaySummary?(v5, &_sSny9HealthKit8DayIndexVGMd);
        return v31;
      }

      __break(1u);
      goto LABEL_21;
    }

    countAndFlagsBits = 0x45554C41564F4ELL;
    if (v20 == *MEMORY[0x277D10020])
    {
      v37 = one-time initialization token for WorkoutUIBundle;
      goto LABEL_15;
    }

    v37 = one-time initialization token for WorkoutUIBundle;
    if (v20 == *MEMORY[0x277D10018])
    {
LABEL_15:
      if (v37 == -1)
      {
LABEL_16:
        swift_beginAccess();
        v38 = WorkoutUIBundle.super.isa;
        v51._object = 0xE000000000000000;
        v39._countAndFlagsBits = countAndFlagsBits;
        v39._object = 0xE700000000000000;
        v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v40.value._object = 0xEB00000000656C62;
        v41._countAndFlagsBits = 0;
        v41._object = 0xE000000000000000;
        v51._countAndFlagsBits = 0;
        v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v51)._countAndFlagsBits;

        (*(v11 + 8))(v48, SampleDaySummary);
        return v31;
      }

LABEL_21:
      swift_once();
      goto LABEL_16;
    }

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v42 = WorkoutUIBundle.super.isa;
    v52._object = 0xE000000000000000;
    v43._countAndFlagsBits = 0x45554C41564F4ELL;
    v43._object = 0xE700000000000000;
    v44.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v44.value._object = 0xEB00000000656C62;
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    v52._countAndFlagsBits = 0;
    v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v52)._countAndFlagsBits;

    (*(v11 + 8))(v48, SampleDaySummary);
    (*(v19 + 8))(v5, ChronicBaseline);
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v32 = WorkoutUIBundle.super.isa;
    v50._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0x45554C41564F4ELL;
    v33._object = 0xE700000000000000;
    v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v34.value._object = 0xEB00000000656C62;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v50._countAndFlagsBits = 0;
    v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v50)._countAndFlagsBits;
  }

  return v31;
}

uint64_t TrainingLoadViewModel.loadBandForTodayColor.getter()
{
  type metadata accessor for TrainingLoadViewModel(0);
}

uint64_t TrainingLoadViewModel.background(onDay:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance16TrainingLoadBandOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_opt_self() secondarySystemBackgroundColor];
  v6 = Color.init(uiColor:)();
  TrainingLoadViewModel.band(onDay:)(a1, v4);
  Band = type metadata accessor for TrainingLoadBand();
  v8 = *(Band - 8);
  if ((*(v8 + 48))(v4, 1, Band) == 1)
  {
    outlined destroy of TrainingLoadSampleDaySummary?(v4, &_s13HealthBalance16TrainingLoadBandOSgMd);
  }

  else
  {
    v9 = TrainingLoadBand.background.getter();
    (*(v8 + 8))(v4, Band);

    return v9;
  }

  return v6;
}

uint64_t TrainingLoadViewModel.color(onDay:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance16TrainingLoadBandOSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  TrainingLoadViewModel.band(onDay:)(a1, &v9 - v3);
  Band = type metadata accessor for TrainingLoadBand();
  v6 = *(Band - 8);
  if ((*(v6 + 48))(v4, 1, Band) == 1)
  {
    outlined destroy of TrainingLoadSampleDaySummary?(v4, &_s13HealthBalance16TrainingLoadBandOSgMd);
    return static Color.gray.getter();
  }

  else
  {
    v8 = TrainingLoadBand.color.getter();
    (*(v6 + 8))(v4, Band);
    return v8;
  }
}

uint64_t TrainingLoadViewModel.isPending(onDay:)(uint64_t a1)
{
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
  v23 = *(ChronicBaseline - 8);
  v24 = ChronicBaseline;
  MEMORY[0x28223BE20](ChronicBaseline);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  v7 = *(BaselineComparison - 8);
  MEMORY[0x28223BE20](BaselineComparison);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v11 = *(SampleDaySummary - 8);
  MEMORY[0x28223BE20](SampleDaySummary);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v17 = *(v1 + *(type metadata accessor for TrainingLoadViewModel(0) + 64));
  if (*(v17 + 16))
  {
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v19)
    {
      (*(v11 + 16))(v13, *(v17 + 56) + *(v11 + 72) * v18, SampleDaySummary);
      (*(v11 + 32))(v16, v13, SampleDaySummary);
      TrainingLoadSampleDaySummary.trainingLoad.getter();
      TrainingLoadBaselineComparison.chronicBaseline.getter();
      (*(v7 + 8))(v9, BaselineComparison);
      (*(v11 + 8))(v16, SampleDaySummary);
      v21 = v23;
      v20 = v24;
      if ((*(v23 + 88))(v5, v24) == *MEMORY[0x277D10010])
      {
        (*(v21 + 96))(v5, v20);
        outlined destroy of TrainingLoadSampleDaySummary?(v5, &_sSny9HealthKit8DayIndexVGMd);
        return 1;
      }

      (*(v21 + 8))(v5, v20);
    }
  }

  return 0;
}

uint64_t TrainingLoadViewModel.isNoData(onDay:)(uint64_t a1)
{
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline();
  v23 = *(ChronicBaseline - 8);
  v24 = ChronicBaseline;
  MEMORY[0x28223BE20](ChronicBaseline);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison();
  v7 = *(BaselineComparison - 8);
  MEMORY[0x28223BE20](BaselineComparison);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v11 = *(SampleDaySummary - 8);
  MEMORY[0x28223BE20](SampleDaySummary);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v17 = *(v1 + *(type metadata accessor for TrainingLoadViewModel(0) + 64));
  if (!*(v17 + 16))
  {
    return 1;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v19 & 1) == 0)
  {
    return 1;
  }

  (*(v11 + 16))(v13, *(v17 + 56) + *(v11 + 72) * v18, SampleDaySummary);
  (*(v11 + 32))(v16, v13, SampleDaySummary);
  TrainingLoadSampleDaySummary.trainingLoad.getter();
  TrainingLoadBaselineComparison.chronicBaseline.getter();
  (*(v7 + 8))(v9, BaselineComparison);
  (*(v11 + 8))(v16, SampleDaySummary);
  v21 = v23;
  v20 = v24;
  if ((*(v23 + 88))(v5, v24) == *MEMORY[0x277D10018])
  {
    return 1;
  }

  (*(v21 + 8))(v5, v20);
  return 0;
}

double TrainingLoadViewModel.loadBandFlavoredGradientBackground(rotated:)@<D0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance16TrainingLoadBandOSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  Band = type metadata accessor for TrainingLoadBand();
  v9 = *(Band - 8);
  MEMORY[0x28223BE20](Band);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  outlined init with copy of TrainingLoadBand?(v2 + *(ViewModel + 52), v7, &_s13HealthBalance16TrainingLoadBandOSgMd);
  if ((*(v9 + 48))(v7, 1, Band) == 1)
  {
    outlined destroy of TrainingLoadSampleDaySummary?(v7, &_s13HealthBalance16TrainingLoadBandOSgMd);
    v13 = [objc_opt_self() secondarySystemBackgroundColor];
    *&v35 = Color.init(uiColor:)();
    WORD4(v35) = 256;
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA14LinearGradientVGG_AStGGAA15_RotationEffectVGAA06_ShapeI0VyAmA5ColorVG_GWOi0_(&v35);
    v32 = v39;
    v33 = v40;
    v34[0] = *v41;
    *(v34 + 9) = *(&v41[1] + 1);
    v28 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA14LinearGradientVGG_AOtGGAA15_RotationEffectVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA9RectangleVAA5ColorVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent(&lazy protocol witness table cache variable for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA9RectangleVAA5ColorVGMd);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    (*(v9 + 32))(v11, v7, Band);
    TrainingLoadBand.layeredBackground.getter(v27);
    v23 = v27[2];
    v24 = v27[3];
    v25 = v27[4];
    v26 = v27[5];
    if (a1)
    {
      v14 = 3.14159265;
    }

    else
    {
      v14 = 0.0;
    }

    v21 = v27[0];
    v22 = v27[1];
    static UnitPoint.center.getter();
    v37 = v23;
    v38 = v24;
    v39 = v25;
    v40 = v26;
    v35 = v21;
    v36 = v22;
    v41[0] = v14;
    v41[1] = v15;
    v41[2] = v16;
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAGyAA9RectangleVAA24_ForegroundStyleModifierVyAA14LinearGradientVGG_AStGGAA15_RotationEffectVGAA06_ShapeI0VyAmA5ColorVG_GWOi_(&v35);
    v46 = v39;
    v47 = v40;
    v48[0] = *v41;
    *(v48 + 9) = *(&v41[1] + 1);
    v42 = v35;
    v43 = v36;
    v44 = v37;
    v45 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA14LinearGradientVGG_AOtGGAA15_RotationEffectVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA9RectangleVAA5ColorVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent(&lazy protocol witness table cache variable for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA9RectangleVAA5ColorVGMd);
    _ConditionalContent<>.init(storage:)();
    (*(v9 + 8))(v11, Band);
    v46 = v32;
    v47 = v33;
    v48[0] = v34[0];
    *(v48 + 9) = *(v34 + 9);
    v42 = v28;
    v43 = v29;
    v44 = v30;
    v45 = v31;
  }

  v17 = v47;
  a2[4] = v46;
  a2[5] = v17;
  a2[6] = v48[0];
  *(a2 + 105) = *(v48 + 9);
  v18 = v43;
  *a2 = v42;
  a2[1] = v18;
  result = *&v44;
  v20 = v45;
  a2[2] = v44;
  a2[3] = v20;
  return result;
}

Swift::String __swiftcall TrainingLoadViewModel.localizedName()()
{
  v1 = v0;
  DataType = type metadata accessor for TrainingLoadDataType();
  v3 = *(DataType - 8);
  v4 = MEMORY[0x28223BE20](DataType);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, DataType, v4);
  v7 = (*(v3 + 88))(v6, DataType);
  if (v7 != *MEMORY[0x277D0FED8])
  {
    if (v7 == *MEMORY[0x277D0FEE0])
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v9 = WorkoutUIBundle.super.isa;
      v24 = 0xE000000000000000;
      v12 = 0x5F5941445F4C4C41;
      v13 = 1145130828;
    }

    else
    {
      if (v7 != *MEMORY[0x277D0FEE8])
      {
LABEL_15:
        v25[1] = 0;
        v25[2] = 0xE000000000000000;
        _StringGuts.grow(_:)(34);
        MEMORY[0x20F30BC00](0xD000000000000020, 0x800000020CB9D570);
        _print_unlocked<A, B>(_:_:)();
        v21 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        goto LABEL_16;
      }

      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v9 = WorkoutUIBundle.super.isa;
      v24 = 0xE000000000000000;
      v12 = 0x4B524F575F6C6C41;
      v13 = 1398035791;
    }

    v14 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v15.value._object = 0xEB00000000656C62;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17 = 0;
    v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v12, v15, v9, v16, *(&v24 - 1));
    object = v18._object;
    countAndFlagsBits = v18._countAndFlagsBits;
    goto LABEL_13;
  }

  (*(v3 + 96))(v6, DataType);
  v8 = FILocalizedNameForIndoorAgnosticActivityType();
  if (!v8)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_13:
  v19 = countAndFlagsBits;
  v20 = object;

  v21 = v19;
  v22 = v20;
LABEL_16:
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

id TrainingLoadViewModel.displayImage()@<X0>(uint64_t a1@<X8>)
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v4 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAL_GMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  TrainingLoadViewModel.symbolName.getter();
  if (v13)
  {
    v35 = Image.init(_internalSystemName:)();
    View = TrainingLoadViewModel.localizedName()();
    lazy protocol witness table accessor for type String and conformance String();
    v14 = Text.init<A>(_:)();
    v33 = v7;
    v15 = a1;
    v17 = v16;
    v19 = v18;
    View.accessibility(label:)();
    v20 = v17;
    a1 = v15;
    outlined consume of Text.Storage(v14, v20, v19 & 1);

    outlined init with copy of TrainingLoadBand?(v12, v9, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
LABEL_6:
    outlined destroy of TrainingLoadSampleDaySummary?(v12, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
    v29 = 0;
LABEL_7:
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGMd);
    return (*(*(v30 - 8) + 56))(a1, v29, 1, v30);
  }

  (*(v4 + 16))(v6, v1, DataType);
  if ((*(v4 + 88))(v6, DataType) != *MEMORY[0x277D0FED8])
  {
    (*(v4 + 8))(v6, DataType);
    v29 = 1;
    goto LABEL_7;
  }

  v33 = a1;
  (*(v4 + 96))(v6, DataType);
  v32 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:*v6 isIndoor:0];
  result = FIUIStaticScalableWorkoutIconImageWithPadding();
  if (result)
  {
    v22 = result;
    v23 = [result imageWithRenderingMode_];

    v31 = v23;
    v35 = Image.init(uiImage:)();
    View = TrainingLoadViewModel.localizedName()();
    lazy protocol witness table accessor for type String and conformance String();
    v24 = Text.init<A>(_:)();
    v26 = v25;
    v28 = v27;
    View.accessibility(label:)();
    outlined consume of Text.Storage(v24, v26, v28 & 1);

    outlined init with copy of TrainingLoadBand?(v12, v9, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    a1 = v33;
    _ConditionalContent<>.init(storage:)();

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t TrainingLoadViewModel.symbolName.getter()
{
  v1 = v0;
  DataType = type metadata accessor for TrainingLoadDataType();
  v3 = *(DataType - 1);
  v4 = MEMORY[0x28223BE20](DataType);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, DataType, v4);
  v7 = (*(v3 + 88))(v6, DataType);
  if (v7 == *MEMORY[0x277D0FED8])
  {
    (*(v3 + 96))(v6, DataType);
    DataType = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:*v6 isIndoor:0];
    v8 = [DataType symbolName];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v10;
    }

    goto LABEL_8;
  }

  if (v7 == *MEMORY[0x277D0FEE0])
  {
    return 0x2E78616D2E6E7573;
  }

  if (v7 != *MEMORY[0x277D0FEE8])
  {
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    MEMORY[0x20F30BC00](0xD000000000000020, 0x800000020CB9D570);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_8:
  }

  return 0;
}

uint64_t TrainingLoadViewModel.hasDisplayImage.getter()
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v2 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrainingLoadViewModel.symbolName.getter();
  if (v5)
  {

    return 1;
  }

  else
  {
    (*(v2 + 16))(v4, v0, DataType);
    if ((*(v2 + 88))(v4, DataType) == *MEMORY[0x277D0FED8])
    {
      return 1;
    }

    else
    {
      (*(v2 + 8))(v4, DataType);
      return 0;
    }
  }
}

uint64_t TrainingLoadViewModel.hash(into:)()
{
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v2 = *(SampleDaySummary - 8);
  MEMORY[0x28223BE20](SampleDaySummary);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TrainingLoadDataType();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type TrainingLoadDataType and conformance TrainingLoadDataType, MEMORY[0x277D0FEF0]);
  dispatch thunk of Hashable.hash(into:)();
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  type metadata accessor for GregorianDayRange();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type GregorianDayRange and conformance GregorianDayRange, MEMORY[0x277D0FEB8]);
  dispatch thunk of Hashable.hash(into:)();
  v6 = *(v0 + *(ViewModel + 24));
  result = MEMORY[0x20F30CD90](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = v2 + 16;
    v10 = *(v2 + 16);
    v11 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    v13 = (v9 - 8);
    do
    {
      v10(v4, v11, SampleDaySummary);
      _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type TrainingLoadSampleDaySummary and conformance TrainingLoadSampleDaySummary, MEMORY[0x277D10028]);
      dispatch thunk of Hashable.hash(into:)();
      result = (*v13)(v4, SampleDaySummary);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

Swift::Int TrainingLoadViewModel.hashValue.getter()
{
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v2 = *(SampleDaySummary - 8);
  MEMORY[0x28223BE20](SampleDaySummary);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  type metadata accessor for TrainingLoadDataType();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type TrainingLoadDataType and conformance TrainingLoadDataType, MEMORY[0x277D0FEF0]);
  dispatch thunk of Hashable.hash(into:)();
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  type metadata accessor for GregorianDayRange();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type GregorianDayRange and conformance GregorianDayRange, MEMORY[0x277D0FEB8]);
  dispatch thunk of Hashable.hash(into:)();
  v6 = *(v0 + *(ViewModel + 24));
  MEMORY[0x20F30CD90](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v4, v11, SampleDaySummary);
      _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type TrainingLoadSampleDaySummary and conformance TrainingLoadSampleDaySummary, MEMORY[0x277D10028]);
      dispatch thunk of Hashable.hash(into:)();
      (*(v8 - 8))(v4, SampleDaySummary);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrainingLoadViewModel(uint64_t a1, uint64_t a2)
{
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v5 = *(SampleDaySummary - 8);
  MEMORY[0x28223BE20](SampleDaySummary);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  type metadata accessor for TrainingLoadDataType();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type TrainingLoadDataType and conformance TrainingLoadDataType, MEMORY[0x277D0FEF0]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for GregorianDayRange();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type GregorianDayRange and conformance GregorianDayRange, MEMORY[0x277D0FEB8]);
  dispatch thunk of Hashable.hash(into:)();
  v8 = *(v2 + *(a2 + 24));
  MEMORY[0x20F30CD90](*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v12 = *(v5 + 16);
    v10 = v5 + 16;
    v11 = v12;
    v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v7, v13, SampleDaySummary);
      _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type TrainingLoadSampleDaySummary and conformance TrainingLoadSampleDaySummary, MEMORY[0x277D10028]);
      dispatch thunk of Hashable.hash(into:)();
      (*(v10 - 8))(v7, SampleDaySummary);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return Hasher._finalize()();
}

BOOL specialized static TrainingLoadViewModel.ChartPoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  type metadata accessor for DayIndex();
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8]);
  dispatch thunk of Strideable.distance(to:)();
  if (v16)
  {
    return 0;
  }

  v6 = *(View + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if ((static Color.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v11 = *(View + 32);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    return (v15 & 1) != 0;
  }

  if (*v12 != *v14)
  {
    v15 = 1;
  }

  return (v15 & 1) == 0;
}

uint64_t type metadata accessor for TrainingLoadViewModel.ChartPoint(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of TrainingLoadBand?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s9WorkoutUI21TrainingLoadViewModelV10ChartPointVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of TrainingLoadViewModel.ChartPoint(uint64_t a1, uint64_t a2)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  (*(*(View - 8) + 40))(a2, a1, View);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA9RectangleVAA24_ForegroundStyleModifierVyAA14LinearGradientVGG_AOtGGAA15_RotationEffectVGMd);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA9RectangleVAA24_ForegroundStyleModifierVyAA14LinearGradientVGG_AOtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent(unint64_t *a1, uint64_t *a2)
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

uint64_t outlined init with copy of TrainingLoadBand?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static TrainingLoadViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v100 = *(View - 8);
  MEMORY[0x28223BE20](View);
  v5 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v104 = &v89 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSg_AFtMd);
  MEMORY[0x28223BE20](v99);
  v101 = &v89 - v8;
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v10 = *(SampleDaySummary - 8);
  v107 = SampleDaySummary;
  v108 = v10;
  MEMORY[0x28223BE20](SampleDaySummary);
  v103 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v105 = &v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance28TrainingLoadSampleDaySummaryVSg_ADtMd);
  MEMORY[0x28223BE20](v14);
  v16 = &v89 - v15;
  Band = type metadata accessor for TrainingLoadBand();
  v18 = *(Band - 8);
  MEMORY[0x28223BE20](Band);
  v106 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance16TrainingLoadBandOSgMd);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v89 - v24;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance16TrainingLoadBandOSg_ADtMd);
  v26 = MEMORY[0x28223BE20](v109);
  v98 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v89 - v28;
  if ((static TrainingLoadDataType.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_19;
  }

  v97 = v23;
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  if ((static GregorianDayRange.== infix(_:_:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ13HealthBalance28TrainingLoadSampleDaySummaryV_Tt1g5(*(a1 + *(ViewModel + 24)), *(a2 + *(ViewModel + 24))) & 1) == 0)
  {
    goto LABEL_19;
  }

  v92 = v5;
  v95 = ViewModel;
  v96 = a2;
  v31 = Band;
  v32 = *(ViewModel + 28);
  v33 = *(v109 + 48);
  v93 = a1;
  outlined init with copy of TrainingLoadBand?(a1 + v32, v29, &_s13HealthBalance16TrainingLoadBandOSgMd);
  outlined init with copy of TrainingLoadBand?(v96 + v32, &v29[v33], &_s13HealthBalance16TrainingLoadBandOSgMd);
  v94 = v18;
  v34 = *(v18 + 48);
  if (v34(v29, 1, v31) == 1)
  {
    v91 = v31;
    if (v34(&v29[v33], 1, v31) == 1)
    {
      v90 = v34;
      outlined destroy of TrainingLoadSampleDaySummary?(v29, &_s13HealthBalance16TrainingLoadBandOSgMd);
      v35 = v96;
      goto LABEL_11;
    }

LABEL_9:
    v37 = &_s13HealthBalance16TrainingLoadBandOSg_ADtMd;
    v38 = v29;
LABEL_18:
    outlined destroy of TrainingLoadSampleDaySummary?(v38, v37);
    goto LABEL_19;
  }

  outlined init with copy of TrainingLoadBand?(v29, v25, &_s13HealthBalance16TrainingLoadBandOSgMd);
  v36 = v31;
  if (v34(&v29[v33], 1, v31) == 1)
  {
    (*(v94 + 8))(v25, v31);
    goto LABEL_9;
  }

  v90 = v34;
  v39 = v94;
  v40 = v106;
  (*(v94 + 32))(v106, &v29[v33], v36);
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type TrainingLoadBand and conformance TrainingLoadBand, MEMORY[0x277D0FEA0]);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v39 + 8);
  v42(v40, v36);
  v91 = v36;
  v42(v25, v36);
  v35 = v96;
  outlined destroy of TrainingLoadSampleDaySummary?(v29, &_s13HealthBalance16TrainingLoadBandOSgMd);
  if ((v41 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v43 = v95[8];
  v44 = *(v14 + 48);
  v45 = v93;
  outlined init with copy of TrainingLoadBand?(v93 + v43, v16, &_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
  outlined init with copy of TrainingLoadBand?(v35 + v43, &v16[v44], &_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
  v46 = v107;
  v47 = *(v108 + 48);
  if (v47(v16, 1, v107) == 1)
  {
    v48 = v47(&v16[v44], 1, v46);
    v49 = v92;
    if (v48 == 1)
    {
      outlined destroy of TrainingLoadSampleDaySummary?(v16, &_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
      goto LABEL_22;
    }

LABEL_16:
    v37 = &_s13HealthBalance28TrainingLoadSampleDaySummaryVSg_ADtMd;
LABEL_17:
    v38 = v16;
    goto LABEL_18;
  }

  v50 = v105;
  outlined init with copy of TrainingLoadBand?(v16, v105, &_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
  v51 = v47(&v16[v44], 1, v46);
  v52 = v92;
  if (v51 == 1)
  {
    (*(v108 + 8))(v50, v46);
    goto LABEL_16;
  }

  v55 = v108;
  v56 = &v16[v44];
  v57 = v103;
  (*(v108 + 32))(v103, v56, v46);
  _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type TrainingLoadSampleDaySummary and conformance TrainingLoadSampleDaySummary, MEMORY[0x277D10028]);
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  v59 = *(v55 + 8);
  v59(v57, v46);
  v60 = v50;
  v49 = v52;
  v59(v60, v46);
  outlined destroy of TrainingLoadSampleDaySummary?(v16, &_s13HealthBalance28TrainingLoadSampleDaySummaryVSgMd);
  v45 = v93;
  if ((v58 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v61 = v95;
  v62 = v95[9];
  v63 = (v45 + v62);
  v64 = *(v45 + v62 + 8);
  v65 = (v35 + v62);
  v66 = *(v35 + v62 + 8);
  if (v64)
  {
    v67 = v104;
    if (!v66)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (*v63 != *v65)
    {
      LOBYTE(v66) = 1;
    }

    v67 = v104;
    if (v66)
    {
      goto LABEL_19;
    }
  }

  v68 = v95[10];
  v69 = (v45 + v68);
  v70 = *(v45 + v68 + 8);
  v71 = (v35 + v68);
  v72 = v71[1];
  if (v70)
  {
    if (!v72 || (*v69 != *v71 || v70 != v72) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v72)
  {
    goto LABEL_19;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ9WorkoutUI21TrainingLoadViewModelV10ChartPointV_Tt1g5(*(v45 + v61[11]), *(v35 + v61[11])) & 1) == 0)
  {
    goto LABEL_19;
  }

  v73 = v61[12];
  v74 = *(v99 + 48);
  v75 = v101;
  outlined init with copy of TrainingLoadBand?(v45 + v73, v101, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
  outlined init with copy of TrainingLoadBand?(v35 + v73, v75 + v74, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
  v76 = *(v100 + 48);
  v77 = View;
  if (v76(v75, 1, View) == 1)
  {
    if (v76(v75 + v74, 1, v77) == 1)
    {
      outlined destroy of TrainingLoadSampleDaySummary?(v75, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
      goto LABEL_43;
    }

LABEL_41:
    v37 = &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSg_AFtMd;
    v38 = v75;
    goto LABEL_18;
  }

  outlined init with copy of TrainingLoadBand?(v75, v67, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
  if (v76(v75 + v74, 1, v77) == 1)
  {
    outlined destroy of TrainingLoadViewModel.ChartPoint(v67);
    goto LABEL_41;
  }

  _s9WorkoutUI21TrainingLoadViewModelV10ChartPointVWObTm_0(v75 + v74, v49, type metadata accessor for TrainingLoadViewModel.ChartPoint);
  v78 = specialized static TrainingLoadViewModel.ChartPoint.== infix(_:_:)(v67, v49);
  outlined destroy of TrainingLoadViewModel.ChartPoint(v49);
  outlined destroy of TrainingLoadViewModel.ChartPoint(v67);
  outlined destroy of TrainingLoadSampleDaySummary?(v75, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd);
  if (!v78)
  {
    goto LABEL_19;
  }

LABEL_43:
  v79 = v95[13];
  v80 = *(v109 + 48);
  v16 = v98;
  outlined init with copy of TrainingLoadBand?(v45 + v79, v98, &_s13HealthBalance16TrainingLoadBandOSgMd);
  outlined init with copy of TrainingLoadBand?(v35 + v79, &v16[v80], &_s13HealthBalance16TrainingLoadBandOSgMd);
  v81 = v90;
  v82 = v91;
  if (v90(v16, 1, v91) != 1)
  {
    v83 = v97;
    outlined init with copy of TrainingLoadBand?(v16, v97, &_s13HealthBalance16TrainingLoadBandOSgMd);
    if (v81(&v16[v80], 1, v82) != 1)
    {
      v84 = v94;
      v85 = v106;
      (*(v94 + 32))(v106, &v16[v80], v82);
      _s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWlTm_5(&lazy protocol witness table cache variable for type TrainingLoadBand and conformance TrainingLoadBand, MEMORY[0x277D0FEA0]);
      v86 = dispatch thunk of static Equatable.== infix(_:_:)();
      v87 = *(v84 + 8);
      v87(v85, v82);
      v87(v83, v82);
      outlined destroy of TrainingLoadSampleDaySummary?(v16, &_s13HealthBalance16TrainingLoadBandOSgMd);
      if ((v86 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_50;
    }

    (*(v94 + 8))(v83, v82);
    goto LABEL_48;
  }

  if (v81(&v16[v80], 1, v82) != 1)
  {
LABEL_48:
    v37 = &_s13HealthBalance16TrainingLoadBandOSg_ADtMd;
    goto LABEL_17;
  }

  outlined destroy of TrainingLoadSampleDaySummary?(v16, &_s13HealthBalance16TrainingLoadBandOSgMd);
LABEL_50:
  v88 = v95;
  if (static Color.== infix(_:_:)() & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ9HealthKit8DayIndexV_9WorkoutUI21TrainingLoadViewModelV10ChartPointVTt1g5(*(v45 + v88[15]), *(v35 + v88[15])))
  {
    SampleD7SummaryVTt1g5 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ9HealthKit8DayIndexV_0B7Balance018TrainingLoadSampleD7SummaryVTt1g5(*(v45 + v88[16]), *(v35 + v88[16]));
    return SampleD7SummaryVTt1g5 & 1;
  }

LABEL_19:
  SampleD7SummaryVTt1g5 = 0;
  return SampleD7SummaryVTt1g5 & 1;
}

void type metadata completion function for TrainingLoadViewModel()
{
  type metadata accessor for TrainingLoadDataType();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GregorianDayRange();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [TrainingLoadSampleDaySummary](319, &lazy cache variable for type metadata for [TrainingLoadSampleDaySummary], MEMORY[0x277D10028], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [TrainingLoadSampleDaySummary](319, &lazy cache variable for type metadata for TrainingLoadBand?, MEMORY[0x277D0FEA0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [TrainingLoadSampleDaySummary](319, &lazy cache variable for type metadata for TrainingLoadSampleDaySummary?, MEMORY[0x277D10028], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            _sSdSgMaTm_2(319, &lazy cache variable for type metadata for Double?);
            if (v5 <= 0x3F)
            {
              _sSdSgMaTm_2(319, &lazy cache variable for type metadata for String?);
              if (v6 <= 0x3F)
              {
                type metadata accessor for [TrainingLoadSampleDaySummary](319, &lazy cache variable for type metadata for [TrainingLoadViewModel.ChartPoint], type metadata accessor for TrainingLoadViewModel.ChartPoint, MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for [TrainingLoadSampleDaySummary](319, &lazy cache variable for type metadata for TrainingLoadViewModel.ChartPoint?, type metadata accessor for TrainingLoadViewModel.ChartPoint, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for [DayIndex : TrainingLoadViewModel.ChartPoint](319, &lazy cache variable for type metadata for [DayIndex : TrainingLoadViewModel.ChartPoint], type metadata accessor for TrainingLoadViewModel.ChartPoint);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for [DayIndex : TrainingLoadViewModel.ChartPoint](319, &lazy cache variable for type metadata for [DayIndex : TrainingLoadSampleDaySummary], MEMORY[0x277D10028]);
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

void type metadata accessor for [TrainingLoadSampleDaySummary](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void _sSdSgMaTm_2(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata completion function for TrainingLoadViewModel.ChartPoint()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DayIndex();
    if (v1 <= 0x3F)
    {
      _sSdSgMaTm_2(319, &lazy cache variable for type metadata for Double?);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>>, _RotationEffect>, _ShapeView<Rectangle, Color>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>>, _RotationEffect>, _ShapeView<Rectangle, Color>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>>, _RotationEffect>, _ShapeView<Rectangle, Color>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA6ZStackVyAA9TupleViewVyAEyAA9RectangleVAA24_ForegroundStyleModifierVyAA14LinearGradientVGG_AQtGGAA15_RotationEffectVGAA06_ShapeH0VyAkA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>>, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent(&lazy protocol witness table cache variable for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA9RectangleVAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ZStack<TupleView<(ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>, ModifiedContent<Rectangle, _ForegroundStyleModifier<LinearGradient>>)>>, _RotationEffect>, _ShapeView<Rectangle, Color>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA31AccessibilityAttachmentModifierVGAJGSgMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, AccessibilityAttachmentModifier>, ModifiedContent<Image, AccessibilityAttachmentModifier>>? and conformance <A> A?);
  }

  return result;
}

uint64_t outlined destroy of TrainingLoadSampleDaySummary?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in EffortButtonBackground.body.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA14LinearGradientVGMd);
  MEMORY[0x28223BE20](v28);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v28 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorK0VFQOyACyAA01_gH11PlaceholderVAA05_BlurH0VG_Qo_GGMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v28 - v11);
  v13 = type metadata accessor for RoundedRectangle();
  v14 = *(v13 + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = type metadata accessor for RoundedCornerStyle();
  v17 = *(*(v16 - 8) + 104);
  v17(v12 + v14, v15, v16);
  *v12 = a2;
  v12[1] = a2;
  *&v31 = 0x401E000000000000;
  BYTE8(v31) = 0;
  if (one-time initialization token for backgroundSaturationMatrix != -1)
  {
    swift_once();
  }

  v36 = xmmword_27C80F2B0;
  v37 = *&dword_27C80F2C0;
  v38 = xmmword_27C80F2D0;
  v34 = static EffortColors.backgroundSaturationMatrix;
  v35 = unk_27C80F2A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA26_BackdropEffectPlaceholderVAA05_BlurF0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<_BackdropEffectPlaceholder, _BlurEffect> and conformance <> ModifiedContent<A, B>();
  View._colorMatrix(_:)();
  v17(v6 + *(v13 + 20), v15, v16);
  *v6 = a2;
  v6[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20CB5DA80;
  static Color.white.getter();
  v19 = Color.opacity(_:)();

  *(v18 + 32) = v19;
  static Color.white.getter();
  v20 = Color.opacity(_:)();

  *(v18 + 40) = v20;
  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  MEMORY[0x20F30B340](v18);
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v21 = v28;
  v22 = v6 + *(v28 + 52);
  v23 = v32;
  *v22 = v31;
  *(v22 + 1) = v23;
  *(v22 + 4) = v33;
  *(v6 + *(v21 + 56)) = 256;
  sub_20C68C62C(v12, v9);
  v24 = v29;
  outlined init with copy of _ShapeView<RoundedRectangle, LinearGradient>(v6, v29);
  v25 = v30;
  sub_20C68C62C(v9, v30);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA15_BackdropEffectVyAA4ViewPAAE12_colorMatrixyQrAA06_ColorK0VFQOyACyAA01_gH11PlaceholderVAA05_BlurH0VG_Qo_GG_AA06_ShapeI0VyAeA14LinearGradientVGtMd);
  outlined init with copy of _ShapeView<RoundedRectangle, LinearGradient>(v24, v25 + *(v26 + 48));
  outlined destroy of _ShapeView<RoundedRectangle, LinearGradient>(v6);
  sub_20C68C69C(v12);
  outlined destroy of _ShapeView<RoundedRectangle, LinearGradient>(v24);
  return sub_20C68C69C(v9);
}

uint64_t protocol witness for View.body.getter in conformance EffortButtonBackground@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA16RoundedRectangleVAA15_BackdropEffectVyAA0D0PAAE12_colorMatrixyQrAA06_ColorP0VFQOyAKyAA01_mN11PlaceholderVAA05_BlurN0VG_Qo_GG_AA06_ShapeD0VyAmA14LinearGradientVGtGGMd);
  return closure #1 in EffortButtonBackground.body.getter(a1 + *(v5 + 44), v3);
}

uint64_t EffortButtonBackgroundModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0022EffortButtonBackgroundD0VGMd);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0022EffortButtonBackgroundF0VGAA01_jF0VyAF0hiJ0VGGMd);
  v11 = (a2 + *(result + 36));
  *v11 = v5;
  v11[1] = v6;
  v11[2] = v8;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance EffortButtonBackgroundModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0022EffortButtonBackgroundD0VGMd);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0022EffortButtonBackgroundF0VGAA01_jF0VyAF0hiJ0VGGMd);
  v11 = (a2 + *(result + 36));
  *v11 = v5;
  v11[1] = v6;
  v11[2] = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for EffortButtonBackgroundModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EffortButtonBackgroundModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<EffortButtonBackgroundModifier>, _BackgroundModifier<EffortButtonBackground>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<EffortButtonBackgroundModifier>, _BackgroundModifier<EffortButtonBackground>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<EffortButtonBackgroundModifier>, _BackgroundModifier<EffortButtonBackground>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB0022EffortButtonBackgroundF0VGAA01_jF0VyAF0hiJ0VGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<EffortButtonBackgroundModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<EffortButtonBackgroundModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0022EffortButtonBackgroundD0VGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<EffortButtonBackgroundModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<EffortButtonBackground> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVy07WorkoutB0012EffortButtonC0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<EffortButtonBackgroundModifier>, _BackgroundModifier<EffortButtonBackground>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_BackdropEffectPlaceholder, _BlurEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_BackdropEffectPlaceholder, _BlurEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_BackdropEffectPlaceholder, _BlurEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA26_BackdropEffectPlaceholderVAA05_BlurF0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_BackdropEffectPlaceholder, _BlurEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of _ShapeView<RoundedRectangle, LinearGradient>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA14LinearGradientVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of _ShapeView<RoundedRectangle, LinearGradient>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA14LinearGradientVGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<EffortButtonBackgroundModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
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

uint64_t WorkoutSummaryDataSource.__allocating_init(workout:liveWorkoutConfiguration:customDismissalHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  WorkoutSummaryDataSource.init(workout:liveWorkoutConfiguration:customDismissalHandler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t WorkoutSummaryDataSource.customDismissalHandler.getter()
{
  v1 = *(v0 + 24);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v1);
  return v1;
}

uint64_t key path setter for WorkoutSummaryDataSource.workoutVoiceOutroState : WorkoutSummaryDataSource(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  outlined copy of WorkoutVoiceOutroState(v2, v3);
  return outlined consume of WorkoutVoiceOutroState(v5, v6);
}

uint64_t WorkoutSummaryDataSource.workoutVoiceOutroState.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v3;
  a1[1] = v4;
  return outlined copy of WorkoutVoiceOutroState(v3, v4);
}

uint64_t WorkoutSummaryDataSource.init(workout:liveWorkoutConfiguration:customDismissalHandler:)(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 72) = 0;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 80) = [objc_opt_self() weakObjectsHashTable];
  *(v5 + 16) = a1;
  if (a2)
  {
    v10 = a1;
    v11 = a2;
    v12 = dispatch thunk of LiveWorkoutConfiguration.configureWithWorkoutVoiceMotivation(shouldLog:)();

    *(v5 + 88) = v12 & 1;
    a2 = v11;
    v13 = dispatch thunk of LiveWorkoutConfiguration.isWorkoutBuddyMuted.getter();

    *(v5 + 89) = v13 & 1;
    v14 = a2;
    LOBYTE(a2) = dispatch thunk of LiveWorkoutConfiguration.isWorkoutBuddyUnavailableDueToHeadphonesOff.getter();
  }

  else
  {
    *(v5 + 88) = 0;
  }

  *(v5 + 90) = a2 & 1;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  return v5;
}

uint64_t WorkoutSummaryDataSource.beginObservingWorkoutVoiceOutroTranscript(with:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v1[7] = LiveWorkoutContextManager.momentCoordinator.getter();
  v1[8] = v7;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v9 = v1[5];
  v8 = v1[6];
  if (v8 == 1)
  {
    outlined consume of WorkoutVoiceOutroState(v2[5], 1uLL);
    outlined consume of WorkoutVoiceOutroState(0, 1uLL);
  }

  else
  {
    outlined copy of WorkoutVoiceOutroState(v2[5], v2[6]);
    outlined consume of WorkoutVoiceOutroState(v9, v8);
    outlined consume of WorkoutVoiceOutroState(0, 1uLL);
    v10 = v2[5];
    v11 = v2[6];
    *(v2 + 5) = xmmword_20CB7C920;
    outlined consume of WorkoutVoiceOutroState(v10, v11);
    WorkoutSummaryDataSource.notifyObserversDidUpdateOutroState()();
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v2;
  v13[5] = a1;

  v14 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in WorkoutSummaryDataSource.beginObservingWorkoutVoiceOutroTranscript(with:), v13);
}

uint64_t closure #1 in WorkoutSummaryDataSource.beginObservingWorkoutVoiceOutroTranscript(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D22VoiceMomentCoordinatorC5StateO_GMd);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutSummaryDataSource.beginObservingWorkoutVoiceOutroTranscript(with:), 0, 0);
}

uint64_t closure #1 in WorkoutSummaryDataSource.beginObservingWorkoutVoiceOutroTranscript(with:)()
{
  v1 = v0[2];
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = v0[7];
    v4 = *(v1 + 64);
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();
    swift_unknownObjectRetain_n();

    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v2;
    v8[5] = v4;
    v8[6] = v6;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in WorkoutSummaryDataSource.checkForOutroInference(), v8);
    swift_unknownObjectRelease();
  }

  v0[8] = LiveWorkoutContextManager.momentCoordinator.getter();
  type metadata accessor for WorkoutVoiceMomentCoordinator();
  v10 = swift_dynamicCastClass();
  v0[9] = v10;
  if (v10)
  {
    lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, MEMORY[0x277D7DC10]);
    v12 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in WorkoutSummaryDataSource.beginObservingWorkoutVoiceOutroTranscript(with:), v12, v11);
  }

  else
  {
    swift_unknownObjectRelease();

    v13 = v0[1];

    return v13();
  }
}

{
  dispatch thunk of WorkoutVoiceMomentCoordinator.$state.getter();

  return MEMORY[0x2822009F8](closure #1 in WorkoutSummaryDataSource.beginObservingWorkoutVoiceOutroTranscript(with:), 0, 0);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Published<WorkoutVoiceMomentCoordinator.State>.Publisher and conformance Published<A>.Publisher();
  v5 = Publisher<>.sink(receiveValue:)();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  *(v4 + 72) = v5;

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in closure #1 in WorkoutSummaryDataSource.beginObservingWorkoutVoiceOutroTranscript(with:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 56);
    if (v4)
    {
      v5 = *(result + 64);
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
      v7 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for MainActor();
      swift_unknownObjectRetain_n();

      v8 = static MainActor.shared.getter();
      v9 = swift_allocObject();
      v10 = MEMORY[0x277D85700];
      v9[2] = v8;
      v9[3] = v10;
      v9[4] = v4;
      v9[5] = v5;
      v9[6] = v7;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v2, &closure #1 in WorkoutSummaryDataSource.checkForOutroInference()partial apply, v9);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t WorkoutSummaryDataSource.notifyObserversDidUpdateOutroState()()
{
  v1 = type metadata accessor for NSFastEnumerationIterator();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(v0 + 80) objectEnumerator];
  NSEnumerator.makeIterator()();
  lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, MEMORY[0x277CC9178]);
  dispatch thunk of IteratorProtocol.next()();
  while (v14)
  {
    outlined init with take of Any(&v13, v12);
    outlined init with copy of Any(v12, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI0A25SummaryDataSourceObserver_pMd);
    if (swift_dynamicCast())
    {
      v5 = v10;
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v0, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
    dispatch thunk of IteratorProtocol.next()();
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t closure #1 in WorkoutSummaryDataSource.checkForOutroInference()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a1;
  v6[21] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd);
  v6[24] = swift_task_alloc();
  v7 = type metadata accessor for InferenceResult();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v8 = type metadata accessor for WorkoutVoiceMomentCoordinator.State();
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = type metadata accessor for MainActor();
  v6[32] = static MainActor.shared.getter();
  v6[33] = swift_getObjectType();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in WorkoutSummaryDataSource.checkForOutroInference(), v10, v9);
}

uint64_t closure #1 in WorkoutSummaryDataSource.checkForOutroInference()()
{
  dispatch thunk of WorkoutBuddyMomentCoordinating.state.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 272) = v2;
  *(v0 + 280) = v1;

  return MEMORY[0x2822009F8](closure #1 in WorkoutSummaryDataSource.checkForOutroInference(), v2, v1);
}

{
  if ((*(*(v0 + 232) + 88))(*(v0 + 240), *(v0 + 224)) == *MEMORY[0x277D7DC08])
  {
    type metadata accessor for WorkoutVoiceMomentCoordinator();
    v1 = swift_dynamicCastClass();
    *(v0 + 288) = v1;
    if (v1)
    {
      lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, MEMORY[0x277D7DC10]);
      swift_unknownObjectRetain();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](closure #1 in WorkoutSummaryDataSource.checkForOutroInference(), v3, v2);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      swift_beginAccess();
      v12 = *(v10 + 40);
      v11 = *(v10 + 48);
      if (v11)
      {
        outlined copy of WorkoutVoiceOutroState(*(v10 + 40), *(v10 + 48));
        outlined consume of WorkoutVoiceOutroState(v12, v11);
        outlined consume of WorkoutVoiceOutroState(0, 0);
        v13 = *(v10 + 40);
        v14 = *(v10 + 48);
        *(v10 + 40) = 0;
        *(v10 + 48) = 0;
        outlined consume of WorkoutVoiceOutroState(v13, v14);
        WorkoutSummaryDataSource.notifyObserversDidUpdateOutroState()();
      }

      else
      {
        outlined consume of WorkoutVoiceOutroState(*(v10 + 40), 0);
        outlined consume of WorkoutVoiceOutroState(0, 0);
      }

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {

    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v5 = v4 == 0;
    if (v4)
    {
      v6 = v4;
      swift_beginAccess();
      v8 = *(v6 + 40);
      v7 = *(v6 + 48);
      if (v7 == 1)
      {
        outlined consume of WorkoutVoiceOutroState(*(v6 + 40), 1uLL);
        outlined consume of WorkoutVoiceOutroState(0, 1uLL);
      }

      else
      {
        outlined copy of WorkoutVoiceOutroState(*(v6 + 40), *(v6 + 48));
        outlined consume of WorkoutVoiceOutroState(v8, v7);
        outlined consume of WorkoutVoiceOutroState(0, 1uLL);
        v15 = *(v6 + 40);
        v16 = *(v6 + 48);
        *(v6 + 40) = xmmword_20CB7C920;
        outlined consume of WorkoutVoiceOutroState(v15, v16);
        WorkoutSummaryDataSource.notifyObserversDidUpdateOutroState()();
      }
    }

    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  }

  **(v0 + 160) = v5;

  v17 = *(v0 + 8);

  return v17();
}

{
  dispatch thunk of WorkoutVoiceMomentCoordinator.outroInferenceResult.getter();
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return MEMORY[0x2822009F8](closure #1 in WorkoutSummaryDataSource.checkForOutroInference(), v1, v2);
}

{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 192);
    swift_unknownObjectRelease();
    outlined destroy of InferenceResult?(v4);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      swift_beginAccess();
      v8 = *(v6 + 40);
      v7 = *(v6 + 48);
      if (v7)
      {
        outlined copy of WorkoutVoiceOutroState(*(v6 + 40), *(v6 + 48));
        outlined consume of WorkoutVoiceOutroState(v8, v7);
        outlined consume of WorkoutVoiceOutroState(0, 0);
        v9 = *(v6 + 40);
        v10 = *(v6 + 48);
        *(v6 + 40) = 0;
        *(v6 + 48) = 0;
        outlined consume of WorkoutVoiceOutroState(v9, v10);
        WorkoutSummaryDataSource.notifyObserversDidUpdateOutroState()();
      }

      else
      {
        outlined consume of WorkoutVoiceOutroState(*(v6 + 40), 0);
        outlined consume of WorkoutVoiceOutroState(0, 0);
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    goto LABEL_21;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  v12 = v11 == 0;
  if (v11)
  {
    v13 = v11;
    v14 = InferenceResult.text.getter();
    v16 = v15;
    swift_beginAccess();
    v17 = *(v13 + 40);
    v18 = *(v13 + 48);
    if (v18 >= 2)
    {
      if (v17 == v14 && v18 == v16)
      {

        outlined copy of WorkoutVoiceOutroState(v14, v16);
        outlined consume of WorkoutVoiceOutroState(v14, v16);
        outlined consume of WorkoutVoiceOutroState(v14, v16);
        goto LABEL_19;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined copy of WorkoutVoiceOutroState(v17, v18);
      outlined consume of WorkoutVoiceOutroState(v17, v18);
      outlined consume of WorkoutVoiceOutroState(v14, v16);
      if (v22)
      {
        goto LABEL_19;
      }
    }

    else
    {

      outlined consume of WorkoutVoiceOutroState(v17, v18);
      outlined consume of WorkoutVoiceOutroState(v14, v16);
      outlined consume of WorkoutVoiceOutroState(v17, v18);
    }

    v19 = *(v13 + 40);
    v20 = *(v13 + 48);
    *(v13 + 40) = v14;
    *(v13 + 48) = v16;

    outlined consume of WorkoutVoiceOutroState(v19, v20);
    WorkoutSummaryDataSource.notifyObserversDidUpdateOutroState()();
LABEL_19:
  }

  v24 = *(v0 + 208);
  v23 = *(v0 + 216);
  v25 = *(v0 + 200);
  swift_unknownObjectRelease();
  (*(v24 + 8))(v23, v25);
LABEL_21:
  **(v0 + 160) = v12;

  v26 = *(v0 + 8);

  return v26();
}

uint64_t WorkoutSummaryDataSource.deinit()
{
  if (*(v0 + 72))
  {

    AnyCancellable.cancel()();
  }

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 24));
  outlined consume of WorkoutVoiceOutroState(*(v0 + 40), *(v0 + 48));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t WorkoutSummaryDataSource.__deallocating_deinit()
{
  if (*(v0 + 72))
  {

    AnyCancellable.cancel()();
  }

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 24));
  outlined consume of WorkoutVoiceOutroState(*(v0 + 40), *(v0 + 48));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in WorkoutSummaryDataSource.beginObservingWorkoutVoiceOutroTranscript(with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in WorkoutSummaryDataSource.beginObservingWorkoutVoiceOutroTranscript(with:);

  return closure #1 in WorkoutSummaryDataSource.beginObservingWorkoutVoiceOutroTranscript(with:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in WorkoutSummaryDataSource.beginObservingWorkoutVoiceOutroTranscript(with:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Published<WorkoutVoiceMomentCoordinator.State>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<WorkoutVoiceMomentCoordinator.State>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<WorkoutVoiceMomentCoordinator.State>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D22VoiceMomentCoordinatorC5StateO_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<WorkoutVoiceMomentCoordinator.State>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t partial apply for closure #1 in WorkoutSummaryDataSource.checkForOutroInference()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in WorkoutSummaryDataSource.checkForOutroInference();

  return closure #1 in WorkoutSummaryDataSource.checkForOutroInference()(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined destroy of InferenceResult?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_21Tm_0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t closure #1 in WorkoutSummaryDataSource.checkForOutroInference()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in WorkoutSummaryDataSource.checkForOutroInference()partial apply;

  return closure #1 in WorkoutSummaryDataSource.checkForOutroInference()(a1, v4, v5, v6, v7, v8);
}

uint64_t static PickerFormatters.formattedNumber(_:)(uint64_t a1)
{
  if (one-time initialization token for pickerFormatter != -1)
  {
    swift_once();
  }

  v2 = static PickerFormatters.pickerFormatter;
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v4 = [v2 stringFromNumber_];

  if (!v4)
  {
    return 12336;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t static PickerFormatters.pickerView(selection:range:)()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd);
  lazy protocol witness table accessor for type ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
  return Picker.init(selection:label:content:)();
}

void one-time initialization function for labelFontSize()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB7CAA0[v2];
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 mainScreen];
  [v8 nativeScale];
  v10 = v9;

  if (v7 != v10)
  {
    v11 = [v4 mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v4 mainScreen];
    [v14 nativeScale];
    v16 = v15;

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static PickerFormatters.labelFontSize = *&v3;
}

void one-time initialization function for singlePickerHeight()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB7CAF8[v2];
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 mainScreen];
  [v8 nativeScale];
  v10 = v9;

  if (v7 != v10)
  {
    v11 = [v4 mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v4 mainScreen];
    [v14 nativeScale];
    v16 = v15;

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static PickerFormatters.singlePickerHeight = *&v3;
}

void one-time initialization function for distancePickerHeight()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB7CB50[v2];
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 mainScreen];
  [v8 nativeScale];
  v10 = v9;

  if (v7 != v10)
  {
    v11 = [v4 mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v4 mainScreen];
    [v14 nativeScale];
    v16 = v15;

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static PickerFormatters.distancePickerHeight = *&v3;
}

void one-time initialization function for maxLabeledPickerHeight()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB7CBA8[v2];
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 mainScreen];
  [v8 nativeScale];
  v10 = v9;

  if (v7 != v10)
  {
    v11 = [v4 mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v4 mainScreen];
    [v14 nativeScale];
    v16 = v15;

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static PickerFormatters.maxLabeledPickerHeight = *&v3;
}

void one-time initialization function for minLabeledPickerHeight()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB7CC00[v2];
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 mainScreen];
  [v8 nativeScale];
  v10 = v9;

  if (v7 != v10)
  {
    v11 = [v4 mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v4 mainScreen];
    [v14 nativeScale];
    v16 = v15;

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static PickerFormatters.minLabeledPickerHeight = *&v3;
}

void one-time initialization function for lineHeight()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = specialized UIDevice.screenType.getter();

  v3 = dbl_20CB7CC58[v2];
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = [v4 mainScreen];
  [v8 nativeScale];
  v10 = v9;

  if (v7 != v10)
  {
    v11 = [v4 mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v4 mainScreen];
    [v14 nativeScale];
    v16 = v15;

    v3 = v3 * (v13 / v16 * 0.95);
  }

  static PickerFormatters.lineHeight = *&v3;
}

double one-time initialization function for shortenedLineHeight()
{
  if (one-time initialization token for lineHeight != -1)
  {
    swift_once();
  }

  result = *&static PickerFormatters.lineHeight * 0.8;
  *&static PickerFormatters.shortenedLineHeight = *&static PickerFormatters.lineHeight * 0.8;
  return result;
}

double static PickerFormatters.labelFontSize.getter(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

id one-time initialization function for pickerFormatter(uint64_t a1, SEL *a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  result = [v7 *a2];
  *a4 = v7;
  return result;
}

id static PickerFormatters.pickerFormatter.getter(void *a1, void **a2)
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

uint64_t closure #1 in static PickerFormatters.pickerView(selection:range:)()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_Md);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in static PickerFormatters.pickerView(selection:range:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t specialized static PickerFormatters.formattedSwimmingNumber(_:formattingManager:)(double a1)
{
  v3 = 0xD000000000000024;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v1 = trunc(a1), v4 = a1 - v1, a1 - v1 == 0.0))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = WorkoutUIBundle.super.isa;
    v6._countAndFlagsBits = 0xD000000000000020;
    v27._object = 0xE000000000000000;
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
    v6._object = 0x800000020CB9D6D0;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v27)._countAndFlagsBits;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_20CB5DA70;
    if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (a1 > -9.22337204e18)
    {
      if (a1 < 9.22337204e18)
      {
        v11 = v10;
LABEL_9:
        v12 = dispatch thunk of CustomStringConvertible.description.getter();
        v14 = v13;
        v11[7] = MEMORY[0x277D837D0];
        v11[8] = lazy protocol witness table accessor for type String and conformance String();
        v11[4] = v12;
        v11[5] = v14;
        v15 = String.init(format:_:)();

        return v15;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_12;
  }

  v17 = 0.01;
  if (fabs(v4 + -0.33) >= 0.01)
  {
    goto LABEL_15;
  }

  countAndFlagsBits = "P_DISTANCE_TWO_THIRD";
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    goto LABEL_23;
  }

LABEL_12:
  swift_beginAccess();
  v18 = WorkoutUIBundle.super.isa;
  v28._object = 0xE000000000000000;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v20._object = (countAndFlagsBits | 0x8000000000000000);
  v20._countAndFlagsBits = 0xD000000000000024;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, v18, v21, v28)._countAndFlagsBits;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20CB5DA70;
  if (v1 <= -9.22337204e18)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_17;
  }

  v4 = 9.22337204e18;
  if (v1 < 9.22337204e18)
  {
LABEL_19:
    v11 = v22;
    goto LABEL_9;
  }

  __break(1u);
LABEL_15:
  if (fabs(v4 + -0.66) >= v17)
  {
    goto LABEL_28;
  }

  v3 = "ith incompatible number ";
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    goto LABEL_25;
  }

LABEL_17:
  swift_beginAccess();
  v23 = WorkoutUIBundle.super.isa;
  v29._object = 0xE000000000000000;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v25._object = (v3 | 0x8000000000000000);
  v25._countAndFlagsBits = 0xD000000000000024;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v24, v23, v26, v29)._countAndFlagsBits;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20CB5DA70;
  if (v1 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v1 < 9.22337204e18)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_28:
  _StringGuts.grow(_:)(58);
  MEMORY[0x20F30BC00](v3 + 20, 0x800000020CB9D730);
  Double.write<A>(to:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>;
  if (!lazy protocol witness table cache variable for type Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySnySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Picker<EmptyView, Int, ForEach<Range<Int>, Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>);
  }

  return result;
}

uint64_t static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for UUID();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:), 0, 0);
}

uint64_t static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:)()
{
  v33 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[2];
  }

  else
  {
    v3 = v0[3];
    static WOLog.trainingLoad.getter();
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    if (v7)
    {
      v31 = v0[11];
      v12 = v0[7];
      v11 = v0[8];
      v13 = v0[6];
      v14 = v0[3];
      v15 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v15 = 136446210;
      v16 = [v14 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v10;
      v19 = v18;
      (*(v12 + 8))(v11, v13);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v32);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_20C66F000, v5, v6, "Storing sentinel for skip for workout %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_2(v30);
      MEMORY[0x20F30E080](v30, -1, -1);
      MEMORY[0x20F30E080](v15, -1, -1);

      (*(v9 + 8))(v31, v29);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }

    v1 = v0[2];
    v21 = [objc_opt_self() appleEffortScoreUnit];
    v22 = [objc_opt_self() quantityWithUnit:v21 doubleValue:0.0];

    v2 = v22;
  }

  v0[12] = v2;
  v23 = v1;
  v24 = swift_task_alloc();
  v0[13] = v24;
  *v24 = v0;
  v24[1] = static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:);
  v25 = v0[4];
  v26 = v0[5];
  v27 = v0[3];

  return specialized static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:)(v2, v27, v25, v26);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:)(char a1)
{
  v2 = *(*v1 + 96);
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](static EffortUtilities.save(quantity:workout:workoutActivity:healthStore:), 0, 0);
}

WorkoutUI::EffortUtilities::WorkoutAndActivityKey __swiftcall EffortUtilities.WorkoutAndActivityKey.init(workout:activity:)(HKWorkout workout, HKWorkoutActivity_optional activity)
{
  v2->super.super.super.isa = workout.super.super.super.isa;
  v2[1].super.super.super.isa = activity.value.super.isa;
  result.activity = activity;
  result.workout = workout;
  return result;
}

id static EffortUtilities.prioritizedEffortFromStoredValues(pending:hk:cm:uuid:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v82 = a3;
  v83 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v81 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v81 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v81 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v84 = v18;
  v85 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v81 - v24;
  MEMORY[0x28223BE20](v26);
  v30 = &v81 - v29;
  if (v27)
  {
    v83 = v27;
    v31 = v27;
    static WOLog.trainingLoad.getter();
    (*(v6 + 16))(v17, a4, v5);
    v32 = v31;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    v35 = v6;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v86 = v37;
      *v36 = 134218242;
      [v32 _value];
      *(v36 + 4) = v38;
      *(v36 + 12) = 2080;
      v39 = UUID.uuidString.getter();
      v41 = v40;
      (*(v35 + 8))(v17, v5);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v86);

      *(v36 + 14) = v42;
      _os_log_impl(&dword_20C66F000, v33, v34, "[Workout Summary] Using pending effort %f for %s", v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm_2(v37);
      MEMORY[0x20F30E080](v37, -1, -1);
      MEMORY[0x20F30E080](v36, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v17, v5);
    }

    (*(v85 + 8))(v30, v84);
    return v83;
  }

  if (v83)
  {
    v43 = v83;
    static WOLog.trainingLoad.getter();
    v44 = v6;
    v45 = v5;
    (*(v6 + 16))(v14, a4, v5);
    v46 = v43;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v86 = v50;
      *v49 = 134218242;
      [v46 _value];
      *(v49 + 4) = v51;
      *(v49 + 12) = 2080;
      v52 = UUID.uuidString.getter();
      v54 = v53;
      (*(v44 + 8))(v14, v45);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v86);

      *(v49 + 14) = v55;
      _os_log_impl(&dword_20C66F000, v47, v48, "[Workout Summary] Using HK effort quantity %f for %s", v49, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm_2(v50);
      MEMORY[0x20F30E080](v50, -1, -1);
      MEMORY[0x20F30E080](v49, -1, -1);
    }

    else
    {

      (*(v44 + 8))(v14, v5);
    }

    (*(v85 + 8))(v25, v84);
    return v83;
  }

  if (v82)
  {
    v56 = v82;
    v57 = v28;
    v58 = v82;
    static WOLog.trainingLoad.getter();
    v59 = v5;
    (*(v6 + 16))(v11, a4, v5);
    v60 = v58;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v86 = v64;
      *v63 = 134218242;
      [v60 _value];
      *(v63 + 4) = v65;
      *(v63 + 12) = 2080;
      v66 = UUID.uuidString.getter();
      v68 = v67;
      (*(v6 + 8))(v11, v59);
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, &v86);

      *(v63 + 14) = v69;
      _os_log_impl(&dword_20C66F000, v61, v62, "[Workout Summary] Using CM estimate effort quantity %f for %s", v63, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm_2(v64);
      MEMORY[0x20F30E080](v64, -1, -1);
      MEMORY[0x20F30E080](v63, -1, -1);

      (*(v85 + 8))(v57, v84);
      return v82;
    }

    else
    {

      (*(v6 + 8))(v11, v5);
      (*(v85 + 8))(v57, v84);
      return v56;
    }
  }

  else
  {
    static WOLog.trainingLoad.getter();
    v71 = v6;
    v72 = v5;
    (*(v6 + 16))(v8, a4, v5);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v86 = v76;
      *v75 = 136315138;
      v77 = UUID.uuidString.getter();
      v79 = v78;
      (*(v71 + 8))(v8, v72);
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, &v86);

      *(v75 + 4) = v80;
      _os_log_impl(&dword_20C66F000, v73, v74, "[Workout Summary] No effort quantity for %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_2(v76);
      MEMORY[0x20F30E080](v76, -1, -1);
      MEMORY[0x20F30E080](v75, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v72);
    }

    (*(v85 + 8))(v21, v84);
    return 0;
  }
}

uint64_t static EffortUtilities.fetchEfforts(forWorkouts:healthStore:)(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for Logger();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v5 = type metadata accessor for HKWorkoutEffortRelationshipQueryDescriptor.Result();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  Descriptor = type metadata accessor for HKWorkoutEffortRelationshipQueryDescriptor();
  v2[24] = Descriptor;
  v2[25] = *(Descriptor - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](static EffortUtilities.fetchEfforts(forWorkouts:healthStore:), 0, 0);
}

uint64_t static EffortUtilities.fetchEfforts(forWorkouts:healthStore:)()
{
  v1 = v0[6];
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_15:
      _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v3);

      v17 = objc_opt_self();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      isa = Set._bridgeToObjectiveC()().super.isa;

      v19 = [v17 predicateForObjectsWithUUIDs_];
      v0[27] = v19;

      v20 = v19;
      HKWorkoutEffortRelationshipQueryDescriptor.init(predicate:anchor:option:)();
      v21 = swift_task_alloc();
      v0[28] = v21;
      *v21 = v0;
      v21[1] = static EffortUtilities.fetchEfforts(forWorkouts:healthStore:);
      v4 = v0[23];
      v5 = v0[7];

      return MEMORY[0x282120520](v4, v5);
    }

    v25 = MEMORY[0x277D84F90];
    v4 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v6 = 0;
    v7 = v0[18];
    v8 = v1 & 0xC000000000000001;
    v3 = v25;
    v23 = v0[6] + 32;
    v24 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8)
      {
        v10 = MEMORY[0x20F30C990](v6, v0[6]);
      }

      else
      {
        if (v6 >= *(v24 + 16))
        {
          goto LABEL_19;
        }

        v10 = *(v23 + 8 * v6);
      }

      v11 = v10;
      v4 = [v10 fiui_finalWorkoutUUID];
      if (!v4)
      {
        goto LABEL_22;
      }

      v12 = v4;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = *(v25 + 16);
      v13 = *(v25 + 24);
      v1 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1);
      }

      v15 = v0[20];
      v16 = v0[17];
      *(v25 + 16) = v1;
      (*(v7 + 32))(v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v15, v16);
      ++v6;
      if (v9 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return MEMORY[0x282120520](v4, v5);
}

{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = static EffortUtilities.fetchEfforts(forWorkouts:healthStore:);
  }

  else
  {
    v2 = static EffortUtilities.fetchEfforts(forWorkouts:healthStore:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v25 = v0;
  v1 = v0[29];
  static WOLog.trainingLoad.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = Error.errorDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v24);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20C66F000, v3, v4, "Unable to fetch effort samples for multisport workout %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_2(v9);
    MEMORY[0x20F30E080](v9, -1, -1);
    MEMORY[0x20F30E080](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[29];
  v18 = v0[26];
  v17 = v0[27];
  v19 = v0[24];
  v20 = v0[25];
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9WorkoutUI15EffortUtilitiesC0C14AndActivityKeyV_AC0E16SampleCollectionCSgTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  (*(v20 + 8))(v18, v19);

  v21 = v0[1];

  return v21(v23);
}

void static EffortUtilities.fetchEfforts(forWorkouts:healthStore:)()
{
  v130 = v0;
  v1 = v0[6];
  v118 = HKWorkoutEffortRelationshipQueryDescriptor.Result.relationships.getter();
  if (!(v1 >> 62))
  {
    v2 = *((v0[6] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v115 = v0;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_65:
    v7 = MEMORY[0x277D84F98];
LABEL_66:

    static WOLog.trainingLoad.getter();
    v78 = Logger.logObject.getter();
    v79 = v0;
    v80 = static os_log_type_t.default.getter();
    v81 = os_log_type_enabled(v78, v80);
    v83 = v0[26];
    v82 = v0[27];
    v84 = v0[25];
    v86 = v79[23];
    v85 = v79[24];
    v87 = v79[22];
    v125 = v82;
    v128 = v79[21];
    v121 = v79[11];
    v123 = v7;
    v90 = v79 + 8;
    v88 = v79[8];
    v89 = v90[1];
    if (v81)
    {
      v117 = v88;
      v91 = swift_slowAlloc();
      v119 = v83;
      v92 = swift_slowAlloc();
      v129 = v92;
      *v91 = 136446210;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI22EffortSampleCollectionCSgMd);
      v114 = v86;
      lazy protocol witness table accessor for type EffortUtilities.WorkoutAndActivityKey and conformance EffortUtilities.WorkoutAndActivityKey();
      v93 = Dictionary.description.getter();
      v113 = v85;
      v95 = v94;

      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, &v129);

      *(v91 + 4) = v96;
      _os_log_impl(&dword_20C66F000, v78, v80, "Successfully Fetched Efforts for workouts %{public}s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_2(v92);
      MEMORY[0x20F30E080](v92, -1, -1);
      MEMORY[0x20F30E080](v91, -1, -1);

      (*(v89 + 8))(v121, v117);
      (*(v87 + 8))(v114, v128);
      (*(v84 + 8))(v119, v113);
    }

    else
    {

      (*(v89 + 8))(v121, v88);
      (*(v87 + 8))(v86, v128);
      (*(v84 + 8))(v83, v85);
    }

    v97 = v115[1];

    v97(v123);
    return;
  }

  v2 = __CocoaSet.count.getter();
  v115 = v0;
  if (!v2)
  {
    goto LABEL_65;
  }

LABEL_3:
  v3 = 0;
  v4 = v0[6];
  v101 = v4 & 0xC000000000000001;
  v98 = v4 + 32;
  v99 = v4 & 0xFFFFFFFFFFFFFF8;
  v5 = v0[18];
  v110 = v0[12];
  v6 = (v5 + 56);
  v109 = (v5 + 48);
  v104 = (v5 + 32);
  v7 = MEMORY[0x277D84F98];
  v108 = (v5 + 8);
  v100 = v2;
  v116 = (v5 + 56);
  while (1)
  {
    v122 = v7;
    if (v101)
    {
      v8 = MEMORY[0x20F30C990](v3, v0[6]);
    }

    else
    {
      if (v3 >= *(v99 + 16))
      {
        goto LABEL_82;
      }

      v8 = *(v98 + 8 * v3);
    }

    v9 = v8;
    v10 = __OFADD__(v3++, 1);
    if (v10)
    {
      goto LABEL_81;
    }

    v120 = v8;
    if ([v8 workoutActivityType] != 82)
    {
      break;
    }

    v11 = [v9 workoutActivities];
    type metadata accessor for HKWorkoutActivity(0, &lazy cache variable for type metadata for HKWorkoutActivity);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v124 = v12;
    if (!(v12 >> 62))
    {
      v111 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v111)
      {
        goto LABEL_14;
      }

      goto LABEL_60;
    }

    v111 = __CocoaSet.count.getter();
    if (v111)
    {
LABEL_14:
      v102 = v3;
      v13 = 0;
      v14 = v12;
      v126 = v12 & 0xC000000000000001;
      v106 = v12 & 0xFFFFFFFFFFFFFF8;
      v15 = v111;
      while (1)
      {
        if (v126)
        {
          v16 = MEMORY[0x20F30C990](v13, v14);
        }

        else
        {
          if (v13 >= *(v106 + 16))
          {
            goto LABEL_79;
          }

          v16 = *(v14 + 8 * v13 + 32);
        }

        v17 = v16;
        v18 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_77;
        }

        v19 = [v16 workoutConfiguration];
        v20 = [v19 activityType];

        if (v20 != 83)
        {
          break;
        }

LABEL_16:
        ++v13;
        if (v18 == v15)
        {

          v7 = v122;
          v2 = v100;
          v3 = v102;
          goto LABEL_5;
        }
      }

      v21 = v17;
      v22 = v9;
      v23 = specialized static EffortUtilities.sampleCollectionForRelationships(_:activity:)(v118, v17);

      v24 = v122;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v122;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v17);
      v28 = v122[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        goto LABEL_78;
      }

      v31 = v26;
      if (v122[3] >= v30)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v26 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v24 = v129;
          v122 = v129;
          if ((v31 & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, isUniquelyReferenced_nonNull_native);
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v17);
        if ((v31 & 1) != (v33 & 1))
        {

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        v27 = v32;
        v24 = v129;
        v122 = v129;
        if ((v31 & 1) == 0)
        {
LABEL_32:
          *(v24 + 8 * (v27 >> 6) + 64) |= 1 << v27;
          v36 = (v122[6] + 16 * v27);
          *v36 = v22;
          v36[1] = v17;
          *(v122[7] + 8 * v27) = v23;

          v37 = v122[2];
          v10 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v10)
          {
            goto LABEL_80;
          }

          v122[2] = v38;
          goto LABEL_34;
        }
      }

      v34 = *(v24 + 56);
      v35 = *(v34 + 8 * v27);
      *(v34 + 8 * v27) = v23;

LABEL_34:
      v0 = v115;
      v6 = v116;
      v9 = v120;
      v14 = v124;
      v15 = v111;
      goto LABEL_16;
    }

LABEL_60:

    v7 = v122;
LABEL_5:
    if (v3 == v2)
    {
      goto LABEL_66;
    }
  }

  v129 = MEMORY[0x277D84F90];
  if (!(v118 >> 62))
  {
    v39 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_37;
    }

    goto LABEL_62;
  }

  v39 = __CocoaSet.count.getter();
  if (!v39)
  {
LABEL_62:
    v74 = MEMORY[0x277D84F90];
LABEL_63:
    v75 = v9;
    v76 = specialized static EffortUtilities.sampleCollectionForRelationships(_:activity:)(v74, 0);

    v77 = swift_isUniquelyReferenced_nonNull_native();
    v129 = v122;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v76, v75, 0, v77);

    v7 = v122;
    goto LABEL_5;
  }

LABEL_37:
  v103 = v3;
  v40 = 0;
  v112 = v39;
  while (1)
  {
    if ((v118 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x20F30C990](v40, v118);
    }

    else
    {
      if (v40 >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_76;
      }

      v47 = *(v118 + 8 * v40 + 32);
    }

    v48 = v47;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    v49 = [v47 workout];
    v50 = [v49 fiui_finalWorkoutUUID];

    v127 = v48;
    if (v50)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v52 = *v6;
    v53 = 1;
    (*v6)(v0[16], v51, 1, v0[17]);
    v54 = [v9 fiui_finalWorkoutUUID];
    if (v54)
    {
      v55 = v54;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = 0;
    }

    v57 = v0[16];
    v56 = v0[17];
    v58 = v0[15];
    v59 = v0[13];
    v52(v58, v53, 1, v56);
    v60 = *(v110 + 48);
    _s10Foundation4UUIDVSgWOcTm_1(v57, v59, &_s10Foundation4UUIDVSgMd);
    _s10Foundation4UUIDVSgWOcTm_1(v58, v59 + v60, &_s10Foundation4UUIDVSgMd);
    v61 = *v109;
    v62 = (*v109)(v59, 1, v56);
    v63 = v0[17];
    if (v62 == 1)
    {
      v64 = v0[16];
      _s10Foundation4UUIDVSgWOhTm_0(v0[15], &_s10Foundation4UUIDVSgMd);
      _s10Foundation4UUIDVSgWOhTm_0(v64, &_s10Foundation4UUIDVSgMd);
      v65 = v61(v59 + v60, 1, v63);
      v44 = v40 + 1;
      if (v65 == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v0[13], &_s10Foundation4UUIDVSgMd);
        v9 = v120;
        v45 = v112;
LABEL_56:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    _s10Foundation4UUIDVSgWOcTm_1(v0[13], v0[14], &_s10Foundation4UUIDVSgMd);
    if (v61(v59 + v60, 1, v63) == 1)
    {
      v41 = v0[16];
      v42 = v0[17];
      v43 = v0[14];
      _s10Foundation4UUIDVSgWOhTm_0(v0[15], &_s10Foundation4UUIDVSgMd);
      _s10Foundation4UUIDVSgWOhTm_0(v41, &_s10Foundation4UUIDVSgMd);
      (*v108)(v43, v42);
      v44 = v40 + 1;
LABEL_39:
      _s10Foundation4UUIDVSgWOhTm_0(v0[13], &_s10Foundation4UUIDVSg_ADtMd);
      v9 = v120;
      v45 = v112;
      v46 = v127;
      goto LABEL_40;
    }

    v66 = v0[19];
    v67 = v0[16];
    v68 = v0[17];
    v69 = v0[15];
    v70 = v115[14];
    v105 = v67;
    v107 = v115[13];
    (*v104)(v66, v59 + v60, v68);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v71 = dispatch thunk of static Equatable.== infix(_:_:)();
    v72 = *v108;
    (*v108)(v66, v68);
    _s10Foundation4UUIDVSgWOhTm_0(v69, &_s10Foundation4UUIDVSgMd);
    _s10Foundation4UUIDVSgWOhTm_0(v105, &_s10Foundation4UUIDVSgMd);
    v73 = v70;
    v0 = v115;
    v72(v73, v68);
    _s10Foundation4UUIDVSgWOhTm_0(v107, &_s10Foundation4UUIDVSgMd);
    v9 = v120;
    v45 = v112;
    v44 = v40 + 1;
    v46 = v127;
    if (v71)
    {
      goto LABEL_56;
    }

LABEL_40:

LABEL_41:
    ++v40;
    v6 = v116;
    if (v44 == v45)
    {
      v74 = v129;
      v2 = v100;
      v3 = v103;
      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t one-time initialization function for didUpdateDemoOverrideEffortValues()
{
  result = MEMORY[0x20F30BAD0](0xD000000000000021, 0x800000020CB9D8C0);
  static EffortUtilities.didUpdateDemoOverrideEffortValues = result;
  return result;
}

id static EffortUtilities.didUpdateDemoOverrideEffortValues.getter()
{
  if (one-time initialization token for didUpdateDemoOverrideEffortValues != -1)
  {
    swift_once();
  }

  v1 = static EffortUtilities.didUpdateDemoOverrideEffortValues;

  return v1;
}

void *one-time initialization function for demoOverrideEffortValues()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So10HKQuantityCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static EffortUtilities.demoOverrideEffortValues = result;
  return result;
}

uint64_t closure #1 in static EffortUtilities.storePerceivedEffort(quantity:workout:workoutActivity:healthStore:completion:)(char a1, void *a2, void *a3, void *a4, void *a5, uint64_t (*a6)(uint64_t, void *), uint64_t a7)
{
  v81 = a7;
  v85 = a6;
  v86 = a5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v80);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v76 - v14;
  v16 = type metadata accessor for UUID();
  v82 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v83 = *(v19 - 8);
  v84 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v76 - v23;
  if (a1)
  {
    static WOLog.trainingLoad.getter();
    v25 = v86;
    v26 = a3;
    v27 = a4;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      LODWORD(v79) = v29;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v87 = v78;
      *v30 = 138412802;
      *(v30 + 4) = v26;
      v77 = v31;
      *v31 = v26;
      *(v30 + 12) = 2082;
      v32 = v26;
      v33 = [v27 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v82 + 8))(v18, v16);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v87);

      *(v30 + 14) = v37;
      *(v30 + 22) = 2082;
      if (v86)
      {
        v38 = [v25 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v39 = 0;
      }

      else
      {
        v39 = 1;
      }

      (*(v82 + 56))(v15, v39, 1, v16);
      v56 = Optional.description.getter();
      v58 = v57;
      _s10Foundation4UUIDVSgWOhTm_0(v15, &_s10Foundation4UUIDVSgMd);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v87);

      *(v30 + 24) = v59;
      _os_log_impl(&dword_20C66F000, v28, v79, "Successfully stored perceived effort %@ to workout %{public}s with activity %{public}s", v30, 0x20u);
      v60 = v77;
      _s10Foundation4UUIDVSgWOhTm_0(v77, &_sSo8NSObjectCSgMd);
      MEMORY[0x20F30E080](v60, -1, -1);
      v61 = v78;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v61, -1, -1);
      MEMORY[0x20F30E080](v30, -1, -1);
    }

    result = (*(v83 + 8))(v24, v84);
    v63 = v85;
    if (v85)
    {
      v64 = 1;
      v65 = 0;
      return v63(v64, v65);
    }
  }

  else
  {
    static WOLog.trainingLoad.getter();
    v40 = a3;
    v41 = a4;
    v42 = v86;
    v43 = a2;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      LODWORD(v78) = v45;
      v79 = v44;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v87 = v77;
      *v46 = 138413058;
      *(v46 + 4) = v40;
      v76 = v47;
      *v47 = v40;
      *(v46 + 12) = 2082;
      v48 = v40;
      v49 = [v41 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v82 + 8))(v18, v16);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v87);

      *(v46 + 14) = v53;
      *(v46 + 22) = 2082;
      if (v86)
      {
        v54 = [v42 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v55 = 0;
      }

      else
      {
        v55 = 1;
      }

      (*(v82 + 56))(v12, v55, 1, v16);
      v66 = Optional.description.getter();
      v68 = v67;
      _s10Foundation4UUIDVSgWOhTm_0(v12, &_s10Foundation4UUIDVSgMd);
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, &v87);

      *(v46 + 24) = v69;
      *(v46 + 32) = 2112;
      if (a2)
      {
        v70 = a2;
        v71 = _swift_stdlib_bridgeErrorToNSError();
        v72 = v71;
      }

      else
      {
        v71 = 0;
        v72 = 0;
      }

      v73 = v79;
      *(v46 + 34) = v71;
      v74 = v76;
      v76[1] = v72;
      _os_log_impl(&dword_20C66F000, v73, v78, "Failed to store perceived effort %@ to workout %{public}s with activity %{public}s with error %@", v46, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v74, -1, -1);
      v75 = v77;
      swift_arrayDestroy();
      MEMORY[0x20F30E080](v75, -1, -1);
      MEMORY[0x20F30E080](v46, -1, -1);
    }

    else
    {
    }

    result = (*(v83 + 8))(v21, v84);
    v63 = v85;
    if (v85)
    {
      v64 = 0;
      v65 = a2;
      return v63(v64, v65);
    }
  }

  return result;
}

void static EffortUtilities.fetchExertion(forWorkout:healthStore:completion:)(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = specialized static EffortUtilities.fetchDemoExertion(forWorkout:)(a1);
  if (v13)
  {
    v29 = v13;
    a3();
    v14 = v29;
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;

    if ([a1 workoutActivityType] == 82)
    {
      (a3)(0);
    }

    else
    {
      v16 = v4;
      v17 = [a1 fiui_finalWorkoutUUID];
      if (v17)
      {
        v18 = v17;
        v19 = objc_opt_self();
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v10 + 8))(v12, v9);
        v21 = [v19 predicateForObjectWithUUID_];

        v22 = swift_allocObject();
        v22[2] = a2;
        v22[3] = partial apply for closure #1 in static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:completion:);
        v22[4] = v15;
        v22[5] = a1;
        v22[6] = v16;
        v22[7] = 0;
        v23 = objc_allocWithZone(MEMORY[0x277CCDC60]);
        aBlock[4] = partial apply for closure #1 in static EffortUtilities.fetchExertionCollection(forWorkout:activity:healthStore:completion:);
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutEffortRelationshipQuery, @guaranteed [HKWorkoutEffortRelationship]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_23;
        v24 = _Block_copy(aBlock);
        v25 = a2;

        v26 = a1;
        v27 = [v23 initWithPredicate:v21 anchor:0 options:0 resultsHandler:v24];
        _Block_release(v24);

        [v25 executeQuery_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:completion:)(void *a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = specialized static EffortUtilities.fetchDemoExertion(forWorkout:)(a1);
  if (v15)
  {
    v32 = v15;
    a4();
    v16 = v32;
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if ([a1 workoutActivityType] == 82 && a2 == 0)
    {
      (a4)(0);
    }

    else
    {
      v32 = v5;
      v19 = [a1 fiui_finalWorkoutUUID];
      if (v19)
      {
        v20 = v19;
        v21 = objc_opt_self();
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v12 + 8))(v14, v11);
        v23 = [v21 predicateForObjectWithUUID_];

        v24 = swift_allocObject();
        v24[2] = a3;
        v24[3] = closure #1 in static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:completion:)partial apply;
        v24[4] = v17;
        v24[5] = a1;
        v24[6] = v32;
        v24[7] = a2;
        v25 = objc_allocWithZone(MEMORY[0x277CCDC60]);
        aBlock[4] = closure #1 in static EffortUtilities.fetchExertionCollection(forWorkout:activity:healthStore:completion:)partial apply;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutEffortRelationshipQuery, @guaranteed [HKWorkoutEffortRelationship]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_16;
        v26 = _Block_copy(aBlock);
        v27 = a2;
        v28 = a3;

        v29 = a1;
        v30 = [v25 initWithPredicate:v23 anchor:0 options:0 resultsHandler:v26];
        _Block_release(v26);

        [v28 executeQuery_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void closure #1 in static EffortUtilities.fetchExertion(forWorkout:activity:healthStore:completion:)(uint64_t a1, void (*a2)(id))
{
  if (a1)
  {
    v3 = *(a1 + OBJC_IVAR___WOEffortSampleCollection_effortSample);
    if (v3)
    {
      v4 = *(a1 + OBJC_IVAR___WOEffortSampleCollection_effortSample);
LABEL_6:
      v6 = v3;
      v7 = [v4 quantity];

      goto LABEL_8;
    }

    v5 = *(a1 + OBJC_IVAR___WOEffortSampleCollection_estimatedEffortSample);
    if (v5)
    {
      v4 = v5;
      v3 = 0;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_8:
  a2(v7);
}

void static EffortUtilities.fetchExertionCollection(forWorkout:activity:healthStore:completion:)(void *a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 workoutActivityType] == 82 && a2 == 0)
  {
    a4(0);
  }

  else
  {
    v31 = a3;
    v32 = v5;
    v17 = [a1 fiui_finalWorkoutUUID];
    if (v17)
    {
      v18 = v17;
      v19 = objc_opt_self();
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v12 + 8))(v15, v11);
      v21 = [v19 predicateForObjectWithUUID_];

      v22 = swift_allocObject();
      v24 = v31;
      v23 = v32;
      v22[2] = v31;
      v22[3] = a4;
      v22[4] = a5;
      v22[5] = a1;
      v22[6] = v23;
      v22[7] = a2;
      v25 = objc_allocWithZone(MEMORY[0x277CCDC60]);
      aBlock[4] = closure #1 in static EffortUtilities.fetchExertionCollection(forWorkout:activity:healthStore:completion:)partial apply;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutEffortRelationshipQuery, @guaranteed [HKWorkoutEffortRelationship]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_23;
      v26 = _Block_copy(aBlock);
      v27 = a2;
      v28 = v24;

      v29 = a1;
      v30 = [v25 initWithPredicate:v21 anchor:0 options:0 resultsHandler:v26];
      _Block_release(v26);

      [v28 executeQuery_];
    }

    else
    {
      __break(1u);
    }
  }
}