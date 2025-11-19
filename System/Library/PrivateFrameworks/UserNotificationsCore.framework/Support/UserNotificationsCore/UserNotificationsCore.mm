void sub_100001940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100001958(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10000C878)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001A9C;
    v4[4] = &unk_1000085C8;
    v4[5] = v4;
    v5 = off_1000085B0;
    v6 = 0;
    qword_10000C878 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10000C878)
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
  result = objc_getClass("BBObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000569C();
  }

  qword_10000C870 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001A9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000C878 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v64 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v64 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v64);
  v63 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  __chkstk_darwin(v8);
  v60 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  __chkstk_darwin(v11);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = objc_autoreleasePoolPush();
  v25 = sub_100001808();
  nullsub_1(v25);
  objc_autoreleasePoolPop(v24);
  UUID.init()();
  v26 = UUID.uuidString.getter();
  v28 = v27;
  (*(v20 + 8))(v23, v19);
  v30 = sub_100002E04(5, v26, v28, v29);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  qword_10000C900 = v30;
  *algn_10000C908 = v32;
  qword_10000C910 = v34;
  unk_10000C918 = v36;
  static Logger.daemon.getter();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v53 = v15;
    v54 = v14;

    v41 = static String._fromSubstring(_:)();
    v43 = v42;

    v44 = sub_10000285C(v41, v43, aBlock);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v37, v38, "Starting usernotificationsd %s", v39, 0xCu);
    sub_100002F90(v40);

    (*(v53 + 8))(v18, v54);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  sub_100002F30(0, &qword_10000C698, OS_dispatch_queue_ptr);
  (*(v55 + 104))(v57, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v56);
  v45 = v60;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000303C(&unk_10000C7E0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100002EA0(&qword_10000C6A0, &qword_1000061C0);
  sub_100003084(&qword_10000C7F0, &qword_10000C6A0, &qword_1000061C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  qword_10000C920 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v46 = SIG_IGN.getter();
  signal(15, v46);
  sub_100002F30(0, &qword_10000C6A8, OS_dispatch_source_ptr);
  v47 = qword_10000C920;
  v48 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  qword_10000C928 = v48;
  swift_getObjectType();
  aBlock[4] = sub_100002258;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000023EC;
  aBlock[3] = &unk_100008690;
  v49 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v50 = v63;
  sub_100002430();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v49);
  (*(v3 + 8))(v50, v64);
  (*(v61 + 8))(v45, v62);
  swift_getObjectType();
  OS_dispatch_source.resume()();
  qword_10000C930 = [objc_allocWithZone(type metadata accessor for ServiceManager()) init];
  v51 = objc_autoreleasePoolPush();
  sub_100002508();
  objc_autoreleasePoolPop(v51);
  CFRunLoopRun();
  return 0;
}

void sub_100002258()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = static String._fromSubstring(_:)();
    v11 = sub_10000285C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Termination complete %s", v7, 0xCu);
    sub_100002F90(v8);
  }

  (*(v1 + 8))(v4, v0);
  exit(0);
}

uint64_t sub_1000023EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100002430()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000303C(&qword_10000C6C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002EA0(&qword_10000C6C8, &qword_1000061D8);
  sub_100003084(&qword_10000C6D0, &qword_10000C6C8, &qword_1000061D8);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void sub_100002508()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_10000C930;
  ServiceManager.activate()();
  if (UNCOneness())
  {
    v6 = [objc_opt_self() sharedInstance];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 deviceClass];

      if (!v8)
      {
        v9 = objc_allocWithZone(type metadata accessor for BulletinObserver());
        sub_100003660(v5);
        v11 = v10;
        v12 = v10;
        static Logger.daemon.getter();
        v13 = v12;
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v24 = v11;
          v25 = v23;
          *v16 = 136446210;
          sub_100002EA0(&qword_10000C6B8, &qword_1000061D0);
          v17 = String.init<A>(describing:)();
          v19 = sub_10000285C(v17, v18, &v25);
          v22 = v13;
          v20 = v19;

          *(v16 + 4) = v20;
          _os_log_impl(&_mh_execute_header, v14, v15, "main: %{public}s", v16, 0xCu);
          sub_100002F90(v23);

          (*(v1 + 8))(v4, v0);
        }

        else
        {

          (*(v1 + 8))(v4, v0);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

BOOL sub_1000027AC(void *a1, uint64_t *a2)
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

uint64_t sub_100002810(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10000285C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002928(v11, 0, 0, 1, a1, a2);
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
    sub_100002FDC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002F90(v11);
  return v7;
}

unint64_t sub_100002928(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002A34(a5, a6);
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

char *sub_100002A34(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002A80(a1, a2);
  sub_100002BB0(&off_100008668);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002A80(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002C9C(v5, 0);
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
        v7 = sub_100002C9C(v10, 0);
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

uint64_t sub_100002BB0(uint64_t result)
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

  result = sub_100002D10(result, v12, 1, v3);
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

void *sub_100002C9C(uint64_t a1, uint64_t a2)
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

  sub_100002EA0(&qword_10000C6B0, &qword_1000061C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002D10(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002EA0(&qword_10000C6B0, &qword_1000061C8);
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

uint64_t sub_100002E04(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t sub_100002EA0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002EE8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002F30(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100002F78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002F90(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002FDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000303C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003084(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002EE8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000030E8(uint64_t a1, int a2)
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

uint64_t sub_100003108(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_10000C6D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10000C6D8);
    }
  }
}

id sub_100003180()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v8 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v9 = OBJC_IVAR____TtC18usernotificationsd16BulletinObserver____lazy_storage___queue;
  v10 = *(v0 + OBJC_IVAR____TtC18usernotificationsd16BulletinObserver____lazy_storage___queue);
  if (v10)
  {
    v11 = *(v0 + OBJC_IVAR____TtC18usernotificationsd16BulletinObserver____lazy_storage___queue);
  }

  else
  {
    v12 = sub_1000054F4();
    v17[1] = "letinobserver.callout";
    v17[2] = v12;
    static DispatchQoS.unspecified.getter();
    v17[3] = &_swiftEmptyArrayStorage;
    sub_100005604(&unk_10000C7E0, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100002EA0(&qword_10000C6A0, &qword_1000061C0);
    sub_100005540();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
    v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v14 = *(v0 + v9);
    *(v1 + v9) = v13;
    v11 = v13;

    v10 = 0;
  }

  v15 = v10;
  return v11;
}

id sub_1000033F0()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v8 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v9 = OBJC_IVAR____TtC18usernotificationsd16BulletinObserver____lazy_storage___observerQueue;
  v10 = *(v0 + OBJC_IVAR____TtC18usernotificationsd16BulletinObserver____lazy_storage___observerQueue);
  if (v10)
  {
    v11 = *(v0 + OBJC_IVAR____TtC18usernotificationsd16BulletinObserver____lazy_storage___observerQueue);
  }

  else
  {
    v12 = sub_1000054F4();
    v17[1] = "n.BulletinObserver";
    v17[2] = v12;
    static DispatchQoS.unspecified.getter();
    v17[3] = &_swiftEmptyArrayStorage;
    sub_100005604(&unk_10000C7E0, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100002EA0(&qword_10000C6A0, &qword_1000061C0);
    sub_100005540();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
    v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v14 = *(v0 + v9);
    *(v1 + v9) = v13;
    v11 = v13;

    v10 = 0;
  }

  v15 = v10;
  return v11;
}

void sub_100003660(void *a1)
{
  v3 = OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_observer;
  *&v1[OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_observer] = 0;
  v4 = OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_properties;
  *&v1[OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_properties] = 0;
  v5 = OBJC_IVAR____TtC18usernotificationsd16BulletinObserver____lazy_storage___queue;
  *&v1[OBJC_IVAR____TtC18usernotificationsd16BulletinObserver____lazy_storage___queue] = 0;
  v6 = OBJC_IVAR____TtC18usernotificationsd16BulletinObserver____lazy_storage___observerQueue;
  *&v1[OBJC_IVAR____TtC18usernotificationsd16BulletinObserver____lazy_storage___observerQueue] = 0;
  v7 = OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_lock;
  sub_100002EA0(&qword_10000C7F8, &qword_1000062F0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&v1[v7] = v8;
  type metadata accessor for AlertCoordinatorBulletinObserver();
  v9 = a1;
  v10 = AlertCoordinatorBulletinObserver.__allocating_init(serviceManager:)();
  if (v10)
  {
    *&v1[OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_core] = v10;

    v11 = ServiceManager.remoteNotificationsProperties.getter();
    v12 = *&v1[v4];
    *&v1[v4] = v11;

    v13 = type metadata accessor for BulletinObserver();
    v24.receiver = v1;
    v24.super_class = v13;
    v14 = objc_msgSendSuper2(&v24, "init");
    type metadata accessor for StateCaptureService();
    v15 = v14;
    static StateCaptureService.shared.getter();
    v23[3] = v13;
    v23[4] = sub_100005604(&unk_10000C800, v16, type metadata accessor for BulletinObserver);
    v23[0] = v15;
    dispatch thunk of StateCaptureService.addItem(_:identifier:)();

    sub_100002F90(v23);
    sub_100003944();
    if (*&v15[OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_properties])
    {
      v17 = *&v15[OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_properties];

      dispatch thunk of RemoteNotificationsProperties.isActive.getter();

      v19 = *&v15[OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_lock];
      v20 = __chkstk_darwin(v18);
      __chkstk_darwin(v20);
      os_unfair_lock_lock(v19 + 4);
      sub_100005684();
      os_unfair_lock_unlock(v19 + 4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v21 = *&v1[v4];

    v22 = *&v1[v7];

    type metadata accessor for BulletinObserver();
    swift_deallocPartialClassInstance();
  }
}

void sub_100003944()
{
  withObservationTracking<A>(_:onChange:)();
  v1 = OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_properties;
  if (*(v0 + OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_properties))
  {

    v2 = dispatch thunk of RemoteNotificationsProperties.isCapable.getter();

    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    if (*(v0 + v1))
    {
      v4 = *(v0 + v1);

      v5 = dispatch thunk of RemoteNotificationsProperties.isEnabled.getter();

      if (v5)
      {
        v6 = *(v0 + OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_lock);
        v7 = __chkstk_darwin(v3);
        __chkstk_darwin(v7);
        v9 = v8 + 4;
        os_unfair_lock_lock(v8 + 4);
        sub_100005684();
LABEL_7:
        os_unfair_lock_unlock(v9);
        return;
      }

LABEL_6:
      v10 = *(v0 + OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_lock);
      v11 = __chkstk_darwin(v3);
      __chkstk_darwin(v11);
      v9 = v12 + 4;
      os_unfair_lock_lock(v12 + 4);
      sub_100004F3C();
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100003B10(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_properties))
  {
    v1 = *(result + OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_properties);

    dispatch thunk of RemoteNotificationsProperties.isActive.getter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100003B60()
{
  v0 = (*(*(sub_100002EA0(&qword_10000C7C8, &qword_1000062B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_100003D3C(0, 0, v2, &unk_1000062C0, v5);
}

uint64_t sub_100003C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_100003CA4, 0, 0);
}

uint64_t sub_100003CA4()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100003944();
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100003D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100002EA0(&qword_10000C7C8, &qword_1000062B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_10000527C(a3, v26 - v10, &qword_10000C7C8, &qword_1000062B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000052E4(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_100002EA0(&unk_10000C7D0, &qword_1000062D8);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_1000052E4(a3);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000052E4(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_100002EA0(&unk_10000C7D0, &qword_1000062D8);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_100004020(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_observer;
  if (!*(a1 + OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_observer))
  {
    if (qword_10000C690 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100004F80(v3, qword_10000C6E0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Starting observer...", v6, 2u);
    }

    v7 = sub_100003180();
    v8 = sub_1000033F0();
    v9 = [objc_allocWithZone(NSProcessInfo) init];
    v10 = [v9 processName];

    if (!v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();
    }

    v11 = [objc_opt_self() gatewayWithQueue:v7 calloutQueue:v8 name:v10 priority:2];

    v12 = *(a1 + v1);
    *(a1 + v1) = v11;
    v13 = v11;

    if (v13)
    {
      [v13 setDelegate:a1];
    }

    v14 = *(a1 + v1);
    if (v14)
    {
      [v14 setObserverFeed:0x4000];
    }

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Observer started.", v17, 2u);
    }
  }
}

void sub_10000428C(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_observer;
  if (*(a1 + OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_observer))
  {
    if (qword_10000C690 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100004F80(v3, qword_10000C6E0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Stopping observer...", v6, 2u);
    }

    [*(a1 + v1) invalidate];
    v7 = *(a1 + v1);
    *(a1 + v1) = 0;

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Observer stopped.", v10, 2u);
    }
  }
}

id sub_100004538()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BulletinObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000461C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_lock);
  v2 = os_unfair_lock_trylock(v1 + 4);
  if (v2)
  {
    os_unfair_lock_unlock(v1 + 4);
  }

  sub_100002EA0(&qword_10000C7B0, &qword_100006298);
  result = swift_initStackObject();
  *(result + 16) = xmmword_100006220;
  *(result + 32) = 0x657669746361;
  *(result + 40) = 0xE600000000000000;
  v4 = *(v0 + OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_observer) != 0;
  *(result + 72) = &type metadata for Bool;
  *(result + 80) = &protocol witness table for Bool;
  *(result + 48) = v4;
  *(result + 88) = 0xD000000000000011;
  *(result + 96) = 0x80000001000066C0;
  if (*(v0 + OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_properties))
  {
    v5 = result;
    v6 = !v2;

    v7 = dispatch thunk of RemoteNotificationsProperties.isActive.getter();

    *(v5 + 128) = &type metadata for Bool;
    *(v5 + 136) = &protocol witness table for Bool;
    *(v5 + 104) = v7 & 1;
    *(v5 + 144) = 0x64656B636F6CLL;
    *(v5 + 152) = 0xE600000000000000;
    *(v5 + 184) = &type metadata for Bool;
    *(v5 + 192) = &protocol witness table for Bool;
    *(v5 + 160) = v6;
    v8 = sub_100004D7C(v5);
    swift_setDeallocating();
    sub_100002EA0(&qword_10000C7B8, &qword_1000062A0);
    swift_arrayDestroy();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000047EC()
{
  v0 = type metadata accessor for Logger();
  sub_100004FB8(v0, qword_10000C6E0);
  sub_100004F80(v0, qword_10000C6E0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_10000486C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000048E4(a1, a2, v6);
}

unint64_t sub_1000048E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10000499C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100004A90;

  return v6(v2 + 32);
}

uint64_t sub_100004A90()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

id sub_100004BA4(void *a1, int a2, uint64_t a3)
{
  v7 = type metadata accessor for AlertCoordinatorContext();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v18 = a2;
  v19 = a3;
  [a1 interruptionLevel];
  result = [a1 section];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = result;
  v17 = v7;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  result = [a1 publisherBulletinID];
  if (result)
  {
    v14 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    AlertCoordinatorContext.init(sourceBundleIdentifier:notificationIdentifier:interruptionLevel:shouldPlayLightsAndSirens:)();
    v15 = *(v3 + OBJC_IVAR____TtC18usernotificationsd16BulletinObserver_core);

    dispatch thunk of AlertCoordinatorBulletinObserver.add(_:withReply:)();

    return (*(v8 + 8))(v12, v17);
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_100004D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002EA0(&qword_10000C7C0, &qword_1000062A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000527C(v4, &v16, &qword_10000C7B8, &qword_1000062A0);
      v5 = v16;
      v6 = v17;
      result = sub_10000486C(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

uint64_t (*sub_100004EBC())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return sub_100005054;
}

uint64_t sub_100004F3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100004F80(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004FB8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000501C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000505C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005094()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000050D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005188;

  return sub_100003C84(a1, v4, v5, v6);
}

uint64_t sub_100005188()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000527C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002EA0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000052E4(uint64_t a1)
{
  v2 = sub_100002EA0(&qword_10000C7C8, &qword_1000062B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000534C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005384(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005680;

  return sub_10000499C(a1, v5);
}

uint64_t sub_10000543C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005188;

  return sub_10000499C(a1, v5);
}

unint64_t sub_1000054F4()
{
  result = qword_10000C698;
  if (!qword_10000C698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C698);
  }

  return result;
}

unint64_t sub_100005540()
{
  result = qword_10000C7F0;
  if (!qword_10000C7F0)
  {
    sub_100002EE8(&qword_10000C6A0, &qword_1000061C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C7F0);
  }

  return result;
}

uint64_t sub_1000055A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000055B4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005604(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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