void sub_1000176D4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100017778(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    static Double.now()();
    if (*(v11 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v12)
    {
      v12 = *(v11 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
    }

    *(v11 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v12 + 1.0;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v13, v14, "getServiceName() called. { reporterID=%lld }", v15, 0xCu);
    }

    v16 = sub_100003D80(a2, 0, 0x4E65636976726573, 0xEB00000000656D61);
    if (!v16 || (v17 = *(v16 + 64), , v17 == 0xFFFF))
    {
      default argument 1 of static Utilities.generateError(with:code:)();
      v19 = static Utilities.generateError(with:code:)();
      v18 = 0xFFFFLL;
    }

    else
    {
      v18 = v17;
      v19 = 0;
    }

    a3(v19, v18);
  }

  else
  {
    static Logger.service.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "ClientServerInstance is gone. { action=getServiceName }", v23, 2u);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

void sub_100017AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

uint64_t sub_100017B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v26 = *(v14 - 8);
  v27 = v14;
  v15 = *(v26 + 64);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(v6 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = a3;
  aBlock[4] = v24;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = v25;
  v21 = _Block_copy(aBlock);
  v22 = v18;

  static DispatchQoS.unspecified.getter();
  v29 = &_swiftEmptyArrayStorage;
  sub_100001C60(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v28 + 8))(v13, v10);
  (*(v26 + 8))(v17, v27);
}

uint64_t sub_100017E7C(uint64_t a1, uint64_t a2, void (*a3)(void, unint64_t))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    static Double.now()();
    if (*(v11 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v12)
    {
      v12 = *(v11 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
    }

    *(v11 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v12 + 1.0;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v13, v14, "validate() called. { reporterID=%lld }", v15, 0xCu);
    }

    v16 = sub_100003D80(a2, 0, 0x65746164696C6176, 0xE800000000000000);
    sub_10001712C(&qword_100045488, &qword_100035FE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100035FA0;
    *(inited + 32) = 0x726574726F706572;
    *(inited + 40) = 0xEA00000000004449;
    if (v16)
    {
      *(inited + 48) = [objc_allocWithZone(NSNumber) initWithLongLong:*(v16 + 16)];
      *(inited + 56) = 0x5465636976726573;
      *(inited + 64) = 0xEB00000000657079;
      v18 = *(v16 + 64);
    }

    else
    {
      *(inited + 48) = [objc_allocWithZone(NSNumber) initWithLongLong:0];
      *(inited + 56) = 0x5465636976726573;
      *(inited + 64) = 0xEB00000000657079;
      v18 = 0xFFFFLL;
    }

    *(inited + 72) = [objc_allocWithZone(NSNumber) initWithUnsignedShort:v18];
    v23 = sub_100017344(inited);
    swift_setDeallocating();
    sub_10001712C(&qword_100045490, &qword_100035FE8);
    swift_arrayDestroy();
    v24 = sub_10001E774(v23);

    a3(0, v24);
  }

  else
  {
    static Logger.service.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "ClientServerInstance is gone. { action=validate }", v21, 2u);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

void sub_1000182E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, v4, isa);
}

uint64_t sub_100018388(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TraceArgs();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TraceCode();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v39 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_logger;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v17, v18, "destroySession() called. { reporterID=%lld }", v19, 0xCu);
    }

    v20 = sub_100003D80(a2, 0, 0x796F7274736564, 0xE700000000000000);
    if (v20)
    {
      v21 = v20;
      v36 = v8;
      v37 = v4;
      v38 = v3;
      v22 = *(v20 + 66);
      v23 = *(v20 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      *(v24 + 24) = v22;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_100019A58;
      *(v25 + 24) = v24;
      aBlock[4] = sub_100002ED8;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002EB0;
      aBlock[3] = &unk_100041538;
      v26 = _Block_copy(aBlock);

      dispatch_sync(v23, v26);
      _Block_release(v26);
      LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

      if (v26)
      {
        __break(1u);
        return result;
      }

      swift_beginAccess();
      sub_100019A64(a2);
      swift_endAccess();

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v28, v29, "Removing from session list. { reporterID=%lld }", v30, 0xCu);
      }

      v31 = v40;
      v32 = v36;
      (*(v40 + 104))(v11, enum case for TraceCode.serverDestroy(_:), v36);
      static Utilities.positiveReporterID(_:)();
      default argument 1 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 2 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 3 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      TraceArgs.init(arg1:arg2:arg3:arg4:)();
      static Trace.post(_:args:)();
      (*(v37 + 8))(v7, v38);
      (*(v31 + 8))(v11, v32);
      sub_100008A00();
    }
  }

  else
  {
    static Logger.service.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "ClientServerInstance is gone. { action=destroySession }", v35, 2u);
    }

    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_100018988(uint64_t a1, int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v24 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v11 - 8);
  v12 = *(v26 + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v15 = *(v25 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v25);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v6 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  *(v20 + 36) = a3;
  *(v20 + 40) = v24;
  *(v20 + 48) = a5;
  aBlock[4] = sub_100019CE8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_1000416A0;
  v21 = _Block_copy(aBlock);
  v22 = v19;

  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_100001C60(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v26 + 8))(v14, v11);
  (*(v15 + 8))(v18, v25);
}

void sub_100018C98(uint64_t a1, uint64_t a2, int a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v41 = a3;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v13 = 134218498;
    *(v13 + 4) = a2;
    *(v13 + 12) = 2082;
    v14 = static Utilities.eventCategoryDescription(from:)();
    v16 = a2;
    v17 = a5;
    v18 = sub_100013120(v14, v15, &v42);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2082;
    v19 = static Utilities.eventTypeDescription(from:)();
    v21 = sub_100013120(v19, v20, &v42);

    *(v13 + 24) = v21;
    a5 = v17;
    a2 = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "requestMessage() called. { reporterID=%lld, category=%{public}s, type=%{public}s }", v13, 0x20u);
    swift_arrayDestroy();
  }

  if (sub_100003D80(a2, 0, 0x4D74736575716572, 0xEE00656761737365))
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Registering callback until message arrives.", v24, 2u);
    }

    sub_10002AD88(a5, a6, v41, a4);
  }

  else
  {
    v25 = a5;
    v26 = [objc_opt_self() mainBundle];
    v44._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0x2064696C61766E49;
    v27._object = 0xEF6E6F6973736553;
    v28._object = 0x80000001000370B0;
    v28._countAndFlagsBits = 0xD000000000000016;
    v44._countAndFlagsBits = 0;
    v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v44);

    sub_10001712C(&qword_100045470, &qword_100035FC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100035FB0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v31;
    *(inited + 48) = v29;
    v32 = sub_100017358(inited);
    swift_setDeallocating();
    sub_100019C78(inited + 32);
    static Constants.machServiceName.getter();
    sub_10001E9D0(v32);

    v33 = objc_allocWithZone(NSError);
    v34 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v36 = [v33 initWithDomain:v34 code:-1 userInfo:isa];

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v37, v38, "requestMessage(): Session does not exist. Returning nil. { reporterID=%lld }", v39, 0xCu);
    }

    v40 = v36;
    v25(v36, 0);
  }
}

void sub_100019218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = _convertErrorToNSError(_:)();
    if (a2)
    {
LABEL_3:
      v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6.super.isa = 0;
LABEL_6:
  isa = v6.super.isa;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1000192C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(v4 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_100019C6C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_100041628;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_100001C60(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

void sub_1000195C0(uint64_t a1, uint64_t a2, void (*a3)(id, void, void))
{
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v5, v6, "getTailspinSessionID() called. { reporterID=%lld }", v7, 0xCu);
  }

  if (static Constants.unknownReporterID.getter() == a2)
  {
    v8 = [objc_opt_self() mainBundle];
    v29._object = 0xE000000000000000;
    v9._countAndFlagsBits = 0x2064696C61766E49;
    v9._object = 0xEF6E6F6973736553;
    v10._object = 0x8000000100037080;
    v10._countAndFlagsBits = 0xD000000000000024;
    v29._countAndFlagsBits = 0;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v29);

    sub_10001712C(&qword_100045470, &qword_100035FC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100035FB0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v13;
    *(inited + 48) = v11;
    v14 = sub_100017358(inited);
    swift_setDeallocating();
    sub_100019C78(inited + 32);
    static Constants.machServiceName.getter();
    sub_10001E9D0(v14);

    v15 = objc_allocWithZone(NSError);
    v16 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v18 = [v15 initWithDomain:v16 code:-1 userInfo:isa];

    v19 = v18;
    a3(v18, 0, 0);
  }

  else
  {
    v26 = a3;
    v20 = static TailspinKeys.all.getter();
    v21 = (v20 + 40);
    v27 = -*(v20 + 16);
    v22 = -1;
    while (1)
    {
      v23 = v27 + v22;
      if (v27 + v22 == -1)
      {
LABEL_10:

        v26(0, v23 == -1, 0);
        return;
      }

      if (++v22 >= *(v20 + 16))
      {
        break;
      }

      v25 = *(v21 - 1);
      v24 = *v21;

      default argument 1 of static DefaultsUtilities.get<A>(key:applicationID:userName:)();
      default argument 2 of static DefaultsUtilities.get<A>(key:applicationID:userName:)();
      static DefaultsUtilities.get<A>(key:applicationID:userName:)();

      if (v28 != 2)
      {
        v21 += 2;
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    __break(1u);
  }
}

void sub_1000199DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a4 + 16))(a4);
}

uint64_t sub_100019A64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1000043D4(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100029D1C();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_10002C75C(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_100019AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000289A4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10002A250();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for FeatureInfo(0);
    sub_100019D24(v12 + *(*(v13 - 8) + 72) * v8);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for FeatureState(0);
    v22 = *(v15 - 8);
    sub_100019D80(v14 + *(v22 + 72) * v8, a2);
    sub_10002CA9C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for FeatureState(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_100019C78(uint64_t a1)
{
  v2 = sub_10001712C(&qword_100045478, &qword_100035FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019D24(uint64_t a1)
{
  v2 = type metadata accessor for FeatureInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019E10()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(v0 + v2);

  for (i = 0; v6; result = )
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = *(*(v3 + 48) + ((v11 << 9) | (8 * v12)));
    type metadata accessor for OsTransactionHandler();
    static OsTransactionHandler.shared.getter();
    OsTransactionHandler.sessionStopped(for:)(v13);
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      v14 = *(v0 + 16);

      v15 = *(v0 + 32);

      v16 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_logger;
      v17 = type metadata accessor for Logger();
      (*(*(v17 - 8) + 8))(v1 + v16, v17);
      v18 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server);
      swift_unknownObjectRelease();
      v19 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_clientStartDate;
      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 8))(v1 + v19, v20);
      v21 = *(v1 + v2);

      return v1;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100019FE4()
{
  sub_100019E10();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10001A044()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10001A150()
{
  v1 = v0;
  v68 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v68 - 1);
  v2 = *(v66 + 64);
  __chkstk_darwin(v68);
  v67 = (v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for DispatchQoS();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  __chkstk_darwin(v4);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = (v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server);
  v72 = OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue;
  v14 = *(v13 + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  *v12 = v14;
  v15 = v9[13];
  LODWORD(v73) = enum case for DispatchPredicate.onQueue(_:);
  v74 = v9 + 13;
  v16 = v15;
  v15(v12);
  v17 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v18 = v9[1];
  result = v18(v12, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v69 = v4;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  LODWORD(v65) = v21;
  v22 = os_log_type_enabled(v20, v21);
  v23 = &unk_100046000;
  v71 = v13;
  v64 = v7;
  if (!v22)
  {
    goto LABEL_7;
  }

  v62 = v20;
  v24 = swift_slowAlloc();
  v60 = swift_slowAlloc();
  v82 = v60;
  v61 = v24;
  *v24 = 136380675;
  v25 = *(v13 + v72);
  *v12 = v25;
  v16(v12, v73, v8);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  result = v18(v12, v8);
  if ((v25 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v27 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
  swift_beginAccess();
  v13 = *(v1 + v27);
  v20 = *(v13 + 16);
  if (v20)
  {
    v28 = sub_1000092F0(*(v13 + 16), 0);
    v59 = sub_100009378(&aBlock, v28 + 4, v20, v13);
    v23 = v77;
    v58[3] = aBlock;
    v58[2] = v78;
    v58[1] = v79;
    v58[0] = v80;

    sub_10000750C();
    if (v59 != v20)
    {
      __break(1u);
LABEL_7:

      v29 = v72;
      goto LABEL_9;
    }
  }

  v30 = Array.description.getter();
  v32 = v31;

  v33 = sub_100013120(v30, v32, &v82);

  v34 = v61;
  *(v61 + 1) = v33;
  v35 = v62;
  _os_log_impl(&_mh_execute_header, v62, v65, "destroyAllSessions() { sessionIDs=%{private}s }", v34, 0xCu);
  sub_10000AE7C(v60);

  v13 = v71;
  v29 = v72;
  v23 = &unk_100046000;
LABEL_9:
  v36 = *(v13 + v29);
  *v12 = v36;
  v16(v12, v73, v8);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  result = v18(v12, v8);
  if ((v36 & 1) == 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = v23[35];
  swift_beginAccess();
  v39 = *(v1 + v38);
  v40 = *(v39 + 16);
  v70 = v1;
  if (!v40)
  {
    v43 = v67;
    v44 = v68;
    v41 = &_swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v41 = sub_1000092F0(v40, 0);
  v42 = sub_100009378(&aBlock, v41 + 4, v40, v39);

  result = sub_10000750C();
  if (v42 != v40)
  {
    goto LABEL_20;
  }

  v43 = v67;
  v44 = v68;
  v13 = v71;
LABEL_14:
  v65 = v41;
  v45 = v41[2];
  v46 = v64;
  v47 = v72;
  if (v45)
  {
    v48 = v65 + 4;
    v68 = &v78;
    v67 = (v66 + 8);
    v66 = v63 + 8;
    do
    {
      v49 = *v48;
      v73 = v48 + 1;
      v74 = v45;
      v50 = v46;
      v51 = v44;
      v52 = *(v13 + v47);
      v53 = swift_allocObject();
      swift_weakInit();
      v54 = swift_allocObject();
      *(v54 + 16) = v53;
      *(v54 + 24) = v49;
      v80 = sub_100019C5C;
      v81 = v54;
      aBlock = _NSConcreteStackBlock;
      v77 = 1107296256;
      v78 = sub_1000016B8;
      v79 = &unk_100041B28;
      v55 = _Block_copy(&aBlock);
      v56 = v52;

      static DispatchQoS.unspecified.getter();
      v75 = &_swiftEmptyArrayStorage;
      sub_10001B340(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
      sub_10001712C(&unk_100045920, &qword_100035FC0);
      sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v44 = v51;
      v46 = v50;
      _Block_release(v55);

      v57 = v69;
      (*v67)(v43, v44);
      (*v66)(v46, v57);
      v13 = v71;

      v48 = v73;
      v47 = v72;
      v45 = (v74 - 1);
    }

    while (v74 != 1);
  }
}

uint64_t sub_10001A9B8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = *(v0 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server);
  v76 = OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue;
  v7 = *(v78 + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  *v6 = v7;
  v8 = v3[13];
  v75 = enum case for DispatchPredicate.onQueue(_:);
  v77 = v3 + 13;
  v74 = v8;
  v8(v6);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = v3[1];
  v79 = v3 + 1;
  v80 = v2;
  v73 = v10;
  result = v10(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  v12 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
  swift_beginAccess();
  v71 = v12;
  v13 = *(v1 + v12);
  v14 = *(v13 + 16);
  if (v14)
  {
    v72 = v6;
    v15 = sub_1000092F0(v14, 0);
    v16 = sub_100009378(&v82, v15 + 4, v14, v13);

    result = sub_10000750C();
    if (v16 != v14)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v17 = v15;
    v6 = v72;
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage;
  }

  v18 = *(v78 + v76);
  *v6 = v18;
  v19 = v80;
  v74(v6, v75, v80);
  v20 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = v73(v6, v19);
  if ((v18 & 1) == 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v21 = v17[2];
  v72 = v17;
  if (v21)
  {
    v22 = v17 + 4;
    v23 = &_swiftEmptyArrayStorage;
    do
    {
      v27 = *v22++;
      v26 = v27;
      v28 = sub_100003D80(v27, 0, 0x7669746341746567, 0xE900000000000065);
      if (v28)
      {
        v29 = *(v28 + 66);

        if (v29 == 1)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v82 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10002CEC0(0, v23[2] + 1, 1);
            v23 = v82;
          }

          v25 = v23[2];
          v24 = v23[3];
          if (v25 >= v24 >> 1)
          {
            sub_10002CEC0((v24 > 1), v25 + 1, 1);
            v23 = v82;
          }

          v23[2] = v25 + 1;
          v23[v25 + 4] = v26;
        }
      }

      --v21;
    }

    while (v21);
  }

  else
  {
    v23 = &_swiftEmptyArrayStorage;
  }

  v31 = v23[2];

  if (v31)
  {
    return 0;
  }

  static Double.now()();
  if (*(v1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) >= v32)
  {
    return 0;
  }

  swift_retain_n();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v33, v34))
  {

    return 1;
  }

  v69 = v34;
  v70 = v33;
  v35 = swift_slowAlloc();
  v68 = swift_slowAlloc();
  v81 = v68;
  *v35 = 136381443;
  *(v35 + 4) = sub_100013120(*(v1 + 24), *(v1 + 32), &v81);
  *(v35 + 12) = 1024;
  *(v35 + 14) = *(v1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid);
  v72 = v35;
  *(v35 + 18) = 2048;
  v36 = *(v78 + v76);
  *v6 = v36;
  v37 = v80;
  v74(v6, v75, v80);
  v38 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  result = v73(v6, v37);
  if ((v36 & 1) == 0)
  {
    goto LABEL_50;
  }

  v39 = *(v71 + v1);
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = sub_1000092F0(*(v39 + 16), 0);
    v67 = sub_100009378(&v82, v41 + 4, v40, v39);

    sub_10000750C();
    if (v67 != v40)
    {
      __break(1u);
      return 0;
    }
  }

  else
  {
    v41 = &_swiftEmptyArrayStorage;
  }

  v42 = v41[2];

  v43 = v72;
  *(v72 + 20) = v42;

  *(v43 + 14) = 2048;
  v44 = *(v78 + v76);
  *v6 = v44;
  v45 = v80;
  v74(v6, v75, v80);
  v46 = v44;
  LOBYTE(v44) = _dispatchPreconditionTest(_:)();
  result = v73(v6, v45);
  if ((v44 & 1) == 0)
  {
    goto LABEL_51;
  }

  v47 = *(v71 + v1);
  v48 = *(v47 + 16);
  if (!v48)
  {
    v50 = &_swiftEmptyArrayStorage;
LABEL_33:
    v51 = *(v78 + v76);
    *v6 = v51;
    v52 = v80;
    v74(v6, v75, v80);
    v53 = v51;
    LOBYTE(v51) = _dispatchPreconditionTest(_:)();
    result = v73(v6, v52);
    if (v51)
    {
      v54 = v50[2];
      if (v54)
      {
        v55 = v50 + 4;
        v56 = &_swiftEmptyArrayStorage;
        do
        {
          v60 = *v55++;
          v59 = v60;
          v61 = sub_100003D80(v60, 0, 0x7669746341746567, 0xE900000000000065);
          if (v61)
          {
            v62 = *(v61 + 66);

            if (v62 == 1)
            {
              v63 = swift_isUniquelyReferenced_nonNull_native();
              v82 = v56;
              if ((v63 & 1) == 0)
              {
                sub_10002CEC0(0, v56[2] + 1, 1);
                v56 = v82;
              }

              v58 = v56[2];
              v57 = v56[3];
              if (v58 >= v57 >> 1)
              {
                sub_10002CEC0((v57 > 1), v58 + 1, 1);
                v56 = v82;
              }

              v56[2] = v58 + 1;
              v56[v58 + 4] = v59;
            }
          }

          --v54;
        }

        while (v54);
      }

      else
      {
        v56 = &_swiftEmptyArrayStorage;
      }

      v64 = v56[2];

      v65 = v72;
      *(v72 + 30) = v64;

      v66 = v70;
      _os_log_impl(&_mh_execute_header, v70, v69, "ClientServerInstance should be invalidated. { clientProcessName=%{private}s, pid=%d, sessionCount=%ld, activeSessions=%ld }", v65, 0x26u);
      sub_10000AE7C(v68);

      return 1;
    }

    goto LABEL_52;
  }

  v71 = sub_1000092F0(*(v47 + 16), 0);
  v49 = sub_100009378(&v82, v71 + 4, v48, v47);

  result = sub_10000750C();
  if (v49 == v48)
  {
    v50 = v71;
    goto LABEL_33;
  }

LABEL_53:
  __break(1u);
  return result;
}

Swift::Int sub_10001B1A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001B1FC()
{
  v1 = *v0;
  Hasher._combine(_:)(*(*v0 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  return String.hash(into:)();
}

Swift::Int sub_10001B254()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001B2AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid) != *(*a2 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid))
  {
    return 0;
  }

  if (*(v2 + 24) == *(v3 + 24) && *(v2 + 32) == *(v3 + 32))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10001B340(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001B390(uint64_t a1, uint64_t (*a2)(void *))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v6 = *(a1 + 36);
  }

  v27 = result;
  v28 = v6;
  v29 = v4 != 0;
  if (v4)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (v29)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v12 = v28;
  if (*(a1 + 36) != v28)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v13 = v27;
  if (v27 == 1 << *(a1 + 32))
  {
    return 1 << *(a1 + 32);
  }

  do
  {
    v26[0] = sub_1000079BC(v13, v12, v4 != 0, a1);
    v15 = a2(v26);

    if (v15)
    {
      break;
    }

    if (!v4)
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v16 = 1 << *(a1 + 32);
      if (v13 >= v16)
      {
        goto LABEL_32;
      }

      v17 = v13 >> 6;
      v18 = *(a1 + 56 + 8 * (v13 >> 6));
      if (((v18 >> v13) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) == v12)
      {
        v19 = v18 & (-2 << (v13 & 0x3F));
        if (v19)
        {
          v16 = __clz(__rbit64(v19)) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v17 << 6;
          v21 = v17 + 1;
          v22 = (a1 + 64 + 8 * v17);
          while (v21 < (v16 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              result = sub_100007BDC(v13, v12, 0);
              v16 = __clz(__rbit64(v23)) + v20;
              goto LABEL_28;
            }
          }

          result = sub_100007BDC(v13, v12, 0);
        }

LABEL_28:
        v25 = *(a1 + 36);
        v27 = v16;
        v28 = v25;
        v29 = 0;
        goto LABEL_10;
      }

      goto LABEL_34;
    }

    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    sub_10001712C(&qword_100045990, &qword_1000360D8);
    v8 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    v8(v26, 0);
LABEL_7:
    result = __CocoaSet.endIndex.getter();
    if (!v29)
    {
      goto LABEL_35;
    }

    v10 = result;
    v11 = v9;
    v13 = v27;
    v12 = v28;
    v14 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100007BDC(v10, v11, 1);
  }

  while ((v14 & 1) == 0);
  return v13;
}

uint64_t sub_10001B670(uint64_t result, uint64_t a2, uint64_t (*a3)(void *))
{
  v6 = *result;
  v5 = *(result + 8);
  v30 = result;
  v7 = *(result + 16);
  v32 = *result;
  v33 = v5;
  v34 = v7;
  v8 = a2 & 0xC000000000000001;
  v29 = (a2 & 0xC000000000000001) != 0;
  if ((a2 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.endIndex.getter();
    if (v7)
    {
      v10 = result;
      v11 = v9;
      v12 = static __CocoaSet.Index.== infix(_:_:)();
      result = sub_100007BDC(v10, v11, 1);
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (v7)
  {
    goto LABEL_38;
  }

  if (*(a2 + 36) != v5)
  {
    goto LABEL_36;
  }

  if (v6 == 1 << *(a2 + 32))
  {
    goto LABEL_35;
  }

LABEL_10:
  while (v8)
  {
    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    sub_10001712C(&qword_100045990, &qword_1000360D8);
    v18 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    v18(v31, 0);
    result = __CocoaSet.endIndex.getter();
    if (v34 != 1)
    {
      goto LABEL_37;
    }

    v20 = result;
    v21 = v19;
    v6 = v32;
    v5 = v33;
    v22 = static __CocoaSet.Index.== infix(_:_:)();
    result = sub_100007BDC(v20, v21, 1);
    if (v22)
    {
      v28 = 1;
LABEL_31:
      *v30 = v6;
      *(v30 + 8) = v5;
      *(v30 + 16) = v28;
      return result;
    }

LABEL_9:
    v31[0] = sub_1000079BC(v6, v5, v8 != 0, a2);
    v13 = a3(v31);

    if (v13)
    {
      v28 = v29;
      goto LABEL_31;
    }
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v14 = 1 << *(a2 + 32);
    if (v6 < v14)
    {
      v15 = v6 >> 6;
      v16 = *(a2 + 56 + 8 * (v6 >> 6));
      if (((v16 >> v6) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a2 + 36) != v5)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << (v6 & 0x3F));
      if (v17)
      {
        v14 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v15 << 6;
        v24 = v15 + 1;
        v25 = (a2 + 64 + 8 * v15);
        while (v24 < (v14 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_100007BDC(v6, v5, 0);
            v14 = __clz(__rbit64(v26)) + v23;
            goto LABEL_27;
          }
        }

        result = sub_100007BDC(v6, v5, 0);
      }

LABEL_27:
      v5 = *(a2 + 36);
      v32 = v14;
      v33 = v5;
      v34 = 0;
      if (v14 == 1 << *(a2 + 32))
      {
        v28 = 0;
        v6 = v14;
        goto LABEL_31;
      }

      v6 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

id sub_10001B9A0(void *a1, uint64_t a2)
{

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136380675;
    *(v6 + 4) = sub_100013120(*(a2 + 56), *(a2 + 64), &v9);
    _os_log_impl(&_mh_execute_header, v4, v5, "ScheduledActivity { activity=%{private}s }", v6, 0xCu);
    sub_10000AE7C(v7);
  }

  sub_10001C428();

  return [a1 setTaskCompleted];
}

void sub_10001BACC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

NSObject *sub_10001BB34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v9 = objc_allocWithZone(MAAssetQuery);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithType:v10];

  if (!v11)
  {
    v11 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v11, v15, "Failed to create query", v16, 2u);
    }

    goto LABEL_19;
  }

  [v11 returnTypes:a1];
  [v11 setDoNotBlockBeforeFirstUnlock:1];
  if ([v11 queryMetaDataSync]== 5)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing entitlement!", v14, 2u);
LABEL_17:
    }

LABEL_18:

LABEL_19:
    return 0;
  }

  v17 = [v11 results];
  if (!v17)
  {

    v12 = Logger.logObject.getter();
    LOBYTE(v22) = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v12, v22))
    {
      goto LABEL_18;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v23 = 136380675;
    *(v23 + 4) = sub_100013120(a2, a3, &v26);
    v25 = "query.results is nil { errorNote=%{private}s }";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v12, v22, v25, v23, 0xCu);
    sub_10000AE7C(v24);

    goto LABEL_17;
  }

  result = [v11 results];
  if (result)
  {
    v19 = result;
    sub_10001C3DC();
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v20 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21)
    {
      return v11;
    }

    v12 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v12, v22))
    {
      goto LABEL_18;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v23 = 136380675;
    *(v23 + 4) = sub_100013120(a2, a3, &v26);
    v25 = "query.results.isEmpty! { errorNote=%{private}s }";
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall MobileAssetsHandler.getMobileAssetsConfigPath()()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *&v0[-1].cb;
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10001712C(&qword_1000455A8, &qword_1000360F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v15 = __chkstk_darwin(v12);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  countAndFlagsBits = sub_10001BB34(1, 0xD000000000000011, 0x8000000100037350);
  if (!countAndFlagsBits)
  {
    goto LABEL_27;
  }

  v51 = v9;
  v21 = countAndFlagsBits;
  v22 = [countAndFlagsBits results];

  if (!v22)
  {
LABEL_26:
    countAndFlagsBits = 0;
LABEL_27:
    object = 0;
    goto LABEL_28;
  }

  v48 = v19;
  sub_10001C3DC();
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  v24 = _CocoaArrayWrapper.endIndex.getter();
  if (!v24)
  {
LABEL_25:

    goto LABEL_26;
  }

LABEL_5:
  v44 = v17;
  v45 = v4;
  v49 = v13;
  v50 = v12;
  v46 = v1;
  v47 = v0;
  v17 = 0;
  v1 = v23 & 0xC000000000000001;
  v12 = v23 & 0xFFFFFFFFFFFFFF8;
  v4 = &OBJC_PROTOCOL____TtP15audioanalyticsd14ServerProtocol_;
  v0 = &OBJC_PROTOCOL____TtP15audioanalyticsd14ServerProtocol_;
  while (1)
  {
    if (v1)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v25 = *(v23 + 8 * v17 + 32);
    }

    v26 = v25;
    v13 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if ([v25 wasLocal] && objc_msgSend(v26, "state") == 2)
    {
      break;
    }

    ++v17;
    if (v13 == v24)
    {

      (*(v49 + 7))(v11, 1, 1, v50);
LABEL_20:
      sub_10001E098(v11);
      goto LABEL_26;
    }
  }

  v27 = [v26 getLocalUrl];

  if (v27)
  {
    v28 = v51;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v49;
    v30 = *(v49 + 7);
    v31 = v28;
    v32 = 0;
  }

  else
  {
    v29 = v49;
    v30 = *(v49 + 7);
    v28 = v51;
    v31 = v51;
    v32 = 1;
  }

  v33 = v50;
  v30(v31, v32, 1, v50);
  v35 = v46;
  v34 = v47;
  v37 = v44;
  v36 = v45;
  sub_10001E028(v28, v11);
  if ((*(v29 + 6))(v11, 1, v33) == 1)
  {
    goto LABEL_20;
  }

  v38 = v48;
  (*(v29 + 4))(v48, v11, v33);
  type metadata accessor for Config();
  v52 = static Config.distributedConfigName.getter();
  v53 = v39;
  (*(v35 + 104))(v36, enum case for URL.DirectoryHint.inferFromPath(_:), v34);
  sub_10001E100();
  URL.appending<A>(component:directoryHint:)();
  (*(v35 + 8))(v36, v34);

  v40 = URL.path(percentEncoded:)(0);
  v41 = *(v29 + 1);
  v41(v37, v33);
  v41(v38, v33);
  object = v40._object;
  countAndFlagsBits = v40._countAndFlagsBits;
LABEL_28:
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

unint64_t sub_10001C3DC()
{
  result = qword_1000455B0;
  if (!qword_1000455B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000455B0);
  }

  return result;
}

void sub_10001C428()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Updating assets.", v4, 2u);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_7;
  }

  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v20[0] = v8;
  *v7 = 136380675;
  v9 = [*(v1 + 32) tightSummaryIncludingAdditional:{1, v20[0]}];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100013120(v10, v12, v20);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Options summary. { summary=%{private}s }", v7, 0xCu);
    sub_10000AE7C(v8);

LABEL_7:

    v14 = objc_opt_self();
    v15 = *(v1 + 40);
    v16 = *(v1 + 48);
    v17 = String._bridgeToObjectiveC()();
    v18 = *(v1 + 32);
    v20[4] = sub_10001E26C;
    v20[5] = v1;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_10001DE2C;
    v20[3] = &unk_100041B50;
    v19 = _Block_copy(v20);

    [v14 startCatalogDownload:v17 options:v18 then:v19];
    _Block_release(v19);

    return;
  }

  __break(1u);
}

void sub_10001C6BC(uint64_t a1, uint64_t a2)
{
  v138 = type metadata accessor for URL();
  v4 = *(v138 - 8);
  isa = v4[8].isa;
  v6 = __chkstk_darwin(v138);
  v130 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v129 = &v122 - v9;
  v10 = __chkstk_darwin(v8);
  v125 = &v122 - v11;
  v12 = __chkstk_darwin(v10);
  v124 = &v122 - v13;
  __chkstk_darwin(v12);
  v15 = &v122 - v14;
  v16 = OBJC_IVAR____TtC15audioanalyticsd19MobileAssetsHandler_logger;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = v15;
    v21 = a2;
    v22 = swift_slowAlloc();
    v144 = a1;
    aBlock = v22;
    *v19 = 136380675;
    type metadata accessor for MADownloadResult(0);
    v23 = String.init<A>(describing:)();
    v25 = sub_100013120(v23, v24, &aBlock);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Got the download metadata { reply=%{private}s }", v19, 0xCu);
    sub_10000AE7C(v22);
    a2 = v21;
    v15 = v20;
  }

  v26 = sub_10001BB34(4, 0xD00000000000001CLL, 0x8000000100037400);
  if (!v26)
  {
    return;
  }

  v27 = v26;
  v28 = [v26 results];
  if (!v28)
  {
    goto LABEL_61;
  }

  v29 = v28;
  sub_10001C3DC();
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v123 = v27;
  if (v30 >> 62)
  {
LABEL_50:
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32)
    {
      goto LABEL_7;
    }

LABEL_51:

    return;
  }

  v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_51;
  }

LABEL_7:
  v33 = 0;
  v142 = v30 & 0xC000000000000001;
  v133 = v30 & 0xFFFFFFFFFFFFFF8;
  v135 = v4 + 1;
  v127 = v4 + 4;
  v126 = &v147;
  *&v31 = 136381187;
  v134 = v31;
  *&v31 = 136380675;
  v132 = v31;
  *&v31 = 136380931;
  v128 = v31;
  v139 = a2;
  v131 = v15;
  v140 = v16;
  v136 = v32;
  v137 = v30;
  while (1)
  {
    if (v142)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v33 >= *(v133 + 16))
      {
        goto LABEL_49;
      }

      v34 = *(v30 + 8 * v33 + 32);
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    v143 = v35;
    v4 = v34;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v36, v37))
    {

      goto LABEL_22;
    }

    v141 = v33;
    v38 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v38 = v134;
    v39 = [v4 assetType];

    if (!v39)
    {
      goto LABEL_54;
    }

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = sub_100013120(v40, v42, &aBlock);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2081;
    v44 = [v4 assetId];

    if (!v44)
    {
      break;
    }

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48 = sub_100013120(v45, v47, &aBlock);

    *(v38 + 14) = v48;
    *(v38 + 22) = 2081;
    v49 = [v4 assetServerUrl];

    if (!v49)
    {
      goto LABEL_55;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = URL.absoluteString.getter();
    v52 = v51;
    (v135->isa)(v15, v138);
    v53 = sub_100013120(v50, v52, &aBlock);

    *(v38 + 24) = v53;
    _os_log_impl(&_mh_execute_header, v36, v37, "Found asset to download. { assetType=%{private}s, assetId=%{private}s, url=%{private}s }", v38, 0x20u);
    swift_arrayDestroy();

    a2 = v139;
    v16 = v140;
    v32 = v136;
    v30 = v137;
    v33 = v141;
LABEL_22:
    static Double.now()();
    v55 = v54;
    v56 = [v4 state];
    if (v56 == 4)
    {

      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = v30;
        v95 = v32;
        v96 = v15;
        v97 = a2;
        v98 = swift_slowAlloc();
        aBlock = v98;
        *v93 = v132;
        *(v93 + 4) = sub_100013120(*(v97 + 40), *(v97 + 48), &aBlock);
        _os_log_impl(&_mh_execute_header, v91, v92, "Downloading { assetType=%{private}s }", v93, 0xCu);
        sub_10000AE7C(v98);
        a2 = v97;
        v15 = v96;
        v32 = v95;
        v30 = v94;
        v16 = v140;
      }

      goto LABEL_9;
    }

    if (v56 == 2)
    {
      v59 = v4;
      v4 = Logger.logObject.getter();
      v79 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v4, v79))
      {
        goto LABEL_43;
      }

      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock = v81;
      *v80 = v132;
      v82 = [v59 getLocalUrl];

      if (!v82)
      {
        goto LABEL_56;
      }

      v83 = v130;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v84 = v129;
      v85 = v83;
      v86 = v138;
      (v127->isa)(v129, v85, v138);
      sub_10001E274();
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      (v135->isa)(v84, v86);
      v90 = sub_100013120(v87, v89, &aBlock);

      *(v80 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v4, v79, "Installed { assetType=%{private}s }", v80, 0xCu);
      sub_10000AE7C(v81);

      v15 = v131;
      v16 = v140;
LABEL_42:
      v32 = v136;
      v30 = v137;
LABEL_44:
      a2 = v139;
      goto LABEL_9;
    }

    if (v56 != 1)
    {
      v99 = v4;

      v100 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v100, v4))
      {
        v101 = swift_slowAlloc();
        v102 = v30;
        v103 = v32;
        v104 = v15;
        v105 = a2;
        v106 = swift_slowAlloc();
        aBlock = v106;
        *v101 = v128;
        *(v101 + 4) = sub_100013120(*(v105 + 40), *(v105 + 48), &aBlock);
        *(v101 + 12) = 2049;
        *(v101 + 14) = [v99 state];

        _os_log_impl(&_mh_execute_header, v100, v4, "Unknown asset state { assetType=%{private}s, state=%{private}ld }", v101, 0x16u);
        sub_10000AE7C(v106);
        a2 = v105;
        v15 = v104;
        v32 = v103;
        v30 = v102;
        v16 = v140;
      }

      else
      {
      }

      goto LABEL_9;
    }

    v57 = [v4 nonUserInitiatedDownloadsAllowed];
    v58 = v4;
    v59 = v58;
    if (!v57)
    {
      v4 = Logger.logObject.getter();
      v107 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        aBlock = v109;
        *v108 = v132;
        v110 = [v59 assetServerUrl];

        if (!v110)
        {
          goto LABEL_57;
        }

        v111 = v125;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v112 = URL.absoluteString.getter();
        v114 = v113;
        (v135->isa)(v111, v138);
        v115 = sub_100013120(v112, v114, &aBlock);

        *(v108 + 4) = v115;
        _os_log_impl(&_mh_execute_header, v4, v107, "Cannot download asset, as nonUserInitiatedDownloadsAllowed is false. { url=%{private}s }", v108, 0xCu);
        sub_10000AE7C(v109);

        v15 = v131;
        goto LABEL_42;
      }

LABEL_43:

      goto LABEL_44;
    }

    v4 = v58;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v62 = v134;
      v63 = [v4 assetType];

      if (!v63)
      {
        goto LABEL_60;
      }

      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v67 = sub_100013120(v64, v66, &aBlock);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2081;
      v68 = [v4 assetId];

      if (!v68)
      {
        goto LABEL_59;
      }

      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72 = sub_100013120(v69, v71, &aBlock);

      *(v62 + 14) = v72;
      *(v62 + 22) = 2081;
      v73 = [v4 assetServerUrl];

      if (!v73)
      {
        goto LABEL_58;
      }

      v74 = v124;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v75 = URL.absoluteString.getter();
      v77 = v76;
      (v135->isa)(v74, v138);
      v78 = sub_100013120(v75, v77, &aBlock);

      *(v62 + 24) = v78;
      _os_log_impl(&_mh_execute_header, v60, v61, "Downloading asset. { assetType=%{private}s, assetId=%{private}s, url=%{private}s }", v62, 0x20u);
      swift_arrayDestroy();

      a2 = v139;
      v16 = v140;
      v32 = v136;
      v30 = v137;
    }

    else
    {
    }

    v116 = swift_allocObject();
    v116[2] = a2;
    v116[3] = v55;
    v116[4] = v4;
    v149 = sub_10001E2CC;
    v150 = v116;
    aBlock = _NSConcreteStackBlock;
    v146 = 1107296256;
    v147 = sub_10001D980;
    v148 = &unk_100041BA0;
    v117 = _Block_copy(&aBlock);
    v118 = v4;

    [v118 attachProgressCallBack:v117];
    _Block_release(v117);
    v119 = *(a2 + 32);
    v120 = swift_allocObject();
    *(v120 + 16) = v118;
    *(v120 + 24) = a2;
    v149 = sub_10001E2DC;
    v150 = v120;
    aBlock = _NSConcreteStackBlock;
    v146 = 1107296256;
    v147 = sub_10001DE2C;
    v148 = &unk_100041BF0;
    v4 = _Block_copy(&aBlock);
    v121 = v118;

    [v121 startDownload:v119 then:v4];

    _Block_release(v4);
    v15 = v131;
LABEL_9:
    ++v33;
    if (v143 == v32)
    {
      goto LABEL_51;
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

  __break(1u);
LABEL_60:

  __break(1u);
LABEL_61:
  __break(1u);
}

void sub_10001D5E0(void *a1, __int16 a2, void *a3, double a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = OBJC_IVAR____TtC15audioanalyticsd19MobileAssetsHandler_logger;
    v30 = a1;
    v14 = a3;
    v15 = a2 + v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 134219011;
      static Double.now()();
      v21 = v20 - a4;
      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v21 > -9.22337204e18)
      {
        if (v21 < 9.22337204e18)
        {
          *(v18 + 4) = v21;
          v15 = 2048;
          *(v18 + 12) = 2048;
          if (qword_1000453A0 == -1)
          {
            goto LABEL_7;
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        swift_once();
LABEL_7:
        *(v18 + 14) = qword_1000455A0;
        *(v18 + 22) = v15;
        *(v18 + 24) = [v30 totalWritten];
        *(v18 + 32) = v15;
        *(v18 + 34) = [v30 totalExpected];
        *(v18 + 42) = 2081;
        v22 = [v14 assetServerUrl];

        if (v22)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v23 = URL.absoluteString.getter();
          v25 = v24;
          (*(v9 + 8))(v12, v8);
          v26 = sub_100013120(v23, v25, &v31);

          *(v18 + 44) = v26;
          _os_log_impl(&_mh_execute_header, v16, v17, "Progress callback. { runningTime=%ld, timeout=%ld, totalWritten=%lld, totalExpected=%lld, url=%{private}s }", v18, 0x34u);
          sub_10000AE7C(v19);
        }

        else
        {
          __break(1u);
        }

        return;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    v30 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v30, v27, "Progress callback, but nil update object.", v28, 2u);
    }
  }

  v29 = v30;
}

void sub_10001D980(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_10001D9EC(uint64_t a1, void *a2, uint64_t a3)
{
  v40 = type metadata accessor for Logger();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v40);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v18 = [a2 assetServerUrl];
  if (v18)
  {
    v19 = v18;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 32))(v17, v15, v10);
    v20 = URL.absoluteString.getter();
    v22 = v21;
    (*(v11 + 8))(v17, v10);
    if (a1)
    {
LABEL_3:
      static Logger.mobileAsset.getter();

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v25 = 136380931;
        v26 = sub_100013120(v20, v22, &v42);

        *(v25 + 4) = v26;
        *(v25 + 12) = 2081;
        v41 = a1;
        type metadata accessor for MADownloadResult(0);
        v27 = String.init<A>(describing:)();
        v29 = sub_100013120(v27, v28, &v42);

        *(v25 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v23, v24, "Download failed. { url=%{private}s, result=%{private}s }", v25, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v6 + 8))(v9, v40);
      return;
    }
  }

  else
  {
    v22 = 0xE400000000000000;
    v20 = 560753006;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v30 = a3;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v33 = 136380675;
    v35 = sub_100013120(v20, v22, &v42);

    *(v33 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Downloaded asset. Calling downloadedCallback. { url=%{private}s }", v33, 0xCu);
    sub_10000AE7C(v34);
  }

  else
  {
  }

  v36 = *(v30 + 16);
  if (v36)
  {
    v37 = *(v30 + 24);

    v36(v38);
    sub_10001E154(v36);
  }
}

uint64_t sub_10001DE2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10001DE80()
{
  result = static Double.minutes(_:)();
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    qword_1000455A0 = v1;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t MobileAssetsHandler.deinit()
{
  v1 = *(v0 + 24);
  sub_10001E154(*(v0 + 16));

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = OBJC_IVAR____TtC15audioanalyticsd19MobileAssetsHandler_logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t MobileAssetsHandler.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  sub_10001E154(*(v0 + 16));

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = OBJC_IVAR____TtC15audioanalyticsd19MobileAssetsHandler_logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10001E028(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001712C(&qword_1000455A8, &qword_1000360F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001E098(uint64_t a1)
{
  v2 = sub_10001712C(&qword_1000455A8, &qword_1000360F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001E100()
{
  result = qword_1000455B8;
  if (!qword_1000455B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000455B8);
  }

  return result;
}

uint64_t sub_10001E154(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for MobileAssetsHandler()
{
  result = qword_1000455F0;
  if (!qword_1000455F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E1B8()
{
  result = type metadata accessor for Logger();
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

unint64_t sub_10001E274()
{
  result = qword_1000456C8;
  if (!qword_1000456C8)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000456C8);
  }

  return result;
}

void *sub_10001E2E4(void *a1)
{
  v2 = v1;
  v1[2] = 0;
  v1[3] = 0;
  v4 = [objc_allocWithZone(MADownloadOptions) init];
  [v4 setAllowsCellularAccess:1];
  [v4 setRequiresPowerPluggedIn:1];
  [v4 setCanUseLocalCacheServer:1];
  if (qword_1000453A0 != -1)
  {
    swift_once();
  }

  [v4 setTimeoutIntervalForResource:qword_1000455A0];
  v2[4] = v4;
  v2[5] = 0xD000000000000024;
  v2[6] = 0x8000000100036F70;
  v2[7] = 0xD000000000000028;
  v2[8] = 0x8000000100036FA0;
  static Logger.mobileAsset.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "MobileAssetsHandler init", v7, 2u);
  }

  v8 = [objc_opt_self() sharedScheduler];
  v9 = v2[7];
  v10 = v2[8];

  v11 = String._bridgeToObjectiveC()();

  v15[4] = sub_10001E574;
  v15[5] = v2;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10001BACC;
  v15[3] = &unk_100041C18;
  v12 = _Block_copy(v15);
  v13 = a1;

  [v8 registerForTaskWithIdentifier:v11 usingQueue:v13 launchHandler:v12];
  _Block_release(v12);

  return v2;
}

uint64_t sub_10001E594()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10001E5DC(__int16 a1)
{
  v3 = *v1;
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_100008388();
    *(v5 + 64) = a1;
  }

  return result;
}

uint64_t (*sub_10001E63C(uint64_t a1))(uint64_t *a1)
{
  *a1 = *v1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 64);
  }

  else
  {
    v4 = -1;
  }

  *(a1 + 8) = v4;
  return sub_10001E6AC;
}

uint64_t sub_10001E6AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_100008388();
    *(v4 + 64) = v2;
  }

  return result;
}

uint64_t sub_10001E718(uint64_t a1)
{
  v3 = *v1;
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10002B070(a1);
  }

  return result;
}

unint64_t sub_10001E774(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001712C(&qword_100045800, &qword_1000362D0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);
        sub_10001F124();

        v20 = v19;
        swift_dynamicCast();
        sub_10000E4E0(&v26, v28);
        sub_10000E4E0(v28, v29);
        sub_10000E4E0(v29, &v27);
        result = sub_10000710C(v18, v17);
        if (v21)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_10000AE7C(v12);
          result = sub_10000E4E0(&v27, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v22 = (v2[6] + 16 * result);
          *v22 = v18;
          v22[1] = v17;
          result = sub_10000E4E0(&v27, (v2[7] + 32 * result));
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_10001E9D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001712C(&qword_100045800, &qword_1000362D0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_10000E4E0(&v27, v29);
        sub_10000E4E0(v29, v30);
        sub_10000E4E0(v30, &v28);
        result = sub_10000710C(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_10000AE7C(v12);
          result = sub_10000E4E0(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_10000E4E0(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10001EC94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Config.WorkerConfigs();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v46 = &v35 - v11;
  result = __chkstk_darwin(v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_10001F170(&qword_100045810);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_10001F170(&qword_100045818);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001F01C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  return sub_10001EC94(*a1, *a2) & ~(v2 ^ v4) & ~(v3 ^ v5) & 1;
}

uint64_t sub_10001F078(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10001F08C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_10001F0D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001F124()
{
  result = qword_100045808;
  if (!qword_100045808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100045808);
  }

  return result;
}

uint64_t sub_10001F170(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Config.WorkerConfigs();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001F1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000289A4(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for FeatureState(0);
    v16 = *(v9 - 8);
    sub_1000108FC(v8 + *(v16 + 72) * v7, a3, type metadata accessor for FeatureState);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for FeatureState(0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a3;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t sub_10001F2DC(uint64_t a1)
{
  v27 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v32 = &_swiftEmptyArrayStorage;
  sub_10000799C(0, v2 & ~(v2 >> 63), 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v27)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
  }

  v29 = result;
  v30 = v5;
  v31 = v27 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v26 = v2;
    while (v7 < v2)
    {
      if (__OFADD__(v7++, 1))
      {
        goto LABEL_35;
      }

      v11 = v29;
      v10 = v30;
      v12 = v31;
      v13 = *(sub_1000079BC(v29, v30, v31, a1) + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);

      v32 = v3;
      v15 = v3[2];
      v14 = v3[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_10000799C((v14 > 1), v15 + 1, 1);
        v3 = v32;
      }

      v3[2] = v15 + 1;
      v3[v15 + 4] = v13;
      if (v27)
      {
        if (!v12)
        {
          goto LABEL_40;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v26;
        sub_10001712C(&qword_100045990, &qword_1000360D8);
        v8 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v8(v28, 0);
        if (v7 == v26)
        {
LABEL_32:
          sub_100007BDC(v29, v30, v31);
          return v3;
        }
      }

      else
      {
        if (v12)
        {
          goto LABEL_41;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        v16 = 1 << *(a1 + 32);
        if (v11 >= v16)
        {
          goto LABEL_36;
        }

        v17 = v11 >> 6;
        v18 = *(a1 + 56 + 8 * (v11 >> 6));
        if (((v18 >> v11) & 1) == 0)
        {
          goto LABEL_37;
        }

        if (*(a1 + 36) != v10)
        {
          goto LABEL_38;
        }

        v19 = v18 & (-2 << (v11 & 0x3F));
        if (v19)
        {
          v16 = __clz(__rbit64(v19)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v17 << 6;
          v21 = v17 + 1;
          v22 = (a1 + 64 + 8 * v17);
          while (v21 < (v16 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              result = sub_100007BDC(v11, v10, 0);
              v16 = __clz(__rbit64(v23)) + v20;
              goto LABEL_31;
            }
          }

          result = sub_100007BDC(v11, v10, 0);
        }

LABEL_31:
        v25 = *(a1 + 36);
        v29 = v16;
        v30 = v25;
        v31 = 0;
        v2 = v26;
        if (v7 == v26)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void *sub_10001F624(void *a1)
{
  v133 = a1;
  ObjectType = swift_getObjectType();
  *(v1 + OBJC_IVAR____TtC15audioanalyticsd6Server_systemMonitor) = 0;
  v132 = OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue;
  v136 = sub_100004C54(0, &qword_1000453C8, OS_dispatch_queue_ptr);
  v131 = "audioanalyticsd.Server";
  v2 = type metadata accessor for DispatchQoS();
  v138 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v137 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  static DispatchQoS.default.getter();
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v135 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v134 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = &_swiftEmptyArrayStorage;
  v142 = sub_100001CA8(&unk_100045970, &type metadata accessor for OS_dispatch_queue.Attributes);
  v141 = sub_10001712C(&qword_1000453D0, &qword_100035C88);
  v140 = sub_100001C18(&qword_100045980, &qword_1000453D0, &qword_100035C88);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v130 = v8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v127 = *(v7 + 104);
  v128 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v129 = v6;
  v127(&v125 - v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v132[v139] = v11;
  v12 = OBJC_IVAR____TtC15audioanalyticsd6Server_mobileAssetsQueue;
  v132 = "rver.serverQueue";
  __chkstk_darwin(v11);
  v13 = static DispatchQoS.background.getter();
  __chkstk_darwin(v13);
  v143 = &_swiftEmptyArrayStorage;
  v14 = dispatch thunk of SetAlgebra.init<A>(_:)();
  __chkstk_darwin(v14);
  v15 = v10;
  v16 = v127;
  v127(&v125 - v9, v15, v6);
  v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v132 = v12;
  v18 = v139;
  *(v139 + v12) = v17;
  *&v18[OBJC_IVAR____TtC15audioanalyticsd6Server_clientServerInstances] = &_swiftEmptySetSingleton;
  *&v18[OBJC_IVAR____TtC15audioanalyticsd6Server_xpcConnections] = &_swiftEmptySetSingleton;
  *&v18[OBJC_IVAR____TtC15audioanalyticsd6Server_activeReporterIDs] = &_swiftEmptySetSingleton;
  v19 = v18;
  v131 = OBJC_IVAR____TtC15audioanalyticsd6Server_clientConnectionMonitorQueue;
  __chkstk_darwin(v17);
  v20 = static DispatchQoS.unspecified.getter();
  __chkstk_darwin(v20);
  v143 = &_swiftEmptyArrayStorage;
  v21 = dispatch thunk of SetAlgebra.init<A>(_:)();
  __chkstk_darwin(v21);
  v16(&v125 - v9, v128, v129);
  v22 = v19;
  *&v131[v19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = OBJC_IVAR____TtC15audioanalyticsd6Server_clientConnectionMonitorFrequency;
  static Double.seconds(_:)();
  *&v19[v23] = v24;
  v25 = OBJC_IVAR____TtC15audioanalyticsd6Server_logger;
  static Logger.service.getter();
  v26 = type metadata accessor for Logger();
  v27 = *(v26 - 8);
  v28 = v27[8];
  __chkstk_darwin(v26);
  v30 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v27[2];
  v137 = (v27 + 2);
  v138 = v29;
  v136 = v31;
  v31(v30, &v19[v25], v26);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Starting Server.", v34, 2u);
  }

  v36 = v27[1];
  v35 = v27 + 1;
  v140 = v36;
  v36(v30, v26);
  v141 = v26;
  v37 = v133;
  if (v133)
  {
    v38 = v133;
  }

  else
  {
    static Constants.machServiceName.getter();
    v39 = objc_allocWithZone(NSXPCListener);
    v40 = String._bridgeToObjectiveC()();

    v38 = [v39 initWithMachServiceName:v40];
  }

  *&v19[OBJC_IVAR____TtC15audioanalyticsd6Server_listener] = v38;
  v41 = *&v132[v19];
  v42 = type metadata accessor for MobileAssetsHandler();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = v41;
  v46 = v37;
  v47 = sub_10001E2E4(v45);

  v142 = v47;
  v48 = MobileAssetsHandler.getMobileAssetsConfigPath()();
  if (!v48.value._object)
  {
    v49 = &_swiftEmptyArrayStorage;
    if ((static DeviceUtilities.isInternalBuild.getter() & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v49 = sub_10002C2D0(0, 1, 1, &_swiftEmptyArrayStorage);
  v51 = *(v49 + 2);
  v50 = *(v49 + 3);
  if (v51 >= v50 >> 1)
  {
    v49 = sub_10002C2D0((v50 > 1), v51 + 1, 1, v49);
  }

  *(v49 + 2) = v51 + 1;
  *&v49[16 * v51 + 32] = v48;
  if (static DeviceUtilities.isInternalBuild.getter())
  {
LABEL_12:
    type metadata accessor for Config();
    v52 = static Config.assetConfigPath.getter();
    v54 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_10002C2D0(0, *(v49 + 2) + 1, 1, v49);
    }

    v56 = *(v49 + 2);
    v55 = *(v49 + 3);
    if (v56 >= v55 >> 1)
    {
      v49 = sub_10002C2D0((v55 > 1), v56 + 1, 1, v49);
    }

    *(v49 + 2) = v56 + 1;
    v57 = &v49[16 * v56];
    *(v57 + 4) = v52;
    *(v57 + 5) = v54;
  }

LABEL_17:
  v58 = v141;
  v59 = sub_100026818(v49);
  if (!v59)
  {
    __chkstk_darwin(0);
    v121 = &v125 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
    static Logger.config.getter();
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&_mh_execute_header, v122, v123, "Failed to find a config! Exiting.", v124, 2u);
    }

    v140(v121, v141);
    exit(-1);
  }

  v60 = v59;
  v134 = v46;
  v135 = v35;

  v61 = OBJC_IVAR____TtC15audioanalyticsd6Server_config;
  *&v19[OBJC_IVAR____TtC15audioanalyticsd6Server_config] = v60;
  type metadata accessor for Config();

  v133 = v60;
  Config.sortableConfigVersion.getter();
  static Config.configVersion.setter();
  v62 = *&v19[v61];
  v63 = qword_1000453B0;

  if (v63 != -1)
  {
    swift_once();
  }

  Config.updateNeededPreviousFields(workers:)(qword_100046140);

  v64 = static Constants.unknownReporterID.getter();
  v65 = [objc_allocWithZone(NSProcessInfo) init];
  v66 = [v65 processIdentifier];

  v67 = *&v22[v61];
  v68 = type metadata accessor for Session();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();

  *&v22[OBJC_IVAR____TtC15audioanalyticsd6Server_singleMessageSession] = sub_10002B564(v64, v66, 0xD000000000000014, 0x80000001000375F0, v67, 1);
  v144.receiver = v22;
  v144.super_class = ObjectType;
  v71 = objc_msgSendSuper2(&v144, "init");
  sub_10002059C();
  v72 = OBJC_IVAR____TtC15audioanalyticsd6Server_config;
  v73 = *&v71[OBJC_IVAR____TtC15audioanalyticsd6Server_config];
  swift_beginAccess();
  if (static SystemMonitor.shared)
  {
    v74 = v71;

    sub_10002ED48();
  }

  else
  {
    v75 = v71;
  }

  v76 = type metadata accessor for SystemMonitor(0);
  v77 = *(v76 + 48);
  v78 = *(v76 + 52);
  v79 = swift_allocObject();
  v80 = v71;

  v82 = sub_100026C70(v81, v80, v79);

  static SystemMonitor.shared = v82;

  type metadata accessor for TailspinWorker();
  v83 = *&v71[v72];

  static TailspinWorker.initialize(config:)();

  if (&type metadata accessor for DiagnosticManager && &type metadata for DiagnosticManager && &metaclass for DiagnosticManager && &nominal type descriptor for DiagnosticManager)
  {
    type metadata accessor for DiagnosticManager();
    v84 = *&v71[v72];

    static DiagnosticManager.initialize(config:)();
  }

  v85 = OBJC_IVAR____TtC15audioanalyticsd6Server_listener;
  v86 = *&v80[OBJC_IVAR____TtC15audioanalyticsd6Server_listener];
  v87 = v80;
  [v86 setDelegate:v87];
  [*&v80[v85] activate];
  v88 = swift_allocObject();
  *(v88 + 16) = v87;
  v89 = v142;
  v91 = *(v142 + 16);
  v90 = *(v142 + 24);
  *(v142 + 16) = sub_100027990;
  *(v89 + 24) = v88;
  v92 = sub_10001E154(v91);
  __chkstk_darwin(v92);
  v94 = &v125 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v87;
  v132 = v95;
  v136(v94, &v95[v87], v58);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&_mh_execute_header, v96, v97, "Server created", v98, 2u);
  }

  v140(v94, v58);
  v99 = v72;
  v100 = *&v71[v72];
  v101 = type metadata accessor for ServerConfig();
  v102 = *(v101 - 8);
  v103 = *(v102 + 64);
  __chkstk_darwin(v101);
  v104 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;

  Config.serverConfig.getter();

  LOBYTE(v100) = ServerConfig.monitorClientConnections.getter();
  v105 = *(v102 + 8);
  v106 = v105(&v125 - v104, v101);
  if (v100)
  {
    v106 = sub_100020C38();
  }

  v107 = *&v71[v99];
  __chkstk_darwin(v106);

  Config.serverConfig.getter();

  v108 = ServerConfig.osTransactionTimeout.getter();
  v110 = v109;
  v111 = v105(&v125 - v104, v101);
  if (v110)
  {
    __chkstk_darwin(v111);
    v113 = &v125 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
    v114 = v139;
    v115 = v141;
    v136(v113, &v132[v139], v141);
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&_mh_execute_header, v116, v117, "No osTransactionTimeout found!", v118, 2u);
    }

    else
    {
    }

    v140(v113, v115);
  }

  else
  {
    v114 = v139;
    sub_100001D38(*&v108);
  }

  return v114;
}

void sub_10002059C()
{
  v1 = [objc_allocWithZone(CLISignalHandler) initWithSignal:15];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v8[4] = sub_100027C80;
  v8[5] = v2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100022560;
  v8[3] = &unk_100042288;
  v3 = _Block_copy(v8);
  v4 = v0;

  [v1 setExecutionBlock:v3];
  _Block_release(v3);
  [v1 setEnabled:1];
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Listening for SIGTERM.", v7, 2u);
  }
}

uint64_t sub_100020724(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v37 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v42 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v39 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for DispatchTime();
  v15 = *(v38 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v38);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v35 - v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Scheduling server exit.", v24, 2u);
  }

  v35[1] = *&v3[OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue];
  static DispatchTime.now()();
  *v14 = 1;
  (*(v11 + 104))(v14, enum case for DispatchTimeInterval.seconds(_:), v10);
  + infix(_:_:)();
  (*(v11 + 8))(v14, v10);
  v35[0] = *(v15 + 8);
  v25 = v38;
  (v35[0])(v19, v38);
  v26 = swift_allocObject();
  v28 = v36;
  v27 = v37;
  v26[2] = v3;
  v26[3] = v28;
  v26[4] = v27;
  v26[5] = 1;
  aBlock[4] = sub_100027A34;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_100042100;
  v29 = _Block_copy(aBlock);
  v30 = v3;
  v31 = v39;
  static DispatchQoS.unspecified.getter();
  v45 = &_swiftEmptyArrayStorage;
  sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0);
  v32 = v42;
  v33 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v29);
  (*(v43 + 8))(v32, v33);
  (*(v40 + 8))(v31, v41);
  (v35[0])(v21, v25);
}

uint64_t sub_100020C38()
{
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v24 - 8);
  v1 = *(v26 + 64);
  __chkstk_darwin(v24);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v23 = *(v25 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v25);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v22 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  v20 = *(v0 + OBJC_IVAR____TtC15audioanalyticsd6Server_clientConnectionMonitorQueue);
  static DispatchTime.now()();
  v15 = *(v0 + OBJC_IVAR____TtC15audioanalyticsd6Server_clientConnectionMonitorFrequency);
  + infix(_:_:)();
  v21 = *(v8 + 8);
  v21(v12, v7);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000279BC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_100041FE8;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0);
  v18 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);
  (*(v26 + 8))(v3, v18);
  (*(v23 + 8))(v6, v25);
  v21(v14, v22);
}

uint64_t sub_10002101C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v21 = *(v8 - 8);
  v22 = v8;
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Message();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v20[1] = *(v2 + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v13 + 32))(v17 + v16, v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = sub_100027C1C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_100042238;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v7, v4);
  (*(v21 + 8))(v11, v22);
}

void sub_1000213EC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_100013824(a2);
  }

  else
  {
    static Logger.service.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Server is gone. {action=broadcast}", v12, 2u);
    }

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100021564(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v2[OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue];
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v17;
  v18 = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v16, v12);
  if (v18)
  {
    sub_10001A150();
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = a1;
    aBlock[4] = sub_100027978;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000016B8;
    aBlock[3] = &unk_100041EF8;
    v21 = _Block_copy(aBlock);
    v22 = v2;

    static DispatchQoS.unspecified.getter();
    v31 = &_swiftEmptyArrayStorage;
    sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
    v27 = a1;
    sub_10001712C(&unk_100045920, &qword_100035FC0);
    sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v30 + 8))(v7, v4);
    (*(v28 + 8))(v11, v29);

    v23 = OBJC_IVAR____TtC15audioanalyticsd6Server_clientServerInstances;
    swift_beginAccess();
    v24 = *&v22[v23];

    v25 = sub_10002B3F8(v27, v24);

    return v25 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100021970(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_100025B38(a2);
  swift_endAccess();
}

uint64_t sub_1000219E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OsTransactionHandler();
  static OsTransactionHandler.shared.getter();
  v7 = OsTransactionHandler.inactive()();

  if (v7)
  {
LABEL_10:
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Exit requested, and no active transaction. Calling exit.", v15, 2u);
    }

    exit(0);
  }

  if (__OFSUB__(a3, a4))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  if (a3 - a4 <= a2)
  {
    if (v10)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Exit requested, and timeout reached. Calling exit.", v16, 2u);
    }

    exit(0);
  }

  if (v10)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Exit requested, but active transactions. Will try again in 10 seconds.", v11, 2u);
  }

  if (__OFADD__(a2, a4))
  {
    goto LABEL_9;
  }

  return sub_100020724(a3, a2 + a4);
}

void sub_100021BC8()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16[1] = *(Strong + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
    v18 = Strong;
    v11 = swift_allocObject();
    v17 = v6;
    v12 = v11;
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000279C4;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000016B8;
    aBlock[3] = &unk_100042010;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v19 = &_swiftEmptyArrayStorage;
    sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
    sub_10001712C(&unk_100045920, &qword_100035FC0);
    v16[0] = v5;
    sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);
    (*(v1 + 8))(v4, v0);
    (*(v17 + 8))(v9, v16[0]);

    v15 = v18;
    sub_100020C38(v14);
  }
}

uint64_t sub_100021EFC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = OBJC_IVAR____TtC15audioanalyticsd6Server_clientServerInstances;
  swift_beginAccess();
  v3 = *&v1[v2];
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *&v1[v2];
    }

    __CocoaSet.makeIterator()();
    type metadata accessor for ClientServerInstance();
    sub_100001CA8(&unk_100045960, type metadata accessor for ClientServerInstance);
    Set.Iterator.init(_cocoa:)();
    v3 = v47;
    v5 = v48;
    v7 = v49;
    i = v50;
    v8 = v51;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    v12 = *&v1[v2];

    i = 0;
  }

  v40 = v7;
  v13 = (v7 + 64) >> 6;
  v43 = v3;
  v44 = v1;
  v42 = v5;
  v41 = v13;
LABEL_11:
  v14 = i;
  if (v3 < 0)
  {
    goto LABEL_20;
  }

  do
  {
    while (1)
    {
      v15 = v14;
      v16 = v8;
      for (i = v14; !v16; ++v15)
      {
        i = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_55;
        }

        if (i >= v13)
        {
          goto LABEL_46;
        }

        v16 = *(v5 + 8 * i);
      }

      v17 = (v16 - 1) & v16;
      v18 = *(*(v3 + 48) + ((i << 9) | (8 * __clz(__rbit64(v16)))));

      if (!v18)
      {
        goto LABEL_46;
      }

LABEL_22:
      if (sub_10001A9B8())
      {
        break;
      }

      v14 = i;
      v8 = v17;
      if (v3 < 0)
      {
        goto LABEL_20;
      }
    }

    v45 = v17;
    v19 = OBJC_IVAR____TtC15audioanalyticsd6Server_xpcConnections;
    swift_beginAccess();
    v20 = *&v1[v19];
    if ((v20 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
      sub_1000279CC();
      Set.Iterator.init(_cocoa:)();
      v21 = v52;
      v22 = v53;
      v23 = v54;
      v5 = v55;
      v1 = v56;
    }

    else
    {
      v24 = -1 << *(v20 + 32);
      v22 = v20 + 56;
      v23 = ~v24;
      v25 = -v24;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v1 = (v26 & *(v20 + 56));
      v21 = v20;
      swift_bridgeObjectRetain_n();
      v5 = 0;
    }

    v27 = (v23 + 64) >> 6;
    if (v21 < 0)
    {
LABEL_36:
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_41;
      }

      sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
      swift_dynamicCast();
      v32 = v46;
      v30 = v5;
      v31 = v1;
      if (!v46)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    while (1)
    {
      v28 = v5;
      v29 = v1;
      v30 = v5;
      if (!v1)
      {
        while (1)
        {
          v30 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v30 >= v27)
          {
            goto LABEL_41;
          }

          v29 = *(v22 + 8 * v30);
          ++v28;
          if (v29)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_34:
      v31 = (v29 - 1) & v29;
      v32 = *(*(v21 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
      if (!v32)
      {
        break;
      }

LABEL_38:
      v33 = [v32 processIdentifier];
      if (v33 == *&v18[OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid])
      {
        sub_10000750C();

        v34 = v32;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v35 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v43;
        v1 = v44;
        v13 = v41;
        v5 = v42;
        v8 = v45;
        goto LABEL_11;
      }

      v5 = v30;
      v1 = v31;
      if (v21 < 0)
      {
        goto LABEL_36;
      }
    }

LABEL_41:
    sub_10000750C();

    v14 = i;
    v8 = v45;
    v3 = v43;
    v1 = v44;
    v13 = v41;
    v5 = v42;
  }

  while ((v43 & 0x8000000000000000) == 0);
LABEL_20:
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for ClientServerInstance();
    swift_dynamicCast();
    v18 = v46;
    i = v14;
    v17 = v8;
    if (v46)
    {
      goto LABEL_22;
    }
  }

LABEL_46:
  result = sub_10000750C();
  v5 = &_swiftEmptyArrayStorage;
  if (!(&_swiftEmptyArrayStorage >> 62))
  {
    v36 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_48;
    }

LABEL_57:
  }

LABEL_56:
  result = _CocoaArrayWrapper.endIndex.getter();
  v36 = result;
  if (!result)
  {
    goto LABEL_57;
  }

LABEL_48:
  if (v36 >= 1)
  {
    for (j = 0; j != v36; ++j)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v38 = *(v5 + 8 * j + 32);
      }

      v39 = v38;
      [v38 invalidate];
    }

    goto LABEL_57;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000224B0()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "Got SIGTERM. Should die within 2 seconds.", v2, 2u);
  }

  return sub_100020724(2, 0);
}

uint64_t sub_100022560(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_1000225E4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for Server()
{
  result = qword_1000458A8;
  if (!qword_1000458A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002277C()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100022854(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v34 = a5;
  LODWORD(v33) = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v29 = v7;
    v30 = v13;
    v31 = v12;
    v32 = v8;

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 67109379;
      v23 = v33;
      *(v21 + 4) = v33;
      *(v21 + 8) = 2081;
      *(v21 + 10) = sub_100013120(a3, a4, aBlock);
      _os_log_impl(&_mh_execute_header, v19, v20, "XPC connection was interrupted. { pid=%d, clientProcessName=%{private}s }", v21, 0x12u);
      sub_10000AE7C(v22);
    }

    else
    {

      v23 = v33;
    }

    v33 = *&v18[OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue];
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v26 = v34;
    *(v25 + 16) = v24;
    *(v25 + 24) = v26;
    *(v25 + 32) = v23;
    *(v25 + 40) = a3;
    *(v25 + 48) = a4;
    aBlock[4] = sub_100027980;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000016B8;
    aBlock[3] = &unk_100041F48;
    v27 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v35 = &_swiftEmptyArrayStorage;
    sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
    sub_10001712C(&unk_100045920, &qword_100035FC0);
    sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0);
    v28 = v29;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);
    (*(v32 + 8))(v11, v28);
    (*(v30 + 8))(v16, v31);
  }

  return result;
}

void sub_100022CAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (sub_100021564(a2))
    {
    }

    else
    {

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v23 = v22;
        *v21 = 67109379;
        *(v21 + 4) = a3;
        *(v21 + 8) = 2081;
        *(v21 + 10) = sub_100013120(a4, a5, &v23);
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to remove client. { pid=%d, clientProcessName=%{private}s }", v21, 0x12u);
        sub_10000AE7C(v22);
      }
    }
  }

  else
  {
    static Logger.service.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Server is gone. { action=interruptionHandler }", v18, 2u);
    }

    (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_100022F20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, int a6)
{
  v48 = a6;
  v55 = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  __chkstk_darwin(v9);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  v12 = *(v50 + 64);
  __chkstk_darwin(v52);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v27 = v26;
    (*(v15 + 8))(v18, v14);
    v28 = a3;

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v31 = 67175171;
      *(v31 + 4) = [v28 processIdentifier];

      *(v31 + 8) = 2081;
      *(v31 + 10) = sub_100013120(v55, a5, &aBlock);
      *(v31 + 18) = 2049;
      *(v31 + 20) = v27;
      _os_log_impl(&_mh_execute_header, v29, v30, "XPC connection was invalidated. { pid=%{private}d, clientProcessName=%{private}s, uptimeSeconds=%{private}f }", v31, 0x1Cu);
      sub_10000AE7C(v32);
    }

    else
    {
    }

    v37 = String._bridgeToObjectiveC()();
    v38 = swift_allocObject();
    *(v38 + 16) = a2;
    *(v38 + 24) = v27;
    v61 = sub_100027958;
    v62 = v38;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_100023784;
    v60 = &unk_100041E58;
    v39 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v39);

    v47 = *&v25[OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue];
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = a2;
    *(v41 + 32) = v48;
    *(v41 + 40) = v55;
    *(v41 + 48) = a5;
    *(v41 + 56) = v28;
    v61 = sub_100027964;
    v62 = v41;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_1000016B8;
    v60 = &unk_100041EA8;
    v42 = _Block_copy(&aBlock);
    v43 = v28;

    v44 = v49;
    static DispatchQoS.unspecified.getter();
    v56 = &_swiftEmptyArrayStorage;
    sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
    sub_10001712C(&unk_100045920, &qword_100035FC0);
    sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0);
    v45 = v51;
    v46 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);
    (*(v53 + 8))(v45, v46);
    (*(v50 + 8))(v44, v52);
  }

  else
  {
    static Logger.service.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Server is gone. { action=invalidationHandler }", v35, 2u);
    }

    return (*(v20 + 8))(v23, v19);
  }
}

unint64_t sub_100023634(uint64_t a1, double a2)
{
  sub_10001712C(&qword_100045950, &qword_100036350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100035FA0;
  *(inited + 32) = 0x4E737365636F7270;
  *(inited + 40) = 0xEB00000000656D61;
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = objc_allocWithZone(NSString);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithString:v8];

  *(inited + 48) = v9;
  *(inited + 56) = 0x73646E6F636573;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithDouble:a2];
  v10 = sub_10001759C(inited);
  swift_setDeallocating();
  sub_10001712C(&qword_100045958, &qword_100036358);
  swift_arrayDestroy();
  return v10;
}

Class sub_100023784(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100004C54(0, &qword_100045948, NSObject_ptr);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

void sub_100023820(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, void *a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if ((sub_100021564(a2) & 1) == 0)
    {

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29[0] = v21;
        *v20 = 67174915;
        *(v20 + 4) = a3;
        *(v20 + 8) = 2081;
        *(v20 + 10) = sub_100013120(a4, a5, v29);
        _os_log_impl(&_mh_execute_header, v18, v19, "Failed to remove client. { pid=%{private}d, clientProcessName=%{private}s }", v20, 0x12u);
        sub_10000AE7C(v21);
      }
    }

    swift_beginAccess();
    v22 = sub_100025D0C(a6);
    swift_endAccess();
    if (!v22)
    {

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v29[0] = v25;
        *v24 = 67109379;
        *(v24 + 4) = a3;
        *(v24 + 8) = 2081;
        *(v24 + 10) = sub_100013120(a4, a5, v29);
        _os_log_impl(&_mh_execute_header, v22, v23, "Failed to remove connection. { pid=%d, clientProcessName=%{private}s }", v24, 0x12u);
        sub_10000AE7C(v25);
      }
    }
  }

  else
  {
    static Logger.service.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Server is gone. { action=invalidationHandler }", v28, 2u);
    }

    (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_100023BAC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(*a1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid) != *(a2 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid))
  {
    return 1;
  }

  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (v3 == *(a2 + 24) && v4 == *(a2 + 32))
  {
    return 0;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t sub_100023C20(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10002E4B0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100023EF8(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100023C9C(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for SystemMonitorConfig.MonitorType();
  sub_100001CA8(&qword_1000459B0, &type metadata accessor for SystemMonitorConfig.MonitorType);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for FeatureInfo(0);
  v3 = (a1 + v2[5]);
  v4 = *v3;
  v5 = v3[1];
  String.hash(into:)();
  v6 = (a1 + v2[6]);
  v7 = *v6;
  v8 = v6[1];
  String.hash(into:)();
  v9 = (a1 + v2[7]);
  v10 = *v9;
  v11 = v9[1];
  String.hash(into:)();
  v12 = (a1 + v2[8]);
  v13 = *v12;
  v14 = v12[1];
  String.hash(into:)();
  v15 = v2[9];
  type metadata accessor for SystemMonitorConfig.DataType();
  sub_100001CA8(&qword_1000459B8, &type metadata accessor for SystemMonitorConfig.DataType);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100023DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10001712C(&qword_100045998, &qword_100036360);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for FeatureInfo(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000108FC(a3, v12, type metadata accessor for FeatureInfo);
  sub_100027BAC(a1, v8);
  return sub_10002ABDC(v8, v12);
}

Swift::Int sub_100023EF8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Config();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100024114(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100023FFC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100023FFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    type metadata accessor for Config();
    sub_100001CA8(&unk_1000459D0, &type metadata accessor for Config);
    v8 = v7 + 8 * v4 - 8;
    v9 = v6 - v4;
LABEL_5:
    v10 = *(v7 + 8 * v4);
    v11 = v9;
    v12 = v8;
    while (1)
    {
      v15 = *v12;
      result = dispatch thunk of static Comparable.< infix(_:_:)();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        v8 += 8;
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v13 = *v12;
      *v12 = v12[1];
      v12[1] = v13;
      --v12;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100024114(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v91 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_92:
    v7 = *v91;
    if (!*v91)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_10002E400(v9);
      v9 = result;
    }

    v83 = *(v9 + 2);
    if (v83 >= 2)
    {
      while (1)
      {
        v84 = *v6;
        if (!*v6)
        {
          goto LABEL_128;
        }

        v6 = (v83 - 1);
        v85 = *&v9[16 * v83];
        v86 = *&v9[16 * v83 + 24];
        sub_10002478C((v84 + 8 * v85), (v84 + 8 * *&v9[16 * v83 + 16]), (v84 + 8 * v86), v7);
        if (v5)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10002E400(v9);
        }

        if (v83 - 2 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v87 = &v9[16 * v83];
        *v87 = v85;
        *(v87 + 1) = v86;
        result = sub_10002E374(v6);
        v83 = *(v9 + 2);
        v6 = a3;
        if (v83 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v89 = v5;
      v11 = *(*v6 + 8 * v8);
      v12 = 8 * v10;
      v13 = (*v6 + 8 * v10);
      v15 = *v13;
      v14 = v13 + 2;
      type metadata accessor for Config();
      sub_100001CA8(&unk_1000459D0, &type metadata accessor for Config);
      result = dispatch thunk of static Comparable.< infix(_:_:)();
      v16 = v10;
      v17 = result;
      v18 = v16;
      v19 = (v16 + 2);
      while (v7 != v19)
      {
        v94 = *(v14 - 1);
        v96 = *v14;
        result = dispatch thunk of static Comparable.< infix(_:_:)();
        ++v19;
        ++v14;
        if ((v17 & 1) != (result & 1))
        {
          v7 = (v19 - 1);
          break;
        }
      }

      v5 = v89;
      v6 = a3;
      if (v17)
      {
        if (v7 < v18)
        {
          goto LABEL_121;
        }

        v10 = v18;
        if (v18 < v7)
        {
          v20 = 8 * v7 - 8;
          v21 = v7;
          v22 = v18;
          do
          {
            if (v22 != --v21)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v23 = *(v24 + v12);
              *(v24 + v12) = *(v24 + v20);
              *(v24 + v20) = v23;
            }

            ++v22;
            v20 -= 8;
            v12 += 8;
          }

          while (v22 < v21);
        }

        v8 = v7;
      }

      else
      {
        v8 = v7;
        v10 = v18;
      }
    }

    v25 = v6[1];
    if (v8 < v25)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_120;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v8 < v10)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v36 = v5;
    if ((result & 1) == 0)
    {
      result = sub_10002C0C8(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v38 = *(v9 + 2);
    v37 = *(v9 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_10002C0C8((v37 > 1), v38 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v39;
    v40 = &v9[16 * v38];
    *(v40 + 4) = v10;
    *(v40 + 5) = v8;
    v41 = *v91;
    if (!*v91)
    {
      goto LABEL_129;
    }

    if (v38)
    {
      v5 = v36;
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v9 + 4);
          v44 = *(v9 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_61:
          if (v46)
          {
            goto LABEL_108;
          }

          v59 = &v9[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_111;
          }

          v65 = &v9[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_115;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v69 = &v9[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_75:
        if (v64)
        {
          goto LABEL_110;
        }

        v72 = &v9[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v75 < v63)
        {
          goto LABEL_4;
        }

LABEL_82:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v81 = *&v9[16 * v80 + 32];
        v7 = *&v9[16 * v42 + 40];
        sub_10002478C((*v6 + 8 * v81), (*v6 + 8 * *&v9[16 * v42 + 32]), (*v6 + 8 * v7), v41);
        if (v5)
        {
        }

        if (v7 < v81)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10002E400(v9);
        }

        if (v80 >= *(v9 + 2))
        {
          goto LABEL_105;
        }

        v82 = &v9[16 * v80];
        *(v82 + 4) = v81;
        *(v82 + 5) = v7;
        result = sub_10002E374(v42);
        v39 = *(v9 + 2);
        if (v39 <= 1)
        {
          goto LABEL_4;
        }
      }

      v47 = &v9[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_106;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_107;
      }

      v54 = &v9[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_109;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_112;
      }

      if (v58 >= v50)
      {
        v76 = &v9[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_116;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    v5 = v36;
LABEL_4:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_122;
  }

  v26 = v8;
  if (v10 + a4 >= v25)
  {
    v27 = v6[1];
  }

  else
  {
    v27 = v10 + a4;
  }

  if (v27 < v10)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v26 == v27)
  {
    v8 = v26;
    goto LABEL_40;
  }

  v90 = v5;
  v28 = *v6;
  type metadata accessor for Config();
  sub_100001CA8(&unk_1000459D0, &type metadata accessor for Config);
  v29 = v28 + 8 * v26 - 8;
  v7 = v10 - v26;
  v93 = v27;
LABEL_33:
  v30 = v26;
  v31 = *(v28 + 8 * v26);
  v32 = v7;
  v33 = v29;
  while (1)
  {
    v95 = *v33;
    result = dispatch thunk of static Comparable.< infix(_:_:)();
    if ((result & 1) == 0)
    {
LABEL_32:
      v26 = v30 + 1;
      v29 += 8;
      --v7;
      v8 = v93;
      if (v26 != v93)
      {
        goto LABEL_33;
      }

      v5 = v90;
      v6 = a3;
      goto LABEL_40;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    *v33 = v33[1];
    v33[1] = v34;
    --v33;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_10002478C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
      type metadata accessor for Config();
      sub_100001CA8(&unk_1000459D0, &type metadata accessor for Config);
LABEL_27:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v20 = *(v18 - 1);
        v18 -= 8;
        v23 = *v17;
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        v5 -= 8;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      type metadata accessor for Config();
      sub_100001CA8(&unk_1000459D0, &type metadata accessor for Config);
      while (1)
      {
        v24 = *v6;
        v22 = *v4;
        if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v7 = *v15;
      goto LABEL_18;
    }

LABEL_20:
    v6 = v7;
  }

LABEL_38:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

Swift::Int sub_100024A60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10001712C(&qword_100045940, &qword_100036348);
    v2 = static _SetStorage.convert(_:capacity:)();
    v18 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for ClientServerInstance();
      do
      {
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100024E68(v12 + 1);
        }

        v2 = v18;
        v3 = *(v18 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(*(v17 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
        v4 = *(v17 + 24);
        v5 = *(v17 + 32);
        String.hash(into:)();
        result = Hasher._finalize()();
        v7 = v18 + 56;
        v8 = -1 << *(v18 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v18 + 56 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v18 + 48) + 8 * v11) = v17;
        ++*(v18 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100024C78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10001712C(&qword_100045938, &qword_100036340);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000250D0(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100024E68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10001712C(&qword_100045940, &qword_100036348);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v18 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
      v20 = *(v18 + 24);
      v21 = *(v18 + 32);
      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1000250D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10001712C(&qword_100045938, &qword_100036340);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1000252F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  String.hash(into:)();
  Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1000253B4(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_100025438()
{
  v1 = v0;
  sub_10001712C(&qword_100045940, &qword_100036348);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

id sub_100025588()
{
  v1 = v0;
  sub_10001712C(&qword_100045938, &qword_100036340);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_1000256D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10001712C(&qword_100045940, &qword_100036348);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v17 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
      v19 = *(v17 + 24);
      v20 = *(v17 + 32);

      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_100025924(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10001712C(&qword_100045938, &qword_100036340);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_100025B38(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_100025EA4(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = *(v3 + 40);
  Hasher.init(_seed:)();
  v10 = *(a1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid);
  Hasher._combine(_:)(v10);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  String.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = -1 << *(v3 + 32);
  v15 = v13 & ~v14;
  if (((*(v3 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return 0;
  }

  v16 = ~v14;
  v17 = *(v3 + 48);
  v18 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
  while (1)
  {
    v19 = *(v17 + 8 * v15);
    if (*(v19 + v18) != v10)
    {
      goto LABEL_10;
    }

    v20 = *(v19 + 24) == v11 && *(v19 + 32) == v12;
    if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v18 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
LABEL_10:
    v15 = (v15 + 1) & v16;
    if (((*(v3 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }
  }

  v21 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v1;
  v25 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100025438();
    v23 = v25;
  }

  v24 = *(*(v23 + 48) + 8 * v15);
  sub_1000261D4(v15);
  result = v24;
  *v1 = v25;
  return result;
}

uint64_t sub_100025D0C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_10002606C();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100025588();
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_1000263B8(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_100025EA4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = sub_100024A60(v6, v5);
  v22 = v7;
  v8 = *(v7 + 40);
  Hasher.init(_seed:)();
  v9 = *(a2 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid);
  Hasher._combine(_:)(v9);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);

  String.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v7 + 32);
  v14 = v12 & ~v13;
  if (((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    goto LABEL_20;
  }

  v15 = ~v13;
  v16 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
  while (1)
  {
    v17 = *(*(v7 + 48) + 8 * v14);
    if (*(v17 + v16) == v9)
    {
      break;
    }

LABEL_3:
    v14 = (v14 + 1) & v15;
    if (((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v18 = *(v17 + 24) == v10 && *(v17 + 32) == v11;
  if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v16 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
    goto LABEL_3;
  }

  v19 = *(*(v7 + 48) + 8 * v14);
  sub_1000261D4(v14);
  if (v9 == *(v19 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid))
  {
    v20 = v10 == *(v19 + 24) && v11 == *(v19 + 32);
    if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      *v2 = v22;
      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_10002606C()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_100024C78(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1000263B8(v9);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000261D4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(*(v12 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
        v13 = *(v12 + 24);
        v14 = *(v12 + 32);

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 8 * v2);
          v19 = (v17 + 8 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1000263B8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_100026558(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10002C558(v3, 0);
  sub_1000265EC(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000265EC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100001C18(&qword_1000459C8, &qword_1000459C0, &unk_1000363B0);
          for (i = 0; i != v6; ++i)
          {
            sub_10001712C(&qword_1000459C0, &unk_1000363B0);
            v9 = sub_100026790(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Config();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100026790(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_100026810;
  }

  __break(1u);
  return result;
}

uint64_t sub_100026818(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v36 = 0;
  v37 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = 0;
  v6 = &_swiftEmptyArrayStorage;
  v39 = &_swiftEmptyArrayStorage;
  v7 = *(a1 + 16);
  v8 = (a1 + 40);
LABEL_2:
  v9 = &v8[2 * v5];
  while (1)
  {
    if (v7 == v5)
    {
      v39 = v6;
      type metadata accessor for Config();
      static Config.defaultConfigPathEncrypted.getter();
      default argument 2 of Config.init(configPath:allowUnknownFields:platform:encrypted:)();
      if (Config.__allocating_init(configPath:allowUnknownFields:platform:encrypted:)())
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v38 = sub_100026558(v16);
      v17 = v36;
      sub_100023C20(&v38);
      if (v17)
      {
        goto LABEL_35;
      }

      a1 = v38;
      v9 = v37;
      if (v38 < 0 || (v38 & 0x4000000000000000) != 0)
      {
        goto LABEL_28;
      }

      v18 = *(v38 + 16);
      if (v18)
      {
        goto LABEL_18;
      }

LABEL_29:

      return 0;
    }

    if (v5 >= v7)
    {
      break;
    }

    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_27;
    }

    v12 = *(v9 - 1);
    v11 = *v9;
    v13 = type metadata accessor for Config();

    v14._countAndFlagsBits = 1668179246;
    v14._object = 0xE400000000000000;
    String.hasSuffix(_:)(v14);
    default argument 2 of Config.init(configPath:allowUnknownFields:platform:encrypted:)();
    a1 = v13;
    ++v5;
    v9 += 2;
    if (Config.__allocating_init(configPath:allowUnknownFields:platform:encrypted:)())
    {
      a1 = &v39;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v39;
      v5 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (!v18)
  {
    goto LABEL_29;
  }

LABEL_18:
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
LABEL_32:
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:

    static Logger.config.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v24 = 136380931;
      v25 = Config.configPath.getter();
      v27 = sub_100013120(v25, v26, &v38);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2081;
      v28 = Config.sortableConfigVersion.getter();
      v30 = sub_100013120(v28, v29, &v38);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Server.findConfig returning. { path=%{private}s, configVersion=%{private}s }", v24, 0x16u);
      swift_arrayDestroy();
    }

    (*(v34 + 8))(v9, v35);
    return v21;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_32;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v20 < *(a1 + 16))
  {
    v21 = *(a1 + 8 * v20 + 32);

    goto LABEL_23;
  }

  __break(1u);
LABEL_35:

  __break(1u);
  return result;
}

uint64_t sub_100026C70(void (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v100 = a2;
  v113 = a1;
  v4 = sub_10001712C(&qword_100045998, &qword_100036360);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v99 = v88 - v6;
  v102 = type metadata accessor for SystemMonitorConfig.MonitorType();
  v107 = *(v102 - 8);
  v7 = *(v107 + 64);
  __chkstk_darwin(v102);
  v9 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for FeatureInfo(0);
  v103 = *(v98 - 8);
  v10 = *(v103 + 8);
  v11 = __chkstk_darwin(v98);
  v114 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v106 = v88 - v14;
  v101 = v15;
  __chkstk_darwin(v13);
  v104 = v88 - v16;
  v112 = type metadata accessor for Logger();
  v109 = *(v112 - 1);
  v17 = *(v109 + 64);
  __chkstk_darwin(v112);
  v111 = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for OS_dispatch_queue.Attributes();
  v19 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v110 = v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v28 = sub_100016F14(&_swiftEmptyArrayStorage);
  sub_10001712C(&qword_1000459A0, &qword_100035C80);
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  *(v29 + 16) = v28;
  *(a3 + 16) = v29;
  v108 = sub_100004C54(0, &qword_1000453C8, OS_dispatch_queue_ptr);
  static DispatchQoS.default.getter();
  (*(v22 + 104))(v25, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v21);
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100001CA8(&unk_100045970, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10001712C(&qword_1000453D0, &qword_100035C88);
  sub_100001C18(&qword_100045980, &qword_1000453D0, &qword_100035C88);
  v30 = v111;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = v112;
  v32 = v109;
  *(a3 + 40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v33 = OBJC_IVAR____TtC15audioanalyticsd13SystemMonitor_logger;
  static Logger.service.getter();
  v34 = *(v32 + 16);
  v115 = a3;
  v34(v30, a3 + v33, v31);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "SystemMonitor.init()", v37, 2u);
  }

  (*(v32 + 8))(v30, v31);
  v38 = v115;
  *(v115 + 32) = v113;

  v39 = sub_100032A70();
  *(v38 + 24) = v39;
  v40 = v39[2];
  if (v40)
  {
    v105 = OBJC_IVAR____TtC15audioanalyticsd13SystemMonitor_logger;
    v97 = v103[80];
    v41 = (v97 + 32) & ~v97;
    v42 = v39 + v41;
    v43 = *(v103 + 9);
    v112 = (v107 + 88);
    v113 = (v107 + 16);
    LODWORD(v111) = enum case for SystemMonitorConfig.MonitorType.defaults(_:);
    LODWORD(v110) = enum case for SystemMonitorConfig.MonitorType.notify(_:);
    v94 = enum case for SystemMonitorConfig.MonitorType.other(_:);
    v91 = (v107 + 8);
    v96 = v41;
    v93 = (v101 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v92 = v117;
    v88[1] = v39;

    *&v44 = 67109376;
    v90 = v44;
    *&v44 = 136380675;
    v89 = v44;
    v45 = v102;
    v103 = v9;
    v46 = v106;
    v47 = v104;
    v95 = v43;
    while (1)
    {
      sub_1000108FC(v42, v47, type metadata accessor for FeatureInfo);
      (*v113)(v9, v47, v45);
      v55 = (*v112)(v9, v45);
      if (v55 != v111 && v55 != v110)
      {
        if (v55 == v94)
        {
          sub_100019D24(v47);
        }

        else
        {
          sub_1000108FC(v47, v46, type metadata accessor for FeatureInfo);
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            aBlock[0] = v81;
            *v80 = v89;
            v82 = SystemMonitorConfig.MonitorType.rawValue.getter();
            v84 = v83;
            sub_100019D24(v106);
            v85 = sub_100013120(v82, v84, aBlock);
            v46 = v106;

            *(v80 + 4) = v85;
            _os_log_impl(&_mh_execute_header, v78, v79, "Encountered unknown monitorType. { monitorType=%{private}s }", v80, 0xCu);
            sub_10000AE7C(v81);
            v9 = v103;

            v47 = v104;
          }

          else
          {

            sub_100019D24(v46);
          }

          sub_100019D24(v47);
          (*v91)(v9, v45);
        }

        goto LABEL_7;
      }

      v109 = v40;
      v57 = swift_allocObject();
      *(v57 + 16) = -1;
      v58 = (v47 + *(v98 + 28));
      v59 = *v58;
      v107 = v58[1];
      v108 = v59;
      v60 = *(v115 + 40);
      v61 = swift_allocObject();
      swift_weakInit();
      v62 = v47;
      v63 = swift_allocObject();
      *(v63 + 24) = &off_100041CC8;
      swift_unknownObjectWeakInit();
      v64 = v62;
      v65 = v114;
      sub_1000108FC(v64, v114, type metadata accessor for FeatureInfo);
      v66 = v93;
      v67 = swift_allocObject();
      *(v67 + 16) = v61;
      *(v67 + 24) = v63;
      sub_100027A40(v65, v67 + v96);
      *(v67 + v66) = v57;
      v117[2] = sub_100027AA4;
      v117[3] = v67;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v117[0] = sub_100022560;
      v117[1] = &unk_1000421C8;
      v68 = _Block_copy(aBlock);
      v69 = v60;

      v70 = String.utf8CString.getter();
      swift_beginAccess();
      v71 = notify_register_dispatch((v70 + 32), (v57 + 16), v69, v68);
      swift_endAccess();

      _Block_release(v68);

      v72 = Logger.logObject.getter();
      if (v71)
      {
        v73 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = v90;
          *(v74 + 4) = v71;
          *(v74 + 8) = 1024;
          *(v74 + 10) = *(v57 + 16);

          v75 = v73;
          v76 = v72;
          v77 = "Notify setup result is not OK! { result=%u, token=%d }";
LABEL_22:
          _os_log_impl(&_mh_execute_header, v76, v75, v77, v74, 0xEu);

          goto LABEL_6;
        }
      }

      else
      {
        v86 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v72, v86))
        {
          v74 = swift_slowAlloc();
          *v74 = v90;
          *(v74 + 8) = 1024;
          *(v74 + 10) = *(v57 + 16);

          v75 = v86;
          v76 = v72;
          v77 = "Notify setup result. { result=%u, token=%d }";
          goto LABEL_22;
        }
      }

LABEL_6:
      v9 = v103;
      v47 = v104;
      v40 = v109;
      v48 = *(v57 + 16);
      LOBYTE(aBlock[0]) = 0;
      v49 = v99;
      v50 = v115;
      sub_100030040(v104, v48, v99);
      v51 = *(v50 + 16);
      v52 = v114;
      v53 = sub_1000108FC(v47, v114, type metadata accessor for FeatureInfo);
      __chkstk_darwin(v53);
      sub_100027A40(v52, v88 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
      swift_getKeyPath();

      OSAllocatedUnfairLock<A>.assign<A>(_:newValue:)();

      sub_100027B44(v49);
      sub_100019D24(v47);

      v45 = v102;
      v46 = v106;
      v43 = v95;
LABEL_7:
      v42 += v43;
      if (!--v40)
      {

        return v115;
      }
    }
  }

  return v115;
}

unint64_t sub_1000279CC()
{
  result = qword_100045988;
  if (!qword_100045988)
  {
    sub_100004C54(255, &qword_100045930, NSXPCConnection_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045988);
  }

  return result;
}

uint64_t sub_100027A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100027AA4(uint64_t a1)
{
  v3 = *(type metadata accessor for FeatureInfo(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  sub_10002EE30(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_100027B44(uint64_t a1)
{
  v2 = sub_10001712C(&qword_100045998, &qword_100036360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001712C(&qword_100045998, &qword_100036360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100027C1C()
{
  v1 = *(type metadata accessor for Message() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1000213EC(v2, v3);
}

void *sub_100027CD8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.session.getter();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v1 + 24);

    _os_log_impl(&_mh_execute_header, v7, v8, "requestMessage(): Flushing all requests. { reporterID=%lld }", v9, 0xCu);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  v10 = *(v1 + 16);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = *(v1 + 16);
  result = swift_bridgeObjectRetain_n();
  v17 = 0;
  v18 = &_swiftEmptyArrayStorage;
  while (v13)
  {
LABEL_13:
    v20 = *(*(v10 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v13)))));
    result = swift_beginAccess();
    v21 = *(v20 + 16);
    v22 = *(v21 + 16);
    v23 = v18[2];
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
      goto LABEL_32;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v24 > v18[3] >> 1)
    {
      if (v23 <= v24)
      {
        v25 = v23 + v22;
      }

      else
      {
        v25 = v23;
      }

      result = sub_10002C424(result, v25, 1, v18);
      v18 = result;
    }

    v13 &= v13 - 1;
    if (*(v21 + 16))
    {
      if ((v18[3] >> 1) - v18[2] < v22)
      {
        goto LABEL_34;
      }

      sub_10001712C(&qword_100045BA0, &unk_1000364D0);
      swift_arrayInitWithCopy();

      if (v22)
      {
        v26 = v18[2];
        v27 = __OFADD__(v26, v22);
        v28 = v26 + v22;
        if (v27)
        {
          goto LABEL_35;
        }

        v18[2] = v28;
      }
    }

    else
    {

      if (v22)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v19 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v19);
    ++v17;
    if (v13)
    {
      v17 = v19;
      goto LABEL_13;
    }
  }

  v29 = v18[2];
  if (!v29)
  {
  }

  v30 = 0;
  v31 = v18 + 5;
  while (v30 < v18[2])
  {
    ++v30;
    v33 = *(v31 - 1);
    v32 = *v31;
    v34 = 0;
    v35 = 0;

    v33(&v35, &v34);

    v31 += 2;
    if (v29 == v30)
    {
    }
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100028054()
{
  sub_100027CD8();
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1000280B4(uint64_t a1, objc_class *a2, unsigned int a3, unsigned __int16 a4)
{
  v5 = v4;
  v34 = type metadata accessor for Message();
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v34);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100015580(a3 | (a4 << 32));
  swift_beginAccess();
  if (*(v19[3] + 16))
  {
    v33 = a2;
    static Logger.session.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v32 = a1;
    if (v22)
    {
      a1 = swift_slowAlloc();
      *a1 = 134217984;
      *(a1 + 4) = *(v5 + 24);

      _os_log_impl(&_mh_execute_header, v20, v21, "requestMessage(): Registered callback found message. Calling callback. { reporterID=%lld }", a1, 0xCu);
    }

    else
    {
    }

    (*(v15 + 8))(v18, v14);
    swift_beginAccess();
    v28 = v19[3];
    if (*(v28 + 16))
    {
      v29 = v34;
      (*(v10 + 16))(v13, v28 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v34);
      sub_10002AA28(0, 1, sub_100015784, sub_10002A8E0);
      swift_endAccess();
      if (*(v19[3] + 16) >= 0xBuLL)
      {
        swift_beginAccess();
        sub_10002AA28(0, 1, sub_100015784, sub_10002A8E0);
        swift_endAccess();
      }

      v30 = Message.flattenToAnyDictionary()();
      v32(0, v30);

      return (*(v10 + 8))(v13, v29);
    }

    __break(1u);
    goto LABEL_14;
  }

  v20 = swift_allocObject();
  v20[2].isa = a1;
  v20[3].isa = a2;
  swift_beginAccess();
  a1 = v19[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19[2] = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = sub_10002C424(0, *(a1 + 16) + 1, 1, a1);
    v19[2] = a1;
  }

  v25 = *(a1 + 16);
  v24 = *(a1 + 24);
  if (v25 >= v24 >> 1)
  {
    a1 = sub_10002C424((v24 > 1), v25 + 1, 1, a1);
  }

  *(a1 + 16) = v25 + 1;
  v26 = a1 + 16 * v25;
  *(v26 + 32) = sub_10002AB00;
  *(v26 + 40) = v20;
  v19[2] = a1;
  swift_endAccess();
  sub_100028648();
}

Swift::Int sub_100028520()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100028580()
{
  v1 = *(v0 + 4);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_1000285C0()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100028648()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v8 = *(v0 + 16);
  if (v8[2] >= 0xBuLL)
  {
    result = swift_beginAccess();
    if (v8[2])
    {
      v10 = v8[4];
      v9 = v8[5];

      sub_10002AA28(0, 1, sub_10002C424, sub_10002A810);
      swift_endAccess();
      static Logger.session.getter();

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = *(v1 + 32);

        _os_log_impl(&_mh_execute_header, v11, v12, "requestMessage(): Exceeded stored callback cache. Flushing oldest callback. { reporterID=%lld }", v13, 0xCu);
      }

      else
      {
      }

      (*(v3 + 8))(v6, v2);
      v15 = 0;
      v16[0] = 0;
      v10(v16, &v15);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100028878()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t _s16RetainedMessagesC16CategoryTypePairVwCP(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s16RetainedMessagesC16CategoryTypePairVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16RetainedMessagesC16CategoryTypePairVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 6) = v3;
  return result;
}

unint64_t sub_100028950()
{
  result = qword_100045B98;
  if (!qword_100045B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B98);
  }

  return result;
}

unint64_t sub_1000289A4(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for SystemMonitorConfig.MonitorType();
  sub_10002AB30(&qword_1000459B0, &type metadata accessor for SystemMonitorConfig.MonitorType);
  dispatch thunk of Hashable.hash(into:)();
  v4 = type metadata accessor for FeatureInfo(0);
  v5 = (a1 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  String.hash(into:)();
  v8 = (a1 + v4[6]);
  v9 = *v8;
  v10 = v8[1];
  String.hash(into:)();
  v11 = (a1 + v4[7]);
  v12 = *v11;
  v13 = v11[1];
  String.hash(into:)();
  v14 = (a1 + v4[8]);
  v15 = *v14;
  v16 = v14[1];
  String.hash(into:)();
  v17 = v4[9];
  type metadata accessor for SystemMonitorConfig.DataType();
  sub_10002AB30(&qword_1000459B8, &type metadata accessor for SystemMonitorConfig.DataType);
  dispatch thunk of Hashable.hash(into:)();
  v18 = Hasher._finalize()();

  return sub_10002996C(a1, v18);
}

uint64_t sub_100028B0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10001712C(&qword_1000453F8, &qword_100035E08);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 8 * (v19 | (v9 << 6));
      v23 = *(v5 + 48) + v22;
      v24 = *v23;
      v25 = *(v23 + 4);
      v26 = *(*(v5 + 56) + v22);
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v25);
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 8 * v16;
      v18 = *(v8 + 48) + v17;
      *v18 = v24;
      *(v18 + 4) = v25;
      *(*(v8 + 56) + v17) = v26;
      ++*(v8 + 16);
      v5 = v37;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100028DC4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for FeatureState(0);
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v6 - 8);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeatureInfo(0);
  v58 = *(v9 - 1);
  v10 = *(v58 + 64);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_10001712C(&qword_100045440, &unk_100035E50);
  v60 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v56 = v3;
    v57 = v13;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v62 = *(v58 + 72);
      v30 = v29 + v62 * v28;
      if (v60)
      {
        sub_100010D10(v30, v12, type metadata accessor for FeatureInfo);
        v31 = *(v13 + 56);
        v61 = *(v59 + 72);
        sub_100010D10(v31 + v61 * v28, v63, type metadata accessor for FeatureState);
      }

      else
      {
        sub_1000108FC(v30, v12, type metadata accessor for FeatureInfo);
        v32 = *(v13 + 56);
        v61 = *(v59 + 72);
        sub_1000108FC(v32 + v61 * v28, v63, type metadata accessor for FeatureState);
      }

      v33 = *(v16 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for SystemMonitorConfig.MonitorType();
      sub_10002AB30(&qword_1000459B0, &type metadata accessor for SystemMonitorConfig.MonitorType);
      dispatch thunk of Hashable.hash(into:)();
      v34 = &v12[v9[5]];
      v35 = *v34;
      v36 = *(v34 + 1);
      String.hash(into:)();
      v37 = &v12[v9[6]];
      v38 = *v37;
      v39 = *(v37 + 1);
      String.hash(into:)();
      v40 = &v12[v9[7]];
      v41 = *v40;
      v42 = *(v40 + 1);
      String.hash(into:)();
      v43 = &v12[v9[8]];
      v44 = *v43;
      v45 = *(v43 + 1);
      String.hash(into:)();
      v46 = v9[9];
      type metadata accessor for SystemMonitorConfig.DataType();
      sub_10002AB30(&qword_1000459B8, &type metadata accessor for SystemMonitorConfig.DataType);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v47 = -1 << *(v16 + 32);
      v48 = result & ~v47;
      v49 = v48 >> 6;
      if (((-1 << v48) & ~*(v23 + 8 * (v48 >> 6))) == 0)
      {
        v50 = 0;
        v51 = (63 - v47) >> 6;
        v13 = v57;
        while (++v49 != v51 || (v50 & 1) == 0)
        {
          v52 = v49 == v51;
          if (v49 == v51)
          {
            v49 = 0;
          }

          v50 |= v52;
          v53 = *(v23 + 8 * v49);
          if (v53 != -1)
          {
            v24 = __clz(__rbit64(~v53)) + (v49 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v48) & ~*(v23 + 8 * (v48 >> 6)))) | v48 & 0x7FFFFFFFFFFFFFC0;
      v13 = v57;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      sub_100010D10(v12, *(v16 + 48) + v62 * v24, type metadata accessor for FeatureInfo);
      result = sub_100010D10(v63, *(v16 + 56) + v61 * v24, type metadata accessor for FeatureState);
      ++*(v16 + 16);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v60 & 1) == 0)
    {

      v3 = v56;
      goto LABEL_36;
    }

    v54 = 1 << *(v13 + 32);
    v3 = v56;
    if (v54 >= 64)
    {
      bzero(v18, ((v54 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v54;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

unint64_t sub_100029318(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100015688(a2 & 0xFFFFFFFFFFFFLL);
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
      sub_100029E78();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100028B0C(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_100015688(a2 & 0xFFFFFFFFFFFFLL);
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
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_10002977C(v9, a2 & 0xFFFFFFFFFFFFLL, a1, v20);
  }
}

uint64_t sub_10002943C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000710C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_10000C940();
      goto LABEL_7;
    }

    sub_100007518(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_10000710C(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for SimpleType();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1000297D0(v12, a2, a3, a1, v18);
}

uint64_t sub_1000295BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FeatureInfo(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1000289A4(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10002A250();
      goto LABEL_7;
    }

    sub_100028DC4(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_1000289A4(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000108FC(a2, v11, type metadata accessor for FeatureInfo);
      return sub_100029880(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for FeatureState(0) - 8) + 72) * v14;

  return sub_10002AB78(a1, v22);
}

unint64_t sub_10002977C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 8 * result;
  *v4 = a2;
  *(v4 + 4) = WORD2(a2);
  *(a4[7] + 8 * result) = a3;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

uint64_t sub_1000297D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for SimpleType();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100029880(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for FeatureInfo(0);
  sub_100010D10(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for FeatureInfo);
  v10 = a4[7];
  v11 = type metadata accessor for FeatureState(0);
  result = sub_100010D10(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for FeatureState);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_10002996C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FeatureInfo(0);
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + 64;
  v12 = -1 << *(v2 + 32);
  v13 = a2 & ~v12;
  if (((*(v2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return v13;
  }

  v14 = ~v12;
  v15 = *(v8 + 72);
  v40 = v2;
  v41 = v15;
  while (1)
  {
    sub_1000108FC(*(v3 + 48) + v41 * v13, v10, type metadata accessor for FeatureInfo);
    type metadata accessor for SystemMonitorConfig.MonitorType();
    sub_10002AB30(&qword_100045BC0, &type metadata accessor for SystemMonitorConfig.MonitorType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v44 == v42 && v45 == v43)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v19 = v6[5];
    v20 = *&v10[v19];
    v21 = *&v10[v19 + 8];
    v22 = (a1 + v19);
    v23 = v20 == *v22 && v21 == v22[1];
    if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_4;
    }

    v24 = v6[6];
    v25 = *&v10[v24];
    v26 = *&v10[v24 + 8];
    v27 = (a1 + v24);
    if ((v25 != *v27 || v26 != v27[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_4;
    }

    v28 = v6[7];
    v29 = *&v10[v28];
    v30 = *&v10[v28 + 8];
    v31 = (a1 + v28);
    if ((v29 != *v31 || v30 != v31[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_4;
    }

    v32 = v6[8];
    v33 = *&v10[v32];
    v34 = *&v10[v32 + 8];
    v35 = (a1 + v32);
    if ((v33 != *v35 || v34 != v35[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_4;
    }

    v36 = v11;
    v37 = v14;
    v38 = v6[9];
    type metadata accessor for SystemMonitorConfig.DataType();
    sub_10002AB30(&qword_100045BC8, &type metadata accessor for SystemMonitorConfig.DataType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v44 == v42 && v45 == v43)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v14 = v37;
    v11 = v36;
    v3 = v40;
    if (v16)
    {
      goto LABEL_29;
    }

LABEL_4:
    sub_100019D24(v10);
    v13 = (v13 + 1) & v14;
    if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return v13;
    }
  }

LABEL_29:
  sub_100019D24(v10);
  return v13;
}

void *sub_100029D1C()
{
  v1 = v0;
  sub_10001712C(&qword_100045BA8, &qword_1000364F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100029E78()
{
  v1 = v0;
  sub_10001712C(&qword_1000453F8, &qword_100035E08);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        LOWORD(v18) = *(v18 + 4);
        v20 = *(*(v2 + 56) + v17);
        v21 = *(v4 + 48) + v17;
        *v21 = v19;
        *(v21 + 4) = v18;
        *(*(v4 + 56) + v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100029FE8()
{
  v1 = v0;
  v30 = type metadata accessor for Message();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001712C(&qword_100045430, &qword_100035E40);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 4 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 4 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_10002A250()
{
  v1 = v0;
  v2 = type metadata accessor for FeatureState(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v2 - 8);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeatureInfo(0);
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  __chkstk_darwin(v5 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001712C(&qword_100045440, &unk_100035E50);
  v8 = *v0;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v35 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = v31;
        v25 = *(v32 + 72) * v23;
        sub_1000108FC(*(v8 + 48) + v25, v31, type metadata accessor for FeatureInfo);
        v26 = v33;
        v27 = *(v34 + 72) * v23;
        sub_1000108FC(*(v8 + 56) + v27, v33, type metadata accessor for FeatureState);
        v28 = v35;
        sub_100010D10(v24, *(v35 + 48) + v25, type metadata accessor for FeatureInfo);
        result = sub_100010D10(v26, *(v28 + 56) + v27, type metadata accessor for FeatureState);
        v18 = v36;
      }

      while (v36);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v29;
        v10 = v35;
        goto LABEL_18;
      }

      v22 = *(v30 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v36 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

unint64_t sub_10002A544(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_10002A60C()
{
  v0 = sub_10001712C(&qword_1000457E8, &qword_1000364F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v16 - v2;
  if (Message.shouldRetain.getter())
  {
    return 1;
  }

  if (Message.type.getter() != 7)
  {
    return 0;
  }

  v5 = Message.category.getter();
  if (v5 != 11 && v5 != 1)
  {
    return 0;
  }

  v7 = Message.content.getter();
  if (*(v7 + 16) && (v8 = sub_10000710C(0x725F736D72616C61, 0xEA0000000000736DLL), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = type metadata accessor for SimpleType();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v3, v11 + *(v13 + 72) * v10, v12);

    v14 = 1;
    (*(v13 + 56))(v3, 0, 1, v12);
  }

  else
  {

    v15 = type metadata accessor for SimpleType();
    (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
    v14 = 0;
  }

  sub_10000C80C(v3);
  return v14;
}

unint64_t sub_10002A810(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_10001712C(&qword_100045BA0, &unk_1000364D0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10002A8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Message();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}