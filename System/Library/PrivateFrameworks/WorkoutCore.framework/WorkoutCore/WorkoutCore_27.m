uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutAppInstallationState()
{
  v1 = 0x656C6C6174736E69;
  if (*v0 != 1)
  {
    v1 = 0x6174736E49746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t WorkoutAppInstallationUtility.installationState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for WorkoutAppInstallationUtility.$installationState : WorkoutAppInstallationUtility(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutAppInstallationUtility.$installationState : WorkoutAppInstallationUtility(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D20AppInstallationStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D20AppInstallationStateO_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutAppInstallationUtility.$installationState.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

id WorkoutAppInstallationUtility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

NSObject *WorkoutAppInstallationUtility.init()()
{
  v1 = *MEMORY[0x277D09580];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_allocWithZone(type metadata accessor for WorkoutAppInstallationUtility());
  v6 = specialized WorkoutAppInstallationUtility.init(dependencies:)(v2, v4, v5);
  swift_getObjectType();
  v7 = *((*MEMORY[0x277D85000] & *v0) + 0x30);
  v8 = *((*MEMORY[0x277D85000] & *v0) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

WorkoutCore::DefaultWorkoutAppDependencies __swiftcall DefaultWorkoutAppDependencies.init()()
{
  v1 = v0;
  v2 = *MEMORY[0x277D09580];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *v1 = v3;
  v1[1] = v4;
  result.workoutBundleIdentifier._object = v4;
  result.workoutBundleIdentifier._countAndFlagsBits = v3;
  return result;
}

NSObject *WorkoutAppInstallationUtility.__allocating_init(dependencies:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized WorkoutAppInstallationUtility.__allocating_init(dependencies:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm_8(a1);
  return v6;
}

uint64_t type metadata accessor for WorkoutAppInstallationUtility()
{
  result = type metadata singleton initialization cache for WorkoutAppInstallationUtility;
  if (!type metadata singleton initialization cache for WorkoutAppInstallationUtility)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

NSObject *WorkoutAppInstallationUtility.init(dependencies:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized WorkoutAppInstallationUtility.init(dependencies:)(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm_8(a1);
  return v10;
}

uint64_t closure #1 in WorkoutAppInstallationUtility.init(dependencies:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutAppInstallationUtility.init(dependencies:);

  return WorkoutAppInstallationUtility.fetchInitialInstallationStatus()();
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id WorkoutAppInstallationUtility.__deallocating_deinit()
{
  result = [objc_opt_self() sharedDeviceConnection];
  if (result)
  {
    v2 = result;
    [result removeObserver_];

    v3.receiver = v0;
    v3.super_class = type metadata accessor for WorkoutAppInstallationUtility();
    return objc_msgSendSuper2(&v3, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WorkoutAppInstallationUtility.fetchInitialInstallationStatus()()
{
  *(v1 + 48) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutAppInstallationUtility.fetchInitialInstallationStatus(), 0, 0);
}

{
  v1 = v0[7];
  v2 = (v0[6] + OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_dependencies);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm_0(v2, v3);
  (*(v4 + 16))(v3, v4);
  v5 = type metadata accessor for UUID();
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  _sSS_yptWOhTm_1(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v6 == 1)
  {
    if (one-time initialization token for xpcService != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.xpcService);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "WorkoutAppInstallationUtility: no active paired device found", v10, 2u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v11 = v0[7];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v2[3];
    v15 = v2[4];
    __swift_project_boxed_opaque_existential_1Tm_0(v2, v14);
    v16 = v2[3];
    v17 = v2[4];
    __swift_project_boxed_opaque_existential_1Tm_0(v2, v16);
    v18 = (*(v17 + 8))(v16, v17);
    v20 = v19;
    v0[8] = v19;
    v21 = *(v15 + 24);
    v24 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    v0[9] = v23;
    *v23 = v0;
    v23[1] = WorkoutAppInstallationUtility.fetchInitialInstallationStatus();

    return v24(v18, v20, v14, v15);
  }
}

{
  v16 = v0;
  v1 = *(v0 + 97);
  if (one-time initialization token for xpcService != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.xpcService);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 97);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    if (v5)
    {
      v8 = 0x656C6C6174736E69;
    }

    else
    {
      v8 = 0x6174736E49746F6ELL;
    }

    if (v5)
    {
      v9 = 0xE900000000000064;
    }

    else
    {
      v9 = 0xEC00000064656C6CLL;
    }

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20AEA4000, v3, v4, "WorkoutAppInstallationUtility: initial fetch completed, workout app state: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_8(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  if (v1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  *(v0 + 96) = v11;
  type metadata accessor for MainActor();
  *(v0 + 88) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](WorkoutAppInstallationUtility.fetchInitialInstallationStatus(), v13, v12);
}

{
  v1 = v0[11];
  v2 = v0[6];

  WorkoutAppInstallationUtility.updateInstallationState(_:)((v0 + 96));
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

{
  v21 = v0;
  v1 = v0[8];

  if (one-time initialization token for xpcService != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.xpcService);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = Error.localizedDescription.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v20);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_20AEA4000, v5, v6, "WorkoutAppInstallationUtility: failed to check workout app installation status: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_8(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[7];

  v18 = v0[1];

  return v18();
}

uint64_t WorkoutAppInstallationUtility.fetchInitialInstallationStatus()(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v8 = *v2;
  *(v3 + 97) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = WorkoutAppInstallationUtility.fetchInitialInstallationStatus();
  }

  else
  {
    v6 = *(v3 + 64);

    v5 = WorkoutAppInstallationUtility.fetchInitialInstallationStatus();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t DefaultWorkoutAppDependencies.workoutBundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DefaultWorkoutAppDependencies.getActivePairedDeviceID()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = FIGetActivePairedDevice();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 pairingID];

    if (v8)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = type metadata accessor for UUID();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    }

    else
    {
      v13 = type metadata accessor for UUID();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    return outlined init with take of UUID?(v5, a1);
  }

  else
  {
    v10 = type metadata accessor for UUID();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t DefaultWorkoutAppDependencies.checkAppInstallation(bundleID:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x2822009F8](DefaultWorkoutAppDependencies.checkAppInstallation(bundleID:), 0, 0);
}

uint64_t DefaultWorkoutAppDependencies.checkAppInstallation(bundleID:)()
{
  v1 = FIGetActivePairedDevice();
  v0[30] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() sharedDeviceConnection];
    v0[31] = v3;
    if (v3)
    {
      v4 = v3;
      v6 = v0[28];
      v5 = v0[29];
      v7 = v2;
      v8 = MEMORY[0x20F2E6C00](v6, v5);
      v0[32] = v8;
      v0[2] = v0;
      v0[7] = v0 + 34;
      v0[3] = DefaultWorkoutAppDependencies.checkAppInstallation(bundleID:);
      v9 = swift_continuation_init();
      v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
      v0[20] = MEMORY[0x277D85DD0];
      v0[21] = 1107296256;
      v0[22] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
      v0[23] = &block_descriptor_40;
      v0[24] = v9;
      [v4 applicationIsInstalledOnPairedDevice:v7 withBundleID:v8 completion:v0 + 20];
      v3 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    v11 = *MEMORY[0x277CCA450];
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v12;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x800000020B460170;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sSS_yptWOhTm_1(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v14 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B43B970);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v13 initWithDomain:v14 code:1 userInfo:isa];

    swift_willThrow();
    v16 = v0[1];

    return v16(0);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = DefaultWorkoutAppDependencies.checkAppInstallation(bundleID:);
  }

  else
  {
    v3 = DefaultWorkoutAppDependencies.checkAppInstallation(bundleID:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);

  v4 = *(v0 + 272);
  v5 = *(v0 + 8);

  return v5(v4);
}

{
  v1 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  swift_willThrow();

  v5 = v0[33];
  v6 = v0[1];

  return v6(0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t protocol witness for WorkoutAppInstallationDependencies.workoutBundleIdentifier.getter in conformance DefaultWorkoutAppDependencies()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t protocol witness for WorkoutAppInstallationDependencies.checkAppInstallation(bundleID:) in conformance DefaultWorkoutAppDependencies(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for WorkoutAppInstallationDependencies.checkAppInstallation(bundleID:) in conformance DefaultWorkoutAppDependencies;

  return DefaultWorkoutAppDependencies.checkAppInstallation(bundleID:)(a1, a2);
}

uint64_t protocol witness for WorkoutAppInstallationDependencies.checkAppInstallation(bundleID:) in conformance DefaultWorkoutAppDependencies(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:)(unint64_t a1, uint64_t a2)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v65 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v70 = &v65 - v8;
  v9 = type metadata accessor for UUID();
  v71 = *(v9 - 8);
  v10 = *(v71 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = &v65 - v14;
  if (one-time initialization token for xpcService != -1)
  {
LABEL_31:
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static WOLog.xpcService);

  v65 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v66 = v13;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v76 = v21;
    *v20 = 136315138;
    v22 = type metadata accessor for ACXRemoteApplication();
    v23 = MEMORY[0x20F2E6F70](a1, v22);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v76);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_20AEA4000, v17, v18, "WorkoutAppInstallationUtility: applicationsInstalled: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_8(v21);
    MEMORY[0x20F2E9420](v21, -1, -1);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  v72 = v9;
  v74 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v75 = __CocoaSet.count.getter();
  }

  else
  {
    v75 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = 0;
  v27 = (v73 + OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_dependencies);
  v13 = (a1 & 0xC000000000000001);
  do
  {
    v28 = v26;
    if (v75 == v26)
    {
      break;
    }

    if (v13)
    {
      v29 = MEMORY[0x20F2E7A20](v26, a1);
    }

    else
    {
      if (v26 >= *(v74 + 16))
      {
        goto LABEL_30;
      }

      v29 = *(a1 + 8 * v26 + 32);
    }

    v30 = v29;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v31 = [v29 bundleIdentifier];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = v27[3];
    v36 = v27[4];
    __swift_project_boxed_opaque_existential_1Tm_0(v27, v35);
    if (v32 == (*(v36 + 8))(v35, v36) && v34 == v37)
    {

      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v26 = v28 + 1;
  }

  while ((v9 & 1) == 0);
  v39 = v27[3];
  v40 = v27[4];
  __swift_project_boxed_opaque_existential_1Tm_0(v27, v39);
  v41 = v70;
  (*(v40 + 16))(v39, v40);
  v42 = v71;
  v43 = v72;
  if ((*(v71 + 48))(v41, 1, v72) == 1)
  {
    return _sSS_yptWOhTm_1(v41, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v45 = v69;
  (*(v42 + 32))(v69, v41, v43);
  v46 = v68;
  v47 = static UUID.== infix(_:_:)();
  if (v75 == v28 || (v47 & 1) == 0)
  {
    return (*(v42 + 8))(v45, v43);
  }

  v48 = v66;
  (*(v42 + 16))(v66, v46, v43);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v76 = v52;
    *v51 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v42;
    v56 = v55;
    v57 = *(v54 + 8);
    v57(v48, v43);
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v56, &v76);

    *(v51 + 4) = v58;
    _os_log_impl(&dword_20AEA4000, v49, v50, "WorkoutAppInstallationUtility: workout app installed on device %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_8(v52);
    MEMORY[0x20F2E9420](v52, -1, -1);
    MEMORY[0x20F2E9420](v51, -1, -1);
  }

  else
  {

    v57 = *(v42 + 8);
    v57(v48, v43);
  }

  v59 = type metadata accessor for TaskPriority();
  v60 = v67;
  (*(*(v59 - 8) + 56))(v67, 1, 1, v59);
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v62 = static MainActor.shared.getter();
  v63 = swift_allocObject();
  v64 = MEMORY[0x277D85700];
  v63[2] = v62;
  v63[3] = v64;
  v63[4] = v61;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v60, &async function pointer to partial apply for closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:), v63);

  return (v57)(v69, v43);
}

uint64_t closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:), v6, v5);
}

uint64_t closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:)()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 88) = v4;
    if (v4)
    {
      v5 = *(v0 + 48);
      *(v0 + 104) = 1;
      *(v0 + 96) = static MainActor.shared.getter();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:), v7, v6);
    }

    v9 = *(v0 + 56);
  }

  else
  {
    v8 = *(v0 + 56);
  }

  v10 = *(v0 + 8);

  return v10();
}

{
  v2 = v0[11];
  v1 = v0[12];

  WorkoutAppInstallationUtility.updateInstallationState(_:)((v0 + 104));
  swift_unknownObjectRelease();
  v3 = v0[8];
  v4 = v0[9];

  return MEMORY[0x2822009F8](closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:), v3, v4);
}

{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v69 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = v65 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v65 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v65 - v18;
  if (one-time initialization token for xpcService != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static WOLog.xpcService);

  v65[1] = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v66 = v17;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v70 = v19;
    v67 = v3;
    v27 = v12;
    v28 = v26;
    v71[0] = v26;
    *v25 = 136315138;
    v29 = MEMORY[0x20F2E6F70](a1, MEMORY[0x277D837D0]);
    v31 = v13;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v71);

    *(v25 + 4) = v32;
    v13 = v31;
    _os_log_impl(&dword_20AEA4000, v22, v23, "WorkoutAppInstallationUtility: applicationsUninstalled: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_8(v28);
    v33 = v28;
    v12 = v27;
    v3 = v67;
    v19 = v70;
    MEMORY[0x20F2E9420](v33, -1, -1);
    MEMORY[0x20F2E9420](v25, -1, -1);
  }

  v34 = (v3 + OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_dependencies);
  v35 = *(v3 + OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_dependencies + 24);
  v36 = *(v3 + OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_dependencies + 32);
  __swift_project_boxed_opaque_existential_1Tm_0((v3 + OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_dependencies), v35);
  v71[0] = (*(v36 + 8))(v35, v36);
  v71[1] = v37;
  MEMORY[0x28223BE20](v71[0]);
  v65[-2] = v71;
  v38 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, &v65[-4], a1);

  v39 = v34[3];
  v40 = v34[4];
  __swift_project_boxed_opaque_existential_1Tm_0(v34, v39);
  (*(v40 + 16))(v39, v40);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return _sSS_yptWOhTm_1(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  (*(v13 + 32))(v19, v11, v12);
  v42 = v69;
  if ((v38 & static UUID.== infix(_:_:)() & 1) == 0)
  {
    return (*(v13 + 8))(v19, v12);
  }

  v43 = v66;
  (*(v13 + 16))(v66, v42, v12);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v70 = v19;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v67 = v3;
    v48 = v12;
    v49 = v47;
    v50 = swift_slowAlloc();
    v71[0] = v50;
    *v49 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v43;
    v53 = v51;
    v55 = v54;
    v56 = *(v13 + 8);
    v56(v52, v48);
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v71);

    *(v49 + 4) = v57;
    _os_log_impl(&dword_20AEA4000, v44, v45, "WorkoutAppInstallationUtility: workout app uninstalled from device %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_8(v50);
    MEMORY[0x20F2E9420](v50, -1, -1);
    v58 = v49;
    v12 = v48;
    MEMORY[0x20F2E9420](v58, -1, -1);
  }

  else
  {

    v56 = *(v13 + 8);
    v56(v43, v12);
  }

  v59 = type metadata accessor for TaskPriority();
  v60 = v68;
  (*(*(v59 - 8) + 56))(v68, 1, 1, v59);
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v62 = static MainActor.shared.getter();
  v63 = swift_allocObject();
  v64 = MEMORY[0x277D85700];
  v63[2] = v62;
  v63[3] = v64;
  v63[4] = v61;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v60, &async function pointer to partial apply for closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:), v63);

  return (v56)(v70, v12);
}

uint64_t closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:), v6, v5);
}

uint64_t closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:)()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 88) = v4;
    if (v4)
    {
      v5 = *(v0 + 48);
      *(v0 + 104) = 2;
      *(v0 + 96) = static MainActor.shared.getter();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:), v7, v6);
    }

    v9 = *(v0 + 56);
  }

  else
  {
    v8 = *(v0 + 56);
  }

  v10 = *(v0 + 8);

  return v10();
}

{
  v2 = v0[11];
  v1 = v0[12];

  WorkoutAppInstallationUtility.updateInstallationState(_:)((v0 + 104));
  swift_unknownObjectRelease();
  v3 = v0[8];
  v4 = v0[9];

  return MEMORY[0x2822009F8](closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:), v3, v4);
}

id WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

NSObject *specialized WorkoutAppInstallationUtility.init(dependencies:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v37[3] = &type metadata for DefaultWorkoutAppDependencies;
  v37[4] = &protocol witness table for DefaultWorkoutAppDependencies;
  v37[0] = a1;
  v37[1] = a2;
  v15 = OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility__installationState;
  LOBYTE(v36[0]) = 0;
  Published.init(initialValue:)();
  (*(v11 + 32))(&a3[v15], v14, v10);
  outlined init with copy of WorkoutAppInstallationDependencies(v37, &a3[OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_dependencies]);
  outlined init with copy of WorkoutAppInstallationDependencies(v37, v36);
  v16 = type metadata accessor for WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_stateUpdater + 8] = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of WorkoutAppInstallationDependencies(v36, &v17[OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_dependencies]);
  v35.receiver = v17;
  v35.super_class = v16;
  v18 = objc_msgSendSuper2(&v35, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm_8(v36);
  *&a3[OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_deviceConnectionDelegate] = v18;
  v19 = type metadata accessor for WorkoutAppInstallationUtility();
  v34.receiver = a3;
  v34.super_class = v19;
  v20 = objc_msgSendSuper2(&v34, sel_init);
  v21 = OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_deviceConnectionDelegate;
  *(*&v20[OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_deviceConnectionDelegate] + OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_stateUpdater + 8) = &protocol witness table for WorkoutAppInstallationUtility;
  swift_unknownObjectWeakAssign();
  v22 = objc_opt_self();
  v23 = v20;
  result = [v22 sharedDeviceConnection];
  if (result)
  {
    v25 = result;
    [result addObserver:*&v20[v21]];

    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v23;
    v28 = v23;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in WorkoutAppInstallationUtility.init(dependencies:)partial apply, v27);

    if (one-time initialization token for xpcService != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static WOLog.xpcService);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20AEA4000, v30, v31, "WorkoutAppInstallationUtility: initialized, fetching initial installation status...", v32, 2u);
      MEMORY[0x20F2E9420](v32, -1, -1);
      v33 = v28;
    }

    else
    {
      v33 = v30;
      v30 = v28;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_8(v37);
    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

NSObject *specialized WorkoutAppInstallationUtility.init(dependencies:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C20AppInstallationStateOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v40[3] = a3;
  v40[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v18 = OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility__installationState;
  LOBYTE(v39[0]) = 0;
  Published.init(initialValue:)();
  (*(v13 + 32))(&a2[v18], v16, v12);
  outlined init with copy of WorkoutAppInstallationDependencies(v40, &a2[OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_dependencies]);
  outlined init with copy of WorkoutAppInstallationDependencies(v40, v39);
  v19 = type metadata accessor for WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_stateUpdater + 8] = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of WorkoutAppInstallationDependencies(v39, &v20[OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_dependencies]);
  v38.receiver = v20;
  v38.super_class = v19;
  v21 = objc_msgSendSuper2(&v38, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm_8(v39);
  *&a2[OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_deviceConnectionDelegate] = v21;
  v22 = type metadata accessor for WorkoutAppInstallationUtility();
  v37.receiver = a2;
  v37.super_class = v22;
  v23 = objc_msgSendSuper2(&v37, sel_init);
  v24 = OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_deviceConnectionDelegate;
  *(*&v23[OBJC_IVAR____TtC11WorkoutCore29WorkoutAppInstallationUtility_deviceConnectionDelegate] + OBJC_IVAR____TtCC11WorkoutCore29WorkoutAppInstallationUtility30WorkoutAppInstallationDelegate_stateUpdater + 8) = &protocol witness table for WorkoutAppInstallationUtility;
  swift_unknownObjectWeakAssign();
  v25 = objc_opt_self();
  v26 = v23;
  result = [v25 sharedDeviceConnection];
  if (result)
  {
    v28 = result;
    [result addObserver:*&v23[v24]];

    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v26;
    v31 = v26;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in WorkoutAppInstallationUtility.init(dependencies:), v30);

    if (one-time initialization token for xpcService != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static WOLog.xpcService);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_20AEA4000, v33, v34, "WorkoutAppInstallationUtility: initialized, fetching initial installation status...", v35, 2u);
      MEMORY[0x20F2E9420](v35, -1, -1);
      v36 = v31;
    }

    else
    {
      v36 = v33;
      v33 = v31;
    }

    __swift_destroy_boxed_opaque_existential_1Tm_8(v40);
    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

NSObject *specialized WorkoutAppInstallationUtility.__allocating_init(dependencies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(type metadata accessor for WorkoutAppInstallationUtility());
  (*(v7 + 16))(v10, a1, a3);
  return specialized WorkoutAppInstallationUtility.init(dependencies:)(v10, v11, a3, a4);
}

unint64_t lazy protocol witness table accessor for type WorkoutAppInstallationState and conformance WorkoutAppInstallationState()
{
  result = lazy protocol witness table cache variable for type WorkoutAppInstallationState and conformance WorkoutAppInstallationState;
  if (!lazy protocol witness table cache variable for type WorkoutAppInstallationState and conformance WorkoutAppInstallationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAppInstallationState and conformance WorkoutAppInstallationState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutAppInstallationState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutAppInstallationState(uint64_t result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for WorkoutAppInstallationUtility()
{
  type metadata accessor for Published<WorkoutAppInstallationState>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<WorkoutAppInstallationState>()
{
  if (!lazy cache variable for type metadata for Published<WorkoutAppInstallationState>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<WorkoutAppInstallationState>);
    }
  }
}

uint64_t dispatch thunk of WorkoutAppInstallationDependencies.checkAppInstallation(bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of WorkoutAppInstallationDependencies.checkAppInstallation(bundleID:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutAppInstallationDependencies.checkAppInstallation(bundleID:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t getEnumTagSinglePayload for DefaultWorkoutAppDependencies(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for DefaultWorkoutAppDependencies(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t _sSS_yptWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t partial apply for closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:);

  return closure #1 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsUninstalled(_:onDeviceWithPairingID:)(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:);

  return closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in WorkoutAppInstallationUtility.WorkoutAppInstallationDelegate.applicationsInstalled(_:onDeviceWithPairingID:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t type metadata accessor for ACXRemoteApplication()
{
  result = lazy cache variable for type metadata for ACXRemoteApplication;
  if (!lazy cache variable for type metadata for ACXRemoteApplication)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ACXRemoteApplication);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined init with copy of WorkoutAppInstallationDependencies(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t partial apply for closure #1 in WorkoutAppInstallationUtility.init(dependencies:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in WorkoutAppInstallationUtility.init(dependencies:);

  return closure #1 in WorkoutAppInstallationUtility.init(dependencies:)();
}

uint64_t objectdestroy_42Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t closure #1 in WorkoutAppInstallationUtility.init(dependencies:)partial apply()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = closure #1 in WorkoutAppInstallationUtility.init(dependencies:)partial apply;

  return closure #1 in WorkoutAppInstallationUtility.init(dependencies:)();
}

uint64_t key path setter for SeymourElapsedTimeAccumulator.playback : SeymourElapsedTimeAccumulator(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  outlined init with copy of Playback?(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  outlined assign with copy of Playback?(v7, v8 + v9);
  swift_endAccess();
  SeymourElapsedTimeAccumulator.playback.didset();
  return outlined destroy of Playback?(v7, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
}

uint64_t SeymourElapsedTimeAccumulator.playback.didset()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v68 = *(v2 - 8);
  v3 = *(v68 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v67 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v69 = &v56[-v7];
  MEMORY[0x28223BE20](v6);
  v66 = &v56[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v65 = &v56[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v56[-v13];
  v15 = type metadata accessor for Playback();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v64 = &v56[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v56[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v56[-v23];
  v25 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  outlined init with copy of Playback?(v1 + v25, v14);
  v26 = *(v16 + 48);
  if (v26(v14, 1, v15) == 1)
  {
    return outlined destroy of Playback?(v14, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  }

  v63 = v1;
  v61 = *(v16 + 32);
  v61(v24, v14, v15);
  v28 = Playback.state.getter();
  LODWORD(v70) = v28;
  BYTE4(v70) = BYTE4(v28) & 1;
  v71 = 0;
  lazy protocol witness table accessor for type Playback.State and conformance Playback.State();
  lazy protocol witness table accessor for type Playback.State and conformance Playback.State();
  if ((static PortableEnum<>.== infix(_:_:)() & 1) == 0)
  {
    return (*(v16 + 8))(v24, v15);
  }

  v62 = v24;
  if (one-time initialization token for time != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static WOLog.time);
  (*(v16 + 16))(v22, v62, v15);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v60 = v2;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v58 = v33;
    v59 = swift_slowAlloc();
    v70 = v59;
    *v33 = 136315138;
    lazy protocol witness table accessor for type SeymourElapsedTimeAccumulator and conformance SeymourElapsedTimeAccumulator(&lazy protocol witness table cache variable for type Playback and conformance Playback, MEMORY[0x277D53C58]);
    v57 = v31;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v37 = v22;
    v38 = *(v16 + 8);
    (v38)(v37, v15);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v70);

    v40 = v58;
    *(v58 + 1) = v39;
    v41 = v40;
    _os_log_impl(&dword_20AEA4000, v30, v57, "Video playback received. playback=%s", v40, 0xCu);
    v42 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x20F2E9420](v42, -1, -1);
    MEMORY[0x20F2E9420](v41, -1, -1);
  }

  else
  {

    v43 = v22;
    v38 = *(v16 + 8);
    (v38)(v43, v15);
  }

  v44 = v63;
  Date.init()();
  v45 = v44 + v25;
  v46 = v65;
  outlined init with copy of Playback?(v45, v65);
  v47 = v26(v46, 1, v15);
  v59 = v38;
  if (v47 == 1)
  {
    outlined destroy of Playback?(v46, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  }

  else
  {
    v48 = v64;
    v61(v64, v46, v15);
    static Double.currentMachTimestamp()();
    Playback.playbackTime(at:)(v49);
    (v38)(v48, v15);
  }

  v50 = v66;
  v51 = v69;
  Date.addingTimeInterval(_:)();
  v52 = v68;
  v53 = *(v68 + 8);
  v54 = v60;
  v53(v51, v60);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v52 + 16))(v67, v50, v54);
  v55 = v63;
  static Published.subscript.setter();
  v53(v50, v54);
  return (v59)(v62, v15);
}

uint64_t SeymourElapsedTimeAccumulator.playback.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  return outlined init with copy of Playback?(v1 + v3, a1);
}

uint64_t outlined init with copy of Playback?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SeymourElapsedTimeAccumulator.playback.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  outlined assign with copy of Playback?(a1, v1 + v3);
  swift_endAccess();
  SeymourElapsedTimeAccumulator.playback.didset();
  return outlined destroy of Playback?(a1, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
}

uint64_t outlined assign with copy of Playback?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*SeymourElapsedTimeAccumulator.playback.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SeymourElapsedTimeAccumulator.playback.modify;
}

uint64_t SeymourElapsedTimeAccumulator.playback.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return SeymourElapsedTimeAccumulator.playback.didset();
  }

  return result;
}

uint64_t key path getter for SeymourElapsedTimeAccumulator.timelineStartDate : SeymourElapsedTimeAccumulator(uint64_t *a1)
{
  return key path getter for SeymourElapsedTimeAccumulator.timelineStartDate : SeymourElapsedTimeAccumulator(a1);
}

{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t SeymourElapsedTimeAccumulator.timelineStartDate.getter()
{
  return SeymourElapsedTimeAccumulator.timelineStartDate.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t (*SeymourElapsedTimeAccumulator.timelineStartDate.modify(uint64_t *a1))()
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
  return SeymourElapsedTimeAccumulator.timelineStartDate.modify;
}

uint64_t key path setter for SeymourElapsedTimeAccumulator.$timelineStartDate : SeymourElapsedTimeAccumulator(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SeymourElapsedTimeAccumulator.$timelineStartDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SeymourElapsedTimeAccumulator.$timelineStartDate.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMR);
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

  v10 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator__timelineStartDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SeymourElapsedTimeAccumulator.$timelineStartDate.modify;
}

uint64_t key path setter for SeymourElapsedTimeAccumulator.timelineStartDate : SeymourElapsedTimeAccumulator(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  v15 = *(v8 + 16);
  v15(&v19 - v13, a1, v7);
  v16 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v15(v12, v14, v7);
  v17 = v16;
  static Published.subscript.setter();
  return (*(v8 + 8))(v14, v7);
}

uint64_t SeymourElapsedTimeAccumulator.timelineStartDate.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v5 + 16))(v8, a1, v4);
  v9 = v2;
  static Published.subscript.setter();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*SeymourElapsedTimeAccumulator.progressDisplayPreference.modify(uint64_t *a1))()
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
  return SeymourElapsedTimeAccumulator.progressDisplayPreference.modify;
}

void SeymourElapsedTimeAccumulator.timelineStartDate.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for SeymourElapsedTimeAccumulator.$timelineStartDate : SeymourElapsedTimeAccumulator(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for SeymourElapsedTimeAccumulator.$progressDisplayPreference : SeymourElapsedTimeAccumulator(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11SeymourCore25ProgressDisplayPreferenceV_GMd, &_s7Combine9PublishedV9PublisherVy11SeymourCore25ProgressDisplayPreferenceV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11SeymourCore25ProgressDisplayPreferenceVGMd, &_s7Combine9PublishedVy11SeymourCore25ProgressDisplayPreferenceVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SeymourElapsedTimeAccumulator.$timelineStartDate.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t SeymourElapsedTimeAccumulator.$progressDisplayPreference.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11SeymourCore25ProgressDisplayPreferenceV_GMd, &_s7Combine9PublishedV9PublisherVy11SeymourCore25ProgressDisplayPreferenceV_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11SeymourCore25ProgressDisplayPreferenceVGMd, &_s7Combine9PublishedVy11SeymourCore25ProgressDisplayPreferenceVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SeymourElapsedTimeAccumulator.$progressDisplayPreference.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11SeymourCore25ProgressDisplayPreferenceV_GMd, &_s7Combine9PublishedV9PublisherVy11SeymourCore25ProgressDisplayPreferenceV_GMR);
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

  v10 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator__progressDisplayPreference;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11SeymourCore25ProgressDisplayPreferenceVGMd, &_s7Combine9PublishedVy11SeymourCore25ProgressDisplayPreferenceVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SeymourElapsedTimeAccumulator.$progressDisplayPreference.modify;
}

void SeymourElapsedTimeAccumulator.$timelineStartDate.modify(uint64_t a1, char a2)
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

id SeymourElapsedTimeAccumulator.init(duration:progressDisplayPreference:)(char *a1, double a2)
{
  v36 = a1;
  v4 = type metadata accessor for ProgressDisplayPreference();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v33);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - v20;
  v22 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  v23 = type metadata accessor for Playback();
  (*(*(v23 - 8) + 56))(&v2[v22], 1, 1, v23);
  v24 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator__timelineStartDate;
  Date.init()();
  (*(v15 + 16))(v19, v21, v14);
  Published.init(initialValue:)();
  (*(v15 + 8))(v21, v14);
  (*(v10 + 32))(&v2[v24], v13, v33);
  *&v2[OBJC_IVAR___SMSeymourElapsedTimeAccumulator_timer] = 0;
  *&v2[OBJC_IVAR___SMSeymourElapsedTimeAccumulator_timerLeeway] = 0x3F9EB851EB851EB8;
  *&v2[OBJC_IVAR___SMSeymourElapsedTimeAccumulator_recalibrationThreshold] = 0x3F9EB851EB851EB8;
  *&v2[OBJC_IVAR___SMSeymourElapsedTimeAccumulator_duration] = a2;
  v25 = v34;
  v26 = *(v34 + 16);
  v27 = v36;
  v26(v9, v36, v4);
  swift_beginAccess();
  v26(v35, v9, v4);
  Published.init(initialValue:)();
  v28 = *(v25 + 8);
  v28(v9, v4);
  swift_endAccess();
  v29 = type metadata accessor for SeymourElapsedTimeAccumulator();
  v37.receiver = v2;
  v37.super_class = v29;
  v30 = objc_msgSendSuper2(&v37, sel_init);
  v28(v27, v4);
  return v30;
}

uint64_t type metadata accessor for SeymourElapsedTimeAccumulator()
{
  result = type metadata singleton initialization cache for SeymourElapsedTimeAccumulator;
  if (!type metadata singleton initialization cache for SeymourElapsedTimeAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SeymourElapsedTimeAccumulator.videoPlaybackCurrentTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for Playback();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  outlined init with copy of Playback?(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return outlined destroy of Playback?(v4, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  }

  (*(v6 + 32))(v9, v4, v5);
  static Double.currentMachTimestamp()();
  Playback.playbackTime(at:)(v12);
  return (*(v6 + 8))(v9, v5);
}

double SeymourElapsedTimeAccumulator.videoPlaybackTime(at:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for Playback();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v17 = v16;
  v18 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  outlined init with copy of Playback?(v1 + v18, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v12 + 8))(v15, v11);
    outlined destroy of Playback?(v5, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
    v19 = 0.0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    static Double.currentMachTimestamp()();
    v19 = Playback.playbackTime(at:)(v20);
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v11);
  }

  v21 = 0.0;
  if (v17 > 0.0)
  {
    v21 = v17;
  }

  return v21 + v19;
}

double SeymourElapsedTimeAccumulator.elapsedTime.getter()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  SeymourElapsedTimeAccumulator.elapsedTime(at:)(v4);
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  return v6;
}

void SeymourElapsedTimeAccumulator.setupTimer(initialFireInterval:)(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_timer;
  [*(v1 + OBJC_IVAR___SMSeymourElapsedTimeAccumulator_timer) invalidate];
  v5 = objc_allocWithZone(MEMORY[0x277CF0B50]);
  v6 = MEMORY[0x20F2E6C00](0xD000000000000023, 0x800000020B4603F0);
  v7 = [v5 initWithIdentifier_];

  v8 = *(v2 + v4);
  *(v2 + v4) = v7;
  v9 = v7;

  if (v9)
  {
    type metadata accessor for OS_dispatch_queue();
    v10 = static OS_dispatch_queue.main.getter();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13[4] = partial apply for closure #1 in SeymourElapsedTimeAccumulator.setupTimer(initialFireInterval:);
    v13[5] = v11;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSAbsoluteMachTimer) -> ();
    v13[3] = &block_descriptor_41;
    v12 = _Block_copy(v13);

    [v9 scheduleRepeatingWithFireInterval:v10 repeatInterval:v12 leewayInterval:a1 queue:1.0 handler:0.03];
    _Block_release(v12);
  }
}

void closure #1 in SeymourElapsedTimeAccumulator.setupTimer(initialFireInterval:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    SeymourElapsedTimeAccumulator.fireTimer()();
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed BSAbsoluteMachTimer) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

Swift::Void __swiftcall SeymourElapsedTimeAccumulator.fireTimer()()
{
  v1 = v0;
  if (SeymourElapsedTimeAccumulator.shouldRecalibrate()())
  {
    v2 = SeymourElapsedTimeAccumulator.timeUntilNextSecond.getter();
    SeymourElapsedTimeAccumulator.setupTimer(initialFireInterval:)(v2);
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.app);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "[ElapsedTimeDebugging] SeymourElapsedTimeAccumulator timer recalibrating", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }
  }

  v7 = [v1 updateHandler];
  if (v7)
  {
    v8 = v7;
    (*(v7 + 2))();

    _Block_release(v8);
  }
}

BOOL SeymourElapsedTimeAccumulator.shouldRecalibrate()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for Playback();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
  swift_beginAccess();
  outlined init with copy of Playback?(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Playback?(v4, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v11 = Playback.state.getter();
    v16 = v11;
    v17 = BYTE4(v11) & 1;
    v15[15] = 0;
    lazy protocol witness table accessor for type Playback.State and conformance Playback.State();
    lazy protocol witness table accessor for type Playback.State and conformance Playback.State();
    if (static PortableEnum<>.== infix(_:_:)())
    {
      SeymourElapsedTimeAccumulator.timeUntilNextSecond.getter();
      v13 = v12;
      (*(v6 + 8))(v9, v5);
      return 1.0 - v13 > 0.03;
    }

    (*(v6 + 8))(v9, v5);
  }

  return 0;
}

uint64_t SeymourElapsedTimeAccumulator.elapsedTime(at:)(uint64_t a1)
{
  v2 = v1;
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = type metadata accessor for Playback();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v40 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v41 = &v40 - v14;
  v15 = type metadata accessor for Date();
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = *(v43 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ProgressDisplayPreference();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v24 = ProgressDisplayPreference.behavior.getter();
  v26 = v25;
  v28 = v27;
  (*(v20 + 8))(v23, v19);
  if (v28)
  {
    Date.init()();
    Date.timeIntervalSince(_:)();
    v29 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
    swift_beginAccess();
    outlined init with copy of Playback?(v2 + v29, v9);
    v31 = v45;
    v30 = v46;
    if ((*(v45 + 48))(v9, 1, v46) == 1)
    {
      (*(v43 + 8))(v18, v44);
      result = outlined destroy of Playback?(v9, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
    }

    else
    {
      v36 = v41;
      (*(v31 + 32))(v41, v9, v30);
      static Double.currentMachTimestamp()();
      Playback.playbackTime(at:)(v37);
      (*(v31 + 8))(v36, v30);
      result = (*(v43 + 8))(v18, v44);
    }

    if (v24 == 2)
    {
      *(v2 + OBJC_IVAR___SMSeymourElapsedTimeAccumulator_duration);
    }
  }

  else
  {
    outlined consume of PortableEnum<ProgressDisplayPreference.Behavior>(v24, v26, 0);
    v33 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
    swift_beginAccess();
    outlined init with copy of Playback?(v2 + v33, v7);
    v35 = v45;
    v34 = v46;
    if ((*(v45 + 48))(v7, 1, v46) == 1)
    {
      return outlined destroy of Playback?(v7, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
    }

    else
    {
      v38 = v40;
      (*(v35 + 32))(v40, v7, v34);
      static Double.currentMachTimestamp()();
      Playback.playbackTime(at:)(v39);
      return (*(v35 + 8))(v38, v34);
    }
  }

  return result;
}

uint64_t outlined consume of PortableEnum<ProgressDisplayPreference.Behavior>(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

double @objc SeymourElapsedTimeAccumulator.videoPlaybackTime(at:)(void *a1, uint64_t a2, uint64_t a3, double (*a4)(char *))
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a1;
  v12 = a4(v10);

  (*(v7 + 8))(v10, v6);
  return v12;
}

uint64_t SeymourElapsedTimeAccumulator.timeUntilNextSecond.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v36 = type metadata accessor for Playback();
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v36);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v34 = &v34 - v13;
  v14 = type metadata accessor for ProgressDisplayPreference();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = ProgressDisplayPreference.behavior.getter();
  v21 = v20;
  v23 = v22;
  (*(v15 + 8))(v18, v14);
  v37 = v19;
  v38 = v21;
  v39 = v23 & 1;
  lazy protocol witness table accessor for type ProgressDisplayPreference.Behavior and conformance ProgressDisplayPreference.Behavior();
  static PortableEnum.?? infix(_:_:)();
  outlined consume of PortableEnum<ProgressDisplayPreference.Behavior>(v19, v21, v23 & 1);
  if (v40 > 1u)
  {
    v27 = *(v1 + OBJC_IVAR___SMSeymourElapsedTimeAccumulator_duration);
    v28 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
    swift_beginAccess();
    outlined init with copy of Playback?(v1 + v28, v6);
    v29 = v36;
    if ((*(v9 + 48))(v6, 1, v36) == 1)
    {
      return outlined destroy of Playback?(v6, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
    }

    else
    {
      v32 = v35;
      (*(v9 + 32))(v35, v6, v29);
      static Double.currentMachTimestamp()();
      Playback.playbackTime(at:)(v33);
      return (*(v9 + 8))(v32, v29);
    }
  }

  else
  {
    v24 = OBJC_IVAR___SMSeymourElapsedTimeAccumulator_playback;
    swift_beginAccess();
    outlined init with copy of Playback?(v1 + v24, v8);
    v25 = v36;
    if ((*(v9 + 48))(v8, 1, v36) == 1)
    {
      return outlined destroy of Playback?(v8, &_s11SeymourCore8PlaybackVSgMd, &_s11SeymourCore8PlaybackVSgMR);
    }

    else
    {
      v30 = v34;
      (*(v9 + 32))(v34, v8, v25);
      static Double.currentMachTimestamp()();
      Playback.playbackTime(at:)(v31);
      return (*(v9 + 8))(v30, v25);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ProgressDisplayPreference.Behavior and conformance ProgressDisplayPreference.Behavior()
{
  result = lazy protocol witness table cache variable for type ProgressDisplayPreference.Behavior and conformance ProgressDisplayPreference.Behavior;
  if (!lazy protocol witness table cache variable for type ProgressDisplayPreference.Behavior and conformance ProgressDisplayPreference.Behavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressDisplayPreference.Behavior and conformance ProgressDisplayPreference.Behavior);
  }

  return result;
}

double SeymourElapsedTimeAccumulator.timelineFrequency.getter()
{
  v0 = type metadata accessor for ProgressDisplayPreference();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = ProgressDisplayPreference.behavior.getter();
  v7 = v6;
  v9 = v8;
  (*(v1 + 8))(v4, v0);
  v11[1] = v5;
  v11[2] = v7;
  v12 = v9 & 1;
  lazy protocol witness table accessor for type ProgressDisplayPreference.Behavior and conformance ProgressDisplayPreference.Behavior();
  static PortableEnum.?? infix(_:_:)();
  outlined consume of PortableEnum<ProgressDisplayPreference.Behavior>(v5, v7, v9 & 1);
  result = 0.5;
  if (v13 < 2u)
  {
    return 1.0;
  }

  return result;
}

id SeymourElapsedTimeAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SeymourElapsedTimeAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourElapsedTimeAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for TimeProviding.timelineStartDate.getter in conformance SeymourElapsedTimeAccumulator()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t instantiation function for generic protocol witness table for SeymourElapsedTimeAccumulator(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SeymourElapsedTimeAccumulator and conformance SeymourElapsedTimeAccumulator(&lazy protocol witness table cache variable for type SeymourElapsedTimeAccumulator and conformance SeymourElapsedTimeAccumulator, type metadata accessor for SeymourElapsedTimeAccumulator);
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SeymourElapsedTimeAccumulator@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SeymourElapsedTimeAccumulator();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void type metadata completion function for SeymourElapsedTimeAccumulator()
{
  type metadata accessor for Playback?(319, &lazy cache variable for type metadata for Playback?, MEMORY[0x277D53C58], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for Playback?(319, &lazy cache variable for type metadata for Published<Date>, MEMORY[0x277CC9578], MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for Playback?(319, &lazy cache variable for type metadata for Published<ProgressDisplayPreference>, MEMORY[0x277D52EC0], MEMORY[0x277CBCED0]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Playback?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Playback.State and conformance Playback.State()
{
  result = lazy protocol witness table cache variable for type Playback.State and conformance Playback.State;
  if (!lazy protocol witness table cache variable for type Playback.State and conformance Playback.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Playback.State and conformance Playback.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Playback.State and conformance Playback.State;
  if (!lazy protocol witness table cache variable for type Playback.State and conformance Playback.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Playback.State and conformance Playback.State);
  }

  return result;
}

uint64_t outlined destroy of Playback?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SeymourElapsedTimeAccumulator and conformance SeymourElapsedTimeAccumulator(unint64_t *a1, void (*a2)(uint64_t))
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

void GoalWorkoutConfiguration.workoutKitRepresentation.getter(uint64_t a1@<X8>)
{
  v3 = v1;
  v16[0] = a1;
  v4 = type metadata accessor for WorkoutGoal();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v13 = *(v3 + v12);
  v14 = FIUIWorkoutActivityType.healthKitRepresentation.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v16[5];
  _sSo21NLSessionActivityGoalC11WorkoutCoreE24workoutKitRepresentation3for8location16swimmingLocation4kind0dG00dC0OSo09HKWorkoutB4TypeV_So0n7SessionlO0VSo0n8SwimminglO0VxmtKlFAI06SinglecD0V_Tt3g5([v14 activityType], objc_msgSend(v14, sel_locationType), objc_msgSend(v14, sel_swimmingLocationType), v11);

  if (v2)
  {
  }

  else
  {
    (*(v5 + 16))(v9, v11, v4);
    SingleGoalWorkout.init(configuration:goal:)();
    (*(v5 + 8))(v11, v4);
  }
}

uint64_t specialized static GoalWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:validator:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v45 = a2;
  v46 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v49 = v6;
  v50 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v42 - v11;
  v12 = type metadata accessor for WorkoutGoal();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v17 setActivityType_];
  [v17 setLocationType_];
  [v17 setSwimmingLocationType_];
  v18 = HKWorkoutConfiguration.fiuiWorkoutActivityType(isPartOfMultisport:)(0);
  SingleGoalWorkout.goal.getter();
  v52[0] = 0;
  v19 = WorkoutGoal.workoutCoreRepresentation(activityType:configurationType:validator:)(v18, v52, a4);
  if (v4)
  {
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v20 = v19;
    (*(v13 + 8))(v16, v12);
    v21 = *(v50 + 16);
    v22 = v47;
    v23 = v45;
    v45 = 0;
    v43 = v18;
    v24 = v49;
    v21(v47, v23);
    v25 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration());
    swift_beginAccess();
    v53 = v20;
    type metadata accessor for NLSessionActivityGoal();
    v44 = v20;
    Published.init(initialValue:)();
    swift_endAccess();
    (v21)(v48, v22, v24);
    v26 = v21;
    *&v25[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
    v28 = type metadata accessor for Date();
    v29 = *(*(v28 - 8) + 56);
    v29(&v25[v27], 1, 1, v28);
    v29(&v25[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v28);
    v30 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
    v31 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v31 - 8) + 56))(&v25[v30], 1, 1, v31);
    v32 = v49;
    (*(v50 + 56))(&v25[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v49);
    v33 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v25[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v34 = v48;
    (v26)(&v25[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v48, v32);
    v35 = v43;
    *&v25[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v43;
    v25[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
    v36 = v46;
    *&v25[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v46;
    swift_beginAccess();
    *&v25[v33] = 0;
    v25[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v37 = type metadata accessor for WorkoutConfiguration();
    v51.receiver = v25;
    v51.super_class = v37;
    v38 = v35;
    v39 = v36;
    v12 = objc_msgSendSuper2(&v51, sel_init);

    v40 = *(v50 + 8);
    v40(v34, v32);
    v40(v47, v32);
  }

  return v12;
}

void (*ElapsedTimeMetricsPublisher.elapsedTime.modify(uint64_t *a1))(void *a1)
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
  return ElapsedTimeMetricsPublisher.elapsedTime.modify;
}

void ElapsedTimeMetricsPublisher.elapsedTime.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

double ElapsedTimeMetricsPublisher.elapsedTime.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ElapsedTimeMetricsPublisher.elapsedTime.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double key path getter for ElapsedTimeMetricsPublisher.elapsedTime : ElapsedTimeMetricsPublisher@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t key path setter for ElapsedTimeMetricsPublisher.elapsedTime : ElapsedTimeMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t ElapsedTimeMetricsPublisher.$elapsedTime.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for ElapsedTimeMetricsPublisher.$elapsedTime : ElapsedTimeMetricsPublisher(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ElapsedTimeMetricsPublisher.$elapsedTime : ElapsedTimeMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t ElapsedTimeMetricsPublisher.$elapsedTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ElapsedTimeMetricsPublisher.$elapsedTime.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher__elapsedTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ElapsedTimeMetricsPublisher.$elapsedTime.modify;
}

void ElapsedTimeMetricsPublisher.$elapsedTime.modify(uint64_t a1, char a2)
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

uint64_t ElapsedTimeMetricsPublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Published.init(initialValue:)();
  *(v3 + OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher_adjustedTime) = 0;
  return v3;
}

uint64_t ElapsedTimeMetricsPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  v6 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher__elapsedTime;
  v8[1] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  *(v0 + OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher_adjustedTime) = 0;
  return v0;
}

uint64_t ElapsedTimeMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher__elapsedTime;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ElapsedTimeMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher__elapsedTime;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ElapsedTimeMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double ElapsedTimeMetricsPublisher.protobuf.getter@<D0>(double *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher() + 20);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *a1 = v4;
  return result;
}

uint64_t ElapsedTimeMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v4 + *(v2 + 20);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *v4 = v8[1];
  lazy protocol witness table accessor for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v6 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v4);
  return v6;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ElapsedTimeMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized ElapsedTimeMetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

double protocol witness for Protable.protobuf.getter in conformance ElapsedTimeMetricsPublisher@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = a1 + *(type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher() + 20);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v6;
  *a1 = v6;
  return result;
}

uint64_t protocol witness for ProDatable.wireData() in conformance ElapsedTimeMetricsPublisher()
{
  v1 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  v7 = v5 + *(v3 + 20);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *v5 = v10[1];
  lazy protocol witness table accessor for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v8 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v5);
  return v8;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance ElapsedTimeMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static ElapsedTimeMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance ElapsedTimeMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized ElapsedTimeMetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static ElapsedTimeMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v22[0] = a2;
  v3 = type metadata accessor for BinaryDecodingOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v14 = type metadata accessor for ElapsedTimeMetricsPublisher();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher__elapsedTime;
  *&v23 = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(v17 + v18, v13, v9);
  *(v17 + OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher_adjustedTime) = 0;
  v26 = a1;
  v27 = v22[0];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  outlined copy of Data._Representation(a1, v22[0]);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v19 = v22[1];
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v19)
  {
  }

  else
  {
    v20 = *v8;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v23 = v20;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8);
  }

  return v17;
}

uint64_t specialized ElapsedTimeMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = type metadata accessor for BinaryDecodingOptions();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1;
  v26 = a2;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v16 = v12;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    v17 = type metadata accessor for ElapsedTimeMetricsPublisher();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v16 = swift_allocObject();
    v20 = OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher__elapsedTime;
    *&v23[0] = 0;
    Published.init(initialValue:)();
    (*(v6 + 32))(v16 + v20, v9, v5);
    *(v16 + OBJC_IVAR____TtC11WorkoutCore27ElapsedTimeMetricsPublisher_adjustedTime) = 0;
    v21 = *v15;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v23[0] = v21;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v15);
  }

  return v16;
}

uint64_t type metadata accessor for ElapsedTimeMetricsPublisher()
{
  result = type metadata singleton initialization cache for ElapsedTimeMetricsPublisher;
  if (!type metadata singleton initialization cache for ElapsedTimeMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ElapsedTimeMetricsPublisher()
{
  type metadata accessor for Published<Double>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t MockWorkoutDomainAccessor.__allocating_init(powerSavingModeEnabled:workoutExtendedModeSupported:workoutExtendedModeEnabled:precisionStartEnabled:workoutPickerWheelchairMode:workoutPickerFitnessJrMode:)(char a1, char a2, char a3, char a4, char a5, char a6)
{
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  *(v12 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v12 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v13);
  *(v12 + 16) = a1;
  *(v12 + 17) = a2;
  *(v12 + 18) = a3;
  *(v12 + 19) = a4;
  *(v12 + 40) = a5;
  *(v12 + 41) = a6;
  return v12;
}

uint64_t MockWorkoutDomainAccessor.init(powerSavingModeEnabled:workoutExtendedModeSupported:workoutExtendedModeEnabled:precisionStartEnabled:workoutPickerWheelchairMode:workoutPickerFitnessJrMode:)(char a1, char a2, char a3, char a4, char a5, char a6)
{
  v13 = MEMORY[0x277D84F90];
  *(v6 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v6 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v13);
  *(v6 + 16) = a1;
  *(v6 + 17) = a2;
  *(v6 + 18) = a3;
  *(v6 + 19) = a4;
  *(v6 + 40) = a5;
  *(v6 + 41) = a6;
  return v6;
}

double MockWorkoutDomainAccessor.value(forKey:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

Swift::Bool __swiftcall MockWorkoutDomainAccessor.BOOL(forKey:)(Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
  if (v6)
  {
    v7 = *(*(v4 + 56) + v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t MockWorkoutDomainAccessor.data(forPerGizmoDomainAndKey:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = *(v5 + 56) + 16 * v6;
    v9 = *v8;
    outlined copy of Data._Representation(*v8, *(v8 + 8));
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t MockWorkoutDomainAccessor.writeDataPerGizmoDomainAndKey(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();

  outlined copy of Data._Representation(a3, a4);
  v9 = *(v4 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + 24);
  *(v4 + 24) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a4, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v4 + 24) = v12;
  return swift_endAccess();
}

Swift::Void __swiftcall MockWorkoutDomainAccessor.writeBoolPerGizmoDomainAndKey(_:value:)(Swift::String _, Swift::Bool value)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  swift_beginAccess();
  v6 = *(v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 32);
  *(v2 + 32) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(value, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
  *(v2 + 32) = v8;
  swift_endAccess();
}

uint64_t MockWorkoutDomainAccessor.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t MockWorkoutDomainAccessor.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for downhillSnowSports()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static WOLog.downhillSnowSports);
  __swift_project_value_buffer(v0, static WOLog.downhillSnowSports);
  return Logger.init(subsystem:category:)();
}

void one-time initialization function for logDateFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B4605E0);
  [v0 setDateFormat_];

  static WOLog.logDateFormatter = v0;
}

id static WOLog.logDateFormatter.getter()
{
  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v1 = static WOLog.logDateFormatter;

  return v1;
}

Swift::Void __swiftcall Logger.woTrace(file:function:)(Swift::String file, Swift::String function)
{
  object = function._object;
  countAndFlagsBits = function._countAndFlagsBits;
  v4 = file._object;
  v5 = file._countAndFlagsBits;
  v29 = file;
  lazy protocol witness table accessor for type String and conformance String();
  v6 = (StringProtocol.components<A>(separatedBy:)() + 16);
  if (*v6)
  {
    v7 = &v6[2 * *v6];
    v5 = *v7;
    v4 = v7[1];
  }

  else
  {
  }

  specialized Collection<>.firstIndex(of:)(46, 0xE100000000000000, v5, v4);
  v8 = String.subscript.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x20F2E6D00](v8, v10, v12, v14);
  v17 = v16;

  specialized Collection<>.firstIndex(of:)(40, 0xE100000000000000, countAndFlagsBits, object);
  v18 = String.subscript.getter();
  v19 = MEMORY[0x20F2E6D00](v18);
  v21 = v20;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29._countAndFlagsBits = v25;
    *v24 = 67109634;
    v26 = pthread_self();
    *(v24 + 4) = pthread_mach_thread_np(v26);
    *(v24 + 8) = 2080;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v29._countAndFlagsBits);

    *(v24 + 10) = v27;
    *(v24 + 18) = 2080;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v29._countAndFlagsBits);

    *(v24 + 20) = v28;
    _os_log_impl(&dword_20AEA4000, v22, v23, "[%u] %s::%s", v24, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v25, -1, -1);
    MEMORY[0x20F2E9420](v24, -1, -1);
  }

  else
  {
  }
}

uint64_t ClassNameConvertible.className.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return String.init<A>(describing:)();
}

uint64_t getEnumTagSinglePayload for WOLog(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WOLog(_WORD *result, int a2, int a3)
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

id static NLSessionActivityGoal.makeOpenGoal()()
{
  v0 = objc_allocWithZone(MEMORY[0x277D0A838]);

  return [v0 initWithGoalTypeIdentifier:0 value:0];
}

id static NLSessionActivityGoal.makeTimeGoal(minutes:)(SEL *a1, uint64_t a2, double a3)
{
  v5 = [objc_opt_self() *a1];
  v6 = [objc_opt_self() quantityWithUnit:v5 doubleValue:a3];

  v7 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:a2 value:v6];
  return v7;
}

id static NLSessionActivityGoal.makeTimeAndDistanceGoal()()
{
  v0 = objc_opt_self();
  v1 = [v0 minuteUnit];
  v2 = objc_opt_self();
  v3 = [v2 quantityWithUnit:v1 doubleValue:1.0];

  v4 = [v0 yardUnit];
  v5 = [v2 quantityWithUnit:v4 doubleValue:50.0];

  v6 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v3 requiredDistance:v5];
  return v6;
}

id static NLSessionActivityGoal.make(goalType:)(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v3 = [objc_opt_self() minuteUnit];
      v4 = [objc_opt_self() quantityWithUnit:v3 doubleValue:30.0];

      v5 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v4];
LABEL_12:
      v8 = v5;

      return v8;
    }

    if (a1 == 3)
    {
      v7 = [objc_opt_self() kilocalorieUnit];
      v4 = [objc_opt_self() quantityWithUnit:v7 doubleValue:200.0];

      v5 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:3 value:v4];
      goto LABEL_12;
    }

LABEL_13:
    _StringGuts.grow(_:)(37);

    MEMORY[0x20F2E6D80](0x6E776F6E6B6E55, 0xE700000000000000);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v6 = [objc_opt_self() mileUnit];
      v4 = [objc_opt_self() quantityWithUnit:v6 doubleValue:2.0];

      v5 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v4];
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v1 = objc_allocWithZone(MEMORY[0x277D0A838]);

  return [v1 initWithGoalTypeIdentifier:0 value:0];
}

id static NLSessionActivityGoal.makeDefault(goalType:unitManager:activityType:)(uint64_t a1, id a2)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v4 = [objc_opt_self() minuteUnit];
      v5 = [objc_opt_self() quantityWithUnit:v4 doubleValue:0.0];

      v6 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v5];
      return v6;
    }

    if (a1 == 3)
    {
      v7 = [a2 userActiveEnergyBurnedUnit];
      v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:0.0];
      v9 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:3 value:v8];
      goto LABEL_12;
    }

LABEL_14:
    _StringGuts.grow(_:)(37);

    MEMORY[0x20F2E6D80](0x6E776F6E6B6E55, 0xE700000000000000);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v7 = [a2 userDistanceHKUnitForActivityType_];
      v8 = [objc_opt_self() quantityWithUnit:v7 doubleValue:0.0];
      v9 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v8];
LABEL_12:
      v10 = v9;

      return v10;
    }

    goto LABEL_14;
  }

  v2 = objc_allocWithZone(MEMORY[0x277D0A838]);

  return [v2 initWithGoalTypeIdentifier:0 value:0];
}

id static NLSessionActivityGoal.makeDefaultDistanceGoal(activityType:unitManager:)(uint64_t a1, id a2)
{
  v2 = [a2 userDistanceHKUnitForActivityType_];
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:0.0];
  v4 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v3];

  return v4;
}

id static NLSessionActivityGoal.makeDefaultEnergyGoal(unitManager:)(void *a1)
{
  v1 = [a1 userActiveEnergyBurnedUnit];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:0.0];
  v3 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:3 value:v2];

  return v3;
}

id static NLSessionActivityGoal.makeEnergyGoal()(SEL *a1, uint64_t a2, double a3)
{
  v5 = [objc_opt_self() *a1];
  v6 = [objc_opt_self() quantityWithUnit:v5 doubleValue:a3];

  v7 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:a2 value:v6];
  return v7;
}

id static NLSessionActivityGoal.makeDefaultTimeAndDistanceGoal(activityType:unitManager:)(uint64_t a1, id a2)
{
  v2 = [a2 userDistanceHKUnitForActivityType_];
  v3 = [objc_opt_self() minuteUnit];
  v4 = objc_opt_self();
  v5 = [v4 quantityWithUnit:v3 doubleValue:3.0];

  v6 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v5];
  v7 = [v4 quantityWithUnit:v2 doubleValue:100.0];
  [v6 setRequiredDistance_];

  return v6;
}

id static NLSessionActivityGoal.makeDefaultDistanceGoalWithPresets(activityType:unitManager:)(void *a1, id a2)
{
  v3 = [a2 userDistanceHKUnitForActivityType_];
  v4 = [objc_opt_self() meterUnit];
  v5 = [v3 _isCompatibleWithUnit_];

  if (v5)
  {
    v6 = [v3 _isMetricDistance];
  }

  else
  {
    v6 = 0;
  }

  v7 = specialized static NLSessionActivityGoal.defaultDistanceValue(for:isMetric:)(a1, v6);
  v8 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v7];

  return v8;
}

id static NLSessionActivityGoal.makeDefaultGoalForIntervals(goalType:activityType:stepType:unitManager:)(uint64_t a1, id a2, unsigned __int8 *a3, id a4)
{
  v5 = *a3;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = [a4 userDistanceHKUnitForActivityType_];
        v7 = objc_opt_self();
        v8 = [v7 meterUnit];
        v9 = [v6 _isCompatibleWithUnit_];

        if (v9 && [v6 _isMetricDistance])
        {
          if ([a2 effectiveTypeIdentifier] != 46 || objc_msgSend(a2, sel_swimmingLocationType) != 1)
          {
            v10 = [v7 meterUnit];
            v29 = objc_opt_self();
            if ((v5 & 0xFE) == 2)
            {
              v12 = [v29 quantityWithUnit:v10 doubleValue:1000.0];
            }

            else
            {
              v12 = [v29 quantityWithUnit:v10 doubleValue:400.0];
            }

            goto LABEL_40;
          }

          v10 = [v7 meterUnit];
          v11 = objc_opt_self();
          if (v5 == 2)
          {
            goto LABEL_9;
          }
        }

        else
        {
          if ([a2 effectiveTypeIdentifier] != 46 || objc_msgSend(a2, sel_swimmingLocationType) != 1)
          {
            v10 = [v7 mileUnit];
            v28 = objc_opt_self();
            if ((v5 & 0xFE) == 2)
            {
              v12 = [v28 quantityWithUnit:v10 doubleValue:1.0];
            }

            else
            {
              v12 = [v28 quantityWithUnit:v10 doubleValue:0.25];
            }

            goto LABEL_40;
          }

          v10 = [v7 yardUnit];
          v11 = objc_opt_self();
          if (v5 == 2)
          {
LABEL_9:
            v12 = [v11 quantityWithUnit:v10 doubleValue:200.0];
LABEL_40:
            v30 = v12;

            v31 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v30];
            return v31;
          }
        }

        v12 = [v11 quantityWithUnit:v10 doubleValue:100.0];
        goto LABEL_40;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
LABEL_12:
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
        v17 = swift_slowAlloc();
        v32 = v17;
        *v16 = 136315138;
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E776F6E6B6E55, 0xE700000000000000, &v32);

        *(v16 + 4) = v18;
        _os_log_impl(&dword_20AEA4000, v14, v15, "Unsupported goal type for intervals: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x20F2E9420](v17, -1, -1);
        MEMORY[0x20F2E9420](v16, -1, -1);
      }
    }

LABEL_17:
    v19 = objc_allocWithZone(MEMORY[0x277D0A838]);

    return [v19 initWithGoalTypeIdentifier:0 value:0];
  }

  if ([a2 effectiveTypeIdentifier] == 46 && objc_msgSend(a2, sel_swimmingLocationType) == 1)
  {
    v21 = v5 == 2;
    v22 = 1.0;
    v23 = 5.0;
  }

  else
  {
    v21 = (v5 & 0xFE) == 2;
    v22 = 5.0;
    v23 = 10.0;
  }

  if (v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  v25 = [objc_opt_self() minuteUnit];
  v26 = [objc_opt_self() quantityWithUnit:v25 doubleValue:v24];

  v27 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v26];
  return v27;
}

id specialized static NLSessionActivityGoal.defaultDistanceValue(for:isMetric:)(void *a1, char a2)
{
  switch([a1 effectiveTypeIdentifier])
  {
    case 0xDuLL:
      v11 = objc_opt_self();
      if (a2)
      {
        v5 = [v11 meterUnitWithMetricPrefix_];
        v6 = 10.0;
      }

      else
      {
        v5 = [v11 mileUnit];
        v6 = 7.0;
      }

      break;
    case 0x15uLL:
      v10 = objc_opt_self();
      if (a2)
      {
        v5 = [v10 meterUnitWithMetricPrefix_];
        v6 = 1.0;
      }

      else
      {
        v5 = [v10 mileUnit];
        v6 = 0.5;
      }

      break;
    case 0x18uLL:
    case 0x34uLL:
      v8 = objc_opt_self();
      if (a2)
      {
        v5 = [v8 meterUnitWithMetricPrefix_];
        v6 = 2.5;
      }

      else
      {
        v5 = [v8 mileUnit];
        v6 = 1.5;
      }

      break;
    case 0x1FuLL:
      v12 = objc_opt_self();
      if ((a2 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    case 0x23uLL:
    case 0x25uLL:
    case 0x27uLL:
    case 0x3CuLL:
    case 0x47uLL:
      v7 = objc_opt_self();
      if (a2)
      {
        v5 = [v7 meterUnitWithMetricPrefix_];
        v6 = 5.0;
      }

      else
      {
        v5 = [v7 mileUnit];
        v6 = 3.0;
      }

      break;
    case 0x2EuLL:
      v13 = [a1 isPoolSwimming];
      v12 = objc_opt_self();
      if (v13)
      {
        if (a2)
        {
          v5 = [v12 meterUnit];
        }

        else
        {
          v5 = [v12 yardUnit];
        }

        v6 = 1500.0;
      }

      else if (a2)
      {
LABEL_18:
        v5 = [v12 meterUnitWithMetricPrefix_];
        v6 = 1.5;
      }

      else
      {
LABEL_26:
        v5 = [v12 mileUnit];
        v6 = 1.0;
      }

      break;
    case 0x3DuLL:
    case 0x43uLL:
      v9 = objc_opt_self();
      if (a2)
      {
        v5 = [v9 meterUnitWithMetricPrefix_];
        v6 = 6.0;
      }

      else
      {
        v5 = [v9 mileUnit];
        v6 = 4.0;
      }

      break;
    default:
      v4 = objc_opt_self();
      if (a2)
      {
        v5 = [v4 meterUnitWithMetricPrefix_];
        v6 = 3.0;
      }

      else
      {
        v5 = [v4 mileUnit];
        v6 = 2.0;
      }

      break;
  }

  v14 = v5;
  v15 = [objc_opt_self() quantityWithUnit:v14 doubleValue:v6];

  return v15;
}

void PacerWorkoutConfiguration.workoutKitRepresentation.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for WorkoutGoal();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = (v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v9 = (v34 - v8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v35 = *(v40 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v40);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v39 = *(v13 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v34 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = v42;
  v18 = [v42 value];

  if (!v18)
  {
    goto LABEL_6;
  }

  v34[1] = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = v42;
  v20 = [v42 value];

  if (!v20)
  {

LABEL_6:
    v22 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277CE4008], v22);
    swift_willThrow();
    return;
  }

  v21 = v41;
  HKQuantity.lengthMeasurement.getter();
  if (v21)
  {
  }

  else
  {
    HKQuantity.durationMeasurement.getter();
    v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v25 = *(v2 + v24);
    v41 = FIUIWorkoutActivityType.healthKitRepresentation.getter();

    Measurement.value.getter();
    v27 = v26;
    v28 = Measurement.unit.getter();
    *v9 = v27;
    v9[1] = v28;
    v29 = *MEMORY[0x277CE3F78];
    v37 = *(v37 + 104);
    (v37)(v9, v29, v38);
    Measurement.value.getter();
    v31 = v30;
    v32 = Measurement.unit.getter();
    v33 = v36;
    *v36 = v31;
    v33[1] = v32;
    (v37)(v33, *MEMORY[0x277CE3F68], v38);
    PacerWorkout.init(configuration:distanceGoal:timeGoal:)();

    (*(v35 + 8))(v12, v40);
    (*(v39 + 8))(v16, v13);
  }
}

id specialized static PacerWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:validator:)(uint64_t a1, char *a2, void *a3, char *a4)
{
  v59 = a4;
  v52 = a2;
  v53 = a3;
  v55 = type metadata accessor for UUID();
  v57 = *(v55 - 8);
  v4 = *(v57 + 64);
  v5 = MEMORY[0x28223BE20](v55);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v58 = &v49 - v8;
  MEMORY[0x28223BE20](v7);
  v56 = &v49 - v9;
  v61 = type metadata accessor for WorkoutGoal();
  v10 = *(v61 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v61);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v17 setActivityType_];
  [v17 setLocationType_];
  v18 = HKWorkoutConfiguration.fiuiWorkoutActivityType(isPartOfMultisport:)(0);
  PacerWorkout.distanceGoal.getter();
  v63[0] = 3;
  v19 = v18;
  v20 = v18;
  v21 = v60;
  v22 = v59;
  v23 = WorkoutGoal.workoutCoreRepresentation(activityType:configurationType:validator:)(v20, v63, v59);
  if (v21)
  {
    v25 = *(v10 + 8);
    v24 = (v10 + 8);
    v25(v16, v61);
  }

  else
  {
    v51 = v23;
    v60 = v17;
    v26 = *(v10 + 8);
    v26(v16, v61);
    PacerWorkout.timeGoal.getter();
    v63[0] = 3;
    v28 = WorkoutGoal.workoutCoreRepresentation(activityType:configurationType:validator:)(v19, v63, v22);
    v26(v14, v61);
    v29 = v56;
    v30 = *(v57 + 16);
    v31 = v55;
    v30(v56, v52, v55);
    v30(v58, v29, v31);
    v50 = v30;
    v32 = objc_allocWithZone(type metadata accessor for PacerWorkoutConfiguration());
    v61 = 0;
    v33 = v32;
    swift_beginAccess();
    v34 = v51;
    v64 = v51;
    type metadata accessor for NLSessionActivityGoal();
    v59 = v34;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    v64 = v28;
    v52 = v28;
    Published.init(initialValue:)();
    swift_endAccess();
    v35 = v54;
    v30(v54, v58, v31);
    *&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v36 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
    v37 = type metadata accessor for Date();
    v38 = *(*(v37 - 8) + 56);
    v39 = v19;
    v38(&v33[v36], 1, 1, v37);
    v38(&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v37);
    v40 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
    v41 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v41 - 8) + 56))(&v33[v40], 1, 1, v41);
    v42 = v57;
    (*(v57 + 56))(&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v31);
    v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v50(&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v35, v31);
    *&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v39;
    v33[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 3;
    v44 = v53;
    *&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v53;
    swift_beginAccess();
    *&v33[v43] = 0;
    v33[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v45 = type metadata accessor for WorkoutConfiguration();
    v62.receiver = v33;
    v62.super_class = v45;
    v46 = v39;
    v47 = v44;
    v24 = objc_msgSendSuper2(&v62, sel_init);

    v48 = *(v42 + 8);
    v48(v35, v31);
    v48(v58, v31);
    v48(v56, v31);
  }

  return v24;
}

unint64_t lazy protocol witness table accessor for type ImportError and conformance ImportError()
{
  result = lazy protocol witness table cache variable for type ImportError and conformance ImportError;
  if (!lazy protocol witness table cache variable for type ImportError and conformance ImportError)
  {
    type metadata accessor for ImportError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImportError and conformance ImportError);
  }

  return result;
}

uint64_t BackgroundAssertionType.description.getter()
{
  v1 = 0x6E6F6973736553;
  if (*v0 == 1)
  {
    v1 = 0x797265766F636552;
  }

  if (!*v0)
  {
    v1 = 1702256979;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 1702256979;
  }
}

WorkoutCore::BackgroundAssertionType_optional __swiftcall BackgroundAssertionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BackgroundAssertionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BackgroundAssertionType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BackgroundAssertionType()
{
  v1 = 0x6E6F6973736553;
  if (*v0 == 1)
  {
    v1 = 0x797265766F636552;
  }

  if (!*v0)
  {
    v1 = 1702256979;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return 1702256979;
  }
}

unint64_t BackgroundAssertionAcquireResult.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BackgroundAssertionAcquireResult()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BackgroundAssertionAcquireResult()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance BackgroundAssertionAcquireResult@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t BackgroundAssertionAcquireResult.description.getter(uint64_t a1)
{
  v1 = 0x7243746F6E6E6163;
  v2 = 0x4579646165726C61;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BackgroundAssertionAcquireResult()
{
  v1 = *v0;
  v2 = 0x7243746F6E6E6163;
  v3 = 0x4579646165726C61;
  if (*v0 != 1)
  {
    v3 = 0;
  }

  *v0;
  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x73736563637573;
  }
}

id BackgroundAssertionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BackgroundAssertionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundAssertionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)(char *a1)
{
  v2 = *(v1 + OBJC_IVAR___WOBackgroundAssertionManager_serialQueue);
  v4 = *a1;
  OS_dispatch_queue.sync<A>(execute:)();
  return v5;
}

uint64_t closure #1 in closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)(int a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v21 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  type metadata accessor for OS_dispatch_queue();
  v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 16))(&v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v12);
  v16 = (*(v13 + 80) + 17) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v21;
  (*(v13 + 32))(v17 + v16, &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v12);
  *(v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_43;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_1(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v7, v18);
  _Block_release(v18);

  (*(v25 + 8))(v7, v4);
  return (*(v23 + 8))(v11, v24);
}

void closure #1 in closure #1 in closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)(int a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static WOLog.default);
  (*(v7 + 16))(v10, a2, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v34 = a1;
  if (v14)
  {
    v32 = a3;
    v33 = a2;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35[0] = v17;
    v18 = 0xE700000000000000;
    v19 = 0x6E6F6973736553;
    *v15 = 136315650;
    if (a1 == 1)
    {
      v19 = 0x797265766F636552;
      v18 = 0xE800000000000000;
    }

    if (!a1)
    {
      v19 = 1702256979;
      v18 = 0xE400000000000000;
    }

    if (a1 <= 2u)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1702256979;
    }

    if (a1 <= 2u)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v35);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v7 + 8))(v10, v6);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v35);

    *(v15 + 14) = v26;
    *(v15 + 22) = 2112;
    v27 = [objc_opt_self() currentThread];
    *(v15 + 24) = v27;
    *v16 = v27;
    _os_log_impl(&dword_20AEA4000, v12, v13, "Releasing background assertion (type: %s, uuid: %s) due timeout of %%f seconds, thread: %@", v15, 0x20u);
    outlined destroy of NSObject?(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);

    a2 = v33;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = *(Strong + OBJC_IVAR___WOBackgroundAssertionManager_serialQueue);
    v30 = MEMORY[0x28223BE20](Strong);
    *(&v32 - 4) = v30;
    *(&v32 - 24) = v34;
    *(&v32 - 2) = a2;
    v31 = v30;
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

uint64_t BackgroundAssertionManager.release(type:uuid:)(char *a1)
{
  return BackgroundAssertionManager.release(type:uuid:)(a1);
}

{
  v2 = *(v1 + OBJC_IVAR___WOBackgroundAssertionManager_serialQueue);
  v4 = *a1;
  OS_dispatch_queue.sync<A>(execute:)();
  return v5;
}

void closure #1 in BackgroundAssertionManager.release(type:uuid:)(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v59 = a4;
  v61 = type metadata accessor for UUID();
  v7 = *(v61 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v61);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v57 - v12;
  v14 = OBJC_IVAR___WOBackgroundAssertionManager_assertions;
  swift_beginAccess();
  v15 = *(a1 + v14);

  v16 = specialized NestedDictionary.get(_:_:)(a2, a3, v15);

  if (v16)
  {
    [v16 invalidate];
    swift_beginAccess();
    specialized NestedDictionary.remove(_:_:)(a2, a3);
    swift_endAccess();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.default);
    v18 = v61;
    (*(v7 + 16))(v13, a3, v61);
    v19 = v16;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v58 = v21;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v60[0] = v57;
      v24 = a2;
      v25 = 0xE700000000000000;
      *v22 = 138413058;
      *(v22 + 4) = v19;
      *v23 = v16;
      *(v22 + 12) = 2080;
      v26 = 1702256979;
      v27 = 0x797265766F636552;
      if (a2 == 1)
      {
        v25 = 0xE800000000000000;
      }

      else
      {
        v27 = 0x6E6F6973736553;
      }

      if (a2)
      {
        v26 = v27;
      }

      else
      {
        v25 = 0xE400000000000000;
      }

      if (a2 <= 2u)
      {
        v28 = v26;
      }

      else
      {
        v28 = 1702256979;
      }

      if (v24 <= 2)
      {
        v29 = v25;
      }

      else
      {
        v29 = 0xE400000000000000;
      }

      v30 = v19;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v60);

      *(v22 + 14) = v31;
      *(v22 + 22) = 2080;
      v32 = UUID.uuidString.getter();
      v34 = v33;
      (*(v7 + 8))(v13, v61);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v60);

      *(v22 + 24) = v35;
      *(v22 + 32) = 2112;
      v36 = [objc_opt_self() currentThread];
      *(v22 + 34) = v36;
      v23[1] = v36;
      _os_log_impl(&dword_20AEA4000, v20, v58, "Released background assertion %@ (type: %s, uuid: %s), thread: %@", v22, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v23, -1, -1);
      v37 = v57;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v37, -1, -1);
      MEMORY[0x20F2E9420](v22, -1, -1);

      v38 = 1;
    }

    else
    {

      (*(v7 + 8))(v13, v18);
      v38 = 1;
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static WOLog.default);
    v40 = v61;
    (*(v7 + 16))(v11, a3, v61);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v60[0] = v45;
      v46 = 0xE700000000000000;
      *v43 = 136315650;
      v47 = 1702256979;
      v48 = 0x797265766F636552;
      if (a2 == 1)
      {
        v46 = 0xE800000000000000;
      }

      else
      {
        v48 = 0x6E6F6973736553;
      }

      if (a2)
      {
        v47 = v48;
      }

      else
      {
        v46 = 0xE400000000000000;
      }

      if (a2 <= 2u)
      {
        v49 = v47;
      }

      else
      {
        v49 = 1702256979;
      }

      if (a2 <= 2u)
      {
        v50 = v46;
      }

      else
      {
        v50 = 0xE400000000000000;
      }

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v60);

      *(v43 + 4) = v51;
      *(v43 + 12) = 2080;
      v52 = UUID.uuidString.getter();
      v54 = v53;
      (*(v7 + 8))(v11, v61);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v60);

      *(v43 + 14) = v55;
      *(v43 + 22) = 2112;
      v56 = [objc_opt_self() currentThread];
      *(v43 + 24) = v56;
      *v44 = v56;
      _os_log_impl(&dword_20AEA4000, v41, v42, "No background assertion found to release for (type: %s, uuid: %s), thread: %@", v43, 0x20u);
      outlined destroy of NSObject?(v44);
      MEMORY[0x20F2E9420](v44, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v45, -1, -1);
      MEMORY[0x20F2E9420](v43, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v40);
    }

    v38 = 0;
  }

  *v59 = v38;
}

unint64_t specialized NestedDictionary.remove(_:_:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  v6 = specialized Dictionary.subscript.modify(v11, a1);
  if (*v7)
  {
  }

  result = (v6)(v11, 0);
  v9 = *v2;
  if (*(*v3 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v10 & 1) != 0 && !*(*(*(v9 + 56) + 8 * result) + 16))
    {
      specialized Dictionary._Variant.removeValue(forKey:)(a1);
    }
  }

  return result;
}

void closure #1 in BackgroundAssertionManager.isValid(type:uuid:)(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X8>)
{
  v8 = OBJC_IVAR___WOBackgroundAssertionManager_assertions;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_7;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  if (!*(v12 + 16))
  {
    goto LABEL_7;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  if ((v14 & 1) == 0)
  {

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v16 = [v15 isValid];

LABEL_8:
  *a4 = v16;
}

uint64_t BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(char *a1, uint64_t a2, double a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = *a1;
  v11 = *&v3[OBJC_IVAR___WOBackgroundAssertionManager_serialQueue];
  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v12 = (*(v8 + 80) + 25) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = v10;
  (*(v8 + 32))(v13 + v12, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:);
  *(v14 + 24) = v13;
  aBlock[4] = _sIg_Ieg_TRTA_3;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_42;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  dispatch_sync(v11, v15);
  _Block_release(v15);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &aBlock[-1] - v13;
  v15 = OBJC_IVAR___WOBackgroundAssertionManager_assertions;
  swift_beginAccess();
  v16 = *(a1 + v15);

  v17 = specialized NestedDictionary.get(_:_:)(a2, a3, v16);

  if (v17)
  {
    v18 = objc_opt_self();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(v14, a3, v8);
    v20 = (*(v9 + 80) + 33) & ~*(v9 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    *(v21 + 24) = v19;
    *(v21 + 32) = a2;
    (*(v9 + 32))(v21 + v20, v14, v8);
    aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = &block_descriptor_23_1;
    v22 = _Block_copy(aBlock);
    v23 = v17;

    v24 = [v18 scheduledTimerWithTimeInterval:0 repeats:v22 block:a4];
    _Block_release(v22);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.default);
    v26 = v23;
    v27 = v24;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v30 = 138413058;
      *(v30 + 4) = v27;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v26;
      *v31 = v27;
      v31[1] = v17;
      *(v30 + 22) = 2080;
      v33 = v26;
      v34 = v27;
      v35 = Double.description.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, aBlock);

      *(v30 + 24) = v37;
      *(v30 + 32) = 2112;
      v38 = [objc_opt_self() currentThread];
      *(v30 + 34) = v38;
      v31[2] = v38;
      _os_log_impl(&dword_20AEA4000, v28, v29, "Scheduled time bomb timer %@ to nuke background assertion %@ in %s seconds, thread: %@", v30, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x20F2E9420](v32, -1, -1);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static WOLog.default);
    (*(v9 + 16))(v12, a3, v8);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      v45 = 0xE700000000000000;
      v46 = 0x6E6F6973736553;
      *v42 = 136315650;
      if (a2 == 1)
      {
        v46 = 0x797265766F636552;
        v45 = 0xE800000000000000;
      }

      if (!a2)
      {
        v46 = 1702256979;
        v45 = 0xE400000000000000;
      }

      if (a2 <= 2u)
      {
        v47 = v46;
      }

      else
      {
        v47 = 1702256979;
      }

      if (a2 <= 2u)
      {
        v48 = v45;
      }

      else
      {
        v48 = 0xE400000000000000;
      }

      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, aBlock);

      *(v42 + 4) = v49;
      *(v42 + 12) = 2080;
      v50 = UUID.uuidString.getter();
      v52 = v51;
      (*(v9 + 8))(v12, v8);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, aBlock);

      *(v42 + 14) = v53;
      *(v42 + 22) = 2112;
      v54 = [objc_opt_self() currentThread];
      *(v42 + 24) = v54;
      *v43 = v54;
      _os_log_impl(&dword_20AEA4000, v40, v41, "No background assertion found to time bomb for (type: %s, uuid: %s, thread: %@", v42, 0x20u);
      outlined destroy of NSObject?(v43);
      MEMORY[0x20F2E9420](v43, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v44, -1, -1);
      MEMORY[0x20F2E9420](v42, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }
}

void partial apply for closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(v4, v5, v0 + v2, v3);
}

unint64_t lazy protocol witness table accessor for type BackgroundAssertionAcquireResult and conformance BackgroundAssertionAcquireResult()
{
  result = lazy protocol witness table cache variable for type BackgroundAssertionAcquireResult and conformance BackgroundAssertionAcquireResult;
  if (!lazy protocol witness table cache variable for type BackgroundAssertionAcquireResult and conformance BackgroundAssertionAcquireResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundAssertionAcquireResult and conformance BackgroundAssertionAcquireResult);
  }

  return result;
}

uint64_t closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(void *a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v31 = a4;
  v29 = a2;
  v30 = a3;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v34 = *(v10 - 8);
  v35 = v10;
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v32 = static OS_dispatch_queue.main.getter();
  (*(v15 + 16))(v17, a5, v14);
  v18 = (*(v15 + 80) + 41) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  v20 = a1;
  v22 = v29;
  v21 = v30;
  *(v19 + 24) = v29;
  *(v19 + 32) = v21;
  *(v19 + 40) = v31;
  (*(v15 + 32))(v19 + v18, v17, v14);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_29_0;
  v23 = _Block_copy(aBlock);
  v24 = v20;
  v25 = v22;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_1(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v26 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v32;
  MEMORY[0x20F2E7580](0, v13, v9, v23);
  _Block_release(v23);

  (*(v36 + 8))(v9, v26);
  return (*(v34 + 8))(v13, v35);
}

void closure #1 in closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(void *a1, void *a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.default);
  v5 = a1;
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412802;
    *(v9 + 4) = v5;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v5;
    v10[1] = v6;
    *(v9 + 22) = 2112;
    v11 = objc_opt_self();
    v12 = v5;
    v13 = v6;
    v14 = [v11 currentThread];
    *(v9 + 24) = v14;
    v10[2] = v14;
    _os_log_impl(&dword_20AEA4000, v7, v8, "Fired time bomb timer %@ to nuke background assertion %@, thread: %@", v9, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR___WOBackgroundAssertionManager_serialQueue);
    v17 = MEMORY[0x28223BE20](Strong);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

uint64_t protocol witness for BackgroundAssertionManagerProtocol.release(type:uuid:) in conformance BackgroundAssertionManager(char *a1)
{
  return protocol witness for BackgroundAssertionManagerProtocol.release(type:uuid:) in conformance BackgroundAssertionManager(a1);
}

{
  v2 = *(*v1 + OBJC_IVAR___WOBackgroundAssertionManager_serialQueue);
  v4 = *a1;
  OS_dispatch_queue.sync<A>(execute:)();
  return v5;
}

uint64_t getEnumTagSinglePayload for BackgroundAssertionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BackgroundAssertionType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v3 + 80) + 33) & ~*(v3 + 80));

  return closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(a1, v4, v5, v6, v7);
}

void partial apply for closure #1 in closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);

  closure #1 in closure #1 in closure #1 in BackgroundAssertionManager.timeBomb(type:uuid:timeout:)(v2, v3);
}

uint64_t objectdestroy_33Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 16);

  return a1(v5, v1 + v3, v4);
}

void closure #1 in BackgroundAssertionManager.release(type:uuid:)partial apply(char *a1@<X8>)
{
  partial apply for closure #1 in BackgroundAssertionManager.release(type:uuid:)(a1);
}

{
  partial apply for closure #1 in BackgroundAssertionManager.release(type:uuid:)(a1);
}

{
  partial apply for closure #1 in BackgroundAssertionManager.release(type:uuid:)(a1);
}

void static MultisportTransitionsStore.save(multisportTransitions:)(void *a1)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for PropertyListEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v38[0] = a1;
  type metadata accessor for MultisportTransitions();
  lazy protocol witness table accessor for type MultisportTransitions and conformance MultisportTransitions(&lazy protocol witness table cache variable for type MultisportTransitions and conformance MultisportTransitions);
  v15 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v17 = v16;

  v18 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v37[0] = 0;
  v20 = [v18 propertyListWithData:isa options:0 format:0 error:v37];

  v21 = v37[0];
  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v22 = objc_opt_self();
    v23 = [v22 standardUserDefaults];
    __swift_project_boxed_opaque_existential_0(v38, v38[3]);
    v24 = _bridgeAnythingToObjectiveC<A>(_:)();
    v25 = MEMORY[0x20F2E6C00](0xD000000000000015, 0x800000020B4606E0);
    [v23 setObject:v24 forKey:v25];

    swift_unknownObjectRelease();
    v26 = MEMORY[0x20F2E6C00](0xD000000000000015, 0x800000020B4606E0);
    [v22 fu:v26 backupStandardUserDefaultsKey:?];

    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static WOLog.multisport);
    v28 = a1;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_20AEA4000, v29, v30, "Saved MultisportTransitions to user defaults multisportTransitions=%@", v31, 0xCu);
      outlined destroy of NSObject?(v32);
      MEMORY[0x20F2E9420](v32, -1, -1);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }

    outlined consume of Data._Representation(v15, v17);

    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    v35 = v21;
    v36 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v15, v17);
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.multisport);
    v6 = v36;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v38[0] = v10;
      *v9 = 136315138;
      v37[0] = v36;
      v11 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v38);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_20AEA4000, v7, v8, "Failed to encode and save MultisportTransitions. error=%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F2E9420](v10, -1, -1);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }

    else
    {
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

id specialized static MultisportTransitionsStore.read()()
{
  v48 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x20F2E6C00](0xD000000000000015, 0x800000020B4606E0);
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v45, v46);
    v3 = objc_opt_self();
    __swift_project_boxed_opaque_existential_0(v46, v47);
    v4 = _bridgeAnythingToObjectiveC<A>(_:)();
    *&v45[0] = 0;
    v5 = [v3 dataWithPropertyList:v4 format:100 options:0 error:v45];
    swift_unknownObjectRelease();
    v6 = *&v45[0];
    if (v5)
    {
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = type metadata accessor for PropertyListDecoder();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      PropertyListDecoder.init()();
      type metadata accessor for MultisportTransitions();
      lazy protocol witness table accessor for type MultisportTransitions and conformance MultisportTransitions(&lazy protocol witness table cache variable for type MultisportTransitions and conformance MultisportTransitions);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

      v34 = *&v45[0];
      if (one-time initialization token for multisport != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static WOLog.multisport);
      v19 = v34;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        *(v38 + 4) = v19;
        *v39 = v19;
        v40 = v19;
        _os_log_impl(&dword_20AEA4000, v36, v37, "Successfully read user multisportTransitions=%@", v38, 0xCu);
        outlined destroy of NSObject?(v39);
        MEMORY[0x20F2E9420](v39, -1, -1);
        MEMORY[0x20F2E9420](v38, -1, -1);
      }

      outlined consume of Data._Representation(v7, v9);
    }

    else
    {
      v20 = v6;
      v21 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for multisport != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static WOLog.multisport);
      v23 = v21;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v45[0] = v27;
        *v26 = 136315138;
        v28 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v29 = String.init<A>(describing:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v45);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_20AEA4000, v24, v25, "Failed to decode MultisportTransitions. error=%s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x20F2E9420](v27, -1, -1);
        MEMORY[0x20F2E9420](v26, -1, -1);
      }

      v32 = type metadata accessor for MultisportTransitions();
      v33 = objc_allocWithZone(v32);
      swift_beginAccess();
      Published.init(initialValue:)();
      swift_endAccess();
      swift_beginAccess();
      Published.init(initialValue:)();
      swift_endAccess();
      v43.receiver = v33;
      v43.super_class = v32;
      v19 = objc_msgSendSuper2(&v43, sel_init);
    }

    __swift_destroy_boxed_opaque_existential_0(v46);
  }

  else
  {
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.multisport);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v15, "MultisportTransitions not present in user defaults.", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    v17 = type metadata accessor for MultisportTransitions();
    v18 = objc_allocWithZone(v17);
    swift_beginAccess();
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    LOBYTE(v45[0]) = 1;
    Published.init(initialValue:)();
    swift_endAccess();
    v44.receiver = v18;
    v44.super_class = v17;
    v19 = objc_msgSendSuper2(&v44, sel_init);
  }

  v41 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t getEnumTagSinglePayload for MultisportTransitionsStore(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MultisportTransitionsStore(_WORD *result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type MultisportTransitions and conformance MultisportTransitions(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MultisportTransitions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *ActivityPickerListStore.init(domainAccessor:)(uint64_t a1)
{
  v13 = a1;
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v12 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v12);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v1[3] = 0xD00000000000001CLL;
  v1[4] = 0x800000020B460780;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  v14 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type ActivityTypeListItem and conformance ActivityTypeListItem(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v12);
  v1[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[2] = v13;
  return v1;
}

uint64_t ActivityPickerListStore.fetchActivityTypesData()()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = MEMORY[0x20F2E6C00](v1, v3);
  v5 = [v2 dataForPerGizmoDomainAndKey_];

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.activityPicker);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, &v13);
      _os_log_impl(&dword_20AEA4000, v8, v9, "workoutDomainAccessor data fetching failed for activityPickerListKey: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    return 0;
  }

  return v6;
}

void closure #1 in ActivityPickerListStore.fetchVisibleActivities()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = ActivityPickerListStore.fetchActivityTypesData()();
  if (v6 >> 60 == 15)
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.activityPicker);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 24), *(a1 + 32), &v30);
      _os_log_impl(&dword_20AEA4000, v8, v9, "workoutDomainAccessor data fetching failed for activityPickerListKey: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }
  }

  else
  {
    v12 = v5;
    v13 = v6;
    v14 = type metadata accessor for JSONDecoder();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
    lazy protocol witness table accessor for type [ActivityTypeListItem] and conformance <A> [A](&lazy protocol witness table cache variable for type [ActivityTypeListItem] and conformance <A> [A], &lazy protocol witness table cache variable for type ActivityTypeListItem and conformance ActivityTypeListItem);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (!v2)
    {
      v27 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore20ActivityTypeListItemC_SayAFGTt0g5Tf4g_n(v30);

      v26 = specialized _copyCollectionToContiguousArray<A>(_:)(v27);

      outlined consume of Data?(v12, v13);

      goto LABEL_14;
    }

    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.activityPicker);
    v18 = v2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v29 = a2;
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v21 = 136315138;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v30);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_20AEA4000, v19, v20, "ActivityPickerListStore's fetchVisibleActivities failed: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x20F2E9420](v28, -1, -1);
      v25 = v21;
      a2 = v29;
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    outlined consume of Data?(v12, v13);
  }

  v26 = MEMORY[0x277D84F90];
LABEL_14:
  *a2 = v26;
}

uint64_t ActivityPickerListStore.addActivityType(_:date:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v45 - v8;
  v10 = FIUIWorkoutActivityType.activityTypeForRegistry()();
  outlined init with copy of Date?(a2, v9);
  v11 = type metadata accessor for ActivityTypeListItem();
  v12 = objc_allocWithZone(v11);
  v13 = specialized ActivityTypeListItem.init(activityType:orderDate:)(v10, v9);
  v14 = v2[5];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v48 = v3;
  v15 = v52;
  v52 = MEMORY[0x277D84F90];
  if (v15 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v46 = v4;
    v47 = v10;
    v16 = 0;
    v51 = (v15 & 0xC000000000000001);
    v4 = (v15 & 0xFFFFFFFFFFFFFF8);
    v10 = i;
    while (1)
    {
      if (v51)
      {
        v21 = MEMORY[0x20F2E7A20](v16, v15);
      }

      else
      {
        if (v16 >= v4[2])
        {
          goto LABEL_15;
        }

        v21 = *(v15 + 8 * v16 + 32);
      }

      v22 = v21;
      v23 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (static NSObject.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v17 = v15;
        v18 = v11;
        v19 = v13;
        v20 = v52[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v13 = v19;
        v11 = v18;
        v15 = v17;
        v10 = i;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v16;
      if (v23 == v10)
      {
        v24 = v52;
        v4 = v46;
        v10 = v47;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_18:

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B425990;
  *(inited + 32) = v13;
  v52 = v24;
  v26 = v13;
  specialized Array.append<A>(contentsOf:)(inited);
  v27 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore20ActivityTypeListItemC_SayAFGTt0g5Tf4g_n(v52);

  specialized _copyCollectionToContiguousArray<A>(_:)(v27);

  v28 = type metadata accessor for JSONEncoder();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  JSONEncoder.init()();

  v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore20ActivityTypeListItemC_SayAFGTt0g5Tf4g_n(v31);

  v33 = specialized _copyCollectionToContiguousArray<A>(_:)(v32);

  v52 = v33;
  lazy protocol witness table accessor for type [ActivityTypeListItem] and conformance <A> [A](&lazy protocol witness table cache variable for type [ActivityTypeListItem] and conformance <A> [A], &lazy protocol witness table cache variable for type ActivityTypeListItem and conformance ActivityTypeListItem);
  v34 = v48;
  v35 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v34)
  {
  }

  else
  {
    v37 = v35;
    v38 = v36;

    v51 = v26;
    v39 = v4[2];
    v40 = MEMORY[0x20F2E6C00](v4[3], v4[4]);
    v41 = v10;
    v42 = v40;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v39 writeDataPerGizmoDomainAndKey:v42 data:isa];

    outlined consume of Data._Representation(v37, v38);
  }
}

BOOL ActivityPickerListStore.removeActivityType(_:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v48 - v7;
  v9 = v1[5];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
  v48 = v3;
  v50 = v10;
  OS_dispatch_queue.sync<A>(execute:)();
  v51 = v2;
  v11 = v54;
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v53 = type metadata accessor for ActivityTypeListItem();
  v13 = objc_allocWithZone(v53);
  v14 = a1;
  v15 = specialized ActivityTypeListItem.init(activityType:orderDate:)(v14, v8);

  v54 = MEMORY[0x277D84F90];
  v16 = v11 >> 62;
  if (v11 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v49 = v16;
    v18 = 0;
    v16 = v11 & 0xC000000000000001;
    v19 = (v11 & 0xFFFFFFFFFFFFFF8);
    v52 = (v11 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v16)
      {
        v25 = MEMORY[0x20F2E7A20](v18, v11);
      }

      else
      {
        if (v18 >= v19[2])
        {
          goto LABEL_15;
        }

        v25 = *(v11 + 8 * v18 + 32);
      }

      v26 = v25;
      v27 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (static NSObject.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v20 = v16;
        v21 = i;
        v22 = v11;
        v23 = v15;
        v24 = v54[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v15 = v23;
        v11 = v22;
        i = v21;
        v16 = v20;
        v19 = v52;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v18;
      if (v27 == i)
      {
        v28 = v54;
        v16 = v49;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_18:
  v29 = v11;
  v30 = v51;
  if ((v28 & 0x8000000000000000) != 0 || (v28 & 0x4000000000000000) != 0)
  {
    v31 = __CocoaSet.count.getter();
    v32 = v29 & 0xFFFFFFFFFFFFFF8;
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v31 = *(v28 + 16);
    v32 = v29 & 0xFFFFFFFFFFFFFF8;
    if (!v16)
    {
LABEL_21:
      v33 = *(v32 + 16);
      goto LABEL_24;
    }
  }

  v33 = __CocoaSet.count.getter();
LABEL_24:

  if (v31 == v33)
  {
    goto LABEL_29;
  }

  v53 = v15;
  v34 = type metadata accessor for JSONEncoder();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  JSONEncoder.init()();

  v38 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore20ActivityTypeListItemC_SayAFGTt0g5Tf4g_n(v37);

  v39 = specialized _copyCollectionToContiguousArray<A>(_:)(v38);

  v54 = v39;
  lazy protocol witness table accessor for type [ActivityTypeListItem] and conformance <A> [A](&lazy protocol witness table cache variable for type [ActivityTypeListItem] and conformance <A> [A], &lazy protocol witness table cache variable for type ActivityTypeListItem and conformance ActivityTypeListItem);
  v40 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v30)
  {
    v42 = v40;
    v43 = v41;

    v44 = v48[3];
    v52 = v48[2];
    v45 = MEMORY[0x20F2E6C00](v44, v48[4]);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v52 writeDataPerGizmoDomainAndKey:v45 data:isa];

    outlined consume of Data._Representation(v42, v43);

    v15 = v53;
LABEL_29:

    goto LABEL_30;
  }

LABEL_30:

  return v31 != v33;
}

uint64_t ActivityPickerListStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t lazy protocol witness table accessor for type [ActivityTypeListItem] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
    lazy protocol witness table accessor for type ActivityTypeListItem and conformance ActivityTypeListItem(a2, type metadata accessor for ActivityTypeListItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ActivityTypeListItem and conformance ActivityTypeListItem(unint64_t *a1, void (*a2)(uint64_t))
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

void closure #1 in ActivityPickerListStore.fetchVisibleActivities()partial apply(void *a1@<X8>)
{
  partial apply for closure #1 in ActivityPickerListStore.fetchVisibleActivities()(a1);
}

{
  _s11WorkoutCore23ActivityPickerListStoreC22fetchVisibleActivitiesSayAA0c4TypeE4ItemCGyFAGyXEfU_TA_0(a1);
}

HKQuantity_optional __swiftcall FIUIWorkoutActivityType.estimatedCalories(healthStore:duration:distance:)(HKHealthStore healthStore, Swift::Double duration, HKQuantity_optional distance)
{
  isa = distance.value.super.isa;
  v39[2] = *MEMORY[0x277D85DE8];
  v6 = objc_opt_self();
  v8 = [v6 isAvailable];
  v9 = 0;
  if (v8)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CC1D98]) init];
    [v10 setWorkoutType_];
    if ([v3 requiresLocationDisambiguation])
    {
      if ([v3 isIndoor])
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      [v10 setLocationType_];
    }

    v12 = HKHealthStore.cmCalorieUserInfo.getter();
    if (isa)
    {
      v14 = objc_opt_self();
      v15 = isa;
      v16 = [v14 meterUnit];
      [(objc_class *)v15 doubleValueForUnit:v16];
      v18 = v17;

      v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }

    else
    {
      v13 = 0;
    }

    v39[0] = 0;
    v19 = [v6 lookupCalorieDataForWorkoutConfiguration:v10 duration:v13 distance:v12 userInfo:v39 errorPtr:duration];

    v20 = v39[0];
    if (v19)
    {
      v21 = objc_opt_self();
      v22 = v20;
      v23 = [v21 kilocalorieUnit];
      v24 = [v19 totalCalories];
      [v24 doubleValue];
      v26 = v25;

      v27 = [objc_opt_self() quantityWithUnit:v23 doubleValue:v26];
      v9 = v27;
    }

    else
    {
      v28 = v39[0];
      v29 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static WOLog.core);
      v31 = v29;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v29;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_20AEA4000, v32, v33, "Failed to lookup estimated calories due to: %@", v34, 0xCu);
        outlined destroy of NSObject?(v35);
        MEMORY[0x20F2E9420](v35, -1, -1);
        MEMORY[0x20F2E9420](v34, -1, -1);
      }

      else
      {
      }

      v9 = 0;
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  result.value.super.isa = v9;
  result.is_nil = v7;
  return result;
}

uint64_t FIUIWorkoutActivityType.cmWorkoutType.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  if ((*MEMORY[0x277CCE1E0] & 0x8000000000000000) == 0 && v1 == *MEMORY[0x277CCE1E0])
  {
    return 0;
  }

  result = [v0 effectiveTypeIdentifier];
  switch(result)
  {
    case 1:
      result = 42;
      break;
    case 3:
      result = 41;
      break;
    case 4:
      result = 52;
      break;
    case 5:
      result = 60;
      break;
    case 6:
      result = 50;
      break;
    case 8:
      result = 64;
      break;
    case 10:
      result = 61;
      break;
    case 13:
      if ([v0 isIndoor])
      {
        result = 5;
      }

      else
      {
        result = 4;
      }

      break;
    case 16:
      result = 9;
      break;
    case 20:
      result = 28;
      break;
    case 21:
      result = 27;
      break;
    case 23:
      result = 57;
      break;
    case 24:
      return result;
    case 25:
      if ([v0 isIndoor])
      {
        result = 48;
      }

      else
      {
        result = 49;
      }

      break;
    case 27:
      result = 45;
      break;
    case 31:
      result = 38;
      break;
    case 34:
      result = 53;
      break;
    case 35:
      if ([v0 isIndoor])
      {
        result = 12;
      }

      else
      {
        result = 35;
      }

      break;
    case 36:
      result = 44;
      break;
    case 37:
      if ([v0 isIndoor])
      {
        result = 18;
      }

      else
      {
        result = 17;
      }

      break;
    case 39:
      if ([v0 isIndoor])
      {
        result = 47;
      }

      else
      {
        result = 46;
      }

      break;
    case 41:
      if ([v0 isIndoor])
      {
        result = 40;
      }

      else
      {
        result = 39;
      }

      break;
    case 42:
      result = 59;
      break;
    case 43:
      result = 56;
      break;
    case 44:
      result = 11;
      break;
    case 46:
      result = 19;
      break;
    case 47:
      result = 62;
      break;
    case 48:
      result = 51;
      break;
    case 49:
      result = 58;
      break;
    case 51:
      result = 55;
      break;
    case 52:
      if ([v0 isIndoor])
      {
        result = 16;
      }

      else
      {
        result = 15;
      }

      break;
    case 57:
      result = 6;
      break;
    case 59:
      result = 30;
      break;
    case 60:
      result = 36;
      break;
    case 61:
      result = 23;
      break;
    case 63:
      result = 22;
      break;
    case 64:
      result = 63;
      break;
    case 65:
      result = 34;
      break;
    case 66:
      result = 32;
      break;
    case 67:
      result = 37;
      break;
    case 70:
      result = 20;
      break;
    case 71:
      result = 21;
      break;
    case 72:
      result = 31;
      break;
    case 74:
      if ([v0 isIndoor])
      {
        result = 66;
      }

      else
      {
        result = 67;
      }

      break;
    case 75:
      result = 43;
      break;
    case 77:
      result = 7;
      break;
    case 79:
      result = 54;
      break;
    case 80:
      result = 29;
      break;
    case 83:
      result = 33;
      break;
    default:
      result = 14;
      break;
  }

  return result;
}

void *DownhillRunsStats.averageHeartRate.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *DownhillRunsStats.maximumSpeed.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *DownhillRunsStats.elevationAscended.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *DownhillRunsStats.elevationDescended.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t DownhillRunsStats.__allocating_init(downhillRuns:)(unint64_t a1)
{
  v2 = swift_allocObject();
  DownhillRunsStats.init(downhillRuns:)(a1);
  return v2;
}

void DownhillRunsStats.init(downhillRuns:)(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v1 + 72) = v3;
  v4 = objc_opt_self();
  v5 = [v4 meterUnit];
  v6 = objc_opt_self();
  v7 = [v6 quantityWithUnit:v5 doubleValue:0.0];

  v8 = [v4 meterUnit];
  v9 = [v6 quantityWithUnit:v8 doubleValue:0.0];

  v63 = v4;
  v10 = [v4 meterUnit];
  v62 = v6;
  v11 = [v6 quantityWithUnit:v10 doubleValue:0.0];

  if (v2)
  {
    v42 = __CocoaSet.count.getter();
    v12 = a1;
    v13 = v42;
    v65 = v9;
    if (v42)
    {
      goto LABEL_5;
    }

LABEL_23:

    v40 = 0;
    v26 = 0;
    v18 = 0.0;
    v41 = v6;
    goto LABEL_26;
  }

  v12 = a1;
  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v65 = v9;
  if (!v13)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (v13 < 1)
  {
    __break(1u);
    return;
  }

  v14 = v7;
  v61 = v1;
  v15 = 0;
  v16 = 0;
  v17 = v12 & 0xC000000000000001;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  do
  {
    if (v17)
    {
      v21 = MEMORY[0x20F2E7A20](v16);
    }

    else
    {
      v21 = *(v12 + 8 * v16 + 32);
    }

    v22 = v21;
    v23 = OBJC_IVAR___WODownhillRun_workoutTime;
    swift_beginAccess();
    v24 = *&v22[v23];
    v25 = *&v22[OBJC_IVAR___WODownhillRun_maximumSpeed];
    v26 = HKQuantityMax();

    if (*&v22[OBJC_IVAR___WODownhillRun_elevationAscended])
    {
      v27 = [v14 _quantityByAddingQuantity_];

      v14 = v27;
    }

    if (*&v22[OBJC_IVAR___WODownhillRun_elevationDescended])
    {
      v28 = [v65 _quantityByAddingQuantity_];

      v65 = v28;
    }

    v29 = OBJC_IVAR___WODownhillRun_distance;
    swift_beginAccess();
    if (*&v22[v29])
    {
      v30 = [v11 _quantityByAddingQuantity_];

      v11 = v30;
    }

    v31 = OBJC_IVAR___WODownhillRun_averageHeartRate;
    swift_beginAccess();
    v32 = *&v22[v31];
    if (v32)
    {
      v33 = *&v22[v23] / 60.0;
      v34 = v32;
      v35 = [v63 _countPerMinuteUnit];
      [v34 doubleValueForUnit_];
      v37 = v36;

      v38 = v33 * v37;
      v39 = *&v22[v23];

      v19 = v19 + v38;
      v20 = v20 + v39 / 60.0;
    }

    else
    {
    }

    v12 = a1;
    ++v16;
    v18 = v18 + v24;
    v15 = v26;
  }

  while (v13 != v16);

  if (v20 == 0.0)
  {
    v40 = 0;
    v1 = v61;
    v41 = v62;
  }

  else
  {
    v43 = [v63 _countPerMinuteUnit];
    v41 = v62;
    v40 = [v62 quantityWithUnit:v43 doubleValue:v19 / v20];

    v1 = v61;
  }

  v7 = v14;
LABEL_26:
  *(v1 + 16) = v40;
  v44 = MEMORY[0x20F2E6C00](7548781, 0xE300000000000000);
  v45 = [v63 unitFromString_];

  v46 = v11;
  v47 = [v63 meterUnit];
  [v46 doubleValueForUnit_];
  v49 = v48;

  v50 = [v41 quantityWithUnit:v45 doubleValue:v49 / v18];
  *(v1 + 24) = v50;
  *(v1 + 32) = v26;
  *(v1 + 40) = v46;
  *(v1 + 48) = v18;
  v51 = v26;
  v52 = [v63 meterUnit];
  [v7 doubleValueForUnit_];
  v54 = v53;

  if (v54 == 0.0)
  {
    v55 = 0;
  }

  else
  {
    v56 = v7;
    v55 = v7;
  }

  v57 = v65;
  *(v1 + 56) = v55;
  v58 = [v63 meterUnit];
  [v65 doubleValueForUnit_];
  v60 = v59;

  if (v60 == 0.0)
  {

    v57 = 0;
  }

  *(v1 + 64) = v57;
}

uint64_t DownhillRunsStats.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DownhillRunsStats.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(218);
  MEMORY[0x20F2E6D80](0xD000000000000020, 0x800000020B4607E0);
  v19 = *(v0 + 72);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v2);

  MEMORY[0x20F2E6D80](0x74756F6B726F7720, 0xEE003D656D69745FLL);
  v3 = *(v0 + 48);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x636E617473696420, 0xEA00000000003D65);
  v4 = *(v0 + 40);
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x20F2E6D80](v6, v8);

  MEMORY[0x20F2E6D80](0xD000000000000024, 0x800000020B460810);
  v9 = *(v1 + 24);
  v10 = [v9 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  MEMORY[0x20F2E6D80](v11, v13);

  MEMORY[0x20F2E6D80](0x6D756D6978616D20, 0xEF3D64656570735FLL);
  v20 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10HKQuantityCSgMd, &_sSo10HKQuantityCSgMR);
  v14 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v14);

  MEMORY[0x20F2E6D80](0xD00000000000002ALL, 0x800000020B460840);
  v21 = *(v1 + 64);
  v15 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v15);

  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B460870);
  v22 = *(v1 + 56);
  v16 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v16);

  MEMORY[0x20F2E6D80](0xD000000000000021, 0x800000020B460890);
  v23 = *(v1 + 16);
  v17 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v17);

  return 0;
}

Class @objc DownhillRun.startTime.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1 + *a3, v5);
  v10.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);

  return v10.super.isa;
}

uint64_t DownhillRun.startTime.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double DownhillRun.workoutTime.getter()
{
  v1 = OBJC_IVAR___WODownhillRun_workoutTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DownhillRun.workoutTime.setter(double a1)
{
  v3 = OBJC_IVAR___WODownhillRun_workoutTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *DownhillRun.averageSpeed.getter()
{
  v1 = *(v0 + OBJC_IVAR___WODownhillRun_averageSpeed);
  v2 = v1;
  return v1;
}

void *DownhillRun.maximumSpeed.getter()
{
  v1 = *(v0 + OBJC_IVAR___WODownhillRun_maximumSpeed);
  v2 = v1;
  return v1;
}

void *DownhillRun.alpineSlope.getter()
{
  v1 = *(v0 + OBJC_IVAR___WODownhillRun_alpineSlope);
  v2 = v1;
  return v1;
}

void *DownhillRun.elevationAscended.getter()
{
  v1 = *(v0 + OBJC_IVAR___WODownhillRun_elevationAscended);
  v2 = v1;
  return v1;
}

void *DownhillRun.elevationDescended.getter()
{
  v1 = *(v0 + OBJC_IVAR___WODownhillRun_elevationDescended);
  v2 = v1;
  return v1;
}

void *DownhillRun.distance.getter()
{
  v1 = OBJC_IVAR___WODownhillRun_distance;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DownhillRun.distance.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WODownhillRun_distance;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DownhillRun.averageHeartRate.getter()
{
  v1 = OBJC_IVAR___WODownhillRun_averageHeartRate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void @objc DownhillRun.distance.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void DownhillRun.averageHeartRate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WODownhillRun_averageHeartRate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for DownhillRun.distance : DownhillRun(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

uint64_t one-time initialization function for metadataKeys()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20B423940;
  v1 = *MEMORY[0x277CCC470];
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CCC4E8];
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CCC430];
  *(v0 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CCC488];
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x277CCC490];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 96) = result;
  *(v0 + 104) = v11;
  static DownhillRun.metadataKeys = v0;
  return result;
}

uint64_t static DownhillRun.metadataKeys.getter()
{
  if (one-time initialization token for metadataKeys != -1)
  {
    swift_once();
  }
}

id DownhillRun.__allocating_init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(void *a1, void *a2, void *a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = specialized DownhillRun.init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(a1, a2, a3, a4);

  return v10;
}

id DownhillRun.init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(void *a1, void *a2, void *a3, double a4)
{
  v7 = specialized DownhillRun.init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(a1, a2, a3, a4);

  return v7;
}

void closure #1 in static DownhillRun.makeDownhillRun(downhillRunEvent:workout:healthStore:)(void *a1, void *a2, uint64_t a3, dispatch_group_t group, const char *a5)
{
  if (a2)
  {
    type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
    v10 = a2;
    v11 = static OS_os_log.default.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {

      if (!a1)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_20AEA4000, v11, v12, a5, v13, 0xCu);
    _s10Foundation4DateVSgWOhTm_8(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  if (a1)
  {
LABEL_5:
    swift_beginAccess();
    v17 = *(a3 + 16);
    *(a3 + 16) = a1;
    v18 = a1;
  }

LABEL_6:
  dispatch_group_leave(group);
}

void closure #1 in static DownhillRun.calculateDistance(workout:dateInterval:healthStore:completion:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, SEL *a6)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v9 = a2;
  v10 = [v9 *a6];
  if (!v10)
  {

LABEL_7:
    a4(0, a3);
    return;
  }

  v11 = v10;
  v12 = v10;
  a4(v11, 0);
}

uint64_t closure #1 in static DownhillRun.calculateWorkoutTime(dateInterval:pauseResumeEvents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  outlined init with copy of Date?(a1, v12);
  v21 = *(v14 + 48);
  if (v21(v12, 1, v13) == 1)
  {
    return _s10Foundation4DateVSgWOhTm_8(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v29 = a3;
  v23 = v12;
  v24 = *(v14 + 32);
  v24(v20, v23, v13);
  outlined init with copy of Date?(a2, v10);
  if (v21(v10, 1, v13) == 1)
  {
    (*(v14 + 8))(v20, v13);
    return _s10Foundation4DateVSgWOhTm_8(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v24(v18, v10, v13);
    Date.timeIntervalSince(_:)();
    v26 = v25;
    v27 = *(v14 + 8);
    v27(v18, v13);
    v27(v20, v13);
    v28 = v29;
    result = swift_beginAccess();
    *(v28 + 16) = v26 + *(v28 + 16);
  }

  return result;
}

id DownhillRun.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DownhillRun.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownhillRun();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DownhillRun.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(232);
  MEMORY[0x20F2E6D80](0xD00000000000001BLL, 0x800000020B460970);
  v2 = OBJC_IVAR___WODownhillRun_workoutTime;
  swift_beginAccess();
  v3 = *(v1 + v2);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x745F747261747320, 0xEC0000003D656D69);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date();
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v4);

  MEMORY[0x20F2E6D80](0x6D69745F646E6520, 0xEA00000000003D65);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v5);

  MEMORY[0x20F2E6D80](0xD00000000000001DLL, 0x800000020B460990);
  v19 = *(v1 + OBJC_IVAR___WODownhillRun_averageSpeed);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10HKQuantityCSgMd, &_sSo10HKQuantityCSgMR);
  v6 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v6);

  MEMORY[0x20F2E6D80](0x6D756D6978616D20, 0xEF3D64656570735FLL);
  v20 = *(v1 + OBJC_IVAR___WODownhillRun_maximumSpeed);
  v7 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v7);

  MEMORY[0x20F2E6D80](0xD000000000000023, 0x800000020B4609B0);
  v21 = *(v1 + OBJC_IVAR___WODownhillRun_elevationDescended);
  v8 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v8);

  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B460870);
  v22 = *(v1 + OBJC_IVAR___WODownhillRun_elevationAscended);
  v9 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v9);

  MEMORY[0x20F2E6D80](0xD000000000000018, 0x800000020B4609E0);
  v10 = OBJC_IVAR___WODownhillRun_distance;
  swift_beginAccess();
  v17 = *(v1 + v10);
  v11 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v11);

  MEMORY[0x20F2E6D80](0x5F656E69706C6120, 0xEE003D65706F6C73);
  v18 = *(v1 + OBJC_IVAR___WODownhillRun_alpineSlope);
  v12 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v12);

  MEMORY[0x20F2E6D80](0xD00000000000001ALL, 0x800000020B460A00);
  v13 = OBJC_IVAR___WODownhillRun_averageHeartRate;
  swift_beginAccess();
  v16 = *(v1 + v13);
  v14 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v14);

  return 0;
}

uint64_t HKHealthStore.distance(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Date();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for DateInterval();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](HKHealthStore.distance(for:), 0, 0);
}

uint64_t HKHealthStore.distance(for:)()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = [*(v0 + 24) dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = objc_opt_self();
  DateInterval.start.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v8 = *(v3 + 8);
  v8(v2, v4);
  DateInterval.end.getter();
  v9 = Date._bridgeToObjectiveC()().super.isa;
  v8(v2, v4);
  v10 = [v6 predicateForSamplesWithStartDate:isa endDate:v9 options:0];
  *(v0 + 88) = v10;

  v11 = [objc_allocWithZone(MEMORY[0x277CCD830]) initWithIdentifier_];
  *(v0 + 96) = v11;
  if (v11)
  {
    v12 = v11;
    v13 = *(v0 + 32);
    v14 = swift_task_alloc();
    *(v0 + 104) = v14;
    v14[2] = v12;
    v14[3] = v10;
    v14[4] = v13;
    v15 = *(MEMORY[0x277D85A40] + 4);
    v16 = swift_task_alloc();
    *(v0 + 112) = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10HKQuantityCSgMd, &_sSo10HKQuantityCSgMR);
    *v16 = v0;
    v16[1] = HKHealthStore.distance(for:);

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x65636E6174736964, 0xEE00293A726F6628, partial apply for closure #1 in HKHealthStore.distance(for:), v14, v17);
  }

  else
  {
    if (one-time initialization token for downhillSnowSports != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.downhillSnowSports);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 72);
    v22 = *(v0 + 80);
    v24 = *(v0 + 64);
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20AEA4000, v19, v20, "distance for downhillRunEvent -- downhill snow sports quantity type unexpectedly returned nil", v25, 2u);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    (*(v23 + 8))(v22, v24);
    v26 = *(v0 + 80);
    v27 = *(v0 + 56);

    v28 = *(v0 + 8);

    return v28(0);
  }
}

{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = HKHealthStore.distance(for:);
  }

  else
  {
    v4 = HKHealthStore.distance(for:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 16);
  v6 = *(v0 + 80);
  v7 = *(v0 + 56);

  v8 = *(v0 + 8);

  return v8(v5);
}

{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);

  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);
  v7 = *(v0 + 120);

  return v6();
}

void closure #1 in HKHealthStore.distance(for:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10HKQuantityCSgs5Error_pGMd, &_sScCySo10HKQuantityCSgs5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  v15 = objc_allocWithZone(MEMORY[0x277CCDA68]);
  aBlock[4] = partial apply for closure #1 in closure #1 in HKHealthStore.distance(for:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsQuery, @guaranteed HKStatistics?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_43;
  v16 = _Block_copy(aBlock);
  v17 = [v15 initWithQuantityType:a2 quantitySamplePredicate:a3 options:16 completionHandler:v16];
  _Block_release(v16);

  [a4 executeQuery_];
}

uint64_t closure #1 in closure #1 in HKHealthStore.distance(for:)(int a1, id a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10HKQuantityCSgs5Error_pGMd, &_sScCySo10HKQuantityCSgs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    [a2 sumQuantity];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10HKQuantityCSgs5Error_pGMd, &_sScCySo10HKQuantityCSgs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsQuery, @guaranteed HKStatistics?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

id specialized DownhillRun.init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(void *a1, void *a2, void *a3, double a4)
{
  v5 = v4;
  v93 = a2;
  v94 = a3;
  v90 = type metadata accessor for Date();
  v8 = *(v90 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v90);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DateInterval();
  v89 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = OBJC_IVAR___WODownhillRun_distance;
  *&v5[OBJC_IVAR___WODownhillRun_distance] = 0;
  v92 = OBJC_IVAR___WODownhillRun_averageHeartRate;
  *&v5[OBJC_IVAR___WODownhillRun_averageHeartRate] = 0;
  v17 = [a1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.start.getter();
  v18 = *(v13 + 8);
  v18(v16, v12);
  v19 = *(v8 + 32);
  v20 = v90;
  v19(&v5[OBJC_IVAR___WODownhillRun_startTime], v11, v90);
  v21 = [a1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.end.getter();
  v18(v16, v89);
  v19(&v5[OBJC_IVAR___WODownhillRun_endTime], v11, v20);
  v22 = a1;
  v23 = [a1 metadata];
  if (!v23)
  {
    goto LABEL_9;
  }

  v24 = v23;
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = *MEMORY[0x277CCC470];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v25 + 16))
  {

    goto LABEL_8;
  }

  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
LABEL_8:

LABEL_9:
    v33 = 0;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v25 + 56) + 32 * v29, v97);

  type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
  v32 = swift_dynamicCast();
  v33 = v96;
  if (!v32)
  {
    v33 = 0;
  }

LABEL_10:
  *&v5[OBJC_IVAR___WODownhillRun_averageSpeed] = v33;
  v34 = [v22 metadata];
  if (!v34)
  {
LABEL_18:
    v44 = 0;
    goto LABEL_19;
  }

  v35 = v34;
  v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = *MEMORY[0x277CCC4E8];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v36 + 16))
  {

    goto LABEL_17;
  }

  v40 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v39);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  outlined init with copy of Any(*(v36 + 56) + 32 * v40, v97);

  type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
  v43 = swift_dynamicCast();
  v44 = v96;
  if (!v43)
  {
    v44 = 0;
  }

LABEL_19:
  *&v5[OBJC_IVAR___WODownhillRun_maximumSpeed] = v44;
  v45 = [v22 metadata];
  if (!v45)
  {
LABEL_27:
    v55 = 0;
    goto LABEL_28;
  }

  v46 = v45;
  v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = *MEMORY[0x277CCC430];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v47 + 16))
  {

    goto LABEL_26;
  }

  v51 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v50);
  v53 = v52;

  if ((v53 & 1) == 0)
  {
LABEL_26:

    goto LABEL_27;
  }

  outlined init with copy of Any(*(v47 + 56) + 32 * v51, v97);

  type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
  v54 = swift_dynamicCast();
  v55 = v96;
  if (!v54)
  {
    v55 = 0;
  }

LABEL_28:
  *&v5[OBJC_IVAR___WODownhillRun_alpineSlope] = v55;
  v56 = [v22 metadata];
  if (!v56)
  {
LABEL_36:
    v66 = 0;
    goto LABEL_37;
  }

  v57 = v56;
  v58 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v59 = *MEMORY[0x277CCC488];
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v58 + 16))
  {

    goto LABEL_35;
  }

  v62 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61);
  v64 = v63;

  if ((v64 & 1) == 0)
  {
LABEL_35:

    goto LABEL_36;
  }

  outlined init with copy of Any(*(v58 + 56) + 32 * v62, v97);

  type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
  v65 = swift_dynamicCast();
  v66 = v96;
  if (!v65)
  {
    v66 = 0;
  }

LABEL_37:
  *&v5[OBJC_IVAR___WODownhillRun_elevationAscended] = v66;
  v67 = [v22 metadata];
  if (!v67)
  {
LABEL_45:
    v77 = 0;
    goto LABEL_46;
  }

  v68 = v67;
  v69 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v70 = *MEMORY[0x277CCC490];
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v69 + 16))
  {

    goto LABEL_44;
  }

  v73 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v72);
  v75 = v74;

  if ((v75 & 1) == 0)
  {
LABEL_44:

    goto LABEL_45;
  }

  outlined init with copy of Any(*(v69 + 56) + 32 * v73, v97);

  type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
  v76 = swift_dynamicCast();
  v77 = v96;
  if (!v76)
  {
    v77 = 0;
  }

LABEL_46:
  *&v5[OBJC_IVAR___WODownhillRun_elevationDescended] = v77;
  *&v5[OBJC_IVAR___WODownhillRun_workoutTime] = a4;
  v78 = v91;
  swift_beginAccess();
  v79 = *&v5[v78];
  v80 = v93;
  *&v5[v78] = v93;
  v81 = v80;

  v82 = v92;
  swift_beginAccess();
  v83 = *&v5[v82];
  v84 = v94;
  *&v5[v82] = v94;
  v85 = v84;

  v86 = type metadata accessor for DownhillRun();
  v95.receiver = v5;
  v95.super_class = v86;
  return objc_msgSendSuper2(&v95, sel_init);
}

double specialized static DownhillRun.calculateWorkoutTime(dateInterval:pauseResumeEvents:)(uint64_t a1, Class isa)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  DateInterval.start.getter();
  v9.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v10 = *(v4 + 8);
  v10(v7, v3);
  DateInterval.end.getter();
  v11.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v10(v7, v3);
  if (isa)
  {
    type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  aBlock[4] = partial apply for closure #1 in static DownhillRun.calculateWorkoutTime(dateInterval:pauseResumeEvents:);
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Date?, @in_guaranteed Date?) -> ();
  aBlock[3] = &block_descriptor_15_4;
  v12 = _Block_copy(aBlock);

  _HKEnumerateActiveWorkoutIntervalsStartingPaused();
  _Block_release(v12);

  swift_beginAccess();
  v13 = *(v8 + 16);

  return v13;
}

id specialized static DownhillRun.makeDownhillRun(downhillRunEvent:workout:healthStore:)(void *a1, void *a2, void *a3)
{
  v100 = a3;
  v93 = type metadata accessor for Date();
  v5 = *(v93 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v93);
  v8 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DateInterval();
  v103 = *(v101 - 8);
  v9 = *(v103 + 64);
  v10 = MEMORY[0x28223BE20](v101);
  v96 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v95 = v82 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v82 - v14;
  v16 = dispatch_group_create();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v97 = v17 + 16;
  dispatch_group_enter(v16);
  v102 = a1;
  v18 = [a1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v16;
  v92 = v19;
  v98 = v17;

  v94 = v16;
  v20 = a2;
  result = [a2 fiui_activityType];
  if (result)
  {
    v22 = result;
    v23 = FIUIDistanceTypeForActivityType();

    v83 = [objc_opt_self() quantityTypeForDistanceType_];
    v24 = objc_opt_self();
    v84 = v24;
    v25 = [v24 predicateForObjectsFromWorkout_];
    DateInterval.start.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v27 = *(v5 + 8);
    v82[1] = v5 + 8;
    v28 = v93;
    v27(v8, v93);
    v91 = v15;
    v88 = v27;
    DateInterval.end.getter();
    v29 = Date._bridgeToObjectiveC()().super.isa;
    v27(v8, v28);
    v30 = [v24 predicateForSamplesWithStartDate:isa endDate:v29 options:0];
    v99 = v20;
    v31 = v30;

    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v32 = swift_allocObject();
    v89 = xmmword_20B42FA20;
    *(v32 + 16) = xmmword_20B42FA20;
    *(v32 + 32) = v25;
    *(v32 + 40) = v31;
    v86 = type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for NSPredicate, 0x277CCAC30);
    v33 = v25;
    v34 = v31;
    v35 = Array._bridgeToObjectiveC()().super.isa;

    v85 = objc_opt_self();
    v36 = [v85 andPredicateWithSubpredicates_];

    v37 = swift_allocObject();
    v38 = v92;
    *(v37 + 16) = partial apply for closure #1 in static DownhillRun.makeDownhillRun(downhillRunEvent:workout:healthStore:);
    *(v37 + 24) = v38;
    v39 = objc_allocWithZone(MEMORY[0x277CCDA68]);
    v108 = partial apply for closure #1 in static DownhillRun.calculateDistance(workout:dateInterval:healthStore:completion:);
    v109 = v37;
    aBlock = MEMORY[0x277D85DD0];
    v105 = 1107296256;
    v87 = &v106;
    v106 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsQuery, @guaranteed HKStatistics?, @guaranteed Error?) -> ();
    v107 = &block_descriptor_27_1;
    v40 = _Block_copy(&aBlock);

    v41 = v83;
    v42 = [v39 initWithQuantityType:v83 quantitySamplePredicate:v36 options:16 completionHandler:v40];
    _Block_release(v40);

    [v100 executeQuery_];

    v43 = *(v103 + 8);
    v103 += 8;
    v83 = v43;
    v43(v91, v101);
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    v92 = v44 + 16;
    v45 = v94;
    dispatch_group_enter(v94);
    v46 = [v102 dateInterval];
    v47 = v95;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = swift_allocObject();
    *(v48 + 16) = v44;
    *(v48 + 24) = v45;
    v94 = v45;
    v91 = v44;

    v49 = v84;
    v50 = [v84 predicateForObjectsFromWorkout_];
    DateInterval.start.getter();
    v51 = Date._bridgeToObjectiveC()().super.isa;
    v52 = v88;
    v88(v8, v28);
    DateInterval.end.getter();
    v53 = Date._bridgeToObjectiveC()().super.isa;
    v52(v8, v28);
    v54 = [v49 predicateForSamplesWithStartDate:v51 endDate:v53 options:1];

    v55 = swift_allocObject();
    *(v55 + 16) = v89;
    *(v55 + 32) = v50;
    *(v55 + 40) = v54;
    v56 = v50;
    v57 = v54;
    v58 = Array._bridgeToObjectiveC()().super.isa;

    v59 = [v85 andPredicateWithSubpredicates_];

    type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
    v60 = MEMORY[0x20F2E7440](*MEMORY[0x277CCCB90]);
    v61 = swift_allocObject();
    *(v61 + 16) = partial apply for closure #2 in static DownhillRun.makeDownhillRun(downhillRunEvent:workout:healthStore:);
    *(v61 + 24) = v48;
    v62 = objc_allocWithZone(MEMORY[0x277CCDA68]);
    v108 = partial apply for closure #1 in static DownhillRun.calculateAverageHeartRate(workout:dateInterval:healthStore:completion:);
    v109 = v61;
    aBlock = MEMORY[0x277D85DD0];
    v105 = 1107296256;
    v106 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsQuery, @guaranteed HKStatistics?, @guaranteed Error?) -> ();
    v107 = &block_descriptor_37_0;
    v63 = _Block_copy(&aBlock);

    v64 = [v62 initWithQuantityType:v60 quantitySamplePredicate:v59 options:2 completionHandler:v63];

    v65 = v63;
    v66 = v83;
    _Block_release(v65);

    [v100 executeQuery_];

    v67 = v101;
    v66(v47, v101);
    v68 = v102;
    v69 = [v102 dateInterval];
    v70 = v96;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v71 = [v99 workoutEvents];
    if (v71)
    {
      v72 = v71;
      type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
      v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v73 = 0;
    }

    v74 = specialized static DownhillRun.calculateWorkoutTime(dateInterval:pauseResumeEvents:)(v70, v73);

    v66(v70, v67);
    v75 = v94;
    OS_dispatch_group.wait()();
    swift_beginAccess();
    v76 = *(v98 + 16);
    swift_beginAccess();
    v77 = *(v91 + 2);
    objc_allocWithZone(type metadata accessor for DownhillRun());
    v78 = v77;
    v79 = v68;
    v80 = v76;
    v81 = specialized DownhillRun.init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(v79, v76, v77, v74);

    return v81;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for DownhillRun()
{
  result = type metadata singleton initialization cache for DownhillRun;
  if (!type metadata singleton initialization cache for DownhillRun)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

id keypath_get_4Tm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t type metadata completion function for DownhillRun()
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

uint64_t partial apply for closure #1 in closure #1 in HKHealthStore.distance(for:)(int a1, void *a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10HKQuantityCSgs5Error_pGMd, &_sScCySo10HKQuantityCSgs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in HKHealthStore.distance(for:)(a1, a2, a3);
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s10Foundation4DateVSgWOhTm_8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for HKWorkoutEvent(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t WorkoutDataBucket.__allocating_init()()
{
  type metadata accessor for WorkoutDataBucket();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t WorkoutDataBucket.value.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t WorkoutDataBucket.divisor.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t WorkoutDataBucket.__allocating_init(value:divisor:)(double a1, double a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t WorkoutDataBucket.init(value:divisor:)(double a1, double a2)
{
  result = v2;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

Swift::Void __swiftcall WorkoutDataBucket.add(value:divisor:)(Swift::Double value, Swift::Double divisor)
{
  swift_beginAccess();
  *(v2 + 16) = *(v2 + 16) + value;
  swift_beginAccess();
  *(v2 + 24) = *(v2 + 24) + divisor;
}

Swift::Double __swiftcall WorkoutDataBucket.average()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  swift_beginAccess();
  return v1 / *(v0 + 24);
}

uint64_t StepType.displayString.getter()
{
  v1 = *v0;
  v2 = 0xEE004B524F575F45;
  v3 = 0x5059545F50455453;
  v4 = 0xD000000000000011;
  v5 = 0x800000020B460D80;
  if (v1 != 2)
  {
    v4 = 0xD000000000000013;
    v5 = 0x800000020B460D60;
  }

  if (*v0)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000020B460D40;
  }

  if (*v0 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (v1 <= 1)
  {
    v7 = v2;
  }

  else
  {
    v7 = v5;
  }

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = MEMORY[0x20F2E6C00](v6, v7);

  v11 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v13;
}

unint64_t StepType.displayStringKey.getter()
{
  v1 = 0x5059545F50455453;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t StepType.displayStringToAddStep.getter()
{
  v1 = *v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = "STEP_TYPE_ADD_COOL_DOWN";
  v5 = 0xD000000000000017;
  if (v1 == 2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v4 = "STEP_TYPE_ADD_RECOVER";
  }

  v6 = "STEP_TYPE_WARM_UP";
  v7 = 0xD000000000000012;
  if (v1)
  {
    v6 = "STEP_TYPE_ADD_WORK";
    v7 = 0xD000000000000015;
  }

  if (v1 > 1)
  {
    v8 = v5;
  }

  else
  {
    v4 = v6;
    v8 = v7;
  }

  v9 = MEMORY[0x20F2E6C00](v8, v4 | 0x8000000000000000);
  v10 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v11 = [v3 localizedStringForKey:v9 value:0 table:v10];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

uint64_t StepType.displayHintAbbreviation.getter()
{
  v1 = *v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = "STEP_TYPE_HINT_COOL_DOWN";
  v5 = 0xD000000000000018;
  if (v1 == 2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v4 = "STEP_TYPE_HINT_RECOVER";
  }

  v6 = "STEP_TYPE_ADD_WARM_UP";
  v7 = 0xD000000000000013;
  if (v1)
  {
    v6 = "STEP_TYPE_HINT_WORK";
    v7 = 0xD000000000000016;
  }

  if (v1 > 1)
  {
    v8 = v5;
  }

  else
  {
    v4 = v6;
    v8 = v7;
  }

  v9 = MEMORY[0x20F2E6C00](v8, v4 | 0x8000000000000000);
  v10 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v11 = [v3 localizedStringForKey:v9 value:0 table:v10];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

unint64_t MirroredClientCommand.description.getter()
{
  v1 = 0x70736552676E6970;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

void MirroredClientCommand.init(protobuf:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if ((a1[1] & 1) == 0)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.dataLink);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_20AEA4000, v5, v6, "Unrecognized MirroredClientCommand rawValue: %ld", v7, 0xCu);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 3;
  }

  *a2 = v3;
}

WorkoutCore::MirroredClientCommand_optional __swiftcall MirroredClientCommand.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredClientCommand()
{
  v1 = 0x70736552676E6970;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredClientCommand()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredClientCommand()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type MirroredClientCommand and conformance MirroredClientCommand()
{
  result = lazy protocol witness table cache variable for type MirroredClientCommand and conformance MirroredClientCommand;
  if (!lazy protocol witness table cache variable for type MirroredClientCommand and conformance MirroredClientCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientCommand and conformance MirroredClientCommand);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredClientCommand(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredClientCommand(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type FIWorkoutMetricType and conformance FIWorkoutMetricType()
{
  result = lazy protocol witness table cache variable for type FIWorkoutMetricType and conformance FIWorkoutMetricType;
  if (!lazy protocol witness table cache variable for type FIWorkoutMetricType and conformance FIWorkoutMetricType)
  {
    type metadata accessor for FIWorkoutMetricType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIWorkoutMetricType and conformance FIWorkoutMetricType);
  }

  return result;
}

uint64_t GoalPublisher.goal.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t GoalPublisher.goal.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*GoalPublisher.goal.modify(uint64_t *a1))()
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
  return GoalPublisher.goal.modify;
}

uint64_t key path setter for GoalPublisher.$goal : GoalPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18_HKWorkoutGoalTypeV_GMd, &_s7Combine9PublishedV9PublisherVySo18_HKWorkoutGoalTypeV_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t GoalPublisher.$goal.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18_HKWorkoutGoalTypeV_GMd, &_s7Combine9PublishedV9PublisherVySo18_HKWorkoutGoalTypeV_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*GoalPublisher.$goal.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18_HKWorkoutGoalTypeV_GMd, &_s7Combine9PublishedV9PublisherVySo18_HKWorkoutGoalTypeV_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__goal;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return GoalPublisher.$goal.modify;
}

uint64_t GoalPublisher.progress.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t GoalPublisher.progress.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*GoalPublisher.progress.modify(uint64_t *a1))()
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
  return GoalPublisher.progress.modify;
}

void GoalPublisher.goal.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t GoalPublisher.$goal.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for GoalPublisher.$goal : GoalPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for GoalPublisher.$progress : GoalPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVys6UInt32V_GMd, &_s7Combine9PublishedV9PublisherVys6UInt32V_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t GoalPublisher.$progress.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVys6UInt32V_GMd, &_s7Combine9PublishedV9PublisherVys6UInt32V_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*GoalPublisher.$progress.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVys6UInt32V_GMd, &_s7Combine9PublishedV9PublisherVys6UInt32V_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__progress;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return GoalPublisher.$progress.modify;
}

void GoalPublisher.$goal.modify(uint64_t a1, char a2)
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

uint64_t GoalPublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  type metadata accessor for _HKWorkoutGoalType(0);
  Published.init(initialValue:)();
  Published.init(initialValue:)();
  return v3;
}

uint64_t GoalPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  v11 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__goal;
  v15 = 0;
  type metadata accessor for _HKWorkoutGoalType(0);
  Published.init(initialValue:)();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__progress;
  v14[1] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v12, v5, v1);
  return v0;
}

uint64_t GoalPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__goal;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__progress;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GoalPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__goal;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__progress;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance GoalPublisher@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t GoalPublisher.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = a1 + *(type metadata accessor for Apple_Workout_Core_GoalPublisher(0) + 24);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = 0;
  if (v6 <= 3)
  {
    v3 = qword_20B43C718[v6];
  }

  *a1 = v3;
  *(a1 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 12) = v5;
  return result;
}

uint64_t GoalPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = 0;
  v4[8] = 1;
  v5 = &v4[*(v2 + 24)];
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = 0;
  if (v10 <= 3)
  {
    v6 = qword_20B43C718[v10];
  }

  *v4 = v6;
  v4[8] = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v4 + 3) = v9[3];
  lazy protocol witness table accessor for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher();
  v7 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_GoalPublisher(v4);
  return v7;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher)
  {
    type metadata accessor for Apple_Workout_Core_GoalPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_GoalPublisher(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GoalPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized GoalPublisher.__allocating_init(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance GoalPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static GoalPublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance GoalPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized GoalPublisher.__allocating_init(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static GoalPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v2 = type metadata accessor for BinaryDecodingOptions();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v5 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = type metadata accessor for GoalPublisher();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__goal;
  *&v33 = 0;
  type metadata accessor for _HKWorkoutGoalType(0);
  Published.init(initialValue:)();
  (*(v14 + 32))(v21 + v22, v17, v13);
  v23 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__progress;
  LODWORD(v33) = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(v21 + v23, v12, v8);
  v36 = v30;
  v37 = v31;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  outlined copy of Data._Representation(v30, v31);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher();
  v24 = v38;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v24)
  {
  }

  else
  {
    v25 = v7[8];
    *&v33 = *v7;
    BYTE8(v33) = v25;
    v26 = Apple_Workout_Core_GoalType.decoded.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v36 = v26;

    static Published.subscript.setter();
    v27 = *(v7 + 3);
    swift_getKeyPath();
    swift_getKeyPath();
    LODWORD(v33) = v27;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_GoalPublisher(v7);
  }

  return v21;
}

uint64_t specialized GoalPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  v29 = *(v35 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = type metadata accessor for BinaryDecodingOptions();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    v19 = type metadata accessor for GoalPublisher();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v3 = swift_allocObject();
    v22 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__goal;
    *&v30 = 0;
    type metadata accessor for _HKWorkoutGoalType(0);
    Published.init(initialValue:)();
    (*(v28 + 32))(v3 + v22, v12, v9);
    v23 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__progress;
    LODWORD(v30) = 0;
    Published.init(initialValue:)();
    (*(v29 + 32))(v3 + v23, v8, v35);
    v24 = v18[8];
    *&v30 = *v18;
    BYTE8(v30) = v24;

    v25 = Apple_Workout_Core_GoalType.decoded.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v25;

    static Published.subscript.setter();
    v26 = *(v18 + 3);
    swift_getKeyPath();
    swift_getKeyPath();
    LODWORD(v30) = v26;
    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_GoalPublisher(v18);
  }

  return v3;
}

uint64_t type metadata accessor for GoalPublisher()
{
  result = type metadata singleton initialization cache for GoalPublisher;
  if (!type metadata singleton initialization cache for GoalPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for GoalPublisher()
{
  type metadata accessor for Published<_HKWorkoutGoalType>();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<UInt32>();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<_HKWorkoutGoalType>()
{
  if (!lazy cache variable for type metadata for Published<_HKWorkoutGoalType>)
  {
    type metadata accessor for _HKWorkoutGoalType(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<_HKWorkoutGoalType>);
    }
  }
}

void type metadata accessor for Published<UInt32>()
{
  if (!lazy cache variable for type metadata for Published<UInt32>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<UInt32>);
    }
  }
}

void static RaceAlertsStore.save(raceAlerts:activityType:)(uint64_t a1, void *a2)
{
  v62[4] = *MEMORY[0x277D85DE8];
  *&v61[0] = a1;
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for RaceAlerts();
  lazy protocol witness table accessor for type RaceAlerts and conformance RaceAlerts(&lazy protocol witness table cache variable for type RaceAlerts and conformance RaceAlerts);
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v22 = v21;

  v23 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v58 = 0;
  v25 = [v23 propertyListWithData:isa options:0 format:0 error:&v58];

  v26 = v58;
  if (v25)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined consume of Data._Representation(v20, v22);
    swift_unknownObjectRelease();
    if (one-time initialization token for userDefaults != -1)
    {
      swift_once();
    }

    v27 = static RaceAlertsStore.userDefaults;
    v28 = MEMORY[0x20F2E6C00](0x72656C4165636172, 0xEA00000000007374);
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

    outlined init with copy of Any(v62, v61);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v30;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, v34, v36, isUniquelyReferenced_nonNull_native);

    v38 = static RaceAlertsStore.userDefaults;
    v39 = Dictionary._bridgeToObjectiveC()().super.isa;

    v40 = MEMORY[0x20F2E6C00](0x72656C4165636172, 0xEA00000000007374);
    [v38 setObject:v39 forKey:v40];

    v41 = static RaceAlertsStore.userDefaults;
    v42 = objc_opt_self();
    v43 = v41;
    v44 = [v42 standardUserDefaults];
    type metadata accessor for NSUserDefaults();
    LOBYTE(v41) = static NSObject.== infix(_:_:)();

    if (v41)
    {
      v45 = MEMORY[0x20F2E6C00](0x72656C4165636172, 0xEA00000000007374);
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
      v60 = v52;
      *&v61[0] = 0;
      *v50 = 138412546;
      *(v50 + 4) = v47;
      *v51 = v47;
      *(v50 + 12) = 2080;
      *(&v61[0] + 1) = 0xE000000000000000;
      v53 = v47;
      _StringGuts.grow(_:)(42);

      v58 = 0xD000000000000027;
      v59 = 0x800000020B4590E0;
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
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v60);

      *(v50 + 14) = v56;
      _os_log_impl(&dword_20AEA4000, v48, v49, "Saved RaceAlerts to user defaults for activityType=%@ raceAlerts=%s", v50, 0x16u);
      outlined destroy of NSObject?(v51);
      MEMORY[0x20F2E9420](v51, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x20F2E9420](v52, -1, -1);
      MEMORY[0x20F2E9420](v50, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v62);
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
      v62[0] = v14;
      *v12 = 138412546;
      *(v12 + 4) = v8;
      *v13 = v8;
      *(v12 + 12) = 2080;
      *&v61[0] = v32;
      v15 = v8;
      v16 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v62);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Failed to encode and save RaceAlerts for activityType=%@. error=%s", v12, 0x16u);
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

uint64_t specialized static RaceAlertsStore.read(for:)(void *a1)
{
  v68 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  v2 = static RaceAlertsStore.userDefaults;
  v3 = MEMORY[0x20F2E6C00](0x72656C4165636172, 0xEA00000000007374);
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
    _os_log_impl(&dword_20AEA4000, v24, v25, "RaceAlerts for all activity types not present in user defaults.", v26, 2u);
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
    _os_log_impl(&dword_20AEA4000, v24, v30, "RaceAlerts for activity type not present in user defaults. activityType=%@", v31, 0xCu);
    outlined destroy of NSObject?(v32);
    MEMORY[0x20F2E9420](v32, -1, -1);
    v27 = v31;
LABEL_17:
    MEMORY[0x20F2E9420](v27, -1, -1);
LABEL_18:

    type metadata accessor for RaceAlerts();
    result = swift_allocObject();
    *(result + 16) = 1;
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
    type metadata accessor for RaceAlerts();
    lazy protocol witness table accessor for type RaceAlerts and conformance RaceAlerts(&lazy protocol witness table cache variable for type RaceAlerts and conformance RaceAlerts);
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

      _StringGuts.grow(_:)(42);

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

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000020B4590E0, &v64);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2112;
      *(v56 + 14) = v53;
      *v57 = v53;
      v61 = v53;
      _os_log_impl(&dword_20AEA4000, v54, v55, "Successfully read user raceAlerts=%s for activityType=%@", v56, 0x16u);
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
      _os_log_impl(&dword_20AEA4000, v41, v42, "Failed to decode RaceAlerts for activityType=%@. error=%s", v43, 0x16u);
      outlined destroy of NSObject?(v44);
      MEMORY[0x20F2E9420](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x20F2E9420](v45, -1, -1);
      MEMORY[0x20F2E9420](v43, -1, -1);
    }

    else
    {
    }

    type metadata accessor for RaceAlerts();
    v51 = swift_allocObject();
    *(v51 + 16) = 1;
    __swift_destroy_boxed_opaque_existential_0(v66);
    result = v51;
  }

LABEL_19:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}