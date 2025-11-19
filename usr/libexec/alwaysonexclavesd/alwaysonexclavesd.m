uint64_t sub_1000010E8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC17alwaysonexclavesd6Daemon_logger;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "starting alwaysonexclavesd", v10, 2u);
  }

  if (sub_100001300())
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "exiting", v18, 2u);
    }

    exit(0);
  }

  (*(v3 + 16))(v6, v1 + v7, v2);
  v11 = type metadata accessor for AlwaysOnExclavesForwarder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1000024FC(v6);
  qword_10000C660 = v14;

  xpc_connection_activate(*(v14 + 24));
}

uint64_t sub_100001300()
{
  v0 = sub_1000022B0();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      v8 = sub_100001CBC(v3, v2, &v20);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Task Conclave Name: %s", v6, 0xCu);
      sub_1000023CC(v7);
    }

    else
    {
    }

    v13 = exclaves_launch_conclave();
    if (v13)
    {
      v12 = v13;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v14, v15))
      {
LABEL_15:

        return v12;
      }

      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = v12;
      v17 = "(error: %d): failed to launch conclave";
    }

    else
    {
      LOBYTE(v20) = 0;
      v18 = exclaves_aoe_setup();
      if (!v18)
      {
        return sub_1000015F8(v20, 0);
      }

      v12 = v18;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_15;
      }

      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = v12;
      v17 = "(error %d): exclaves_aoe_setup failed";
    }

    _os_log_impl(&_mh_execute_header, v14, v15, v17, v16, 8u);

    goto LABEL_15;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to retrieve task conclave name", v11, 2u);
  }

  return 5;
}

uint64_t sub_1000015F8(uint8_t a1, uint8_t a2)
{
  memset(&v26, 0, sizeof(v26));
  v4 = pthread_attr_init(&v26);
  if (v4)
  {
    v5 = v4;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v5;
      v9 = "(error: %d): failed to create thread attribute";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 8u);

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v10 = pthread_attr_set_qos_class_np(&v26, QOS_CLASS_UTILITY, 0);
  if (v10)
  {
    v11 = v10;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v11;
      v9 = "(error: %d): failed to set thread attribute";
      goto LABEL_27;
    }

LABEL_28:

    return 5;
  }

  v12 = pthread_attr_setstacksize(&v26, 0x4000uLL);
  if (v12)
  {
    v13 = v12;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v13;
      v9 = "(error: %d): failed to set thread stacksize";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (a1)
  {
    v14 = a1;
    while (1)
    {
      v27 = 0;
      v15 = pthread_create(&v27, &v26, sub_1000019E4, 0);
      if (v15)
      {
        break;
      }

      if (!--v14)
      {
        goto LABEL_14;
      }
    }

    v25 = v15;
LABEL_25:
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v25;
      v9 = "(error: %d): failed to create pthread";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

LABEL_14:
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 16777472;
    v18[4] = a1;
    _os_log_impl(&_mh_execute_header, v16, v17, "Started %hhu message threads", v18, 5u);
  }

  if (a2)
  {
    v19 = a2;
    while (1)
    {
      v27 = 0;
      v20 = pthread_create(&v27, &v26, sub_100001A54, 0);
      if (v20)
      {
        break;
      }

      if (!--v19)
      {
        goto LABEL_20;
      }
    }

    v25 = v20;
    goto LABEL_25;
  }

LABEL_20:
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 16777472;
    v23[4] = a2;
    _os_log_impl(&_mh_execute_header, v21, v22, "Started %hhu worker threads", v23, 5u);
  }

  return 0;
}

void sub_1000019E4()
{
  pthread_setname_np("aoe_message_thread");
  exclaves_aoe_message_loop();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100001A54()
{
  pthread_setname_np("aoe_worker_thread");
  exclaves_aoe_work_loop();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100001AC4()
{
  v1 = OBJC_IVAR____TtC17alwaysonexclavesd6Daemon_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Daemon();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  Logger.init(subsystem:category:)();
  sub_1000010E8();
  dispatch_main();
}

uint64_t type metadata accessor for Daemon()
{
  result = qword_10000C398;
  if (!qword_10000C398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001C2C()
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

uint64_t sub_100001CBC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001D88(v11, 0, 0, 1, a1, a2);
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
    sub_100002418(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000023CC(v11);
  return v7;
}

unint64_t sub_100001D88(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001E94(a5, a6);
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

char *sub_100001E94(uint64_t a1, unint64_t a2)
{
  v4 = sub_100001EE0(a1, a2);
  sub_100002010(&off_100008488);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100001EE0(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000020FC(v5, 0);
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
        v7 = sub_1000020FC(v10, 0);
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

uint64_t sub_100002010(uint64_t result)
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

  result = sub_100002170(result, v12, 1, v3);
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

void *sub_1000020FC(uint64_t a1, uint64_t a2)
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

  sub_100002474(&unk_10000C4A0, &unk_100004EB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002170(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002474(&unk_10000C4A0, &unk_100004EB0);
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

uint64_t sub_100002264(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return static String._fromUTF8Repairing(_:)(a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return static String._fromUTF8Repairing(_:)(a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return static String._fromUTF8Repairing(_:)(a1, a2);
}

uint64_t sub_1000022B0()
{
  v6 = 0;
  v0 = sysctlbyname("kern.task_conclave", 0, &v6, 0, 0);
  result = 0;
  if (!v0)
  {
    v2 = v6;
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    if (v6)
    {
      v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v3[2] = v2;
      bzero(v3 + 4, v2);
    }

    else
    {
      v3 = &_swiftEmptyArrayStorage;
    }

    if (sysctlbyname("kern.task_conclave", v3 + 4, &v6, 0, 0))
    {

      return 0;
    }

    else
    {
      v5 = sub_100002264(v3, v4);

      return v5;
    }
  }

  return result;
}

uint64_t sub_1000023CC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002418(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002474(uint64_t *a1, uint64_t *a2)
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

void *sub_1000024C0()
{
  result = sub_100003D98(&_swiftEmptyArrayStorage);
  qword_10000C670 = result;
  return result;
}

uint64_t sub_1000024FC(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_10000444C();
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100004498(&qword_10000C640, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100002474(&qword_10000C648, &qword_100004F58);
  sub_1000044E0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  v11 = v23;
  *(v1 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = OBJC_IVAR____TtC17alwaysonexclavesd25AlwaysOnExclavesForwarder_logger;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v2 + v12, v11, v13);
  mach_service = xpc_connection_create_mach_service("com.apple.alwaysonexclaves", 0, 1uLL);
  *(v2 + 24) = mach_service;
  xpc_connection_set_target_queue(mach_service, *(v2 + 16));
  v16 = *(v2 + 24);
  aBlock[4] = sub_10000458C;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000028E4;
  aBlock[3] = &unk_100008500;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  xpc_connection_set_event_handler(v16, v17);
  _Block_release(v17);
  swift_unknownObjectRelease();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "[Forwarder] AlwaysOnExclavesForwarder initialized", v20, 2u);
  }

  (*(v14 + 8))(v11, v13);
  return v2;
}

uint64_t sub_1000028E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100002944(_xpc_connection_s *a1)
{
  v3 = xpc_connection_copy_entitlement_value();
  if (v3 && (value = xpc_BOOL_get_value(v3), swift_unknownObjectRelease(), value))
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    v11[4] = sub_100003EF8;
    v11[5] = v5;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1000028E4;
    v11[3] = &unk_1000084D8;
    v6 = _Block_copy(v11);

    swift_unknownObjectRetain();

    xpc_connection_set_event_handler(a1, v6);
    _Block_release(v6);
    xpc_connection_activate(a1);
    if (qword_10000C368 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((qword_10000C678 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_10000C678 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((qword_10000C678 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "[Forwarder] Sender does not have the required entitlement", v9, 2u);
    }

    xpc_connection_cancel(a1);
  }
}

uint64_t sub_100002B90(void *a1, uint64_t a2, _xpc_connection_s *a3)
{
  type = xpc_get_type(a1);
  if (type == XPC_TYPE_ERROR.getter())
  {
    xpc_connection_cancel(a3);
    if (qword_10000C368 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v7 = sub_100004014(&qword_10000C678, a3);
    swift_unknownObjectRelease();
    if (qword_10000C678 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (v8 >= v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = *((qword_10000C678 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v7)
      {
LABEL_8:
        sub_100004374(v7, v8);
        return swift_endAccess();
      }
    }

    __break(1u);
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  result = XPC_TYPE_DICTIONARY.getter();
  if (type == result)
  {
    return sub_100002CD0(a3, a1);
  }

  return result;
}

uint64_t sub_100002CD0(_xpc_connection_s *a1, void *a2)
{
  v4 = type metadata accessor for Error();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  if (xpc_dictionary_get_string(a2, "serviceName"))
  {
    String.init(cString:)();
    v28 = 0;
    String.utf8CString.getter();

    v12 = exclaves_lookup_service();

    if (v12)
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "[Forwarder] Service lookup failed", v15, 2u);
      }

      (*(v5 + 104))(v11, enum case for Error.missingService(_:), v4);
      reply = xpc_dictionary_create_reply(a2);
      if (reply)
      {
        v17 = reply;
        v18 = Error.rawValue.getter();
        xpc_dictionary_set_int64(v17, "error", v18);
        xpc_connection_send_message(a1, v17);
        swift_unknownObjectRelease();
        return (*(v5 + 8))(v11, v4);
      }
    }

    else
    {
      sub_1000030C0(v28);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "[Forwarder] Forwarding connection setup", v25, 2u);
      }

      v26 = xpc_dictionary_create_reply(a2);
      if (v26)
      {
        v27 = v26;
        xpc_dictionary_set_mach_send();
        xpc_connection_send_message(a1, v27);
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    (*(v5 + 104))(v9, enum case for Error.unknown(_:), v4);
    v20 = xpc_dictionary_create_reply(a2);
    if (v20)
    {
      v21 = v20;
      v22 = Error.rawValue.getter();
      xpc_dictionary_set_int64(v21, "error", v22);
      xpc_connection_send_message(a1, v21);
      swift_unknownObjectRelease();
      return (*(v5 + 8))(v9, v4);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000030C0(uint64_t a1)
{
  if (qword_10000C360 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_10000C670;
  if (*(qword_10000C670 + 16) && (sub_100003720(a1), (v3 & 1) != 0))
  {
    v4 = sub_100003720(a1);
    if ((v5 & 1) == 0)
    {
      __break(1u);
    }

    return *(*(v2 + 56) + 16 * v4);
  }

  else
  {
    name = 0;
    v7 = arc4random();
    memset(&options.mpl, 0, 20);
    options.flags = 177;
    mach_port_construct(mach_task_self_, &options, v7, &name);
    v8 = sub_10000326C(a1, name);
    v9 = name;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = qword_10000C670;
    qword_10000C670 = 0x8000000000000000;
    sub_100003A5C(v9, v8, a1, isUniquelyReferenced_nonNull_native);
    qword_10000C670 = v11;
    swift_endAccess();

    return name;
  }
}

uint64_t sub_10000326C(uint64_t a1, int a2)
{
  v4 = type metadata accessor for TightbeamEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - v11;
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  *(&v21 - v13) = a2;
  v15 = *(v5 + 104);
  v15(&v21 - v13, enum case for TightbeamEndpoint.machReceive(_:), v4);
  result = (*(v5 + 16))(v12, v14, v4);
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *v9 = a1;
    v15(v9, enum case for TightbeamEndpoint.darwin(_:), v4);
    v17 = type metadata accessor for ForwardingConnection();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = ForwardingConnection.init(service_endpoint:client_endpoint:)();
    sub_100004498(&qword_10000C620, type metadata accessor for AlwaysOnExclavesForwarder);
    swift_unknownObjectRetain();
    dispatch thunk of ForwardingConnection.forward.setter();
    dispatch thunk of ForwardingConnection.begin()();
    (*(v5 + 8))(v14, v4);
    return v20;
  }

  return result;
}

uint64_t sub_10000347C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC17alwaysonexclavesd25AlwaysOnExclavesForwarder_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for AlwaysOnExclavesForwarder()
{
  result = qword_10000C538;
  if (!qword_10000C538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000357C()
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

uint64_t sub_100003624(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TightbeamDecoder();
  (*(*(v3 - 8) + 8))(a2, v3);
  return 1;
}

uint64_t sub_100003680(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

unint64_t sub_100003720(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_100003764(a1, v4);
}

unint64_t sub_100003764(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000037D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002474(&qword_10000C628, &qword_100004F48);
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
      v23 = *(v5 + 56) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
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
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
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

unint64_t sub_100003A5C(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100003720(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000037D0(v16, a4 & 1);
      v20 = *v5;
      result = sub_100003720(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100003BC4();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = v22[7] + 16 * result;
    *v25 = a1;
    *(v25 + 8) = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = v22[7] + 16 * result;
  v24 = *(v23 + 8);
  *v23 = a1;
  *(v23 + 8) = a2;
}

void *sub_100003BC4()
{
  v1 = v0;
  sub_100002474(&qword_10000C628, &qword_100004F48);
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
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
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

uint64_t sub_100003D34(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void *sub_100003D98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100002474(&qword_10000C628, &qword_100004F48);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_100003720(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = v3[7] + 16 * v9;
    *v12 = v5;
    *(v12 + 8) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 2);
    v17 = *v11;

    v9 = sub_100003720(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100003EB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100003F18(unint64_t a1, void *a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    v8 = xpc_equal(v7, a2);
    swift_unknownObjectRelease();
    if (v8)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100004014(unint64_t *a1, void *a2)
{
  v5 = *a1;
  v6 = sub_100003F18(*a1, a2);
  v8 = v6;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v11 = *(v5 + 8 * v9 + 32);
    swift_unknownObjectRetain();
LABEL_16:
    v12 = xpc_equal(v11, a2);
    swift_unknownObjectRelease();
    if (!v12)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v15)
          {
            goto LABEL_46;
          }

          if (v9 >= v15)
          {
            goto LABEL_47;
          }

          v13 = *(v5 + 32 + 8 * v8);
          v14 = *(v5 + 32 + 8 * v9);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_100003D34(v5);
          v16 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v17 = v5 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v14;
        swift_unknownObjectRelease();
        if ((v5 & 0x8000000000000000) != 0 || v16)
        {
          v5 = sub_100003D34(v5);
          v17 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_38:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v9 >= *(v17 + 16))
        {
          goto LABEL_44;
        }

        v19 = v17 + 8 * v9;
        v20 = *(v19 + 32);
        *(v19 + 32) = v13;
        swift_unknownObjectRelease();
        *a1 = v5;
      }

LABEL_8:
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_43;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_100004268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_100002474(&qword_10000C630, &qword_100004F50);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100004374(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_100003680(result);

  return sub_100004268(v4, v2, 0);
}

unint64_t sub_10000444C()
{
  result = qword_10000C638;
  if (!qword_10000C638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C638);
  }

  return result;
}

uint64_t sub_100004498(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000044E0()
{
  result = qword_10000C650;
  if (!qword_10000C650)
  {
    sub_100004544(&qword_10000C648, &qword_100004F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C650);
  }

  return result;
}

uint64_t sub_100004544(uint64_t *a1, uint64_t *a2)
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

void sub_10000458C(_xpc_connection_s *a1)
{
  xpc_connection_set_target_queue(a1, *(v1 + 16));

  sub_100002944(a1);
}

__n128 sub_1000045C8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000045D4(uint64_t a1, int a2)
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

uint64_t sub_10000461C(uint64_t result, int a2, int a3)
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