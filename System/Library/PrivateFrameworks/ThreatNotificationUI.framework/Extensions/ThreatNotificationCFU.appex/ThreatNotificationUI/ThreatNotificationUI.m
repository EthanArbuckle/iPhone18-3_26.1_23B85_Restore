Swift::Void __swiftcall ThreatNotificationViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ThreatNotificationViewController();
  v26.receiver = v2;
  v26.super_class = v9;
  objc_msgSendSuper2(&v26, "viewDidAppear:", a1);
  static TNCLogger.default.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Extension did appear", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  v13 = [v2 view];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 window];

    if (!v15)
    {
LABEL_7:
      v17 = *&v2[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_userInfo];
      v18 = type metadata accessor for TNUICoordinator();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      swift_bridgeObjectRetain_n();
      v21 = TNUICoordinator.init(userInfo:)();
      v22 = *&v2[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_coordinator];
      *&v2[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_coordinator] = v21;

      lazy protocol witness table accessor for type TNCFeatureFlags and conformance TNCFeatureFlags(&lazy protocol witness table cache variable for type ThreatNotificationViewController and conformance ThreatNotificationViewController, v23, type metadata accessor for ThreatNotificationViewController);
      swift_unknownObjectRetain();
      dispatch thunk of TNUICoordinator.delegate.setter();
      dispatch thunk of TNUICoordinator.start()();
      v24 = dispatch thunk of TNUICoordinator.rootViewController.getter();
      [v24 setModalInPresentation:1];

      v25 = dispatch thunk of TNUICoordinator.rootViewController.getter();
      [v2 presentViewController:v25 animated:1 completion:0];

      return;
    }

    v16 = [v15 _rootSheetPresentationController];

    if (v16)
    {
      [v16 _setShouldScaleDownBehindDescendantSheets:0];

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for Date();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v13;
  v5[18] = v14;

  return _swift_task_switch(closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:), v13, v14);
}

uint64_t closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:)()
{
  v1 = v0;
  v2 = *(v0 + 120);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = Task<>.init(priority:timeout:operation:)();
  *(v0 + 152) = v4;
  v5 = async function pointer to Task.value.getter[1];
  v6 = swift_task_alloc();
  *(v1 + 160) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v6 = v1;
  v6[1] = closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:);

  return Task.value.getter(v7, v4, &type metadata for () + 8, v7, &protocol self-conformance witness table for Error);
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = v2[19];

    v5 = v2[17];
    v6 = v2[18];
    v7 = closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:);
  }

  else
  {
    v5 = v2[17];
    v6 = v2[18];
    v7 = closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:);
  }

  return _swift_task_switch(v7, v5, v6);
}

{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[14];

  static TNCLogger.default.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Did synchronize AK follow-ups", v6, 2u);
  }

  v7 = *(v0[9] + 8);
  v7(v0[14], v0[8]);
  v8 = objc_opt_self();
  v9 = [v8 sharedInstance];
  v10 = [v9 isFollowUpItemPending];

  if (!v10)
  {
    v19 = v0[13];
    v20 = type metadata accessor for TNCKVStorage();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    TNCKVStorage.init()();
    dispatch thunk of TNCKVStorage.clear()();

    static TNCLogger.default.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[13];
    v27 = v0[8];
    v28 = v0[9];
    if (v25)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Cleared storage", v29, 2u);
    }

    v30 = v26;
    v31 = v27;
LABEL_14:
    v7(v30, v31);
    v18 = v0[3];
    if (!v18)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];
  type metadata accessor for TNUIAnalytics();
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  (*(v12 + 8))(v11, v13);
  static TNUIAnalytics.registerCFUReceiptIfNeeded(at:)();
  v14 = [v8 sharedInstance];
  v0[2] = 0;
  v15 = [v14 repostFollowUpItemIfNeededWithError:v0 + 2];

  v16 = v0[2];
  if (!v15)
  {
    v32 = v0[10];
    v33 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static TNCLogger.default.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "Did not re-post the follow-up item with error: %@", v36, 0xCu);
      outlined destroy of TaskPriority?(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }

    v30 = v0[10];
    v31 = v0[8];
    v39 = v0[9] + 8;
    goto LABEL_14;
  }

  v17 = v16;
  v18 = v0[3];
  if (v18)
  {
LABEL_15:
    v40 = v0[4];
    v18(0);
  }

LABEL_16:
  v42 = v0[14];
  v41 = v0[15];
  v44 = v0[12];
  v43 = v0[13];
  v46 = v0[10];
  v45 = v0[11];
  v47 = v0[7];

  v48 = v0[1];

  return v48();
}

{
  v1 = v0[21];
  v2 = v0[16];

  v3 = _convertErrorToNSError(_:)();
  v4 = [v3 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
LABEL_11:
      v12 = v0 + 11;
      v18 = v0[11];
      v19 = v0[21];
      static TNCLogger.default.getter();
      swift_errorRetain();
      v13 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      v21 = os_log_type_enabled(v13, v20);
      v22 = v0[21];
      if (v21)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        swift_errorRetain();
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&_mh_execute_header, v13, v20, "Synchronization of AK follow-ups failed with error: %@", v23, 0xCu);
        outlined destroy of TaskPriority?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  if ([v3 code] != -7064)
  {
    goto LABEL_11;
  }

  v12 = v0 + 12;
  v11 = v0[12];
  static TNCLogger.default.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[21];
  if (v15)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "AK follow-ups synchronization was cancelled", v17, 2u);
LABEL_13:

    goto LABEL_15;
  }

LABEL_14:

LABEL_15:
  v26 = *(v0[9] + 8);
  v26(*v12, v0[8]);
  v27 = objc_opt_self();
  v28 = [v27 sharedInstance];
  v29 = [v28 isFollowUpItemPending];

  if (!v29)
  {
    v38 = v0[13];
    v39 = type metadata accessor for TNCKVStorage();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    TNCKVStorage.init()();
    dispatch thunk of TNCKVStorage.clear()();

    static TNCLogger.default.getter();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v0[13];
    v46 = v0[8];
    v47 = v0[9];
    if (v44)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Cleared storage", v48, 2u);
    }

    v49 = v45;
    v50 = v46;
LABEL_26:
    v26(v49, v50);
    v37 = v0[3];
    if (!v37)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v31 = v0[6];
  v30 = v0[7];
  v32 = v0[5];
  type metadata accessor for TNUIAnalytics();
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  (*(v31 + 8))(v30, v32);
  static TNUIAnalytics.registerCFUReceiptIfNeeded(at:)();
  v33 = [v27 sharedInstance];
  v0[2] = 0;
  v34 = [v33 repostFollowUpItemIfNeededWithError:v0 + 2];

  v35 = v0[2];
  if (!v34)
  {
    v51 = v0[10];
    v52 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static TNCLogger.default.getter();
    swift_errorRetain();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&_mh_execute_header, v53, v54, "Did not re-post the follow-up item with error: %@", v55, 0xCu);
      outlined destroy of TaskPriority?(v56, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    else
    {
    }

    v49 = v0[10];
    v50 = v0[8];
    v58 = v0[9] + 8;
    goto LABEL_26;
  }

  v36 = v35;
  v37 = v0[3];
  if (v37)
  {
LABEL_27:
    v59 = v0[4];
    v37(0);
  }

LABEL_28:
  v61 = v0[14];
  v60 = v0[15];
  v63 = v0[12];
  v62 = v0[13];
  v65 = v0[10];
  v64 = v0[11];
  v66 = v0[7];

  v67 = v0[1];

  return v67();
}

uint64_t closure #1 in closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:)()
{

  return _swift_task_switch(closure #1 in closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:), 0, 0);
}

{
  v1 = [objc_allocWithZone(AKFollowUpSynchronizer) init];
  v2 = [objc_opt_self() sharedAuthKitFollowupProvider];
  if (!v2)
  {
    __break(1u);
  }

  [v1 setFollowupProvider:v2];
  swift_unknownObjectRelease();
  *(v0 + 16) = 0;
  v3 = [v1 synchronizeFollowUpsForAccount:0 error:v0 + 16];
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v7 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id ThreatNotificationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ThreatNotificationViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_userInfo] = 0;
  *&v3[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_coordinator] = 0;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ThreatNotificationViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id ThreatNotificationViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id ThreatNotificationViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_userInfo] = 0;
  *&v1[OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_coordinator] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ThreatNotificationViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id ThreatNotificationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThreatNotificationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void ThreatNotificationViewController.coordinatorDidFinish(_:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Extension did finish", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  v8 = dispatch thunk of TNUICoordinator.rootViewController.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in ThreatNotificationViewController.coordinatorDidFinish(_:);
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  [v8 dismissViewControllerAnimated:1 completion:v10];
  _Block_release(v10);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
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

void specialized ThreatNotificationViewController.processFollowUpItem(_:selectedAction:completion:)(void *a1, void (*a2)(void), void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (__chkstk_darwin)();
  v87 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v86 = &v83 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v83 - v16;
  v18 = __chkstk_darwin(v15);
  v85 = &v83 - v19;
  __chkstk_darwin(v18);
  v21 = &v83 - v20;
  static TNCLogger.default.getter();
  v88 = a1;
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v89 = v22;

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v84 = v9;
    v26 = v8;
    v27 = v25;
    v28 = v4;
    v29 = v17;
    v30 = a3;
    v31 = a2;
    v32 = swift_slowAlloc();
    *v27 = 138412290;
    v34 = v88;
    v33 = v89;
    *(v27 + 4) = v89;
    *v32 = v34;
    v35 = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Processing item %@", v27, 0xCu);
    outlined destroy of TaskPriority?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    a2 = v31;
    a3 = v30;
    v17 = v29;
    v4 = v28;

    v8 = v26;
    v9 = v84;
  }

  v36 = *(v9 + 8);
  v36(v21, v8);
  v37 = type metadata accessor for TNCFeatureFlags();
  v90[3] = v37;
  v90[4] = lazy protocol witness table accessor for type TNCFeatureFlags and conformance TNCFeatureFlags(&lazy protocol witness table cache variable for type TNCFeatureFlags and conformance TNCFeatureFlags, 255, &type metadata accessor for TNCFeatureFlags);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
  (*(*(v37 - 8) + 104))(boxed_opaque_existential_1, enum case for TNCFeatureFlags.cfu(_:), v37);
  LOBYTE(v37) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  if ((v37 & 1) == 0)
  {
    v46 = v86;
    static TNCLogger.default.getter();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Feature is not enabled", v49, 2u);
    }

    v36(v46, v8);
    v50 = [objc_opt_self() sharedInstance];
    v90[0] = 0;
    v51 = [v50 clearFollowUpItemWithError:v90];

    if (v51)
    {
      v52 = v90[0];
    }

    else
    {
      v53 = v90[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static TNCLogger.default.getter();
      swift_errorRetain();
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = v36;
        v58 = v8;
        v59 = swift_slowAlloc();
        *v56 = 138412290;
        swift_errorRetain();
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 4) = v60;
        *v59 = v60;
        _os_log_impl(&_mh_execute_header, v54, v55, "CFU wasn't cleared with error: %@", v56, 0xCu);
        outlined destroy of TaskPriority?(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        v57(v87, v58);
      }

      else
      {

        v36(v87, v8);
      }
    }

    if (a2)
    {
      goto LABEL_27;
    }

    goto LABEL_41;
  }

  v87 = v8;
  if (!v88)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v39 = [v89 uniqueIdentifier];
  if (!v39)
  {
    static ThreatNotification.FollowUpItemGeneral.identifier.getter();
    goto LABEL_17;
  }

  v40 = v39;
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44 = static ThreatNotification.FollowUpItemGeneral.identifier.getter();
  if (!v43)
  {
LABEL_17:

LABEL_18:
    v88 = a3;
    v61 = a2;
    static TNCLogger.default.getter();
    v62 = v89;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v89 = v36;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v90[0] = v66;
      *v65 = 136315138;
      v67 = [v62 uniqueIdentifier];

      if (!v67)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v90);

      *(v65 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v63, v64, "Cannot process item with identifier %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);

      v89(v17, v87);
    }

    else
    {

      v36(v17, v87);
    }

    if (v61)
    {
      a2 = v61;
      goto LABEL_27;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v41 == v44 && v43 == v45)
  {

    goto LABEL_30;
  }

  v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v73 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_30:
  type metadata accessor for TNUIPresentationManager();
  static TNUIPresentationManager.shared.getter();
  v74 = dispatch thunk of TNUIPresentationManager.isPresenting.getter();

  if ((v74 & 1) == 0)
  {
    goto LABEL_35;
  }

  v75 = v85;
  static TNCLogger.default.getter();
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&_mh_execute_header, v76, v77, "Already presenting CFU view", v78, 2u);
  }

  v36(v75, v87);
  if (a2)
  {
LABEL_27:
    v72 = 1;
LABEL_28:
    a2(v72);
    return;
  }

  __break(1u);
LABEL_35:
  static TNUIPresentationManager.shared.getter();
  dispatch thunk of TNUIPresentationManager.startPresenting()();

  v79 = [v89 userInfo];
  if (v79)
  {
    v80 = v79;
    v81 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v81 = 0;
  }

  v82 = *(v4 + OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_userInfo);
  *(v4 + OBJC_IVAR____TtC21ThreatNotificationCFU32ThreatNotificationViewController_userInfo) = v81;

  if (a2)
  {
    v72 = 0;
    goto LABEL_28;
  }

LABEL_44:
  __break(1u);
}

uint64_t specialized ThreatNotificationViewController.followUpPerformUpdate(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TNCLogger.default.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Will perform CFU update", v15, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  type metadata accessor for MainActor();
  outlined copy of (@escaping @callee_guaranteed (@unowned FLUpdateResult) -> ())?(a1);
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = a1;
  v18[5] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:), v18);
}

uint64_t sub_1000046E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void partial apply for closure #1 in ThreatNotificationViewController.coordinatorDidFinish(_:)()
{
  type metadata accessor for TNUIPresentationManager();
  static TNUIPresentationManager.shared.getter();
  dispatch thunk of TNUIPresentationManager.stopPresenting()();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong finishProcessing];
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000047C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000047D4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
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

uint64_t outlined copy of (@escaping @callee_guaranteed (@unowned FLUpdateResult) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000487C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[4])
  {
    v2 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:)()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:);

  return closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:)(v4, v5, v6, v2, v3);
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004AC0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_23(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in ThreatNotificationViewController.followUpPerformUpdate(completionHandler:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
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

uint64_t lazy protocol witness table accessor for type TNCFeatureFlags and conformance TNCFeatureFlags(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void type metadata accessor for FLUpdateResult()
{
  if (!lazy cache variable for type metadata for FLUpdateResult)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for FLUpdateResult);
    }
  }
}