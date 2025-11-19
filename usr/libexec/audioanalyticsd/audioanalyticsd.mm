uint64_t sub_1000016B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1000016FC(double a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27[2] = *(Strong + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
    v28 = Strong;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v27[1] = v18;
    *(v19 + 24) = a1;
    aBlock[4] = sub_1000024B8;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000016B8;
    aBlock[3] = &unk_1000420B0;
    v20 = _Block_copy(aBlock);
    v27[0] = v7;
    v21 = v20;

    static DispatchQoS.unspecified.getter();
    v29 = &_swiftEmptyArrayStorage;
    sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
    sub_10001712C(&unk_100045920, &qword_100035FC0);
    sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v27[0]);

    v23 = v28;
    sub_100001D38(v22, a1);
  }

  else
  {
    static Logger.service.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Server is gone. { action=osTransactionTimeout }", v26, 2u);
    }

    (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_100001B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001B80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001B90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001BC4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000171D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001C18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000171D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001C60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100001CA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100001CF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100001D38(double a1)
{
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v27 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v27);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  v6 = *(v26 + 64);
  __chkstk_darwin(v28);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v25 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v23 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd6Server_clientConnectionMonitorQueue);
  static DispatchTime.now()();
  v17 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd6Server_clientConnectionMonitorFrequency);
  + infix(_:_:)();
  v24 = *(v10 + 8);
  v24(v14, v9);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  aBlock[4] = sub_100001B64;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_100042060;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = &_swiftEmptyArrayStorage;
  sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0);
  v21 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);
  (*(v29 + 8))(v5, v21);
  (*(v26 + 8))(v8, v28);
  v24(v16, v25);
}

uint64_t sub_100002144()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000217C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000021E4(double a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    type metadata accessor for OsTransactionHandler();
    static OsTransactionHandler.shared.getter();
    v9 = OsTransactionHandler.inactive()();

    if (!v9)
    {
      v10 = OBJC_IVAR____TtC15audioanalyticsd6Server_clientServerInstances;
      swift_beginAccess();
      v11 = *&v8[v10];

      v13 = sub_10001F2DC(v12);

      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = *(v13 + 32);
        v16 = v14 - 1;
        if (v16)
        {
          v17 = (v13 + 40);
          do
          {
            v18 = *v17++;
            v19 = v18;
            if (v15 < v18)
            {
              v15 = v19;
            }

            --v16;
          }

          while (v16);
        }

        v20 = v15 + a1;
        static Double.now()();
        if (v21 < v20)
        {
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 134283521;
            static Double.now()();
            *(v24 + 4) = v20 - v25;
            _os_log_impl(&_mh_execute_header, v22, v23, "osTransaction timeout. { seconds=%{private}f }", v24, 0xCu);
          }

          return;
        }
      }

      else
      {
      }

      static OsTransactionHandler.shared.getter();
      OsTransactionHandler.expire()();
    }

    return;
  }

  static Logger.service.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Server is gone. { action=osTransactionTimeout }", v28, 2u);
  }

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_10000252C(void *a1)
{
  v36 = [a1 processIdentifier];
  [a1 processIdentifier];
  v3 = static Utilities.processName(for:)();
  if (!v4)
  {
    v3 = static Constants.unknown.getter();
  }

  v5 = v3;
  v6 = v4;
  v7 = [a1 processIdentifier];
  v8 = *&v1[OBJC_IVAR____TtC15audioanalyticsd6Server_config];
  v9 = type metadata accessor for ClientServerInstance();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();

  v13 = v1;
  v14 = sub_100002BD0(v7, v5, v6, v8, v13, v12);
  v15 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP15audioanalyticsd14ServerProtocol_];
  [a1 setExportedInterface:v15];

  [a1 setExportedObject:v14];
  v16 = *&v13[OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue];
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v14;
  v17[4] = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1000045F8;
  *(v18 + 24) = v17;
  v41 = sub_100002EE0;
  v42 = v18;
  aBlock = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_100002EB0;
  v40 = &unk_100041D40;
  v19 = v5;
  v20 = _Block_copy(&aBlock);
  v13;

  v21 = a1;

  dispatch_sync(v16, v20);
  _Block_release(v20);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v36;
    *(v24 + 32) = v19;
    *(v24 + 40) = v6;
    *(v24 + 48) = v14;
    v41 = sub_100027930;
    v42 = v24;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_1000016B8;
    v40 = &unk_100041DB8;
    v25 = _Block_copy(&aBlock);

    [v21 setInterruptionHandler:v25];
    _Block_release(v25);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v14;
    *(v27 + 32) = v21;
    *(v27 + 40) = v19;
    *(v27 + 48) = v6;
    *(v27 + 56) = v36;
    v41 = sub_100027944;
    v42 = v27;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_1000016B8;
    v40 = &unk_100041E08;
    v28 = _Block_copy(&aBlock);

    v29 = v21;

    [v29 setInvalidationHandler:v28];
    _Block_release(v28);

    v30 = v29;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock = v34;
      *v33 = 67174915;
      *(v33 + 4) = [v30 processIdentifier];

      *(v33 + 8) = 2081;
      v35 = sub_100013120(v19, v6, &aBlock);

      *(v33 + 10) = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "New connection. { pid=%{private}d, clientProcessName=%{private}s }", v33, 0x12u);
      sub_10000AE7C(v34);
    }

    else
    {
    }

    [v30 activate];

    return 1;
  }

  return result;
}

uint64_t sub_100002AA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002AE8()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100002B30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 60, 7);
}

uint64_t type metadata accessor for ClientServerInstance()
{
  result = qword_1000454C0;
  if (!qword_1000454C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100002BD0(int a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();
  *(a6 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID) = &_swiftEmptyDictionarySingleton;
  v17 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation;
  static Double.now()();
  *(a6 + v17) = v18;
  *(a6 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid) = a1;
  a6[3] = a2;
  a6[4] = a3;
  v19 = (a6 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server);
  *v19 = a5;
  v19[1] = &off_100041CC8;
  a6[2] = a4;

  v20 = a5;

  Date.init()();
  (*(v13 + 32))(a6 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_clientStartDate, v16, v12);
  swift_retain_n();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136380931;
    v25 = sub_100013120(a2, a3, &v29);

    *(v23 + 4) = v25;
    *(v23 + 12) = 1024;
    v26 = *(a6 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid);

    *(v23 + 14) = v26;

    _os_log_impl(&_mh_execute_header, v21, v22, "ClientServerInstance created. { processName=%{private}s, pid=%d", v23, 0x12u);
    sub_10000AE7C(v24);
  }

  else
  {
  }

  return a6;
}

uint64_t sub_100002EE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_100002F08(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  sub_100004604(&v5, a2);
  swift_endAccess();

  swift_beginAccess();
  sub_100004A1C(&v5, a3);
  swift_endAccess();
}

uint64_t sub_100002FC4()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001712C(&qword_100045DF0, &qword_100036660);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v41 = v1;
    v22 = OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime;
    swift_beginAccess();
    sub_10000C454(v21 + v22, v14, &qword_100045DF0, &qword_100036660);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {

      return sub_100006CC8(v14, &qword_100045DF0, &qword_100036660);
    }

    else
    {
      (*(v16 + 32))(v19, v14, v15);
      Date.timeIntervalSinceNow.getter();
      v24 = fabs(v23);
      v25 = *(v21 + OBJC_IVAR____TtC15audioanalyticsd7Session_stopWaitTime);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      v28 = os_log_type_enabled(v26, v27);
      v40 = v0;
      if (v24 <= v25)
      {
        if (v28)
        {
          v30 = swift_slowAlloc();
          *v30 = 134218240;
          *(v30 + 4) = v25 - v24;
          *(v30 + 12) = 2048;
          *(v30 + 14) = *(v21 + 16);

          _os_log_impl(&_mh_execute_header, v26, v27, "Not stopping session from timer. { remainingTime=%f, reporterID=%lld }", v30, 0x16u);
        }

        else
        {
        }

        v39 = *(v21 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
        v50 = sub_10002E7B8;
        v51 = v21;
        aBlock = _NSConcreteStackBlock;
        v47 = 1107296256;
        v48 = sub_1000016B8;
        v49 = &unk_100042448;
        v38 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v45 = &_swiftEmptyArrayStorage;
        sub_100001CF0(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
        sub_10001712C(&unk_100045920, &qword_100035FC0);
        sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
        v34 = v42;
        v35 = v40;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v36 = v38;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v36);
        (*(v41 + 8))(v34, v35);
      }

      else
      {
        if (v28)
        {
          v29 = swift_slowAlloc();
          *v29 = 134217984;
          *(v29 + 4) = *(v21 + 16);

          _os_log_impl(&_mh_execute_header, v26, v27, "Calling stop on session from timer. { reporterID=%lld }", v29, 0xCu);
        }

        else
        {
        }

        (*(v16 + 56))(v12, 1, 1, v15);
        swift_beginAccess();
        sub_10000C27C(v12, v21 + v22, &qword_100045DF0, &qword_100036660);
        swift_endAccess();
        v39 = *(v21 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
        v50 = sub_100014A30;
        v51 = v21;
        aBlock = _NSConcreteStackBlock;
        v47 = 1107296256;
        v48 = sub_1000016B8;
        v49 = &unk_100042470;
        v31 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v45 = &_swiftEmptyArrayStorage;
        sub_100001CF0(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
        sub_10001712C(&unk_100045920, &qword_100035FC0);
        sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
        v32 = v42;
        v33 = v40;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v31);
        (*(v41 + 8))(v32, v33);
      }

      (*(v43 + 8))(v7, v44);
      (*(v16 + 8))(v19, v15);
    }
  }

  return result;
}

uint64_t sub_1000037B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_100003820(a3, a4, a5, a6);
}

uint64_t sub_100003820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v23 = *(v13 - 8);
  v24 = v13;
  v14 = *(v23 + 64);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(v7 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = a4;
  v20 = _Block_copy(aBlock);
  v21 = v17;

  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_100001C60(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v25 + 8))(v12, v9);
  (*(v23 + 8))(v16, v24);
}

uint64_t sub_100003B24(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v10, v11, "startSession() called. { reporterID=%lld }", v12, 0xCu);
    }

    static Double.now()();
    if (*(v9 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v13)
    {
      v13 = *(v9 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
    }

    *(v9 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v13 + 5.0;
    if (sub_100003D80(a2, 0, 0x7472617473, 0xE500000000000000))
    {
      sub_100004484();
    }
  }

  else
  {
    static Logger.service.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "ClientServerInstance is gone. { action=startSession }", v17, 2u);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100003D80(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v56 = a4;
  v54 = a3;
  v57 = a2;
  v59 = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin();
  v10 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue;
  v55 = *(v4 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server);
  v12 = *(v55 + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  *v10 = v12;
  v13 = enum case for DispatchPredicate.onQueue(_:);
  v14 = v7[13];
  v14(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v15 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v16 = v7[1];
  result = v16(v10, v6);
  if ((v12 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v18 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
  swift_beginAccess();
  v58 = v5;
  v19 = *(v5 + v18);
  if (*(v19 + 16))
  {
    v20 = sub_1000043D4(v59);
    if (v21)
    {
      v22 = *(*(v19 + 56) + 8 * v20);
      swift_endAccess();

      return v22;
    }
  }

  swift_endAccess();
  if (v57)
  {
LABEL_20:
    v44 = v56;

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v60 = v48;
      *v47 = 134218243;
      *(v47 + 4) = v59;
      *(v47 + 12) = 2081;
      *(v47 + 14) = sub_100013120(v54, v44, &v60);
      _os_log_impl(&_mh_execute_header, v45, v46, "Session not found. { reporterID=%lld, action=%{private}s }", v47, 0x16u);
      sub_10000AE7C(v48);
    }

    return 0;
  }

  v23 = v55;
  v24 = *(v55 + v11);
  *v10 = v24;
  v14(v10, v13, v6);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  result = v16(v10, v6);
  if ((v24 & 1) == 0)
  {
    goto LABEL_34;
  }

  v26 = OBJC_IVAR____TtC15audioanalyticsd6Server_clientServerInstances;
  swift_beginAccess();
  v27 = *(v23 + v26);

  result = sub_10001B390(v27, sub_10001B388);
  v60 = result;
  v61 = v28;
  v62 = v29 & 1;
  v30 = v27 & 0xC000000000000001;
  if ((v27 & 0xC000000000000001) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  result = __CocoaSet.endIndex.getter();
  if ((v62 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v32 = result;
  v33 = v31;
  v35 = v60;
  v34 = v61;
  v36 = static __CocoaSet.Index.== infix(_:_:)();
  sub_100007BDC(v32, v33, 1);
  if (v36)
  {
LABEL_18:
    v39 = __CocoaSet.endIndex.getter();
    v41 = v40;
    v42 = static __CocoaSet.Index.== infix(_:_:)();
    v43 = 1;
    sub_100007BDC(v39, v41, 1);
    if (v42)
    {
LABEL_19:
      sub_100007BDC(v35, v34, v43);

      goto LABEL_20;
    }
  }

  else
  {
    while (1)
    {
      sub_1000079BC(v35, v34, (v27 & 0xC000000000000001) != 0, v27);
      v38 = sub_100003D80(v59, 1, 0xD000000000000011, 0x8000000100037330);

      if (v38)
      {
        break;
      }

      result = sub_10001B670(&v60, v27, sub_10001B388);
      if (v30)
      {
        goto LABEL_8;
      }

LABEL_11:
      if (v62)
      {
        goto LABEL_36;
      }

      v34 = v61;
      v37 = *(v27 + 36);
      if (v37 != v61)
      {
        __break(1u);
        goto LABEL_33;
      }

      v35 = v60;
      if (v60 == 1 << *(v27 + 32))
      {
        v35 = 1 << *(v27 + 32);
        goto LABEL_25;
      }
    }

    if (v30)
    {
      goto LABEL_18;
    }

    v37 = *(v27 + 36);
LABEL_25:
    if (v37 != v34)
    {
      goto LABEL_35;
    }

    v43 = 0;
    if (v35 == 1 << *(v27 + 32))
    {
      goto LABEL_19;
    }
  }

  sub_1000079BC(v35, v34, v43, v27);
  v22 = sub_100003D80(v59, 1, 0xD000000000000011, 0x8000000100037330);

  if (v22)
  {
    sub_100007BDC(v35, v34, v43);

    v49 = v56;

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v60 = v53;
      *v52 = 134218243;
      *(v52 + 4) = v59;
      *(v52 + 12) = 2081;
      *(v52 + 14) = sub_100013120(v54, v49, &v60);
      _os_log_impl(&_mh_execute_header, v50, v51, "Found session on another instance. { reporterID=%lld, action=%{private}s }", v52, 0x16u);
      sub_10000AE7C(v53);
    }

    return v22;
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_1000043D4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_100004418(a1, v4);
}

unint64_t sub_100004418(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100004484()
{
  type metadata accessor for OsTransactionHandler();
  static OsTransactionHandler.shared.getter();
  OsTransactionHandler.sessionStarted(for:)(*(v0 + 16));

  v1 = *(v0 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10000C278;
  *(v2 + 24) = v0;
  v5[4] = sub_100002ED8;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100002EB0;
  v5[3] = &unk_1000424C0;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100004604(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for ClientServerInstance();
      swift_dynamicCast();
      result = 0;
      *a1 = v29;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v26 = sub_100024A60(v7, result + 1);
    v27 = *(v26 + 16);
    if (*(v26 + 24) <= v27)
    {
      sub_100024E68(v27 + 1);
    }

    sub_1000252F8(v28, v26);

    *v3 = v26;
  }

  else
  {
    v10 = *(v6 + 40);
    Hasher.init(_seed:)();
    v11 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
    Hasher._combine(_:)(*(a2 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
    v12 = *(a2 + 24);
    v13 = *(a2 + 32);
    String.hash(into:)();
    v14 = Hasher._finalize()();
    v15 = -1 << *(v6 + 32);
    v16 = v14 & ~v15;
    if ((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
    {
      v17 = ~v15;
      v18 = *(v6 + 48);
      v19 = *(a2 + v11);
      v20 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
      do
      {
        v21 = *(v18 + 8 * v16);
        if (*(v21 + v20) == v19)
        {
          v22 = *(v21 + 24) == *(a2 + 24) && *(v21 + 32) == *(a2 + 32);
          if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            *a1 = *(*(v6 + 48) + 8 * v16);

            return 0;
          }

          v20 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
        }

        v16 = (v16 + 1) & v17;
      }

      while (((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
    }

    v23 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v2;

    sub_100004864(v25, v16, isUniquelyReferenced_nonNull_native);
    *v2 = v30;
  }

  *a1 = a2;
  return 1;
}

Swift::Int sub_100004864(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100024E68(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_100025438();
        goto LABEL_18;
      }

      sub_1000256D8(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    Hasher.init(_seed:)();
    v10 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
    Hasher._combine(_:)(*(v5 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
    v11 = *(v5 + 24);
    v12 = *(v5 + 32);
    String.hash(into:)();
    result = Hasher._finalize()();
    v13 = v8 + 56;
    v14 = -1 << *(v8 + 32);
    a2 = result & ~v14;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v15 = ~v14;
      result = type metadata accessor for ClientServerInstance();
      v16 = *(v8 + 48);
      v17 = *(v5 + v10);
      v18 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
      do
      {
        v19 = *(v16 + 8 * a2);
        if (*(v19 + v18) == v17)
        {
          if (*(v19 + 24) == *(v5 + 24) && *(v19 + 32) == *(v5 + 32))
          {
            goto LABEL_21;
          }

          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (result)
          {
            goto LABEL_21;
          }

          v18 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
        }

        a2 = (a2 + 1) & v15;
      }

      while (((*(v13 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_18:
  v21 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v5;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_21:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v24;
  }

  return result;
}

uint64_t sub_100004A1C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100024C78(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_1000250D0(v21 + 1);
    }

    v19 = v8;
    sub_1000253B4(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100004C9C(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_100004C54(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_100004C9C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000250D0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100025588();
      goto LABEL_12;
    }

    sub_100025924(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100004E34()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100004E84(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TraceArgs();
  v89 = *(v3 - 8);
  v4 = *(v89 + 64);
  __chkstk_darwin(v3);
  v87 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TraceCode();
  v86 = *(v88 - 8);
  v6 = *(v86 + 64);
  __chkstk_darwin(v88);
  v85 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v83 = *(v11 - 8);
  v12 = *(v83 + 64);
  __chkstk_darwin(v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v82 = v3;
    v24 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_logger;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v25, v26, "createSession() called. { reporterID=%lld }", v27, 0xCu);
    }

    v28 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
    swift_beginAccess();
    if (*(*(v23 + v28) + 16) > 0x63uLL)
    {
      v31 = Logger.logObject.getter();
      v41 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v31, v41))
      {
LABEL_17:

        return;
      }

      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = 100;
      _os_log_impl(&_mh_execute_header, v31, v41, "Not creating session. Client has exceeded max number of sessions. { maxNumberOfSessions=%ld }", v42, 0xCu);
LABEL_16:

      goto LABEL_17;
    }

    static Double.now()();
    if (*(v23 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v29)
    {
      v29 = *(v23 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
    }

    *(v23 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v29 + 30.0;
    swift_beginAccess();
    if (*(*(v23 + v28) + 16) && (sub_1000043D4(a2), (v30 & 1) != 0))
    {
      swift_endAccess();

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v91 = v34;
        *v33 = 134218499;
        *(v33 + 4) = a2;
        *(v33 + 12) = 1024;
        *(v33 + 14) = *(v23 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid);

        *(v33 + 18) = 2081;
        v35 = v23[3];
        v36 = v23[4];

        v37 = sub_100013120(v35, v36, &v91);

        *(v33 + 20) = v37;
        _os_log_impl(&_mh_execute_header, v31, v32, "createSession skipped, session already exists. { reporterID=%lld, pid=%d, processName=%{private}s }", v33, 0x1Cu);
        sub_10000AE7C(v34);

        goto LABEL_16;
      }
    }

    else
    {
      v80 = v24;
      swift_endAccess();
      v74 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
      LODWORD(v79) = *(v23 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid);
      v43 = v23[4];
      v77 = v23[3];
      v44 = v23[2];
      v45 = type metadata accessor for Session();
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      v48 = swift_allocObject();
      v81 = a2;
      v49 = v48;
      *(v48 + 64) = -1;
      *(v48 + 66) = 0;

      *(v49 + 72) = sub_100005ADC(&_swiftEmptyArrayStorage);
      *(v49 + 80) = 0;
      *(v49 + 88) = &_swiftEmptyArrayStorage;
      *(v49 + 96) = 0u;
      *(v49 + 112) = 0u;
      *(v49 + 128) = 0u;
      static Logger.session.getter();
      *(v49 + OBJC_IVAR____TtC15audioanalyticsd7Session_summaryDecoratorWorkers) = &_swiftEmptyArrayStorage;
      v78 = v10;
      v50 = OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime;
      v51 = type metadata accessor for Date();
      (*(*(v51 - 8) + 56))(v49 + v50, 1, 1, v51);
      v52 = OBJC_IVAR____TtC15audioanalyticsd7Session_messageHistory;
      *(v49 + v52) = sub_100005CC8(&_swiftEmptyArrayStorage);
      *(v49 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages) = 0;
      *(v49 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique) = 0;
      *(v49 + OBJC_IVAR____TtC15audioanalyticsd7Session_startOnFirstMessageCalled) = 0;
      v53 = v81;
      *(v49 + 16) = v81;
      *(v49 + 48) = v79;
      *(v49 + 32) = v77;
      *(v49 + 40) = v43;
      *(v49 + 56) = v44;
      *(v49 + 24) = 0;
      *(v49 + OBJC_IVAR____TtC15audioanalyticsd7Session_stopWaitTime) = 1;
      v77 = sub_100008570();
      v91 = 0;
      v92 = 0xE000000000000000;
      v79 = v44;

      _StringGuts.grow(_:)(39);

      v91 = 0xD000000000000025;
      v92 = 0x8000000100037100;
      v90 = v53;
      v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v54);

      v76 = v91;
      v75 = v92;
      static DispatchQoS.userInteractive.getter();
      (*(v83 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
      v91 = &_swiftEmptyArrayStorage;
      sub_100001C60(&unk_100045970, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_10001712C(&qword_1000453D0, &qword_100035C88);
      sub_100001BC4(&qword_100045980, &qword_1000453D0, &qword_100035C88);
      v55 = v81;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      *(v49 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 134217984;
        *(v58 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v56, v57, "Created reporting session. { reporterID=%lld }", v58, 0xCu);
      }

      swift_beginAccess();

      v59 = *(v23 + v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = *(v23 + v28);
      *(v23 + v28) = 0x8000000000000000;
      sub_1000085BC(v49, v55, isUniquelyReferenced_nonNull_native);
      *(v23 + v28) = v90;
      swift_endAccess();

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v91 = v64;
        *v63 = 134218499;
        *(v63 + 4) = v55;
        *(v63 + 12) = 1024;
        *(v63 + 14) = *(v23 + v74);

        *(v63 + 18) = 2081;
        v65 = v23[3];
        v66 = v23[4];

        v67 = sub_100013120(v65, v66, &v91);

        *(v63 + 20) = v67;
        _os_log_impl(&_mh_execute_header, v61, v62, "Created session. { reporterID=%lld, pid=%d, processName=%{private}s }", v63, 0x1Cu);
        sub_10000AE7C(v64);
      }

      else
      {
      }

      v68 = v82;
      v70 = v85;
      v69 = v86;
      v71 = v88;
      (*(v86 + 104))(v85, enum case for TraceCode.serverCreate(_:), v88);
      static Utilities.positiveReporterID(_:)();
      default argument 1 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 2 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 3 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      v72 = v87;
      TraceArgs.init(arg1:arg2:arg3:arg4:)();
      static Trace.post(_:args:)();
      (*(v89 + 8))(v72, v68);
      (*(v69 + 8))(v70, v71);
      sub_100008A00();
    }
  }

  else
  {
    static Logger.service.getter();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "ClientServerInstance is gone. { action=createSession }", v40, 2u);
    }

    (*(v18 + 8))(v21, v17);
  }
}

uint64_t type metadata accessor for Session()
{
  result = qword_100045C40;
  if (!qword_100045C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100005ADC(uint64_t a1)
{
  v2 = sub_10001712C(&qword_100045400, &unk_100035E10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10001712C(&qword_100045408, &unk_1000364E0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000C454(v10, v6, &qword_100045400, &unk_100035E10);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10000710C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for SimpleType();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_100005CC8(uint64_t a1)
{
  v2 = sub_10001712C(&qword_100045428, &qword_100035E38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10001712C(&qword_100045430, &qword_100035E40);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_10000C454(v10, v6, &qword_100045428, &qword_100035E38);
      v12 = *v6;
      result = sub_10000B964(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 4 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for Message();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

uint64_t sub_100005EA4(uint64_t a1)
{
  v2 = v1;
  v75 = type metadata accessor for Config.WorkerConfigs();
  v4 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v74 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    v73 = (v5 + 8);
    v76 = OBJC_IVAR____TtC15audioanalyticsd7Session_summaryDecoratorWorkers;
    v79 = *(v2 + 24);
    *&v6 = 136380931;
    v78 = v6;
    *&v6 = 136315394;
    v72 = v6;
    v77 = OBJC_IVAR____TtC15audioanalyticsd7Session_logger;
    do
    {
      v80 = *v9;
      if (v79 && ((v10 = v80, swift_conformsToProtocol2()) ? (v11 = v10 == 0) : (v11 = 1), v11))
      {
        swift_retain_n();
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *&v85 = v15;
          *v14 = v78;
          v87 = v80;
          sub_10001712C(&qword_100045DD8, &qword_100036648);
          v16 = String.init<A>(describing:)();
          v18 = sub_100013120(v16, v17, &v85);

          *(v14 + 4) = v18;
          *(v14 + 12) = 2048;
          v19 = *(v2 + 16);

          *(v14 + 14) = v19;

          v20 = v13;
          v21 = v12;
          v22 = "Skipping worker on singleMessageSession. { worker=%{private}s, reporterID=%lld }";
LABEL_16:
          _os_log_impl(&_mh_execute_header, v21, v20, v22, v14, 0x16u);
          sub_10000AE7C(v15);

          goto LABEL_4;
        }
      }

      else
      {
        sub_10000C2F0(&v83);
        v23 = v80;
        v24 = type metadata accessor for Optional();
        v25 = *(v24 - 8);
        v26 = *(v25 + 64);
        __chkstk_darwin(v24);
        v28 = &v72 - v27;
        dispatch thunk of WorkerProtocol.init(with:)();
        v29 = *(v23 - 8);
        if ((*(v29 + 48))(v28, 1, v23) != 1)
        {
          v86 = v80;
          v35 = sub_10000C4FC(&v85);
          (*(v29 + 32))(v35, v28, v23);
          sub_10000C43C(&v85, &v87);
          sub_10000AEC8(&v87, v88);
          if (dispatch thunk of WorkerProtocol.start()())
          {
            sub_10000AE18(&v87, &v85);
            swift_beginAccess();
            v36 = *(v2 + 88);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + 88) = v36;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v36 = sub_10000F08C(0, v36[2] + 1, 1, v36, &qword_100045D88, &qword_100036608, &qword_100045BB0, &qword_100036500);
              *(v2 + 88) = v36;
            }

            v39 = v36[2];
            v38 = v36[3];
            if (v39 >= v38 >> 1)
            {
              v36 = sub_10000F08C((v38 > 1), v39 + 1, 1, v36, &qword_100045D88, &qword_100036608, &qword_100045BB0, &qword_100036500);
            }

            v36[2] = v39 + 1;
            sub_10000C43C(&v85, &v36[5 * v39 + 4]);
            *(v2 + 88) = v36;
            swift_endAccess();
            sub_10000AE18(&v87, &v83);
            sub_10001712C(&qword_100045BB0, &qword_100036500);
            sub_10001712C(&qword_100045BB8, &qword_100036508);
            if (swift_dynamicCast())
            {
              sub_10000C43C(v81, &v85);
              sub_10000AE18(&v87, &v83);
              swift_retain_n();
              v40 = Logger.logObject.getter();
              v41 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v40, v41))
              {
                v42 = swift_slowAlloc();
                *&v80 = swift_slowAlloc();
                *&v81[0] = v80;
                *v42 = v78;
                sub_10000AEC8(&v83, v84);
                v43 = v74;
                dispatch thunk of WorkerProtocol.workerConfig.getter();
                v44 = Config.WorkerConfigs.rawValue.getter();
                v46 = v45;
                (*v73)(v43, v75);
                sub_10000AE7C(&v83);
                v47 = sub_100013120(v44, v46, v81);

                *(v42 + 4) = v47;
                *(v42 + 12) = 2048;
                v48 = *(v2 + 16);

                *(v42 + 14) = v48;

                _os_log_impl(&_mh_execute_header, v40, v41, "Adding decorator worker. { worker=%{private}s, reporterID=%lld }", v42, 0x16u);
                sub_10000AE7C(v80);
              }

              else
              {

                sub_10000AE7C(&v83);
              }

              sub_10000AE18(&v85, &v83);
              v57 = v76;
              swift_beginAccess();
              v58 = *(v2 + v57);
              v59 = swift_isUniquelyReferenced_nonNull_native();
              *(v2 + v57) = v58;
              if ((v59 & 1) == 0)
              {
                v58 = sub_10000F08C(0, v58[2] + 1, 1, v58, &qword_100045D80, &qword_100036600, &qword_100045BB8, &qword_100036508);
                *(v2 + v76) = v58;
              }

              v61 = v58[2];
              v60 = v58[3];
              if (v61 >= v60 >> 1)
              {
                v58 = sub_10000F08C((v60 > 1), v61 + 1, 1, v58, &qword_100045D80, &qword_100036600, &qword_100045BB8, &qword_100036508);
              }

              v58[2] = v61 + 1;
              sub_10000C43C(&v83, &v58[5 * v61 + 4]);
              *(v2 + v76) = v58;
              swift_endAccess();
              sub_10000AE7C(&v85);
            }

            else
            {
              v82 = 0;
              memset(v81, 0, sizeof(v81));
              sub_100006CC8(v81, &qword_100045D78, &qword_1000365F8);
            }

            sub_10000AE18(&v87, &v85);
            swift_retain_n();
            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              *&v80 = swift_slowAlloc();
              *&v83 = v80;
              *v64 = v72;
              sub_10000AEC8(&v85, v86);
              v65 = v74;
              dispatch thunk of WorkerProtocol.workerConfig.getter();
              v66 = Config.WorkerConfigs.rawValue.getter();
              v68 = v67;
              (*v73)(v65, v75);
              sub_10000AE7C(&v85);
              v69 = sub_100013120(v66, v68, &v83);

              *(v64 + 4) = v69;
              *(v64 + 12) = 2048;
              v70 = *(v2 + 16);

              *(v64 + 14) = v70;

              _os_log_impl(&_mh_execute_header, v62, v63, "Started worker. { worker=%s, reporterID=%lld }", v64, 0x16u);
              sub_10000AE7C(v80);
            }

            else
            {

              sub_10000AE7C(&v85);
            }
          }

          else
          {
            swift_retain_n();
            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              *&v83 = v52;
              *v51 = v78;
              v85 = v80;
              sub_10001712C(&qword_100045DD8, &qword_100036648);
              v53 = String.init<A>(describing:)();
              v55 = sub_100013120(v53, v54, &v83);

              *(v51 + 4) = v55;
              *(v51 + 12) = 2048;
              v56 = *(v2 + 16);

              *(v51 + 14) = v56;

              _os_log_impl(&_mh_execute_header, v49, v50, "Unable to start worker. Disabled for session lifetime. { worker=%{private}s, reporterID=%lld }", v51, 0x16u);
              sub_10000AE7C(v52);
            }

            else
            {
            }
          }

          sub_10000AE7C(&v87);
          goto LABEL_4;
        }

        (*(v25 + 8))(v28, v24);
        swift_retain_n();
        v12 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v12, v30))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *&v85 = v15;
          *v14 = v78;
          v87 = v80;
          sub_10001712C(&qword_100045DD8, &qword_100036648);
          v31 = String.init<A>(describing:)();
          v33 = sub_100013120(v31, v32, &v85);

          *(v14 + 4) = v33;
          *(v14 + 12) = 2048;
          v34 = *(v2 + 16);

          *(v14 + 14) = v34;

          v20 = v30;
          v21 = v12;
          v22 = "Unable to initialize worker. Disabled for session lifetime. { worker=%{private}s, reporterID=%lld }";
          goto LABEL_16;
        }
      }

LABEL_4:
      ++v9;
      --v8;
    }

    while (v8);
  }

  swift_beginAccess();
  sub_10000F1D4((v2 + 88), &Config.WorkerConfigs.messageProcessOrder.getter);
  return swift_endAccess();
}

unint64_t sub_100006AEC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100006BA4@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(sub_10001712C(&qword_100045DB0, &qword_100036630) + 48);
  v5 = *(sub_10001712C(&qword_100045400, &unk_100035E10) + 48);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = type metadata accessor for SimpleType();
  (*(*(v8 - 8) + 16))(&a2[v5], &a1[v4], v8);
  *a2 = v7;
  *(a2 + 1) = v6;
}

uint64_t sub_100006C60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001712C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006CC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10001712C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006D28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001712C(&qword_100045DB0, &qword_100036630);
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  __chkstk_darwin(v3);
  v6 = &v46 - v5;
  v49 = type metadata accessor for SimpleType();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v49);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001712C(&qword_100045DB8, &qword_100036638);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v53 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v17 = &v46 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v46 = v6;
  v52 = v21;
  if (v22)
  {
    v48 = a1;
    v23 = v20;
LABEL_11:
    v47 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = (*(v18 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = v49;
    (*(v7 + 16))(v10, *(v18 + 56) + *(v7 + 72) * v27, v49);
    v32 = v51;
    v33 = *(v51 + 48);
    *v17 = v29;
    *(v17 + 1) = v30;
    v34 = v10;
    v35 = v32;
    (*(v7 + 32))(&v17[v33], v34, v31);
    v36 = v50;
    (*(v50 + 56))(v17, 0, 1, v35);

    v37 = v47;
    a1 = v48;
    v26 = v23;
    v38 = v36;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v39 = v53;
    v1[2] = v52;
    v1[3] = v26;
    v1[4] = v37;
    v40 = v1[5];
    v41 = v1[6];
    sub_100006C60(v17, v39, &qword_100045DB8, &qword_100036638);
    v42 = 1;
    if ((*(v38 + 48))(v39, 1, v35) != 1)
    {
      v43 = v39;
      v44 = v46;
      sub_100006C60(v43, v46, &qword_100045DB0, &qword_100036630);
      v40(v44);
      sub_100006CC8(v44, &qword_100045DB0, &qword_100036630);
      v42 = 0;
    }

    v45 = sub_10001712C(&qword_100045400, &unk_100035E10);
    return (*(*(v45 - 8) + 56))(a1, v42, 1, v45);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v38 = v50;
        v35 = v51;
        (*(v50 + 56))(&v46 - v16, 1, 1, v51);
        v37 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v48 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10000710C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100006AEC(a1, a2, v6);
}

uint64_t sub_100007184(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  v9 = type metadata accessor for SimpleType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001712C(&qword_100045DA8, &qword_100036628);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = (v50 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v54 = a1;
  v55 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v56 = v19;
  v57 = 0;
  v58 = v22 & v20;
  v59 = a2;
  v60 = a3;
  v52 = v10;
  v53 = (v10 + 32);
  v50[3] = v10 + 40;

  v50[1] = a3;

  for (i = v17; ; v17 = i)
  {
    sub_100006D28(v17);
    v24 = sub_10001712C(&qword_100045400, &unk_100035E10);
    if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
    {
      sub_10000750C();
    }

    v25 = *(v24 + 48);
    v27 = *v17;
    v26 = v17[1];
    v28 = *v53;
    v29 = v17 + v25;
    v30 = v13;
    v31 = v9;
    (*v53)(v13, v29, v9);
    v32 = *v61;
    v34 = sub_10000710C(v27, v26);
    v35 = *(v32 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v38 = v33;
    if (*(v32 + 24) >= v37)
    {
      if ((a4 & 1) == 0)
      {
        sub_10000C940();
      }
    }

    else
    {
      v39 = v61;
      sub_100007518(v37, a4 & 1);
      v40 = *v39;
      v41 = sub_10000710C(v27, v26);
      if ((v38 & 1) != (v42 & 1))
      {
        goto LABEL_20;
      }

      v34 = v41;
    }

    v43 = *v61;
    if (v38)
    {

      v23 = v43[7] + *(v52 + 72) * v34;
      v13 = v30;
      v9 = v31;
      (*(v52 + 40))(v23, v30, v31);
    }

    else
    {
      v43[(v34 >> 6) + 8] |= 1 << v34;
      v44 = (v43[6] + 16 * v34);
      *v44 = v27;
      v44[1] = v26;
      v45 = v43[7] + *(v52 + 72) * v34;
      v13 = v30;
      v9 = v31;
      v28(v45, v30, v31);
      v46 = v43[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_19;
      }

      v43[2] = v48;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100007518(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for SimpleType();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_10001712C(&qword_100045408, &unk_1000364E0);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

char *sub_100007898(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045E18, &qword_100036688);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10000799C(char *a1, int64_t a2, char a3)
{
  result = sub_100007898(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000079BC(uint64_t result, int a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for ClientServerInstance();
      swift_dynamicCast();
      return v17;
    }

    goto LABEL_28;
  }

  if (a3)
  {
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      __CocoaSet.Index.element.getter();
      type metadata accessor for ClientServerInstance();
      swift_dynamicCast();
      v6 = *(a4 + 40);
      Hasher.init(_seed:)();
      v7 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
      Hasher._combine(_:)(*(v17 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
      v8 = *(v17 + 24);
      v9 = *(v17 + 32);
      String.hash(into:)();
      v10 = Hasher._finalize()();
      v11 = -1 << *(a4 + 32);
      v5 = v10 & ~v11;
      if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v12 = ~v11;
        v13 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
        while (1)
        {
          v14 = *(*(a4 + 48) + 8 * v5);
          if (*(v14 + v13) == *(v17 + v7))
          {
            v15 = *(v14 + 24) == *(v17 + 24) && *(v14 + 32) == *(v17 + 32);
            if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_21;
            }

            v13 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
          }

          v5 = (v5 + 1) & v12;
          if (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_21:
  }

  v16 = *(*(a4 + 48) + 8 * v5);
}

uint64_t sub_100007BDC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_100007BE8(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v12, v13, "setServiceType() called. { reporterID=%lld }", v14, 0xCu);
    }

    static Double.now()();
    if (*(v11 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v15)
    {
      v15 = *(v11 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
    }

    *(v11 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v15 + 1.0;
    v16 = sub_100003D80(a2, 0, 0x6976726553746573, 0xEE00657079546563);
    if (v16)
    {
      v17 = v16;
      v18 = *(v16 + 64);
      if (v18 == a3)
      {
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          aBlock[0] = v22;
          *v21 = 136446466;
          v23 = static Utilities.serviceTypeDescription(from:)();
          v25 = sub_100013120(v23, v24, aBlock);

          *(v21 + 4) = v25;
          *(v21 + 12) = 2048;
          *(v21 + 14) = a2;
          v26 = "ServiceType did not change. { serviceType=%{public}s, reporterID=%lld }";
LABEL_20:
          _os_log_impl(&_mh_execute_header, v19, v20, v26, v21, 0x16u);
          sub_10000AE7C(v22);

          goto LABEL_21;
        }

        goto LABEL_21;
      }

      if (v18 == 0xFFFF)
      {
        sub_100008388();
        *(v17 + 64) = a3;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          aBlock[0] = v22;
          *v21 = 136446466;
          v52 = static Utilities.serviceTypeDescription(from:)();
          v54 = sub_100013120(v52, v53, aBlock);

          *(v21 + 4) = v54;
          *(v21 + 12) = 2048;
          *(v21 + 14) = a2;
          v26 = "Received serviceType for reporterID. { serviceType=%{public}s, reporterID=%lld }";
          goto LABEL_20;
        }

LABEL_21:

        return;
      }

      v30 = *(v16 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
      v31 = swift_allocObject();
      *(v31 + 16) = v17;
      *(v31 + 24) = 0;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_100019DF8;
      *(v32 + 24) = v31;
      aBlock[4] = sub_10000853C;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002EB0;
      aBlock[3] = &unk_100041A60;
      v33 = _Block_copy(aBlock);

      dispatch_sync(v30, v33);
      _Block_release(v33);
      LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

      if (v30)
      {
        __break(1u);
        return;
      }

      v35 = sub_10002E50C(v34);
      sub_100008388();
      *(v35 + 64) = a3;
      v36 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
      swift_beginAccess();

      v37 = *(v11 + v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(v11 + v36);
      *(v11 + v36) = 0x8000000000000000;
      sub_1000085BC(v35, a2, isUniquelyReferenced_nonNull_native);
      *(v11 + v36) = v57;
      swift_endAccess();
      v39 = *(v17 + 64);
      v55 = static Utilities.serviceTypeDescription(from:)();
      v41 = v40;
      v42 = static Utilities.serviceTypeDescription(from:)();
      v44 = v43;

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();

      v56 = v45;
      if (os_log_type_enabled(v45, v46))
      {
        v47 = v42;
        v48 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v48 = 136446722;
        v49 = sub_100013120(v47, v44, aBlock);

        *(v48 + 4) = v49;
        *(v48 + 12) = 2082;
        v50 = sub_100013120(v55, v41, aBlock);

        *(v48 + 14) = v50;
        *(v48 + 22) = 2048;
        *(v48 + 24) = a2;
        v51 = v56;
        _os_log_impl(&_mh_execute_header, v56, v46, "setServiceType() { serviceType=%{public}s, prevServiceType=%{public}s, reporterID=%lld }", v48, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  else
  {
    static Logger.service.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "ClientServerInstance is gone. { action=set:serviceType }", v29, 2u);
    }

    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_100008330()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

void sub_100008388()
{
  v1 = v0;
  swift_retain_n();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136380931;
    v6 = static Utilities.serviceTypeDescription(from:)();
    v8 = sub_100013120(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2048;
    v9 = *(v1 + 16);

    *(v4 + 14) = v9;

    _os_log_impl(&_mh_execute_header, v2, v3, "serviceType set. { serviceType=%{private}s, reporterID=%lld }", v4, 0x16u);
    sub_10000AE7C(v5);
  }

  else
  {
  }
}

unint64_t sub_100008570()
{
  result = qword_1000453C8;
  if (!qword_1000453C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000453C8);
  }

  return result;
}

unint64_t sub_1000085BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000043D4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100008708(v14, a3 & 1);
      v18 = *v4;
      result = sub_1000043D4(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100029D1C();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_100008708(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10001712C(&qword_100045BA8, &qword_1000364F8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_100008A00()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin();
  v6 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue;
  v49 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server);
  v8 = *(v49 + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  *v6 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v3[13];
  v10(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v11 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v12 = v3[1];
  v12(v6, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v13 = *(v49 + v7);
  *v6 = v13;
  v10(v6, v9, v2);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  v12(v6, v2);
  if ((v15 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v16 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
  swift_beginAccess();
  v49 = v16;
  v17 = *(v1 + v16);
  v18 = *(v17 + 16);
  if (!v18)
  {
LABEL_6:
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v19 = sub_1000092F0(*(v17 + 16), 0);
  v20 = sub_100009378(&v51, v19 + 4, v18, v17);

  sub_10000750C();
  if (v20 != v18)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v21 = v19[2];
  v22 = &_swiftEmptyArrayStorage;
  if (v21)
  {
    v23 = v19 + 4;
    do
    {
      v27 = *v23++;
      v26 = v27;
      v28 = sub_100003D80(v27, 0, 0x7669746341746567, 0xE900000000000065);
      if (v28)
      {
        v29 = *(v28 + 66);

        if (v29 == 1)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10002CEC0(0, v22[2] + 1, 1);
            v22 = v51;
          }

          v25 = v22[2];
          v24 = v22[3];
          if (v25 >= v24 >> 1)
          {
            sub_10002CEC0((v24 > 1), v25 + 1, 1);
            v22 = v51;
          }

          v22[2] = v25 + 1;
          v22[v25 + 4] = v26;
        }
      }

      --v21;
    }

    while (v21);
  }

  v31 = v22[2];
  if (v31)
  {
    v51 = &_swiftEmptyArrayStorage;
    sub_10002CEA0(0, v31, 0);
    v32 = 4;
    v33 = v51;
    do
    {
      v50 = v22[v32];
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v33;
      v37 = v33[2];
      v36 = v33[3];
      if (v37 >= v36 >> 1)
      {
        v48 = v34;
        v39 = v35;
        sub_10002CEA0((v36 > 1), v37 + 1, 1);
        v35 = v39;
        v34 = v48;
        v33 = v51;
      }

      v33[2] = v37 + 1;
      v38 = &v33[2 * v37];
      v38[4] = v34;
      v38[5] = v35;
      ++v32;
      --v31;
    }

    while (v31);
  }

  else
  {

    v33 = &_swiftEmptyArrayStorage;
  }

  v51 = v33;
  sub_10001712C(&qword_100045588, &qword_1000360D0);
  sub_100001C18(&qword_100045590, &qword_100045588, &qword_1000360D0);
  v40 = BidirectionalCollection<>.joined(separator:)();
  v42 = v41;

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v45 = 136381187;
    *(v45 + 4) = sub_100013120(*(v1 + 24), *(v1 + 32), &v51);
    *(v45 + 12) = 2048;
    *(v45 + 14) = *(*(v1 + v49) + 16);

    *(v45 + 22) = 2081;
    v46 = sub_100013120(v40, v42, &v51);

    *(v45 + 24) = v46;
    _os_log_impl(&_mh_execute_header, v43, v44, "Active reporting sessions. { clientProcessName=%{private}s, sessionCount=%ld, activeSessions=%{private}s }", v45, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100008F8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v20 = *(v10 - 8);
  v21 = v10;
  v11 = *(v20 + 64);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v3 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a2;
  v16[4] = a1;
  aBlock[4] = sub_100009E1C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_1000418A8;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  static DispatchQoS.unspecified.getter();
  v23 = &_swiftEmptyArrayStorage;
  sub_100001C60(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v22 + 8))(v9, v6);
  (*(v20 + 8))(v13, v21);
}

uint64_t sub_1000092B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_1000092F0(uint64_t a1, uint64_t a2)
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

  sub_10001712C(&qword_100045DF8, &qword_100036668);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_100009378(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100009478(__int16 a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v20 = *(v10 - 8);
  v21 = v10;
  v11 = *(v20 + 64);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v3 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a2;
  *(v16 + 32) = a1;
  aBlock[4] = sub_10000837C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_1000419E8;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  static DispatchQoS.unspecified.getter();
  v23 = &_swiftEmptyArrayStorage;
  sub_100001C60(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v22 + 8))(v9, v6);
  (*(v20 + 8))(v13, v21);
}

uint64_t sub_100009794()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000097CC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 34, 7);
}

void sub_100009808(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  isEscapingClosureAtFileLocation = *(v3 - 8);
  v5 = *(isEscapingClosureAtFileLocation + 64);
  __chkstk_darwin(v3);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_12:
    static Logger.service.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "ClientServerInstance is gone. { action=set:configuration }", v29, 2u);
    }

    (*(isEscapingClosureAtFileLocation + 8))(v7, v3);
    return;
  }

  v9 = Strong;
  static Double.now()();
  if (*(v9 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v10)
  {
    v10 = *(v9 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
  }

  *(v9 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v10 + 1.0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v11, v12, "setConfiguration() called. { reporterID=%lld }", v13, 0xCu);
  }

  v14 = Dictionary<>.asSimpleType()();
  if (v14)
  {
    v3 = v14;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136380931;
      v19 = Dictionary.description.getter();
      v21 = sub_100013120(v19, v20, aBlock);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2048;
      *(v17 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v15, v16, "Setting configuration { configuration=%{private}s, reporterID=%lld }", v17, 0x16u);
      sub_10000AE7C(v18);
    }

    v22 = sub_100003D80(a2, 0, 0x69666E6F43746573, 0xE900000000000067);
    if (!v22)
    {

      return;
    }

    v23 = *(v22 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
    v24 = v22;
    v7 = swift_allocObject();
    *(v7 + 2) = v24;
    *(v7 + 3) = v3;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100009FD0;
    *(v25 + 24) = v7;
    aBlock[4] = sub_10000853C;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002EB0;
    aBlock[3] = &unk_100041920;
    v26 = _Block_copy(aBlock);

    dispatch_sync(v23, v26);
    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136380931;
    v34 = Dictionary.description.getter();
    v36 = sub_100013120(v34, v35, aBlock);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2048;
    *(v32 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v30, v31, "Error converting session configuration. { configuration=%{private}s, reporterID=%lld }", v32, 0x16u);
    sub_10000AE7C(v33);
  }
}

uint64_t sub_100009DD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    swift_beginAccess();
    v11 = *(a1 + 72);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v11;
    sub_100007184(a2, sub_100006BA4, 0, isUniquelyReferenced_nonNull_native, &v16);

    v13 = *(a1 + 72);
    *(a1 + 72) = v16;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_100009FD8(uint64_t a1)
{
  v93 = a1;
  v99 = type metadata accessor for Config.WorkerConfigs();
  v102 = *(v99 - 8);
  v2 = *(v102 + 64);
  __chkstk_darwin(v99);
  v98 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001712C(&qword_100045D70, &qword_1000365F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v90 = &v86 - v6;
  v7 = type metadata accessor for OperatingSystem();
  v101 = *(v7 - 8);
  v8 = *(v101 + 64);
  __chkstk_darwin(v7);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Message.Metadata();
  v94 = *(v92 - 8);
  v11 = *(v94 + 64);
  __chkstk_darwin(v92);
  v91 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Message();
  v95 = *(v100 - 8);
  v13 = *(v95 + 64);
  v14 = __chkstk_darwin(v100);
  v104 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v86 - v17;
  v19 = __chkstk_darwin(v16);
  v105 = &v86 - v20;
  __chkstk_darwin(v19);
  v22 = &v86 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  v32 = *(v24 + 8);
  v31 = v24 + 8;
  v32(v27, v23);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_37:
    swift_once();
    goto LABEL_4;
  }

  v31 = OBJC_IVAR____TtC15audioanalyticsd7Session_startOnFirstMessageCalled;
  v28 = v1;
  if (*(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_startOnFirstMessageCalled))
  {
    goto LABEL_5;
  }

  if (qword_1000453B8 != -1)
  {
    goto LABEL_37;
  }

LABEL_4:
  sub_100005EA4(qword_100046148);
  *(v28 + v31) = 1;
LABEL_5:
  v33 = OBJC_IVAR____TtC15audioanalyticsd7Session_logger;

  v103 = v33;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134218240;
    *(v36 + 4) = v28[2];
    *(v36 + 12) = 1024;
    *(v36 + 14) = *(v28 + 24);

    _os_log_impl(&_mh_execute_header, v34, v35, "Processing message. { reporterID=%lld, singleServerSession=%{BOOL}d }", v36, 0x12u);
  }

  else
  {
  }

  v37 = v28[7];
  sub_10000C2F0(&v109);
  v38 = v37;
  v39 = v93;
  v40 = sub_10000D868(v38, v93, &v109, 0);
  v42 = v41;
  sub_100006CC8(&v109, &qword_100045598, &qword_1000360E0);
  if ((v42 & 0x100) != 0)
  {

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 134217984;
      *(v63 + 4) = v28[2];

      _os_log_impl(&_mh_execute_header, v61, v62, "Discarding message. { reporterID=%lld }", v63, 0xCu);
    }

    else
    {
    }

    goto LABEL_35;
  }

  v97 = v40;
  v106 = *(v95 + 16);
  v107 = v95 + 16;
  v106(v22, v39, v100);
  sub_10000EB14(v39);
  v43 = Message.metadata.modify();
  v108 = v22;
  v44 = v43;
  Message.Metadata.isRedundant.setter();
  v44(&v109, 0);
  v45 = *(v28 + 66);
  v46 = Message.metadata.modify();
  Message.Metadata.isSessionStarted.setter();
  v46(&v109, 0);
  v47 = v108;
  Message.appName.getter();
  if (!v48)
  {
    sub_10000E894();
  }

  Message.appName.setter();
  v49 = v91;
  Message.metadata.getter();
  v50 = Message.Metadata.requiresSummaryDecoration.getter();
  v51 = *(v94 + 8);
  v94 += 8;
  v88 = v51;
  v51(v49, v92);
  v89 = v42;
  if (v50)
  {
    v52 = Message.metadata.modify();
    Message.Metadata.requiresSummaryDecoration.setter();
    v52(&v109, 0);
    v53 = v42 & 1;
    v54 = v97;

    v56 = sub_100012BAC(v55);

    v106(v18, v47, v100);
    v57 = v56;
    v58 = v56[2];
    if (v58)
    {
      LODWORD(v96) = v53;
      v87 = v28;
      v59 = (v57 + 4);
      v60 = (v101 + 8);
      do
      {
        sub_10000AE18(v59, &v109);
        sub_10000AEC8(&v109, v110);
        static DeviceUtilities.currentOperatingSystem.getter();
        dispatch thunk of SummaryDecorator.addDecoratorData(_:operatingSystem:)();
        (*v60)(v10, v7);
        sub_10000AE7C(&v109);
        v59 += 40;
        --v58;
      }

      while (v58);

      v28 = v87;
      v39 = v93;
      v47 = v108;
      v54 = v97;
    }

    else
    {
    }

    v65 = v95;
    v66 = v105;
    v64 = v100;
    (*(v95 + 32))(v105, v18, v100);
    (*(v65 + 40))(v47, v66, v64);
  }

  else
  {
    v64 = v100;
    v54 = v97;
  }

  swift_beginAccess();
  v67 = v28[11];

  v69 = sub_10000E4F0(v68, v54);

  v70 = v69[2];
  v71 = v104;
  if (v70)
  {
    v87 = v69;
    v72 = (v69 + 4);
    swift_beginAccess();
    v105 = (v95 + 8);
    v97 = v102 + 8;
    *&v73 = 136381187;
    v96 = v73;
    do
    {
      sub_10000AE18(v72, &v109);
      sub_10000AEC8(&v109, v110);
      v106(v71, v47, v64);
      dispatch thunk of WorkerProtocol.process(message:)();
      (*v105)(v71, v64);
      sub_10000AE7C(&v109);
      v72 += 40;
      --v70;
    }

    while (v70);

    v39 = v93;
  }

  else
  {
  }

  v74 = sub_10002A60C();
  LOWORD(v42) = v89;
  if (v74)
  {
    sub_100015070();
    sub_1000150F0(v39);
  }

  swift_beginAccess();
  v75 = v91;
  Message.metadata.getter();
  v76 = Message.Metadata.isRedundant.getter();
  v88(v75, v92);
  result = swift_endAccess();
  if ((v76 & 1) == 0)
  {
    v78 = Message.category.getter();
    v79 = v90;
    v106(v90, v39, v64);
    (*(v95 + 56))(v79, 0, 1, v64);
    swift_beginAccess();
    sub_10000D5AC(v79, v78);
    result = swift_endAccess();
    v80 = *(v28 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique);
    v81 = __CFADD__(v80, 1);
    v82 = v80 + 1;
    if (v81)
    {
      goto LABEL_39;
    }

    *(v28 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique) = v82;
    v64 = v100;
  }

  v83 = *(v28 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages);
  v81 = __CFADD__(v83, 1);
  v84 = v83 + 1;
  if (!v81)
  {
    *(v28 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages) = v84;
    (*(v95 + 8))(v47, v64);
LABEL_35:
    v85 = Message.content.getter();
    sub_10000B6EC(v85);

    return (v42 & 0x100) == 0;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_10000AE18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000AE7C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_10000AEC8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_10000AF0C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v73 = a2;
  v8 = sub_10001712C(&qword_100045480, &qword_100035FD8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v71 = &v61 - v10;
  v65 = type metadata accessor for Message();
  v67 = *(v65 - 8);
  v11 = *(v67 + 64);
  __chkstk_darwin(v65);
  v72 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TraceArgs();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  __chkstk_darwin(v13);
  v66 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for TraceCode();
  v16 = *(v68 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v68);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v64 = a4;
    v27 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_logger;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    v30 = os_log_type_enabled(v28, v29);
    v63 = a3;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v31 = 134284035;
      *(v31 + 4) = v73;
      *(v31 + 12) = 2082;
      v32 = static Utilities.eventCategoryDescription(from:)();
      v34 = sub_100013120(v32, v33, &v74);
      v62 = a5;
      v35 = v16;
      v36 = v19;
      v37 = v34;

      *(v31 + 14) = v37;
      *(v31 + 22) = 2082;
      v38 = static Utilities.eventTypeDescription(from:)();
      v40 = sub_100013120(v38, v39, &v74);

      *(v31 + 24) = v40;
      v19 = v36;
      v16 = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "sendMessage() called. { reporterID=%{private}lld, category=%{public}s, type=%{public}s }", v31, 0x20u);
      swift_arrayDestroy();
    }

    static Double.now()();
    if (*(v26 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v41)
    {
      v41 = *(v26 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
    }

    *(v26 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v41 + 1.0;
    if (Dictionary<>.asSimpleType()())
    {
      v62 = v27;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        *(v44 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v42, v43, "sendMessage { reporterID=%lld }", v44, 0xCu);
      }

      v45 = v68;
      (*(v16 + 104))(v19, enum case for TraceCode.serverSendMessage(_:), v68);
      v46 = v73;
      static Utilities.positiveReporterID(_:)();
      default argument 1 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 2 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 3 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      v47 = v19;
      v48 = v16;
      v49 = v66;
      TraceArgs.init(arg1:arg2:arg3:arg4:)();
      static Trace.post(_:args:)();
      (*(v69 + 8))(v49, v70);
      (*(v48 + 8))(v47, v45);
      v50 = type metadata accessor for Message.Metadata();
      (*(*(v50 - 8) + 56))(v71, 1, 1, v50);
      v51 = v72;
      Message.init(category:type:content:metadata:)();
      if (sub_10000B9D0(v51, v46))
      {
        (*(v67 + 8))(v72, v65);
      }

      else
      {
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 134217984;
          *(v60 + 4) = v73;
          _os_log_impl(&_mh_execute_header, v58, v59, "Message not sent. { reporterID=%lld }", v60, 0xCu);
        }

        (*(v67 + 8))(v72, v65);
      }
    }

    else
    {
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Message cannot be converted to simple type. Aborting send.", v57, 2u);
      }
    }
  }

  else
  {
    static Logger.service.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "ClientServerInstance is gone. { action=send }", v54, 2u);
    }

    (*(v21 + 8))(v24, v20);
  }
}

uint64_t sub_10000B6B8()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_10000B6EC(uint64_t a1)
{

  v3 = sub_10000CBC0(a1, v1);

  if (*(v3 + 16))
  {
    v5 = *(v1 + 80);
    if (v5)
    {
      v6 = *(v1 + 80);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = v5;
      sub_100007184(v3, sub_100006BA4, 0, isUniquelyReferenced_nonNull_native, &v9);

      v8 = *(v1 + 80);
      *(v1 + 80) = v9;
    }

    else
    {
      *(v1 + 80) = v3;
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_10000B7FC(uint64_t a1, Swift::UInt32 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10000B964(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100029FE8();
      goto LABEL_7;
    }

    sub_1000113FC(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_10000B964(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for AudioEventCategory(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = type metadata accessor for Message();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_10000D500(v10, a2, a1, v16);
}

unint64_t sub_10000B964(Swift::UInt32 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_10000D7FC(a1, v4);
}

uint64_t sub_10000B9D0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Message.Metadata();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(*(v2 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if (static Constants.unknownReporterID.getter() == a2)
    {
      v18 = sub_100013DB8(a1);
      return v18 & 1;
    }

    v19 = sub_100003D80(a2, 0, 0x737365636F7270, 0xE700000000000000);
    if (v19)
    {
      v20 = v19;
      Message.metadata.getter();
      v21 = Message.Metadata.isBroadcast.getter();
      (*(v6 + 8))(v9, v5);
      if ((v21 & 1) == 0 || *(v20 + 66) == 1)
      {
        v22 = sub_10000DF9C(a1, v20);

        v18 = v22;
        return v18 & 1;
      }

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        *(v28 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v26, v27, "Session is not started. Abandoning broadcast message. { reporterID=%lld }", v28, 0xCu);
      }
    }

    else
    {
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        *(v25 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v23, v24, "Session not found! Abandoning message. { reporterID=%lld }", v25, 0xCu);
      }
    }

    v18 = 0;
    return v18 & 1;
  }

  __break(1u);
  return result;
}

void sub_10000BD5C()
{
  v1 = v0;
  v2 = type metadata accessor for TraceArgs();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TraceCode();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001712C(&qword_100045DF0, &qword_100036660);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v32 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v22, v23, "startOnQueue() called. { reporterID=%lld }", v24, 0xCu);
  }

  else
  {
  }

  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v26 = OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime;
  swift_beginAccess();
  sub_10000C27C(v14, v1 + v26, &qword_100045DF0, &qword_100036660);
  swift_endAccess();
  if (*(v1 + 66) != 1)
  {
    *(v1 + 66) = 1;
    if (qword_1000453C0 == -1)
    {
LABEL_9:
      sub_100005EA4(qword_100046150);
      sub_10000F604();
      (*(v7 + 104))(v10, enum case for TraceCode.sessionCreate(_:), v6);
      v30 = *(v1 + 16);
      static Utilities.positiveReporterID(_:)();
      v31 = *(v1 + 64);
      default argument 2 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 3 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      TraceArgs.init(arg1:arg2:arg3:arg4:)();
      static Trace.post(_:args:)();
      (*(v33 + 8))(v5, v34);
      (*(v7 + 8))(v10, v6);
      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_9;
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v27, v28, "Session already started. { reporterID=%lld }", v29, 0xCu);
  }

  else
  {
  }
}

uint64_t sub_10000C27C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001712C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C2F0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_10000C454(v1 + 96, &v7, &qword_100045598, &qword_1000360E0);
  if (v8)
  {
    return sub_10000C43C(&v7, a1);
  }

  sub_100006CC8(&v7, &qword_100045598, &qword_1000360E0);
  v4 = type metadata accessor for NonOwningSession();
  swift_allocObject();
  v5 = v1;
  v6 = sub_10000F010(v1);
  a1[3] = v4;
  a1[4] = sub_100001CF0(&qword_100045DD0, type metadata accessor for NonOwningSession);
  *a1 = v6;
  sub_10000AE18(a1, &v7);
  swift_beginAccess();
  sub_10000C27C(&v7, v5 + 96, &qword_100045598, &qword_1000360E0);
  return swift_endAccess();
}

uint64_t sub_10000C43C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000C454(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001712C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C4BC()
{
  v1 = *v0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0xFFFFLL;
  }

  v3 = *(Strong + 64);

  return v3;
}

uint64_t *sub_10000C4FC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000C560()
{
  v1 = sub_10001712C(&qword_1000457E8, &qword_1000364F0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = (&v19 - v3);
  v5 = type metadata accessor for Keys();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = *(v11 + 72);
  }

  else
  {
    sub_100005ADC(&_swiftEmptyArrayStorage);
  }

  (*(v6 + 104))(v9, enum case for Keys.applicationName(_:), v5);
  Dictionary<>.subscript.getter();

  (*(v6 + 8))(v9, v5);
  v13 = type metadata accessor for SimpleType();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {
    sub_10000C80C(v4);
LABEL_9:
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);

    return v16;
  }

  if ((*(v14 + 88))(v4, v13) != enum case for SimpleType.string(_:))
  {
    (*(v14 + 8))(v4, v13);
    goto LABEL_9;
  }

  (*(v14 + 96))(v4, v13);
  v16 = *v4;
  v15 = v4[1];
  return v16;
}

uint64_t sub_10000C80C(uint64_t a1)
{
  v2 = sub_10001712C(&qword_1000457E8, &qword_1000364F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C880(uint64_t a1)
{
  v2 = sub_10001712C(&qword_100045598, &qword_1000360E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C8E8(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

char *sub_10000C940()
{
  v1 = v0;
  v36 = type metadata accessor for SimpleType();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001712C(&qword_100045408, &unk_1000364E0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
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

uint64_t sub_10000CBC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_10002E414(v13, v8, a1, a2);

      return v11;
    }
  }

  __chkstk_darwin(v10);
  bzero(&v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_10000D100((&v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_10000CD80(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v7 = type metadata accessor for SimpleType();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  v9 = __chkstk_darwin(v7);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v52 = &v46 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v51 = v11;
  sub_10001712C(&qword_100045408, &unk_1000364E0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v50;
  }

  v16 = 0;
  v48 = result;
  v49 = v56 + 16;
  v17 = v56 + 32;
  v18 = result + 64;
  v19 = v51;
  v47 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v53 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = (a4[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v56;
    v55 = *(v56 + 72);
    v31 = v52;
    (*(v56 + 16))(v52, v26 + v55 * v25, v20);
    v32 = *(v30 + 32);
    v33 = v31;
    v17 = v21;
    v32(v57, v33, v20);
    v14 = v48;
    v34 = *(v48 + 40);
    Hasher.init(_seed:)();

    v54 = v28;
    String.hash(into:)();
    result = Hasher._finalize()();
    v35 = -1 << *(v14 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      v19 = v51;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v18 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v19 = v51;
LABEL_26:
    *(v18 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v14 + 48) + 16 * v38);
    v44 = v55;
    *v43 = v54;
    v43[1] = v29;
    result = (v32)(*(v14 + 56) + v38 * v44, v57, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47;
    v15 = v53;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = v50[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
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

uint64_t sub_10000D100(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v50 = a4;
  v44 = a2;
  v45 = a1;
  v49 = sub_10001712C(&qword_100045DB0, &qword_100036630);
  v5 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v7 = (&v43 - v6);
  v8 = type metadata accessor for SimpleType();
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v57 = a3;
  v17 = a3[8];
  v16 = a3 + 8;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v46 = 0;
  v47 = v11 + 16;
  v48 = v11;
  v51 = (v11 + 8);
  v52 = v21;
  v54 = result;
  v55 = v7;
  v53 = v13;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v58 = (v20 - 1) & v20;
LABEL_13:
    v25 = v22 | (v14 << 6);
    v26 = v57[7];
    v27 = (v57[6] + 16 * v25);
    v29 = *v27;
    v28 = v27[1];
    v30 = *(v48 + 72);
    v56 = v25;
    v31 = *(v48 + 16);
    v31(v13, v26 + v30 * v25, v8);
    *v7 = v29;
    v7[1] = v28;
    v31(v7 + *(v49 + 48), v13, v8);
    v32 = *(v50 + 56);
    swift_bridgeObjectRetain_n();
    v33 = Config.neededPreviousFields.getter();
    v34 = v33;
    if (*(v33 + 16) && (v35 = *(v33 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v36 = Hasher._finalize()(), v37 = -1 << *(v34 + 32), v38 = v36 & ~v37, ((*(v34 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
    {
      v39 = ~v37;
      while (1)
      {
        v40 = (*(v34 + 48) + 16 * v38);
        v41 = *v40 == v29 && v40[1] == v28;
        if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v38 = (v38 + 1) & v39;
        if (((*(v34 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v7 = v55;
      sub_100006CC8(v55, &qword_100045DB0, &qword_100036630);
      v13 = v53;
      v8 = v54;
      (*v51)(v53, v54);

      *(v45 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
      v42 = __OFADD__(v46++, 1);
      v21 = v52;
      v20 = v58;
      if (v42)
      {
        __break(1u);
        return sub_10000CD80(v45, v44, v46, v57);
      }
    }

    else
    {
LABEL_5:

      v7 = v55;
      sub_100006CC8(v55, &qword_100045DB0, &qword_100036630);
      v13 = v53;
      v8 = v54;
      (*v51)(v53, v54);

      v21 = v52;
      v20 = v58;
    }
  }

  v23 = v14;
  while (1)
  {
    v14 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      return sub_10000CD80(v45, v44, v46, v57);
    }

    v24 = v16[v14];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v58 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000D500(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Message();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_10000D5AC(uint64_t a1, Swift::UInt32 a2)
{
  v3 = v2;
  v6 = sub_10001712C(&qword_100045D70, &qword_1000365F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for Message();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_100006CC8(a1, &qword_100045D70, &qword_1000365F0);
    v15 = *v3;
    v16 = sub_10000B964(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100029FE8();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_10002C8CC(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_100006CC8(v9, &qword_100045D70, &qword_1000365F0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_10000B7FC(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

unint64_t sub_10000D7FC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10000D868(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v46 = a4;
  v39 = type metadata accessor for Message.Metadata();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v39);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RouterConfig();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Config.routerConfigs.getter();
  v45 = *(v14 + 16);
  if (!v45)
  {
LABEL_40:

    if (qword_1000453A8 != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v15 = 0;
  v42 = v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v37 = (v6 + 8);
  v44 = (v10 + 8);
  v53 = xmmword_100035FB0;
  v49 = a3;
  v47 = a2;
  v40 = v10 + 16;
  v41 = v10;
  v43 = v14;
  while (v15 < *(v14 + 16))
  {
    v16 = *(v10 + 16);
    v16(v13, v42 + *(v10 + 72) * v15, v9);
    sub_10000E130(a3, v54);
    if (v55)
    {
      sub_10000AEC8(v54, v55);
      dispatch thunk of SessionProtocol.serviceType.getter();
      sub_10000AE7C(v54);
    }

    else
    {
      sub_10000C880(v54);
    }

    sub_10001712C(&qword_1000457F0, &qword_1000362C0);
    v17 = swift_allocObject();
    *(v17 + 16) = v53;
    *(v17 + 56) = v9;
    *(v17 + 64) = &protocol witness table for RouterConfig;
    v18 = sub_10000C4FC((v17 + 32));
    v16(v18, v13, v9);
    v52 = static ConfigCommon.matches(audioServiceType:config:)();

    sub_10000E130(a3, v54);
    if (v55)
    {
      sub_10000AEC8(v54, v55);
      dispatch thunk of SessionProtocol.clientProcessName.getter();
      sub_10000AE7C(v54);
    }

    else
    {
      sub_10000C880(v54);
    }

    v19 = swift_allocObject();
    *(v19 + 16) = v53;
    *(v19 + 56) = v9;
    *(v19 + 64) = &protocol witness table for RouterConfig;
    v20 = sub_10000C4FC((v19 + 32));
    v16(v20, v13, v9);
    v50 = static ConfigCommon.matches(sessionProcessName:config:)();

    sub_10000E130(a3, v54);
    if (v55)
    {
      sub_10000AEC8(v54, v55);
      dispatch thunk of SessionProtocol.appName.getter();
      sub_10000AE7C(v54);
    }

    else
    {
      sub_10000C880(v54);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = v53;
    *(v21 + 56) = v9;
    *(v21 + 64) = &protocol witness table for RouterConfig;
    v22 = sub_10000C4FC((v21 + 32));
    v16(v22, v13, v9);
    v48 = static ConfigCommon.matches(sessionAppName:config:)();

    v23 = RouterConfig.audioEventType.getter();
    v24 = v23;
    if ((v23 & 0x10000) != 0)
    {
      v24 = Message.type.getter();
    }

    v51 = Message.type.getter();
    v25 = RouterConfig.audioEventCategory.getter();
    v26 = v25;
    if ((v25 & 0x100000000) != 0)
    {
      v26 = Message.category.getter();
    }

    v27 = Message.category.getter();
    v28 = RouterConfig.predicate.getter();
    if (v28)
    {
      v29 = v28;
      v30 = Message.flattenToAnyDictionary()();
      sub_10000E1A0(v30);

      v31 = static Predicate.evaluate(_:with:)();

      if (v46)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v31 = 1;
      if (v46)
      {
        goto LABEL_24;
      }
    }

    sub_10000E130(v49, v54);
    if (!v55)
    {
      sub_10000C880(v54);
      goto LABEL_33;
    }

    sub_10000AEC8(v54, v55);
    v32 = dispatch thunk of SessionProtocol.isSingleMessageSession.getter();
    sub_10000AE7C(v54);
    if (v32)
    {
LABEL_24:
      if (RouterConfig.broadcast.getter())
      {
        v33 = v38;
        Message.metadata.getter();
        Message.Metadata.isBroadcast.getter();
        (*v37)(v33, v39);
        if ((v52 & 1) != 0 && v24 == v51 && v26 == v27 && ((v31 ^ 1) & 1) == 0 && ((v50 ^ 1) & 1) == 0 && ((v48 ^ 1) & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_3;
      }
    }

LABEL_33:
    if ((v52 & 1) != 0 && v24 == v51 && v26 == v27 && (v31 & 1) != 0 && ((v50 ^ 1) & 1) == 0 && ((v48 ^ 1) & 1) == 0)
    {
LABEL_39:

      v34 = RouterConfig.workers.getter();
      RouterConfig.discard.getter();
      (*v44)(v13, v9);
      return v34;
    }

LABEL_3:
    ++v15;
    (*v44)(v13, v9);
    a3 = v49;
    v10 = v41;
    v14 = v43;
    if (v45 == v15)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_44:
  swift_once();
LABEL_41:
  v34 = qword_100046128;

  return v34;
}

uint64_t sub_10000DF58@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_100009FD8(a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_10000DF9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  sub_10000C2F0(v13);
  sub_10000D868(v5, a1, v13, 0);
  LOWORD(v5) = v6;
  sub_10000C880(v13);

  if ((v5 & 0x100) != 0)
  {

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *(a2 + 16);

      _os_log_impl(&_mh_execute_header, v10, v11, "Discarding message { reporterID=%lld }", v12, 0xCu);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v8 = *(a2 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
    __chkstk_darwin(v7);
    OS_dispatch_queue.sync<A>(execute:)();
    return LOBYTE(v13[0]);
  }
}

uint64_t sub_10000E130(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001712C(&qword_100045598, &qword_1000360E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E1A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001712C(&qword_1000457F8, &qword_1000362C8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000E468(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000E4E0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000E4E0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000E4E0(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000E4E0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10000E468(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000E4E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_10000E4F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Config.WorkerConfigs();
  v29 = *(v4 - 8);
  v5 = v29[8];
  v6 = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v35 = &v28 - v9;
  if (!a2 || !*(a2 + 16))
  {
  }

  v31 = *(a1 + 16);
  if (!v31)
  {
    return &_swiftEmptyArrayStorage;
  }

  v10 = 0;
  v30 = a1 + 32;
  v33 = v29 + 2;
  v34 = a2 + 56;
  v11 = (v29 + 1);
  v28 = &_swiftEmptyArrayStorage;
  do
  {
    v32 = v10;
    sub_10000AE18(v30 + 40 * v10, &v37);
    sub_10000AEC8(&v37, v38);
    dispatch thunk of WorkerProtocol.workerConfig.getter();
    if (*(a2 + 16) && (v12 = *(a2 + 40), sub_100001CF0(&qword_100045810, &type metadata accessor for Config.WorkerConfigs), v13 = dispatch thunk of Hashable._rawHashValue(seed:)(), v14 = -1 << *(a2 + 32), v15 = v13 & ~v14, ((*(v34 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
    {
      v16 = ~v14;
      v17 = v29[9];
      v18 = v29[2];
      while (1)
      {
        v19 = a2;
        v18(v8, *(a2 + 48) + v17 * v15, v4);
        sub_100001CF0(&qword_100045818, &type metadata accessor for Config.WorkerConfigs);
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();
        v21 = *v11;
        (*v11)(v8, v4);
        if (v20)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        a2 = v19;
        if (((*(v34 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v21(v35, v4);
      sub_10000C43C(&v37, v36);
      v22 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v22;
      v39 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10001308C(0, v22[2] + 1, 1);
        v24 = v39;
      }

      a2 = v19;
      v26 = v24[2];
      v25 = v24[3];
      if (v26 >= v25 >> 1)
      {
        sub_10001308C((v25 > 1), v26 + 1, 1);
        v24 = v39;
      }

      v24[2] = v26 + 1;
      v28 = v24;
      sub_10000C43C(v36, &v24[5 * v26 + 4]);
    }

    else
    {
LABEL_5:
      (*v11)(v35, v4);
      sub_10000AE7C(&v37);
    }

    v10 = v32 + 1;
  }

  while (v32 + 1 != v31);
  return v28;
}

uint64_t sub_10000E894()
{
  v1 = sub_10001712C(&qword_1000457E8, &qword_1000364F0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = (&v17 - v3);
  v5 = type metadata accessor for Keys();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for Keys.applicationName(_:), v5);
  swift_beginAccess();
  v10 = v0[9];
  Dictionary<>.subscript.getter();
  v11 = type metadata accessor for SimpleType();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v4, 1, v11) == 1)
  {
    sub_100006CC8(v4, &qword_1000457E8, &qword_1000364F0);
LABEL_6:
    swift_endAccess();
    (*(v6 + 8))(v9, v5);
    v14 = v0[4];
    v15 = v0[5];

    return v14;
  }

  if ((*(v12 + 88))(v4, v11) != enum case for SimpleType.string(_:))
  {
    (*(v12 + 8))(v4, v11);
    goto LABEL_6;
  }

  (*(v12 + 96))(v4, v11);
  v14 = *v4;
  v13 = v4[1];
  swift_endAccess();
  (*(v6 + 8))(v9, v5);
  return v14;
}

uint64_t sub_10000EB14(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Message();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001712C(&qword_100045DC0, &qword_100036640);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v12 = sub_10001712C(&qword_100045D70, &qword_1000365F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v36 - v17;
  __chkstk_darwin(v16);
  v20 = &v36 - v19;
  v21 = Message.category.getter();
  v22 = OBJC_IVAR____TtC15audioanalyticsd7Session_messageHistory;
  swift_beginAccess();
  v23 = *(v2 + v22);
  if (*(v23 + 16) && (v24 = sub_10000B964(v21), (v25 & 1) != 0))
  {
    (*(v5 + 16))(v20, *(v23 + 56) + *(v5 + 72) * v24, v4);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = *(v5 + 56);
  v27(v20, v26, 1, v4);
  swift_endAccess();
  (*(v5 + 16))(v18, a1, v4);
  v27(v18, 0, 1, v4);
  v28 = *(v8 + 48);
  sub_10000C454(v20, v11, &qword_100045D70, &qword_1000365F0);
  sub_10000C454(v18, &v11[v28], &qword_100045D70, &qword_1000365F0);
  v29 = *(v5 + 48);
  if (v29(v11, 1, v4) != 1)
  {
    v31 = v38;
    sub_10000C454(v11, v38, &qword_100045D70, &qword_1000365F0);
    if (v29(&v11[v28], 1, v4) != 1)
    {
      v32 = v37;
      (*(v5 + 32))(v37, &v11[v28], v4);
      sub_100001CF0(&qword_100045DC8, &type metadata accessor for Message);
      v33 = v31;
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v5 + 8);
      v34(v32, v4);
      sub_100006CC8(v18, &qword_100045D70, &qword_1000365F0);
      sub_100006CC8(v20, &qword_100045D70, &qword_1000365F0);
      v34(v33, v4);
      sub_100006CC8(v11, &qword_100045D70, &qword_1000365F0);
      return v30 & 1;
    }

    sub_100006CC8(v18, &qword_100045D70, &qword_1000365F0);
    sub_100006CC8(v20, &qword_100045D70, &qword_1000365F0);
    (*(v5 + 8))(v31, v4);
    goto LABEL_10;
  }

  sub_100006CC8(v18, &qword_100045D70, &qword_1000365F0);
  sub_100006CC8(v20, &qword_100045D70, &qword_1000365F0);
  if (v29(&v11[v28], 1, v4) != 1)
  {
LABEL_10:
    sub_100006CC8(v11, &qword_100045DC0, &qword_100036640);
    v30 = 0;
    return v30 & 1;
  }

  sub_100006CC8(v11, &qword_100045D70, &qword_1000365F0);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_10000F010(uint64_t a1)
{
  swift_weakInit();
  v3 = *(a1 + 40);
  *(v1 + 16) = *(a1 + 32);
  *(v1 + 24) = v3;
  *(v1 + 32) = *(a1 + 16);
  *(v1 + 40) = *(a1 + 24);
  *(v1 + 44) = *(a1 + 48);
  *(v1 + 48) = *(a1 + 56);
  swift_weakAssign();

  return v1;
}

void *sub_10000F08C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10001712C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
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
    sub_10001712C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

Swift::Int sub_10000F1D4(void **a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_10002E4C4(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;
  result = sub_10000F24C(v7, a2);
  *a1 = v4;
  return result;
}

Swift::Int sub_10000F24C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10001712C(&qword_100045BB0, &qword_100036500);
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v7[2] = v4 / 2;
      }

      v9[0] = (v7 + 4);
      v9[1] = v4 / 2;
      v8 = v7;
      sub_10002D3EC(v9, v10, a1, v6, a2, a2);
      v8[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_10000F364(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_10000F364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v37 = a5;
  v36 = type metadata accessor for Config.WorkerConfigs();
  v9 = *(*(v36 - 8) + 64);
  v10 = (__chkstk_darwin)();
  v35 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v34 = &v27 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v32 = *a4;
    v33 = (v13 + 8);
    v15 = v32 + 40 * a3;
    v16 = a1 - a3;
LABEL_5:
    v30 = v15;
    v31 = a3;
    v29 = v16;
    v38 = v16;
    v17 = v15;
    while (1)
    {
      sub_10000AE18(v17, &v41);
      sub_10000AE18(v17 - 40, v40);
      sub_10000AEC8(&v41, v42);
      v18 = v34;
      v19 = dispatch thunk of WorkerProtocol.workerConfig.getter();
      v20 = v37;
      LOBYTE(v43) = v37(v19);
      v43 = v43;
      v39 = *v33;
      v21 = v36;
      v39(v18, v36);
      sub_10000AEC8(v40, v40[3]);
      v22 = v35;
      v23 = dispatch thunk of WorkerProtocol.workerConfig.getter();
      v24 = v20(v23);
      v39(v22, v21);
      sub_10000AE7C(v40);
      result = sub_10000AE7C(&v41);
      if (v43 >= v24)
      {
LABEL_4:
        a3 = v31 + 1;
        v15 = v30 + 40;
        v16 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      sub_10000C43C(v17, &v41);
      v25 = *(v17 - 24);
      *v17 = *(v17 - 40);
      *(v17 + 16) = v25;
      *(v17 + 32) = *(v17 - 8);
      result = sub_10000C43C(&v41, v17 - 40);
      v17 -= 40;
      if (__CFADD__(v38++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000F604()
{
  v1 = v0;
  v2 = sub_10001712C(&qword_100045480, &qword_100035FD8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28[-v4];
  v6 = type metadata accessor for Message();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v6);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v0 + 24) & 1) == 0)
  {
    v12 = *(v0 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages);
    v13 = *(v0 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique);
    v14 = *(v0 + 16);
    v15 = *(v0 + 66);
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);
    v30[0] = 0;
    v31 = v12;
    v32 = v13;
    v33 = v14;
    v34 = v15;
    v35 = v17;
    v36 = v16;
    v37 = 0;

    sub_10000F954(v18);
    v19 = type metadata accessor for Message.Metadata();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    Message.init(category:type:content:metadata:)();
    v20 = *(v0 + 80);
    if (v20 && *(v20 + 16))
    {
      v21 = *(v0 + 56);
      v22 = *(v1 + 80);

      Config.neededPreviousFields.getter();
      Message.copyPrevious(fields:from:)();
    }

    swift_beginAccess();
    if (static SystemMonitor.shared)
    {
      v23 = *(static SystemMonitor.shared + 16);

      os_unfair_lock_lock((v23 + 24));
      sub_100010128((v23 + 16), &v29);
      os_unfair_lock_unlock((v23 + 24));
      sub_100011370(v30);

      v24 = v29;

      Message.addToContent(from:)(v24);
    }

    else
    {
      sub_100011370(v30);
    }

    if ((sub_100009FD8(v11) & 1) == 0)
    {

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = v14;

        _os_log_impl(&_mh_execute_header, v25, v26, "Start message dropped. { reporterID=%lld }", v27, 0xCu);
      }

      else
      {
      }
    }

    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

uint64_t sub_100010128@<X0>(uint64_t *a1@<X0>, unint64_t **a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  v63 = sub_10001712C(&qword_100046050, &qword_100036868);
  v5 = *(*(v63 - 8) + 64);
  v6 = __chkstk_darwin(v63);
  v62 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = &v50 - v8;
  v9 = sub_10001712C(&qword_100045400, &unk_100035E10);
  v59 = *(v9 - 8);
  v60 = v9;
  v10 = *(v59 + 64);
  __chkstk_darwin(v9);
  v12 = &v50 - v11;
  v13 = *a1;
  v14 = *(*a1 + 16);
  v15 = &_swiftEmptyArrayStorage;
  if (v14)
  {
    v51 = v2;
    v68 = &_swiftEmptyArrayStorage;
    sub_100011760(0, v14, 0);
    v15 = v68;
    v16 = v13 + 64;
    v17 = -1 << *(v13 + 32);
    v18 = _HashTable.startBucket.getter();
    v19 = 0;
    v20 = *(v13 + 36);
    v53 = v13 + 72;
    v54 = v14;
    v57 = v13;
    v58 = v12;
    v55 = v20;
    v56 = v13 + 64;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v13 + 32))
    {
      if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_27;
      }

      if (v20 != *(v13 + 36))
      {
        goto LABEL_28;
      }

      v65 = 1 << v18;
      v66 = v18 >> 6;
      v64 = v19;
      v22 = v63;
      v67 = v15;
      v23 = *(v63 + 48);
      v24 = *(v13 + 48);
      v25 = (type metadata accessor for FeatureInfo(0) - 8);
      v26 = v61;
      sub_1000108FC(v24 + *(*v25 + 72) * v18, v61, type metadata accessor for FeatureInfo);
      v27 = *(v13 + 56);
      v28 = (type metadata accessor for FeatureState(0) - 8);
      sub_1000108FC(v27 + *(*v28 + 72) * v18, v26 + v23, type metadata accessor for FeatureState);
      v29 = v62;
      sub_100010D10(v26, v62, type metadata accessor for FeatureInfo);
      v30 = *(v22 + 48);
      v31 = v58;
      v32 = v29 + v30;
      sub_100010D10(v26 + v23, v29 + v30, type metadata accessor for FeatureState);
      v33 = *(v60 + 48);
      v34 = (v29 + v25[7]);
      v36 = *v34;
      v35 = v34[1];
      v37 = v28[7];
      v38 = type metadata accessor for SimpleType();
      (*(*(v38 - 8) + 16))(&v31[v33], v32 + v37, v38);
      *v31 = v36;
      *(v31 + 1) = v35;
      v15 = v67;

      sub_100006CC8(v29, &qword_100046050, &qword_100036868);
      v68 = v15;
      v40 = v15[2];
      v39 = v15[3];
      if (v40 >= v39 >> 1)
      {
        sub_100011760(v39 > 1, v40 + 1, 1);
        v15 = v68;
      }

      v15[2] = v40 + 1;
      sub_100010D78(v31, v15 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v40);
      v13 = v57;
      v21 = 1 << *(v57 + 32);
      if (v18 >= v21)
      {
        goto LABEL_29;
      }

      v16 = v56;
      v41 = *(v56 + 8 * v66);
      if ((v41 & v65) == 0)
      {
        goto LABEL_30;
      }

      LODWORD(v20) = v55;
      if (v55 != *(v57 + 36))
      {
        goto LABEL_31;
      }

      v42 = v41 & (-2 << (v18 & 0x3F));
      if (v42)
      {
        v21 = __clz(__rbit64(v42)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v43 = v66 << 6;
        v44 = v66 + 1;
        v45 = (v53 + 8 * v66);
        while (v44 < (v21 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            sub_100007BDC(v18, v55, 0);
            v21 = __clz(__rbit64(v46)) + v43;
            goto LABEL_4;
          }
        }

        sub_100007BDC(v18, v55, 0);
      }

LABEL_4:
      v19 = v64 + 1;
      v18 = v21;
      if (v64 + 1 == v54)
      {
        v3 = v51;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_21:
    if (v15[2])
    {
      sub_10001712C(&qword_100045408, &unk_1000364E0);
      v48 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v48 = &_swiftEmptyDictionarySingleton;
    }

    v68 = v48;
    result = sub_100010DE8(v15, 1, &v68);
    if (!v3)
    {
      *v52 = v68;
      return result;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

size_t sub_100010648(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10001712C(&qword_100045E10, &qword_100036680);
  v10 = *(sub_10001712C(&qword_100045400, &unk_100035E10) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_10001712C(&qword_100045400, &unk_100035E10) - 8);
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

uint64_t sub_1000108FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100010964(uint64_t a1, int a2, __int16 a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v24 = *(v14 - 8);
  v25 = v14;
  v15 = *(v24 + 64);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(v5 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a4;
  *(v20 + 32) = a2;
  *(v20 + 36) = a3;
  *(v20 + 40) = a1;
  aBlock[4] = sub_10000BD44;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_100041790;
  v21 = _Block_copy(aBlock);
  v22 = v18;

  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_100001C60(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v26 + 8))(v13, v10);
  (*(v24 + 8))(v17, v25);
}

uint64_t sub_100010CB8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100010D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001712C(&qword_100045400, &unk_100035E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010DE8(uint64_t a1, int a2, void *a3)
{
  v7 = type metadata accessor for SimpleType();
  v68 = *(v7 - 8);
  v8 = *(v68 + 64);
  __chkstk_darwin(v7);
  v69 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001712C(&qword_100045400, &unk_100035E10);
  v67 = *(v10 - 8);
  v11 = *(v67 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = (&v60 - v13);
  v64 = *(a1 + 16);
  if (!v64)
  {
  }

  v60 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v61 = a2;
  v15 = *(v12 + 48);
  v16 = *(v67 + 80);
  v65 = a1;
  v17 = (v68 + 32);
  v62 = a1 + ((v16 + 32) & ~v16);
  sub_10000C454(v62, v14, &qword_100045400, &unk_100035E10);
  v18 = v14[1];
  v72 = *v14;
  v19 = v72;
  v73 = v18;
  v20 = *v17;
  v63 = v15;
  v21 = v14 + v15;
  v22 = v20;
  v66 = v7;
  v20(v69, v21, v7);
  v23 = *a3;
  v25 = sub_10000710C(v19, v18);
  v26 = v23[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v29 = v24;
  if (v23[3] >= v28)
  {
    if (v61)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10000C940();
      if ((v29 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_100007518(v28, v61 & 1);
  v30 = *a3;
  v31 = sub_10000710C(v19, v18);
  if ((v29 & 1) == (v32 & 1))
  {
    v25 = v31;
    if ((v29 & 1) == 0)
    {
LABEL_14:
      v35 = *a3;
      *(*a3 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v36 = (v35[6] + 16 * v25);
      *v36 = v19;
      v36[1] = v18;
      v37 = v66;
      v22((v35[7] + *(v68 + 72) * v25), v69, v66);
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v35[2] = v40;
      if (v64 != 1)
      {
        v41 = 1;
        while (v41 < *(v65 + 16))
        {
          sub_10000C454(v62 + *(v67 + 72) * v41, v14, &qword_100045400, &unk_100035E10);
          v42 = v14[1];
          v72 = *v14;
          v43 = v72;
          v73 = v42;
          v44 = *v17;
          (*v17)(v69, v14 + v63, v37);
          v45 = *a3;
          v46 = sub_10000710C(v43, v42);
          v48 = v45[2];
          v49 = (v47 & 1) == 0;
          v39 = __OFADD__(v48, v49);
          v50 = v48 + v49;
          if (v39)
          {
            goto LABEL_26;
          }

          v51 = v47;
          if (v45[3] < v50)
          {
            sub_100007518(v50, 1);
            v52 = *a3;
            v46 = sub_10000710C(v43, v42);
            if ((v51 & 1) != (v53 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v51)
          {
            goto LABEL_11;
          }

          v54 = *a3;
          *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
          v55 = (v54[6] + 16 * v46);
          *v55 = v43;
          v55[1] = v42;
          v37 = v66;
          v44((v54[7] + *(v68 + 72) * v46), v69, v66);
          v56 = v54[2];
          v39 = __OFADD__(v56, 1);
          v57 = v56 + 1;
          if (v39)
          {
            goto LABEL_27;
          }

          ++v41;
          v54[2] = v57;
          if (v64 == v41)
          {
          }
        }

        goto LABEL_25;
      }
    }

LABEL_11:
    v33 = swift_allocError();
    swift_willThrow();

    v74 = v33;
    swift_errorRetain();
    sub_10001712C(&qword_100046058, &qword_100036870);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v68 + 8))(v69, v66);
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v70 = 0;
  v71 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v58._object = 0x8000000100037AC0;
  v58._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v58);
  _print_unlocked<A, B>(_:_:)();
  v59._countAndFlagsBits = 39;
  v59._object = 0xE100000000000000;
  String.append(_:)(v59);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000113FC(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = type metadata accessor for Message();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_10001712C(&qword_100045430, &qword_100035E40);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(*(v9 + 48) + 4 * v25);
      v28 = *(v42 + 72);
      v29 = v26 + v28 * v25;
      if (v43)
      {
        (*v19)(v44, v29, v45);
      }

      else
      {
        (*v40)(v44, v29, v45);
      }

      v30 = *(v12 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v27);
      result = Hasher._finalize()();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 4 * v21) = v27;
      result = (*v19)(*(v12 + 56) + v28 * v21, v44, v45);
      ++*(v12 + 16);
      v9 = v41;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

size_t sub_100011760(size_t a1, int64_t a2, char a3)
{
  result = sub_100010648(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_10001178C()
{
  v1 = *v0;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = *(v3 + 72);

    return v4;
  }

  else
  {

    return sub_100005ADC(&_swiftEmptyArrayStorage);
  }
}

void sub_100011818()
{
  v1 = v0;
  v2 = sub_10001712C(&qword_100045DF0, &qword_100036660);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v45 - v6;
  v8 = sub_10001712C(&qword_100045480, &qword_100035FD8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for Message();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v24, v25))
  {

    if (*(v1 + 24))
    {
      goto LABEL_15;
    }

LABEL_6:
    if (*(v1 + 66) == 1)
    {
      v27 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages);
      v28 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique);
      v29 = *(v1 + 16);
      v31 = *(v1 + 32);
      v30 = *(v1 + 40);
      v47[0] = 1;
      v48 = v27;
      v49 = v28;
      v50 = v29;
      v51 = 1;
      v52 = v31;
      v53 = v30;
      v54 = 0;

      sub_10000F954(v32);
      sub_100011370(v47);
      v33 = type metadata accessor for Message.Metadata();
      (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
      Message.init(category:type:content:metadata:)();
      if ((sub_100009FD8(v16) & 1) == 0)
      {

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 134217984;
          *(v36 + 4) = v29;

          _os_log_impl(&_mh_execute_header, v34, v35, "signalStop message dropped. { reporterID=%lld }", v36, 0xCu);
        }

        else
        {
        }
      }

      (*(v13 + 8))(v16, v12);
    }

    else
    {

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = *(v1 + 16);

        _os_log_impl(&_mh_execute_header, v37, v38, "Not sending stop message, because !isStarted. { reporterID=%lld }", v39, 0xCu);
      }

      else
      {
      }
    }

    goto LABEL_15;
  }

  v26 = swift_slowAlloc();
  *v26 = 67174913;
  *(v26 + 4) = *(v1 + 66);
  *(v26 + 8) = 2048;
  *(v26 + 10) = *(v1 + 16);

  _os_log_impl(&_mh_execute_header, v24, v25, "signalStop() called. { isStarted=%{BOOL,private}d, reporterID=%lld }", v26, 0x12u);

  if ((*(v1 + 24) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  if (*(v1 + 66) == 1)
  {
    v40 = OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime;
    swift_beginAccess();
    sub_10000C454(v1 + v40, v7, &qword_100045DF0, &qword_100036660);
    v41 = type metadata accessor for Date();
    v42 = *(v41 - 8);
    v43 = (*(v42 + 48))(v7, 1, v41);
    sub_100006CC8(v7, &qword_100045DF0, &qword_100036660);
    if (v43 == 1)
    {
      v44 = v46;
      Date.init()();
      (*(v42 + 56))(v44, 0, 1, v41);
      swift_beginAccess();
      sub_10000C27C(v44, v1 + v40, &qword_100045DF0, &qword_100036660);
      swift_endAccess();
      sub_100011E88();
    }
  }
}

void sub_100011E88()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  __chkstk_darwin(v2);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v44 = *(v46 - 8);
  v5 = *(v44 + 64);
  __chkstk_darwin(v46);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for DispatchTime();
  v42 = *(v49 - 8);
  v11 = *(v42 + 64);
  v12 = __chkstk_darwin(v49);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  v17 = sub_10001712C(&qword_100045DF0, &qword_100036660);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v39 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = (&v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  *v25 = v26;
  (*(v22 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v21);
  v41 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v25, v21);
  if (v26)
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = *(v1 + 16);

      _os_log_impl(&_mh_execute_header, v27, v28, "enqueueStop() called. { reporterID=%lld }", v29, 0xCu);
    }

    else
    {
    }

    if (*(v1 + 66) == 1)
    {
      v30 = OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime;
      swift_beginAccess();
      sub_10000C454(v1 + v30, v20, &qword_100045DF0, &qword_100036660);
      v31 = type metadata accessor for Date();
      v32 = (*(*(v31 - 8) + 48))(v20, 1, v31);
      sub_100006CC8(v20, &qword_100045DF0, &qword_100036660);
      if (v32 != 1)
      {
        static DispatchTime.now()();
        *v10 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_stopWaitTime);
        v33 = v40;
        (*(v40 + 104))(v10, enum case for DispatchTimeInterval.seconds(_:), v7);
        + infix(_:_:)();
        (*(v33 + 8))(v10, v7);
        v42 = *(v42 + 8);
        (v42)(v14, v49);
        v34 = swift_allocObject();
        swift_weakInit();
        aBlock[4] = sub_100003770;
        aBlock[5] = v34;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000016B8;
        aBlock[3] = &unk_100042420;
        v35 = _Block_copy(aBlock);

        v36 = v43;
        static DispatchQoS.unspecified.getter();
        v50 = &_swiftEmptyArrayStorage;
        sub_100001CF0(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
        sub_10001712C(&unk_100045920, &qword_100035FC0);
        sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
        v37 = v45;
        v38 = v48;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v35);
        (*(v47 + 8))(v37, v38);
        (*(v44 + 8))(v36, v46);
        (v42)(v16, v49);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001259C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000125D8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TraceArgs();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TraceCode();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v39 = v3;
    v38 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_logger;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v19, v20, "stopSession() called. { reporterID=%lld }", v21, 0xCu);
    }

    static Double.now()();
    if (*(v18 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v22)
    {
      v22 = *(v18 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
    }

    *(v18 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v22 + 5.0;
    v23 = sub_100003D80(a2, 0, 1886352499, 0xE400000000000000);
    if (!v23)
    {
      goto LABEL_8;
    }

    v37 = *(v23 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100013110;
    *(v25 + 24) = v24;
    aBlock[4] = sub_10000853C;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002EB0;
    aBlock[3] = &unk_100041740;
    v26 = a2;
    v27 = _Block_copy(aBlock);

    dispatch_sync(v37, v27);
    v28 = v27;
    a2 = v26;
    _Block_release(v28);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
LABEL_8:
      (*(v8 + 104))(v11, enum case for TraceCode.serverStop(_:), v7);
      static Utilities.positiveReporterID(_:)();
      default argument 1 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 2 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 3 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      TraceArgs.init(arg1:arg2:arg3:arg4:)();
      static Trace.post(_:args:)();
      (*(v40 + 8))(v6, v39);
      (*(v8 + 8))(v11, v7);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        *(v32 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v30, v31, "Session stop signaled. { reporterID=%lld }", v32, 0xCu);
      }
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
      _os_log_impl(&_mh_execute_header, v33, v34, "ClientServerInstance is gone. { action=stopSession }", v35, 2u);
    }

    (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_100012B60(uint64_t a1)
{
  v3 = *v1;
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_100009FD8(a1);

    return v5 & 1;
  }

  return result;
}

void *sub_100012BAC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15audioanalyticsd7Session_summaryDecoratorWorkers;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_100012E04(v5);

  v7 = sub_10000E4F0(v6, a1);

  v8 = v7;
  v9 = v7[2];
  if (!v9)
  {

    return &_swiftEmptyArrayStorage;
  }

  v10 = (v8 + 4);
  v11 = &_swiftEmptyArrayStorage;
  do
  {
    sub_10000AE18(v10, v19);
    sub_10000C43C(v19, v18);
    sub_10001712C(&qword_100045BB0, &qword_100036500);
    sub_10001712C(&qword_100045BB8, &qword_100036508);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
LABEL_4:
      sub_100006CC8(&v15, &qword_100045D78, &qword_1000365F8);
      goto LABEL_5;
    }

    if (!*(&v16 + 1))
    {
      goto LABEL_4;
    }

    sub_10000C43C(&v15, v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10000F08C(0, v11[2] + 1, 1, v11, &qword_100045D80, &qword_100036600, &qword_100045BB8, &qword_100036508);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_10000F08C((v12 > 1), v13 + 1, 1, v11, &qword_100045D80, &qword_100036600, &qword_100045BB8, &qword_100036508);
    }

    v11[2] = v13 + 1;
    sub_10000C43C(v18, &v11[5 * v13 + 4]);
LABEL_5:
    v10 += 40;
    --v9;
  }

  while (v9);

  return v11;
}

unint64_t *sub_100012E04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = &_swiftEmptyArrayStorage;
    sub_10001308C(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10000AE18(v4, v8);
      sub_10001712C(&qword_100045BB8, &qword_100036508);
      sub_10001712C(&qword_100045BB0, &qword_100036500);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10001308C((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_10000C43C(&v9, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100012F3C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_10001712C(&qword_100045D88, &qword_100036608);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10001712C(&qword_100045BB0, &qword_100036500);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10001308C(void *a1, int64_t a2, char a3)
{
  result = sub_100012F3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100013120(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000134C8(v11, 0, 0, 1, a1, a2);
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
    sub_10000E468(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000AE7C(v11);
  return v7;
}

void *sub_1000131EC(uint64_t a1, uint64_t a2)
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

  sub_10001712C(&qword_100045D90, &qword_100036610);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100013260(uint64_t result)
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

  result = sub_10002C668(result, v12, 1, v3);
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

char *sub_10001334C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000131EC(v5, 0);
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
        v7 = sub_1000131EC(v10, 0);
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

char *sub_10001347C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001334C(a1, a2);
  sub_100013260(&off_100041398);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

unint64_t sub_1000134C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001347C(a5, a6);
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

char *sub_1000135D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045E08, &qword_100036678);
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

uint64_t sub_1000136C8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  result = sub_10000B9D0(*(v2 + 24), *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100013714(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = &_swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v16 = &_swiftEmptyArrayStorage;
  sub_1000141F4(0, v4, 0);
  v5 = &_swiftEmptyArrayStorage;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v14 = v9;
    a1(&v15, &v14);
    if (v3)
    {
      break;
    }

    v10 = v15;
    v16 = v5;
    v12 = v5[2];
    v11 = v5[3];
    if (v12 >= v11 >> 1)
    {
      sub_1000141F4((v11 > 1), v12 + 1, 1);
      v5 = v16;
    }

    v5[2] = v12 + 1;
    *(v5 + v12 + 32) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100013824(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Message();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v16)
  {
    v18 = *(v5 + 16);
    v49 = v4;
    v18(v8, a1, v4);
    v19 = Message.metadata.modify();
    Message.Metadata.isBroadcast.setter();
    v19(aBlock, 0);
    v20 = OBJC_IVAR____TtC15audioanalyticsd6Server_clientServerInstances;
    swift_beginAccess();
    v21 = *(v2 + v20);
    v47 = v2;
    if ((v21 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for ClientServerInstance();
      sub_100001CA8(&unk_100045960, type metadata accessor for ClientServerInstance);
      result = Set.Iterator.init(_cocoa:)();
      v21 = aBlock[10];
      v22 = aBlock[11];
      v23 = aBlock[12];
      v24 = aBlock[13];
      v25 = aBlock[14];
    }

    else
    {
      v26 = -1 << *(v21 + 32);
      v22 = v21 + 56;
      v23 = ~v26;
      v27 = -v26;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v25 = v28 & *(v21 + 56);

      v24 = 0;
    }

    v48 = v5;
    v29 = 0;
    v50 = v23;
    v30 = (v23 + 64) >> 6;
    if (v21 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v31 = v24;
      v32 = v25;
      v33 = v24;
      if (!v25)
      {
        while (1)
        {
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v33 >= v30)
          {
            goto LABEL_19;
          }

          v32 = *(v22 + 8 * v33);
          ++v31;
          if (v32)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_23;
      }

LABEL_13:
      v34 = (v32 - 1) & v32;
      v35 = *(*(v21 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));

      if (!v35)
      {
        break;
      }

      while (1)
      {
        v37 = static Constants.unknownReporterID.getter();
        v38 = sub_10000B9D0(v8, v37);

        v29 |= v38;
        v24 = v33;
        v25 = v34;
        if ((v21 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v36 = __CocoaSet.Iterator.next()();
        if (v36)
        {
          v51 = v36;
          type metadata accessor for ClientServerInstance();
          swift_dynamicCast();
          v33 = v24;
          v34 = v25;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

LABEL_19:
    sub_10000750C();
    if (v29)
    {
      return (*(v48 + 8))(v8, v49);
    }

    v39 = *(v47 + OBJC_IVAR____TtC15audioanalyticsd6Server_singleMessageSession);
    v40 = sub_100004484();
    v41 = OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue;
    v42 = *(v39 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
    __chkstk_darwin(v40);
    *(&v46 - 2) = v39;
    *(&v46 - 1) = v8;
    OS_dispatch_queue.sync<A>(execute:)();
    v43 = *(v39 + v41);
    v44 = swift_allocObject();
    *(v44 + 16) = sub_100013110;
    *(v44 + 24) = v39;
    aBlock[4] = sub_100027CA8;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002EB0;
    aBlock[3] = &unk_100041F98;
    v45 = _Block_copy(aBlock);

    dispatch_sync(v43, v45);
    _Block_release(v45);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if ((v43 & 1) == 0)
    {
      return (*(v48 + 8))(v8, v49);
    }
  }

  else
  {
LABEL_23:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100013DB8(uint64_t a1)
{
  v45 = a1;
  v44 = type metadata accessor for Message.Metadata();
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v44);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = v1;
  v11 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server);
  v41 = OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue;
  v42 = v11;
  v12 = *(v11 + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  *v10 = v12;
  v13 = enum case for DispatchPredicate.onQueue(_:);
  v14 = v7[13];
  v14(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v15 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v16 = v7[1];
  result = v16(v10, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  Message.metadata.getter();
  v18 = Message.Metadata.isBroadcast.getter();
  (*(v2 + 8))(v5, v44);
  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

  v19 = *(v42 + v41);
  *v10 = v19;
  v14(v10, v13, v6);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = v16(v10, v6);
  if ((v19 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v21 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
  v22 = v43;
  v23 = swift_beginAccess();
  v24 = *(v22 + v21);
  v25 = *(v24 + 16);
  if (!v25)
  {
    v26 = &_swiftEmptyArrayStorage;
LABEL_14:
    __chkstk_darwin(v23);
    v35 = v45;
    *(&v40 - 2) = v22;
    *(&v40 - 1) = v35;
    v36 = sub_100013714(sub_1000136C8, (&v40 - 4), v26);

    v37 = *(v36 + 16);
    v38 = (v36 + 32);
    while (v37)
    {
      v39 = *v38++;
      --v37;
      if (v39 == 1)
      {

        return 1;
      }
    }

    return 0;
  }

  v26 = sub_1000092F0(*(v24 + 16), 0);
  v27 = sub_100009378(v46, v26 + 4, v25, v24);

  v23 = sub_10000750C();
  if (v27 == v25)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_7:
  v28 = *(v43 + 16);
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v29 = v45;
  sub_10000D868(v28, v45, v46, 1);
  v31 = v30;
  sub_10000C880(v46);

  if ((v31 & 0x100) != 0)
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Discarding single message", v34, 2u);
    }

    return 0;
  }

  if ((v31 & 1) == 0)
  {
    return 0;
  }

  sub_100013824(v29);
  return 1;
}

char *sub_1000141F4(char *a1, int64_t a2, char a3)
{
  result = sub_1000135D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100014214(int a1)
{
  v2 = v1;
  v58 = a1;
  v3 = type metadata accessor for TraceArgs();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  __chkstk_darwin(v3);
  v59 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TraceCode();
  v6 = *(v60 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v60);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001712C(&qword_100045480, &qword_100035FD8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v55 - v12;
  v14 = type metadata accessor for Message();
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = *(v55 + 64);
  __chkstk_darwin(v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10001712C(&qword_100045DF0, &qword_100036660);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v55 - v20;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = (&v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v2 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  *v26 = v27;
  (*(v23 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v22);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  result = (*(v23 + 8))(v26, v22);
  if (v27)
  {

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67174913;
      *(v32 + 4) = *(v2 + 66);
      *(v32 + 8) = 2048;
      *(v32 + 10) = *(v2 + 16);

      _os_log_impl(&_mh_execute_header, v30, v31, "stop() called. { isStarted=%{BOOL,private}d, reporterID=%lld }", v32, 0x12u);
    }

    else
    {
    }

    v33 = type metadata accessor for Date();
    (*(*(v33 - 8) + 56))(v21, 1, 1, v33);
    v34 = OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime;
    swift_beginAccess();
    sub_10000C27C(v21, v2 + v34, &qword_100045DF0, &qword_100036660);
    swift_endAccess();
    v57 = OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages;
    v35 = *(v2 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages);
    v36 = OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique;
    v37 = *(v2 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique);
    v38 = *(v2 + 16);
    LODWORD(v34) = *(v2 + 66);
    v40 = *(v2 + 32);
    v39 = *(v2 + 40);
    v63[0] = 2;
    v64 = v35;
    v65 = v37;
    v66 = v38;
    v67 = v34;
    v68 = v40;
    v69 = v39;
    v70 = v58 & 1;

    if (v34 == 1)
    {
      sub_10000F954(v41);
      sub_100011370(v63);
      v42 = type metadata accessor for Message.Metadata();
      (*(*(v42 - 8) + 56))(v13, 1, 1, v42);
      Message.init(category:type:content:metadata:)();
      if ((sub_100009FD8(v17) & 1) == 0)
      {

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 134217984;
          *(v45 + 4) = v38;

          _os_log_impl(&_mh_execute_header, v43, v44, "Stop message dropped. { reporterID=%lld }", v45, 0xCu);
        }

        else
        {
        }
      }

      (*(v55 + 8))(v17, v56);
    }

    else
    {
      sub_100011370(v63);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 134217984;
        *(v48 + 4) = v38;

        _os_log_impl(&_mh_execute_header, v46, v47, "Not sending stop message, because !isStarted. { reporterID=%lld }", v48, 0xCu);
      }

      else
      {
      }
    }

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = v38;

      _os_log_impl(&_mh_execute_header, v49, v50, "Ending session. { reporterID=%lld }", v51, 0xCu);
    }

    else
    {
    }

    v52 = v60;
    (*(v6 + 104))(v9, enum case for TraceCode.sessionStop(_:), v60);
    static Utilities.positiveReporterID(_:)();
    v53 = *(v2 + 64);
    default argument 2 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
    default argument 3 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
    v54 = v59;
    TraceArgs.init(arg1:arg2:arg3:arg4:)();
    static Trace.post(_:args:)();
    (*(v61 + 8))(v54, v62);
    (*(v6 + 8))(v9, v52);
    sub_100014A38();
    *(v2 + OBJC_IVAR____TtC15audioanalyticsd7Session_startOnFirstMessageCalled) = 0;
    *(v2 + v57) = 0;
    *(v2 + v36) = 0;
    *(v2 + 66) = 0;
    type metadata accessor for OsTransactionHandler();
    static OsTransactionHandler.shared.getter();
    OsTransactionHandler.sessionStopped(for:)(v38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100014A38()
{
  v1 = v0;
  v34 = type metadata accessor for Config.WorkerConfigs();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v34);
  v33 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(*(v1 + 88) + 16))
  {
    swift_beginAccess();
    sub_10000F1D4((v1 + 88), &Config.WorkerConfigs.stopOrder.getter);
    swift_endAccess();
    v6 = *(v1 + 88);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = OBJC_IVAR____TtC15audioanalyticsd7Session_logger;
      v9 = v6 + 32;
      v32 = (v2 + 8);
      v30[1] = v6;

      *&v10 = 136315394;
      v31 = v10;
      do
      {
        sub_10000AE18(v9, v39);
        sub_10000AE18(v39, v38);
        swift_retain_n();
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v37 = v36;
          *v13 = v31;
          sub_10000AEC8(v38, v38[3]);
          v14 = v8;
          v15 = v1;
          v16 = v33;
          v35 = v12;
          dispatch thunk of WorkerProtocol.workerConfig.getter();
          v17 = Config.WorkerConfigs.rawValue.getter();
          v19 = v18;
          v20 = v16;
          v1 = v15;
          v8 = v14;
          (*v32)(v20, v34);
          sub_10000AE7C(v38);
          v21 = sub_100013120(v17, v19, &v37);

          *(v13 + 4) = v21;
          *(v13 + 12) = 2048;
          v22 = *(v1 + 16);

          *(v13 + 14) = v22;

          _os_log_impl(&_mh_execute_header, v11, v35, "Stopping worker { worker=%s, reporterID=%lld  }", v13, 0x16u);
          sub_10000AE7C(v36);
        }

        else
        {

          sub_10000AE7C(v38);
        }

        sub_10000AEC8(v39, v39[3]);
        dispatch thunk of WorkerProtocol.stop()();
        sub_10000AE7C(v39);
        v9 += 40;
        --v7;
      }

      while (v7);
    }

    swift_beginAccess();
    v23 = *(v1 + 88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v1 + 88);
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_100014F38(0, *(v25 + 16));
    }

    else
    {
      *(v1 + 88) = sub_10002C5E0(0, *(v25 + 24) >> 1, &qword_100045D88, &qword_100036608);
    }

    swift_endAccess();
    v26 = OBJC_IVAR____TtC15audioanalyticsd7Session_summaryDecoratorWorkers;
    swift_beginAccess();
    v27 = *(v1 + v26);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v1 + v26);
    if (v28)
    {
      sub_100015040(0, *(v29 + 16));
    }

    else
    {
      *(v1 + v26) = sub_10002C5E0(0, *(v29 + 24) >> 1, &qword_100045D80, &qword_100036600);
    }

    return swift_endAccess();
  }

  return result;
}

unint64_t sub_100014E50(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v7 + 24) >> 1)
  {
    v7 = a3();
    *v5 = v7;
  }

  result = sub_100014F60(v9, a2, 0, a4, a5);
  *v5 = v7;
  return result;
}

unint64_t sub_100014F60(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v5;
  v10 = v9 + 32 + 40 * result;
  sub_10001712C(a4, a5);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v6);
  v12 = a3 - v6;
  if (v11)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_17;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || result >= v15 + 40 * v14)
  {
    result = memmove(result, v15, 40 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_18;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100015070()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = *(v0 + 16);
    _s16RetainedMessagesCMa();
    v1 = swift_allocObject();
    *(v1 + 16) = sub_10001746C(&_swiftEmptyArrayStorage);
    *(v1 + 24) = v2;
    v3 = *(v0 + 136);
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1000150F0(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Message();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  v14 = *(v7 + 16);
  v14(&v29 - v12, a1, v6);
  v15 = Message.category.getter();
  v16 = Message.type.getter();
  (*(v7 + 8))(v13, v6);
  v17 = v16;
  v18 = v31;
  v19 = sub_100015580(v15 | (v17 << 32));
  swift_beginAccess();
  if (*(v19[2] + 16))
  {
    static Logger.session.getter();

    v20 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v6))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = *(v18 + 24);

      _os_log_impl(&_mh_execute_header, v20, v6, "sendMesssage(): Stored message found callback. Calling callback. { reporterID=%lld }", v21, 0xCu);
    }

    else
    {
    }

    (*(v29 + 8))(v5, v30);
    swift_beginAccess();
    v25 = v19[2];
    if (v25[2])
    {
      v27 = v25[4];
      v26 = v25[5];

      sub_10002AA28(0, 1, sub_10002C424, sub_10002A810);
      swift_endAccess();
      sub_100028648();
      v32 = Message.flattenToAnyDictionary()();
      v33[0] = 0;
      v27(v33, &v32);
    }

    __break(1u);
    goto LABEL_15;
  }

  v14(v11, a1, v6);
  swift_beginAccess();
  v20 = v19[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19[3] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_15:
    v20 = sub_100015784(0, v20[2].isa + 1, 1, v20);
    v19[3] = v20;
  }

  isa = v20[2].isa;
  v23 = v20[3].isa;
  if (isa >= v23 >> 1)
  {
    v20 = sub_100015784(v23 > 1, isa + 1, 1, v20);
  }

  v20[2].isa = (isa + 1);
  (*(v7 + 32))(v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * isa, v11, v6);
  v19[3] = v20;
  swift_endAccess();
  if (isa >= 0xA)
  {
    swift_beginAccess();
    sub_10002AA28(0, 1, sub_100015784, sub_10002A8E0);
    swift_endAccess();
  }
}

void *sub_100015580(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100015688(a1 & 0xFFFFFFFFFFFFLL), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v8 = *(v2 + 24);
    _s16RetainedMessagesC12MessageQueueCMa();
    v7 = swift_allocObject();
    v7[4] = v8;
    v7[2] = &_swiftEmptyArrayStorage;
    v7[3] = &_swiftEmptyArrayStorage;
    swift_beginAccess();

    v9 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_100029318(v7, a1 & 0xFFFFFFFFFFFFLL, isUniquelyReferenced_nonNull_native);
    *(v2 + 16) = v12;
    swift_endAccess();
  }

  return v7;
}

unint64_t sub_100015688(unint64_t a1)
{
  v3 = HIDWORD(a1);
  v4 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v3);
  v5 = Hasher._finalize()();

  return sub_100015704(a1 & 0xFFFFFFFFFFFFLL, v5);
}

unint64_t sub_100015704(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      v8 = *v7;
      v9 = *(v7 + 4);
      if (v8 == a1 && WORD2(a1) == v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

size_t sub_100015784(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10001712C(&qword_100045D98, &qword_100036618);
  v10 = *(type metadata accessor for Message() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for Message() - 8);
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

_WORD *sub_100015968@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_100015998()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000159E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100015A44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015A7C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015AB4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100015AF4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015B34()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100015B84()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015BC4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100015C0C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100015C54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015C8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015CC4()
{
  v1 = (type metadata accessor for FeatureInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = v0 + v3;
  v8 = type metadata accessor for SystemMonitorConfig.MonitorType();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + v1[7] + 8);

  v10 = *(v7 + v1[8] + 8);

  v11 = *(v7 + v1[9] + 8);

  v12 = *(v7 + v1[10] + 8);

  v13 = v1[11];
  v14 = type metadata accessor for SystemMonitorConfig.DataType();
  (*(*(v14 - 8) + 8))(v7 + v13, v14);
  v15 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

unint64_t sub_100015E9C()
{
  v0 = *(type metadata accessor for FeatureInfo(0) - 8);
  result = (*(v0 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(v0 + 80) & 0xF8 | 7;
  return result;
}

uint64_t sub_100015F0C(uint64_t a1)
{
  v2 = type metadata accessor for SystemMonitorConfig.MonitorType();
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = type metadata accessor for FeatureInfo(0);
  v4 = *(a1 + v3[5] + 8);

  v5 = *(a1 + v3[6] + 8);

  v6 = *(a1 + v3[7] + 8);

  v7 = *(a1 + v3[8] + 8);

  v8 = v3[9];
  v9 = type metadata accessor for SystemMonitorConfig.DataType();
  v10 = *(*(v9 - 8) + 8);

  return v10(a1 + v8, v9);
}

uint64_t sub_100015FF8(uint64_t a1, uint64_t a2)
{
  sub_1000108FC(a1, a2, type metadata accessor for FeatureInfo);

  return type metadata accessor for FeatureInfo(0);
}

uint64_t sub_10001604C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FeatureInfo(0);

  return sub_100027A40(a1, a2);
}

uint64_t sub_100016090()
{
  v1 = type metadata accessor for Message();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100016154()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016190()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000161C8()
{
  v1 = type metadata accessor for Message();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001628C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 46, 7);
}

uint64_t sub_1000162DC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static SystemMonitor.shared;
}

uint64_t sub_100016330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeatureInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SimpleType();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100016420(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FeatureInfo(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SimpleType();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10001651C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SystemMonitorConfig.MonitorType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for SystemMonitorConfig.DataType();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100016644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SystemMonitorConfig.MonitorType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for SystemMonitorConfig.DataType();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

unint64_t sub_1000167BC()
{
  v0 = *(type metadata accessor for FeatureInfo(0) - 8);
  result = (*(v0 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = *(v0 + 80) & 0xF8 | 7;
  return result;
}

uint64_t sub_10001682C(uint64_t a1)
{
  v2 = type metadata accessor for SystemMonitorConfig.MonitorType();
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = type metadata accessor for FeatureInfo(0);
  v4 = *(a1 + v3[5] + 8);

  v5 = *(a1 + v3[6] + 8);

  v6 = *(a1 + v3[7] + 8);

  v7 = *(a1 + v3[8] + 8);

  v8 = v3[9];
  v9 = type metadata accessor for SystemMonitorConfig.DataType();
  v10 = *(*(v9 - 8) + 8);

  return v10(a1 + v8, v9);
}

uint64_t sub_100016918(uint64_t a1, uint64_t a2)
{
  sub_1000108FC(a1, a2, type metadata accessor for FeatureInfo);

  return type metadata accessor for FeatureInfo(0);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_allocWithZone(type metadata accessor for Server());
  qword_1000460F0 = sub_10001F624(0);
  dispatch_main();
}

id variable initialization expression of MobileAssetsHandler.downloadOptions()
{
  v0 = [objc_allocWithZone(MADownloadOptions) init];
  [v0 setAllowsCellularAccess:1];
  [v0 setRequiresPowerPluggedIn:1];
  [v0 setCanUseLocalCacheServer:1];
  if (qword_1000453A0 != -1)
  {
    swift_once();
  }

  [v0 setTimeoutIntervalForResource:qword_1000455A0];
  return v0;
}

uint64_t variable initialization expression of SystemMonitor.currentFeatureStates()
{
  v0 = sub_100016F14(&_swiftEmptyArrayStorage);
  sub_10001712C(&qword_1000459A0, &qword_100035C80);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  return result;
}

uint64_t variable initialization expression of SystemMonitor.notificationQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100008570();
  static DispatchQoS.default.getter();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  v10[1] = &_swiftEmptyArrayStorage;
  sub_1000172FC(&unk_100045970, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10001712C(&qword_1000453D0, &qword_100035C88);
  sub_100017174();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

void *sub_100016D64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_100016D74@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int sub_100016DA4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100016E18()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100016E5C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100016ED0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100016F14(uint64_t a1)
{
  v2 = sub_10001712C(&qword_100045438, &qword_100035E48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10001712C(&qword_100045440, &unk_100035E50);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000C454(v10, v6, &qword_100045438, &qword_100035E48);
      result = sub_1000289A4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for FeatureInfo(0);
      sub_100010D10(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for FeatureInfo);
      v17 = v8[7];
      v18 = type metadata accessor for FeatureState(0);
      result = sub_100010D10(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for FeatureState);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_10001712C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100017174()
{
  result = qword_100045980;
  if (!qword_100045980)
  {
    sub_1000171D8(&qword_1000453D0, &qword_100035C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045980);
  }

  return result;
}

uint64_t sub_1000171D8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100017258(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100017278(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1000172FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100017358(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001712C(&qword_100045418, &qword_100035E28);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000710C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void *sub_10001746C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10001712C(&qword_1000453F8, &qword_100035E08);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = *(a1 + 40);
  v7 = sub_100015688(v4 | (v5 << 32));
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = 8 * v9;
    v13 = v3[6] + v12;
    *v13 = v4;
    *(v13 + 4) = v5;
    *(v3[7] + v12) = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v11 + 2;
    v4 = *(v11 - 2);
    v5 = *(v11 - 2);
    v18 = *v11;

    v9 = sub_100015688(v4 | (v5 << 32));
    v11 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000175B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10001712C(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10000710C(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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