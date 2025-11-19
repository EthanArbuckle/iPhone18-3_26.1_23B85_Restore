uint64_t ExecutiveBridge.target(forOriginalTarget:connection:selector:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100001B68(a1, v8);
  sub_100002B1C(&qword_10000C530, &qword_100004BA0);
  if (swift_dynamicCast())
  {
    sub_100002B64(v6, v9);
    sub_1000034E4(v9, v9[3]);
    ObjectType = dispatch thunk of LegacyDispatchProtocol.targetForSelector(_:connection:)();
    v4 = ObjectType;
    if (ObjectType)
    {
      ObjectType = swift_getObjectType();
    }

    else
    {
      a2[1] = 0;
      a2[2] = 0;
    }

    *a2 = v4;
    a2[3] = ObjectType;
    return sub_100001C24(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    result = sub_100001BC4(v6, &qword_10000C538, &qword_100004BA8);
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

uint64_t sub_100001B68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100001BC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002B1C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100001C24(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100001C78()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id SimulatorExecutive.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ExecutiveBridge.init()()
{
  v1 = OBJC_IVAR____TtC14photoanalysisd15ExecutiveBridge_executive;
  type metadata accessor for Executive();
  *&v0[v1] = Executive.__allocating_init()();
  *&v0[OBJC_IVAR____TtC14photoanalysisd15ExecutiveBridge_invoker] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ExecutiveBridge();
  v2 = objc_msgSendSuper2(&v8, "init");
  v3 = objc_allocWithZone(PHAInvoker);
  v4 = v2;
  v5 = [v3 initWithDelegate:v4];
  v6 = *&v4[OBJC_IVAR____TtC14photoanalysisd15ExecutiveBridge_invoker];
  *&v4[OBJC_IVAR____TtC14photoanalysisd15ExecutiveBridge_invoker] = v5;

  return v4;
}

uint64_t sub_100001FAC(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100002024, 0, 0);
}

uint64_t sub_100002024()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC14photoanalysisd15ExecutiveBridge_executive);
  v2 = *(&async function pointer to dispatch thunk of Executive.startup() + 1);
  v5 = (&async function pointer to dispatch thunk of Executive.startup() + async function pointer to dispatch thunk of Executive.startup());
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1000020D4;

  return v5();
}

uint64_t sub_1000020D4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100002380(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1000023F8, 0, 0);
}

uint64_t sub_1000023F8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC14photoanalysisd15ExecutiveBridge_executive);
  v2 = *(&async function pointer to dispatch thunk of Executive.shutdown() + 1);
  v5 = (&async function pointer to dispatch thunk of Executive.shutdown() + async function pointer to dispatch thunk of Executive.shutdown());
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_100003B70;

  return v5();
}

uint64_t sub_10000261C(const void *a1, void *a2)
{
  v2[3] = a2;
  v5 = type metadata accessor for Logger();
  v2[4] = v5;
  v6 = *(v5 - 8);
  v2[5] = v6;
  v7 = *(v6 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = _Block_copy(a1);
  v8 = a2;

  return _swift_task_switch(sub_1000026F8, 0, 0);
}

uint64_t sub_1000026F8()
{
  v1 = v0[6];
  v2 = *(v0[3] + OBJC_IVAR____TtC14photoanalysisd15ExecutiveBridge_executive);
  v0[8] = v2;
  v0[2] = v2;

  Logger.init(subsystem:category:)();
  v3 = async function pointer to StatusProtocol.dumpStatus(to:)[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = type metadata accessor for Executive();
  v6 = sub_100003940();
  *v4 = v0;
  v4[1] = sub_100002804;
  v7 = v0[6];

  return StatusProtocol.dumpStatus(to:)(v7, v5, v6);
}

uint64_t sub_100002804()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v7 = *(*v0 + 24);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);

  v3[2](v3);
  _Block_release(v3);

  v8 = *(v10 + 8);

  return v8();
}

Swift::Bool __swiftcall ExecutiveBridge.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC14photoanalysisd15ExecutiveBridge_executive);
  v6 = dispatch thunk of Executive.listener(_:shouldAcceptNewConnection:)();
  if (v6)
  {
    [(objc_class *)shouldAcceptNewConnection.super.isa setDelegate:*(v3 + OBJC_IVAR____TtC14photoanalysisd15ExecutiveBridge_invoker)];
    [(objc_class *)shouldAcceptNewConnection.super.isa resume];
  }

  return v6 & 1;
}

id ExecutiveBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecutiveBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002B1C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002B64(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100002C64(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100003B74;

  return v7();
}

uint64_t sub_100002D4C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100002E34;

  return v8();
}

uint64_t sub_100002E34()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002B1C(&qword_10000C628, &qword_100004BD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v26 - v12;
  sub_100003760(a3, v26 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100001BC4(v13, &qword_10000C628, &qword_100004BD0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = String.utf8CString.getter() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_100001BC4(a3, &qword_10000C628, &qword_100004BD0);

    return v24;
  }

LABEL_8:
  sub_100001BC4(a3, &qword_10000C628, &qword_100004BD0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100003214(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000330C;

  return v7(a1);
}

uint64_t sub_10000330C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s14photoanalysisd15ExecutiveBridgeC17dispatchOperation_8toTarget7serviceySo020PHAServiceCancelableE0C_ypyptF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100001B68(a3, v6);
  sub_100002B1C(&qword_10000C530, &qword_100004BA0);
  if (swift_dynamicCast())
  {
    sub_100002B64(v4, v7);
    sub_1000034E4(v7, v7[3]);
    dispatch thunk of LegacyDispatchProtocol.performOperation(_:on:)();
    return sub_100001C24(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    return sub_100001BC4(v4, &qword_10000C538, &qword_100004BA8);
  }
}

void *sub_1000034E4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100003528()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002E34;

  return sub_10000261C(v2, v3);
}

uint64_t sub_1000035D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100003B74;

  return sub_100002C64(v2, v3, v5);
}

uint64_t sub_100003694(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003B74;

  return sub_100002D4C(a1, v4, v5, v7);
}

uint64_t sub_100003760(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B1C(&qword_10000C628, &qword_100004BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000037D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003B74;

  return sub_100003214(a1, v5);
}

uint64_t sub_100003888(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002E34;

  return sub_100003214(a1, v5);
}

unint64_t sub_100003940()
{
  result = qword_10000C630;
  if (!qword_10000C630)
  {
    type metadata accessor for Executive();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C630);
  }

  return result;
}

uint64_t sub_100003998()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100003B74;

  return sub_100002380(v2, v3);
}

uint64_t sub_100003A44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003A84()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100003B74;

  return sub_100001FAC(v2, v3);
}

uint64_t sub_100003B30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

id SimulatorExecutive.init()()
{
  Logger.init(subsystem:category:)();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimulatorExecutive();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t type metadata accessor for SimulatorExecutive()
{
  result = qword_10000C6C8;
  if (!qword_10000C6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SimulatorExecutive.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimulatorExecutive();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003D7C()
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

uint64_t start()
{
  _set_user_dir_suffix();
  v0 = objc_autoreleasePoolPush();
  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    PLDebugEnableCoreDataMultithreadedAsserts();
    v1 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.photoanalysisd"];
    v2 = objc_alloc_init(_TtC14photoanalysisd15ExecutiveBridge);
    *buf = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100004094;
    v18 = &unk_100008590;
    v19 = v2;
    v3 = sub_10000413C(0xFuLL, buf);
    v4 = qword_10000C6E0;
    qword_10000C6E0 = v3;

    dispatch_resume(qword_10000C6E0);
    v5 = v2;
    *buf = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000041C4;
    v18 = &unk_100008590;
    v19 = v5;
    v6 = v5;
    v7 = sub_10000413C(0x1DuLL, buf);
    v8 = qword_10000C6E8;
    qword_10000C6E8 = v7;

    dispatch_resume(qword_10000C6E8);
    [v1 setDelegate:v6];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000041D4;
    v13[3] = &unk_100008590;
    v9 = v1;
    v14 = v9;
    [(ExecutiveBridge *)v6 startup:v13];

    objc_autoreleasePoolPop(v0);
    CFRunLoopRun();
    v10 = 70;
  }

  else
  {
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &stru_100008568);
    }

    v11 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "photoanalysisd launched prior to first unlock", buf, 2u);
    }

    objc_autoreleasePoolPop(v0);
    v9 = 0;
    v6 = 0;
    v10 = 69;
  }

  return v10;
}

id sub_100004094(uint64_t a1)
{
  if (__PXLog_genericOnceToken != -1)
  {
    dispatch_once(&__PXLog_genericOnceToken, &stru_1000085B0);
  }

  v2 = __PXLog_genericOSLog;
  if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "photoanalysisd shutting down due to SIGTERM", v4, 2u);
  }

  return [*(a1 + 32) shutdown:&stru_1000085D0];
}

NSObject *sub_10000413C(uintptr_t a1, void *a2)
{
  v4 = dispatch_get_global_queue(2, 0);
  v5 = a2;
  v6 = dispatch_source_create(&_dispatch_source_type_signal, a1, 0, v4);
  dispatch_source_set_event_handler(v6, v5);

  return v6;
}