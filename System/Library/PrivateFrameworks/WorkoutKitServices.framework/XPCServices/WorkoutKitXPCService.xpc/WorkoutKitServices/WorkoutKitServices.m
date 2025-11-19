int main(int argc, const char **argv, const char **envp)
{
  delegate = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  listener.super.isa = [objc_opt_self() serviceListener];
  [(objc_class *)listener.super.isa setDelegate:delegate];
  [(objc_class *)listener.super.isa resume];
  return 0;
}

id ServiceDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance WOPersistencePermissionState@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t specialized ServiceDelegate.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  if ([a1 valueForEntitlement:WorkoutKitPrivateEntitlementName])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    outlined destroy of Any?(v13);
    goto LABEL_8;
  }

  if (!swift_dynamicCast())
  {
LABEL_8:
    v2 = 0;
    goto LABEL_9;
  }

  v2 = v9;
LABEL_9:
  v3 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WorkoutKitXPCServiceProtocol];
  [a1 setExportedInterface:v3];

  LODWORD(v3) = [a1 processIdentifier];
  v4 = type metadata accessor for WorkoutKitXPCService();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService____lazy_storage___healthStore] = 0;
  *&v5[OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService____lazy_storage___queryClient] = 0;
  *&v5[OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService____lazy_storage___nanoSyncControl] = 0;
  v6 = &v5[OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler];
  *v6 = 0;
  v6[1] = 0;
  *&v5[OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_requestingProcessIdentifier] = v3;
  v5[OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_hasPrivateEntitlements] = v2;
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = objc_msgSendSuper2(&v10, "init");
  [a1 setExportedObject:v7];
  [a1 resume];

  return 1;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

void type metadata accessor for WOPersistencePermissionState()
{
  if (!lazy cache variable for type metadata for WOPersistencePermissionState)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for WOPersistencePermissionState);
    }
  }
}

id WorkoutKitXPCService.healthStore.getter(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = v2;
    type metadata accessor for WorkoutCoreInjector();
    v8 = static WorkoutCoreInjector.shared.getter();
    v9 = a2();

    v10 = *(v7 + v3);
    *(v7 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

id WorkoutKitXPCService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutKitXPCService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
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

void thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void @objc WorkoutKitXPCService.presentWorkoutConfigurationData(_:completion:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v13 = _Block_copy(aBlock);
  v14 = a3;
  v15 = a1;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v22[4] = a6;
  v22[5] = v19;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
  v22[3] = a7;
  v21 = _Block_copy(v22);

  [v15 *a8];

  outlined consume of Data._Representation(v16, v18);
  _Block_release(v21);
}

uint64_t WorkoutKitXPC_ActivityType.openGoalPlan.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v20[0] = type metadata accessor for WorkoutPlan.Workout();
  v5 = *(v20[0] - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v20[0]);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WorkoutGoal();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SingleGoalWorkout();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!a1 || a1 == 1)
  {
LABEL_9:
    (*(v10 + 104))(v13, enum case for WorkoutGoal.open(_:), v9);
    SingleGoalWorkout.init(activity:location:swimmingLocation:goal:)();
    (*(v15 + 16))(v8, v18, v14);
    (*(v5 + 104))(v8, enum case for WorkoutPlan.Workout.goal(_:), v20[0]);
    UUID.init()();
    WorkoutPlan.init(_:id:)();
    return (*(v15 + 8))(v18, v14);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in WorkoutKitXPCService.openWorkoutApp(with:autostart:completion:)(char a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  if (a1)
  {
    WorkoutPlan.id.getter();
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
    a2 = 0;
  }

  else
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  a3(v9, a2);
  return outlined destroy of Date?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSUUID?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  outlined init with copy of UUID?(a1, &v14 - v8);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v13 = _convertErrorToNSError(_:)();
  }

  else
  {
    v13 = 0;
  }

  (*(a3 + 16))(a3, isa, v13);
}

void closure #1 in WorkoutKitXPCService.saveWorkoutCompositionData(_:completion:)(char a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v51[1] = a4;
  v11 = type metadata accessor for UUID();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  __chkstk_darwin(v11);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Logger();
  v15 = *(v56 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v56);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v51 - v20;
  if (a1)
  {
    v54 = a6;
    v55 = a2;
    static WOLog.xpcService.getter();
    v22 = a3;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v53 = a5;
      v27 = v26;
      aBlock[0] = v26;
      *v25 = 136315138;
      WorkoutConfiguration.id.getter();
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v52 + 8))(v14, v11);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, aBlock);

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "WorkoutKitXPCService: saved configuration: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      a5 = v53;
    }

    (*(v15 + 8))(v21, v56);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v33 = v54;
    if (Strong)
    {
      v34 = Strong;
      v35 = WorkoutKitXPCService.nanoSyncControl.getter();

      v36 = swift_allocObject();
      *(v36 + 16) = a5;
      *(v36 + 24) = v33;
      *(v36 + 32) = 1;
      *(v36 + 40) = v55;
      aBlock[4] = partial apply for closure #1 in closure #1 in WorkoutKitXPCService.saveWorkoutCompositionData(_:completion:);
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_195;
      v37 = _Block_copy(aBlock);

      swift_errorRetain();

      [v35 forceNanoSyncWithOptions:0 completion:v37];

      _Block_release(v37);
    }
  }

  else
  {
    v53 = a5;
    static WOLog.xpcService.getter();
    v38 = a3;
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v54 = a6;
      v42 = v41;
      v43 = swift_slowAlloc();
      v55 = a2;
      aBlock[0] = v43;
      *v42 = 136315394;
      WorkoutConfiguration.id.getter();
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v52 + 8))(v14, v11);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, aBlock);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      aBlock[6] = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v48 = Optional.description.getter();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, aBlock);

      *(v42 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v39, v40, "WorkoutKitXPCService: failed to save configuration: %s, error=%s", v42, 0x16u);
      swift_arrayDestroy();
      a2 = v55;
    }

    (*(v15 + 8))(v19, v56);
    v53(0, a2);
  }
}

uint64_t @objc WorkoutKitXPCService.addScheduledWorkouts(_:sourceBundleId:completion:)(void *a1, int a2, int a3, int a4, void *aBlock, const char *a6, void (*a7)(unint64_t *, char *, unint64_t, uint64_t, const void *), uint64_t a8)
{
  v12 = _Block_copy(aBlock);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  _Block_copy(v12);
  v17 = a1;
  specialized WorkoutKitXPCService.addScheduledWorkouts(_:sourceBundleId:completion:)(v13, v14, v16, v17, v12, a6, a7, a8);
  _Block_release(v12);
  _Block_release(v12);
}

uint64_t closure #1 in WorkoutKitXPCService.storeScheduledWorkoutCompositions(_:sourceBundleId:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || a2)
  {
    return a3(0);
  }

  if (*(a5 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100016AF0;
    *(inited + 32) = a7;
    *(inited + 40) = a8;

    v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);

    v18 = a6;
    specialized WorkoutKitXPCService._deleteConfigurations(from:completion:)(v17, v18, a3, a4, a5, v18, a1);
  }

  else
  {
    v19 = type metadata accessor for WorkoutPlanValidationError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type WorkoutPlanValidationError and conformance WorkoutPlanValidationError, &type metadata accessor for WorkoutPlanValidationError);
    v20 = swift_allocError();
    (*(*(v19 - 8) + 104))(v21, enum case for WorkoutPlanValidationError.emptyPlan(_:), v19);

    (a3)(0, v20);
  }
}

void WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  if (dispatch thunk of QueriedExternalProvider.permissionState.getter() == 2)
  {
    v24 = v4;
    dispatch thunk of QueriedExternalProvider.externalProvider.getter();
    v10 = dispatch thunk of ExternalProvider.sourceBundleIdentifier.getter();
    v12 = v11;

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LSBundleRecord, LSBundleRecord_ptr);

    v13 = @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(v10, v12, 1);
    if (v5)
    {
    }

    else
    {
      v17 = v13;
      v22 = String._bridgeToObjectiveC()();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = v10;
      v19[3] = v12;
      v19[4] = a3;
      v19[5] = a4;
      v19[6] = a2;
      v19[7] = v17;
      v19[8] = a1;
      v19[9] = v18;
      aBlock[4] = partial apply for closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:);
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Data?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_137;
      v20 = _Block_copy(aBlock);

      v21 = v17;

      [v24 iconForBundleId:v22 completion:v20];
      _Block_release(v20);
    }
  }

  else
  {
    v14 = type metadata accessor for AuthorizationError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError, &type metadata accessor for AuthorizationError);
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, enum case for AuthorizationError.notAuthorized(_:), v14);
    a3(0, v15);
  }
}

uint64_t closure #1 in WorkoutKitXPCService.retrieveScheduledWorkoutCompositions(forSourceBundleId:completion:)(unint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static WOLog.xpcService.getter();
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v24 = a3;
      v16 = v15;
      v17 = swift_slowAlloc();
      v23[1] = a4;
      v18 = v17;
      v26 = v17;
      *v16 = 136315138;
      v25 = a2;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v19 = String.init<A>(describing:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v26);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "WorkoutKitXPCService: retrieve suggested plans error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);

      a3 = v24;
    }

    (*(v9 + 8))(v12, v8);
    swift_errorRetain();
    (a3)(&_swiftEmptyArrayStorage, a2);
  }

  else
  {
    v26 = &_swiftEmptyArrayStorage;
    specialized Sequence.forEach(_:)(a1, &v26);
    a3();
  }
}

uint64_t closure #1 in closure #1 in WorkoutKitXPCService.retrieveScheduledWorkoutCompositions(forSourceBundleId:completion:)(uint64_t *a1, char **a2)
{
  v42 = a2;
  v3 = type metadata accessor for WorkoutPlan.SerializationFormat();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  __chkstk_darwin(v3);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutPlan();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for ScheduledWorkoutPlan();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v42 - v23;
  v25 = *a1;
  dispatch thunk of WorkoutConfiguration.scheduledDate.getter();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return outlined destroy of Date?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  (*(v18 + 32))(v24, v16, v17);
  v27 = v48;
  WorkoutConfiguration.workoutPlanRepresentation()();
  if (v27)
  {
    return (*(v18 + 8))(v24, v17);
  }

  (*(v18 + 16))(v22, v24, v17);
  dispatch thunk of WorkoutConfiguration.lastCompletedDate.getter();
  ScheduledWorkoutPlan.init(_:scheduledDate:lastCompletedDate:)();
  v28 = v45;
  v29 = v46;
  v30 = v47;
  (*(v46 + 104))(v45, enum case for WorkoutPlan.SerializationFormat.binary(_:), v47);
  v31 = ScheduledWorkoutPlan.dataRepresentation(as:)();
  v48 = v32;
  (*(v29 + 8))(v28, v30);
  (*(v43 + 8))(v11, v44);
  v33 = v42;
  v34 = *v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
    *v42 = v34;
  }

  v37 = *(v34 + 2);
  v36 = *(v34 + 3);
  if (v37 >= v36 >> 1)
  {
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v34);
    *v42 = v41;
  }

  result = (*(v18 + 8))(v24, v17);
  v38 = *v42;
  *(v38 + 2) = v37 + 1;
  v39 = &v38[16 * v37];
  v40 = v48;
  *(v39 + 4) = v31;
  *(v39 + 5) = v40;
  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, char **a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      closure #1 in closure #1 in WorkoutKitXPCService.retrieveScheduledWorkoutCompositions(forSourceBundleId:completion:)(&v10, a2);

      if (!v2)
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

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSData?, @unowned NSError?) -> ()(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Data?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  outlined consume of Data?(v4, v9);
}

void @objc WorkoutKitXPCService.presentWorkoutCompositionData(_:completion:)(void *a1, int a2, void *a3, void *aBlock, void (*a5)(uint64_t, unint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = a3;
  v13 = a1;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  a5(v10, v12, v13, v8);
  _Block_release(v8);
  _Block_release(v8);
  outlined consume of Data._Representation(v10, v12);
}

void WorkoutKitXPCService.retrieveWorkoutComposition(fromWorkoutUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11 = [v9 predicateForObjectWithUUID:isa];

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for HKSampleType, HKSampleType_ptr);
  v12 = [swift_getObjCClassFromMetadata() workoutType];
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v7 + 32))(v14 + v13, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v15 = objc_allocWithZone(HKSampleQuery);
  aBlock[4] = partial apply for closure #1 in WorkoutKitXPCService.retrieveWorkoutComposition(fromWorkoutUUID:completion:);
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_66;
  v16 = _Block_copy(aBlock);

  v17 = [v15 initWithSampleType:v12 predicate:v11 limit:1 sortDescriptors:0 resultsHandler:v16];

  _Block_release(v16);

  v18 = WorkoutKitXPCService.healthStore.getter();
  [v18 executeQuery:v17];
}

uint64_t closure #1 in WorkoutKitXPCService.retrieveWorkoutComposition(fromWorkoutUUID:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v82 = a6;
  v83 = a2;
  v86 = a5;
  v87 = a4;
  v7 = type metadata accessor for WorkoutPlan.SerializationFormat();
  v81 = *(v7 - 8);
  v8 = *(v81 + 64);
  __chkstk_darwin(v7);
  v10 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WorkoutPlan();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Logger();
  v84 = *(v21 - 8);
  v85 = v21;
  v22 = *(v84 + 64);
  v23 = __chkstk_darwin(v21);
  v24 = __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  v28 = v78 - v27;
  if (a3)
  {
    swift_errorRetain();
    static WOLog.xpcService.getter();
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v89 = v32;
      *v31 = 136315138;
      v88 = a3;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v33 = String.init<A>(describing:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v89);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "WorkoutKitXPCService: failed to retrieve workout due to: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    (*(v84 + 8))(v28, v85);
    swift_errorRetain();
    v87(0, 0xF000000000000000, a3);
  }

  v79 = v10;
  v80 = v15;
  v37 = v81;
  v36 = v82;
  v38 = v83;
  if (!v83)
  {
    goto LABEL_19;
  }

  v39 = v12;
  v40 = v83 & 0xFFFFFFFFFFFFFF8;
  if (!(v83 >> 62))
  {
    result = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_19:
    v66 = v25;
    static WOLog.xpcService.getter();
    (*(v17 + 16))(v20, v36, v16);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v89 = v70;
      *v69 = 136315138;
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      (*(v17 + 8))(v20, v16);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v89);

      *(v69 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v67, v68, "WorkoutKitXPCService: failed to retrieve workout with uuid: %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
    }

    else
    {

      (*(v17 + 8))(v20, v16);
    }

    (*(v84 + 8))(v66, v85);
    Error = type metadata accessor for QueryError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type QueryError and conformance QueryError, &type metadata accessor for QueryError);
    v76 = swift_allocError();
    (*(*(Error - 8) + 104))(v77, enum case for QueryError.failedToRetrieveWorkout(_:), Error);
    v87(0, 0xF000000000000000, v76);
  }

  v78[1] = v26;
  v65 = v25;
  result = _CocoaArrayWrapper.endIndex.getter();
  v38 = v83;
  v25 = v65;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_8:
  if ((v38 & 0xC000000000000001) != 0)
  {
    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v42 = v37;
  }

  else
  {
    if (!*(v40 + 16))
    {
      __break(1u);
      return result;
    }

    v42 = v37;
    v43 = *(v38 + 32);
  }

  v44 = v43;
  v45 = v11;
  v46 = type metadata accessor for BlastDoorConfigurationValidator();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  BlastDoorConfigurationValidator.init()();
  v49 = [v44 metadata];
  v50 = v39;
  if (v49)
  {
    v51 = v49;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for WorkoutConfiguration();
  v52 = static WorkoutConfiguration.deserialize(from:validator:)();

  if (v52)
  {
    v53 = v80;
    v83 = v52;
    WorkoutConfiguration.workoutPlanRepresentation()();
    v54 = v53;
    v55 = v7;
    v56 = v79;
    (*(v42 + 104))();
    v57 = WorkoutPlan.dataRepresentation(as:)();
    v61 = v55;
    v62 = v57;
    v64 = v63;
    (*(v42 + 8))(v56, v61);
    (*(v50 + 8))(v54, v45);
    outlined copy of Data._Representation(v62, v64);
    v87(v62, v64, 0);

    outlined consume of Data._Representation(v62, v64);
    return outlined consume of Data._Representation(v62, v64);
  }

  else
  {
    v58 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError);
    v59 = swift_allocError();
    (*(*(v58 - 8) + 104))(v60, enum case for ImportError.unrecognizedDataFormat(_:), v58);
    v87(0, 0xF000000000000000, v59);
  }
}

void closure #1 in WorkoutKitXPCService.retrieveAuthorizationState(forBundleId:completion:)(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = objc_allocWithZone(NSNumber);
    swift_errorRetain();
    v6 = [v5 initWithUnsignedInteger:0];
    swift_errorRetain();
    a3(v6, a2);
  }

  else
  {
    if (a1)
    {

      v7 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:dispatch thunk of QueriedExternalProvider.permissionState.getter()];
      a3(v7, 0);
    }

    else
    {
      v7 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:0];
      a3(v7, 0);
    }
  }
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
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
  (*(a3 + 16))(a3, a1);
}

void closure #1 in WorkoutKitXPCService.requestAuthorization(forBundleId:completion:)(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4, void *a5, uint64_t a6, unint64_t a7)
{
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    a3(0, a2);
  }

  else if (a1)
  {

    if (dispatch thunk of QueriedExternalProvider.permissionState.getter())
    {
      v34 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:dispatch thunk of QueriedExternalProvider.permissionState.getter()];
      a3(v34, 0);

      v20 = v34;
    }

    else
    {
      WorkoutKitXPCService._showAuthorization(forProvider:completion:)(a1, a3, a4);
    }
  }

  else
  {
    v34 = v17;
    static WOLog.xpcService.getter();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = a5;
      v24 = v23;
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a6, a7, aBlock);
      _os_log_impl(&_mh_execute_header, v21, v22, "WorkoutKitXPCService: creating new provider entry for %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);

      a5 = v33;
    }

    (*(v15 + 8))(v19, v34);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LSBundleRecord, LSBundleRecord_ptr);

    v26 = @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(a6, a7, 1);
    v27 = String._bridgeToObjectiveC()();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = a6;
    v29[3] = a7;
    v29[4] = a3;
    v29[5] = a4;
    v29[6] = v26;
    v29[7] = v28;
    aBlock[4] = partial apply for closure #1 in closure #1 in WorkoutKitXPCService.requestAuthorization(forBundleId:completion:);
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Data?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_43;
    v30 = _Block_copy(aBlock);

    v31 = v26;

    [a5 iconForBundleId:v27 completion:v30];
    _Block_release(v30);
  }
}

uint64_t WorkoutKitXPCService._showAuthorization(forProvider:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of QueriedExternalProvider.externalProvider.getter();
  v9 = dispatch thunk of ExternalProvider.sourceName.getter();
  v11 = v10;

  v12 = specialized static PermissionAlert.present(appName:)(v9, v11);

  static WOLog.xpcService.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v28;
    *v15 = 136315138;
    v16 = NSStringForWOPersistencePermissionState();
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v12;
    v30 = a3;
    v18 = v17;
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v33);
    a3 = v30;

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "WorkoutKitXPCService: selected permission: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);

    v22 = v8;
    v23 = v29;
    (*(v31 + 8))(v22, v32);
  }

  else
  {

    (*(v31 + 8))(v8, v32);
    v23 = v12;
  }

  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = v23;

  v25 = WorkoutKitXPCService.queryClient.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #1 in WorkoutKitXPCService._showAuthorization(forProvider:completion:);
  *(v26 + 24) = v24;

  dispatch thunk of QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)();
}

id @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t closure #1 in closure #1 in WorkoutKitXPCService.requestAuthorization(forBundleId:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void, uint64_t), uint64_t a7, void *a8)
{
  v38 = a6;
  v39 = a7;
  v37 = a3;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  if (a2 >> 60 == 15)
  {
    static WOLog.xpcService.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = v25;
      *v24 = 136315138;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v40);
      _os_log_impl(&_mh_execute_header, v22, v23, "WorkoutKitXPCService: unable to retrieve icon image for: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    (*(v14 + 8))(v17, v13);
    return v38(0, v37);
  }

  else
  {
    outlined copy of Data._Representation(a1, a2);
    v27 = [a8 localizedName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    outlined copy of Data?(a1, a2);

    Date.init()();
    UUID.init()();
    v28 = type metadata accessor for ExternalProvider();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    ExternalProvider.init(sourceName:sourceBundleIdentifier:sourceImageData:syncStartDate:uuid:)();
    v31 = type metadata accessor for QueriedExternalProvider();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = QueriedExternalProvider.init(externalProvider:)();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v36 = Strong;
      WorkoutKitXPCService._showAuthorization(forProvider:completion:)(v34, v38, v39);
      outlined consume of Data?(a1, a2);
    }

    else
    {
      outlined consume of Data?(a1, a2);
    }
  }
}

uint64_t @objc WorkoutKitXPCService.retrieveScheduledWorkoutCompositions(forSourceBundleId:completion:)(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t closure #1 in WorkoutKitXPCService.setAuthorizationState(_:forBundleId:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    swift_errorRetain();
LABEL_3:
    a3(0, v6);
  }

  if (!a1)
  {
    v11 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError);
    v6 = swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for ImportError.unknownType(_:), v11);
    goto LABEL_3;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  v9 = WorkoutKitXPCService.queryClient.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in closure #1 in WorkoutKitXPCService.setAuthorizationState(_:forBundleId:completion:);
  *(v10 + 24) = v8;

  dispatch thunk of QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)();
}

void closure #1 in closure #1 in WorkoutKitXPCService.handleUninstalledAppIds(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, NSObject *a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_beginAccess();
    v16 = *(a3 + 16);
    *(a3 + 16) = a2;
    swift_errorRetain();
  }

  else
  {
    static WOLog.xpcService.getter();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v22);
      _os_log_impl(&_mh_execute_header, v17, v18, "WorkoutKitXPCService: successfully removed provider for bundleId: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
    }

    (*(v12 + 8))(v15, v11);
  }

  dispatch_group_leave(a6);
}

void closure #2 in WorkoutKitXPCService.handleUninstalledAppIds(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = WorkoutKitXPCService.nanoSyncControl.getter();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v10[4] = partial apply for closure #1 in closure #2 in WorkoutKitXPCService.handleUninstalledAppIds(_:completion:);
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_15;
  v9 = _Block_copy(v10);

  [v7 forceNanoSyncWithOptions:0 completion:v9];

  _Block_release(v9);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void closure #1 in closure #1 in WorkoutKitXPCService._deleteConfigurations(from:completion:)(int a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if (a2)
  {
    swift_beginAccess();
    v7 = *(a3 + 16);
    *(a3 + 16) = a2;
    swift_errorRetain();
  }

  dispatch_group_leave(group);
}

void closure #2 in WorkoutKitXPCService._deleteConfigurations(from:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = WorkoutKitXPCService.nanoSyncControl.getter();

    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = a4;
    aBlock[4] = partial apply for closure #1 in closure #2 in WorkoutKitXPCService._deleteConfigurations(from:completion:);
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_98;
    v11 = _Block_copy(aBlock);

    [v9 forceNanoSyncWithOptions:0 completion:v11];

    _Block_release(v11);
  }
}

uint64_t closure #1 in closure #2 in WorkoutKitXPCService.handleUninstalledAppIds(_:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static WOLog.xpcService.getter();
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = v9;
      v16 = v15;
      v24 = swift_slowAlloc();
      v27 = a2;
      v28 = v24;
      *v16 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(describing:)();
      v25 = v8;
      v19 = a3;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v28);

      *(v16 + 4) = v20;
      a3 = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "WorkoutKitXPCService: nano sync error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);

      (*(v26 + 8))(v12, v25);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }

  swift_beginAccess();
  v21 = *(a5 + 16);
  swift_errorRetain();
  a3(v21 == 0, v21);
}

void closure #1 in WorkoutKitXPCService._showAuthorization(forProvider:completion:)(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_errorRetain();
    a2(0, a1);
  }

  else
  {
    v6 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:a4];
    a2(v6, 0);
  }
}

uint64_t closure #1 in WorkoutKitXPCService._updateProvider(_:permissionState:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    static WOLog.xpcService.getter();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20 = v5;
      v13 = v12;
      v19 = swift_slowAlloc();
      v21 = a2;
      v22 = v19;
      *v13 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v14 = String.init<A>(describing:)();
      v16 = a3;
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

      *(v13 + 4) = v17;
      a3 = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "WorkoutKitXPCService: update external provider error: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);

      (*(v6 + 8))(v9, v20);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }
  }

  return a3(a2);
}

uint64_t closure #1 in WorkoutKitXPCService._retrieveAuthorizedExternalProviderWithChecks(_:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v4 = a2;
    swift_errorRetain();
  }

  else
  {
    if (a1)
    {

      if (dispatch thunk of QueriedExternalProvider.permissionState.getter() == 2)
      {

        a3(v5, 0);
      }
    }

    v7 = type metadata accessor for AuthorizationError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError, &type metadata accessor for AuthorizationError);
    v4 = swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for AuthorizationError.notAuthorized(_:), v7);
  }

  a3(0, v4);
}

uint64_t closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:sourceBundleId:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  if (!a1 || a2)
  {
    return (a3)(0, a2);
  }

  WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)(a6, a1, a3, a4);
}

uint64_t closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void, uint64_t), uint64_t a7, uint64_t *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v68 = a6;
  v69 = type metadata accessor for Logger();
  v17 = *(v69 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v69);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v24 = &v63 - v23;
  if (v22 >> 60 == 15)
  {
    static WOLog.xpcService.getter();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = a3;
      v29 = swift_slowAlloc();
      v70 = v29;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v70);
      _os_log_impl(&_mh_execute_header, v25, v26, "WorkoutKitXPCService: unable to retrieve icon image for: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      a3 = v28;
    }

    (*(v17 + 8))(v21, v69);
    return v68(0, a3);
  }

  v64 = a3;
  v65 = a7;
  v66 = v22;
  v67 = a1;
  outlined copy of Data._Representation(a1, v22);
  dispatch thunk of QueriedExternalProvider.externalProvider.getter();
  v31 = dispatch thunk of ExternalProvider.sourceName.getter();
  v33 = v32;

  v34 = [a9 localizedName];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (v31 == v35 && v33 == v37)
  {

    v40 = v66;
  }

  else
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v40 = v66;
    if ((v39 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  dispatch thunk of QueriedExternalProvider.externalProvider.getter();
  v41 = dispatch thunk of ExternalProvider.sourceImageData.getter();
  v43 = v42;

  v44 = specialized static Data.== infix(_:_:)(v41, v43, v67, v40);
  result = outlined consume of Data._Representation(v41, v43);
  if ((v44 & 1) == 0)
  {
LABEL_14:
    static WOLog.xpcService.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "WorkoutKitXPCService: updating external provider", v48, 2u);
    }

    (*(v17 + 8))(v24, v69);
    dispatch thunk of QueriedExternalProvider.externalProvider.getter();
    v49 = [a9 localizedName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    dispatch thunk of ExternalProvider.sourceName.setter();

    dispatch thunk of QueriedExternalProvider.externalProvider.getter();
    outlined copy of Data?(v67, v40);
    dispatch thunk of ExternalProvider.sourceImageData.setter();

    v45 = 1;
    goto LABEL_17;
  }

  v45 = 0;
LABEL_17:
  v70 = &_swiftEmptyArrayStorage;
  v50 = *(a10 + 16);
  if (v50)
  {
    v51 = 0;
    do
    {
      v52 = v51;
      while (1)
      {
        if (v52 >= v50)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          return result;
        }

        v53 = type metadata accessor for ScheduledWorkoutPlan();
        v55 = *(v53 - 8);
        result = v53 - 8;
        v54 = v55;
        v51 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_33;
        }

        result = closure #1 in closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)(a10 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v52, a8, &v71);
        if (v71)
        {
          break;
        }

        ++v52;
        if (v51 == v50)
        {
          goto LABEL_28;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v51 != v50);
  }

LABEL_28:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v58 = Strong;
    v59 = WorkoutKitXPCService.queryClient.getter();

    v60 = swift_allocObject();
    *(v60 + 16) = a11;
    *(v60 + 24) = v45;
    v61 = v68;
    *(v60 + 32) = a8;
    *(v60 + 40) = v61;
    v62 = v64;
    *(v60 + 48) = v65;
    *(v60 + 56) = v62;

    swift_errorRetain();
    dispatch thunk of QueryClient.addManagedConfigurations(managedConfigurations:completion:)();
    outlined consume of Data?(v67, v66);
  }

  else
  {
    outlined consume of Data?(v67, v66);
  }
}

uint64_t closure #1 in closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v70 = a2;
  v79 = a3;
  v5 = type metadata accessor for UUID();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  __chkstk_darwin(v5);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConfigurationType();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  __chkstk_darwin(v8);
  v66 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v69 = &v65 - v13;
  v14 = type metadata accessor for ScheduledWorkoutPlan();
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = *(v80 + 64);
  __chkstk_darwin(v14);
  v77 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v75 = *(v17 - 8);
  v76 = v17;
  v18 = *(v75 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v74 = &v65 - v22;
  v82 = type metadata accessor for WorkoutPlan();
  v23 = *(v82 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v82);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v65 - v28;
  ScheduledWorkoutPlan.plan.getter();
  type metadata accessor for Occurrence();
  v30 = Occurrence.__allocating_init(count:)();
  type metadata accessor for WorkoutConfigurationValidator();
  static WorkoutConfigurationValidator.shared.getter();
  v31 = WorkoutPlan.workoutCoreRepresentation(occurrence:validator:)();
  if (v3)
  {
    v78 = 0;

    v32 = *(v23 + 8);
    v32(v29, v82);
    v33 = v74;
    static WOLog.xpcService.getter();
    v34 = v77;
    (*(v80 + 16))(v77, a1, v81);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v83 = v70;
      *v37 = 136315138;
      LODWORD(v69) = v36;
      ScheduledWorkoutPlan.plan.getter();
      v38 = v71;
      WorkoutPlan.id.getter();
      v32(v27, v82);
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v39 = v73;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v72 + 8))(v38, v39);
      (*(v80 + 8))(v77, v81);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v83);

      *(v37 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v35, v69, "WorkoutKitXPCService: failed to deserialize %s - skipping scheduling", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
    }

    else
    {

      (*(v80 + 8))(v34, v81);
    }

    result = (*(v75 + 8))(v33, v76);
    goto LABEL_8;
  }

  v44 = v31;
  v78 = 0;
  (*(v23 + 8))(v29, v82);

  if ((dispatch thunk of WorkoutConfiguration.isValidConfiguration.getter() & 1) == 0)
  {
    v48 = v21;
    static WOLog.xpcService.getter();
    v49 = v44;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v82 = v48;
      v53 = v52;
      v83 = swift_slowAlloc();
      *v53 = 136315394;
      v54 = v66;
      dispatch thunk of WorkoutConfiguration.type.getter();
      v55 = ConfigurationType.description.getter();
      v57 = v56;
      (*(v67 + 8))(v54, v68);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v83);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2080;
      v59 = v71;
      dispatch thunk of WorkoutConfiguration.uuid.getter();
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v60 = v73;
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      (*(v72 + 8))(v59, v60);
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v83);

      *(v53 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v50, v51, "WorkoutKitXPCService: invalid %s configuration for %s - skipping scheduling", v53, 0x16u);
      swift_arrayDestroy();

      result = (*(v75 + 8))(v82, v76);
    }

    else
    {

      result = (*(v75 + 8))(v48, v76);
    }

LABEL_8:
    v44 = 0;
    goto LABEL_9;
  }

  dispatch thunk of QueriedExternalProvider.externalProvider.getter();
  dispatch thunk of WorkoutConfiguration.externalProvider.setter();
  v45 = v69;
  ScheduledWorkoutPlan.scheduledDate.getter();
  v46 = type metadata accessor for Date();
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  dispatch thunk of WorkoutConfiguration.scheduledDate.setter();
  ScheduledWorkoutPlan.lastCompletedDate.getter();
  result = dispatch thunk of WorkoutConfiguration.lastCompletedDate.setter();
LABEL_9:
  *v79 = v44;
  return result;
}

void closure #2 in closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = WorkoutKitXPCService.nanoSyncControl.getter();

      v17 = swift_allocObject();
      *(v17 + 16) = a4 & 1;
      *(v17 + 24) = a3;
      *(v17 + 32) = a5;
      *(v17 + 40) = a6;
      *(v17 + 48) = a7;
      *(v17 + 56) = 1;
      *(v17 + 64) = a8;
      aBlock[4] = partial apply for closure #1 in closure #2 in closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:);
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_146;
      v18 = _Block_copy(aBlock);

      swift_errorRetain();

      [v16 forceNanoSyncWithOptions:0 completion:v18];

      _Block_release(v18);
    }
  }

  else
  {
    a6(0);
  }
}

uint64_t closure #1 in closure #2 in closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t), uint64_t a7, char a8, uint64_t a9)
{
  v39 = a5;
  v15 = type metadata accessor for Logger();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v38 = v17;
    swift_errorRetain();
    static WOLog.xpcService.getter();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    v37 = v21;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = a4;
      v23 = v22;
      v34 = swift_slowAlloc();
      v40 = a2;
      v41 = v34;
      *v23 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v24 = String.init<A>(describing:)();
      v35 = v15;
      v26 = a8;
      v27 = a7;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v41);

      *(v23 + 4) = v28;
      a7 = v27;
      a8 = v26;
      _os_log_impl(&_mh_execute_header, v20, v37, "WorkoutKitXPCService: nano sync error: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);

      (*(v38 + 8))(v19, v35);
    }

    else
    {

      (*(v38 + 8))(v19, v15);
    }
  }

  if ((a3 & 1) == 0)
  {
    return a6(a8 & 1, a9);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = result;
    v31 = a6;
    v32 = WorkoutKitXPCService.queryClient.getter();

    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = a7;
    *(v33 + 32) = a8 & 1;
    *(v33 + 40) = a9;

    swift_errorRetain();
    dispatch thunk of QueryClient.updateQueriedExternalProvider(_:permissionState:completion:)();
  }

  return result;
}

uint64_t closure #1 in WorkoutKitXPCService._removeScheduledWorkouts(_:sourceBundleId:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v45 = &v41 - v14;
  v15 = type metadata accessor for WorkoutPlan();
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = *(v53 + 64);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ScheduledWorkoutPlan();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  if (!a1 || a2)
  {
    return a3(0, a2);
  }

  v41 = a3;
  v42 = a4;
  v43 = a6;
  v55 = &_swiftEmptyArrayStorage;
  v25 = *(a5 + 16);
  if (v25)
  {
    v52 = type metadata accessor for Occurrence();
    v26 = type metadata accessor for WorkoutConfigurationValidator();
    v27 = v20 + 16;
    v50 = *(v20 + 16);
    v51 = v26;
    v28 = a5 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v29 = *(v27 + 56);
    v48 = (v53 + 8);
    v49 = v29;
    v53 = v27;
    v47 = (v27 - 8);

    v44 = &_swiftEmptyArrayStorage;
    do
    {
      v50(v23, v28, v19);
      ScheduledWorkoutPlan.plan.getter();
      v30 = Occurrence.__allocating_init(count:)();
      static WorkoutConfigurationValidator.shared.getter();
      WorkoutPlan.workoutCoreRepresentation(occurrence:validator:)();
      (*v48)(v18, v54);

      dispatch thunk of QueriedExternalProvider.externalProvider.getter();
      dispatch thunk of WorkoutConfiguration.externalProvider.setter();
      v31 = v45;
      ScheduledWorkoutPlan.scheduledDate.getter();
      v32 = type metadata accessor for Date();
      (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
      dispatch thunk of WorkoutConfiguration.scheduledDate.setter();
      ScheduledWorkoutPlan.lastCompletedDate.getter();
      dispatch thunk of WorkoutConfiguration.lastCompletedDate.setter();
      (*v47)(v23, v19);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v44 = v55;
      v28 += v49;
      --v25;
    }

    while (v25);
  }

  else
  {

    v44 = &_swiftEmptyArrayStorage;
  }

  v34 = v43;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v37 = WorkoutKitXPCService.queryClient.getter();

    v38 = swift_allocObject();
    v39 = v41;
    v40 = v42;
    v38[2] = v34;
    v38[3] = v39;
    v38[4] = v40;
    v38[5] = 0;

    swift_errorRetain();
    dispatch thunk of QueryClient.removeManagedConfigurations(managedConfigurations:completion:)();
  }
}

void closure #2 in closure #1 in WorkoutKitXPCService._removeScheduledWorkouts(_:sourceBundleId:completion:)(char a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = WorkoutKitXPCService.nanoSyncControl.getter();

      v12 = swift_allocObject();
      *(v12 + 16) = a4;
      *(v12 + 24) = a5;
      *(v12 + 32) = 1;
      *(v12 + 40) = a6;
      aBlock[4] = partial apply for closure #1 in closure #2 in closure #1 in WorkoutKitXPCService._removeScheduledWorkouts(_:sourceBundleId:completion:);
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_170;
      v13 = _Block_copy(aBlock);

      swift_errorRetain();

      [v11 forceNanoSyncWithOptions:0 completion:v13];

      _Block_release(v13);
    }
  }

  else
  {
    a4(0);
  }
}

uint64_t closure #1 in closure #1 in WorkoutKitXPCService.saveWorkoutCompositionData(_:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), uint64_t a4, char a5, uint64_t a6, const char *a7)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v32 = a7;
    swift_errorRetain();
    static WOLog.xpcService.getter();
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v30 = v13;
      v20 = v19;
      v21 = swift_slowAlloc();
      v31 = a6;
      v28 = v21;
      v33 = a2;
      v34 = v21;
      *v20 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v22 = String.init<A>(describing:)();
      v29 = v12;
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v34);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, v32, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v25 = v31;

      (*(v30 + 8))(v16, v29);
      return a3(a5 & 1, v25);
    }

    (*(v13 + 8))(v16, v12);
  }

  return a3(a5 & 1, a6);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for HKSample, HKSample_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMR);
  v10 = *(type metadata accessor for ScheduledWorkoutPlan() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ScheduledWorkoutPlan() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t specialized WorkoutKitXPCService._showAlert(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit11ImportErrorOSgMd, &_s10WorkoutKit11ImportErrorOSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v14 - v4;
  v14[1] = a1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = type metadata accessor for ImportError();
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (v7)
  {
    v9 = *(v6 - 8);
    v8(v5, 0, 1, v6);
    (*(v9 + 88))(v5, v6);
    (*(v9 + 8))(v5, v6);
  }

  else
  {
    v8(v5, 1, 1, v6);
    outlined destroy of Date?(v5, &_s10WorkoutKit11ImportErrorOSgMd, &_s10WorkoutKit11ImportErrorOSgMR);
  }

  v10 = String.workoutKitLocalized()();
  v11 = String.workoutKitLocalized()();
  v12 = String.workoutKitLocalized()();
  specialized static SystemAlertPresenter.present(title:message:defaultButtonTitle:alternateButtonTitle:)(v11._countAndFlagsBits, v11._object, v10._countAndFlagsBits, v10._object, v12._countAndFlagsBits, v12._object, 0, 0);
}

void specialized WorkoutKitXPCService.presentWorkoutCompositionData(_:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  if (WorkoutKitXPCService.processIsForegrounded()())
  {
    type metadata accessor for WorkoutConfiguration();
    type metadata accessor for Occurrence();
    v9 = Occurrence.__allocating_init(count:)();
    type metadata accessor for WorkoutConfigurationValidator();
    static WorkoutConfigurationValidator.shared.getter();
    v10 = static WorkoutConfiguration.importFromData(_:with:validator:)();

    v14 = [objc_allocWithZone(SBSRemoteAlertDefinition) initWithServiceName:WorkoutRemoteAlertServiceName viewControllerClassName:WorkoutRemoteAlertServiceViewControllerName];
    v15 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100016AF0;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v17;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = a1;
    *(inited + 80) = a2;
    outlined copy of Data._Representation(a1, a2);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of Date?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v15 setUserInfo:{isa, v24, v25}];

    v19 = (a3 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler);
    v20 = *(a3 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler);
    v21 = *(a3 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler + 8);
    *v19 = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
    v19[1] = v8;

    outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(v20);
    v22 = [objc_opt_self() newHandleWithDefinition:v14 configurationContext:v15];
    v23 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    [v22 registerObserver:a3];
    [v22 activateWithContext:v23];
  }

  else
  {
    v11 = type metadata accessor for AppError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type AppError and conformance AppError, &type metadata accessor for AppError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for AppError.applicationNotInForeground(_:), v11);
    v13 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v13);
  }
}

void specialized WorkoutKitXPCService.openWorkoutApp(withWorkoutPlan:autostartWorkoutPlan:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a4;
  _Block_copy(a4);
  if ((specialized WorkoutKitXPCService.hasPairedWatch.getter() & 1) == 0)
  {
    v8 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError);
    swift_allocError();
    v10 = v9;
    v11 = &enum case for StateError.watchNotPaired(_:);
LABEL_6:
    (*(*(v8 - 8) + 104))(v10, *v11, v8);
    swift_willThrow();
    swift_errorRetain();
    v13 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v13);

    goto LABEL_7;
  }

  if ((specialized WorkoutKitXPCService.workoutAppIsInstalled.getter() & 1) == 0)
  {
    v8 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError);
    swift_allocError();
    v10 = v12;
    v11 = &enum case for StateError.workoutApplicationNotInstalled(_:);
    goto LABEL_6;
  }

  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for Occurrence();
  v6 = Occurrence.__allocating_init(count:)();
  type metadata accessor for WorkoutConfigurationValidator();
  static WorkoutConfigurationValidator.shared.getter();
  v7 = static WorkoutConfiguration.importFromData(_:with:validator:)();

  if (WorkoutKitXPCService.processIsForegrounded()())
  {
    v14 = WorkoutKitXPCService.healthStore.getter();
    isa = Data._bridgeToObjectiveC()().super.isa;
    aBlock[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_225;
    v16 = _Block_copy(aBlock);

    [v14 _startWatchAppWithWorkoutPlanData:isa completion:v16];
    _Block_release(v16);

    return;
  }

  v17 = type metadata accessor for AppError();
  lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type AppError and conformance AppError, &type metadata accessor for AppError);
  swift_allocError();
  (*(*(v17 - 8) + 104))(v18, enum case for AppError.applicationNotInForeground(_:), v17);
  v19 = _convertErrorToNSError(_:)();
  (a4)[2](a4, 0, v19);

LABEL_7:
}

void specialized WorkoutKitXPCService.openWorkoutApp(withMirroredStart:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = type metadata accessor for MirroredStart();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  __chkstk_darwin(v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = swift_allocObject();
  *(v41 + 16) = a4;
  _Block_copy(a4);
  static WOLog.xpcService.getter();
  outlined copy of Data._Representation(a1, a2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v17, v18))
  {
    outlined consume of Data._Representation(a1, a2);
    goto LABEL_14;
  }

  v38[1] = a3;
  v19 = swift_slowAlloc();
  v20 = v19;
  *v19 = 134217984;
  v21 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v21 != 2)
    {
      v22 = 0;
      goto LABEL_13;
    }

    v24 = *(a1 + 16);
    v23 = *(a1 + 24);
    v25 = __OFSUB__(v23, v24);
    v22 = v23 - v24;
    if (!v25)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    LODWORD(v22) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return;
    }

    v22 = v22;
    goto LABEL_13;
  }

  if (v21)
  {
    goto LABEL_10;
  }

  v22 = BYTE6(a2);
LABEL_13:
  *(v19 + 4) = v22;
  outlined consume of Data._Representation(a1, a2);
  _os_log_impl(&_mh_execute_header, v17, v18, "WorkoutKitXPCService: openWorkoutApp with MirroredStart data (%ld bytes)", v20, 0xCu);

LABEL_14:

  (*(v13 + 8))(v16, v12);
  if (specialized WorkoutKitXPCService.hasPairedWatch.getter())
  {
    if (specialized WorkoutKitXPCService.workoutAppIsInstalled.getter())
    {
      static MirroredStart.deserialize(from:)();
      (*(v39 + 8))(v11, v40);
      if (WorkoutKitXPCService.processIsForegrounded()())
      {
        v32 = WorkoutKitXPCService.healthStore.getter();
        isa = Data._bridgeToObjectiveC()().super.isa;
        aBlock[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
        aBlock[5] = v41;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_218;
        v34 = _Block_copy(aBlock);

        [v32 _startWatchAppWithMirroredStartData:isa completion:v34];
        _Block_release(v34);

        return;
      }

      v35 = type metadata accessor for AppError();
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type AppError and conformance AppError, &type metadata accessor for AppError);
      swift_allocError();
      (*(*(v35 - 8) + 104))(v36, enum case for AppError.applicationNotInForeground(_:), v35);
      v37 = _convertErrorToNSError(_:)();
      (a4)[2](a4, 0, v37);

      goto LABEL_20;
    }

    v26 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError);
    swift_allocError();
    v28 = v30;
    v29 = &enum case for StateError.workoutApplicationNotInstalled(_:);
  }

  else
  {
    v26 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError);
    swift_allocError();
    v28 = v27;
    v29 = &enum case for StateError.watchNotPaired(_:);
  }

  (*(*(v26 - 8) + 104))(v28, *v29, v26);
  swift_willThrow();
  swift_errorRetain();
  v31 = _convertErrorToNSError(_:)();
  (a4)[2](a4, 0, v31);

LABEL_20:
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized WorkoutKitXPCService.openWorkoutApp(with:autostart:completion:)(uint64_t a1, int a2, void *a3, const void *a4)
{
  v27 = a3;
  v26 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v8);
  v9 = type metadata accessor for WorkoutPlan();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v25[-v14];
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  _Block_copy(a4);
  WorkoutKitXPC_ActivityType.openGoalPlan.getter(a1, v15);
  v17 = WorkoutPlan.dataRepresentation.getter();
  v19 = v18;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v10 + 16))(v13, v15, v9);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSUUID?, @unowned NSError?) -> ();
  *(v22 + 24) = v16;
  (*(v10 + 32))(v22 + v21, v13, v9);
  aBlock[4] = partial apply for closure #1 in WorkoutKitXPCService.openWorkoutApp(with:autostart:completion:);
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_204;
  v23 = _Block_copy(aBlock);

  [v27 openWorkoutAppWithWorkoutPlanData:isa autostartWorkoutPlan:v26 & 1 completion:v23];
  outlined consume of Data._Representation(v17, v19);
  _Block_release(v23);

  (*(v10 + 8))(v15, v9);
}

uint64_t specialized WorkoutKitXPCService.endActiveWorkoutPlan(withIdentifier:completion:)(uint64_t a1, uint64_t a2)
{
  if (specialized WorkoutKitXPCService.hasPairedWatch.getter())
  {
    if (specialized WorkoutKitXPCService.workoutAppIsInstalled.getter())
    {
      v3 = type metadata accessor for ImportError();
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError);
      swift_allocError();
      (*(*(v3 - 8) + 104))(v4, enum case for ImportError.unsupportedPlatform(_:), v3);
      v5 = _convertErrorToNSError(_:)();
      (*(a2 + 16))(a2, 0, v5);

      goto LABEL_7;
    }

    v6 = &enum case for StateError.workoutApplicationNotInstalled(_:);
  }

  else
  {
    v6 = &enum case for StateError.watchNotPaired(_:);
  }

  v7 = type metadata accessor for StateError();
  lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *v6, v7);
  swift_willThrow();
  swift_errorRetain();
  v9 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, 0, v9);

LABEL_7:
}

uint64_t specialized WorkoutKitXPCService.saveWorkoutCompositionData(_:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = type metadata accessor for WorkoutPlan();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  _Block_copy(a4);
  if ((specialized WorkoutKitXPCService.hasPairedWatch.getter() & 1) == 0)
  {
    v16 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, enum case for StateError.watchNotPaired(_:), v16);
LABEL_6:
    swift_willThrow();
    swift_errorRetain();
    v20 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v20);
  }

  if ((specialized WorkoutKitXPCService.workoutAppIsInstalled.getter() & 1) == 0)
  {
    v18 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, enum case for StateError.workoutApplicationNotInstalled(_:), v18);
    goto LABEL_6;
  }

  v32 = v9;
  v33 = v12;
  v30 = a3;
  v31 = v8;
  v34 = v13;
  type metadata accessor for WorkoutConfiguration();
  type metadata accessor for Occurrence();
  v14 = Occurrence.__allocating_init(count:)();
  type metadata accessor for WorkoutConfigurationValidator();
  static WorkoutConfigurationValidator.shared.getter();
  v15 = static WorkoutConfiguration.importFromData(_:with:validator:)();

  outlined copy of Data._Representation(a1, a2);
  v22 = v33;
  WorkoutPlan.init(from:)();
  v23 = Occurrence.__allocating_init(count:)();
  static WorkoutConfigurationValidator.shared.getter();
  v24 = WorkoutPlan.workoutCoreRepresentation(occurrence:validator:)();

  v25 = WorkoutKitXPCService.queryClient.getter();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v27[2] = v24;
  v27[3] = v26;
  v28 = v34;
  v27[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  v27[5] = v28;
  v29 = v24;

  dispatch thunk of QueryClient.save(_:completion:)();

  (*(v32 + 8))(v22, v31);
}

uint64_t specialized WorkoutKitXPCService._addScheduledWorkouts(_:sourceBundleId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v11 = swift_allocObject();
  v11[2] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  v11[3] = v10;
  v11[4] = a4;
  v11[5] = a1;
  _Block_copy(a5);

  a4;

  if ((specialized WorkoutKitXPCService.hasPairedWatch.getter() & 1) == 0)
  {
    v15 = &enum case for StateError.watchNotPaired(_:);
LABEL_7:
    v16 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *v15, v16);
    swift_willThrow();
LABEL_8:
  }

  if ((specialized WorkoutKitXPCService.workoutAppIsInstalled.getter() & 1) == 0)
  {
    v15 = &enum case for StateError.workoutApplicationNotInstalled(_:);
    goto LABEL_7;
  }

  if ((specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(a2, a3) & 1) == 0)
  {
    v19 = WorkoutKitXPCService.queryClient.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = partial apply for closure #1 in WorkoutKitXPCService._addScheduledWorkouts(_:sourceBundleId:completion:);
    *(v20 + 24) = v11;

    dispatch thunk of QueryClient.fetchExternalProvider(sourceIdentifier:completion:)();

    goto LABEL_8;
  }

  v12 = type metadata accessor for ImportError();
  lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError);
  swift_allocError();
  (*(*(v12 - 8) + 104))(v13, enum case for ImportError.unsupportedPlatform(_:), v12);
  v14 = _convertErrorToNSError(_:)();
  (a5)[2](a5, 0, v14);
}

uint64_t specialized WorkoutKitXPCService._removeScheduledWorkouts(_:sourceBundleId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  v11[3] = v9;
  v11[4] = a1;
  v11[5] = v10;
  _Block_copy(a5);

  if ((specialized WorkoutKitXPCService.hasPairedWatch.getter() & 1) == 0)
  {
    v15 = &enum case for StateError.watchNotPaired(_:);
LABEL_7:
    v16 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *v15, v16);
    swift_willThrow();
    goto LABEL_8;
  }

  if ((specialized WorkoutKitXPCService.workoutAppIsInstalled.getter() & 1) == 0)
  {
    v15 = &enum case for StateError.workoutApplicationNotInstalled(_:);
    goto LABEL_7;
  }

  if ((specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(a2, a3) & 1) == 0)
  {
    v19 = WorkoutKitXPCService.queryClient.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = partial apply for closure #1 in WorkoutKitXPCService._removeScheduledWorkouts(_:sourceBundleId:completion:);
    *(v20 + 24) = v11;

    dispatch thunk of QueryClient.fetchExternalProvider(sourceIdentifier:completion:)();

    goto LABEL_9;
  }

  v12 = type metadata accessor for ImportError();
  lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError);
  swift_allocError();
  (*(*(v12 - 8) + 104))(v13, enum case for ImportError.unsupportedPlatform(_:), v12);
  v14 = _convertErrorToNSError(_:)();
  (a5)[2](a5, 0, v14);

LABEL_8:

LABEL_9:
}

void specialized WorkoutKitXPCService.addScheduledWorkouts(_:sourceBundleId:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const void *a5, const char *a6, void (*a7)(unint64_t *, char *, unint64_t, uint64_t, const void *), uint64_t a8)
{
  v48 = a7;
  v49 = a8;
  v47 = a6;
  v50 = a1;
  v12 = type metadata accessor for ScheduledWorkoutPlan();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v51 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v41 - v22;
  _Block_copy(a5);
  v44 = specialized WorkoutKitXPCService.primaryBundleIdentifier(for:)(a2, a3);
  v45 = a4;
  v46 = v18;
  v42 = a5;
  v25 = v24;
  static WOLog.xpcService.getter();
  v26 = v50;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  v29 = os_log_type_enabled(v27, v28);
  v43 = v17;
  v41 = v25;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v52 = v31;
    *v30 = 134218242;
    *(v30 + 4) = *(v50 + 16);

    *(v30 + 12) = 2080;
    *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v25, &v52);
    _os_log_impl(&_mh_execute_header, v27, v28, v47, v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v26 = v50;

    v17 = v43;
  }

  else
  {
  }

  (*(v46 + 8))(v23, v17);
  v32 = v45;
  v33 = *(v26 + 16);
  v34 = &_swiftEmptyArrayStorage;
  if (v33)
  {
    v52 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
    v34 = v52;
    v35 = (v26 + 40);
    do
    {
      v36 = *(v35 - 1);
      v37 = *v35;
      outlined copy of Data._Representation(v36, *v35);
      static ScheduledWorkoutPlan.importFromData(_:)();
      outlined consume of Data._Representation(v36, v37);
      v52 = v34;
      v39 = v34[2];
      v38 = v34[3];
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1);
        v34 = v52;
      }

      v35 += 2;
      v34[2] = v39 + 1;
      (*(v13 + 32))(v34 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v39, v16, v12);
      --v33;
    }

    while (v33);
    v32 = v45;
  }

  v40 = v42;
  _Block_copy(v42);
  v48(v34, v44, v41, v32, v40);
  _Block_release(v40);

  _Block_release(v40);
}

uint64_t specialized WorkoutKitXPCService.storeScheduledWorkoutCompositions(_:sourceBundleId:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void, void))
{
  v10 = type metadata accessor for Logger();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  _Block_copy(a5);
  v15 = specialized WorkoutKitXPCService.primaryBundleIdentifier(for:)(a2, a3);
  v42 = v14;
  v16 = v15;
  v18 = v17;
  v19 = swift_allocObject();
  v19[2] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  v19[3] = v14;
  v19[4] = a1;
  v19[5] = a4;
  v19[6] = v16;
  v19[7] = v18;

  a4;

  if (specialized WorkoutKitXPCService.hasPairedWatch.getter())
  {
    if (specialized WorkoutKitXPCService.workoutAppIsInstalled.getter())
    {
      if (specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(v16, v18))
      {
        v20 = type metadata accessor for ImportError();
        lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError);
        swift_allocError();
        (*(*(v20 - 8) + 104))(v21, enum case for ImportError.unsupportedPlatform(_:), v20);

        v22 = _convertErrorToNSError(_:)();
        (a5)[2](a5, 0, v22);
      }

      else
      {
        v38 = WorkoutKitXPCService.queryClient.getter();
        v39 = swift_allocObject();
        *(v39 + 16) = partial apply for closure #1 in WorkoutKitXPCService.storeScheduledWorkoutCompositions(_:sourceBundleId:completion:);
        *(v39 + 24) = v19;

        dispatch thunk of QueryClient.fetchExternalProvider(sourceIdentifier:completion:)();
      }
    }

    v23 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError);
    v24 = swift_allocError();
    v26 = v28;
    v27 = &enum case for StateError.workoutApplicationNotInstalled(_:);
  }

  else
  {

    v23 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError);
    v24 = swift_allocError();
    v26 = v25;
    v27 = &enum case for StateError.watchNotPaired(_:);
  }

  (*(*(v23 - 8) + 104))(v26, *v27, v23);
  swift_willThrow();

  static WOLog.xpcService.getter();
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v24;
    v44 = v32;
    *v31 = 136315138;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v33 = String.init<A>(describing:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v44);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "WorkoutKitXPCService: failed to store workout plans due to %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  (*(v40 + 8))(v13, v41);
  swift_errorRetain();
  v36 = _convertErrorToNSError(_:)();
  (a5)[2](a5, 0, v36);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in WorkoutKitXPCService.storeScheduledWorkoutCompositions(_:sourceBundleId:completion:)(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v38 = a4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ScheduledWorkoutPlan();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    a2(0, a1);
  }

  else
  {
    v33 = a5;
    v34 = v11;
    v35 = v10;
    v36 = v14;
    v21 = v38;
    v22 = *(v38 + 16);
    v23 = &_swiftEmptyArrayStorage;
    if (v22)
    {
      v31 = a3;
      v32 = a2;
      v40 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
      v23 = v40;
      v39 = v16 + 32;
      v24 = (v21 + 40);
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        outlined copy of Data._Representation(v25, *v24);
        static ScheduledWorkoutPlan.importFromData(_:)();
        outlined consume of Data._Representation(v25, v26);
        v40 = v23;
        v28 = v23[2];
        v27 = v23[3];
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1);
          v23 = v40;
        }

        v24 += 2;
        v23[2] = v28 + 1;
        (*(v16 + 32))(v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v28, v19, v15);
        --v22;
      }

      while (v22);
      v30 = v31;
      v29 = v32;
    }

    else
    {
      v29 = a2;
      v30 = a3;
    }

    WorkoutKitXPCService._addScheduledWorkouts(_:with:completion:)(v23, v37, v29, v30);
  }
}

uint64_t specialized WorkoutKitXPCService._deleteConfigurations(from:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v65 = a2;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v13 - 8);
  v14 = *(v62 + 64);
  __chkstk_darwin(v13);
  v61 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v60 = *(v16 - 8);
  v17 = *(v60 + 64);
  __chkstk_darwin(v16);
  v59 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS.QoSClass();
  v57 = *(v19 - 8);
  v58 = v19;
  v20 = *(v57 + 64);
  __chkstk_darwin(v19);
  v56 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = a6;
  v22[6] = a7;
  v23 = *(a1 + 16);

  v24 = a6;

  if (v23)
  {
    v64 = v22;
    v54 = v16;
    v55 = v13;
    v25 = dispatch_group_create();
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    v26 = 1 << *(a1 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(a1 + 56);
    v29 = (v26 + 63) >> 6;

    v31 = 0;
    for (i = v64; v28; i = v64)
    {
      v33 = v31;
LABEL_10:
      v34 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v35 = (*(a1 + 48) + ((v33 << 10) | (16 * v34)));
      v37 = *v35;
      v36 = v35[1];

      dispatch_group_enter(v25);
      v38 = WorkoutKitXPCService.queryClient.getter();
      v39 = swift_allocObject();
      *(v39 + 16) = v63;
      *(v39 + 24) = v25;

      v40 = v25;
      dispatch thunk of QueryClient.deleteManagedConfigurations(sourceIdentifier:completion:)();
    }

    while (1)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v33 >= v29)
      {

        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
        v42 = v56;
        v41 = v57;
        v43 = v58;
        (*(v57 + 104))(v56, enum case for DispatchQoS.QoSClass.default(_:), v58);
        v53 = static OS_dispatch_queue.global(qos:)();
        (*(v41 + 8))(v42, v43);
        v44 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = swift_allocObject();
        v45[2] = v44;
        v45[3] = partial apply for closure #1 in closure #1 in WorkoutKitXPCService.storeScheduledWorkoutCompositions(_:sourceBundleId:completion:);
        v46 = v63;
        v45[4] = i;
        v45[5] = v46;
        aBlock[4] = closure #2 in WorkoutKitXPCService._deleteConfigurations(from:completion:)partial apply;
        aBlock[5] = v45;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_130;
        v47 = _Block_copy(aBlock);

        v48 = v59;
        static DispatchQoS.unspecified.getter();
        v66 = &_swiftEmptyArrayStorage;
        lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v49 = v61;
        v50 = v55;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v51 = v53;
        OS_dispatch_group.notify(qos:flags:queue:execute:)();
        _Block_release(v47);

        (*(v62 + 8))(v49, v50);
        (*(v60 + 8))(v48, v54);
      }

      v28 = *(a1 + 56 + 8 * v33);
      ++v31;
      if (v28)
      {
        v31 = v33;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    specialized closure #1 in closure #1 in WorkoutKitXPCService.storeScheduledWorkoutCompositions(_:sourceBundleId:completion:)(0, a3, a4, a5, v24, a7);
  }

  return result;
}

uint64_t specialized WorkoutKitXPCService._deleteConfigurations(from:completion:)(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v59 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v15 - 8);
  v57 = v15;
  v16 = *(v56 + 64);
  __chkstk_darwin(v15);
  v55 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = *(a1 + 16);
  _Block_copy(a3);
  if (v19)
  {
    v48 = v18;
    v49 = v14;
    v50 = v11;
    v51 = v9;
    v52 = v10;
    v53 = v6;
    v54 = v5;
    v20 = dispatch_group_create();
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;

    for (i = 0; v23; result = )
    {
      v27 = i;
LABEL_10:
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v29 = (*(a1 + 48) + ((v27 << 10) | (16 * v28)));
      v30 = *v29;
      v31 = v29[1];

      dispatch_group_enter(v20);
      v32 = WorkoutKitXPCService.queryClient.getter();
      v33 = swift_allocObject();
      *(v33 + 16) = v58;
      *(v33 + 24) = v20;

      v34 = v20;
      dispatch thunk of QueryClient.deleteManagedConfigurations(sourceIdentifier:completion:)();
    }

    while (1)
    {
      v27 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v27 >= v24)
      {

        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
        v36 = v55;
        v35 = v56;
        v37 = v57;
        (*(v56 + 104))(v55, enum case for DispatchQoS.QoSClass.default(_:), v57);
        v47 = static OS_dispatch_queue.global(qos:)();
        (*(v35 + 8))(v36, v37);
        v38 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v39 = swift_allocObject();
        v39[2] = v38;
        v39[3] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
        v40 = v58;
        v39[4] = v48;
        v39[5] = v40;
        aBlock[4] = partial apply for closure #2 in WorkoutKitXPCService._deleteConfigurations(from:completion:);
        aBlock[5] = v39;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_92;
        v41 = _Block_copy(aBlock);

        v42 = v49;
        static DispatchQoS.unspecified.getter();
        v60 = &_swiftEmptyArrayStorage;
        lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v43 = v51;
        v44 = v54;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v45 = v47;
        OS_dispatch_group.notify(qos:flags:queue:execute:)();
        _Block_release(v41);

        (*(v53 + 8))(v43, v44);
        (*(v50 + 8))(v42, v52);
      }

      v23 = *(a1 + 56 + 8 * v27);
      ++i;
      if (v23)
      {
        i = v27;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    a3[2](a3, 1, 0);
  }

  return result;
}

uint64_t specialized WorkoutKitXPCService.retrieveScheduledWorkoutCompositions(forSourceBundleId:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  if ((specialized WorkoutKitXPCService.hasPairedWatch.getter() & 1) == 0)
  {
    v14 = &enum case for StateError.watchNotPaired(_:);
LABEL_7:
    v15 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *v14, v15);
    swift_willThrow();
    swift_errorRetain();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v18 = _convertErrorToNSError(_:)();
    (a4)[2](a4, isa, v18);

    goto LABEL_8;
  }

  if ((specialized WorkoutKitXPCService.workoutAppIsInstalled.getter() & 1) == 0)
  {
    v14 = &enum case for StateError.workoutApplicationNotInstalled(_:);
    goto LABEL_7;
  }

  v8 = specialized WorkoutKitXPCService.primaryBundleIdentifier(for:)(a1, a2);
  if (specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(v8, v9))
  {

    v10 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for ImportError.unsupportedPlatform(_:), v10);
    v12 = Array._bridgeToObjectiveC()().super.isa;
    v13 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v12, v13);

LABEL_8:

    goto LABEL_9;
  }

  v20 = WorkoutKitXPCService.queryClient.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray, @unowned NSError?) -> ();
  *(v21 + 24) = v7;

  dispatch thunk of QueryClient.fetchManagedConfigurations(sourceIdentifier:completion:)();

LABEL_9:
}

void specialized WorkoutKitXPCService.deleteScheduledWorkoutCompositions(forSourceBundleId:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  if ((specialized WorkoutKitXPCService.hasPairedWatch.getter() & 1) == 0)
  {
    v15 = &enum case for StateError.watchNotPaired(_:);
LABEL_7:
    v16 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *v15, v16);
    swift_willThrow();
    swift_errorRetain();
    v18 = _convertErrorToNSError(_:)();
    (*(aBlock + 2))(aBlock, 0, v18);

    goto LABEL_8;
  }

  if ((specialized WorkoutKitXPCService.workoutAppIsInstalled.getter() & 1) == 0)
  {
    v15 = &enum case for StateError.workoutApplicationNotInstalled(_:);
    goto LABEL_7;
  }

  v8 = specialized WorkoutKitXPCService.primaryBundleIdentifier(for:)(a1, a2);
  v10 = v9;
  v11 = v8;
  if ((specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(v8, v9) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100016AF0;
    *(inited + 32) = v11;
    v20 = inited + 32;
    *(inited + 40) = v10;
    v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(v20);
    _Block_copy(aBlock);
    specialized WorkoutKitXPCService._deleteConfigurations(from:completion:)(v21, a3, aBlock);
    _Block_release(aBlock);

    _Block_release(aBlock);
    return;
  }

  v12 = type metadata accessor for ImportError();
  lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError);
  swift_allocError();
  (*(*(v12 - 8) + 104))(v13, enum case for ImportError.unsupportedPlatform(_:), v12);
  v14 = _convertErrorToNSError(_:)();
  (*(aBlock + 2))(aBlock, 0, v14);

LABEL_8:

  _Block_release(aBlock);
}

uint64_t specialized WorkoutKitXPCService.retrieveWorkoutComposition(fromWorkout:completion:)(uint64_t a1, uint64_t a2, void *a3, void (**a4)(const void *, void, void *))
{
  v32 = a3;
  v5 = type metadata accessor for Logger();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = type metadata accessor for UUID();
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v36 = swift_allocObject();
  *(v36 + 16) = a4;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for HKWorkout, HKWorkout_ptr);
  v33 = a4;
  _Block_copy(a4);
  v17 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v19 = v31;
  v18 = v32;
  if (v17)
  {
    v20 = v17;
    v21 = [v17 UUID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v19 + 32))(v16, v14, v10);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    aBlock[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned NSData?, @unowned NSError?) -> ()partial apply;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Data?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_73;
    v23 = _Block_copy(aBlock);

    [v18 retrieveWorkoutCompositionFromWorkoutUUID:isa completion:v23];
    _Block_release(v23);

    (*(v19 + 8))(v16, v10);
  }

  else
  {
    static WOLog.xpcService.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "WorkoutKitXPCService: failed to unarchive HKWorkout", v27, 2u);
    }

    (*(v34 + 8))(v9, v35);
    v28 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, enum case for ImportError.unrecognizedDataFormat(_:), v28);
    v30 = _convertErrorToNSError(_:)();
    v33[2](v33, 0, v30);
  }
}

uint64_t specialized WorkoutKitXPCService.retrieveAuthorizationState(forBundleId:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  v8 = specialized WorkoutKitXPCService.primaryBundleIdentifier(for:)(a1, a2);
  if (specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(v8, v9))
  {

    v10 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for ImportError.unsupportedPlatform(_:), v10);
    v12 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v12);
  }

  else
  {
    v14 = WorkoutKitXPCService.queryClient.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = thunk for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSError?) -> ()partial apply;
    *(v15 + 24) = v7;

    dispatch thunk of QueryClient.fetchExternalProvider(sourceIdentifier:completion:)();
  }
}

void specialized WorkoutKitXPCService.requestAuthorization(forBundleId:completion:)(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  _Block_copy(a4);
  if ((specialized WorkoutKitXPCService.hasPairedWatch.getter() & 1) == 0)
  {
    v13 = &enum case for StateError.watchNotPaired(_:);
LABEL_11:
    v14 = type metadata accessor for StateError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type StateError and conformance StateError, &type metadata accessor for StateError);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *v13, v14);
    swift_willThrow();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
    swift_errorRetain();
    v17 = _convertErrorToNSError(_:)();
    (a4)[2](a4, isa, v17);

    goto LABEL_12;
  }

  if ((specialized WorkoutKitXPCService.workoutAppIsInstalled.getter() & 1) == 0)
  {
    v13 = &enum case for StateError.workoutApplicationNotInstalled(_:);
    goto LABEL_11;
  }

  if (specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(a1, a2))
  {
LABEL_6:
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    v21 = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
    v10 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for ImportError.unsupportedPlatform(_:), v10);
    v12 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v21, v12);

    return;
  }

  v9 = specialized WorkoutKitXPCService.extensionRecord(for:)();
  if (v9)
  {

    goto LABEL_6;
  }

  v18 = WorkoutKitXPCService.queryClient.getter();
  v19 = swift_allocObject();
  v19[2] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSNumber?, @unowned NSError?) -> ();
  v19[3] = v8;
  v19[4] = a3;
  v19[5] = a1;
  v19[6] = a2;

  v20 = a3;

  dispatch thunk of QueryClient.fetchExternalProvider(sourceIdentifier:completion:)();

LABEL_12:
}

uint64_t specialized WorkoutKitXPCService.setAuthorizationState(_:forBundleId:completion:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  _Block_copy(a5);
  if (specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(a2, a3))
  {
    v11 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError);
    swift_allocError();
    v13 = v12;
    v14 = &enum case for ImportError.unsupportedPlatform(_:);
  }

  else
  {
    if (*(a4 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_hasPrivateEntitlements) == 1)
    {
      v15 = [a1 unsignedIntegerValue];
      v16 = WorkoutKitXPCService.queryClient.getter();
      v17 = swift_allocObject();
      v17[2] = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
      v17[3] = v10;
      v17[4] = a4;
      v17[5] = v15;

      v18 = a4;
      dispatch thunk of QueryClient.fetchExternalProvider(sourceIdentifier:completion:)();

      goto LABEL_7;
    }

    v11 = type metadata accessor for XPCServiceError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError, &type metadata accessor for XPCServiceError);
    swift_allocError();
    v13 = v19;
    v14 = &enum case for XPCServiceError.notEntitled(_:);
  }

  (*(*(v11 - 8) + 104))(v13, *v14, v11);
  v20 = _convertErrorToNSError(_:)();
  (a5)[2](a5, 0, v20);

LABEL_7:
}

uint64_t specialized WorkoutKitXPCService.handleUninstalledAppIds(_:completion:)(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v6 = type metadata accessor for Logger();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  __chkstk_darwin(v6);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS.QoSClass();
  v62 = *(v19 - 8);
  v63 = v19;
  v20 = *(v62 + 64);
  __chkstk_darwin(v19);
  v61 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  v68 = a2;
  if (*(a2 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_hasPrivateEntitlements) == 1)
  {
    v60 = v18;
    v23 = *(a1 + 16);
    _Block_copy(a3);
    if (v23)
    {
      v54 = v15;
      v55 = v13;
      v56 = v14;
      v57 = v10;
      v58 = v9;
      v59 = v22;
      v24 = dispatch_group_create();
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      v26 = v65;
      v66 += 8;
      v27 = (a1 + 40);
      *&v28 = 136315138;
      v64 = v28;
      do
      {
        v32 = *(v27 - 1);
        v33 = *v27;

        dispatch_group_enter(v24);
        static WOLog.xpcService.getter();

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = v25;
          v38 = swift_slowAlloc();
          aBlock[0] = v38;
          *v36 = v64;
          *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, aBlock);
          _os_log_impl(&_mh_execute_header, v34, v35, "WorkoutKitXPCService: removing provider for bundleId: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v38);
          v25 = v37;
          v26 = v65;
        }

        (*v66)(v26, v67);
        v29 = WorkoutKitXPCService.queryClient.getter();
        v30 = swift_allocObject();
        v30[2] = v25;
        v30[3] = v32;
        v30[4] = v33;
        v30[5] = v24;

        v31 = v24;
        dispatch thunk of QueryClient.deleteExternalProvider(sourceIdentifier:completion:)();

        v27 += 2;
        --v23;
      }

      while (v23);
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
      v43 = v61;
      v42 = v62;
      v44 = v63;
      (*(v62 + 104))(v61, enum case for DispatchQoS.QoSClass.default(_:), v63);
      v45 = static OS_dispatch_queue.global(qos:)();
      (*(v42 + 8))(v43, v44);
      v46 = swift_allocObject();
      v47 = v68;
      v46[2] = v68;
      v46[3] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ();
      v46[4] = v59;
      v46[5] = v25;
      aBlock[4] = partial apply for closure #2 in WorkoutKitXPCService.handleUninstalledAppIds(_:completion:);
      aBlock[5] = v46;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor;
      v48 = _Block_copy(aBlock);
      v49 = v47;

      v50 = v60;
      static DispatchQoS.unspecified.getter();
      v69 = &_swiftEmptyArrayStorage;
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v51 = v55;
      v52 = v58;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();

      _Block_release(v48);
      (*(v57 + 8))(v51, v52);
      (*(v54 + 8))(v50, v56);
    }

    a3[2](a3, 1, 0);
  }

  else
  {
    v39 = type metadata accessor for XPCServiceError();
    lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(&lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError, &type metadata accessor for XPCServiceError);
    swift_allocError();
    (*(*(v39 - 8) + 104))(v40, enum case for XPCServiceError.notEntitled(_:), v39);
    _Block_copy(a3);
    v41 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v41);
  }
}

uint64_t sub_10000FD60()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FDA0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000FDD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
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

uint64_t sub_10000FE78()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
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

uint64_t sub_10000FF94()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in WorkoutKitXPCService.setAuthorizationState(_:forBundleId:completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return closure #1 in WorkoutKitXPCService.setAuthorizationState(_:forBundleId:completion:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

uint64_t partial apply for closure #1 in closure #1 in WorkoutKitXPCService.setAuthorizationState(_:forBundleId:completion:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 == 0, a1);
}

uint64_t sub_100010024()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001007C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000100B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100010134()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t partial apply for closure #1 in WorkoutKitXPCService.retrieveWorkoutComposition(fromWorkoutUUID:completion:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return closure #1 in WorkoutKitXPCService.retrieveWorkoutComposition(fromWorkoutUUID:completion:)(a1, a2, a3, v8, v9, v10);
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

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010414()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010458()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000104C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t objectdestroy_84Tm()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010580()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10001061C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100010680()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100010738()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t objectdestroy_88Tm(void (*a1)(void))
{
  v3 = v1[2];

  v4 = v1[4];

  a1(v1[5]);

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_100010808()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001085C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t objectdestroy_148Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_62Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 24);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t partial apply for closure #1 in WorkoutKitXPCService.openWorkoutApp(with:autostart:completion:)(char a1, uint64_t a2)
{
  v5 = *(*(type metadata accessor for WorkoutPlan() - 8) + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  return closure #1 in WorkoutKitXPCService.openWorkoutApp(with:autostart:completion:)(a1, a2, v6);
}

uint64_t lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of Date?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 56) + 16 * v12);
        v14 = v13[1];
        if (v14)
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_7;
        }
      }

      v32 = v2;
      v16 = *(*(a1 + 48) + 8 * v12);
      v31 = *v13;
      v17 = *(&_swiftEmptyDictionarySingleton + 2);
      if (*(&_swiftEmptyDictionarySingleton + 3) <= v17)
      {

        v19 = v16;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17 + 1, 1);
      }

      else
      {

        v18 = v16;
      }

      v33 = v16;
      result = NSObject._rawHashValue(seed:)(*(&_swiftEmptyDictionarySingleton + 5));
      v20 = &_swiftEmptyDictionarySingleton + 64;
      v21 = -1 << *(&_swiftEmptyDictionarySingleton + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(&_swiftEmptyDictionarySingleton + (v22 >> 6) + 8)) == 0)
      {
        break;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(&_swiftEmptyDictionarySingleton + (v22 >> 6) + 8))) | v22 & 0x7FFFFFFFFFFFFFC0;
      v2 = v32;
      v25 = v33;
LABEL_24:
      *&v20[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
      *(*(&_swiftEmptyDictionarySingleton + 6) + 8 * v24) = v25;
      v30 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v24);
      *v30 = v31;
      v30[1] = v14;
      ++*(&_swiftEmptyDictionarySingleton + 2);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v26 = 0;
    v27 = (63 - v21) >> 6;
    v2 = v32;
    v25 = v33;
    while (++v23 != v27 || (v26 & 1) == 0)
    {
      v28 = v23 == v27;
      if (v23 == v27)
      {
        v23 = 0;
      }

      v26 |= v28;
      v29 = *&v20[8 * v23];
      if (v29 != -1)
      {
        v24 = __clz(__rbit64(~v29)) + (v23 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v15 >= v8)
      {

        return &_swiftEmptyDictionarySingleton;
      }

      v7 = *(v4 + 8 * v15);
      ++v10;
      if (v7)
      {
        v10 = v15;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for NSString();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      outlined destroy of AnyHashable(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSStringCSSGMd, &_ss18_DictionaryStorageCySo8NSStringCSSGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
        v26 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (AnyHashable, Any)(v4, v13);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSStringC_SSSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSStringCSSSgGMd, &_ss18_DictionaryStorageCySo8NSStringCSSSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t specialized static SystemAlertPresenter.present(title:message:defaultButtonTitle:alternateButtonTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a7;
  v58 = type metadata accessor for Logger();
  v57 = *(v58 - 8);
  v15 = *(v57 + 64);
  v16 = (__chkstk_darwin)();
  v56 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v54 = &v54 - v19;
  __chkstk_darwin(v18);
  v55 = &v54 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8NSStringC_SSSgtGMd, &_ss23_ContiguousArrayStorageCySo8NSStringC_SSSgtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100016B60;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_24;
  }

  v22 = inited;
  type metadata accessor for NSString();
  v22[4] = NSString.init(string:)();
  v22[5] = a1;
  v22[6] = a2;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v22[7] = NSString.init(string:)();
  v22[8] = a3;
  v22[9] = a4;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v22[10] = NSString.init(string:)();
  v22[11] = a5;
  v22[12] = a6;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
    goto LABEL_26;
  }

  v23 = NSString.init(string:)();
  v24 = v59;
  v22[13] = v23;
  v22[14] = v24;
  v22[15] = a8;

  v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSStringC_SSSgTt0g5Tf4g_n(v22);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSStringC_SSSgtMd, &_sSo8NSStringC_SSSgtMR);
  swift_arrayDestroy();
  specialized Dictionary.compactMapValues<A>(_:)(v25);

  error[0] = -1;
  lazy protocol witness table accessor for type NSString and conformance NSObject();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, error, isa);

  if (!v27)
  {
    v30 = v56;
    static WOLog.xpcService.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v63 = v34;
      *v33 = 136315138;
      swift_beginAccess();
      v60 = error[0];
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v63);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "SystemAlertPresenter: Failed to create alert notification due to %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
    }

    (*(v57 + 8))(v30, v58);
    return 2;
  }

  v28 = error[0];
  if (v28 != noErr.getter())
  {
    v38 = v55;
    static WOLog.xpcService.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v63 = v42;
      *v41 = 136315138;
      swift_beginAccess();
      v60 = error[0];
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v63);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "SystemAlertPresenter: Failed to create alert notification due to %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
    }

    else
    {
    }

    (*(v57 + 8))(v38, v58);
    return 2;
  }

  responseFlags[0] = 0;
  v29 = CFUserNotificationReceiveResponse(v27, 0.0, responseFlags);
  if (v29 == noErr.getter())
  {
  }

  else
  {
    v46 = v54;
    static WOLog.xpcService.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 67109120;
      *(v49 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v47, v48, "SystemAlertPresenter: Failed to interpret overload notification user alert response: %d", v49, 8u);

      v50 = v27;
    }

    else
    {
      v50 = v47;
      v47 = v27;
    }

    v52 = v58;
    v53 = v57;

    (*(v53 + 8))(v46, v52);
  }

  return (responseFlags[0] & 3) != 0;
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSString and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSString and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSString and conformance NSObject)
  {
    type metadata accessor for NSString();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSString and conformance NSObject);
  }

  return result;
}

uint64_t outlined init with copy of (AnyHashable, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

Swift::Bool __swiftcall WorkoutKitXPCService.processIsForegrounded()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(BKSApplicationStateMonitor) init];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 mostElevatedApplicationStateForPID:*(v0 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_requestingProcessIdentifier)];
    [v7 invalidate];

    return v8 == 8;
  }

  else
  {
    static WOLog.xpcService.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "WorkoutKitXPCService: failed to instantiate BKSApplicationStateMonitor", v12, 2u);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)()
{
  v1 = String._bridgeToObjectiveC()();

  v6 = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

id specialized WorkoutKitXPCService.hasPairedWatch.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result getPairedDevices];
    if (v2)
    {
      v3 = v2;
      type metadata accessor for NRDevice();
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = &_swiftEmptyArrayStorage;
      if (v4 >> 62)
      {
        goto LABEL_25;
      }

      for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v14 = v1;
        v6 = 0;
        v1 = (v4 & 0xFFFFFFFFFFFFFF8);
        v7 = NRDevicePropertyIsAltAccount;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v9 = *(v4 + 8 * v6 + 32);
          }

          v10 = v9;
          v11 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if ([v9 valueForProperty:v7])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v16 = 0u;
            v17 = 0u;
          }

          v18[0] = v16;
          v18[1] = v17;
          if (*(&v17 + 1))
          {
            if (swift_dynamicCast() & 1) != 0 && (v15)
            {

              goto LABEL_8;
            }
          }

          else
          {
            outlined destroy of Any?(v18);
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v8 = v19[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
LABEL_8:
          ++v6;
          if (v11 == i)
          {
            v12 = v19;
            v1 = v14;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        ;
      }

      v12 = &_swiftEmptyArrayStorage;
LABEL_27:

      if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v13 = *(v12 + 16);
      }

      return (v13 != 0);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t specialized WorkoutKitXPCService.workoutAppIsInstalled.getter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[0] = 0;
  v5 = [objc_opt_self() sharedDeviceConnection];
  if (!v5)
  {
    __break(1u);
  }

  v6 = v5;
  v21 = 0;
  v7 = [v5 getApplicationIsInstalled:v20 onAnyPairedDeviceWithBundleID:FIWorkoutBundleIdentifier error:&v21];

  if (v7)
  {
    v8 = v20[0];
    v9 = v21;
  }

  else
  {
    v10 = v21;
    v11 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static WOLog.xpcService.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      *v20 = v11;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v16 = String.init<A>(describing:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "WorkoutKitXPCService: failed to check if workout app is installed, %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  return v8;
}

id specialized WorkoutKitXPCService.extensionRecord(for:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = objc_allocWithZone(LSApplicationExtensionRecord);

  return @nonobjc LSApplicationExtensionRecord.init(bundleIdentifier:)();
}

char *specialized WorkoutKitXPCService.primaryBundleIdentifier(for:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = specialized WorkoutKitXPCService.extensionRecord(for:)();
  if (v12)
  {
    v13 = v12;
    v34 = v4;
    v14 = [v12 containingBundleRecord];
    if (v14 && (v15 = v14, v16 = [v14 bundleIdentifier], v15, v16))
    {
      v33 = v5;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      static WOLog.xpcService.getter();

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      v32 = v20;
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v31 = v19;
        v22 = v21;
        v35 = swift_slowAlloc();
        *v22 = 136315394;
        *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v35);
        *(v22 + 12) = 2080;
        *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v18, &v35);
        v23 = v31;
        _os_log_impl(&_mh_execute_header, v31, v32, "WorkoutKitXPCService: remapped extension bundleId: %s to container bundleId: %s", v22, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v33 + 8))(v11, v34);
    }

    else
    {
      static WOLog.xpcService.getter();

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v35 = v27;
        *v26 = 136315138;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v35);
        _os_log_impl(&_mh_execute_header, v24, v25, "WorkoutKitXPCService: failed to retrieve container bundleId from extension bundleId: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
      }

      (*(v5 + 8))(v9, v34);
      v28 = type metadata accessor for XPCServiceError();
      lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError();
      swift_allocError();
      (*(*(v28 - 8) + 104))(v29, enum case for XPCServiceError.unableToRetrieveContainerBundleIdentifier(_:), v28);
      swift_willThrow();
    }
  }

  else
  {

    return a1;
  }

  return v9;
}

uint64_t specialized WorkoutKitXPCService.requestingProcessIsAppClip(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = objc_allocWithZone(LSApplicationRecord);

  v7 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 0);
  v8 = [v7 appClipMetadata];

  if (!v8)
  {
    return 0;
  }

  return 1;
}

unint64_t type metadata accessor for NRDevice()
{
  result = lazy cache variable for type metadata for NRDevice;
  if (!lazy cache variable for type metadata for NRDevice)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NRDevice);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError()
{
  result = lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError;
  if (!lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError)
  {
    type metadata accessor for XPCServiceError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError);
  }

  return result;
}

uint64_t one-time initialization function for iconRetrievalQueue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = type metadata accessor for ISImageDescriptor(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v11 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static AppIconRetrieval.iconRetrievalQueue = result;
  return result;
}

void closure #1 in static AppIconRetrieval.icon(forBundleId:completion:)(void *a1, void *a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100016BA0;
  *(v6 + 32) = a2;
  type metadata accessor for ISImageDescriptor(0, &lazy cache variable for type metadata for ISImageDescriptor, ISImageDescriptor_ptr);
  v7 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 prepareImagesForImageDescriptors:isa];

  v9 = [a1 CGImageForDescriptor:v7];
  image = [objc_allocWithZone(UIImage) initWithCGImage:v9];

  v10 = UIImagePNGRepresentation(image);
  if (v10)
  {
    v11 = v10;
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    outlined copy of Data._Representation(v12, v14);
    a3(v12, v14, 0);
    outlined consume of Data._Representation(v12, v14);
    outlined consume of Data._Representation(v12, v14);
  }

  else
  {
    v15 = type metadata accessor for ImportError();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ImportError and conformance ImportError, &type metadata accessor for ImportError);
    v16 = swift_allocError();
    (*(*(v15 - 8) + 104))(v17, enum case for ImportError.unknownType(_:), v15);
    a3(0, 0xF000000000000000, v16);
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t specialized static AppIconRetrieval.icon(forBundleId:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v24 = *(v10 - 8);
  v25 = v10;
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(ISIcon);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithBundleIdentifier:v15];

  v17 = [objc_allocWithZone(ISImageDescriptor) initWithSize:40.0 scale:{40.0, 2.0}];
  [v17 setShape:0];
  if (one-time initialization token for iconRetrievalQueue != -1)
  {
    swift_once();
  }

  v23[1] = static AppIconRetrieval.iconRetrievalQueue;
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = a3;
  v18[5] = a4;
  aBlock[4] = partial apply for closure #1 in static AppIconRetrieval.icon(forBundleId:completion:);
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_0;
  v19 = _Block_copy(aBlock);
  v20 = v16;
  v21 = v17;

  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v26 + 8))(v9, v6);
  (*(v24 + 8))(v13, v25);
}

uint64_t sub_1000138F8()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ISImageDescriptor(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t specialized static PermissionAlert.present(appName:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100016AF0;
  *(v8 + 56) = &type metadata for String;
  v9 = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 64) = v9;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v10 = String.init(format:_:)();
  v12 = v11;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100016AF0;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = v9;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  v14 = String.init(format:_:)();
  v16 = v15;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v19 = v18;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v22 = specialized static SystemAlertPresenter.present(title:message:defaultButtonTitle:alternateButtonTitle:)(v10, v12, v14, v16, v17, v19, v20, v21);

  return 2 - v22;
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

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t specialized WorkoutKitXPCService.remoteAlertHandle(_:didInvalidateWithError:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.xpcService.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25 = a1;
    v26 = v13;
    *v12 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v14 = Optional.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v26);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "WorkoutKitXPCService: remote alert invalidated with error: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);

    v2 = v24;
  }

  (*(v5 + 8))(v8, v4);
  v17 = (v2 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler);
  v18 = *(v2 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler);
  if (v18)
  {
    v19 = v17[1];

    v18(0, a1);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(v18);
    v20 = *v17;
  }

  else
  {
    v20 = 0;
  }

  v21 = v17[1];
  *v17 = 0;
  v17[1] = 0;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(v20);
}

uint64_t specialized WorkoutKitXPCService.remoteAlertHandleDidActivate(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.xpcService.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "WorkoutKitXPCService: remote alert did activate", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = (v1 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler);
  v11 = *(v1 + OBJC_IVAR____TtC20WorkoutKitXPCService20WorkoutKitXPCService_presentConfigurationCompletionHandler);
  if (v11)
  {
    v12 = v10[1];

    v11(1, 0);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(v11);
    v13 = *v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ())?(v13);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::String __swiftcall String.workoutKitLocalized()()
{
  v0 = String.workoutKitLocalized()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}