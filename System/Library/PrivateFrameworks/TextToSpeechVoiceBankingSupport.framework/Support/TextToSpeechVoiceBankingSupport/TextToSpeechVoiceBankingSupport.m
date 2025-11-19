uint64_t sub_100001AB0(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  swift_unknownObjectUnownedInit();

  return v2;
}

uint64_t sub_100001AFC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001EE8(&qword_1000352B0, &qword_100027AF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v30 - v8;
  v31 = type metadata accessor for TTSVBDataStore.XPCServiceConfig();
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v31);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  TTSVBVoiceBankingManager.xpcServiceConfig.getter();

  TTSVBDataStore.XPCServiceConfig.storeURL.getter();
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v9, 0, 1, v15);
  v17 = TTSVBDataStore.XPCServiceConfig.model.getter();
  TTSVBDataStore.XPCServiceConfig.options.getter();
  v19 = 0;
  if ((*(v16 + 48))(v9, 1, v15) != 1)
  {
    URL._bridgeToObjectiveC()(v18);
    v19 = v20;
    (*(v16 + 8))(v9, v15);
  }

  v21 = objc_allocWithZone(NSXPCStoreServer);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = [v21 initForStoreWithURL:v19 usingModel:v17 options:isa policy:0];

  swift_beginAccess();
  v24 = *(v1 + 16);
  *(v1 + 16) = v23;

  static TTSVBLog.daemon.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Will start listening on XPCStoreServer", v27, 2u);
  }

  (*(v32 + 8))(v5, v33);
  swift_beginAccess();
  v28 = *(v1 + 16);
  if (v28)
  {
    swift_endAccess();
    [v28 startListening];
    return (*(v10 + 8))(v13, v31);
  }

  else
  {
    (*(v10 + 8))(v13, v31);
    return swift_endAccess();
  }
}

uint64_t sub_100001EE8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001F30()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

id sub_100001F94()
{
  v1 = OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager____lazy_storage___userNotificationCenter;
  v2 = *(v0 + OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager____lazy_storage___userNotificationCenter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager____lazy_storage___userNotificationCenter);
  }

  else
  {
    v4 = objc_allocWithZone(UNUserNotificationCenter);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithBundleIdentifier:v5];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id VoiceBankingXPCServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1000020E0()
{
  v1 = sub_100001F94();
  [v1 setDelegate:v0];
  [v1 setWantsNotificationResponsesDelivered];
}

void sub_100002138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100001F94();
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v12[8] = v11;
  v16[4] = sub_100002684;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100002FFC;
  v16[3] = &unk_100031070;
  v13 = _Block_copy(v16);
  v14 = v5;

  v15 = v11;

  [v15 getNotificationSettingsWithCompletionHandler:v13];
  _Block_release(v13);
}

void sub_100002260(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v40 = a8;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v41 = v15;
  v42 = v16;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v39 - v22;
  __chkstk_darwin(v21);
  v25 = &v39 - v24;
  v26 = [a1 authorizationStatus];
  if ((v26 - 2) >= 3)
  {
    if (v26)
    {
      if (v26 == 1)
      {
        static TTSVBLog.daemon.getter();
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Will not schedule notification. User has denied user notifications", v29, 2u);
        }

        (*(v42 + 8))(v25, v41);
      }

      else
      {
        static TTSVBLog.daemon.getter();
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Unknown user notification authorizationStatus", v38, 2u);
        }

        (*(v42 + 8))(v20, v41);
      }
    }

    else
    {
      static TTSVBLog.daemon.getter();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Will request user notification permission", v32, 2u);
      }

      (*(v42 + 8))(v23, v41);
      v33 = swift_allocObject();
      v33[2] = a2;
      v33[3] = a3;
      v33[4] = a4;
      v33[5] = a5;
      v33[6] = a6;
      v33[7] = a7;
      aBlock[4] = sub_100005E44;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002F84;
      aBlock[3] = &unk_100031220;
      v34 = _Block_copy(aBlock);
      v35 = a2;

      [v40 requestAuthorizationWithOptions:7 completionHandler:v34];
      _Block_release(v34);
    }
  }

  else
  {
    sub_100002A08(a3, a4, a5, a6, a7);
  }
}

uint64_t sub_100002634()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100002698(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v15 = type metadata accessor for Logger();
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = *(v43 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v37 - v21;
  __chkstk_darwin(v20);
  v24 = &v37 - v23;
  if (a2)
  {
    swift_errorRetain();
    static TTSVBLog.daemon.getter();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error occurred requesting notification permission: %@", v27, 0xCu);
      sub_100005EBC(v28, &qword_1000350B0, &qword_100027C40);
    }

    else
    {
    }

    return (*(v43 + 8))(v24, v44);
  }

  else
  {
    v37 = a4;
    v38 = a5;
    v39 = a6;
    v40 = a3;
    v41 = a7;
    if (a1)
    {
      static TTSVBLog.daemon.getter();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "User notification permission was granted. Proceeding with scheduling notification", v32, 2u);
      }

      (*(v43 + 8))(v22, v44);
      return sub_100002A08(v37, v38, v39, v41, v42);
    }

    else
    {
      static TTSVBLog.daemon.getter();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Will not schedule notification. User has denied user notifications", v36, 2u);
      }

      return (*(v43 + 8))(v19, v44);
    }
  }
}

uint64_t sub_100002A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Logger();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001EE8(&qword_1000352B0, &qword_100027AF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v18 = String._bridgeToObjectiveC()();
  [v17 setTitle:v18];

  v19 = String._bridgeToObjectiveC()();
  [v17 setBody:v19];

  v20 = String._bridgeToObjectiveC()();
  [v17 setThreadIdentifier:v20];

  [v17 setInterruptionLevel:a5];
  URL.init(string:)();
  v43 = v16;
  sub_100005E54(v16, v14, &qword_1000352B0, &qword_100027AF0);
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v24 = 0;
  if ((*(v22 + 48))(v14, 1, v21) != 1)
  {
    URL._bridgeToObjectiveC()(v23);
    v24 = v25;
    (*(v22 + 8))(v14, v21);
  }

  [v17 setDefaultActionURL:{v24, v41, v42}];

  v26 = String._bridgeToObjectiveC()();
  v27 = [objc_opt_self() iconWithUTI:v26];

  [v17 setIcon:v27];
  v28 = [objc_opt_self() triggerWithTimeInterval:0 repeats:2.0];
  v29 = v17;
  v30 = v28;
  v31 = String._bridgeToObjectiveC()();
  v32 = [objc_opt_self() requestWithIdentifier:v31 content:v29 trigger:v30];

  v33 = sub_100001F94();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v33 removeDeliveredNotificationsWithIdentifiers:isa];

  v35 = Array._bridgeToObjectiveC()().super.isa;
  [v33 removePendingNotificationRequestsWithIdentifiers:v35];

  static TTSVBLog.daemon.getter();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Will schedule user notification", v38, 2u);
  }

  (*(v41 + 8))(v9, v42);
  aBlock[4] = sub_10000307C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000032E8;
  aBlock[3] = &unk_100031248;
  v39 = _Block_copy(aBlock);
  [v33 addNotificationRequest:v32 withCompletionHandler:v39];
  _Block_release(v39);

  return sub_100005EBC(v43, &qword_1000352B0, &qword_100027AF0);
}

void sub_100002F84(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_100002FFC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100003064(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000307C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  if (a1)
  {
    swift_errorRetain();
    static TTSVBLog.daemon.getter();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error occurred scheduling user notification: %@", v12, 0xCu);
      sub_100005EBC(v13, &qword_1000350B0, &qword_100027C40);
    }

    else
    {
    }
  }

  else
  {
    static TTSVBLog.daemon.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Did schedule user notification", v17, 2u);
    }

    v7 = v9;
  }

  return (*(v3 + 8))(v7, v2);
}

void sub_1000032E8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_100003354()
{
  v1 = OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager____lazy_storage___voicebankingUserNotificationBundle;
  v2 = *(v0 + OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager____lazy_storage___voicebankingUserNotificationBundle);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = objc_allocWithZone(NSBundle);
    v5 = String._bridgeToObjectiveC()();
    v3 = [v4 initWithPath:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v3;
    v7 = v3;
    sub_1000057AC(v6);
  }

  sub_100005DEC(v2);
  return v3;
}

uint64_t sub_100003544(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000035EC;

  return sub_100005004(a2);
}

uint64_t sub_1000035EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003870(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100003954;

  return sub_100005004(v9);
}

uint64_t sub_100003954()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100003AC4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100003B6C;

  return sub_1000052C0(a2);
}

uint64_t sub_100003B6C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100003DF8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100003EDC;

  return sub_1000052C0(v9);
}

uint64_t sub_100003EDC(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v10 = *v1;

  v4[2](v4, a1);
  _Block_release(v4);
  v8 = *(v10 + 8);

  return v8();
}

id VoiceBankingXPCServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_1000041A4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000041D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100004200@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100004300@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100004FCC(a1);

  *a2 = v3;
  return result;
}

void *sub_10000434C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004368(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000060AC;

  return v7();
}

uint64_t sub_100004450(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000060AC;

  return v8();
}

uint64_t sub_100004538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100001EE8(&qword_100035098, &qword_100027BC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_100005E54(a3, v24 - v10, &qword_100035098, &qword_100027BC0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100005EBC(v11, &qword_100035098, &qword_100027BC0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_100005EBC(a3, &qword_100035098, &qword_100027BC0);

    return v22;
  }

LABEL_8:
  sub_100005EBC(a3, &qword_100035098, &qword_100027BC0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100004834(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000492C;

  return v7(a1);
}

uint64_t sub_10000492C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100004A24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004AF0(v11, 0, 0, 1, a1, a2);
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
    sub_100005D8C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005D40(v11);
  return v7;
}

unint64_t sub_100004AF0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004BFC(a5, a6);
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

char *sub_100004BFC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004C48(a1, a2);
  sub_100004D78(&off_100031020);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004C48(uint64_t a1, unint64_t a2)
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

  v6 = sub_100004E64(v5, 0);
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
        v7 = sub_100004E64(v10, 0);
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

uint64_t sub_100004D78(uint64_t result)
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

  result = sub_100004ED8(result, v12, 1, v3);
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

void *sub_100004E64(uint64_t a1, uint64_t a2)
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

  sub_100001EE8(&unk_1000350A0, &unk_100027C30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004ED8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001EE8(&unk_1000350A0, &unk_100027C30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_100004FCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100005004(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000050C4, 0, 0);
}

uint64_t sub_1000050C4()
{
  v22 = v0;
  v1 = v0[5];
  v2 = v0[2];
  static TTSVBLog.daemon.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v20 = v0[5];
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100004A24(0xD000000000000025, 0x800000010002A910, &v21);
    *(v11 + 12) = 2080;
    v12 = [v10 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100004A24(v13, v15, &v21);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s. response=%s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v20, v9);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
  }

  v17 = v0[5];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000052C0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100005380, 0, 0);
}

uint64_t sub_100005380()
{
  v22 = v0;
  v1 = v0[5];
  v2 = v0[2];
  static TTSVBLog.daemon.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];
  if (v6)
  {
    v10 = v0[2];
    v20 = v0[5];
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100004A24(0xD000000000000026, 0x800000010002A8E0, &v21);
    *(v11 + 12) = 2080;
    v12 = [v10 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100004A24(v13, v15, &v21);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s. notification=%s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v20, v9);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
  }

  v17 = v0[5];

  v18 = v0[1];

  return v18(26);
}

uint64_t sub_100005580(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100004A24(0xD00000000000002ALL, 0x800000010002A8B0, &v18);
    *(v10 + 12) = 2080;
    if (a1)
    {
      v11 = [v7 description];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE600000000000000;
      v12 = 0x3E656E6F6E3CLL;
    }

    v15 = sub_100004A24(v12, v14, &v18);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s. notification=%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1000057AC(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000057F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000060AC;

  return sub_100003DF8(v2, v3, v5, v4);
}

uint64_t sub_1000058B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000060AC;

  return sub_100004368(v2, v3, v5);
}

uint64_t sub_100005978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000060AC;

  return sub_100004450(a1, v4, v5, v7);
}

uint64_t sub_100005A44()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005A7C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000060AC;

  return sub_100004834(a1, v5);
}

uint64_t sub_100005B34(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000035EC;

  return sub_100004834(a1, v5);
}

uint64_t sub_100005BF0()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005C40()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000035EC;

  return sub_100003870(v2, v3, v5, v4);
}

uint64_t sub_100005D00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005D40(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005D8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_100005DEC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100005DFC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100005E54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001EE8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005EBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001EE8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100005F30(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100005FE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UNNotificationPresentationOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t VoiceBankingXPCServer.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t VoiceBankingXPCServer.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*VoiceBankingXPCServer.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100006224;
}

void sub_100006224(uint64_t a1, char a2)
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

id VoiceBankingXPCServer.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTSVBService();
  static TTSVBService.serviceName.getter();
  v3 = objc_allocWithZone(NSXPCListener);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithMachServiceName:v4];

  *&v1[OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_listener] = v5;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

Swift::Void __swiftcall VoiceBankingXPCServer.start()()
{
  v1 = OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_listener;
  [*(v0 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_listener) setDelegate:v0];
  v2 = *(v0 + v1);

  [v2 resume];
}

uint64_t VoiceBankingXPCServer.createVoice(named:localeID:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = v6 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a3;
    v17[5] = a4;
    v17[6] = a5;
    v17[7] = a6;
    v18 = *(v15 + 8);

    v18(sub_10000DE28, v17, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000662C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a6;
  *(v9 + 24) = a7;

  TTSVBVoiceBankingManager.createVoice(named:localeID:completion:)();
}

uint64_t VoiceBankingXPCServer.importTrainingData(fromDirectory:creatingVoiceName:localeID:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a4;
  v32 = a6;
  v30 = a2;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v7 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = *(v16 + 8);
    v29 = result;
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
    v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 16) = v30;
    *(v20 + 24) = a3;
    (*(v13 + 32))(v20 + v18, v15, v12);
    v21 = (v20 + v19);
    v22 = v32;
    *v21 = v31;
    v21[1] = a5;
    v23 = (v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v23 = v22;
    v23[1] = a7;
    v24 = v27;
    v25 = *(v27 + 8);

    v25(sub_10000DF24, v20, ObjectType, v24);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100006A88(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a7;
  v38 = a8;
  v40 = a2;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v35 = *(v17 - 8);
  v36 = v17;
  v18 = *(v35 + 64);
  __chkstk_darwin(v17);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v21 = *(v13 + 16);
  v39 = a4;
  v21(v16, a4, v12);

  v22 = a3;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v34[4] = a6;
    v26 = v25;
    v27 = swift_slowAlloc();
    v34[3] = a1;
    v34[1] = v27;
    v41 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_100004A24(v40, v22, &v41);
    *(v26 + 12) = 2080;
    v34[2] = v22;
    v28 = URL.path.getter();
    v30 = v29;
    (*(v13 + 8))(v16, v12);
    v31 = sub_100004A24(v28, v30, &v41);

    *(v26 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "Will import training data creating voice: '%s'. Data=%s", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  (*(v35 + 8))(v20, v36);
  v32 = swift_allocObject();
  *(v32 + 16) = v37;
  *(v32 + 24) = v38;

  TTSVBVoiceBankingManager.importTrainingData(fromDirectory:creatingVoiceName:localeID:completion:)();
}

uint64_t sub_100006DEC(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, const char *a4, const char *a5)
{
  v62 = a4;
  v63 = a5;
  v71 = a3;
  v72 = a2;
  v65 = a1;
  v73 = type metadata accessor for TTSVBError();
  v67 = *(v73 - 1);
  v5 = v67[8];
  v6 = (__chkstk_darwin)();
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v61 - v8;
  v10 = sub_100001EE8(&unk_1000351E0, &unk_100027E90);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v70 = &v61 - v12;
  v13 = type metadata accessor for Logger();
  v68 = *(v13 - 8);
  v69 = v13;
  v14 = *(v68 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v64 = &v61 - v18;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v61 - v25;
  v27 = sub_100001EE8(&qword_100035270, &unk_100027EF0);
  v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v30 = &v61 - v29;
  sub_100005E54(v65, &v61 - v29, &qword_100035270, &unk_100027EF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v65 = v19;
    v31 = v67;
    v32 = v30;
    v33 = v73;
    (v67[4])(v9, v32, v73);
    static TTSVBLog.daemon.getter();
    v34 = v31[2];
    v34(v66, v9, v33);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v64 = v9;
      v38 = v37;
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      sub_10000F3AC(&qword_100035500, &type metadata accessor for TTSVBError);
      swift_allocError();
      v40 = v66;
      v34(v41, v66, v73);
      v42 = _swift_stdlib_bridgeErrorToNSError();
      v43 = v67[1];
      v43(v40, v73);
      *(v38 + 4) = v42;
      *v39 = v42;
      v33 = v73;
      _os_log_impl(&_mh_execute_header, v35, v36, v63, v38, 0xCu);
      sub_100005EBC(v39, &qword_1000350B0, &qword_100027C40);

      v9 = v64;
    }

    else
    {

      v43 = v67[1];
      v43(v66, v33);
    }

    (*(v68 + 8))(v17, v69);
    v56 = v70;
    (*(v20 + 56))(v70, 1, 1, v65);
    v57 = TTSVBError.boxed.getter();
    v72(v56, v57);

    sub_100005EBC(v56, &unk_1000351E0, &unk_100027E90);
    return (v43)(v9, v33);
  }

  else
  {
    (*(v20 + 32))(v26, v30, v19);
    v44 = v64;
    static TTSVBLog.daemon.getter();
    v73 = *(v20 + 16);
    (v73)(v24, v26, v19);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = v19;
    if (os_log_type_enabled(v45, v46))
    {
      v48 = swift_slowAlloc();
      v65 = v48;
      v67 = swift_slowAlloc();
      v74 = v67;
      *v48 = 136315138;
      LODWORD(v66) = v46;
      v49 = UUID.uuidString.getter();
      v50 = v19;
      v52 = v51;
      v53 = *(v20 + 8);
      v53(v24, v50);
      v54 = sub_100004A24(v49, v52, &v74);
      v47 = v50;

      v55 = v65;
      *(v65 + 1) = v54;
      _os_log_impl(&_mh_execute_header, v45, v66, v62, v55, 0xCu);
      sub_100005D40(v67);

      (*(v68 + 8))(v64, v69);
    }

    else
    {

      v53 = *(v20 + 8);
      v53(v24, v47);
      (*(v68 + 8))(v44, v69);
    }

    v59 = v20;
    v60 = v70;
    (v73)(v70, v26, v47);
    (*(v59 + 56))(v60, 0, 1, v47);
    v72(v60, 0);
    sub_100005EBC(v60, &unk_1000351E0, &unk_100027E90);
    return (v53)(v26, v47);
  }
}

uint64_t VoiceBankingXPCServer.importModel(fromDirectory:overrideLocaleID:addingToVoice:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v32 = a4;
  v33 = a1;
  v36 = a2;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v6 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v15 + 8);
    v31 = result;
    ObjectType = swift_getObjectType();
    v17 = v11;
    (*(v12 + 16))(v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v11);
    v18 = *(v9 + 16);
    v28 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18(v28, v33, v8);
    v19 = *(v12 + 80);
    v27[1] = a3;
    v20 = (v19 + 32) & ~v19;
    v21 = (v13 + *(v9 + 80) + v20) & ~*(v9 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v36;
    *(v22 + 24) = a3;
    (*(v12 + 32))(v22 + v20, v14, v17);
    (*(v9 + 32))(v22 + v21, v28, v8);
    v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    v24 = v35;
    *v23 = v34;
    v23[1] = v24;
    v25 = v29;
    v26 = *(v29 + 8);

    v26(sub_10000E140, v22, ObjectType, v25);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000079AC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a6;
  v55 = a7;
  v57 = a1;
  v58 = a2;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v46[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for Logger();
  v52 = *(v20 - 8);
  v53 = v20;
  v21 = *(v52 + 64);
  __chkstk_darwin(v20);
  v23 = &v46[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static TTSVBLog.daemon.getter();
  (*(v16 + 16))(v19, a4, v15);
  v24 = *(v11 + 16);
  v56 = a5;
  v51 = v10;
  v24(v14, a5, v10);

  v25 = a3;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v50 = a4;
    v29 = v28;
    v49 = swift_slowAlloc();
    v59 = v49;
    *v29 = 136315650;
    v30 = v25 == 0;
    v48 = v26;
    v31 = v25;
    if (v25)
    {
      v32 = v58;
    }

    else
    {
      v32 = 0x3E6C696E3CLL;
    }

    v47 = v27;
    if (v30)
    {
      v33 = 0xE500000000000000;
    }

    else
    {
      v33 = v31;
    }

    v34 = sub_100004A24(v32, v33, &v59);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = UUID.uuidString.getter();
    v37 = v36;
    (*(v16 + 8))(v19, v15);
    v38 = sub_100004A24(v35, v37, &v59);

    *(v29 + 14) = v38;
    *(v29 + 22) = 2080;
    v39 = URL.path.getter();
    v41 = v40;
    (*(v11 + 8))(v14, v51);
    v42 = sub_100004A24(v39, v41, &v59);

    *(v29 + 24) = v42;
    v43 = v48;
    _os_log_impl(&_mh_execute_header, v48, v47, "Will import model. overrideLocaleID=%s Adding to voice='%s' Data=%s", v29, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v14, v51);
    (*(v16 + 8))(v19, v15);
  }

  (*(v52 + 8))(v23, v53);
  v44 = swift_allocObject();
  *(v44 + 16) = v54;
  *(v44 + 24) = v55;

  TTSVBVoiceBankingManager.importModel(fromDirectory:overrideLocaleID:addingToVoice:completion:)();
}

uint64_t VoiceBankingXPCServer.exportTrainingData(voiceID:shouldCompressResult:includeEntireScript:reply:)(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v27 = a2;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v5 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
    v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v17 = v16 + v12;
    v24 = a4;
    v18 = swift_allocObject();
    (*(v11 + 32))(v18 + v16, v13, v10);
    v19 = (v18 + v17);
    *v19 = v27 & 1;
    v19[1] = a3 & 1;
    v20 = (v18 + ((v17 + 9) & 0xFFFFFFFFFFFFFFF8));
    v21 = v25;
    *v20 = v24;
    v20[1] = a5;
    v22 = *(v21 + 8);

    v22(sub_10000E2E8, v18, ObjectType, v21);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000824C(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  v65 = a3;
  v66 = a2;
  v59 = a1;
  v67 = type metadata accessor for TTSVBError();
  v61 = *(v67 - 1);
  v3 = *(v61 + 8);
  v4 = __chkstk_darwin(v67);
  v60 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v7 = &v57 - v6;
  v8 = sub_100001EE8(&qword_1000352B0, &qword_100027AF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v64 = &v57 - v10;
  v11 = type metadata accessor for Logger();
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = *(v62 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v58 = (&v57 - v16);
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v20 = __chkstk_darwin(v17);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v57 - v23;
  v25 = sub_100001EE8(&qword_100035268, &qword_100027EE8);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v57 - v27;
  sub_100005E54(v59, &v57 - v27, &qword_100035268, &qword_100027EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = v18;
    v59 = v17;
    v29 = v61;
    v30 = v28;
    v31 = v67;
    (*(v61 + 4))(v7, v30, v67);
    static TTSVBLog.daemon.getter();
    v32 = *(v29 + 2);
    v32(v60, v7, v31);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    v35 = v7;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v37 = v7;
      v38 = swift_slowAlloc();
      *v36 = 138412290;
      sub_10000F3AC(&qword_100035500, &type metadata accessor for TTSVBError);
      swift_allocError();
      v39 = v60;
      v32(v40, v60, v67);
      v41 = _swift_stdlib_bridgeErrorToNSError();
      v42 = *(v61 + 1);
      v42(v39, v67);
      *(v36 + 4) = v41;
      *v38 = v41;
      v31 = v67;
      _os_log_impl(&_mh_execute_header, v33, v34, "Error exporting training data: %@", v36, 0xCu);
      sub_100005EBC(v38, &qword_1000350B0, &qword_100027C40);
      v35 = v37;
    }

    else
    {

      v42 = *(v61 + 1);
      v42(v60, v31);
    }

    (*(v62 + 8))(v15, v63);
    v53 = v64;
    v58[7](v64, 1, 1, v59);
    v54 = TTSVBError.boxed.getter();
    v66(v53, v54);

    sub_100005EBC(v53, &qword_1000352B0, &qword_100027AF0);
    return v42(v35, v31);
  }

  else
  {
    (*(v18 + 4))(v24, v28, v17);
    v43 = v58;
    static TTSVBLog.daemon.getter();
    v44 = *(v18 + 2);
    v44(v22, v24, v17);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v57 = v47;
      v60 = swift_slowAlloc();
      v68 = v60;
      *v47 = 136315138;
      LODWORD(v59) = v46;
      v48 = URL.path.getter();
      v61 = v44;
      v50 = v49;
      v67 = *(v18 + 1);
      (v67)(v22, v17);
      v51 = sub_100004A24(v48, v50, &v68);
      v44 = v61;

      v52 = v57;
      *(v57 + 1) = v51;
      _os_log_impl(&_mh_execute_header, v45, v59, "Succesfully exported training data to: %s", v52, 0xCu);
      sub_100005D40(v60);
    }

    else
    {

      v67 = *(v18 + 1);
      (v67)(v22, v17);
    }

    (*(v62 + 8))(v43, v63);
    v56 = v64;
    v44(v64, v24, v17);
    (*(v18 + 7))(v56, 0, 1, v17);
    v66(v56, 0);
    sub_100005EBC(v56, &qword_1000352B0, &qword_100027AF0);
    return (v67)(v24, v17);
  }
}

void sub_100008B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v14 = sub_100001EE8(a4, a5);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v21 - v16;
  sub_100005E54(a1, &v21 - v16, a4, a5);
  v18 = a6(0);
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    v20 = a7();
    (*(v19 + 8))(v17, v18);
  }

  (*(a3 + 16))(a3, v20, a2);
}

uint64_t sub_100008D00(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = a1;
  a7(v15, a6, v17);

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_100008F70(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v18 = a1;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Will refresh models before fetching/returning", v13, 2u);
    a1 = v18;
  }

  (*(v7 + 8))(v10, v6);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v15 = a1;

  TTSVBVoiceBankingManager.refreshModels(completion:)();
}

uint64_t sub_100009134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v48 = a6;
  v49 = a7;
  v44 = a5;
  v45 = a3;
  v46 = a4;
  v47 = a2;
  v8 = type metadata accessor for Logger();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v41 = &v40 - v13;
  v14 = type metadata accessor for TTSVBError();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v40 - v20;
  v22 = sub_100001EE8(&qword_100035230, &qword_100027EE0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v40 - v24;
  sub_100005E54(a1, &v40 - v24, &qword_100035230, &qword_100027EE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v15 + 32))(v21, v25, v14);
    static TTSVBLog.daemon.getter();
    v26 = *(v15 + 16);
    v26(v19, v21, v14);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v29 = 138412290;
      sub_10000F3AC(&qword_100035500, &type metadata accessor for TTSVBError);
      swift_allocError();
      v26(v30, v19, v14);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = *(v15 + 8);
      v32(v19, v14);
      *(v29 + 4) = v31;
      v33 = v40;
      *v40 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to refresh models when asking for voice models: %@", v29, 0xCu);
      sub_100005EBC(v33, &qword_1000350B0, &qword_100027C40);

      (*(v42 + 8))(v41, v43);
      v32(v21, v14);
    }

    else
    {

      v37 = *(v15 + 8);
      v37(v19, v14);
      (*(v42 + 8))(v41, v43);
      v37(v21, v14);
    }
  }

  else
  {
    sub_100005EBC(v25, &qword_100035230, &qword_100027EE0);
    static TTSVBLog.daemon.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Succesfully refreshed models. will fetch and return models now", v36, 2u);
    }

    (*(v42 + 8))(v12, v43);
  }

  v38 = swift_allocObject();
  *(v38 + 16) = v45;
  *(v38 + 24) = v46;

  v49(v48, v38);
}

uint64_t sub_100009688(uint64_t a1, void (*a2)(uint64_t, unint64_t, void *))
{
  v4 = type metadata accessor for TTSVBError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001EE8(&qword_100035218, &qword_100027ED8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v19 - v11);
  sub_100005E54(a1, &v19 - v11, &qword_100035218, &qword_100027ED8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v12, v4);
    v13 = TTSVBError.boxed.getter();
    a2(0, 0xF000000000000000, v13);

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v15 = *v12;
    type metadata accessor for TTSVBPersonalVoiceSystemRepresentation();
    sub_10000F3AC(&qword_100035220, &type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
    sub_10000F3AC(&qword_100035228, &type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
    v16 = Array<A>.toData()();
    v18 = v17;

    a2(v16, v18, 0);
    return sub_10000F3F4(v16, v18);
  }
}

void sub_100009928(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v6 = isa;
  (*(a4 + 16))(a4);
}

uint64_t sub_1000099BC(uint64_t a1, void (*a2)(uint64_t, unint64_t, void *))
{
  v4 = type metadata accessor for TTSVBError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001EE8(&qword_100035200, &qword_100027ED0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v19 - v11);
  sub_100005E54(a1, &v19 - v11, &qword_100035200, &qword_100027ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v12, v4);
    v13 = TTSVBError.boxed.getter();
    a2(0, 0xF000000000000000, v13);

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v15 = *v12;
    type metadata accessor for TTSVBVoiceSample();
    sub_10000F3AC(&qword_100035208, &type metadata accessor for TTSVBVoiceSample);
    sub_10000F3AC(&qword_100035210, &type metadata accessor for TTSVBVoiceSample);
    v16 = Array<A>.toData()();
    v18 = v17;

    a2(v16, v18, 0);
    return sub_10000F3F4(v16, v18);
  }
}

uint64_t VoiceBankingXPCServer.trainModel(voiceID:mode:startImmediately:skipValidation:overrideMinimumPhraseCount:useUserRecordingsForTraining:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v38 = a4;
  v39 = a7;
  v36 = a2;
  v37 = a6;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v9 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v33 = a9;
    v34 = a8;
    v32 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    (*(v15 + 16))(&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
    v20 = (*(v15 + 80) + 40) & ~*(v15 + 80);
    v21 = v20 + v16;
    v22 = a5;
    v23 = a3;
    v24 = (v20 + v16 + 10) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    v26 = v37;
    *(v25 + 2) = v36;
    *(v25 + 3) = v23;
    *(v25 + 4) = v26;
    (*(v15 + 32))(&v25[v20], v17, v14);
    v27 = &v25[v21];
    *v27 = v38 & 1;
    v27[1] = v39 & 1;
    v27[2] = v22 & 1;
    v28 = &v25[v24];
    v29 = v33;
    *v28 = v34;
    *(v28 + 1) = v29;
    v30 = v32;
    v31 = *(v32 + 8);

    v31(sub_10000E7A8, v25, ObjectType, v30);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100009E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7, int a8, uint64_t a9, uint64_t a10)
{
  v32 = a8;
  v33 = a6;
  v28 = a4;
  v29 = a5;
  v34 = a1;
  v30 = a9;
  v31 = a10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = type metadata accessor for TTSVBVoiceBankingManager.TrainingDataSource();
  v27 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = String._bridgeToObjectiveC()();
  v26[2] = TTSVBSiriTTSTrainerTaskModeForString();

  v20 = &enum case for TTSVBVoiceBankingManager.TrainingDataSource.userRecordings(_:);
  if ((a7 & 1) == 0)
  {
    v20 = &enum case for TTSVBVoiceBankingManager.TrainingDataSource.synthesizedSpeech(_:);
  }

  (*(v15 + 104))(v18, *v20, v14);
  v26[1] = v28 & ~(v28 >> 63);
  (*(v12 + 16))(v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v11);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  (*(v12 + 32))(v22 + v21, v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v23 = (v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;

  TTSVBVoiceBankingManager.train(voiceID:mode:startImmediately:trainingDataSource:validateTrainingSamples:overrideMinimumPhraseCount:completion:)();

  return (*(v15 + 8))(v18, v27);
}

uint64_t sub_10000A114(uint64_t a1, char *a2, void (*a3)(void), uint64_t a4)
{
  v63 = a4;
  v64 = a3;
  v57 = a2;
  v65 = type metadata accessor for TTSVBError();
  v60 = *(v65 - 8);
  v5 = *(v60 + 64);
  v6 = __chkstk_darwin(v65);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v56 - v8;
  v66 = type metadata accessor for UUID();
  v10 = *(v66 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v66);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v56 - v15;
  v17 = type metadata accessor for Logger();
  v61 = *(v17 - 8);
  v62 = v17;
  v18 = *(v61 + 64);
  v19 = __chkstk_darwin(v17);
  v59 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v56 - v21;
  v23 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v56 - v25;
  sub_100005E54(a1, &v56 - v25, &unk_1000351F0, &unk_1000280C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v60;
    v28 = v26;
    v29 = v65;
    (*(v60 + 32))(v9, v28, v65);
    static TTSVBLog.daemon.getter();
    (*(v10 + 16))(v14, v57, v66);
    v30 = *(v27 + 16);
    v30(v58, v9, v29);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v57 = v9;
      v34 = v33;
      v56 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v67 = v35;
      *v34 = 136315394;
      v36 = UUID.uuidString.getter();
      v38 = v37;
      (*(v10 + 8))(v14, v66);
      v39 = sub_100004A24(v36, v38, &v67);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2112;
      sub_10000F3AC(&qword_100035500, &type metadata accessor for TTSVBError);
      v40 = v65;
      swift_allocError();
      v41 = v58;
      v30(v42, v58, v40);
      v43 = _swift_stdlib_bridgeErrorToNSError();
      v44 = *(v60 + 8);
      v44(v41, v40);
      *(v34 + 14) = v43;
      v45 = v56;
      *v56 = v43;
      _os_log_impl(&_mh_execute_header, v31, v32, "Error training new model for voice ID: %s. Error: %@", v34, 0x16u);
      sub_100005EBC(v45, &qword_1000350B0, &qword_100027C40);

      sub_100005D40(v35);

      v9 = v57;
    }

    else
    {

      v44 = *(v60 + 8);
      v44(v58, v65);
      (*(v10 + 8))(v14, v66);
    }

    (*(v61 + 8))(v59, v62);
    v54 = TTSVBError.boxed.getter();
    v64();

    return (v44)(v9, v65);
  }

  else
  {
    static TTSVBLog.daemon.getter();
    (*(v10 + 16))(v16, v57, v66);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v67 = v49;
      *v48 = 136315138;
      v50 = UUID.uuidString.getter();
      v52 = v51;
      (*(v10 + 8))(v16, v66);
      v53 = sub_100004A24(v50, v52, &v67);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v46, v47, "Succesfully kicked off training model for voice ID: %s", v48, 0xCu);
      sub_100005D40(v49);
    }

    else
    {

      (*(v10 + 8))(v16, v66);
    }

    (*(v61 + 8))(v22, v62);
    (v64)(0);
    return sub_100005EBC(v26, &unk_1000351F0, &unk_1000280C0);
  }
}

uint64_t VoiceBankingXPCServer.cancelTrainingTask(taskID:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v13[5] = a4;
    v14 = *(v11 + 8);

    v14(sub_10000E8AC, v13, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000AAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;

  TTSVBVoiceBankingManager.cancelTrainingTask(taskID:completion:)();
}

uint64_t sub_10000AB90(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v46 = a5;
  v47 = a4;
  v42 = a2;
  v48 = type metadata accessor for TTSVBError();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v48);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = type metadata accessor for Logger();
  v44 = *(v14 - 8);
  v45 = v14;
  v15 = *(v44 + 64);
  v16 = __chkstk_darwin(v14);
  v43 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v40 - v18;
  v20 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v40 - v22;
  sub_100005E54(a1, &v40 - v22, &unk_1000351F0, &unk_1000280C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v48;
    (*(v7 + 32))(v13, v23, v48);
    static TTSVBLog.daemon.getter();
    v25 = *(v7 + 16);
    v41 = v13;
    v25(v11);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v49 = v40;
      *v28 = 136315394;
      *(v28 + 4) = sub_100004A24(v42, a3, &v49);
      *(v28 + 12) = 2112;
      sub_10000F3AC(&qword_100035500, &type metadata accessor for TTSVBError);
      swift_allocError();
      (v25)(v30, v11, v48);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = *(v7 + 8);
      v32(v11, v48);
      *(v28 + 14) = v31;
      *v29 = v31;
      v24 = v48;
      _os_log_impl(&_mh_execute_header, v26, v27, "Could not request cancelling of training task=%s. Error: %@", v28, 0x16u);
      sub_100005EBC(v29, &qword_1000350B0, &qword_100027C40);

      sub_100005D40(v40);
    }

    else
    {

      v32 = *(v7 + 8);
      v32(v11, v24);
    }

    (*(v44 + 8))(v43, v45);
    v38 = v41;
    v39 = TTSVBError.boxed.getter();
    v47();

    return (v32)(v38, v24);
  }

  else
  {
    static TTSVBLog.daemon.getter();

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_100004A24(v42, a3, &v49);
      _os_log_impl(&_mh_execute_header, v33, v34, "Succesfully requested cancelling of training task: %s", v35, 0xCu);
      sub_100005D40(v36);
    }

    (*(v44 + 8))(v19, v45);
    (v47)(0);
    return sub_100005EBC(v23, &unk_1000351F0, &unk_1000280C0);
  }
}

Swift::Void __swiftcall VoiceBankingXPCServer.requestVoiceCacheRebuildIfNeeded()()
{
  v1 = v0 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 24))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

uint64_t VoiceBankingXPCServer.updateTCCCloudKitAccess(allowed:reply:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v11 = swift_allocObject();
    *(v11 + 16) = a1 & 1;
    *(v11 + 24) = a2;
    *(v11 + 32) = a3;
    v12 = *(v9 + 16);

    v12(sub_10000E93C, v11, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000B4E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = type metadata accessor for TTSVBError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (dispatch thunk of TTSVBAccessManager.updateTCCCloudKitAccess(_:userInitiated:)())
  {
    return (a3)(0);
  }

  TTSVBError.init(_:_:_:)();
  v10 = TTSVBError.boxed.getter();
  a3();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10000B7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    v13 = *(v10 + 8);

    v13(a4, v12, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000B880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  a6(a5, v10);
}

void sub_10000B944(char *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = &a1[OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 1);
    ObjectType = swift_getObjectType();
    v15 = swift_allocObject();
    *(v15 + 16) = a6;
    *(v15 + 24) = v11;
    v16 = *(v13 + 8);
    v17 = a1;

    v16(a7, v15, ObjectType, v13);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t VoiceBankingXPCServer.createSupplementaryModelForVoice(voiceID:sourceVersion:targetVersion:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a4;
  v36 = a6;
  v34 = a2;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v7 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = *(v16 + 8);
    v33 = result;
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
    v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = a3;
    v21 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
    v30 = a7;
    v22 = swift_allocObject();
    (*(v13 + 32))(v22 + v18, v15, v12);
    v23 = (v22 + v19);
    v24 = v35;
    *v23 = v34;
    v23[1] = v20;
    v25 = (v22 + v21);
    *v25 = v24;
    v25[1] = a5;
    v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
    v27 = v30;
    v28 = v31;
    *v26 = v36;
    v26[1] = v27;
    v29 = *(v28 + 8);

    v29(sub_10000EA64, v22, ObjectType, v28);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000BC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[0] = a2;
  v21[1] = a1;
  v10 = type metadata accessor for TTSVBVoiceModelVersion();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v21 - v16;

  TTSVBVoiceModelVersion.init(rawValue:)();

  TTSVBVoiceModelVersion.init(rawValue:)();
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  *(v18 + 24) = a8;

  TTSVBVoiceBankingManager.createSupplementaryModelForVoice(voiceID:sourceVersion:targetVersion:startTrainingImmediately:completion:)();

  v19 = *(v11 + 8);
  v19(v15, v10);
  return (v19)(v17, v10);
}

uint64_t sub_10000BE38(uint64_t a1, const char *a2, uint64_t a3, const char *a4, const char *a5)
{
  v44 = a4;
  v45 = a5;
  v50 = a3;
  v47 = type metadata accessor for TTSVBError();
  v7 = *(v47 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v47);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Logger();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  v20 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v41 - v22;
  sub_100005E54(a1, &v41 - v22, &unk_1000351F0, &unk_1000280C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = a2;
    v24 = v47;
    (*(v7 + 32))(v12, v23, v47);
    static TTSVBLog.daemon.getter();
    v25 = *(v7 + 16);
    v26 = v46;
    v25(v46, v12, v24);
    v43 = v17;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v29 = v12;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v30 = 138412290;
      sub_10000F3AC(&qword_100035500, &type metadata accessor for TTSVBError);
      swift_allocError();
      v42 = v12;
      v25(v31, v26, v24);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      v33 = *(v7 + 8);
      v33(v26, v24);
      *(v30 + 4) = v32;
      v34 = v41;
      *v41 = v32;
      v29 = v42;
      _os_log_impl(&_mh_execute_header, v27, v28, v45, v30, 0xCu);
      sub_100005EBC(v34, &qword_1000350B0, &qword_100027C40);
    }

    else
    {

      v33 = *(v7 + 8);
      v33(v26, v24);
    }

    (*(v48 + 8))(v43, v49);
    v40 = TTSVBError.boxed.getter();
    v44();

    return (v33)(v29, v24);
  }

  else
  {
    v35 = a2;
    static TTSVBLog.daemon.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, v44, v38, 2u);
    }

    (*(v48 + 8))(v19, v49);
    (v35)(0);
    return sub_100005EBC(v23, &unk_1000351F0, &unk_1000280C0);
  }
}

uint64_t sub_10000C4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v5 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
    v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v16 = swift_allocObject();
    (*(v10 + 32))(v16 + v15, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v17 = (v16 + ((v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = v21;
    v17[1] = a3;
    v18 = *(v14 + 8);

    v18(a5, v16, ObjectType, v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000C678(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_100001EE8(&qword_100035098, &qword_100027BC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v16 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a1;
  (*(v9 + 32))(&v17[v16], &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v18 = &v17[(v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = a3;
  *(v18 + 1) = a4;
  v19 = a1;

  sub_10000D160(0, 0, v14, &unk_100027EA8, v17);
}

uint64_t sub_10000C880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = type metadata accessor for TTSVBError.Problem();
  v7[5] = v9;
  v10 = *(v9 - 8);
  v7[6] = v10;
  v11 = *(v10 + 64) + 15;
  v7[7] = swift_task_alloc();
  v12 = type metadata accessor for TTSVBError();
  v7[8] = v12;
  v13 = *(v12 - 8);
  v7[9] = v13;
  v14 = *(v13 + 64) + 15;
  v7[10] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v7[11] = v15;
  v16 = *(v15 - 8);
  v7[12] = v16;
  v17 = *(v16 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v7[15] = v18;
  v19 = *(v18 - 8);
  v7[16] = v19;
  v20 = *(v19 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v21 = async function pointer to TTSVBVoiceBankingManager.synthesizeAudioForTraining(voiceID:)[1];
  v22 = swift_task_alloc();
  v7[19] = v22;
  *v22 = v7;
  v22[1] = sub_10000CAB4;

  return TTSVBVoiceBankingManager.synthesizeAudioForTraining(voiceID:)(a5);
}

uint64_t sub_10000CAB4()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_10000CE04;
  }

  else
  {
    v3 = sub_10000CBC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000CBC8()
{
  v34 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 16);
  static TTSVBLog.daemon.getter();
  (*(v4 + 16))(v2, v5, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 144);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v12 = *(v0 + 112);
  v14 = *(v0 + 88);
  v13 = *(v0 + 96);
  if (v8)
  {
    v32 = *(v0 + 120);
    v15 = swift_slowAlloc();
    v30 = v7;
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    v17 = UUID.uuidString.getter();
    v31 = v9;
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_100004A24(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v30, "Did synthesize audio samples for voice: %s.", v15, 0xCu);
    sub_100005D40(v16);

    (*(v10 + 8))(v31, v32);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  v21 = *(v0 + 32);
  (*(v0 + 24))(0);
  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  v25 = *(v0 + 104);
  v24 = *(v0 + 112);
  v26 = *(v0 + 80);
  v27 = *(v0 + 56);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10000CE04()
{
  v49 = v0;
  v1 = v0[20];
  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[2];
  static TTSVBLog.daemon.getter();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v44 = v0[20];
    v45 = v0[16];
    v46 = v0[15];
    v47 = v0[17];
    v10 = v0[12];
    v9 = v0[13];
    v43 = v0[11];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v48 = v13;
    *v11 = 136315394;
    v14 = UUID.uuidString.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v43);
    v17 = sub_100004A24(v14, v16, &v48);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Could not synthesize audio samples for voice: %s. Error: %@", v11, 0x16u);
    sub_100005EBC(v12, &qword_1000350B0, &qword_100027C40);

    sub_100005D40(v13);

    (*(v45 + 8))(v47, v46);
  }

  else
  {
    v20 = v0[16];
    v19 = v0[17];
    v21 = v0[15];
    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[11];

    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
  }

  v25 = v0[20];
  v27 = v0[9];
  v26 = v0[10];
  v29 = v0[7];
  v28 = v0[8];
  v30 = v0[5];
  v31 = v0[6];
  v33 = v0[3];
  v32 = v0[4];
  (*(v31 + 104))(v29, enum case for TTSVBError.Problem.unspecified(_:), v30);
  static TTSVBError.map(_:_:)();
  (*(v31 + 8))(v29, v30);
  v34 = TTSVBError.boxed.getter();
  (*(v27 + 8))(v26, v28);
  v33(v34);

  v36 = v0[17];
  v35 = v0[18];
  v38 = v0[13];
  v37 = v0[14];
  v39 = v0[10];
  v40 = v0[7];

  v41 = v0[1];

  return v41();
}

uint64_t sub_10000D160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001EE8(&qword_100035098, &qword_100027BC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005E54(a3, v27 - v11, &qword_100035098, &qword_100027BC0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100005EBC(v12, &qword_100035098, &qword_100027BC0);
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

      sub_100005EBC(a3, &qword_100035098, &qword_100027BC0);

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

  sub_100005EBC(a3, &qword_100035098, &qword_100027BC0);
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

Swift::Void __swiftcall VoiceBankingXPCServer.sendMockUserNotification()()
{
  v1 = v0 + OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(sub_10000D52C, 0, ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000D52C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBVoiceBankingManager.sendMockUserNotification()();
  static TTSVBLog.daemon.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Did send dummy notification.", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10000D774(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

BOOL sub_10000D824(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
    }
  }

  return result;
}

uint64_t sub_10000D898(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Incoming XPC Connection: %{public}@", v12, 0xCu);
    sub_100005EBC(v13, &qword_1000350B0, &qword_100027C40);
  }

  (*(v5 + 8))(v8, v4);
  type metadata accessor for TTSVBService();
  static TTSVBService.serviceName.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v9 valueForEntitlement:v15];

  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (*(&v38 + 1))
  {
    sub_10000F9B4(0, &qword_100035290, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v17 = v35;
      v18 = [v35 BOOLValue];

      if (v18)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    sub_100005EBC(&v39, &qword_100035278, &qword_100027F70);
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = [v9 valueForEntitlement:v19];

  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39 = v37;
  v40 = v38;
  if (*(&v38 + 1))
  {
    v21 = swift_dynamicCast();
    if (v21)
    {
      v22 = v35;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v36;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_100005EBC(&v39, &qword_100035278, &qword_100027F70);
    v22 = 0;
    v23 = 0;
  }

  *&v39 = v22;
  *(&v39 + 1) = v23;
  __chkstk_darwin();
  *(&v34 - 2) = &v39;
  v24 = sub_10000D774(sub_10000F8D8, (&v34 - 4), &off_100031298);
  sub_100001EE8(&qword_100035280, &qword_100027F00);
  swift_arrayDestroy();
  if (v24)
  {
  }

  else
  {
    static os_log_type_t.fault.getter();
    sub_100001EE8(&qword_100035288, &unk_100027F08);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100027E30;
    v26 = [v9 processIdentifier];
    *(v25 + 56) = &type metadata for Int32;
    *(v25 + 64) = &protocol witness table for Int32;
    *(v25 + 32) = v26;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    *(v25 + 96) = sub_10000F9B4(0, &qword_100035290, NSNumber_ptr);
    *(v25 + 104) = sub_10000F8F8();
    *(v25 + 72) = isa;
    *(v25 + 136) = &type metadata for String;
    *(v25 + 144) = sub_10000F960();
    v28 = 0x6E776F6E6B6E55;
    if (v23)
    {
      v28 = v22;
    }

    v29 = 0xE700000000000000;
    if (v23)
    {
      v29 = v23;
    }

    *(v25 + 112) = v28;
    *(v25 + 120) = v29;
    sub_10000F9B4(0, &qword_1000352A8, OS_os_log_ptr);
    v30 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

LABEL_29:
  v31 = static TTSVBService.configuredServiceInterface()();
  [v9 setExportedInterface:v31];

  v32 = static TTSVBService.configuredClientInterface()();
  [v9 setRemoteObjectInterface:v32];

  [v9 setExportedObject:v2];
  [v9 resume];
  return 1;
}

uint64_t sub_10000DE2C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_10000DF24(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = *(v1 + v6 + 8);

  return sub_100006A88(a1, v7, v8, v1 + v4, v10, v11, v12, v13);
}

uint64_t sub_10000DFD8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_10000E140(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for URL() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_1000079AC(a1, v8, v9, v1 + v4, v1 + v7, v11, v12);
}

uint64_t sub_10000E248()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 9) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000E2E8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = ((*(v1 + 80) + 16) & ~*(v1 + 80)) + *(v1 + 64);
  v3 = (v2 + 9) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v0 + v2);
  v5 = *v4;
  v6 = v4[1];
  v8 = *(v0 + v3);
  v7 = *(v0 + v3 + 8);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  TTSVBVoiceBankingManager.exportTrainingData(forVoice:shouldCompressResult:includeEntireScript:completion:)();
}

uint64_t sub_10000E5D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t, uint64_t))
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;

  a4(v4 + v8, a3, v12);
}

uint64_t sub_10000E6CC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 10) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000E7A8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  return sub_100009E7C(a1, v1[2], v1[3], v1[4], v1 + v4, *(v1 + v5), *(v1 + v5 + 1), *(v1 + v5 + 2), *(v1 + ((v5 + 10) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 10) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10000E904()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E994()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_10000EA64(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return sub_10000BC8C(a1, v1 + v4, v8, v9, v10, v11, v13, v14);
}

uint64_t sub_10000EB24(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_10000C678(a1, v1 + v4, v6, v7);
}

uint64_t sub_10000EC24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EC5C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10000ECA0()
{
  v1 = *(v0 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_10000EDA0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000EDF8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000EEDC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1000035EC;

  return sub_10000C880(v8, v9, v10, v4, v0 + v3, v6, v7);
}

uint64_t sub_10000EFF4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000060AC;

  return sub_100004834(a1, v5);
}

uint64_t sub_10000F0AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000035EC;

  return sub_100004834(a1, v5);
}

uint64_t sub_10000F1EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F264()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000F304(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_10000A114(a1, (v1 + v4), v6, v7);
}

uint64_t sub_10000F3AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F3F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000F4A4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for TTSVBInstalledVoiceModel();
  sub_10000F3AC(&qword_100035238, &type metadata accessor for TTSVBInstalledVoiceModel);
  sub_10000F3AC(&qword_100035240, &type metadata accessor for TTSVBInstalledVoiceModel);
  v3 = Array<A>.toData()();
  v5 = v4;
  v2();

  return sub_10000F3F4(v3, v5);
}

uint64_t sub_10000F580()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F610()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for TTSVBVoiceModel();
  sub_10000F3AC(&qword_100035248, &type metadata accessor for TTSVBVoiceModel);
  sub_10000F3AC(&qword_100035250, &type metadata accessor for TTSVBVoiceModel);
  v3 = Array<A>.toData()();
  v5 = v4;
  v2();

  return sub_10000F3F4(v3, v5);
}

uint64_t sub_10000F6EC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for TTSVBVoice();
  sub_10000F3AC(&qword_100035258, &type metadata accessor for TTSVBVoice);
  sub_10000F3AC(&qword_100035260, &type metadata accessor for TTSVBVoice);
  v3 = Array<A>.toData()();
  v5 = v4;
  v2();

  return sub_10000F3F4(v3, v5);
}

unint64_t sub_10000F8F8()
{
  result = qword_100035298;
  if (!qword_100035298)
  {
    sub_10000F9B4(255, &qword_100035290, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035298);
  }

  return result;
}

unint64_t sub_10000F960()
{
  result = qword_1000352A0;
  if (!qword_1000352A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000352A0);
  }

  return result;
}

uint64_t sub_10000F9B4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000FB24(void *a1)
{
  v2 = type metadata accessor for URLRequest();
  v107 = *(v2 - 8);
  v108 = v2;
  v3 = *(v107 + 64);
  __chkstk_darwin(v2);
  v106 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v101 - 1);
  v6 = *(v5 + 64);
  __chkstk_darwin(v101);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Logger();
  v114 = *(v112 - 8);
  v9 = *(v114 + 64);
  v10 = __chkstk_darwin(v112);
  v104 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v95 - v13;
  __chkstk_darwin(v12);
  v98 = &v95 - v15;
  v16 = sub_100001EE8(&qword_1000352B0, &qword_100027AF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v95 - v21;
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = __chkstk_darwin(v23);
  v103 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v102 = &v95 - v29;
  v30 = __chkstk_darwin(v28);
  v115 = &v95 - v31;
  v32 = __chkstk_darwin(v30);
  v100 = &v95 - v33;
  __chkstk_darwin(v32);
  v35 = &v95 - v34;
  v120 = sub_100010710;
  v121 = 0;
  aBlock = _NSConcreteStackBlock;
  v117 = 1107296256;
  v118 = sub_100010844;
  v119 = &unk_100031E50;
  v36 = _Block_copy(&aBlock);
  v105 = a1;
  [a1 setExpirationHandler:v36];
  v37 = v36;
  v38 = v23;
  _Block_release(v37);
  URL.init(string:)();
  v39 = v24[6];
  result = v39(v22, 1, v38);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v109 = v24;
    v99 = v24[4];
    v99(v35, v22, v38);
    v41 = TTSVBIsInternalUIBuild();
    v110 = v35;
    v111 = v38;
    if (v41)
    {
      v42 = [objc_opt_self() processInfo];
      v43 = [v42 environment];

      v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v44 + 16))
      {
        v45 = sub_1000117EC(0xD000000000000027, 0x800000010002B330);
        v38 = v111;
        if (v46)
        {
          v97 = v14;
          v47 = (*(v44 + 56) + 16 * v45);
          v48 = *v47;
          v49 = v47[1];

          v50 = v49;
          v51 = v48;

          URL.init(string:)();
          if (v39(v20, 1, v38) == 1)
          {

            sub_100005EBC(v20, &qword_1000352B0, &qword_100027AF0);
            v14 = v97;
          }

          else
          {
            v99(v100, v20, v38);
            v52 = v98;
            static TTSVBLog.daemon.getter();

            v53 = Logger.logObject.getter();
            v54 = static os_log_type_t.default.getter();

            v55 = os_log_type_enabled(v53, v54);
            v14 = v97;
            if (v55)
            {
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v96 = v53;
              v58 = v54;
              v59 = v57;
              aBlock = v57;
              *v56 = 136315138;
              v60 = sub_100004A24(v51, v50, &aBlock);

              *(v56 + 4) = v60;
              v61 = v96;
              _os_log_impl(&_mh_execute_header, v96, v58, "Override server config URL was found. Using: %s", v56, 0xCu);
              sub_100005D40(v59);

              v38 = v111;
            }

            else
            {
            }

            (*(v114 + 8))(v52, v112);
            v62 = v110;
            (v109[1])(v110, v38);
            v99(v62, v100, v38);
          }
        }

        else
        {
        }
      }

      else
      {

        v38 = v111;
      }
    }

    aBlock = 0xD000000000000016;
    v117 = 0x800000010002B2C0;
    v63 = v101;
    (*(v5 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v101);
    sub_1000108A0();
    URL.appending<A>(path:directoryHint:)();
    (*(v5 + 8))(v8, v63);
    static TTSVBLog.daemon.getter();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Taking ServerConfigChecker network transaction", v66, 2u);
    }

    v67 = v114 + 8;
    v68 = v14;
    v69 = v112;
    v101 = *(v114 + 8);
    (v101)(v68, v112);
    v70 = os_transaction_create();
    v71 = *(v113 + 16);
    *(v113 + 16) = v70;
    swift_unknownObjectRelease();
    v72 = v104;
    static TTSVBLog.daemon.getter();
    v73 = v109;
    v74 = v102;
    v100 = v109[2];
    (v100)(v102, v115, v38);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      aBlock = v78;
      *v77 = 136315138;
      v79 = URL.absoluteString.getter();
      v114 = v67;
      v81 = v80;
      v109 = v73[1];
      (v109)(v74, v111);
      v82 = sub_100004A24(v79, v81, &aBlock);

      *(v77 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v75, v76, "Fetching server configuration from %s", v77, 0xCu);
      sub_100005D40(v78);
      v38 = v111;

      (v101)(v72, v112);
    }

    else
    {

      v109 = v73[1];
      (v109)(v74, v38);
      (v101)(v72, v69);
    }

    v83 = v115;
    (v100)(v103, v115, v38);
    v84 = v106;
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v85 = [objc_opt_self() sharedSession];
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v87 = swift_allocObject();
    v88 = v38;
    v89 = v105;
    v90 = v113;
    *(v87 + 16) = v105;
    *(v87 + 24) = v90;
    v120 = sub_10001155C;
    v121 = v87;
    aBlock = _NSConcreteStackBlock;
    v117 = 1107296256;
    v118 = sub_1000116C4;
    v119 = &unk_100031EA0;
    v91 = _Block_copy(&aBlock);
    v92 = v89;

    v93 = [v85 dataTaskWithRequest:isa completionHandler:v91];
    _Block_release(v91);

    [v93 resume];
    (*(v107 + 8))(v84, v108);
    v94 = v109;
    (v109)(v83, v88);
    return v94(v110, v88);
  }

  return result;
}

uint64_t sub_100010710()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "updateServerConfiguration bg task expired", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100010844(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100010888(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000108A0()
{
  result = qword_1000352B8;
  if (!qword_1000352B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000352B8);
  }

  return result;
}

void sub_1000108F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v87 = a1;
  v11 = type metadata accessor for Logger();
  v88 = *(v11 - 8);
  v12 = *(v88 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v84 = &v79 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v79 - v19;
  __chkstk_darwin(v18);
  v22 = &v79 - v21;
  if (a3 && (objc_opt_self(), (v23 = swift_dynamicCastObjCClass()) != 0))
  {
    v24 = [v23 statusCode];
    if (v24 == 404)
    {
      v25 = v11;
      static TTSVBLog.daemon.getter();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "No ServerConfig XML file found on the server. Assuming no override config to be enforced", v28, 2u);
      }

      (*(v88 + 8))(v22, v25);
      goto LABEL_53;
    }
  }

  else
  {
    v24 = -1;
  }

  v86 = v11;
  if (a2 >> 60 == 15)
  {
    static TTSVBLog.daemon.getter();
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v83 = a5;
      v31 = a6;
      v32 = 7104878;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v94[0] = v34;
      *v33 = 134218242;
      *(v33 + 4) = v24;
      *(v33 + 12) = 2080;
      if (a4 && (*&v92 = a4, swift_errorRetain(), sub_100001EE8(&qword_100035390, &unk_100027F60), sub_10000F9B4(0, &qword_100035398, NSError_ptr), (swift_dynamicCast() & 1) != 0))
      {
        v35 = v90;
        v36 = [v90 debugDescription];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
      }

      else
      {
        v38 = 0xE300000000000000;
      }

      v65 = sub_100004A24(v32, v38, v94);

      *(v33 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v29, v30, "Could not fetch configuration from network. StatusCode=%ld Error=%s", v33, 0x16u);
      sub_100005D40(v34);

      (*(v88 + 8))(v15, v86);
      a6 = v31;
      a5 = v83;
      goto LABEL_53;
    }

    v52 = *(v88 + 8);
    v53 = v15;
    goto LABEL_52;
  }

  sub_100011954(v87, a2);
  v39 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v94[0] = 0;
  v41 = [v39 propertyListWithData:isa options:0 format:0 error:v94];

  v85 = a2;
  if (!v41)
  {
    v54 = v94[0];
    v55 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (!v55)
    {
      goto LABEL_33;
    }

LABEL_49:
    v67 = v84;
    static TTSVBLog.daemon.getter();
    swift_errorRetain();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v94[0] = v71;
      *v70 = 136315138;
      v72 = _convertErrorToNSError(_:)();
      v73 = [v72 debugDescription];

      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = a5;
      v77 = v76;

      v78 = sub_100004A24(v74, v77, v94);
      a5 = v75;

      *(v70 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v68, v69, "Could not fetch configuration from network. Parse error: %s", v70, 0xCu);
      sub_100005D40(v71);

      sub_100011940(v87, v85);

      v52 = *(v88 + 8);
      v53 = v84;
    }

    else
    {
      sub_100011940(v87, a2);

      v52 = *(v88 + 8);
      v53 = v67;
    }

LABEL_52:
    v52(v53, v86);
LABEL_53:
    sub_100011564(a5, a6);
    return;
  }

  v83 = a5;
  v42 = v94[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000F9B4(0, &unk_1000353B0, NSDictionary_ptr);
  if (!swift_dynamicCast())
  {
    type metadata accessor for TTSVBError();
    sub_1000119BC();
    v66 = swift_allocError();
    TTSVBError.init(_:_:_:)();
    swift_willThrow();
    a5 = v83;
    if (!v66)
    {
      goto LABEL_33;
    }

    goto LABEL_49;
  }

  v80 = a6;
  v82 = v92;
  v43 = [v92 allKeys];
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v81 = *(v44 + 16);
  if (!v81)
  {
LABEL_30:

    v51 = 0;
LABEL_48:
    a6 = v80;
    a5 = v83;
    if (v51)
    {
      goto LABEL_49;
    }

LABEL_33:
    static TTSVBLog.daemon.getter();
    v56 = v82;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      *(v59 + 4) = v56;
      *v60 = v56;
      v61 = v56;
      _os_log_impl(&_mh_execute_header, v57, v58, "Did fetch new server config (saving as new ServerConfiguration): %@", v59, 0xCu);
      sub_100005EBC(v60, &qword_1000350B0, &qword_100027C40);
      a2 = v85;
    }

    (*(v88 + 8))(v20, v86);
    sub_10000F9B4(0, &unk_1000353A0, NSUserDefaults_ptr);
    v62 = static NSUserDefaults.voicebankingShared.getter();
    v63 = v56;
    v64 = String._bridgeToObjectiveC()();
    [v62 setObject:v63 forKey:v64];
    sub_100011940(v87, a2);

    goto LABEL_53;
  }

  v45 = 0;
  v46 = v44 + 32;
  while (v45 < *(v44 + 16))
  {
    sub_100005D8C(v46, v94);
    sub_100005D8C(v94, &v92);
    sub_10000F9B4(0, &unk_1000353C0, NSString_ptr);
    if (!swift_dynamicCast())
    {

      type metadata accessor for TTSVBError();
      sub_1000119BC();
      v51 = swift_allocError();
      goto LABEL_44;
    }

    sub_100011A14(v94, v94[3]);
    v47 = [v82 __swift_objectForKeyedSubscript:_bridgeAnythingToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v47)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v90 = 0u;
      v91 = 0u;
    }

    v92 = v90;
    v93 = v91;
    if (!*(&v91 + 1))
    {

      sub_100005EBC(&v92, &qword_100035278, &qword_100027F70);
      goto LABEL_43;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_43:
      type metadata accessor for TTSVBError();
      sub_1000119BC();
      v51 = swift_allocError();
LABEL_44:
      TTSVBError.init(_:_:_:)();
      swift_willThrow();
LABEL_47:

      sub_100005D40(v94);
      goto LABEL_48;
    }

    v48 = v89;
    *&v90 = 0x65776F6C6C417349;
    *(&v90 + 1) = 0xE900000000000064;
    v49 = [v89 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v49)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v90 = 0u;
      v91 = 0u;
    }

    v92 = v90;
    v93 = v91;
    a2 = v85;
    if (!*(&v91 + 1))
    {
      sub_100005EBC(&v92, &qword_100035278, &qword_100027F70);
LABEL_46:

      type metadata accessor for TTSVBError();
      sub_1000119BC();
      v51 = swift_allocError();
      TTSVBError.init(_:_:_:)();
      swift_willThrow();

      goto LABEL_47;
    }

    sub_10000F9B4(0, &qword_100035290, NSNumber_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_46;
    }

    ++v45;
    v50 = v89;

    a2 = v85;
    sub_100005D40(v94);
    v46 += 32;
    if (v81 == v45)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
}

uint64_t sub_10001151C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011564(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Giving up ServerConfigChecker network transaction & marking bg task complete", v11, 2u);
  }

  (*(v5 + 8))(v8, v4);
  [a1 setTaskCompleted];
  v12 = *(a2 + 16);
  *(a2 + 16) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000116C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_100011940(v6, v11);
}

uint64_t sub_10001178C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_1000117C4()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

unint64_t sub_1000117EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100011888(a1, a2, v6);
}

unint64_t sub_100011888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100011940(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F3F4(a1, a2);
  }

  return a1;
}

uint64_t sub_100011954(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100011968(a1, a2);
  }

  return a1;
}

uint64_t sub_100011968(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1000119BC()
{
  result = qword_100035500;
  if (!qword_100035500)
  {
    type metadata accessor for TTSVBError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035500);
  }

  return result;
}

void *sub_100011A14(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id VoiceBankingDaemon.init()()
{
  ObjectType = swift_getObjectType();
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v13 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v13);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcServer] = 0;
  *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcStore] = 0;
  *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___liveSpeechSyncController] = 0;
  *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager] = 0;
  *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___serverConfigChecker] = 0;
  *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_startupTransaction] = 0;
  v12 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue;
  v9 = sub_10000F9B4(0, &qword_100035408, OS_dispatch_queue_ptr);
  v11[0] = "elled";
  v11[1] = v9;
  static DispatchQoS.userInteractive.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_10001EA80(&qword_100035410, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100001EE8(&qword_100035418, &qword_100027F80);
  sub_100020814(&qword_100035420, &qword_100035418, &qword_100027F80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v13);
  *&v0[v12] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager] = 0;
  *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_datastoreEventSubscription] = 0;
  *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___accessManager] = 0;
  *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_notificationObserverTokens] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___assetsService] = 0;
  *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___vdbXpc] = 0;
  v15.receiver = v0;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t variable initialization expression of VoiceBankingDaemon.queue()
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
  v9[1] = sub_10000F9B4(0, &qword_100035408, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v11 = &_swiftEmptyArrayStorage;
  sub_10001EA80(&qword_100035410, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100001EE8(&qword_100035418, &qword_100027F80);
  sub_100020814(&qword_100035420, &qword_100035418, &qword_100027F80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

char *sub_100012044()
{
  v1 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcServer;
  v2 = *(v0 + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcServer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcServer);
  }

  else
  {
    v4 = v0;
    type metadata accessor for VoiceBankingXPCServer();
    v5 = VoiceBankingXPCServer.__allocating_init()();
    v6 = &v5[OBJC_IVAR____TtC13voicebankingd21VoiceBankingXPCServer_delegate];
    swift_beginAccess();
    *(v6 + 1) = &protocol witness table for VoiceBankingDaemon;
    swift_unknownObjectWeakAssign();
    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1000120FC()
{
  v1 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcStore;
  if (*(v0 + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcStore))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___xpcStore);
  }

  else
  {
    type metadata accessor for VoiceBankingXPCStore();
    v3 = v0;
    v4 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
    v2 = sub_100001AB0(v4);
    v5 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_100012190(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = v3;
    a2(0);
    v9 = a3();
    v10 = *(v3 + v4);
    *(v8 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

uint64_t sub_100012208(uint64_t *a1, uint64_t *a2)
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

id sub_100012250(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(a2(0)) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

Swift::Void __swiftcall VoiceBankingDaemon.run()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v113 = *(v0 - 8);
  v114 = v0;
  v1 = *(v113 + 64);
  __chkstk_darwin(v0);
  v112 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v110 = *(v3 - 8);
  v111 = v3;
  v4 = *(v110 + 64);
  __chkstk_darwin(v3);
  v109 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for DispatchTimeInterval();
  v106 = *(v107 - 1);
  v6 = v106[8];
  __chkstk_darwin(v107);
  v105 = (&v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = type metadata accessor for DispatchTime();
  v108 = *(v116 - 8);
  v8 = *(v108 + 64);
  v9 = __chkstk_darwin(v116);
  v104 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v115 = &v98 - v11;
  v101 = type metadata accessor for Date();
  v12 = *(v101 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v101);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v98 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Logger();
  v120 = *(v118 - 8);
  v24 = *(v120 + 64);
  v25 = __chkstk_darwin(v118);
  v119 = (&v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __chkstk_darwin(v25);
  v29 = &v98 - v28;
  v30 = __chkstk_darwin(v27);
  v103 = &v98 - v31;
  v32 = __chkstk_darwin(v30);
  v102 = &v98 - v33;
  v34 = __chkstk_darwin(v32);
  v99 = &v98 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v98 - v37;
  __chkstk_darwin(v36);
  v40 = &v98 - v39;
  v41 = getuid();
  v42 = v41;
  if (v41 == 248 || !v41)
  {
    static TTSVBLog.daemon.getter();
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 67109120;
      *(v97 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v95, v96, "voicebankingd is not allowed to run as user: %u. Will exit(0) now.", v97, 8u);
    }

    (*(v120 + 8))(v40, v118);
    exit(0);
  }

  static TTSVBPath.requireGroupContainerURL()();
  v100 = v29;
  (*(v20 + 8))(v23, v19);
  static TTSVBLog.daemon.getter();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 67109120;
    *(v45 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v43, v44, "Starting up with uid=%u", v45, 8u);
  }

  v46 = v118;
  v119 = *(v120 + 8);
  v120 += 8;
  v119(v38, v118);
  v47 = v117;
  v48 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
  Date.init()();
  Date.addingTimeInterval(_:)();
  v49 = *(v12 + 8);
  v50 = v16;
  v51 = v101;
  v49(v50, v101);
  TTSVBVoiceBankingManager.discardLongTermLogs(olderThan:)();

  v52 = (v49)(v18, v51);
  v53 = *&v47[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager];
  __chkstk_darwin(v52);
  *(&v98 - 4) = v42;
  v55 = v54;
  TTSVBVoiceBankingManager.logLongTermMessage(_:)();

  v56 = TTSVBIsPersonalVoiceVersion2Enabled();
  v57 = v103;
  v58 = v102;
  if (v56)
  {
    v59 = v99;
    static TTSVBLog.daemon.getter();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Personal Voice v2 is enabled", v62, 2u);
    }

    v119(v59, v46);
  }

  static TTSVBLog.daemon.getter();
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 67109120;
    *(v65 + 4) = TTSVBDeviceSupportsV2Voices()();
    _os_log_impl(&_mh_execute_header, v63, v64, "Device supports v2 Personal Voices: %{BOOL}d", v65, 8u);
  }

  v119(v58, v46);
  static TTSVBLog.daemon.getter();
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&_mh_execute_header, v66, v67, "Taking boostrap transaction", v68, 2u);
  }

  v119(v57, v46);
  v69 = os_transaction_create();
  v70 = v117;
  v71 = *&v117[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_startupTransaction];
  *&v117[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_startupTransaction] = v69;
  swift_unknownObjectRelease();
  v103 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue;
  v72 = *(v70 + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue);
  v73 = v104;
  static DispatchTime.now()();
  v74 = v105;
  *v105 = 5;
  v75 = v106;
  v76 = v107;
  (v106[13])(v74, enum case for DispatchTimeInterval.seconds(_:), v107);
  + infix(_:_:)();
  (v75[1])(v74, v76);
  v108 = *(v108 + 8);
  (v108)(v73, v116);
  v77 = swift_allocObject();
  *(v77 + 16) = v70;
  v126 = sub_10001EA60;
  v127 = v77;
  aBlock = _NSConcreteStackBlock;
  v123 = 1107296256;
  v107 = &v124;
  v124 = sub_1000218B0;
  v125 = &unk_100031FB8;
  v78 = _Block_copy(&aBlock);
  v106 = v70;
  v79 = v109;
  static DispatchQoS.unspecified.getter();
  v121 = &_swiftEmptyArrayStorage;
  v104 = sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags);
  v102 = sub_100001EE8(&qword_100035460, &qword_100027F88);
  v105 = sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88);
  v80 = v112;
  v81 = v114;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v82 = v115;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v78);

  v113 = *(v113 + 8);
  (v113)(v80, v81);
  v83 = v111;
  v110 = *(v110 + 8);
  (v110)(v79, v111);
  (v108)(v82, v116);

  v84 = *&v103[v70];
  v85 = swift_allocObject();
  v86 = v106;
  *(v85 + 16) = v106;
  v126 = sub_10001EAC8;
  v127 = v85;
  aBlock = _NSConcreteStackBlock;
  v123 = 1107296256;
  v124 = sub_1000218B0;
  v125 = &unk_100032008;
  v87 = _Block_copy(&aBlock);
  v88 = v86;
  v89 = v84;
  static DispatchQoS.unspecified.getter();
  v121 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v87);

  (v113)(v80, v81);
  (v110)(v79, v83);

  v90 = v100;
  static TTSVBLog.daemon.getter();
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&_mh_execute_header, v91, v92, "Will enter run loop", v93, 2u);
  }

  v119(v90, v118);
  v94 = [objc_opt_self() currentRunLoop];
  [v94 run];
}

uint64_t sub_100013174(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Giving up boostrap transaction", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(a1 + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_startupTransaction);
  *(a1 + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_startupTransaction) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000132C8()
{
  v2 = v0;
  v3 = sub_100001EE8(&qword_100035510, &qword_1000280A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v169 = &v161 - v5;
  v6 = sub_100001EE8(&qword_100035518, &qword_1000280B0);
  v171 = *(v6 - 8);
  v172 = v6;
  v7 = *(v171 + 64);
  __chkstk_darwin(v6);
  v170 = &v161 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v168 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v173 = &v161 - v15;
  v16 = __chkstk_darwin(v14);
  v166 = &v161 - v17;
  v18 = __chkstk_darwin(v16);
  v176 = &v161 - v19;
  v20 = __chkstk_darwin(v18);
  v164 = &v161 - v21;
  v22 = __chkstk_darwin(v20);
  v165 = (&v161 - v23);
  v24 = __chkstk_darwin(v22);
  v26 = &v161 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v161 - v28;
  __chkstk_darwin(v27);
  v31 = &v161 - v30;
  v32 = type metadata accessor for DispatchPredicate();
  v33 = *(v32 - 1);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = (&v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v167 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue;
  v37 = *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  *v36 = v37;
  (*(v33 + 104))(v36, enum case for DispatchPredicate.onQueue(_:), v32);
  v38 = v37;
  v39 = _dispatchPreconditionTest(_:)();
  (*(v33 + 8))(v36, v32);
  if ((v39 & 1) == 0)
  {
    __break(1u);
LABEL_59:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_51;
  }

  static TTSVBLog.daemon.getter();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Beginning daemon boostrap process", v42, 2u);
  }

  v43 = *(v10 + 8);
  v43(v31, v9);
  static TTSVBLog.daemon.getter();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  v46 = os_log_type_enabled(v44, v45);
  v174 = v10 + 8;
  v175 = v43;
  if (v46)
  {
    v163 = v9;
    v162 = v2;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock = v48;
    *v47 = 136315138;
    v49 = [objc_opt_self() mainBundle];
    v50 = [v49 bundleIdentifier];

    if (v50)
    {
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
    }

    else
    {
      v53 = 0xE700000000000000;
      v51 = 0x3E7465736E753CLL;
    }

    v56 = sub_100004A24(v51, v53, &aBlock);

    *(v47 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v44, v45, "Main Bundle ID: %s", v47, 0xCu);
    sub_100005D40(v48);

    v9 = v163;
    v55 = v175;
    v175(v29, v163);
    v2 = v162;
    v54 = v173;
    if (!TTSVBIsInternalUIBuild())
    {
      goto LABEL_36;
    }
  }

  else
  {

    v43(v29, v9);
    v54 = v173;
    v55 = v43;
    if (!TTSVBIsInternalUIBuild())
    {
      goto LABEL_36;
    }
  }

  v57 = SecTaskCreateFromSelf(0);
  if (v57 && (v58 = v57, v59 = String._bridgeToObjectiveC()(), v60 = SecTaskCopyValueForEntitlement(v58, v59, 0), v58, v59, v60))
  {
    v183 = v60;
    v61 = swift_dynamicCast();
    if (v61)
    {
      v62 = aBlock;
    }

    else
    {
      v62 = 0;
    }

    if (v61)
    {
      v63 = v178;
    }

    else
    {
      v63 = 0;
    }
  }

  else
  {
    v62 = 0;
    v63 = 0;
  }

  if (v63)
  {
    v64 = v63;
  }

  else
  {
    v64 = 0xE700000000000000;
  }

  static TTSVBLog.daemon.getter();

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v65, v66))
  {
    if (!v63)
    {
      v62 = 0x6E776F6E6B6E55;
    }

    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    aBlock = v68;
    *v67 = 136315138;
    v69 = sub_100004A24(v62, v64, &aBlock);

    *(v67 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v65, v66, "CloudKit environment: %s", v67, 0xCu);
    sub_100005D40(v68);
  }

  else
  {
  }

  v55 = v175;
  v175(v26, v9);
  sub_10000F9B4(0, &unk_1000353A0, NSUserDefaults_ptr);
  v70 = static NSUserDefaults.voicebankingShared.getter();
  v71 = v165;
  static TTSVBLog.daemon.getter();
  v72 = v70;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.info.getter();

  v75 = os_log_type_enabled(v73, v74);
  v162 = v72;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    aBlock = v77;
    *v76 = 136315138;
    v78 = [v72 dictionaryRepresentation];
    v163 = v9;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v79 = v173;
    v80 = Dictionary.description.getter();
    v82 = v81;

    v83 = sub_100004A24(v80, v82, &aBlock);
    v9 = v163;

    *(v76 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v73, v74, "Check shared defaults can be read: %s", v76, 0xCu);
    sub_100005D40(v77);

    v55 = v175;

    v84 = v165;
    v54 = v79;
  }

  else
  {

    v84 = v71;
  }

  v55(v84, v9);
  v85 = v164;
  v86 = static NSUserDefaults.voicebankingSandboxedShared.getter();
  if (v86)
  {
    v87 = v86;
    static TTSVBLog.daemon.getter();
    v88 = v87;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      aBlock = v165;
      *v91 = 136315138;
      v92 = [v88 dictionaryRepresentation];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v93 = Dictionary.description.getter();
      v95 = v94;
      v54 = v173;

      v96 = sub_100004A24(v93, v95, &aBlock);

      *(v91 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v89, v90, "Check shared sandboxed defaults can be read: %s", v91, 0xCu);
      sub_100005D40(v165);

      v55 = v175;

      v55(v164, v9);
    }

    else
    {

      v55(v85, v9);
    }
  }

  else
  {
  }

LABEL_36:
  static TTSVBLog.daemon.getter();
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 67109120;
    *(v99 + 4) = TTSVBHasDeviceBeenUnlockedSinceBoot();
    _os_log_impl(&_mh_execute_header, v97, v98, "Has been unlocked since first boot: %{BOOL}d", v99, 8u);
  }

  v55(v176, v9);
  v181 = sub_1000149E4;
  v182 = 0;
  aBlock = _NSConcreteStackBlock;
  v1 = 1107296256;
  v178 = 1107296256;
  v179 = sub_100010844;
  v180 = &unk_1000322C0;
  v100 = _Block_copy(&aBlock);
  TTSVBRegisterForFirstUnlockSinceBoot();
  _Block_release(v100);
  v101 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___accessManager, &type metadata accessor for TTSVBAccessManager);
  dispatch thunk of TTSVBAccessManager.tccCloudKitAccess.getter();

  v102 = TTSVBTCCCloudKitAccess.rawValue.getter();
  v104 = v103;
  if (v102 == TTSVBTCCCloudKitAccess.rawValue.getter() && v104 == v105)
  {
  }

  else
  {
    v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v106 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v107 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___accessManager;
  v108 = *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___accessManager];
  v109 = dispatch thunk of TTSVBAccessManager.isCloudSyncAvailable.getter();

  if (v109)
  {
    static TTSVBLog.daemon.getter();
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&_mh_execute_header, v110, v111, "User has granted tccCloudKitAccess and has iCloudSync available. Attempting to apply for cloudkit syncing.", v112, 2u);
    }

    v55(v166, v9);
    v113 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
    TTSVBVoiceBankingManager.logLongTermMessage(_:)();

    v114 = *&v2[v107];
    dispatch thunk of TTSVBAccessManager.applyCloudKitAccessForCurrentConditions()();
  }

LABEL_46:
  v115 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___accessManager;
  v116 = *&v2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___accessManager];
  dispatch thunk of TTSVBAccessManager.startMonitoringForAccountChanges(_:)();

  static TTSVBLog.daemon.getter();
  v32 = v2;
  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    aBlock = v120;
    *v119 = 136315138;
    v121 = *&v2[v115];
    dispatch thunk of TTSVBAccessManager.tccCloudKitAccess.getter();

    v122 = TTSVBTCCCloudKitAccess.rawValue.getter();
    v124 = sub_100004A24(v122, v123, &aBlock);

    *(v119 + 4) = v124;
    _os_log_impl(&_mh_execute_header, v117, v118, "iCloud TCC access: %s", v119, 0xCu);
    sub_100005D40(v120);

    v55 = v175;
  }

  v55(v54, v9);
  v125 = v168;
  static TTSVBLog.daemon.getter();
  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    *v128 = 0;
    _os_log_impl(&_mh_execute_header, v126, v127, "Will load data stores", v128, 2u);
  }

  v55(v125, v9);
  v129 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
  v130 = TTSVBVoiceBankingManager.dataStoreEventPublisher.getter();

  aBlock = v130;
  v183 = *&v2[v167];
  v131 = v183;
  v132 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v133 = v169;
  (*(*(v132 - 8) + 56))(v169, 1, 1, v132);
  v134 = v131;
  sub_100001EE8(&qword_100035520, &qword_1000280B8);
  sub_10000F9B4(0, &qword_100035408, OS_dispatch_queue_ptr);
  sub_100020814(&qword_100035528, &qword_100035520, &qword_1000280B8);
  sub_10002076C();
  v135 = v170;
  Publisher.receive<A>(on:options:)();
  sub_100005EBC(v133, &qword_100035510, &qword_1000280A8);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020814(&unk_100035538, &qword_100035518, &qword_1000280B0);
  v136 = v172;
  v137 = Publisher<>.sink(receiveValue:)();

  (*(v171 + 8))(v135, v136);
  v138 = *&v32[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_datastoreEventSubscription];
  *&v32[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_datastoreEventSubscription] = v137;

  v26 = [objc_opt_self() defaultCenter];
  v139 = static NSNotificationName.ttsvbDidImportVoiceModel.getter();
  v140 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v181 = sub_10002085C;
  v182 = v140;
  aBlock = _NSConcreteStackBlock;
  v178 = 1107296256;
  v179 = sub_1000158A0;
  v180 = &unk_100032310;
  v141 = _Block_copy(&aBlock);

  v39 = &VoiceBankingXPCStore;
  v142 = [v26 addObserverForName:v139 object:0 queue:0 usingBlock:v141];
  _Block_release(v141);

  v2 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_notificationObserverTokens;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_59;
  }

LABEL_51:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v143 = static NSNotificationName.ttsvbDidDeleteVoice.getter();
  v144 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v181 = sub_10002089C;
  v182 = v144;
  aBlock = _NSConcreteStackBlock;
  v178 = v1;
  v179 = sub_1000158A0;
  v180 = &unk_100032338;
  v145 = _Block_copy(&aBlock);

  v146 = [v26 *(v39 + 2496)];
  _Block_release(v145);

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v158 = *((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v147 = static NSNotificationName.ttsvbDidPotentiallyDownloadVoiceModel.getter();
  v148 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v181 = sub_1000208DC;
  v182 = v148;
  aBlock = _NSConcreteStackBlock;
  v178 = v1;
  v179 = sub_1000158A0;
  v180 = &unk_100032360;
  v149 = _Block_copy(&aBlock);

  v150 = [v26 *(v39 + 2496)];
  _Block_release(v149);

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v159 = *((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v151 = static NSNotificationName.internal_ttsvbDidRequestMockUserNotification.getter();
  v152 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v181 = sub_10002091C;
  v182 = v152;
  aBlock = _NSConcreteStackBlock;
  v178 = v1;
  v179 = sub_1000158A0;
  v180 = &unk_100032388;
  v153 = _Block_copy(&aBlock);

  v154 = [v26 *(v39 + 2496)];
  _Block_release(v153);

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v160 = *((*&v2[v32] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v155 = *&v32[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v156 = v155;

  TTSVBVoiceBankingManager.loadStores(_:)();
}

uint64_t sub_1000149E4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received notification that iphone was unlocked since first boot", v7, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100014B1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1701736292;
  if (a1 != 5)
  {
    v6 = 0x646573756170;
    v5 = 0xE600000000000000;
  }

  v7 = 0x656C6C65636E6163;
  v8 = 0xE600000000000000;
  if (a1 == 3)
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v7 = 0x64656C696166;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x657474696D627573;
  v10 = 0xE700000000000000;
  if (a1 == 1)
  {
    v10 = 0xE900000000000064;
  }

  else
  {
    v9 = 0x676E696E6E7572;
  }

  if (!a1)
  {
    v9 = 0x656E696665646E75;
    v10 = 0xE900000000000064;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (v11 != 0x657474696D627573)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x676E696E6E7572)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1701736292)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x646573756170)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      if (v11 != 0x656C6C65636E6163)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v2 = 0xE600000000000000;
    v3 = 0x64656C696166;
  }

  if (v11 != v3)
  {
LABEL_38:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_39;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_100014D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBDataStoreEvent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
    v24[1] = a2;
    v17 = v13;
    v18 = v10;
    v19 = v16;

    __chkstk_darwin(v20);
    v24[-2] = a1;
    TTSVBVoiceBankingManager.logLongTermMessage(_:)();

    v10 = v18;
    v13 = v17;
  }

  (*(v5 + 16))(v8, a1, v4);
  if ((*(v5 + 88))(v8, v4) != enum case for TTSVBDataStoreEvent.cloudKitSync(_:))
  {
    return (*(v5 + 8))(v8, v4);
  }

  (*(v5 + 96))(v8, v4);
  (*(v10 + 32))(v13, v8, v9);
  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    sub_100015004();
  }

  return (*(v10 + 8))(v13, v9);
}

void sub_100015004()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v17 = TTSVBDataStoreEvent.CloudKitSyncEvent.event.getter();
    v18 = [v17 type];

    if (v18 == 1 && (TTSVBDataStoreEvent.CloudKitSyncEvent.isFinished.getter() & 1) != 0 && (v19 = TTSVBDataStoreEvent.CloudKitSyncEvent.event.getter(), v20 = [v19 succeeded], v19, v20))
    {
      v21 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
      TTSVBVoiceBankingManager.logLongTermMessage(_:)();

      static TTSVBLog.daemon.getter();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "CloudKit import did finish. Will schedule sync of file-backed futures", v24, 2u);
      }

      (*(v3 + 8))(v9, v2);
      v25 = *&v1[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager];
      *(swift_allocObject() + 16) = v1;
      v26 = v25;
      v27 = v1;
      TTSVBVoiceBankingManager.synchronizeFileBackedFuturesForAllModels(completion:)();
    }

    else
    {
      v28 = TTSVBDataStoreEvent.CloudKitSyncEvent.event.getter();
      v29 = [v28 type];

      if (!v29 && (TTSVBDataStoreEvent.CloudKitSyncEvent.isFinished.getter() & 1) != 0)
      {
        v30 = TTSVBDataStoreEvent.CloudKitSyncEvent.event.getter();
        v31 = [v30 succeeded];

        if ((v31 & 1) == 0)
        {
          v32 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
          TTSVBVoiceBankingManager.logLongTermMessage(_:)();

          static TTSVBLog.daemon.getter();
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&_mh_execute_header, v33, v34, "Handling failed sync wetup event. Will restore Personal Voices still found locally on device", v35, 2u);
          }

          (*(v3 + 8))(v7, v2);
          v36 = *&v1[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager];
          TTSVBVoiceBankingManager.repairDatastoreVoicesFromFilesystem(completion:)();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100015498(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v5 = sub_100001EE8(&qword_100035098, &qword_100027BC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v3[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v33 = v8;
    static TTSVBLog.daemon.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35 = v25;
      *v24 = 136315138;
      v26 = v34;
      *(v24 + 4) = sub_100004A24(v34, a2, &v35);
      _os_log_impl(&_mh_execute_header, v22, v23, "Will rebuild the voice cache now: %s", v24, 0xCu);
      sub_100005D40(v25);

      (*(v10 + 8))(v13, v9);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
      v26 = v34;
    }

    v27 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
    __chkstk_darwin(v27);
    *(&v32 - 2) = v26;
    *(&v32 - 1) = a2;
    TTSVBVoiceBankingManager.logLongTermMessage(_:)();

    v28 = type metadata accessor for TaskPriority();
    v29 = v33;
    (*(*(v28 - 8) + 56))(v33, 1, 1, v28);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v3;
    v31 = v3;
    sub_10000D160(0, 0, v29, &unk_100028098, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000158A0(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100015994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = v7;
    v17 = *(result + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue);
    v18 = result;
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    aBlock[4] = a3;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000218B0;
    aBlock[3] = a4;
    v20 = _Block_copy(aBlock);
    v21 = v17;
    v24 = v18;
    static DispatchQoS.unspecified.getter();
    v26 = &_swiftEmptyArrayStorage;
    sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags);
    v23 = v11;
    sub_100001EE8(&qword_100035460, &qword_100027F88);
    sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v25 + 8))(v10, v6);
    (*(v12 + 8))(v15, v23);
  }

  return result;
}

uint64_t sub_100015C9C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v37 - v7;
  v9 = type metadata accessor for TTSVBError();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v16 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v37 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_100005E54(a1, v19, &unk_1000351F0, &unk_1000280C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v40;
      (*(v40 + 32))(v15, v19, v9);
      v25 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
      __chkstk_darwin(v25);
      *(&v37 - 2) = v15;
      TTSVBVoiceBankingManager.logLongTermError(_:)();

      static TTSVBLog.daemon.getter();
      (*(v24 + 16))(v13, v15, v9);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v41 = v29;
        *v28 = 136315138;
        v38 = TTSVBError.description.getter();
        v31 = v30;
        (*(v40 + 8))(v13, v9);
        v32 = sub_100004A24(v38, v31, &v41);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "Error loading data stores: %s", v28, 0xCu);
        sub_100005D40(v29);
      }

      else
      {

        (*(v40 + 8))(v13, v9);
      }

      v33 = *(v39 + 8);
      v33(v8, v2);
      static TTSVBLog.daemon.getter();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "voicebankingd will now exit with error 1", v36, 2u);
      }

      v33(v6, v2);
      exit(1);
    }

    v22 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
    *(swift_allocObject() + 16) = v21;
    v23 = v21;
    TTSVBVoiceBankingManager.performVoiceDatastoreMigrationV1IfNeeded(completion:)();

    return sub_100005EBC(v19, &unk_1000351F0, &unk_1000280C0);
  }

  return result;
}

uint64_t sub_1000161D4(char *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_1000209EC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000218B0;
  aBlock[3] = &unk_100032400;
  v12 = _Block_copy(aBlock);
  v13 = v10;
  v14 = a1;
  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001EE8(&qword_100035460, &qword_100027F88);
  sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v18 + 8))(v5, v2);
  (*(v6 + 8))(v9, v17);
}

void sub_1000164B4()
{
  v1 = type metadata accessor for TTSVBPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v93 = v6;
  v94 = v7;
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v87 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v92 = &v87 - v12;
  v13 = __chkstk_darwin(v11);
  v91 = &v87 - v14;
  v15 = __chkstk_darwin(v13);
  v90 = &v87 - v16;
  v17 = __chkstk_darwin(v15);
  v89 = &v87 - v18;
  __chkstk_darwin(v17);
  v20 = &v87 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = (&v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue;
  v95 = v0;
  v27 = *(v0 + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue);
  *v25 = v27;
  (*(v22 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v21);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v25, v21);
  if (v27)
  {
    v88 = v26;
    static TTSVBLog.daemon.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Did load data stores.", v31, 2u);
    }

    v32 = v94 + 1;
    v33 = v94[1];
    v34 = v20;
    v35 = v93;
    v33(v34, v93);
    (*(v2 + 104))(v5, enum case for TTSVBPath.root(_:), v1);
    TTSVBPath.markAsExcludedFromBackup()();
    if (v36)
    {
      (*(v2 + 8))(v5, v1);
      v37 = v87;
      static TTSVBLog.daemon.getter();
      swift_errorRetain();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        aBlock = v94;
        *v40 = 136315138;
        v41 = _convertErrorToNSError(_:)();
        v42 = v35;
        v43 = v33;
        v44 = v32;
        v45 = [v41 debugDescription];

        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v32 = v44;
        v33 = v43;
        v35 = v42;
        v49 = sub_100004A24(v46, v48, &aBlock);

        *(v40 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v38, v39, "Could not mark root path as excluded from backups: %s", v40, 0xCu);
        sub_100005D40(v94);

        v33(v87, v42);
      }

      else
      {

        v33(v37, v35);
      }
    }

    else
    {
      (*(v2 + 8))(v5, v1);
    }

    v50 = v89;
    static TTSVBLog.daemon.getter();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v90;
    if (v53)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Will start monitoring for Live Speech preference changes", v55, 2u);
    }

    v33(v50, v35);
    v56 = sub_100012190(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___liveSpeechSyncController, type metadata accessor for LiveSpeechSyncController, VoiceBankingXPCServer.__allocating_init());
    sub_100021E7C();

    static TTSVBLog.daemon.getter();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Will check in for notifyd and BackgroundSystemTask events", v59, 2u);
    }

    v94 = v32;
    v90 = v33;
    v33(v54, v35);
    v60 = objc_opt_self();
    v61 = [v60 sharedScheduler];
    v62 = String._bridgeToObjectiveC()();
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v100 = sub_100020A10;
    v101 = v63;
    aBlock = _NSConcreteStackBlock;
    v97 = 1107296256;
    v98 = sub_100002FFC;
    v99 = &unk_100032428;
    v64 = _Block_copy(&aBlock);

    [v61 registerForTaskWithIdentifier:v62 usingQueue:0 launchHandler:v64];
    _Block_release(v64);

    v65 = [v60 sharedScheduler];
    v66 = String._bridgeToObjectiveC()();
    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v100 = sub_100020A18;
    v101 = v67;
    aBlock = _NSConcreteStackBlock;
    v97 = 1107296256;
    v98 = sub_100002FFC;
    v99 = &unk_100032450;
    v68 = _Block_copy(&aBlock);

    v69 = v95;
    [v65 registerForTaskWithIdentifier:v66 usingQueue:0 launchHandler:v68];
    _Block_release(v68);

    v70 = *(v69 + v88);
    v71 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v100 = sub_100020A20;
    v101 = v71;
    aBlock = _NSConcreteStackBlock;
    v97 = 1107296256;
    v98 = sub_10001B034;
    v99 = &unk_100032478;
    v72 = _Block_copy(&aBlock);
    v73 = v70;

    xpc_set_event_stream_handler("com.apple.notifyd.matching", v73, v72);
    _Block_release(v72);

    v74 = v91;
    static TTSVBLog.daemon.getter();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Will register for user notifications", v77, 2u);
    }

    v78 = v74;
    v79 = v93;
    v80 = v90;
    (v90)(v78, v93);
    v81 = sub_100012190(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager, type metadata accessor for VoiceBankingUserNotificationManager, VoiceBankingXPCServer.__allocating_init());
    sub_1000020E0();

    v82 = v92;
    static TTSVBLog.daemon.getter();
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "Will start XPC services", v85, 2u);
    }

    v80(v82, v79);
    sub_1000120FC();
    sub_100001AFC();

    v86 = sub_100012044();
    VoiceBankingXPCServer.start()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100016FB8(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = type metadata accessor for TTSVBError();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v40 = &v39 - v9;
  v10 = type metadata accessor for Logger();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  v17 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v39 - v19;
  sub_100005E54(a1, &v39 - v19, &unk_1000351F0, &unk_1000280C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v40;
    (*(v4 + 32))(v40, v20, v3);
    static TTSVBLog.daemon.getter();
    (*(v4 + 16))(v8, v21, v3);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v44 = v25;
      *v24 = 136315138;
      v26 = TTSVBError.description.getter();
      v28 = v27;
      v29 = *(v4 + 8);
      v29(v8);
      v30 = sub_100004A24(v26, v28, &v44);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error synchronizing file-backed futures: %s", v24, 0xCu);
      sub_100005D40(v25);

      (*(v41 + 8))(v14, v42);
      (v29)(v40, v3);
    }

    else
    {

      v34 = *(v4 + 8);
      v34(v8, v3);
      (*(v41 + 8))(v14, v42);
      v34(v40, v3);
    }
  }

  else
  {
    static TTSVBLog.daemon.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Successfully finished synchronizing file-backed futures", v33, 2u);
    }

    (*(v41 + 8))(v16, v42);
    sub_100005EBC(v20, &unk_1000351F0, &unk_1000280C0);
  }

  v35 = v43;
  v36 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
  *(swift_allocObject() + 16) = v35;
  v37 = v35;
  TTSVBVoiceBankingManager.synchronizeAudioFileBackedFuturesForAllVoices(completion:)();
}

void sub_100017488(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for TTSVBError();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v36 - v9;
  v10 = type metadata accessor for Logger();
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v36 - v19;
  sub_100005E54(a1, &v36 - v19, &unk_1000351F0, &unk_1000280C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v37;
    (*(v4 + 32))(v37, v20, v3);
    static TTSVBLog.daemon.getter();
    (*(v4 + 16))(v8, v21, v3);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = 136315138;
      v26 = TTSVBError.description.getter();
      v28 = v27;
      v29 = *(v4 + 8);
      v29(v8);
      v30 = sub_100004A24(v26, v28, &v41);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error synchronizing audio file-backed sample futures: %s", v24, 0xCu);
      sub_100005D40(v25);

      (*(v38 + 8))(v14, v39);
      (v29)(v37, v3);
    }

    else
    {

      v34 = *(v4 + 8);
      v34(v8, v3);
      (*(v38 + 8))(v14, v39);
      v34(v37, v3);
    }
  }

  else
  {
    static TTSVBLog.daemon.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Successfully finished synchronizing audio file-backed sample futures", v33, 2u);
    }

    (*(v38 + 8))(v16, v39);
    sub_100005EBC(v20, &unk_1000351F0, &unk_1000280C0);
  }

  v35 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
  TTSVBVoiceBankingManager.importCloudVoicesIntoLocalDatastore(completion:)();
}

uint64_t sub_10001792C(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v35 = &v35 - v8;
  v9 = type metadata accessor for Logger();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v16 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  sub_100005E54(a1, &v35 - v18, &unk_1000351F0, &unk_1000280C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v35;
    (*(v3 + 32))(v35, v19, v2);
    static TTSVBLog.daemon.getter();
    (*(v3 + 16))(v7, v20, v2);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v24;
      *v23 = 136315138;
      v25 = TTSVBError.description.getter();
      v27 = v26;
      v28 = *(v3 + 8);
      v28(v7);
      v29 = sub_100004A24(v25, v27, &v38);

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error importing iCloud data into local stores: %s", v23, 0xCu);
      sub_100005D40(v24);

      (*(v36 + 8))(v13, v37);
      return (v28)(v35, v2);
    }

    else
    {

      v34 = *(v3 + 8);
      v34(v7, v2);
      (*(v36 + 8))(v13, v37);
      return (v34)(v35, v2);
    }
  }

  else
  {
    static TTSVBLog.daemon.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Successfully finished importing iCloud data into local store", v33, 2u);
    }

    (*(v36 + 8))(v15, v37);
    return sub_100005EBC(v19, &unk_1000351F0, &unk_1000280C0);
  }
}

uint64_t sub_100017DA0(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v35 = &v34 - v8;
  v9 = type metadata accessor for Logger();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = sub_100001EE8(&unk_1000351F0, &unk_1000280C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  sub_100005E54(a1, &v34 - v18, &unk_1000351F0, &unk_1000280C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v35;
    (*(v3 + 32))(v35, v19, v2);
    static TTSVBLog.daemon.getter();
    v21 = *(v3 + 16);
    v21(v7, v20, v2);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v24 = 138412290;
      sub_10001EA80(&qword_100035500, &type metadata accessor for TTSVBError);
      swift_allocError();
      v21(v25, v7, v2);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = *(v3 + 8);
      v27(v7, v2);
      *(v24 + 4) = v26;
      v28 = v34;
      *v34 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Could not repair datastore. Error: %@", v24, 0xCu);
      sub_100005EBC(v28, &qword_1000350B0, &qword_100027C40);

      (*(v36 + 8))(v13, v37);
      return (v27)(v35, v2);
    }

    else
    {

      v33 = *(v3 + 8);
      v33(v7, v2);
      (*(v36 + 8))(v13, v37);
      return (v33)(v35, v2);
    }
  }

  else
  {
    static TTSVBLog.daemon.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Succesfully completed datastore repair.", v32, 2u);
    }

    (*(v36 + 8))(v15, v37);
    return sub_100005EBC(v19, &unk_1000351F0, &unk_1000280C0);
  }
}

uint64_t sub_10001824C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v24 = v7;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v23 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    v14 = [v7 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_100004A24(v15, v17, &v25);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Wake event received: [BGSystemTask] ServerConfigCheck state=%s", v12, 0xCu);
    sub_100005D40(v13);

    (*(v3 + 8))(v6, v23);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v21 = sub_10001D7C4(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___serverConfigChecker, type metadata accessor for VoiceBankingServerConfigChecker, sub_1000117C4);

    (*(*v21 + 112))(v24);
  }

  return result;
}

id sub_1000184E0(void *a1, uint64_t a2)
{
  v4 = sub_100001EE8(&qword_100035098, &qword_100027BC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  static TTSVBLog.daemon.getter();
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v45 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v43 = v13;
    v21 = v20;
    v22 = swift_slowAlloc();
    v44 = a2;
    v42 = v22;
    v46 = v22;
    *v21 = 136315138;
    v23 = [v16 description];
    v24 = v9;
    v25 = v8;
    v26 = v7;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = v27;
    v7 = v26;
    v8 = v25;
    v9 = v24;
    v31 = sub_100004A24(v30, v29, &v46);

    *(v21 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v17, v18, "Wake event received: [BGSystemTask] V1ToV2UpgradeCheck state=%s", v21, 0xCu);
    sub_100005D40(v42);
    a2 = v44;

    v13 = v43;
  }

  v32 = *(v9 + 8);
  v32(v15, v8);
  if (TTSVBIsPersonalVoiceVersion2Enabled() && TTSVBDeviceSupportsV2Voices()())
  {
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v35 = v45;
    v34[4] = a2;
    v34[5] = v35;
    v36 = v35;

    sub_1000196F8(0, 0, v7, &unk_1000280E8, v34);
  }

  else
  {
    static TTSVBLog.daemon.getter();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "[BGSystemTask] V1ToV2UpgradeCheck: Device does not support PV2 model upgrade. Setting task complete.", v40, 2u);
    }

    v32(v13, v8);
    return [v45 setTaskCompleted];
  }
}

uint64_t sub_1000188AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_1000188D0, 0, 0);
}

uint64_t sub_1000188D0()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_1000189CC;
    v4 = *(v0 + 56);

    return sub_100018B08(v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1000189CC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100018AE0, 0, 0);
}

uint64_t sub_100018B08(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for Logger();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100018BE0, 0, 0);
}

uint64_t sub_100018BE0()
{
  v34 = v0;
  v1 = v0[14];
  v2 = v0[8];
  static TTSVBLog.common.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  v9 = v0[10];
  v8 = v0[11];
  if (v6)
  {
    v10 = v0[8];
    v32 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315138;
    v13 = [v10 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100004A24(v14, v16, &v33);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "performV1ToV2VoiceMigrationTask: Will perform V1->V2 voice migration bg task. ID=%s", v11, 0xCu);
    sub_100005D40(v12);

    v18 = *(v8 + 8);
    v18(v32, v9);
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v7, v9);
  }

  v0[15] = v18;
  v20 = v0[8];
  v19 = v0[9];
  v21 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
  *(swift_task_alloc() + 16) = v20;
  TTSVBVoiceBankingManager.logLongTermMessage(_:)();

  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v19;
  v0[6] = sub_100021378;
  v0[7] = v22;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100010844;
  v0[5] = &unk_100032810;
  v23 = _Block_copy(v0 + 2);
  v24 = v0[7];
  v25 = v20;
  v26 = v19;

  [v25 setExpirationHandler:v23];
  _Block_release(v23);
  v27 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager;
  v0[16] = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager;
  v28 = *&v26[v27];
  v0[17] = v28;
  v29 = async function pointer to TTSVBVoiceBankingManager.startV1ToV2VoiceMigrationIfNeeded()[1];
  v28;
  v30 = swift_task_alloc();
  v0[18] = v30;
  *v30 = v0;
  v30[1] = sub_100018F10;

  return TTSVBVoiceBankingManager.startV1ToV2VoiceMigrationIfNeeded()();
}

uint64_t sub_100018F10()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v6 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_100019278;
  }

  else
  {

    v4 = sub_10001902C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001902C()
{
  v30 = v0;
  v1 = v0[13];
  v2 = v0[8];
  static TTSVBLog.common.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  v8 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  if (v6)
  {
    v11 = v0[8];
    v28 = v0[15];
    v12 = swift_slowAlloc();
    v27 = v8;
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    v14 = [v11 identifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_100004A24(v15, v17, &v29);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "performV1ToV2VoiceMigrationTask: Marking bg task complete. ID=%s", v12, 0xCu);
    sub_100005D40(v13);

    v28(v27, v10);
  }

  else
  {

    v7(v8, v10);
  }

  v20 = v0[13];
  v19 = v0[14];
  v21 = v0[12];
  v22 = v0[8];
  v23 = *(v0[9] + v0[16]);
  *(swift_task_alloc() + 16) = v22;
  v24 = v23;
  TTSVBVoiceBankingManager.logLongTermMessage(_:)();

  [v22 setTaskCompleted];

  v25 = v0[1];

  return v25();
}

uint64_t sub_100019278()
{
  v60 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);

  static TTSVBLog.daemon.getter();
  v4 = v3;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 152);
    v55 = *(v0 + 96);
    v57 = *(v0 + 120);
    v53 = *(v0 + 88);
    v54 = *(v0 + 80);
    v8 = *(v0 + 64);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v59 = v11;
    *v9 = 136315394;
    v12 = [v8 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100004A24(v13, v15, &v59);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "performV1ToV2VoiceMigrationTask bg task failed. ID=%s. Error=%@", v9, 0x16u);
    sub_100005EBC(v10, &qword_1000350B0, &qword_100027C40);

    sub_100005D40(v11);

    v57(v55, v54);
  }

  else
  {
    v18 = *(v0 + 120);
    v20 = *(v0 + 88);
    v19 = *(v0 + 96);
    v21 = *(v0 + 80);

    v18(v19, v21);
  }

  v22 = *(v0 + 152);
  v23 = *(v0 + 64);
  v24 = *(*(v0 + 72) + *(v0 + 128));
  v25 = swift_task_alloc();
  *(v25 + 16) = v23;
  *(v25 + 24) = v22;
  v26 = v24;
  TTSVBVoiceBankingManager.logLongTermError(_:)();

  v27 = *(v0 + 104);
  v28 = *(v0 + 64);
  static TTSVBLog.common.getter();
  v29 = v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 120);
  v34 = *(v0 + 104);
  v36 = *(v0 + 80);
  v35 = *(v0 + 88);
  if (v32)
  {
    v37 = *(v0 + 64);
    v58 = *(v0 + 120);
    v38 = swift_slowAlloc();
    v56 = v34;
    v39 = swift_slowAlloc();
    v59 = v39;
    *v38 = 136315138;
    v40 = [v37 identifier];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_100004A24(v41, v43, &v59);

    *(v38 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v30, v31, "performV1ToV2VoiceMigrationTask: Marking bg task complete. ID=%s", v38, 0xCu);
    sub_100005D40(v39);

    v58(v56, v36);
  }

  else
  {

    v33(v34, v36);
  }

  v46 = *(v0 + 104);
  v45 = *(v0 + 112);
  v47 = *(v0 + 96);
  v48 = *(v0 + 64);
  v49 = *(*(v0 + 72) + *(v0 + 128));
  *(swift_task_alloc() + 16) = v48;
  v50 = v49;
  TTSVBVoiceBankingManager.logLongTermMessage(_:)();

  [v48 setTaskCompleted];

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1000196F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001EE8(&qword_100035098, &qword_100027BC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005E54(a3, v27 - v11, &qword_100035098, &qword_100027BC0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100005EBC(v12, &qword_100035098, &qword_100027BC0);
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

      sub_100001EE8(&qword_100035570, &qword_100028100);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_100005EBC(a3, &qword_100035098, &qword_100027BC0);

      return v24;
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

  sub_100005EBC(a3, &qword_100035098, &qword_100027BC0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100001EE8(&qword_100035570, &qword_100028100);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100019A0C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTime();
  v87 = *(v4 - 8);
  v5 = *(v87 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v88 = &v84 - v9;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v92 = v10;
  v93 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v91 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v94 = *(v19 - 8);
  v20 = *(v94 + 64);
  v21 = __chkstk_darwin(v19);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v84 - v24;
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (!result)
  {
    return result;
  }

  v85 = v23;
  v86 = v4;
  v89 = a2;
  v90 = v18;
  v27 = String.init(cString:)();
  v29 = v28;
  static TTSVBLog.daemon.getter();

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v84 = v8;
    v33 = v15;
    v34 = v32;
    v35 = v19;
    v36 = v14;
    v37 = swift_slowAlloc();
    aBlock = v37;
    *v34 = 136315138;
    *(v34 + 4) = sub_100004A24(v27, v29, &aBlock);
    _os_log_impl(&_mh_execute_header, v30, v31, "Wake event received: [notifyd] %s", v34, 0xCu);
    sub_100005D40(v37);
    v14 = v36;
    v19 = v35;

    v15 = v33;
    v8 = v84;

    v38 = *(v94 + 8);
    v38(v25, v35);
  }

  else
  {

    v38 = *(v94 + 8);
    v38(v25, v19);
  }

  if (v27 == 0xD000000000000013 && 0x800000010002B950 == v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v39 = v89;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    v40 = v90;
    if (result)
    {
      v41 = result;
      v42 = *(result + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue);

      v100 = sub_100020B48;
      v101 = v39;
      aBlock = _NSConcreteStackBlock;
      v97 = 1107296256;
      v43 = &unk_1000325E0;
LABEL_10:
      v98 = sub_1000218B0;
      v99 = v43;
      v44 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v95 = &_swiftEmptyArrayStorage;
      sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags);
      sub_100001EE8(&qword_100035460, &qword_100027F88);
      sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88);
      v46 = v91;
      v45 = v92;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v44);

      (*(v93 + 8))(v46, v45);
      (*(v15 + 8))(v40, v14);
    }
  }

  else
  {
    if (v27 == 0xD00000000000001ELL && 0x800000010002B970 == v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
    }

    if (v27 == 0xD00000000000001ELL && 0x800000010002B990 == v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v47 = v89;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      v48 = v86;
      if (result)
      {
        v49 = result;
        v85 = *(result + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue);

        static DispatchTime.now()();
        + infix(_:_:)();
        v94 = *(v87 + 8);
        (v94)(v8, v48);
        v100 = sub_100020AB8;
        v101 = v47;
        aBlock = _NSConcreteStackBlock;
        v97 = 1107296256;
        v98 = sub_1000218B0;
        v99 = &unk_1000325B8;
        v50 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v95 = &_swiftEmptyArrayStorage;
        sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags);
        sub_100001EE8(&qword_100035460, &qword_100027F88);
        sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88);
        v51 = v48;
        v53 = v91;
        v52 = v92;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v54 = v88;
        v55 = v90;
        v56 = v85;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v50);

        (*(v93 + 8))(v53, v52);
        (*(v15 + 8))(v55, v14);
        (v94)(v54, v51);
      }
    }

    else if (v27 == 0xD00000000000001ELL && 0x800000010002B9B0 == v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v57 = v89;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      v40 = v90;
      if (result)
      {
        v58 = result;
        v42 = *(result + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue);

        v100 = sub_100020A58;
        v101 = v57;
        aBlock = _NSConcreteStackBlock;
        v97 = 1107296256;
        v43 = &unk_100032590;
        goto LABEL_10;
      }
    }

    else if (v27 == 0xD00000000000001ELL && 0x800000010002B9D0 == v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v59 = v89;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      v40 = v90;
      if (result)
      {
        v60 = result;
        v42 = *(result + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue);

        v100 = sub_100020A50;
        v101 = v59;
        aBlock = _NSConcreteStackBlock;
        v97 = 1107296256;
        v43 = &unk_100032568;
        goto LABEL_10;
      }
    }

    else if (v27 == 0xD00000000000001CLL && 0x800000010002B9F0 == v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v61 = v89;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      v40 = v90;
      if (result)
      {
        v62 = result;
        v42 = *(result + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue);

        v100 = sub_100020A48;
        v101 = v61;
        aBlock = _NSConcreteStackBlock;
        v97 = 1107296256;
        v43 = &unk_100032540;
        goto LABEL_10;
      }
    }

    else
    {
      if ((v27 != 0xD00000000000001ELL || 0x800000010002BA10 != v29) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v65 = v27;
        if (v27 == 0xD00000000000001BLL && 0x800000010002BA30 == v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v66 = v89;
          swift_beginAccess();
          result = swift_unknownObjectWeakLoadStrong();
          v67 = v90;
          if (!result)
          {
            return result;
          }

          v68 = result;
          v69 = v14;
          v70 = *(result + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue);

          v100 = sub_100020A38;
          v101 = v66;
          aBlock = _NSConcreteStackBlock;
          v97 = 1107296256;
          v71 = &unk_1000324F0;
        }

        else if (v27 == 0xD000000000000019 && 0x800000010002BA50 == v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v75 = v89;
          swift_beginAccess();
          result = swift_unknownObjectWeakLoadStrong();
          v67 = v90;
          if (!result)
          {
            return result;
          }

          v76 = result;
          v69 = v14;
          v70 = *(result + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue);

          v100 = sub_100020A30;
          v101 = v75;
          aBlock = _NSConcreteStackBlock;
          v97 = 1107296256;
          v71 = &unk_1000324C8;
        }

        else
        {
          if ((v27 != 0xD00000000000001BLL || 0x800000010002BA70 != v29) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            static TTSVBLog.daemon.getter();

            v79 = Logger.logObject.getter();
            v80 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              aBlock = v82;
              *v81 = 136315138;
              v83 = sub_100004A24(v65, v29, &aBlock);

              *(v81 + 4) = v83;
              _os_log_impl(&_mh_execute_header, v79, v80, "Received unknown notifyd event: %s", v81, 0xCu);
              sub_100005D40(v82);
            }

            else
            {
            }

            return (v38)(v85, v19);
          }

          v77 = v89;
          swift_beginAccess();
          result = swift_unknownObjectWeakLoadStrong();
          v67 = v90;
          if (!result)
          {
            return result;
          }

          v78 = result;
          v69 = v14;
          v70 = *(result + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue);

          v100 = sub_100020A28;
          v101 = v77;
          aBlock = _NSConcreteStackBlock;
          v97 = 1107296256;
          v71 = &unk_1000324A0;
        }

        v98 = sub_1000218B0;
        v99 = v71;
        v72 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v95 = &_swiftEmptyArrayStorage;
        sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags);
        sub_100001EE8(&qword_100035460, &qword_100027F88);
        sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88);
        v74 = v91;
        v73 = v92;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v72);

        (*(v93 + 8))(v74, v73);
        (*(v15 + 8))(v67, v69);
      }

      v63 = v89;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      v40 = v90;
      if (result)
      {
        v64 = result;
        v42 = *(result + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue);

        v100 = sub_100020A40;
        v101 = v63;
        aBlock = _NSConcreteStackBlock;
        v97 = 1107296256;
        v43 = &unk_100032518;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_10001AAD4()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue);
    *v4 = v7;
    (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    result = (*(v1 + 8))(v4, v0);
    if (v7)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v6;
      v10 = v6;
      sub_10001CBF4(0x6E55207473726946, 0xEC0000006B636F6CLL, sub_100020B50, v9);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10001B034(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10001B0AC()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10001B1B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001B2C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000200D8(*a1);
  *a2 = result;
  return result;
}

void sub_10001B2F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x656E696665646E75;
  v4 = 0xE400000000000000;
  v5 = 1701736292;
  if (v2 != 5)
  {
    v5 = 0x646573756170;
    v4 = 0xE600000000000000;
  }

  v6 = 0x656C6C65636E6163;
  v7 = 0xE600000000000000;
  if (v2 == 3)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v6 = 0x64656C696166;
  }

  if (*v1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x657474696D627573;
  v9 = 0xE700000000000000;
  if (v2 == 1)
  {
    v9 = 0xE900000000000064;
  }

  else
  {
    v8 = 0x676E696E6E7572;
  }

  if (*v1)
  {
    v3 = v8;
    v10 = v9;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (*v1 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v4;
  }

  *a1 = v11;
  a1[1] = v12;
}

uint64_t sub_10001B3BC(uint64_t a1, char *a2, char a3, char a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&a2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a2;
  *(v17 + 32) = a1;
  *(v17 + 40) = a4;
  aBlock[4] = sub_100020EE0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000218B0;
  aBlock[3] = &unk_1000326F8;
  v18 = _Block_copy(aBlock);
  v19 = v16;
  v20 = a2;

  static DispatchQoS.unspecified.getter();
  v25 = &_swiftEmptyArrayStorage;
  sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001EE8(&qword_100035460, &qword_100027F88);
  sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v11, v8);
  (*(v12 + 8))(v15, v23);
}

uint64_t sub_10001B6B8(char a1, uint64_t a2, uint64_t a3, int a4)
{
  v104 = a4;
  v113 = a2;
  v6 = sub_100001EE8(&unk_1000351E0, &unk_100027E90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v102 = &v101 - v8;
  v9 = type metadata accessor for UUID();
  v106 = *(v9 - 8);
  v10 = v106[8];
  v11 = __chkstk_darwin(v9);
  v115 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v107 = &v101 - v14;
  v15 = __chkstk_darwin(v13);
  v122 = &v101 - v16;
  __chkstk_darwin(v15);
  v120 = &v101 - v17;
  v123 = type metadata accessor for TTSVBVoiceModelVersion();
  v18 = *(v123 - 1);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v123);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v121 = &v101 - v23;
  v24 = type metadata accessor for TTSVBVoiceModel();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v110 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v101 - v29;
  v31 = sub_100001EE8(&qword_100035548, &qword_1000280D0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v101 - v33;
  if (a1)
  {
    sub_100015498(0xD000000000000019, 0x800000010002BAB0);
  }

  v35 = *(a3 + 16);
  if (v35)
  {
    v101 = v34;
    v105 = v25;
    v36 = *(v25 + 16);
    v37 = a3 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v117 = *(v25 + 72);
    v118 = v36;
    v112 = (v18 + 8);
    v119 = v25 + 16;
    v116 = (v25 + 8);
    v114 = v37;
    v38 = v37;
    v109 = v35;
    v111 = v24;
    v108 = v30;
    v36(v30, v37, v24);
    while (1)
    {
      if (TTSVBVoiceModel.isTraining()())
      {
        TTSVBVoiceModel.typedVersion.getter();
        static TTSVBVoiceModelVersion.version2_LLASSI.getter();
        sub_10001EA80(&qword_100035560, &type metadata accessor for TTSVBVoiceModelVersion);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v126 == v124 && v127 == v125)
        {
          v45 = *v112;
          v46 = v123;
          (*v112)(v22, v123);
          v45(v121, v46);

          v30 = v108;
LABEL_12:
          v47 = v105;
          v48 = v101;
          (*(v105 + 32))(v101, v30, v24);
          v49 = 0;
          v103 = 1;
LABEL_15:
          v50 = *(v47 + 56);
          LODWORD(v105) = 1;
          v50(v48, v49, 1, v24);
          result = sub_100005EBC(v48, &qword_100035548, &qword_1000280D0);
          v52 = 0;
          v108 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager;
          v121 = (v106 + 2);
          v123 = (v106 + 1);
          v53 = v110;
          v54 = v109;
          while (2)
          {
            if (v52 >= v54)
            {
              __break(1u);
LABEL_57:
              __break(1u);
              return result;
            }

            v59 = v52;
            if (__OFADD__(v52++, 1))
            {
              goto LABEL_57;
            }

            v118(v53, v114 + v59 * v117, v24);
            v61 = TTSVBVoiceModel.creationDeviceUDID.getter();
            v63 = v62;
            v64 = MobileGestalt_get_current_device();
            if (v64 && (v65 = v64, v66 = MobileGestalt_copy_uniqueDeviceID_obj(), v65, v66))
            {
              v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v69 = v68;

              if (!v63)
              {
                goto LABEL_24;
              }

LABEL_27:
              if (v69)
              {
                if (v61 == v67 && v63 == v69)
                {

                  goto LABEL_18;
                }

                v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v97 & 1) == 0)
                {
LABEL_32:
                  if (TTSVBVoiceModel.isTraining()())
                  {
                    v112 = v52;
                    v70 = sub_100012190(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager, type metadata accessor for VoiceBankingUserNotificationManager, VoiceBankingXPCServer.__allocating_init());
                    v71 = OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager_modelIDsQueuedToSkipNotifications;
                    swift_beginAccess();
                    v72 = *&v70[v71];

                    TTSVBVoiceModel.modelID.getter();
                    if (*(v72 + 16))
                    {
                      v73 = *(v72 + 40);
                      sub_10001EA80(&qword_100035550, &type metadata accessor for UUID);
                      v74 = dispatch thunk of Hashable._rawHashValue(seed:)();
                      v75 = -1 << *(v72 + 32);
                      v76 = v74 & ~v75;
                      if ((*(v72 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76))
                      {
                        v77 = ~v75;
                        v78 = v106[9];
                        v79 = v106[2];
                        while (1)
                        {
                          v80 = v122;
                          v79(v122, *(v72 + 48) + v78 * v76, v9);
                          sub_10001EA80(&qword_100035558, &type metadata accessor for UUID);
                          v81 = dispatch thunk of static Equatable.== infix(_:_:)();
                          v82 = *v123;
                          (*v123)(v80, v9);
                          if (v81)
                          {
                            break;
                          }

                          v76 = (v76 + 1) & v77;
                          if (((*(v72 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
                          {
                            goto LABEL_16;
                          }
                        }

                        v82(v120, v9);
                        goto LABEL_49;
                      }
                    }

LABEL_16:

                    v55 = *v123;
                    (*v123)(v120, v9);
                    v56 = *(v113 + v108);
                    v57 = v107;
                    v53 = v110;
                    TTSVBVoiceModel.modelID.getter();
                    swift_beginAccess();
                    v58 = v122;
                    sub_10001EAEC(v122, v57);
                    swift_endAccess();

                    v55(v58, v9);
                    v24 = v111;
LABEL_17:
                    v54 = v109;
                    v52 = v112;
                    goto LABEL_18;
                  }

                  if (TTSVBVoiceModel.status.getter() == 7)
                  {
                    v83 = sub_100012190(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager, type metadata accessor for VoiceBankingUserNotificationManager, VoiceBankingXPCServer.__allocating_init());
                    v84 = OBJC_IVAR____TtC13voicebankingd35VoiceBankingUserNotificationManager_modelIDsQueuedToSkipNotifications;
                    swift_beginAccess();
                    v85 = *&v83[v84];

                    v86 = v115;
                    TTSVBVoiceModel.modelID.getter();
                    if (*(v85 + 16))
                    {
                      v112 = v52;
                      v87 = *(v85 + 40);
                      sub_10001EA80(&qword_100035550, &type metadata accessor for UUID);
                      v88 = dispatch thunk of Hashable._rawHashValue(seed:)();
                      v89 = -1 << *(v85 + 32);
                      v90 = v88 & ~v89;
                      if ((*(v85 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90))
                      {
                        v91 = ~v89;
                        v92 = v106[9];
                        v93 = v106[2];
                        while (1)
                        {
                          v94 = v122;
                          v93(v122, *(v85 + 48) + v92 * v90, v9);
                          sub_10001EA80(&qword_100035558, &type metadata accessor for UUID);
                          v95 = dispatch thunk of static Equatable.== infix(_:_:)();
                          v96 = *v123;
                          (*v123)(v94, v9);
                          if (v95)
                          {
                            break;
                          }

                          v90 = (v90 + 1) & v91;
                          if (((*(v85 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
                          {
                            goto LABEL_45;
                          }
                        }

                        v96(v115, v9);
                        v98 = *(v113 + v108);
                        v99 = v122;
                        v53 = v110;
                        TTSVBVoiceModel.modelID.getter();
                        swift_beginAccess();
                        v100 = v102;
                        sub_10001EDCC(v99, v102);
                        swift_endAccess();

                        v96(v99, v9);
                        sub_100005EBC(v100, &unk_1000351E0, &unk_100027E90);
                        v24 = v111;
                        result = (*v116)(v53, v111);
                        LODWORD(v105) = 0;
                        v54 = v109;
                        v52 = v112;
                        if (v112 == v109)
                        {
                          return result;
                        }

                        continue;
                      }

LABEL_45:

                      (*v123)(v115, v9);
LABEL_49:
                      v24 = v111;
                      v53 = v110;
                      goto LABEL_17;
                    }

                    (*v123)(v86, v9);
                  }
                }

LABEL_18:
                result = (*v116)(v53, v24);
                if (v52 == v54)
                {
                  if ((v105 & 1) == 0)
                  {
                    return result;
                  }

                  return sub_10001C470(v104, v103);
                }

                continue;
              }
            }

            else
            {
              v67 = 0;
              v69 = 0;
              if (v63)
              {
                goto LABEL_27;
              }

LABEL_24:
              if (!v69)
              {
                goto LABEL_18;
              }
            }

            break;
          }

          goto LABEL_32;
        }

        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v40 = *v112;
        v41 = v22;
        v42 = v22;
        v43 = v123;
        (*v112)(v41, v123);
        v44 = v43;
        v22 = v42;
        v40(v121, v44);
        v24 = v111;

        v30 = v108;
        if (v39)
        {
          goto LABEL_12;
        }
      }

      (*v116)(v30, v24);
      v38 += v117;
      if (!--v35)
      {
        v103 = 0;
        v49 = 1;
        v47 = v105;
        v48 = v101;
        goto LABEL_15;
      }

      v118(v30, v38, v24);
    }
  }

  (*(v25 + 56))(v34, 1, 1, v24);
  sub_100005EBC(v34, &qword_100035548, &qword_1000280D0);
  v103 = 0;
  return sub_10001C470(v104, v103);
}

uint64_t sub_10001C470(unsigned __int8 a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  __chkstk_darwin(v6);
  v63 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  v9 = *(v62 + 64);
  __chkstk_darwin(v64);
  v61 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DispatchTime();
  v60 = *(v67 - 8);
  v11 = *(v60 + 64);
  v12 = __chkstk_darwin(v67);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v59 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue;
  v23 = *&v3[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  *v21 = v23;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  result = (*(v18 + 8))(v21, v17);
  if (v23)
  {
    v26 = sub_100012190(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager, type metadata accessor for VoiceBankingUserNotificationManager, VoiceBankingXPCServer.__allocating_init());
    v27 = sub_100003404();
    v28 = sub_10000340C(0xD000000000000010, 0x800000010002BAD0, v27 & 1);
    v30 = v29;

    if (a1 > 2u)
    {
      if (a1 <= 4u)
      {
        v59 = v28;
        v31 = v30;
        v32 = *&v3[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager];
        if (a1 == 3)
        {
          v33 = sub_100003404();
          v34 = 0xD00000000000001FLL;
          v35 = 0x800000010002BB50;
          v36 = v33 & 1;
        }

        else
        {
          v48 = sub_100003404();
          v35 = 0x800000010002BB30;
          v36 = v48 & 1;
          v34 = 0xD00000000000001CLL;
        }

        v43 = sub_10000340C(v34, v35, v36);
        v45 = v49;

        goto LABEL_17;
      }

      if (a1 == 5)
      {
        v59 = v28;
        v31 = v30;
        v41 = *&v3[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager];
        v42 = sub_100003404();
        v43 = sub_10000340C(0xD00000000000001ELL, 0x800000010002BB10, v42 & 1);
        v45 = v44;

LABEL_17:
        v38 = 1;
        goto LABEL_18;
      }

      if (a2)
      {
      }

      v59 = v28;
      v31 = v30;
      v37 = *&v3[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager];
      v38 = 1;
      v40 = 0x800000010002BAF0;
      v39 = 0xD00000000000001CLL;
LABEL_22:
      v43 = sub_10000340C(v39, v40, 1);
      v45 = v58;

      goto LABEL_18;
    }

    if (!a1)
    {
      v59 = v28;
      v31 = v30;
      v45 = 0x800000010002BBB0;
      v43 = 0xD000000000000031;
      goto LABEL_17;
    }

    if (a1 == 1)
    {
      if ((a2 & 1) == 0)
      {
        v59 = v28;
        v31 = v30;
        v37 = *&v3[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager];
        v38 = 1;
        v39 = 0xD00000000000001FLL;
        v40 = 0x800000010002BB90;
        goto LABEL_22;
      }
    }

    else if ((a2 & 1) == 0)
    {
      v59 = v28;
      v31 = v30;
      v46 = *&v3[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___userNotificationManager];
      v43 = sub_10000340C(0xD00000000000001DLL, 0x800000010002BB70, 1);
      v45 = v47;

      v38 = _AXSVoiceOverTouchEnabled() == 0;
LABEL_18:
      v50 = *&v3[v22];
      static DispatchTime.now()();
      + infix(_:_:)();
      v60 = *(v60 + 8);
      (v60)(v14, v67);
      v51 = swift_allocObject();
      v52 = v59;
      v51[2] = v3;
      v51[3] = v52;
      v51[4] = v31;
      v51[5] = v43;
      v51[6] = v45;
      v51[7] = v38;
      aBlock[4] = sub_100020F38;
      aBlock[5] = v51;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000218B0;
      aBlock[3] = &unk_100032748;
      v53 = _Block_copy(aBlock);
      v54 = v3;
      v55 = v61;
      static DispatchQoS.unspecified.getter();
      v68 = &_swiftEmptyArrayStorage;
      sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags);
      sub_100001EE8(&qword_100035460, &qword_100027F88);
      sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88);
      v56 = v63;
      v57 = v66;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v53);

      (*(v65 + 8))(v56, v57);
      (*(v62 + 8))(v55, v64);
      (v60)(v16, v67);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001CBF4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v33 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *&v5[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    static TTSVBLog.daemon.getter();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_100004A24(a1, a2, &v34);
      _os_log_impl(&_mh_execute_header, v21, v22, "Refreshing voice models for reason: %s", v23, 0xCu);
      sub_100005D40(v24);
    }

    (*(v9 + 8))(v12, v8);
    v25 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
    __chkstk_darwin(v25);
    *(&v31 - 2) = a1;
    *(&v31 - 1) = a2;
    TTSVBVoiceBankingManager.logLongTermMessage(_:)();

    v26 = *&v5[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager];
    v27 = swift_allocObject();
    v28 = v33;
    v27[2] = v32;
    v27[3] = v28;
    v27[4] = a1;
    v27[5] = a2;
    v27[6] = v5;

    v29 = v26;

    v30 = v5;
    TTSVBVoiceBankingManager.refreshModels(completion:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001CF6C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (**a5)(char *, char *, uint64_t), uint64_t a6)
{
  v75 = a6;
  v76 = a3;
  v80 = a5;
  v81 = a1;
  *&v77 = a4;
  v86 = type metadata accessor for TTSVBVoiceModelStateTransition();
  v79 = *(v86 - 8);
  v7 = *(v79 + 64);
  v8 = __chkstk_darwin(v86);
  v85 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v73 - v10;
  v87 = type metadata accessor for Logger();
  v11 = *(v87 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v87);
  v78 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v73 - v16;
  __chkstk_darwin(v15);
  v82 = &v73 - v18;
  v83 = type metadata accessor for TTSVBError();
  v19 = *(v83 - 1);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v83);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v73 - v24;
  v26 = sub_100001EE8(&qword_100035230, &qword_100027EE0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = (&v73 - v28);
  sub_100005E54(v81, &v73 - v28, &qword_100035230, &qword_100027EE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v86 = v11;
    v74 = a2;
    v30 = v83;
    (*(v19 + 32))(v25, v29, v83);
    static TTSVBLog.daemon.getter();
    (*(v19 + 16))(v23, v25, v30);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v33 = v25;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v85 = v25;
      v36 = v35;
      v88 = v35;
      *v34 = 136315138;
      sub_10001EA80(&qword_100035500, &type metadata accessor for TTSVBError);
      v37 = Error.localizedDescription.getter();
      v39 = v38;
      v40 = *(v19 + 8);
      v40(v23, v83);
      v41 = sub_100004A24(v37, v39, &v88);
      v30 = v83;

      *(v34 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v31, v32, "Could not refresh voice models: %s", v34, 0xCu);
      sub_100005D40(v36);
      v33 = v85;
    }

    else
    {

      v40 = *(v19 + 8);
      v40(v23, v30);
    }

    (*(v86 + 8))(v82, v87);
    v74(0);
    return (v40)(v33, v30);
  }

  else
  {
    v42 = *v29;
    v43 = v17;
    static TTSVBLog.daemon.getter();
    v44 = v80;

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v88 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_100004A24(v77, v44, &v88);
      _os_log_impl(&_mh_execute_header, v45, v46, "Voice model status after refresh for reason: %s", v47, 0xCu);
      sub_100005D40(v48);
    }

    v49 = v11;
    v83 = *(v11 + 8);
    (v83)(v43, v87);
    v51 = v78;
    v52 = *(v42 + 16);
    if (v52)
    {
      v73 = v42;
      v74 = a2;
      v54 = v79 + 16;
      v53 = *(v79 + 16);
      v55 = v42 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
      v81 = *(v79 + 72);
      v82 = v53;
      v56 = (v79 + 8);
      v79 = v49 + 8;
      v80 = (v54 + 16);
      *&v50 = 136315138;
      v77 = v50;
      v58 = v85;
      v57 = v86;
      do
      {
        v66 = v84;
        (v82)(v84, v55, v57);
        static TTSVBLog.daemon.getter();
        (*v80)(v58, v66, v57);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v88 = v60;
          *v59 = v77;
          v61 = TTSVBVoiceModelStateTransition.description.getter();
          v62 = v54;
          v64 = v63;
          (*v56)(v85, v86);
          v65 = sub_100004A24(v61, v64, &v88);
          v54 = v62;
          v58 = v85;

          *(v59 + 4) = v65;
          _os_log_impl(&_mh_execute_header, v67, v68, "%s", v59, 0xCu);
          sub_100005D40(v60);
          v57 = v86;

          v51 = v78;
        }

        else
        {

          (*v56)(v58, v57);
        }

        (v83)(v51, v87);
        v55 += v81;
        --v52;
      }

      while (v52);

      v69 = v76;
      a2 = v74;
    }

    else
    {

      v69 = v76;
    }

    v71 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
    v72 = swift_allocObject();
    *(v72 + 16) = a2;
    *(v72 + 24) = v69;

    TTSVBVoiceBankingManager.fetchInstalledVoiceModels(completion:)();
  }
}

uint64_t sub_10001D7C4(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3;
    a2();
    v6 = a3();
    v9 = *(v3 + v4);
    *(v8 + v4) = v6;
  }

  return v6;
}

uint64_t sub_10001D83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001D8FC, 0, 0);
}

uint64_t sub_10001D8FC()
{
  v1 = v0[6];
  v0[10] = sub_10001D7C4(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___vdbXpc, &type metadata accessor for VoiceDatabaseXPC.Client, &VoiceDatabaseXPC.Client.__allocating_init());
  type metadata accessor for TTSVBVoiceLoader();
  v2 = static TTSVBVoiceLoader.loaderIdentifier.getter();
  v4 = v3;
  v0[11] = v3;
  v5 = async function pointer to VoiceDatabaseXPC.Client.load(loaderId:)[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_10001D9FC;

  return VoiceDatabaseXPC.Client.load(loaderId:)(v2, v4);
}

uint64_t sub_10001D9FC()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001DB48, 0, 0);
  }

  else
  {
    v5 = v3[10];
    v4 = v3[11];

    v6 = v3[9];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_10001DB48()
{
  v27 = v0;
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  static TTSVBLog.daemon.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = v0[8];
    v25 = v0[9];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[2];
    v12 = v0[3];
    v14 = v0[4];
    v15 = Error.localizedDescription.getter();
    v17 = sub_100004A24(v15, v16, &v26);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed reload voice cache: %s", v10, 0xCu);
    sub_100005D40(v11);

    (*(v8 + 8))(v25, v9);
  }

  else
  {
    v18 = v0[13];
    v20 = v0[8];
    v19 = v0[9];
    v21 = v0[7];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[9];

  v23 = v0[1];

  return v23();
}

void sub_10001DD34(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TTSVBLog.daemon.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = v2;
    v11 = v10;
    v19 = swift_slowAlloc();
    v21 = v19;
    *v11 = 136315138;
    v12 = [v7 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100004A24(v13, v15, &v21);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "performV1ToV2VoiceMigrationTask: bg task expired. ID=%s", v11, 0xCu);
    sub_100005D40(v19);

    (*(v3 + 8))(v6, v20);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v17 = sub_100012250(&OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon____lazy_storage___voiceBankingManager, &type metadata accessor for TTSVBVoiceBankingManager);
  __chkstk_darwin(v17);
  *(&v18 - 2) = v7;
  TTSVBVoiceBankingManager.logLongTermError(_:)();
}

uint64_t sub_10001E0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v24);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v5[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v5;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000218B0;
  aBlock[3] = v23;
  v19 = _Block_copy(aBlock);
  v20 = v17;

  v21 = v5;
  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001EE8(&qword_100035460, &qword_100027F88);
  sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v12, v9);
  (*(v13 + 8))(v16, v24);
}

Swift::Void __swiftcall VoiceBankingDaemon.requestVoiceCacheRebuildIfNeeded()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  v2 = *(v16 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100020204;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000218B0;
  aBlock[3] = &unk_1000320F8;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001EE8(&qword_100035460, &qword_100027F88);
  sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v4, v1);
  (*(v5 + 8))(v8, v15);
}

uint64_t sub_10001E6B0(char a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v24);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&a2[OBJC_IVAR____TtC13voicebankingd18VoiceBankingDaemon_queue];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000218B0;
  aBlock[3] = a5;
  v19 = _Block_copy(aBlock);
  v20 = v17;
  v21 = a2;
  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_10001EA80(&qword_100035458, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001EE8(&qword_100035460, &qword_100027F88);
  sub_100020814(&qword_100035468, &qword_100035460, &qword_100027F88);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v12, v9);
  (*(v13 + 8))(v16, v24);
}

unint64_t sub_10001E994()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(37);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0xD000000000000023;
}

uint64_t sub_10001EA28()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EA68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001EA80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001EAEC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10001EA80(&qword_100035550, &type metadata accessor for UUID);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_10001EA80(&qword_100035558, &type metadata accessor for UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_10001FC2C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10001EDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_10001EA80(&qword_100035550, &type metadata accessor for UUID);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_10001EA80(&qword_100035558, &type metadata accessor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10001F074();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_10001F924(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

void *sub_10001F074()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001EE8(&qword_100035568, &qword_1000280D8);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_10001F2AC(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100001EE8(&qword_100035568, &qword_1000280D8);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_10001EA80(&qword_100035550, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10001F5C8(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100001EE8(&qword_100035568, &qword_1000280D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_10001EA80(&qword_100035550, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}