uint64_t sub_100001790(void *a1)
{
  LODWORD(v37) = [a1 processIdentifier];
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  if (qword_100021020 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100001CE8(v5, qword_100021E50);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v37 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100011D20(v2, v4, &v37);
    _os_log_impl(&_mh_execute_header, v6, v7, "Client %s has requested a connection to the API service", v8, 0xCu);
    sub_1000028C0(v9);
  }

  v10 = [objc_opt_self() currentEnvironment];
  v11 = [v10 entitlementVerifier];

  [a1 auditToken];
  v34 = v38;
  v35 = v37;
  v12 = String._bridgeToObjectiveC()();
  v36 = 0;
  v37 = v35;
  v38 = v34;
  v13 = [v11 auditToken:&v37 hasBooleanEntitlement:v12 error:&v36];
  swift_unknownObjectRelease();

  if (v36)
  {
    v14 = v36;

    swift_willThrow();
    v15 = v14;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v15;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error checking entitlement: %@", v18, 0xCu);
      sub_1000050A0(v19, &unk_100021130, &unk_100015FD0);
    }

    else
    {
    }

    return 0;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  if (!v13)
  {
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v37 = v29;
      *v28 = 136315138;
      v30 = sub_100011D20(v2, v4, &v37);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Denying connection from %s", v28, 0xCu);
      sub_1000028C0(v29);
    }

    else
    {
    }

    return 0;
  }

  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v37 = v26;
    *v25 = 136315138;
    v27 = sub_100011D20(v2, v4, &v37);

    *(v25 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Accepting connection from %s", v25, 0xCu);
    sub_1000028C0(v26);
  }

  else
  {
  }

  v31 = static RemoteStickersAPI.xpcInterface.getter();
  [a1 setExportedInterface:v31];

  v32 = [objc_allocWithZone(type metadata accessor for StickersAPIService.Worker()) init];
  [a1 setExportedObject:v32];

  [a1 resume];
  return 1;
}

uint64_t sub_100001CE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001DCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100001E30(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = a3;
  v17 = a1;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  a7(v13, v15, a6, v16);

  sub_10000286C(v13, v15);
}

void sub_100001F0C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v36 = a4;
  v37 = a3;
  v33 = sub_100005058(&qword_100021228, &qword_100015E98);
  v4 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v31 - v5;
  Request = type metadata accessor for Sticker.FetchRequest();
  v8 = *(Request - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for XPCCoder();
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  __chkstk_darwin();
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100001CE8(v16, qword_100021E98);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v6;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "BEGIN count(for:)", v19, 2u);
    v6 = v31;
  }

  XPCCoder.init()();
  sub_100002548();
  XPCCoder.decode<A>(_:)();
  if ((*(v8 + 48))(v6, 1, Request) == 1)
  {
    sub_1000050A0(v6, &qword_100021228, &qword_100015E98);
    v20 = type metadata accessor for XPCDataMapperError();
    sub_1000031E0(&qword_100021218, &type metadata accessor for XPCDataMapperError);
    v21 = swift_allocError();
    *v22 = 0x74736575716572;
    v22[1] = 0xE700000000000000;
    (*(*(v20 - 8) + 104))(v22, enum case for XPCDataMapperError.parameterDecoding(_:), v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v35);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error handling count(for:): %@", v25, 0xCu);
      sub_1000050A0(v26, &unk_100021130, &unk_100015FD0);
    }

    swift_errorRetain();
    v37(0, v21);
  }

  else
  {
    (*(v8 + 32))(v11, v6, Request);
    v28 = *(v32 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 32);
    sub_1000025FC((v32 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store), *(v32 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 24));
    v29 = dispatch thunk of StickerStoreProtocol.count(for:)();
    v30 = (v34 + 8);
    v37(v29, 0);
    (*(v8 + 8))(v11, Request);
    (*v30)(v15, v35);
  }

  sub_1000026B8("END   count(for:)");
}

uint64_t sub_10000250C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100002548()
{
  result = qword_100021230;
  if (!qword_100021230)
  {
    sub_1000068B0(&qword_100021228, &qword_100015E98);
    sub_1000031E0(&qword_100021238, &type metadata accessor for Sticker.FetchRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021230);
  }

  return result;
}

void *sub_1000025FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100002648(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_1000026B8(const char *a1)
{
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100001CE8(v2, qword_100021E98);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

unint64_t sub_1000027A8()
{
  result = qword_100021250;
  if (!qword_100021250)
  {
    sub_1000068B0(&qword_100021248, &qword_100015EA0);
    sub_1000031E0(&qword_100021220, &type metadata accessor for Sticker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021250);
  }

  return result;
}

uint64_t sub_10000286C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000028C0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_100002968(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t), uint64_t a4)
{
  v52 = a4;
  v53 = a3;
  v4 = type metadata accessor for StickerSequence();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  v6 = (__chkstk_darwin)();
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v43 - v8;
  v9 = sub_100005058(&qword_100021228, &qword_100015E98);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v12 = &v43 - v11;
  Request = type metadata accessor for Sticker.FetchRequest();
  v13 = *(Request - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(Request);
  v49 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for XPCCoder();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v51 = sub_100001CE8(v21, qword_100021E98);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v44 = v12;
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "BEGIN fetch(_:)", v24, 2u);
    v12 = v44;
  }

  XPCCoder.init()();
  sub_100002548();
  XPCCoder.decode<A>(_:)();
  v25 = Request;
  if ((*(v13 + 48))(v12, 1, Request) == 1)
  {
    sub_1000050A0(v12, &qword_100021228, &qword_100015E98);
    v26 = type metadata accessor for XPCDataMapperError();
    sub_1000031E0(&qword_100021218, &type metadata accessor for XPCDataMapperError);
    v27 = swift_allocError();
    *v28 = 0x74736575716572;
    v28[1] = 0xE700000000000000;
    (*(*(v26 - 8) + 104))(v28, enum case for XPCDataMapperError.parameterDecoding(_:), v26);
    swift_willThrow();
    (*(v17 + 8))(v20, v16);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error handling fetch(_:): %@", v31, 0xCu);
      sub_1000050A0(v32, &unk_100021130, &unk_100015FD0);
    }

    swift_errorRetain();
    v53(0, 0xF000000000000000, v27);
  }

  else
  {
    v43 = v13;
    v44 = v16;
    (*(v13 + 32))(v49, v12, v25);
    v34 = *(v48 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 32);
    sub_1000025FC((v48 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store), *(v48 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 24));
    v35 = v50;
    dispatch thunk of StickerStoreProtocol.stickers(_:)();
    v36 = v43;
    v37 = v46;
    v38 = v35;
    v39 = v47;
    (*(v46 + 16))(v45, v38, v47);
    sub_1000031E0(&qword_100021240, &type metadata accessor for StickerSequence);
    v55 = dispatch thunk of Sequence._copyToContiguousArray()();
    sub_100005058(&qword_100021248, &qword_100015EA0);
    sub_1000027A8();
    v40 = XPCCoder.encode<A>(_:)();
    v42 = v41;

    sub_100003228(v40, v42);
    v53(v40, v42, 0);
    sub_10000286C(v40, v42);
    sub_10000286C(v40, v42);
    (*(v37 + 8))(v50, v39);
    (*(v36 + 8))(v49, Request);
    (*(v17 + 8))(v20, v44);
  }

  sub_1000026B8("END   fetch(_:)");
}

uint64_t sub_1000031E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003228(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_10000327C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10000332C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000336C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000033A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000033E0()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000343C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003474()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000034C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100003580(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100003720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100003738(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100021698)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000387C;
    v4[4] = &unk_10001CB80;
    v4[5] = v4;
    v5 = off_10001CB68;
    v6 = 0;
    qword_100021698 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100021698)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BYSetupStateNotifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100014884();
  }

  qword_100021690 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000387C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100021698 = result;
  return result;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.stickersd", "lifetime");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "stickersd launching", buf, 2u);
  }

  signal(15, 1);
  v2 = dispatch_get_global_queue(21, 0);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v2);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100003A70;
  handler[3] = &unk_10001CBA8;
  v9 = v1;
  v4 = v1;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_activate(v3);
  v5 = objc_alloc_init(_TtC9stickersd14StickersDaemon);
  v6 = +[NSRunLoop mainRunLoop];
  [(StickersDaemon *)v5 runOn:v6];

  objc_autoreleasePoolPop(v0);
  return 0;
}

uint64_t sub_100003A70(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM received - will exit when clean", v3, 2u);
  }

  return xpc_transaction_exit_clean();
}

uint64_t sub_100003AD4()
{
  v0 = type metadata accessor for Logger();
  sub_1000044D4(v0, qword_100021E20);
  sub_100001CE8(v0, qword_100021E20);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100003BB4()
{
  v0 = type metadata accessor for Logger();
  sub_1000044D4(v0, qword_100021E38);
  sub_100001CE8(v0, qword_100021E38);
  return Logger.init(subsystem:category:)();
}

id sub_100003C34()
{
  v1 = OBJC_IVAR____TtCCV9stickersd33StickersLaunchStateManagerService8Delegate6Worker____lazy_storage___launchStateManager;
  v2 = *(v0 + OBJC_IVAR____TtCCV9stickersd33StickersLaunchStateManagerService8Delegate6Worker____lazy_storage___launchStateManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCCV9stickersd33StickersLaunchStateManagerService8Delegate6Worker____lazy_storage___launchStateManager);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for LaunchStateManager()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10000406C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000040AC()
{
  v2 = sub_1000043E4(*v0);
  v3 = *(v1 + 8);
  v4 = v2 & 1;

  return v3(v4);
}

Swift::Int LaunchStateManagerServiceError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100004184()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t sub_1000041F4()
{
  result = qword_100021060;
  if (!qword_100021060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021060);
  }

  return result;
}

unint64_t sub_10000424C()
{
  result = qword_100021068;
  if (!qword_100021068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021068);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchStateManagerServiceError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LaunchStateManagerServiceError(_WORD *result, int a2, int a3)
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

uint64_t sub_1000043E4(void *a1)
{
  if (qword_100021010 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100001CE8(v2, qword_100021E20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting LaunchStateManager service", v5, 2u);
  }

  [a1 resume];
  return 1;
}

uint64_t *sub_1000044D4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100004538(void *a1)
{
  LODWORD(v37) = [a1 processIdentifier];
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v3;
  if (qword_100021010 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100001CE8(v5, qword_100021E20);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v37 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100011D20(v2, v4, &v37);
    _os_log_impl(&_mh_execute_header, v6, v7, "Client %s has requested a connection to the LaunchStateManager service", v8, 0xCu);
    sub_1000028C0(v9);
  }

  v10 = [objc_opt_self() currentEnvironment];
  v11 = [v10 entitlementVerifier];

  [a1 auditToken];
  v34 = v38;
  v35 = v37;
  v12 = String._bridgeToObjectiveC()();
  v36 = 0;
  v37 = v35;
  v38 = v34;
  v13 = [v11 auditToken:&v37 hasBooleanEntitlement:v12 error:&v36];
  swift_unknownObjectRelease();

  if (v36)
  {
    v14 = v36;

    swift_willThrow();
    v15 = v14;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v15;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error checking entitlement: %@", v18, 0xCu);
      sub_1000050A0(v19, &unk_100021130, &unk_100015FD0);
    }

    else
    {
    }

    return 0;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  if (!v13)
  {
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v37 = v29;
      *v28 = 136315138;
      v30 = sub_100011D20(v2, v4, &v37);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Denying connection from %s", v28, 0xCu);
      sub_1000028C0(v29);
    }

    else
    {
    }

    return 0;
  }

  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v37 = v26;
    *v25 = 136315138;
    v27 = sub_100011D20(v2, v4, &v37);

    *(v25 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Accepting connection from %s", v25, 0xCu);
    sub_1000028C0(v26);
  }

  else
  {
  }

  v31 = static LaunchStateManagerAPI.xpcInterface.getter();
  [a1 setExportedInterface:v31];

  v32 = [objc_allocWithZone(type metadata accessor for StickersLaunchStateManagerService.Delegate.Worker()) init];
  [a1 setExportedObject:v32];

  [a1 resume];
  return 1;
}

uint64_t sub_100004A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[1] = a5;
  v7 = sub_100005058(&qword_100021128, qword_100015DA0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v23 - v9;
  v11 = type metadata accessor for StickerSectionType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v23 - v17;

  StickerSectionType.init(rawValue:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000050A0(v10, &qword_100021128, qword_100015DA0);
    sub_10000424C();
    swift_allocError();
    v19 = _convertErrorToNSError(_:)();
    (*(a6 + 16))(a6, v19);
  }

  else
  {
    v23[0] = a6;
    (*(v12 + 32))(v18, v10, v11);
    (*(v12 + 16))(v16, v18, v11);
    objc_allocWithZone(type metadata accessor for LaunchConfiguration());

    v21 = LaunchConfiguration.init(sectionType:identifier:)();
    v22 = sub_100003C34();
    dispatch thunk of LaunchStateManager.updateConfiguration(with:)();

    (*(v23[0] + 16))(v23[0], 0);
    return (*(v12 + 8))(v18, v11);
  }
}

void sub_100004EBC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_100021018 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100001CE8(v6, qword_100021E38);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100011D20(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "uppercasing %s", v9, 0xCu);
    sub_1000028C0(v10);
  }

  String.uppercased()();
  v11 = String._bridgeToObjectiveC()();
  (*(a3 + 16))(a3, v11);
}

uint64_t sub_100005058(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000050A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005058(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 sub_100005100(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000510C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100005154(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1000051A0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_10000522C()
{
  v0 = type metadata accessor for StickerStore();
  result = static StickerStore.createAPIStore()();
  qword_100021E80 = v0;
  unk_100021E88 = &protocol witness table for StickerStore;
  qword_100021E90 = &protocol witness table for StickerStore;
  qword_100021E68 = result;
  return result;
}

uint64_t sub_10000531C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_1000044D4(v3, a2);
  sub_100001CE8(v3, a2);
  return Logger.init(subsystem:category:)();
}

void sub_100005424(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t), uint64_t a4)
{
  v5 = v4;
  v31 = a4;
  v32 = a3;
  v6 = type metadata accessor for XPCCoder();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100001CE8(v11, qword_100021E98);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "BEGIN addSticker(_:)", v14, 2u);
  }

  XPCCoder.init()();
  sub_100005058(&qword_100021200, &qword_100015E90);
  sub_1000067FC();
  XPCCoder.decode<A>(_:)();
  v23 = v33;
  if (v33)
  {
    v24 = (v5 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store);
    v25 = *(v5 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 24);
    v26 = *(v5 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 40);
    sub_1000025FC(v24, v25);
    v27 = dispatch thunk of StickerStoreProtocolInternal._internal_only_addSticker(_:)();
    v33 = v27;
    type metadata accessor for Sticker();
    sub_1000031E0(&qword_100021220, &type metadata accessor for Sticker);
    v28 = XPCCoder.encode<A>(_:)();
    v30 = v29;
    sub_100003228(v28, v29);
    v32(v28, v30, 0);
    sub_10000286C(v28, v30);

    sub_10000286C(v28, v30);
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v15 = type metadata accessor for XPCDataMapperError();
    sub_1000031E0(&qword_100021218, &type metadata accessor for XPCDataMapperError);
    v16 = swift_allocError();
    *v17 = 0x72656B63697473;
    v17[1] = 0xE700000000000000;
    (*(*(v15 - 8) + 104))(v17, enum case for XPCDataMapperError.parameterDecoding(_:), v15);
    swift_willThrow();
    (*(v7 + 8))(v10, v6);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error handling addSticker(_:): %@", v20, 0xCu);
      sub_1000050A0(v21, &unk_100021130, &unk_100015FD0);
    }

    swift_errorRetain();
    v32(0, 0xF000000000000000, v16);
  }

  sub_1000026B8("END   addSticker(_:)");
}

void sub_1000059F8(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100001CE8(v5, qword_100021E98);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "BEGIN removeStickers(identifiers:)", v8, 2u);
  }

  v9 = *(v3 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 40);
  sub_1000025FC((v3 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store), *(v3 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 24));
  dispatch thunk of StickerStoreProtocolInternal._internal_only_removeStickers(identifiers:)();
  a2(0);
  sub_1000026B8("END   removeStickers(identifiers:)");
}

void sub_100005D9C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, const char *a5, void (*a6)(void *, uint64_t, uint64_t), const char *a7, const char *a8)
{
  v33 = a8;
  v34 = a5;
  v36 = a3;
  v37 = a7;
  v10 = v8;
  v35 = a4;
  v11 = type metadata accessor for XPCCoder();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100001CE8(v16, qword_100021E98);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = v15;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, v34, v19, 2u);
    v15 = v32;
  }

  XPCCoder.init()();
  sub_100005058(&qword_100021200, &qword_100015E90);
  sub_1000067FC();
  XPCCoder.decode<A>(_:)();
  v28 = v38;
  if (v38)
  {
    v29 = (v10 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store);
    v30 = *(v10 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 24);
    v31 = v29[5];
    sub_1000025FC(v29, v30);
    a6(v28, v30, v31);
    v36(0);

    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v20 = type metadata accessor for XPCDataMapperError();
    sub_1000031E0(&qword_100021218, &type metadata accessor for XPCDataMapperError);
    v21 = swift_allocError();
    *v22 = 0x72656B63697473;
    v22[1] = 0xE700000000000000;
    (*(*(v20 - 8) + 104))(v22, enum case for XPCDataMapperError.parameterDecoding(_:), v20);
    swift_willThrow();
    (*(v12 + 8))(v15, v11);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, v33, v25, 0xCu);
      sub_1000050A0(v26, &unk_100021130, &unk_100015FD0);
    }

    swift_errorRetain();
    v36(v21);
  }

  sub_1000026B8(v37);
}

void sub_100006250()
{
  v1 = v0;
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100001CE8(v2, qword_100021E98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "BEGIN reindexAllStickers()", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 32);
  sub_1000025FC((v1 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store), *(v1 + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store + 24));
  dispatch thunk of StickerStoreProtocol.reindexAllStickers()();
  sub_1000026B8("END reindexAllStickers()");
}

id sub_1000064CC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000650C()
{
  v2 = sub_10000670C(*v0);
  v3 = *(v1 + 8);
  v4 = v2 & 1;

  return v3(v4);
}

void sub_100006570(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_100021030 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100001CE8(v6, qword_100021E98);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100011D20(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "uppercasing %s", v9, 0xCu);
    sub_1000028C0(v10);
  }

  String.uppercased()();
  v11 = String._bridgeToObjectiveC()();
  (*(a3 + 16))(a3, v11);
}

uint64_t sub_10000670C(void *a1)
{
  if (qword_100021020 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100001CE8(v2, qword_100021E50);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting API service", v5, 2u);
  }

  [a1 resume];
  return 1;
}

unint64_t sub_1000067FC()
{
  result = qword_100021208;
  if (!qword_100021208)
  {
    sub_1000068B0(&qword_100021200, &qword_100015E90);
    sub_1000031E0(&qword_100021210, &type metadata accessor for Sticker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021208);
  }

  return result;
}

uint64_t sub_1000068B0(uint64_t *a1, uint64_t *a2)
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

void sub_100006904(void *a1)
{
  if (sub_1000083BC())
  {
    sub_100006A50();
    sub_100007114();

    sub_100008278(a1);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Waiting for device to become available before starting services", v3, 2u);
    }
  }
}

void sub_100006A50()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "Starting XPC services", v2, 2u);
  }

  sub_100006B10();
  sub_1000076B4();
  sub_1000074B8();

  sub_100006D3C();
}

uint64_t sub_100006B10()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting Stickers API service", v4, 2u);
  }

  v5 = objc_allocWithZone(NSXPCListener);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithMachServiceName:v6];

  v8 = [objc_allocWithZone(type metadata accessor for StickersAPIService.Delegate()) init];
  [v7 setDelegate:v8];
  if (qword_100021028 != -1)
  {
    swift_once();
  }

  sub_10000670C(v7);
  v9 = OBJC_IVAR____TtC9stickersd14StickersDaemon_services;
  swift_beginAccess();
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1000116B0(0, v10[2] + 1, 1, v10);
    *(v1 + v9) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1000116B0((v12 > 1), v13 + 1, 1, v10);
  }

  v16 = &type metadata for StickersAPIService;
  v17 = sub_100008F34();
  *&v15 = v7;
  *(&v15 + 1) = v8;
  v10[2] = v13 + 1;
  sub_100008AB0(&v15, &v10[5 * v13 + 4]);
  *(v1 + v9) = v10;
  return swift_endAccess();
}

void sub_100006D3C()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (v4 && (v5 = String._bridgeToObjectiveC()(), v6 = [v4 BOOLForKey:v5], v4, v5, (v6 & 1) != 0))
  {
    v27 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v27, v7, "Skipping Stickers Analytics service because marketing container is enabled", v8, 2u);
    }
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Starting Stickers Analytics service", v11, 2u);
    }

    v12 = type metadata accessor for StickersAnalyticsService();
    if (qword_100021028 != -1)
    {
      swift_once();
    }

    v13 = qword_100021E80;
    v14 = unk_100021E88;
    v15 = sub_1000025FC(&qword_100021E68, qword_100021E80);
    v16 = *(*(v13 - 8) + 64);
    __chkstk_darwin(v15);
    v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18);
    v20 = sub_10000C9E4(v18, v12, v13, v14);
    sub_10000C4A4();
    v21 = OBJC_IVAR____TtC9stickersd14StickersDaemon_services;
    swift_beginAccess();
    v22 = *(v1 + v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v21) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1000116B0(0, v22[2] + 1, 1, v22);
      *(v1 + v21) = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1000116B0((v24 > 1), v25 + 1, 1, v22);
    }

    v29 = v12;
    v30 = sub_100008EEC(&qword_1000212C8, type metadata accessor for StickersAnalyticsService);
    *&v28 = v20;
    v22[2] = v25 + 1;
    sub_100008AB0(&v28, &v22[5 * v25 + 4]);
    *(v1 + v21) = v22;
    swift_endAccess();
  }
}

uint64_t sub_100007114()
{
  v1 = v0;
  v2 = type metadata accessor for StickerIndexingClient(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Starting Stickers Indexing Client", v11, 2u);
  }

  if (qword_100021028 != -1)
  {
    swift_once();
  }

  v25 = *&qword_100021E80;
  v12 = qword_100021E80;
  v13 = sub_1000025FC(&qword_100021E68, qword_100021E80);
  v29 = v25;
  v14 = sub_100008D10(&v28);
  (*(*(v12 - 8) + 16))(v14, v13, v12);
  Logger.init(subsystem:category:)();
  sub_100008DC8(&v28, v27);
  v15 = type metadata accessor for StickerIndexingClient.Provider(0);
  v16 = objc_allocWithZone(v15);
  Logger.init(subsystem:category:)();
  sub_100008DC8(v27, v16 + OBJC_IVAR____TtCV9stickersd21StickerIndexingClient8Provider_store);
  v26.receiver = v16;
  v26.super_class = v15;
  v17 = objc_msgSendSuper2(&v26, "init");
  sub_1000028C0(v27);
  sub_1000028C0(&v28);
  *&v8[*(v2 + 20)] = v17;
  sub_10000F0A8();
  sub_100008E2C(v8, v6);
  v18 = OBJC_IVAR____TtC9stickersd14StickersDaemon_services;
  swift_beginAccess();
  v19 = *(v1 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v18) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_1000116B0(0, v19[2] + 1, 1, v19);
    *(v1 + v18) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_1000116B0((v21 > 1), v22 + 1, 1, v19);
    *(v1 + v18) = v19;
  }

  *&v29 = v2;
  *(&v29 + 1) = sub_100008EEC(&qword_1000212C0, type metadata accessor for StickerIndexingClient);
  v23 = sub_100008D10(&v28);
  sub_100008E2C(v6, v23);
  v19[2] = v22 + 1;
  sub_100008AB0(&v28, &v19[5 * v22 + 4]);
  sub_100008E90(v6);
  *(v1 + v18) = v19;
  swift_endAccess();
  return sub_100008E90(v8);
}

uint64_t sub_1000074B8()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting Stickers Extension Launch Manager Service", v4, 2u);
  }

  v5 = objc_allocWithZone(NSXPCListener);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithMachServiceName:v6];

  v8 = [objc_allocWithZone(type metadata accessor for StickersLaunchStateManagerService.Delegate()) init];
  [v7 setDelegate:v8];
  sub_1000043E4(v7);
  v9 = OBJC_IVAR____TtC9stickersd14StickersDaemon_services;
  swift_beginAccess();
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1000116B0(0, v10[2] + 1, 1, v10);
    *(v1 + v9) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1000116B0((v12 > 1), v13 + 1, 1, v10);
  }

  v16 = &type metadata for StickersLaunchStateManagerService;
  v17 = sub_100008D74();
  *&v15 = v7;
  *(&v15 + 1) = v8;
  v10[2] = v13 + 1;
  sub_100008AB0(&v15, &v10[5 * v13 + 4]);
  *(v1 + v9) = v10;
  return swift_endAccess();
}

uint64_t sub_1000076B4()
{
  v1 = v0;
  v2 = sub_100005058(&qword_1000212A8, &qword_100015EC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting Recency Service", v8, 2u);
  }

  v9 = type metadata accessor for RecencyServiceListener();
  v10 = RecencyServiceListener.__allocating_init()();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;

  sub_100007FB8(0, 0, v5, &unk_100015ED0, v12);

  v13 = OBJC_IVAR____TtC9stickersd14StickersDaemon_services;
  swift_beginAccess();
  v14 = *(v1 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1000116B0(0, v14[2] + 1, 1, v14);
    *(v1 + v13) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1000116B0((v16 > 1), v17 + 1, 1, v14);
  }

  v20 = v9;
  v21 = sub_100008EEC(&qword_1000212B0, &type metadata accessor for RecencyServiceListener);
  *&v19 = v10;
  v14[2] = v17 + 1;
  sub_100008AB0(&v19, &v14[5 * v17 + 4]);
  *(v1 + v13) = v14;
  return swift_endAccess();
}

uint64_t sub_10000794C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  v5 = async function pointer to RecencyServiceListener.loadFromDisk()[1];
  v6 = swift_task_alloc();
  *(v4 + 64) = v6;
  *v6 = v4;
  v6[1] = sub_1000079E4;

  return RecencyServiceListener.loadFromDisk()();
}

uint64_t sub_1000079E4()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_100007AE0, 0, 0);
}

uint64_t sub_100007AE0()
{
  if (qword_100021050 != -1)
  {
    swift_once();
  }

  v1 = qword_100021EC0;
  v0[9] = qword_100021EC0;
  v2 = v1[2];
  v0[10] = v2;
  if (v2)
  {
    v0[11] = 0;
    v3 = v1[5];
    v0[5] = v1[4];
    v0[6] = v3;
    sub_100008D10(v0 + 2);
    dispatch thunk of ImageGlyphRecencyModelMigrator.init()();
    v4 = async function pointer to RecencyServiceListener.performMigration(with:force:)[1];
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_100007C58;
    v6 = v0[7];

    return RecencyServiceListener.performMigration(with:force:)(v0 + 2, 0);
  }

  else
  {
    v7 = async function pointer to RecencyServiceListener.start()[1];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_100007EC4;
    v9 = v0[7];

    return RecencyServiceListener.start()();
  }
}

uint64_t sub_100007C58()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_100007D54, 0, 0);
}

uint64_t sub_100007D54()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88) + 1;
  sub_1000028C0((v0 + 16));
  if (v2 == v1)
  {
    v3 = async function pointer to RecencyServiceListener.start()[1];
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_100007EC4;
    v5 = *(v0 + 56);

    return RecencyServiceListener.start()();
  }

  else
  {
    v6 = *(v0 + 88) + 1;
    *(v0 + 88) = v6;
    *(v0 + 40) = *(*(v0 + 72) + 16 * v6 + 32);
    sub_100008D10((v0 + 16));
    dispatch thunk of ImageGlyphRecencyModelMigrator.init()();
    v7 = async function pointer to RecencyServiceListener.performMigration(with:force:)[1];
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_100007C58;
    v9 = *(v0 + 56);

    return RecencyServiceListener.performMigration(with:force:)(v0 + 16, 0);
  }
}

uint64_t sub_100007EC4()
{
  v1 = *(*v0 + 104);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100007FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005058(&qword_1000212A8, &qword_100015EC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100008AC8(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100008B38(v12);
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

      sub_100008B38(a3);

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

  sub_100008B38(a3);
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

void sub_100008278(void *a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "stickersd standing by", v4, 2u);
  }

  [a1 run];
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "stickersd exiting", v6, 2u);
  }
}

uint64_t sub_1000083BC()
{
  if ([objc_opt_self() isRunningInBuddy])
  {
    v0 = Logger.logObject.getter();
    v1 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v0, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      v3 = "Waiting until setup completes to start services";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v0, v1, v3, v2, 2u);
    }
  }

  else
  {
    if (getuid() == 501)
    {
      return 1;
    }

    v0 = Logger.logObject.getter();
    v1 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v0, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      v3 = "Waiting until first unlock to start services";
      goto LABEL_8;
    }
  }

  return 0;
}

id sub_100008574()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickersDaemon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StickersDaemon()
{
  result = qword_100021298;
  if (!qword_100021298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000867C()
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

uint64_t sub_100008718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000087CC;

  return sub_10000794C(a1, v4, v5, v6);
}

uint64_t sub_1000087CC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000088C0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000089B8;

  return v7(a1);
}

uint64_t sub_1000089B8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100008AB0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100008AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005058(&qword_1000212A8, &qword_100015EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008B38(uint64_t a1)
{
  v2 = sub_100005058(&qword_1000212A8, &qword_100015EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008BA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F88;

  return sub_1000088C0(a1, v5);
}

uint64_t sub_100008C58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000087CC;

  return sub_1000088C0(a1, v5);
}

uint64_t *sub_100008D10(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100008D74()
{
  result = qword_1000212B8;
  if (!qword_1000212B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000212B8);
  }

  return result;
}

uint64_t sub_100008DC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100008E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StickerIndexingClient(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008E90(uint64_t a1)
{
  v2 = type metadata accessor for StickerIndexingClient(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008EEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100008F34()
{
  result = qword_1000212D0;
  if (!qword_1000212D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000212D0);
  }

  return result;
}

uint64_t sub_100008F9C()
{
  v0 = type metadata accessor for Logger();
  sub_1000044D4(v0, qword_1000212D8);
  sub_100001CE8(v0, qword_1000212D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000901C(uint64_t a1, double a2)
{
  *(v2 + 112) = a2;
  *(v2 + 104) = a1;
  v3 = type metadata accessor for Sticker.URIType();
  *(v2 + 120) = v3;
  v4 = *(v3 - 8);
  *(v2 + 128) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v2 + 144) = v6;
  v7 = *(v6 - 8);
  *(v2 + 152) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  v9 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation();
  *(v2 + 184) = v9;
  v10 = *(v9 - 8);
  *(v2 + 192) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v12 = *(*(sub_100005058(&qword_100021300, qword_100015FA0) - 8) + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  v13 = type metadata accessor for StickerStore.PersistenceType();
  *(v2 + 232) = v13;
  v14 = *(v13 - 8);
  *(v2 + 240) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_10000925C, 0, 0);
}

uint64_t sub_10000925C()
{
  v1 = v0[28];
  v2 = v0[13];
  (*(v0[30] + 104))(v0[31], enum case for StickerStore.PersistenceType.remote(_:), v0[29]);
  v3 = type metadata accessor for StickerStore();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[32] = StickerStore.init(persistence:)();
  v6 = enum case for ImageGlyphRecencyModel.ImageGlyphType.sticker(_:);
  v7 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphType();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v1, v6, v7);
  (*(v8 + 56))(v1, 0, 1, v7);
  type metadata accessor for ImageGlyphRecencyModel();
  sub_10000ADBC(&qword_100021308, &type metadata accessor for ImageGlyphRecencyModel);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[33] = v10;
  v0[34] = v9;

  return _swift_task_switch(sub_1000093F8, v10, v9);
}

uint64_t sub_1000093F8()
{
  v1 = v0[28];
  v2 = v0[13];
  v0[35] = ImageGlyphRecencyModel.recentlyUsed(ofType:limit:)();
  sub_1000050A0(v1, &qword_100021300, qword_100015FA0);

  return _swift_task_switch(sub_100009488, 0, 0);
}

uint64_t sub_100009488()
{
  v1 = *(v0 + 280);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 192);
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v7 = *(v3 + 56);
    v72 = (v3 + 72);
    v73 = (v3 + 16);
    v71 = enum case for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.sticker(_:);
    v65 = (v3 + 80);
    v66 = (v3 - 8);
    v69 = *(v0 + 152);
    v70 = (v69 + 32);
    v8 = &_swiftEmptyArrayStorage;
    v67 = v7;
    v68 = v5;
    do
    {
      v10 = *(v0 + 208);
      v9 = *(v0 + 216);
      v11 = *(v0 + 184);
      v4(v9, v6, v11);
      (*v73)(v10, v9, v11);
      v12 = (*v72)(v10, v11);
      v13 = *(v0 + 208);
      v14 = *(v0 + 184);
      if (v12 == v71)
      {
        v15 = v0;
        v16 = *(v0 + 176);
        v17 = v8;
        v19 = v15[20];
        v18 = v15[21];
        v20 = v15[18];
        (*v65)(v13, v14);
        v21 = *v70;
        (*v70)(v19, v13, v20);
        v22 = v19;
        v8 = v17;
        v21(v18, v22, v20);
        v21(v16, v18, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1000117F8(0, v17[2] + 1, 1, v17);
        }

        v24 = v8[2];
        v23 = v8[3];
        v7 = v67;
        v4 = v68;
        v0 = v64;
        if (v24 >= v23 >> 1)
        {
          v8 = sub_1000117F8(v23 > 1, v24 + 1, 1, v8);
        }

        v25 = *(v64 + 176);
        v26 = *(v64 + 144);
        v8[2] = v24 + 1;
        v21(v8 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v24, v25, v26);
      }

      else
      {
        (*v66)(*(v0 + 208), v14);
      }

      v6 += v7;
      --v2;
    }

    while (v2);
    v27 = *(v0 + 280);
  }

  else
  {

    v8 = &_swiftEmptyArrayStorage;
  }

  v28 = *(v0 + 256);
  v29 = *(v0 + 112);
  sub_10000A32C(v8);

  v30 = *(v0 + 40);
  v31 = sub_1000025FC((v0 + 16), v30);
  v32 = *(v30 - 8);
  v33 = *(v32 + 64) + 15;
  v34 = swift_task_alloc();
  (*(v32 + 16))(v34, v31, v30);
  *(v0 + 80) = swift_getAssociatedTypeWitness();
  *(v0 + 88) = swift_getAssociatedConformanceWitness();
  sub_100008D10((v0 + 56));
  dispatch thunk of Sequence.makeIterator()();

  v35 = *(v0 + 88);
  sub_10000AD1C(v0 + 56, *(v0 + 80));
  dispatch thunk of IteratorProtocol.next()();
  v36 = *(v0 + 96);
  if (!v36)
  {
LABEL_20:
    v47 = *(v0 + 248);
    v46 = *(v0 + 256);
    v49 = *(v0 + 216);
    v48 = *(v0 + 224);
    v51 = *(v0 + 200);
    v50 = *(v0 + 208);
    v53 = *(v0 + 168);
    v52 = *(v0 + 176);
    v54 = *(v0 + 160);
    v55 = *(v0 + 136);

    sub_1000028C0((v0 + 56));
    sub_1000028C0((v0 + 16));

    v56 = *(v0 + 8);

    return v56();
  }

  *(v0 + 296) = enum case for Sticker.URIType.emoji(_:);
  *(v0 + 300) = enum case for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.sticker(_:);
  while (1)
  {
    *(v0 + 288) = v36;
    dispatch thunk of Sticker.externalURI.getter();
    if (v38)
    {
      break;
    }

LABEL_16:
    v37 = *(v0 + 88);
    sub_10000AD1C(v0 + 56, *(v0 + 80));
    dispatch thunk of IteratorProtocol.next()();
    v36 = *(v0 + 96);
    if (!v36)
    {
      goto LABEL_20;
    }
  }

  v39 = *(v0 + 296);
  v41 = *(v0 + 128);
  v40 = *(v0 + 136);
  v42 = *(v0 + 120);
  type metadata accessor for Sticker();
  dispatch thunk of static Sticker.classify(uri:)();

  if ((*(v41 + 88))(v40, v42) != v39)
  {
    v44 = *(v0 + 128);
    v43 = *(v0 + 136);
    v45 = *(v0 + 120);

    (*(v44 + 8))(v43, v45);
    goto LABEL_16;
  }

  v58 = *(v0 + 300);
  v60 = *(v0 + 192);
  v59 = *(v0 + 200);
  v61 = *(v0 + 184);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  Sticker.identifier.getter();
  (*(v60 + 104))(v59, v58, v61);
  v62 = *(v0 + 264);
  v63 = *(v0 + 272);

  return _swift_task_switch(sub_100009AF8, v62, v63);
}

uint64_t sub_100009AF8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 104);
  ImageGlyphRecencyModel.removeEngagementHistory(for:)();

  return _swift_task_switch(sub_100009B64, 0, 0);
}

uint64_t sub_100009B64()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);

  (*(v2 + 8))(v1, v3);
  while (1)
  {
    v4 = *(v0 + 88);
    sub_10000AD1C(v0 + 56, *(v0 + 80));
    dispatch thunk of IteratorProtocol.next()();
    v5 = *(v0 + 96);
    if (!v5)
    {
      break;
    }

    *(v0 + 288) = v5;
    dispatch thunk of Sticker.externalURI.getter();
    if (v6)
    {
      v7 = *(v0 + 296);
      v9 = *(v0 + 128);
      v8 = *(v0 + 136);
      v10 = *(v0 + 120);
      type metadata accessor for Sticker();
      dispatch thunk of static Sticker.classify(uri:)();

      if ((*(v9 + 88))(v8, v10) == v7)
      {
        v26 = *(v0 + 300);
        v28 = *(v0 + 192);
        v27 = *(v0 + 200);
        v29 = *(v0 + 184);
        (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
        Sticker.identifier.getter();
        (*(v28 + 104))(v27, v26, v29);
        v30 = *(v0 + 264);
        v31 = *(v0 + 272);

        return _swift_task_switch(sub_100009AF8, v30, v31);
      }

      v12 = *(v0 + 128);
      v11 = *(v0 + 136);
      v13 = *(v0 + 120);

      (*(v12 + 8))(v11, v13);
    }

    else
    {
    }
  }

  v15 = *(v0 + 248);
  v14 = *(v0 + 256);
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  v21 = *(v0 + 168);
  v20 = *(v0 + 176);
  v22 = *(v0 + 160);
  v23 = *(v0 + 136);

  sub_1000028C0((v0 + 56));
  sub_1000028C0((v0 + 16));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100009DD4(double a1)
{
  *(v1 + 104) = a1;
  v2 = type metadata accessor for Sticker.URIType();
  *(v1 + 112) = v2;
  v3 = *(v2 - 8);
  *(v1 + 120) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  v5 = type metadata accessor for StickerStore.PersistenceType();
  *(v1 + 136) = v5;
  v6 = *(v5 - 8);
  *(v1 + 144) = v6;
  v7 = *(v6 + 64) + 15;
  *(v1 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_100009EF0, 0, 0);
}

uint64_t sub_100009EF0()
{
  v1 = v0[13];
  (*(v0[18] + 104))(v0[19], enum case for StickerStore.PersistenceType.remote(_:), v0[17]);
  v2 = type metadata accessor for StickerStore();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = StickerStore.init(persistence:)();
  sub_10000A5D0(v5, v0 + 2);
  v6 = v0[5];
  v7 = sub_1000025FC(v0 + 2, v6);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  (*(v8 + 16))(v10, v7, v6);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_100008D10(v0 + 7);
  dispatch thunk of Sequence.makeIterator()();

  v11 = v0[11];
  sub_10000AD1C((v0 + 7), v0[10]);
  dispatch thunk of IteratorProtocol.next()();
  v12 = v0[12];
  if (v12)
  {
    v13 = v0[15];
    v14 = (v13 + 88);
    v15 = enum case for Sticker.URIType.emoji(_:);
    v16 = (v13 + 8);
    do
    {
      dispatch thunk of Sticker.externalURI.getter();
      if (v18)
      {
        v19 = v0[16];
        v20 = v0[14];
        type metadata accessor for Sticker();
        dispatch thunk of static Sticker.classify(uri:)();

        v21 = (*v14)(v19, v20);
        v22 = v0[16];
        v23 = v0[14];
        if (v21 == v15)
        {
          (*v16)(v0[16], v0[14]);
          sub_100005058(&qword_1000212F0, &unk_1000162A0);
          v24 = *(type metadata accessor for UUID() - 8);
          v25 = *(v24 + 72);
          v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
          *(swift_allocObject() + 16) = xmmword_100015EF0;
          Sticker.identifier.getter();
          dispatch thunk of StickerStore.removeStickers(identifiers:)();
        }

        else
        {

          (*v16)(v22, v23);
        }
      }

      else
      {
      }

      v17 = v0[11];
      sub_10000AD1C((v0 + 7), v0[10]);
      dispatch thunk of IteratorProtocol.next()();
      v12 = v0[12];
    }

    while (v12);
  }

  v27 = v0[19];
  v28 = v0[16];

  sub_1000028C0(v0 + 7);
  sub_1000028C0(v0 + 2);

  v29 = v0[1];

  return v29();
}

uint64_t sub_10000A32C(uint64_t a1)
{
  v3 = type metadata accessor for Sticker.FetchRequest.RepresentationSpecifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = sub_100005058(&qword_100021310, &unk_100016160);
  v16[4] = sub_10000AE04();
  v16[0] = a1;
  (*(v4 + 104))(v7, enum case for Sticker.FetchRequest.RepresentationSpecifier.all(_:), v3);

  dispatch thunk of StickerStore.stickers(identifiers:representationSpecifier:)();
  if (v1)
  {
    (*(v4 + 8))(v7, v3);
    sub_1000028C0(v16);
    if (qword_100021038 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100001CE8(v8, qword_1000212D8);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Could not fetch stickers with error: '%@", v11, 0xCu);
      sub_1000050A0(v12, &unk_100021130, &unk_100015FD0);
    }

    return swift_willThrow();
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return sub_1000028C0(v16);
  }
}

uint64_t sub_10000A5D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a1;
  v3 = type metadata accessor for Sticker.FetchRequest.RepresentationSpecifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005058(&qword_1000212F8, &unk_100015F90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - v10;
  Request = type metadata accessor for Sticker.FetchRequest();
  v30 = *(Request - 8);
  v31 = Request;
  v13 = *(v30 + 64);
  __chkstk_darwin(Request);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = enum case for Sticker.StickerType.recent(_:);
  v17 = type metadata accessor for Sticker.StickerType();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v11, v16, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  (*(v4 + 104))(v7, enum case for Sticker.FetchRequest.RepresentationSpecifier.none(_:), v3);
  Sticker.FetchRequest.init(type:predicate:representations:sortDescriptors:offset:limit:batchSize:)();
  a2[3] = type metadata accessor for StickerSequence();
  a2[4] = sub_10000ADBC(&qword_100021240, &type metadata accessor for StickerSequence);
  sub_100008D10(a2);
  v19 = v33;
  dispatch thunk of StickerStore.stickers(_:)();
  if (!v19)
  {
    return (*(v30 + 8))(v15, v31);
  }

  v21 = v30;
  v20 = v31;
  sub_10000AD6C(a2);
  if (qword_100021038 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100001CE8(v22, qword_1000212D8);
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v27;
    *v26 = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "Could not fetch all recent stickers from legacy store with error: '%@'", v25, 0xCu);
    sub_1000050A0(v26, &unk_100021130, &unk_100015FD0);
  }

  swift_willThrow();
  return (*(v21 + 8))(v15, v20);
}

uint64_t sub_10000AA10(uint64_t a1)
{
  v4 = *v1;
  *(v2 + 16) = *v1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_10000AAB8;

  return sub_10000901C(a1, v4);
}

uint64_t sub_10000AAB8()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v2 + 32) = v7;
    *v7 = v4;
    v7[1] = sub_10000AC28;
    v8 = *(v2 + 16);

    return sub_100009DD4(v8);
  }
}

uint64_t sub_10000AC28()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000AD1C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *sub_10000AD6C(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t sub_10000ADBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000AE04()
{
  result = qword_100021318;
  if (!qword_100021318)
  {
    sub_1000068B0(&qword_100021310, &unk_100016160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021318);
  }

  return result;
}

uint64_t sub_10000AE68()
{
  v0 = type metadata accessor for Logger();
  sub_1000044D4(v0, qword_100021320);
  sub_100001CE8(v0, qword_100021320);
  return Logger.init(subsystem:category:)();
}

void static StickersAnalyticsProcessor.sendOncePerDayAnalytics(store:)(void *a1)
{
  v2 = type metadata accessor for Sticker.URIType();
  v3 = *(v2 - 1);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v83 = &v64 - v8;
  v9 = type metadata accessor for Sticker.StickerType();
  v96 = *(v9 - 8);
  v10 = *(v96 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v64 - v14;
  v16 = os_transaction_create();
  if (!v16)
  {
LABEL_92:
    __break(1u);
    return;
  }

  v17 = v16;
  v81 = v7;
  if (qword_100021040 != -1)
  {
    goto LABEL_82;
  }

  while (2)
  {
    v18 = type metadata accessor for Logger();
    v85 = sub_100001CE8(v18, qword_100021320);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Calculating metrics", v21, 2u);
    }

    v22 = sub_10000BBE0();
    v23 = sub_10000BCB0(a1);
    v25 = v23;
    if (!(v23 >> 62))
    {
      v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        break;
      }

      goto LABEL_7;
    }

    v60 = v23;
    v26 = _CocoaArrayWrapper.endIndex.getter();
    v25 = v60;
    if (v26)
    {
LABEL_7:
      if (v26 < 1)
      {
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v73 = v22;
      v76 = v2;
      v74 = v17;
      v75 = 0;
      v77 = 0;
      v78 = 0;
      v80 = 0;
      v89 = 0;
      v90 = 0;
      v87 = 0;
      v88 = 0;
      v86 = 0;
      v27 = 0;
      v91 = 0;
      v94 = v25 & 0xC000000000000001;
      v93 = enum case for Sticker.StickerType.recent(_:);
      v92 = (v96 + 104);
      v2 = (v96 + 8);
      v72 = (v3 + 4);
      v71 = (v3 + 11);
      v70 = enum case for Sticker.URIType.memoji(_:);
      v66 = enum case for Sticker.URIType.emoji(_:);
      v65 = enum case for Sticker.URIType.thirdParty(_:);
      v69 = (v3 + 1);
      *&v24 = 138412290;
      v79 = v24;
      v95 = v26;
      v96 = v25;
      v84 = v13;
      while (1)
      {
        v29 = v94 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v25 + 8 * v27 + 32);
        v3 = v29;
        Sticker.type.getter();
        (*v92)(v13, v93, v9);
        a1 = sub_10000C45C(&qword_100021338, &type metadata accessor for Sticker.StickerType);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v30 = *v2;
        (*v2)(v13, v9);
        v30(v15, v9);
        v31 = v97;
        v17 = v98;
        v32 = dispatch thunk of Sticker.effect.getter();
        if (v32 <= 1)
        {
          break;
        }

        switch(v32)
        {
          case 2:

            if (v17 == v31)
            {
              goto LABEL_10;
            }

            v33 = __OFADD__(v87++, 1);
            v28 = v95;
            v25 = v96;
            if (v33)
            {
              goto LABEL_81;
            }

            break;
          case 3:

            if (v17 == v31)
            {
              goto LABEL_10;
            }

            v33 = __OFADD__(v89++, 1);
            v28 = v95;
            v25 = v96;
            if (v33)
            {
              goto LABEL_79;
            }

            break;
          case 4:

            if (v17 == v31)
            {
              goto LABEL_10;
            }

            v33 = __OFADD__(v90++, 1);
            v28 = v95;
            v25 = v96;
            if (v33)
            {
              goto LABEL_80;
            }

            break;
          default:
LABEL_9:

LABEL_10:
            v28 = v95;
            v25 = v96;
            break;
        }

LABEL_11:
        if (v28 == ++v27)
        {
          goto LABEL_77;
        }
      }

      if (v32 != -1)
      {
        if (v32)
        {
          if (v32 != 1)
          {
            goto LABEL_9;
          }

          if (v17 == v31)
          {
            goto LABEL_10;
          }

          v33 = __OFADD__(v88++, 1);
          v28 = v95;
          v25 = v96;
          if (v33)
          {
            goto LABEL_78;
          }
        }

        else
        {

          if (v17 == v31)
          {
            goto LABEL_10;
          }

          v33 = __OFADD__(v86++, 1);
          v28 = v95;
          v25 = v96;
          if (v33)
          {
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
            swift_once();
            continue;
          }
        }

        goto LABEL_11;
      }

      v34 = v91;
      v35 = dispatch thunk of Sticker.preferredRepresentation.getter();
      if (v34)
      {
        swift_errorRetain();
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v38 = v79;
          swift_errorRetain();
          v40 = _swift_stdlib_bridgeErrorToNSError();
          *(v38 + 4) = v40;
          *v39 = v40;
          _os_log_impl(&_mh_execute_header, v36, v37, "Error calculating sticker metrics %@", v38, 0xCu);
          sub_10000C388(v39);
        }

        else
        {
        }

        v91 = 0;
        v28 = v95;
        v25 = v96;
        v13 = v84;
        goto LABEL_11;
      }

      v91 = 0;
      v82 = v35;
      if (v35)
      {
        v41 = v35;
        v68 = dispatch thunk of Sticker.Representation.role.getter();
        v43 = v42;
        v67 = v41;

        v44 = static Sticker.Representation.Role.animatedVariant.getter();
        if (v43)
        {
          if (v68 == v44 && v43 == v45)
          {

            if (v17 != v31)
            {
              goto LABEL_69;
            }

            goto LABEL_10;
          }

          LODWORD(v68) = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v68)
          {

            if (v17 != v31)
            {
LABEL_69:
              v33 = __OFADD__(v80++, 1);
              v28 = v95;
              v25 = v96;
              if (v33)
              {
                goto LABEL_89;
              }

              goto LABEL_11;
            }

            goto LABEL_10;
          }

          goto LABEL_55;
        }
      }

      else
      {
        static Sticker.Representation.Role.animatedVariant.getter();
      }

LABEL_55:
      dispatch thunk of Sticker.externalURI.getter();
      if (!v46)
      {

        goto LABEL_10;
      }

      type metadata accessor for Sticker();
      dispatch thunk of static Sticker.classify(uri:)();

      v47 = v81;
      v48 = v76;
      (*v72)(v81, v83, v76);
      v49 = (*v71)(v47, v48);
      if (v49 == v70)
      {
        (*v69)(v47, v48);
        if (v17 != v31)
        {
          v33 = __OFADD__(v78++, 1);
          v28 = v95;
          v25 = v96;
          if (v33)
          {
            goto LABEL_90;
          }

          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (v49 == v66)
      {
        (*v69)(v81, v76);
        if (v17 != v31)
        {
          v33 = __OFADD__(v77++, 1);
          v28 = v95;
          v25 = v96;
          if (v33)
          {
            goto LABEL_91;
          }

          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v50 = v49;
      (*v69)(v81, v76);
      if (v50 != v65 || v17 == v31)
      {
        goto LABEL_10;
      }

      v33 = __OFADD__(v75++, 1);
      v28 = v95;
      v25 = v96;
      if (v33)
      {
        __break(1u);
LABEL_77:

        LOBYTE(v22) = v73;
        v51 = v75;
        v52 = v77;
        v53 = v78;
        v54 = v80;
        v56 = v89;
        v55 = v90;
        v58 = v87;
        v57 = v88;
        v59 = v86;
        goto LABEL_85;
      }

      goto LABEL_11;
    }

    break;
  }

  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
LABEL_85:
  sub_10000C1DC(0, v59, v22 & 1);
  sub_10000C1DC(1, v58, v22 & 1);
  sub_10000C1DC(2, v57, v22 & 1);
  sub_10000C1DC(3, v56, v22 & 1);
  sub_10000C1DC(4, v55, v22 & 1);
  sub_10000C1DC(5, v54, v22 & 1);
  sub_10000C1DC(6, v53, v22 & 1);
  sub_10000C1DC(7, v52, v22 & 1);
  sub_10000C1DC(8, v51, v22 & 1);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "Sending metrics complete", v63, 2u);
  }

  swift_unknownObjectRelease();
}

id StickersAnalyticsProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StickersAnalyticsProcessor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickersAnalyticsProcessor();
  return objc_msgSendSuper2(&v2, "init");
}

id StickersAnalyticsProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickersAnalyticsProcessor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000BAB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000BB28(a1, a2, v6);
}

unint64_t sub_10000BB28(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10000BBE0()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 BOOLForKey:v4];

  return v5;
}

uint64_t sub_10000BCB0(void *a1)
{
  v2 = type metadata accessor for StickerSequence();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for Sticker.FetchRequest.RepresentationSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100005058(&qword_1000212F8, &unk_100015F90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v22[-v11];
  Request = type metadata accessor for Sticker.FetchRequest();
  v14 = *(Request - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(Request);
  v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for Sticker.StickerType();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  (*(v5 + 104))(v8, enum case for Sticker.FetchRequest.RepresentationSpecifier.preferred(_:), v4);
  Sticker.FetchRequest.init(type:predicate:representations:sortDescriptors:offset:limit:batchSize:)();
  v19 = a1[4];
  sub_1000025FC(a1, a1[3]);
  dispatch thunk of StickerStoreProtocol.stickers(_:)();
  sub_10000C45C(&qword_100021240, &type metadata accessor for StickerSequence);
  v20 = dispatch thunk of Sequence._copyToContiguousArray()();
  (*(v14 + 8))(v17, Request);
  return v20;
}

unint64_t sub_10000C0D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005058(&qword_100021388, &qword_100016010);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000BAB0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
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

void sub_10000C1DC(Swift::Int a1, Swift::Int a2, Swift::Bool a3)
{
  sub_100005058(&qword_100021368, &qword_100016000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100015FC0;
  *(inited + 32) = 0x7954746365666665;
  *(inited + 40) = 0xEA00000000006570;
  sub_10000C414(0, &qword_100021370, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(integerLiteral:)(a1);
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x80000001000173D0;
  *(inited + 72) = NSNumber.init(integerLiteral:)(a2);
  *(inited + 80) = 0xD00000000000001CLL;
  *(inited + 88) = 0x80000001000173F0;
  *(inited + 96) = NSNumber.init(BOOLeanLiteral:)(a3);
  sub_10000C0D8(inited);
  swift_setDeallocating();
  sub_100005058(&qword_100021378, &qword_100016008);
  swift_arrayDestroy();
  v7 = String._bridgeToObjectiveC()();
  sub_10000C414(0, &qword_100021380, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

uint64_t sub_10000C388(uint64_t a1)
{
  v2 = sub_100005058(&unk_100021130, &unk_100015FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C414(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000C45C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000C4A4()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "launching com.apple.stickers.analytics", v4, 2u);
  }

  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_10000C9C4;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000C72C;
  v11[3] = &unk_10001CF98;
  v8 = _Block_copy(v11);

  v9 = String.utf8CString.getter();
  xpc_activity_register((v9 + 32), XPC_ACTIVITY_CHECK_IN, v8);

  _Block_release(v8);
  return 1;
}

uint64_t sub_10000C628(_xpc_activity_s *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (xpc_activity_get_state(a1) == 2)
    {
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "running com.apple.stickers.analytics", v6, 2u);
      }

      type metadata accessor for StickersAnalyticsProcessor();
      static StickersAnalyticsProcessor.sendOncePerDayAnalytics(store:)((v3 + OBJC_IVAR____TtC9stickersd24StickersAnalyticsService_store));
    }
  }

  return result;
}

uint64_t sub_10000C72C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10000C78C()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC9stickersd24StickersAnalyticsService_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  sub_1000028C0(&v0[OBJC_IVAR____TtC9stickersd24StickersAnalyticsService_store]);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for StickersAnalyticsService()
{
  result = qword_1000213B8;
  if (!qword_1000213B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000C894()
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

uint64_t sub_10000C938()
{
  v1 = *v0;
  sub_10000C4A4();
  return 1;
}

uint64_t sub_10000C960()
{
  v2 = *v0;
  sub_10000C4A4();
  v3 = *(v1 + 8);

  return v3(1);
}

uint64_t sub_10000C9CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v14 = a4;
  v6 = sub_100008D10(&v12);
  (*(*(a3 - 8) + 32))(v6, a1, a3);
  v7 = type metadata accessor for StickersAnalyticsService();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  *(v10 + 16) = 0xD00000000000001CLL;
  *(v10 + 24) = 0x80000001000174D0;
  Logger.init(subsystem:category:)();
  sub_100008AB0(&v12, v10 + OBJC_IVAR____TtC9stickersd24StickersAnalyticsService_store);
  return v10;
}

uint64_t sub_10000CAEC()
{
  v0 = type metadata accessor for Logger();
  sub_1000044D4(v0, qword_100021458);
  sub_100001CE8(v0, qword_100021458);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000CB6C(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  v3 = type metadata accessor for Date();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v6 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation();
  *(v2 + 56) = v6;
  v7 = *(v6 - 8);
  *(v2 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v9 = *(*(sub_100005058(&qword_100021470, &qword_100016140) - 8) + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10000CCD0, 0, 0);
}

uint64_t sub_10000CCD0()
{
  v1 = v0[3];
  v2 = sub_10000D338();
  v0[12] = v2;
  v3 = v2[2];
  v0[13] = v3;
  v4 = v0[10];
  v5 = sub_100005058(&qword_100021478, &qword_100016148);
  v6 = *(v5 - 8);
  v7 = v6;
  if (v3)
  {
    sub_10000E9F0(v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v4);
    v8 = 1;
    (*(v7 + 56))(v4, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    v8 = v0[13];
  }

  v0[14] = v8;
  v9 = v0[11];
  sub_10000EA60(v0[10], v9, &qword_100021470, &qword_100016140);
  v10 = sub_100005058(&qword_100021478, &qword_100016148);
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  v12 = v0[9];
  if (v11 == 1)
  {
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];
    v16 = v0[6];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[7];
    v20 = v0[8];
    v21 = v0[6];
    v22 = v0[2];
    v0[15] = *(v0[11] + *(v10 + 48));
    (*(v20 + 32))(v12);
    static Date.now.getter();
    type metadata accessor for ImageGlyphRecencyModel();
    sub_10000EB0C(&qword_100021308, &type metadata accessor for ImageGlyphRecencyModel);
    v24 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000CF74, v24, v23);
  }
}

uint64_t sub_10000CF74()
{
  v1 = v0[15];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  ImageGlyphRecencyModel.recordEngagement(for:_:)();
  (*(v4 + 8))(v3, v5);
  ImageGlyphRecencyModel.set(frequency:for:)();

  return _swift_task_switch(sub_10000D028, 0, 0);
}

uint64_t sub_10000D028()
{
  v1 = (*(v0[8] + 8))(v0[9], v0[7]);
  v4 = v0[14];
  if (v4 == v0[13])
  {
    v5 = v0[10];
    v6 = sub_100005058(&qword_100021478, &qword_100016148);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[13];
    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v0[12];
  if (v4 >= *(v8 + 16))
  {
LABEL_14:
    __break(1u);
    return _swift_task_switch(v1, v2, v3);
  }

  v9 = v0[10];
  v10 = sub_100005058(&qword_100021478, &qword_100016148);
  v11 = *(v10 - 8);
  sub_10000E9F0(v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v4, v9);
  v7 = v4 + 1;
  (*(v11 + 56))(v9, 0, 1, v10);
LABEL_6:
  v0[14] = v7;
  v12 = v0[11];
  sub_10000EA60(v0[10], v12, &qword_100021470, &qword_100016140);
  v13 = sub_100005058(&qword_100021478, &qword_100016148);
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  v15 = v0[6];
  if (v14 != 1)
  {
    v23 = v0[8];
    v22 = v0[9];
    v24 = v0[7];
    v25 = v0[2];
    v0[15] = *(v0[11] + *(v13 + 48));
    (*(v23 + 32))(v22);
    static Date.now.getter();
    type metadata accessor for ImageGlyphRecencyModel();
    sub_10000EB0C(&qword_100021308, &type metadata accessor for ImageGlyphRecencyModel);
    v26 = dispatch thunk of Actor.unownedExecutor.getter();
    v28 = v27;
    v1 = sub_10000CF74;
    v2 = v26;
    v3 = v28;

    return _swift_task_switch(v1, v2, v3);
  }

  v17 = v0[11];
  v16 = v0[12];
  v19 = v0[9];
  v18 = v0[10];

  v20 = v0[1];

  return v20();
}

void *sub_10000D338()
{
  v31 = sub_100005058(&qword_100021478, &qword_100016148);
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v3 = v26 - v2;
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E238(v32);
  v9 = v33;
  v10 = sub_1000025FC(v32, v33);
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v10);
  (*(v13 + 16))(v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = Sequence.reversed()();
  v30 = *(v14 + 16);
  if (v30)
  {
    v15 = 0;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v18 = *(v16 + 64);
    v26[1] = v14;
    v19 = v14 + ((v18 + 32) & ~v18);
    v27 = *(v16 + 56);
    v28 = v17;
    v20 = (v16 + 16);
    v21 = &_swiftEmptyArrayStorage;
    v29 = v16;
    do
    {
      v28(v8, v19, v4);
      v22 = *(v31 + 48);
      (*v20)(v3, v8, v4);
      *&v3[v22] = (v15 + 1.0 + v15 + 1.0) / 100.0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100011B30(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_100011B30(v23 > 1, v24 + 1, 1, v21);
      }

      ++v15;
      v21[2] = v24 + 1;
      sub_10000EA60(v3, v21 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v24, &qword_100021478, &qword_100016148);
      v19 += v27;
    }

    while (v30 != v15);
  }

  else
  {

    v21 = &_swiftEmptyArrayStorage;
  }

  sub_1000028C0(v32);
  return v21;
}

void sub_10000D6A4(void *a1@<X8>)
{
  v2 = &_swiftEmptyArrayStorage;
  v21 = &_swiftEmptyArrayStorage;
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithSuiteName:v4];

  if (v5)
  {
    v6 = v5;
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 dictionaryForKey:v7];

    if (v8)
    {
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v9 + 16) && (v10 = sub_10000BAB0(0x6E65636552464D45, 0xED000079654B7374), (v11 & 1) != 0))
      {
        sub_10000EECC(*(v9 + 56) + 32 * v10, v20);

        sub_100005058(&qword_100021498, &qword_100016170);
        if (swift_dynamicCast())
        {
          v2 = v19;
          v21 = v19;
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v2 = &_swiftEmptyArrayStorage;
  }

LABEL_9:
  v12 = v2[2];
  if (v12 > 0x1E)
  {
LABEL_17:
    a1[3] = sub_100005058(&qword_100021498, &qword_100016170);
    a1[4] = sub_10000EE78(&qword_1000214A0, &qword_100021498, &qword_100016170);

    *a1 = v2;
    return;
  }

  v13 = [objc_opt_self() _emojiSetForIdentifier:EMFEmojiCategoryPrepopulated];
  if (v13)
  {
    v14 = v13;
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = *(v15 + 16);
    if (v16 >= 30 - v12)
    {
      v16 = 30 - v12;
    }

    v17 = 2 * v16;
    if (v12 == 30)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17 + 1;
    }

    sub_10000ED78(v15, v15 + 32, 0, v18);
    swift_unknownObjectRelease();
    v2 = v21;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_10000D930@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v1 = type metadata accessor for StickerSequence();
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  __chkstk_darwin(v1);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Sticker.FetchRequest.RepresentationSpecifier();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v35);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005058(&qword_1000212F8, &unk_100015F90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v32 - v10;
  Request = type metadata accessor for Sticker.FetchRequest();
  v12 = *(Request - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(Request);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StickerStore.PersistenceType();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  (*(v19 + 104))(&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for StickerStore.PersistenceType.remote(_:));
  v20 = type metadata accessor for StickerStore();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v38 = StickerStore.init(persistence:)();
  v23 = enum case for Sticker.StickerType.recent(_:);
  v24 = type metadata accessor for Sticker.StickerType();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v11, v23, v24);
  v26 = v24;
  v27 = v34;
  (*(v25 + 56))(v11, 0, 1, v26);
  (*(v4 + 104))(v7, enum case for Sticker.FetchRequest.RepresentationSpecifier.none(_:), v35);
  Sticker.FetchRequest.init(type:predicate:representations:sortDescriptors:offset:limit:batchSize:)();
  dispatch thunk of StickerStoreProtocol.stickers(_:)();
  v28 = sub_10000DDC8(v27);
  v29 = sub_100005058(&qword_100021310, &unk_100016160);
  v30 = v37;
  v37[3] = v29;
  v30[4] = sub_10000EE78(&qword_100021318, &qword_100021310, &unk_100016160);
  *v30 = v28;
  (*(v32 + 8))(v27, v33);
  (*(v12 + 8))(v15, Request);
}

uint64_t sub_10000DDC8(uint64_t a1)
{
  v26 = a1;
  v27 = type metadata accessor for UUID();
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v27);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v24 - v6;
  v7 = type metadata accessor for StickerSequence();
  v28 = *(v7 - 8);
  v8 = *(v28 + 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for StickerSequenceIterator();
  v25 = *(v29 - 8);
  v11 = *(v25 + 64);
  __chkstk_darwin(v29);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EB0C(&qword_100021240, &type metadata accessor for StickerSequence);
  v14 = dispatch thunk of Sequence.underestimatedCount.getter();
  v31 = &_swiftEmptyArrayStorage;
  sub_10000EAC8(0, v14 & ~(v14 >> 63), 0);
  v15 = v31;
  (*(v28 + 2))(v10, v26, v7);
  v28 = v13;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v14 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v14)
  {
    sub_10000EB0C(&qword_100021490, &type metadata accessor for StickerSequenceIterator);
    do
    {
      result = dispatch thunk of IteratorProtocol.next()();
      v17 = v30;
      if (!v30)
      {
        goto LABEL_15;
      }

      Sticker.identifier.getter();

      v31 = v15;
      v19 = v15[2];
      v18 = v15[3];
      if (v19 >= v18 >> 1)
      {
        sub_10000EAC8(v18 > 1, v19 + 1, 1);
        v15 = v31;
      }

      v15[2] = v19 + 1;
      (*(v1 + 32))(v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19, v5, v27);
    }

    while (--v14);
  }

  sub_10000EB0C(&qword_100021490, &type metadata accessor for StickerSequenceIterator);
  dispatch thunk of IteratorProtocol.next()();
  v20 = v30;
  if (v30)
  {
    v21 = v24;
    do
    {
      Sticker.identifier.getter();

      v31 = v15;
      v23 = v15[2];
      v22 = v15[3];
      if (v23 >= v22 >> 1)
      {
        sub_10000EAC8(v22 > 1, v23 + 1, 1);
        v15 = v31;
      }

      v15[2] = v23 + 1;
      (*(v1 + 32))(v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v23, v21, v27);
      dispatch thunk of IteratorProtocol.next()();
      v20 = v30;
    }

    while (v30);
  }

  (*(v25 + 8))(v28, v29);
  return v15;
}

uint64_t sub_10000E238@<X0>(void *a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v48 = &v40 - v7;
  v8 = __chkstk_darwin(v6);
  v53 = &v40 - v9;
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  sub_10000D6A4(v56);
  v12 = v57;
  v13 = sub_1000025FC(v56, v57);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v13);
  (*(v16 + 16))(&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = Array.init<A>(_:)();
  sub_1000028C0(v56);
  sub_10000D930(v56);
  v18 = v57;
  v19 = sub_1000025FC(v56, v57);
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v19);
  (*(v22 + 16))(&v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for UUID();
  v23 = Array.init<A>(_:)();
  sub_1000028C0(v56);
  if (qword_100021048 != -1)
  {
LABEL_26:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100001CE8(v24, qword_100021458);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218240;
    *(v27 + 4) = *(v17 + 16);

    *(v27 + 12) = 2048;
    *(v27 + 14) = *(v23 + 16);

    _os_log_impl(&_mh_execute_header, v25, v26, "Found %ld emojis and %ld stickers to migrate.", v27, 0x16u);
  }

  else
  {
  }

  v28 = 0;
  v29 = *(v17 + 16);
  v45 = v23;
  v54 = *(v23 + 16);
  v55 = v29;
  if (v54 > v29)
  {
    v29 = v54;
  }

  v44 = enum case for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.emoji(_:);
  v23 = v2 + 104;
  v30 = (v2 + 16);
  v50 = v2 + 32;
  v51 = v2 + 8;
  v43 = v47 - 8;
  v42 = enum case for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.sticker(_:);
  v46 = v17;
  v31 = (v17 + 40);
  v52 = v29 + 1;
  v32 = &_swiftEmptyArrayStorage;
  do
  {
    if (v28 < v55)
    {
      if (v28 >= *(v46 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v33 = *v31;
      *v11 = *(v31 - 1);
      *(v11 + 1) = v33;
      (*v23)(v11, v44, v1);
      (*v30)(v53, v11, v1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_10001192C(0, v32[2] + 1, 1, v32);
      }

      v17 = v32[2];
      v34 = v32[3];
      if (v17 >= v34 >> 1)
      {
        v32 = sub_10001192C(v34 > 1, v17 + 1, 1, v32);
      }

      (*(v2 + 8))(v11, v1);
      v32[2] = v17 + 1;
      (*(v2 + 32))(v32 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v17, v53, v1);
    }

    if (v28 < v54)
    {
      if (v28 >= *(v45 + 16))
      {
        goto LABEL_25;
      }

      v35 = v48;
      (*(*(v47 - 8) + 16))(v48, v45 + ((*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80)) + *(*(v47 - 8) + 72) * v28);
      (*v23)(v35, v42, v1);
      (*v30)(v49, v35, v1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_10001192C(0, v32[2] + 1, 1, v32);
      }

      v17 = v32[2];
      v36 = v32[3];
      if (v17 >= v36 >> 1)
      {
        v32 = sub_10001192C(v36 > 1, v17 + 1, 1, v32);
      }

      (*(v2 + 8))(v48, v1);
      v32[2] = v17 + 1;
      (*(v2 + 32))(v32 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v17, v49, v1);
    }

    ++v28;
    v31 += 2;
  }

  while (v52 != v28);

  v37 = sub_100005058(&qword_100021480, &unk_100016150);
  v38 = v41;
  v41[3] = v37;
  result = sub_10000EE78(&qword_100021488, &qword_100021480, &unk_100016150);
  v38[4] = result;
  *v38 = v32;
  return result;
}

uint64_t sub_10000E94C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000087CC;

  return sub_10000CB6C(a1, v4);
}

uint64_t sub_10000E9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005058(&qword_100021478, &qword_100016148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EA60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005058(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

size_t sub_10000EAC8(size_t a1, int64_t a2, char a3)
{
  result = sub_10000EB9C(a1, a2, a3, *v3, &qword_1000212F0, &unk_1000162A0, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

uint64_t sub_10000EB0C(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_10000EB54(size_t a1, int64_t a2, char a3)
{
  result = sub_10000EB9C(a1, a2, a3, *v3, &qword_1000214A8, &qword_100016410, &type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  *v3 = result;
  return result;
}

size_t sub_10000EB9C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005058(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_10000ED78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v7 + 3) >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v13 = v8 + v6;
      }

      else
      {
        v13 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_100011820(isUniquelyReferenced_nonNull_native, v13, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v7 + 3) >> 1) - *(v7 + 2) < v6)
  {
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v14 = *(v7 + 2);
  v15 = __OFADD__(v14, v6);
  v16 = v14 + v6;
  if (!v15)
  {
    *(v7 + 2) = v16;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_10000EE78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000068B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000EECC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000EF28()
{
  sub_100005058(&qword_1000214B0, &qword_100016178);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100015FC0;
  v1 = sub_10000EFAC();
  *(v0 + 32) = &type metadata for RecencyMigrator_V1;
  *(v0 + 40) = v1;
  v2 = sub_10000F000();
  *(v0 + 48) = &type metadata for RecencyMigrator_V2;
  *(v0 + 56) = v2;
  result = sub_10000F054();
  *(v0 + 64) = &type metadata for RecencyMigrator_V3;
  *(v0 + 72) = result;
  qword_100021EC0 = v0;
  return result;
}

unint64_t sub_10000EFAC()
{
  result = qword_1000214B8;
  if (!qword_1000214B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000214B8);
  }

  return result;
}

unint64_t sub_10000F000()
{
  result = qword_1000214C0;
  if (!qword_1000214C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000214C0);
  }

  return result;
}

unint64_t sub_10000F054()
{
  result = qword_1000214C8;
  if (!qword_1000214C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000214C8);
  }

  return result;
}

uint64_t sub_10000F0A8()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Will register as SpotlightDaemonClient", v3, 2u);
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = *(v0 + *(type metadata accessor for StickerIndexingClient(0) + 20));
  SpotlightDaemonClientRegister();

  return 1;
}

unint64_t sub_10000F1AC(uint64_t *a1)
{
  v93 = a1;
  v82 = type metadata accessor for UUID();
  v79 = *(v82 - 8);
  v1 = *(v79 + 64);
  v2 = __chkstk_darwin(v82);
  v78 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v80 = &v78 - v4;
  v5 = type metadata accessor for StickerSequenceIterator();
  v86 = *(v5 - 8);
  v87 = v5;
  v6 = *(v86 + 64);
  __chkstk_darwin(v5);
  v84 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for StickerSequence();
  v83 = *(v85 - 8);
  v8 = *(v83 + 64);
  v9 = __chkstk_darwin(v85);
  v81 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v78 - v11;
  v13 = type metadata accessor for Sticker.FetchRequest.RepresentationSpecifier();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_100005058(&qword_1000212F8, &unk_100015F90);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v78 - v20;
  Request = type metadata accessor for Sticker.FetchRequest();
  v90 = *(Request - 8);
  v22 = *(v90 + 64);
  __chkstk_darwin(Request);
  v24 = (&v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = os_transaction_create();
  v25 = type metadata accessor for Sticker.StickerType();
  (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
  v26 = *(v14 + 104);
  v26(v17, enum case for Sticker.FetchRequest.RepresentationSpecifier.preferred(_:), v13);
  Sticker.FetchRequest.init(type:predicate:representations:sortDescriptors:offset:limit:batchSize:)();
  sub_10000C414(0, &qword_100021580, NSPredicate_ptr);
  sub_100005058(&qword_100021588, &unk_1000162B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100016180;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_1000122C8();
  *(v27 + 32) = 0x696669746E656469;
  *(v27 + 40) = 0xEA00000000007265;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v27 + 96) = sub_10000C414(0, &qword_100021598, NSUUID_ptr);
  *(v27 + 104) = sub_10001231C();
  *(v27 + 72) = isa;
  *v17 = NSPredicate.init(format:_:)();
  v29 = v92;
  v26(v17, enum case for Sticker.FetchRequest.RepresentationSpecifier.where(_:), v13);
  Sticker.FetchRequest.representations.setter();
  Sticker.FetchRequest.limit.setter();
  v30 = *(v29 + OBJC_IVAR____TtCV9stickersd21StickerIndexingClient8Provider_store + 32);
  v31 = sub_1000025FC((v29 + OBJC_IVAR____TtCV9stickersd21StickerIndexingClient8Provider_store), *(v29 + OBJC_IVAR____TtCV9stickersd21StickerIndexingClient8Provider_store + 24));
  v32 = v12;
  v33 = v91;
  dispatch thunk of StickerStoreProtocol.stickers(_:)();
  if (v33)
  {
    (*(v90 + 8))(v24, Request);
    swift_unknownObjectRelease();
    return v31;
  }

  v35 = v82;
  v36 = v83;
  v37 = v12;
  v38 = v85;
  (*(v83 + 16))(v81, v37, v85);
  sub_100012384(&qword_100021240, &type metadata accessor for StickerSequence);
  v39 = v84;
  dispatch thunk of Sequence.makeIterator()();
  sub_100012384(&qword_100021490, &type metadata accessor for StickerSequenceIterator);
  v40 = v87;
  dispatch thunk of IteratorProtocol.next()();
  (*(v86 + 8))(v39, v40);
  (*(v36 + 8))(v32, v38);
  v41 = v94;
  if (!v94)
  {
    v49 = v78;
    v48 = v79;
    v50 = v35;
    (*(v79 + 16))(v78, v93, v35);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94 = v93;
      *v53 = 136315138;
      sub_100012384(&qword_1000215A8, &type metadata accessor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v24;
      v57 = v56;
      (*(v48 + 8))(v49, v50);
      v58 = sub_100011D20(v54, v57, &v94);
      v24 = v55;

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "Could not locate sticker with representation with identifier %s", v53, 0xCu);
      sub_1000028C0(v93);
    }

    else
    {

      (*(v48 + 8))(v49, v35);
    }

    v70 = Request;
    v31 = v89;
    v71 = v90;
    sub_100010F84();
    swift_allocError();
    *v72 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v71 + 8))(v24, v70);
    return v31;
  }

  result = dispatch thunk of Sticker.representations.getter();
  v42 = v35;
  if (result >> 62)
  {
    v77 = result;
    v43 = _CocoaArrayWrapper.endIndex.getter();
    result = v77;
  }

  else
  {
    v43 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v80;
  v45 = v93;
  if (!v43)
  {

    v59 = v79;
    (*(v79 + 16))(v44, v45, v42);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v93 = v24;
      v64 = v63;
      v94 = v63;
      *v62 = 136315138;
      sub_100012384(&qword_1000215A8, &type metadata accessor for UUID);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v42;
      v68 = v67;
      (*(v59 + 8))(v44, v66);
      v69 = sub_100011D20(v65, v68, &v94);

      *(v62 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v60, v61, "Could not locate sticker representation with identifier %s", v62, 0xCu);
      sub_1000028C0(v64);
      v24 = v93;
    }

    else
    {

      (*(v59 + 8))(v44, v42);
    }

    v73 = Request;
    v74 = v90;
    sub_100010F84();
    swift_allocError();
    *v75 = 3;
    swift_willThrow();

    swift_unknownObjectRelease();
    v76 = *(v74 + 8);
    v31 = v74 + 8;
    v76(v24, v73);
    return v31;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v46 = *(result + 32);
LABEL_11:
    v47 = v46;

    v31 = dispatch thunk of Sticker.Representation.data.getter();

    swift_unknownObjectRelease();
    (*(v90 + 8))(v24, Request);
    return v31;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000FCD8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, void *aBlock, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  _Block_copy(v10);
  v23 = a1;
  a9(v11, v13, v14, v16, v17, v19, v20, v22, v23, v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_10000FE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return _swift_task_switch(sub_10000FE2C, 0, 0);
}

uint64_t sub_10000FE2C()
{
  v15 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  os_transaction_create();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[8];
    v6 = v0[9];
    v9 = v0[6];
    v8 = v0[7];
    v10 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100011D20(v9, v8, &v14);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100011D20(v7, v6, &v14);
    _os_log_impl(&_mh_execute_header, v4, v5, "Asked to reindex all items for bundle id: %s, protection class: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v11 = static StickerReindexer.shared.modify();
  StickerReindexer.reindexStickers(with:)(&_swiftEmptyArrayStorage);
  v11(v0 + 2, 0);
  swift_unknownObjectRelease();
  v12 = v0[1];

  return v12();
}

uint64_t sub_10001019C(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_100010298;

  return sub_10000FE04(v6, v8, v9, v11);
}

uint64_t sub_100010298()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  v4[2](v4);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100010410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = *(*(sub_100005058(&qword_100021570, &qword_100016290) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[13] = v8;
  v9 = *(v8 - 8);
  v6[14] = v9;
  v10 = *(v9 + 64) + 15;
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_100010510, 0, 0);
}

uint64_t sub_100010510()
{
  v42 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[6];
  os_transaction_create();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[9];
    v39 = v0[10];
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v11 = 136315650;
    v12 = Array.description.getter();
    v14 = sub_100011D20(v12, v13, &v41);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100011D20(v9, v8, &v41);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_100011D20(v7, v39, &v41);
    _os_log_impl(&_mh_execute_header, v5, v6, "Asked to reindex items for identifiers: %s, bundle id: %s, protection class: %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  v15 = v0[6];
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v0[14];
    v18 = (v17 + 48);
    v40 = v17;
    v19 = (v17 + 32);
    v20 = (v15 + 40);
    v21 = &_swiftEmptyArrayStorage;
    do
    {
      v23 = v0[12];
      v22 = v0[13];
      v25 = *(v20 - 1);
      v24 = *v20;

      UUID.init(uuidString:)();

      if ((*v18)(v23, 1, v22) == 1)
      {
        sub_1000050A0(v0[12], &qword_100021570, &qword_100016290);
      }

      else
      {
        v26 = *v19;
        (*v19)(v0[15], v0[12], v0[13]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100011954(0, *(v21 + 2) + 1, 1, v21, &qword_1000212F0, &unk_1000162A0, &type metadata accessor for UUID);
        }

        v28 = *(v21 + 2);
        v27 = *(v21 + 3);
        if (v28 >= v27 >> 1)
        {
          v21 = sub_100011954(v27 > 1, v28 + 1, 1, v21, &qword_1000212F0, &unk_1000162A0, &type metadata accessor for UUID);
        }

        v29 = v0[15];
        v30 = v0[13];
        *(v21 + 2) = v28 + 1;
        v26(&v21[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v28], v29, v30);
      }

      v20 += 2;
      --v16;
    }

    while (v16);
  }

  else
  {
    v21 = &_swiftEmptyArrayStorage;
  }

  if (*(v21 + 2))
  {
    v31 = static StickerReindexer.shared.modify();
    StickerReindexer.reindexStickers(with:)(v21);

    v31(v0 + 2, 0);
    swift_unknownObjectRelease();
  }

  else
  {

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "List of identifiers is empty — nothing to do", v34, 2u);
    }

    swift_unknownObjectRelease();
  }

  v35 = v0[15];
  v36 = v0[12];

  v37 = v0[1];

  return v37();
}

uint64_t sub_100010B28(int a1, int a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[4] = v7;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[5] = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v5[6] = v12;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_100010C4C;

  return sub_100010410(v7, v8, v10, v11, v13);
}

uint64_t sub_100010C4C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v9 = *v0;

  v5[2](v5);
  _Block_release(v5);
  v7 = *(v9 + 8);

  return v7();
}

id sub_100010E18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerIndexingClient.Provider(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100010EE8()
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

unint64_t sub_100010F84()
{
  result = qword_100021568;
  if (!qword_100021568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021568);
  }

  return result;
}

uint64_t sub_100010FF4()
{
  sub_10000F0A8();
  v1 = *(v0 + 8);

  return v1(1);
}

Swift::Int sub_100011068()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000110DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100011120()
{
  v1 = *v0;
  v2 = 0x6C706D6920746F4ELL;
  v3 = 0xD000000000000012;
  v4 = 0x6E756F6620746F4ELL;
  if (v1 != 3)
  {
    v4 = 0x6961766120746F4ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F707075736E55;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000111E4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100008F88;

  return v7();
}

uint64_t sub_1000112CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000087CC;

  return v8();
}

uint64_t sub_1000113B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005058(&qword_1000212A8, &qword_100015EC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000139D8(a3, v25 - v11, &qword_1000212A8, &qword_100015EC0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000050A0(v12, &qword_1000212A8, &qword_100015EC0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1000050A0(a3, &qword_1000212A8, &qword_100015EC0);

    return v23;
  }

LABEL_8:
  sub_1000050A0(a3, &qword_1000212A8, &qword_100015EC0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void *sub_1000116B0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005058(&qword_1000215C0, &qword_100016330);
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
    sub_100005058(&qword_1000215C8, &qword_100016338);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100011820(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005058(&qword_100021670, &qword_100016418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

size_t sub_100011954(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005058(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_100011B30(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100005058(&qword_100021668, &unk_100016400);
  v10 = *(sub_100005058(&qword_100021478, &qword_100016148) - 8);
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
  v15 = *(sub_100005058(&qword_100021478, &qword_100016148) - 8);
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

uint64_t sub_100011D20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100011DEC(v11, 0, 0, 1, a1, a2);
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
    sub_10000EECC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000028C0(v11);
  return v7;
}

unint64_t sub_100011DEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100011EF8(a5, a6);
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

char *sub_100011EF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100011F44(a1, a2);
  sub_100012074(&off_10001CC28);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100011F44(uint64_t a1, unint64_t a2)
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

  v6 = sub_100012160(v5, 0);
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
        v7 = sub_100012160(v10, 0);
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

uint64_t sub_100012074(uint64_t result)
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

  result = sub_1000121D4(result, v12, 1, v3);
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

void *sub_100012160(uint64_t a1, uint64_t a2)
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

  sub_100005058(&qword_100021578, &qword_100016298);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000121D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005058(&qword_100021578, &qword_100016298);
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

unint64_t sub_1000122C8()
{
  result = qword_100021590;
  if (!qword_100021590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021590);
  }

  return result;
}

unint64_t sub_10001231C()
{
  result = qword_1000215A0;
  if (!qword_1000215A0)
  {
    sub_10000C414(255, &qword_100021598, NSUUID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000215A0);
  }

  return result;
}

uint64_t sub_100012384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000123CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000087CC;

  return sub_100010B28(v2, v3, v4, v5, v6);
}

uint64_t sub_100012494()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100008F88;

  return sub_1000111E4(v2, v3, v5);
}

uint64_t sub_100012554(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F88;

  return sub_1000112CC(a1, v4, v5, v7);
}

uint64_t sub_100012620(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F88;

  return sub_1000088C0(a1, v5);
}

uint64_t sub_1000126D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000087CC;

  return sub_1000088C0(a1, v5);
}

uint64_t sub_100012790()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100008F88;

  return sub_10001019C(v2, v3, v5, v4);
}

uint64_t sub_100012850()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100012890(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v104 = a7;
  v119 = a5;
  v107 = a1;
  v108 = a3;
  v112 = a10;
  v14 = sub_100005058(&qword_100021570, &qword_100016290);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v110 = &v100 - v16;
  v115 = type metadata accessor for UUID();
  v118 = *(v115 - 8);
  v17 = *(v118 + 64);
  v18 = __chkstk_darwin(v115);
  v102 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v116 = (&v100 - v20);
  v21 = sub_100005058(&qword_1000215B0, &qword_100016328);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v113 = &v100 - v23;
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v101 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v100 - v29;
  v111 = os_transaction_create();
  v31 = OBJC_IVAR____TtCV9stickersd21StickerIndexingClient8Provider_logger;

  v117 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v109 = a4;

  v106 = a2;

  v105 = a8;

  v34 = os_log_type_enabled(v32, v33);
  v114 = a9;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v103 = v25;
    v120[0] = v36;
    *v35 = 136315906;
    *(v35 + 4) = sub_100011D20(v119, a6, v120);
    v100 = a6;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_100011D20(v104, v105, v120);
    *(v35 + 22) = 2080;
    *(v35 + 24) = sub_100011D20(v107, v106, v120);
    *(v35 + 32) = 2080;
    v37 = v116;
    a6 = v100;
    *(v35 + 34) = sub_100011D20(v108, v109, v120);
    _os_log_impl(&_mh_execute_header, v32, v33, "Asked to provider data for item: %s, type: %s, bundle id: %s, protection class: %s", v35, 0x2Au);
    swift_arrayDestroy();
    v25 = v103;

    v38 = v118;
  }

  else
  {

    v37 = v116;
    v38 = v118;
  }

  v39 = v113;
  v40 = v119;
  URL.init(string:)();
  v41 = (*(v25 + 48))(v39, 1, v24);
  v42 = v115;
  if (v41 == 1)
  {
    sub_1000050A0(v39, &qword_1000215B0, &qword_100016328);
    goto LABEL_14;
  }

  (*(v25 + 32))(v30, v39, v24);
  v43 = URL.scheme.getter();
  if (v44)
  {
    if (v43 == 0x616465726F632D78 && v44 == 0xEA00000000006174)
    {

      goto LABEL_11;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v42 = v115;

    if (v45)
    {
LABEL_11:
      v46 = *(v25 + 16);
      v47 = v101;
      v119 = v30;
      v46(v101, v30, v24);
      v48 = Logger.logObject.getter();
      v49 = v25;
      v50 = static os_log_type_t.debug.getter();
      v51 = os_log_type_enabled(v48, v50);
      v103 = v49;
      if (v51)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v120[0] = v53;
        *v52 = 136315138;
        sub_100012384(&qword_1000215B8, &type metadata accessor for URL);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v55;
        v57 = *(v49 + 8);
        v58 = v24;
        v57(v47, v24);
        v59 = sub_100011D20(v54, v56, v120);

        *(v52 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v48, v50, "Identifier %s looks like a managed objectID", v52, 0xCu);
        sub_1000028C0(v53);
      }

      else
      {

        v57 = *(v49 + 8);
        v58 = v24;
        v57(v47, v24);
      }

      os_transaction_create();
      v75 = v120;
      v42 = static StickerReindexer.shared.modify();
      v84 = v119;
      v76 = StickerReindexer.dataForManagedRepresentation(uri:)();
      v80 = v85;
      v42(v120, 0);
      if (v80 >> 60 == 15)
      {
        sub_100010F84();
        swift_allocError();
        *v86 = 3;
        swift_willThrow();
        swift_unknownObjectRelease();
        v57(v84, v58);
LABEL_28:
        swift_errorRetain();
        v87 = _convertErrorToNSError(_:)();
        (*(v112 + 16))(v112, 0, v87);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      sub_100003228(v76, v80);
      v79 = Logger.logObject.getter();
      v78 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v79, v78))
      {
        sub_100013A40(v76, v80);
LABEL_52:

        sub_100003228(v76, v80);
        isa = Data._bridgeToObjectiveC()().super.isa;
        (*(v112 + 16))(v112, isa, 0);
        swift_unknownObjectRelease();

        sub_100013A40(v76, v80);
        sub_100013A40(v76, v80);
        v96 = v119;
        v97 = v58;
        return (v57)(v96, v97);
      }

      result = swift_slowAlloc();
      *result = 134217984;
      v83 = v80 >> 62;
      if ((v80 >> 62) <= 1)
      {
        if (v83)
        {
          LODWORD(v88) = HIDWORD(v76) - v76;
          if (__OFSUB__(HIDWORD(v76), v76))
          {
            goto LABEL_56;
          }

          v88 = v88;
        }

        else
        {
          v88 = BYTE6(v80);
        }

LABEL_51:
        *(result + 4) = v88;
        v98 = result;
        sub_100013A40(v76, v80);
        _os_log_impl(&_mh_execute_header, v79, v78, "Providing %ld bytes", v98, 0xCu);

        goto LABEL_52;
      }

LABEL_39:
      if (v83 == 2)
      {
        v93 = *(v76 + 16);
        v92 = *(v76 + 24);
        v91 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        if (v91)
        {
          __break(1u);
LABEL_43:
          LODWORD(v83) = HIDWORD(v76) - v76;
          if (!__OFSUB__(HIDWORD(v76), v76))
          {
            v83 = v83;
            goto LABEL_46;
          }

          __break(1u);
LABEL_56:
          __break(1u);
          return result;
        }
      }

      else
      {
        v88 = 0;
      }

      goto LABEL_51;
    }
  }

  (*(v25 + 8))(v30, v24);
LABEL_14:
  v60 = v110;
  UUID.init(uuidString:)();
  if ((*(v38 + 48))(v60, 1, v42) == 1)
  {
    sub_1000050A0(v60, &qword_100021570, &qword_100016290);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v120[0] = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_100011D20(v40, a6, v120);
      _os_log_impl(&_mh_execute_header, v61, v62, "Cannot create sticker identifier from '%s'", v63, 0xCu);
      sub_1000028C0(v64);
    }

    sub_100010F84();
    swift_allocError();
    *v65 = 2;
    swift_willThrow();
    goto LABEL_28;
  }

  (*(v38 + 32))(v37, v60, v42);
  v58 = v102;
  (*(v38 + 16))(v102, v37, v42);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = v42;
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v120[0] = v70;
    *v69 = 136315138;
    sub_100012384(&qword_1000215A8, &type metadata accessor for UUID);
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    v57 = *(v38 + 8);
    v57(v58, v68);
    v74 = sub_100011D20(v71, v73, v120);

    *(v69 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v66, v67, "Identifier %s looks like a UUID; interpreting as a sticker representation", v69, 0xCu);
    sub_1000028C0(v70);

    v37 = v116;
    v42 = v68;
  }

  else
  {

    v57 = *(v38 + 8);
    v57(v58, v42);
  }

  v75 = v37;
  v76 = sub_10000F1AC(v37);
  v78 = v77;
  sub_100003228(v76, v77);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v79, v80))
  {
    result = swift_slowAlloc();
    *result = 134217984;
    v82 = v78 >> 62;
    if ((v78 >> 62) <= 1)
    {
      if (!v82)
      {
        v83 = BYTE6(v78);
LABEL_46:
        *(result + 4) = v83;
        v94 = result;
        sub_10000286C(v76, v78);
        _os_log_impl(&_mh_execute_header, v79, v80, "Providing %ld bytes", v94, 0xCu);

        goto LABEL_47;
      }

      goto LABEL_43;
    }

    if (v82 != 2)
    {
      v83 = 0;
      goto LABEL_46;
    }

    v90 = *(v76 + 16);
    v89 = *(v76 + 24);
    v91 = __OFSUB__(v89, v90);
    v83 = v89 - v90;
    if (!v91)
    {
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_39;
  }

  sub_10000286C(v76, v78);
LABEL_47:

  sub_100003228(v76, v78);
  v95 = Data._bridgeToObjectiveC()().super.isa;
  (*(v112 + 16))(v112, v95, 0);
  swift_unknownObjectRelease();

  sub_10000286C(v76, v78);
  sub_10000286C(v76, v78);
  v96 = v75;
  v97 = v42;
  return (v57)(v96, v97);
}

uint64_t sub_10001364C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v39 = a3;
  v40 = a5;
  v38 = a1;
  v15 = a10;
  v16 = sub_100005058(&qword_1000215B0, &qword_100016328);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v36 - v21;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v36 = a7;
    v26 = v25;
    v27 = swift_slowAlloc();
    v37 = a10;
    v41 = v27;
    *v26 = 136315906;
    *(v26 + 4) = sub_100011D20(v38, a2, &v41);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_100011D20(v39, a4, &v41);
    *(v26 + 22) = 2080;
    *(v26 + 24) = sub_100011D20(v40, a6, &v41);
    *(v26 + 32) = 2080;
    *(v26 + 34) = sub_100011D20(v36, a8, &v41);
    _os_log_impl(&_mh_execute_header, v23, v24, "Asked to provider file url for bundle id: %s, protection class: %s, itemIdentifier: %s, typeIdentifier: %s", v26, 0x2Au);
    swift_arrayDestroy();
    v15 = v37;
  }

  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v22, 1, 1, v28);
  sub_100010F84();
  swift_allocError();
  *v30 = 1;
  sub_1000139D8(v22, v20, &qword_1000215B0, &qword_100016328);
  v32 = 0;
  if ((*(v29 + 48))(v20, 1, v28) != 1)
  {
    URL._bridgeToObjectiveC()(v31);
    v32 = v33;
    (*(v29 + 8))(v20, v28);
  }

  v34 = _convertErrorToNSError(_:)();
  (*(v15 + 16))(v15, v32, v34);

  return sub_1000050A0(v22, &qword_1000215B0, &qword_100016328);
}

uint64_t sub_1000139D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005058(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100013A40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000286C(a1, a2);
  }

  return a1;
}

uint64_t sub_100013A74(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpotlightDaemonClientError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpotlightDaemonClientError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100013C40()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StickerIndexingClient.Provider(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100013CC8()
{
  result = qword_100021660;
  if (!qword_100021660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021660);
  }

  return result;
}

uint64_t sub_100013D2C()
{
  v0 = type metadata accessor for Logger();
  sub_1000044D4(v0, qword_100021678);
  sub_100001CE8(v0, qword_100021678);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100013DB8(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000087CC;

  return sub_100013E60(a1);
}

uint64_t sub_100013E60(void *a1)
{
  v1[2] = a1;
  v1[3] = *a1;
  v2 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = *(*(sub_100005058(&qword_100021300, qword_100015FA0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100013FA4, 0, 0);
}

uint64_t sub_100013FA4()
{
  v1 = v0[10];
  v3 = v0[2];
  v2 = v0[3];
  v4 = enum case for ImageGlyphRecencyModel.ImageGlyphType.emoji(_:);
  v5 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphType();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v1, v4, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  sub_1000147C4();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[11] = v8;
  v0[12] = v7;

  return _swift_task_switch(sub_1000140B4, v8, v7);
}

uint64_t sub_1000140B4()
{
  v1 = v0[10];
  v2 = v0[2];
  v0[13] = ImageGlyphRecencyModel.recentlyUsed(ofType:limit:)();
  sub_10001481C(v1);

  return _swift_task_switch(sub_100014134, 0, 0);
}

uint64_t sub_100014134()
{
  v2 = *(v1 + 104);
  v52 = *(v2 + 16);
  if (v52)
  {
    v3 = 0;
    v48 = *(v1 + 64);
    v4 = *(v1 + 40);
    v50 = enum case for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.emoji(_:);
    v49 = (v4 + 8);
    v46 = (v4 + 32);
    v47 = &_swiftEmptyArrayStorage;
    v51 = *(v1 + 104);
    while (v3 < *(v2 + 16))
    {
      v9 = *(v1 + 64);
      v8 = *(v1 + 72);
      v10 = *(v1 + 32);
      v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v12 = *(v4 + 72);
      v13 = *(v4 + 16);
      v0 = (v4 + 16);
      v13(v8, *(v1 + 104) + v11 + v12 * v3, v10);
      v13(v9, v8, v10);
      if ((*(v4 + 88))(v9, v10) == v50)
      {
        v14 = *(v1 + 64);
        (*(v4 + 96))(v14, *(v1 + 32));
        v15 = *v14;
        v16 = *(v48 + 8);
        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          v18 = *(v48 + 8);
          v19 = String._bridgeToObjectiveC()();

          IsSingleEmoji = CEMStringIsSingleEmoji();

          v21 = *(v1 + 72);
          if (IsSingleEmoji)
          {
            (*v49)(*(v1 + 72), *(v1 + 32));
          }

          else
          {
            v0 = *v46;
            (*v46)(*(v1 + 56), *(v1 + 72), *(v1 + 32));
            v22 = v47;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10000EB54(0, v47[2] + 1, 1);
              v22 = v47;
            }

            v24 = v22[2];
            v23 = v22[3];
            if (v24 >= v23 >> 1)
            {
              sub_10000EB54(v23 > 1, v24 + 1, 1);
              v22 = v47;
            }

            v25 = *(v1 + 56);
            v26 = *(v1 + 32);
            v22[2] = v24 + 1;
            v47 = v22;
            v0(v22 + v11 + v24 * v12, v25, v26);
          }
        }

        else
        {
          (*v49)(*(v1 + 72), *(v1 + 32));
        }
      }

      else
      {
        v5 = *(v1 + 64);
        v6 = *(v1 + 32);
        v0 = (v4 + 8);
        v7 = *v49;
        (*v49)(*(v1 + 72), v6);
        v7(v5, v6);
      }

      ++v3;
      v2 = v51;
      if (v52 == v3)
      {
        v27 = *(v1 + 104);
        v0 = v47;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_22;
  }

  v0 = &_swiftEmptyArrayStorage;
LABEL_20:
  *(v1 + 112) = v0;

  if (!*(v0 + 2))
  {
    goto LABEL_29;
  }

  if (qword_100021058 != -1)
  {
    goto LABEL_33;
  }

LABEL_22:
  v28 = type metadata accessor for Logger();
  sub_100001CE8(v28, qword_100021678);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = *(v0 + 2);

    _os_log_impl(&_mh_execute_header, v29, v30, "Found %ld corrupt image glyphs needing migration attention.", v31, 0xCu);
  }

  else
  {
  }

  v32 = *(v0 + 2);
  *(v1 + 120) = v32;
  if (v32)
  {
    v33 = *(v1 + 32);
    v34 = *(v1 + 40);
    v35 = *(v34 + 16);
    v34 += 16;
    v36 = *(v34 + 64);
    *(v1 + 152) = v36;
    *(v1 + 128) = *(v34 + 56);
    *(v1 + 136) = v35;
    *(v1 + 144) = 0;
    v35(*(v1 + 48), *(v1 + 112) + ((v36 + 32) & ~v36), v33);
    v37 = *(v1 + 88);
    v38 = *(v1 + 96);

    return _swift_task_switch(sub_100014618, v37, v38);
  }

LABEL_29:

  v40 = *(v1 + 72);
  v39 = *(v1 + 80);
  v42 = *(v1 + 56);
  v41 = *(v1 + 64);
  v43 = *(v1 + 48);

  v44 = *(v1 + 8);

  return v44();
}

uint64_t sub_100014618()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  ImageGlyphRecencyModel.removeEngagementHistory(for:)();

  return _swift_task_switch(sub_100014684, 0, 0);
}

uint64_t sub_100014684()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 144) + 1;
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  if (v2 == v1)
  {
    v3 = *(v0 + 112);

    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = *(v0 + 48);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 136);
    v12 = *(v0 + 144) + 1;
    *(v0 + 144) = v12;
    v13 = *(v0 + 40) + 16;
    v11(*(v0 + 48), *(v0 + 112) + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + *(v0 + 128) * v12, *(v0 + 32));
    v14 = *(v0 + 88);
    v15 = *(v0 + 96);

    return _swift_task_switch(sub_100014618, v14, v15);
  }
}

unint64_t sub_1000147C4()
{
  result = qword_100021308;
  if (!qword_100021308)
  {
    type metadata accessor for ImageGlyphRecencyModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021308);
  }

  return result;
}

uint64_t sub_10001481C(uint64_t a1)
{
  v2 = sub_100005058(&qword_100021300, qword_100015FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}