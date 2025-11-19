uint64_t sub_10002AA28(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_10002AB00(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_10002AB30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002AB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002ABDC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10001712C(&qword_100045998, &qword_100036360);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for FeatureState(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_100006CC8(a1, &qword_100045998, &qword_100036360);
    sub_100019AEC(a2, v8);
    sub_100019D24(a2);
    return sub_100006CC8(v8, &qword_100045998, &qword_100036360);
  }

  else
  {
    sub_100019D80(a1, v12);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1000295BC(v12, a2, isUniquelyReferenced_nonNull_native);
    result = sub_100019D24(a2);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_10002AD88(uint64_t a1, uint64_t a2, int a3, __int16 a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v23);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v5 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v19 + 24) = a1;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  *(v19 + 44) = a4;
  aBlock[4] = sub_10002E748;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_1000423D0;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_100001CF0(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v23);
}

uint64_t sub_10002B070(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v19 = *(v7 - 8);
  v20 = v7;
  v8 = *(v19 + 64);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Message();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v18[1] = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  (*(v12 + 16))(v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  (*(v12 + 32))(v15 + v14, v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_10002C064;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_100042380;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_100001CF0(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v6, v3);
  (*(v19 + 8))(v10, v20);
}

uint64_t sub_10002B3F8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = __CocoaSet.contains(_:)();

    return v2 & 1;
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 40);
    Hasher.init(_seed:)();
    v7 = *(a1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid);
    Hasher._combine(_:)(v7);
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    String.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = a2;
    v12 = a2 + 56;
    v13 = -1 << *(a2 + 32);
    v14 = v10 & ~v13;
    if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
    {
      v15 = ~v13;
      v16 = *(v11 + 48);
      v17 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
      do
      {
        v18 = *(v16 + 8 * v14);
        if (*(v18 + v17) == v7)
        {
          v19 = *(v18 + 24) == v8 && *(v18 + 32) == v9;
          if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return 1;
          }

          v17 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
        }

        v14 = (v14 + 1) & v15;
      }

      while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_10002B564(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v60 = a6;
  v57 = a3;
  v58 = a4;
  LODWORD(v56) = a2;
  v10 = type metadata accessor for Keys();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  __chkstk_darwin(v10);
  v53 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  *(v7 + 64) = -1;
  *(v7 + 66) = 0;
  *(v7 + 72) = sub_100005ADC(&_swiftEmptyArrayStorage);
  *(v7 + 80) = 0;
  *(v7 + 88) = &_swiftEmptyArrayStorage;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  static Logger.session.getter();
  *(v7 + OBJC_IVAR____TtC15audioanalyticsd7Session_summaryDecoratorWorkers) = &_swiftEmptyArrayStorage;
  v21 = OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime;
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 56))(v7 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtC15audioanalyticsd7Session_messageHistory;
  *(v7 + v23) = sub_100005CC8(&_swiftEmptyArrayStorage);
  *(v7 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages) = 0;
  *(v7 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique) = 0;
  *(v7 + OBJC_IVAR____TtC15audioanalyticsd7Session_startOnFirstMessageCalled) = 0;
  *(v7 + 16) = a1;
  *(v7 + 48) = v56;
  v24 = v58;
  *(v7 + 32) = v57;
  *(v7 + 40) = v24;
  *(v7 + 56) = a5;
  LOBYTE(v24) = v60;
  *(v7 + 24) = v60;
  v25 = (v24 & 1) == 0;
  v26 = 5;
  if (v25)
  {
    v26 = 1;
  }

  *(v7 + OBJC_IVAR____TtC15audioanalyticsd7Session_stopWaitTime) = v26;
  v27 = sub_100008570();
  v57 = a5;
  v58 = v27;
  aBlock = 0;
  v62 = 0xE000000000000000;

  _StringGuts.grow(_:)(39);

  aBlock = 0xD000000000000025;
  v62 = 0x8000000100037100;
  v56 = a1;
  v67 = a1;
  v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v28);

  static DispatchQoS.userInteractive.getter();
  (*(v15 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v14);
  aBlock = &_swiftEmptyArrayStorage;
  sub_100001CF0(&unk_100045970, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10001712C(&qword_1000453D0, &qword_100035C88);
  sub_100001BC4(&qword_100045980, &qword_1000453D0, &qword_100035C88);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v7 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if ((v60 & 1) == 0)
  {
    goto LABEL_6;
  }

  *(v7 + 64) = 5;
  sub_10001712C(&qword_100045E10, &qword_100036680);
  v29 = (sub_10001712C(&qword_100045400, &unk_100035E10) - 8);
  v30 = *(*v29 + 72);
  v31 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100035FB0;
  v33 = (v32 + v31);
  v34 = (v33 + v29[14]);
  v35 = v53;
  v36 = v54;
  v37 = v55;
  (*(v54 + 104))(v53, enum case for Keys.applicationName(_:), v55);
  v38 = Keys.rawValue.getter();
  v40 = v39;
  (*(v36 + 8))(v35, v37);
  *v33 = v38;
  v33[1] = v40;
  *v34 = 0x6E776F6E6B6E55;
  v34[1] = 0xE700000000000000;
  v41 = enum case for SimpleType.string(_:);
  v42 = type metadata accessor for SimpleType();
  (*(*(v42 - 8) + 104))(v34, v41, v42);
  v43 = sub_100005ADC(v32);
  swift_setDeallocating();
  sub_100006CC8(v33, &qword_100045400, &unk_100035E10);
  swift_deallocClassInstance();
  v44 = *(v7 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  v45 = swift_allocObject();
  *(v45 + 16) = v7;
  *(v45 + 24) = v43;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_10002E868;
  *(v46 + 24) = v45;
  v65 = sub_10000853C;
  v66 = v46;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_100002EB0;
  v64 = &unk_1000425B0;
  v47 = _Block_copy(&aBlock);

  dispatch_sync(v44, v47);
  _Block_release(v47);
  LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

  if (v44)
  {
    __break(1u);
  }

  else
  {
LABEL_6:
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "Created reporting session. { reporterID=%lld }", v51, 0xCu);
    }

    return v7;
  }

  return result;
}

char *sub_10002BD48()
{
  v1 = *(v0 + 5);

  v2 = *(v0 + 7);

  v3 = *(v0 + 9);

  v4 = *(v0 + 10);

  v5 = *(v0 + 11);

  sub_100006CC8((v0 + 96), &qword_100045598, &qword_1000360E0);
  v6 = *(v0 + 17);

  v7 = OBJC_IVAR____TtC15audioanalyticsd7Session_logger;
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);

  v9 = *&v0[OBJC_IVAR____TtC15audioanalyticsd7Session_summaryDecoratorWorkers];

  sub_100006CC8(&v0[OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime], &qword_100045DF0, &qword_100036660);
  v10 = *&v0[OBJC_IVAR____TtC15audioanalyticsd7Session_messageHistory];

  return v0;
}

uint64_t sub_10002BE40()
{
  sub_10002BD48();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10002BEA0()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10002C00C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10002C00C()
{
  if (!qword_100045C50)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100045C50);
    }
  }
}

uint64_t sub_10002C064()
{
  v1 = *(type metadata accessor for Message() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  return sub_100009FD8(v2);
}

char *sub_10002C0C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045DE0, &qword_100036650);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10002C1CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045DE8, &qword_100036658);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10002C2D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045E00, &qword_100036670);
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

void *sub_10002C424(void *result, int64_t a2, char a3, void *a4)
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
    sub_10001712C(&qword_100045DA0, &qword_100036620);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10001712C(&qword_100045BA0, &unk_1000364D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10002C558(uint64_t a1, uint64_t a2)
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

  sub_10001712C(&qword_100045E28, &qword_100036698);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_10002C5E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10001712C(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x6666666666666667) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

char *sub_10002C668(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045D90, &qword_100036610);
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

uint64_t sub_10002C75C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10002C8CC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 4 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 4 * v3);
      v14 = (v12 + 4 * v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for Message() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10002CA9C(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureInfo(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v8 = a1;
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (v8 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = v8;
    v16 = _HashTable.previousHole(before:)();
    v8 = v15;
    v17 = (v16 + 1) & v14;
    v18 = *(v5 + 72);
    v44 = a2 + 64;
    do
    {
      v45 = v8;
      v19 = v18 * v13;
      sub_10002E7FC(*(a2 + 48) + v18 * v13, v10);
      v20 = *(a2 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for SystemMonitorConfig.MonitorType();
      sub_100001CF0(&qword_1000459B0, &type metadata accessor for SystemMonitorConfig.MonitorType);
      dispatch thunk of Hashable.hash(into:)();
      v21 = &v10[v4[5]];
      v22 = *v21;
      v23 = *(v21 + 1);
      String.hash(into:)();
      v24 = &v10[v4[6]];
      v25 = *v24;
      v26 = *(v24 + 1);
      String.hash(into:)();
      v27 = &v10[v4[7]];
      v28 = *v27;
      v29 = *(v27 + 1);
      String.hash(into:)();
      v30 = &v10[v4[8]];
      v31 = *v30;
      v32 = *(v30 + 1);
      String.hash(into:)();
      v33 = v4[9];
      type metadata accessor for SystemMonitorConfig.DataType();
      sub_100001CF0(&qword_1000459B8, &type metadata accessor for SystemMonitorConfig.DataType);
      dispatch thunk of Hashable.hash(into:)();
      v34 = Hasher._finalize()();
      result = sub_100019D24(v10);
      v8 = v45;
      v35 = v34 & v14;
      if (v45 >= v17)
      {
        if (v35 < v17)
        {
          v11 = v44;
          goto LABEL_4;
        }

        if (v45 < v35)
        {
LABEL_3:
          v11 = v44;
          goto LABEL_4;
        }
      }

      else if (v35 < v17 && v45 < v35)
      {
        goto LABEL_3;
      }

      if (v18 * v45 < v19 || *(a2 + 48) + v18 * v45 >= (*(a2 + 48) + v19 + v18))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v18 * v45 != v19)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v36 = *(a2 + 56);
      v37 = *(*(type metadata accessor for FeatureState(0) - 8) + 72);
      v11 = v44;
      v38 = v37 * v45;
      result = v36 + v37 * v45;
      v39 = v37 * v13;
      if (v37 * v45 < (v37 * v13) || result >= v36 + v37 * v13 + v37)
      {
        result = swift_arrayInitWithTakeFrontToBack();
        goto LABEL_21;
      }

      v8 = v13;
      if (v38 != v39)
      {
        result = swift_arrayInitWithTakeBackToFront();
LABEL_21:
        v8 = v13;
      }

LABEL_4:
      v13 = (v13 + 1) & v14;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v8) - 1;
  v40 = *(a2 + 16);
  v41 = __OFSUB__(v40, 1);
  v42 = v40 - 1;
  if (v41)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v42;
    ++*(a2 + 36);
  }

  return result;
}

size_t sub_10002CE80(size_t a1, int64_t a2, char a3)
{
  result = sub_10002CF00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002CEA0(char *a1, int64_t a2, char a3)
{
  result = sub_10002D0D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002CEC0(char *a1, int64_t a2, char a3)
{
  result = sub_10002D1E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002CEE0(char *a1, int64_t a2, char a3)
{
  result = sub_10002D2E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10002CF00(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10001712C(&qword_100045E20, &qword_100036690);
  v10 = *(type metadata accessor for FeatureInfo(0) - 8);
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
  v15 = *(type metadata accessor for FeatureInfo(0) - 8);
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

char *sub_10002D0D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045E00, &qword_100036670);
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

char *sub_10002D1E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045DF8, &qword_100036668);
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

char *sub_10002D2E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001712C(&qword_100045DE8, &qword_100036658);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_10002D3EC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  v130 = a5;
  v116 = a1;
  v129 = type metadata accessor for Config.WorkerConfigs();
  v10 = *(*(v129 - 8) + 64);
  v11 = __chkstk_darwin(v129);
  v128 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v127 = &v113 - v15;
  v16 = a3[1];
  v17 = a3;
  v117 = a3;
  if (v16 < 1)
  {
    v19 = &_swiftEmptyArrayStorage;
LABEL_91:
    v6 = *v116;
    if (!*v116)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_10002E400(v19);
      v19 = result;
    }

    v138 = v19;
    v108 = *(v19 + 2);
    if (v108 >= 2)
    {
      while (1)
      {
        v109 = *v17;
        if (!*v17)
        {
          goto LABEL_127;
        }

        v110 = *&v19[16 * v108];
        v17 = *&v19[16 * v108 + 24];
        v111 = v124;
        sub_10002DE44((v109 + 40 * v110), (v109 + 40 * *&v19[16 * v108 + 16]), (v109 + 40 * v17), v6, a6);
        v124 = v111;
        if (v111)
        {
        }

        if (v17 < v110)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_10002E400(v19);
        }

        if (v108 - 2 >= *(v19 + 2))
        {
          goto LABEL_117;
        }

        v112 = &v19[16 * v108];
        *v112 = v110;
        *(v112 + 1) = v17;
        v138 = v19;
        result = sub_10002E374(v108 - 1);
        v19 = v138;
        v108 = *(v138 + 2);
        v17 = v117;
        if (v108 <= 1)
        {
        }
      }
    }
  }

  v114 = a4;
  v18 = 0;
  v126 = (v14 + 8);
  v19 = &_swiftEmptyArrayStorage;
  v115 = a6;
  while (1)
  {
    v118 = v18;
    if (v18 + 1 >= v16)
    {
      v29 = v18 + 1;
    }

    else
    {
      v123 = v16;
      v20 = v18;
      v21 = *v17;
      sub_10000AE18(*v17 + 40 * (v18 + 1), &v136);
      v119 = 40 * v20;
      v133 = v21 + 40 * v20;
      sub_10000AE18(v133, v134);
      sub_10000AEC8(&v136, v137);
      v22 = v127;
      v23 = dispatch thunk of WorkerProtocol.workerConfig.getter();
      v6 = v130;
      LODWORD(v125) = v130(v23);
      v24 = *v126;
      v25 = v129;
      (*v126)(v22, v129);
      sub_10000AEC8(v134, v135);
      v17 = v128;
      v26 = dispatch thunk of WorkerProtocol.workerConfig.getter();
      LODWORD(v122) = (v6)(v26);
      v120 = v24;
      (v24)(v17, v25);
      sub_10000AE7C(v134);
      result = sub_10000AE7C(&v136);
      v27 = v118 + 2;
      v28 = v133 + 80;
      v121 = v19;
      while (1)
      {
        v29 = v123;
        if (v123 == v27)
        {
          break;
        }

        v133 = v27;
        LODWORD(v132) = v125 < v122;
        sub_10000AE18(v28, &v136);
        sub_10000AE18(v28 - 40, v134);
        sub_10000AEC8(&v136, v137);
        v30 = v127;
        v31 = dispatch thunk of WorkerProtocol.workerConfig.getter();
        v32 = v130;
        LOBYTE(v131) = v130(v31);
        LODWORD(v131) = v131;
        v33 = v30;
        v17 = v129;
        v34 = v120;
        (v120)(v33, v129);
        v6 = v135;
        sub_10000AEC8(v134, v135);
        v35 = v128;
        v36 = dispatch thunk of WorkerProtocol.workerConfig.getter();
        v37 = v32(v36);
        v34(v35, v17);
        sub_10000AE7C(v134);
        result = sub_10000AE7C(&v136);
        v19 = v121;
        v27 = v133 + 1;
        v28 += 40;
        if (((v132 ^ (v131 >= v37)) & 1) == 0)
        {
          v29 = v133;
          break;
        }
      }

      a6 = v115;
      v18 = v118;
      if (v125 >= v122)
      {
        v17 = v117;
      }

      else
      {
        if (v29 < v118)
        {
          goto LABEL_120;
        }

        v17 = v117;
        if (v118 < v29)
        {
          v6 = 40 * v29 - 40;
          v123 = v29;
          v38 = v29;
          v39 = v118;
          v40 = v119;
          do
          {
            if (v39 != --v38)
            {
              v45 = *v17;
              if (!*v17)
              {
                goto LABEL_126;
              }

              v41 = v45 + v40;
              v42 = v45 + v6;
              sub_10000C43C((v45 + v40), &v136);
              v43 = *(v42 + 32);
              v44 = *(v42 + 16);
              *v41 = *v42;
              *(v41 + 16) = v44;
              *(v41 + 32) = v43;
              result = sub_10000C43C(&v136, v42);
              v18 = v118;
            }

            ++v39;
            v6 -= 40;
            v40 += 40;
          }

          while (v39 < v38);
          v29 = v123;
        }
      }
    }

    v46 = *(v17 + 8);
    if (v29 < v46)
    {
      if (__OFSUB__(v29, v18))
      {
        goto LABEL_119;
      }

      if (v29 - v18 < v114)
      {
        if (__OFADD__(v18, v114))
        {
          goto LABEL_121;
        }

        if (v18 + v114 >= v46)
        {
          v47 = *(v17 + 8);
        }

        else
        {
          v47 = v18 + v114;
        }

        if (v47 < v18)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v29 != v47)
        {
          break;
        }
      }
    }

    v48 = v29;
    if (v29 < v18)
    {
      goto LABEL_118;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10002C0C8(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v50 = *(v19 + 2);
    v49 = *(v19 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      result = sub_10002C0C8((v49 > 1), v50 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = v51;
    v52 = &v19[16 * v50];
    *(v52 + 4) = v118;
    *(v52 + 5) = v48;
    v6 = *v116;
    if (!*v116)
    {
      goto LABEL_128;
    }

    v119 = v48;
    if (v50)
    {
      while (1)
      {
        v53 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v54 = *(v19 + 4);
          v55 = *(v19 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_50:
          if (v57)
          {
            goto LABEL_107;
          }

          v70 = &v19[16 * v51];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_110;
          }

          v76 = &v19[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_114;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v51 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v80 = &v19[16 * v51];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_64:
        if (v75)
        {
          goto LABEL_109;
        }

        v83 = &v19[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_112;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_71:
        v91 = v53 - 1;
        if (v53 - 1 >= v51)
        {
          __break(1u);
LABEL_103:
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
          goto LABEL_122;
        }

        if (!*v17)
        {
          goto LABEL_125;
        }

        v92 = *&v19[16 * v91 + 32];
        v93 = *&v19[16 * v53 + 40];
        v94 = v124;
        sub_10002DE44((*v17 + 40 * v92), (*v17 + 40 * *&v19[16 * v53 + 32]), (*v17 + 40 * v93), v6, a6);
        v124 = v94;
        if (v94)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_10002E400(v19);
        }

        if (v91 >= *(v19 + 2))
        {
          goto LABEL_104;
        }

        v95 = &v19[16 * v91];
        *(v95 + 4) = v92;
        *(v95 + 5) = v93;
        v138 = v19;
        result = sub_10002E374(v53);
        v19 = v138;
        v51 = *(v138 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v19[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_105;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_106;
      }

      v65 = &v19[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_108;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_111;
      }

      if (v69 >= v61)
      {
        v87 = &v19[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_115;
        }

        if (v56 < v90)
        {
          v53 = v51 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v16 = *(v17 + 8);
    v18 = v119;
    if (v119 >= v16)
    {
      goto LABEL_91;
    }
  }

  v121 = v19;
  v125 = *v17;
  v6 = v125 + 40 * v29;
  v96 = (v18 - v29);
  v119 = v47;
LABEL_82:
  v123 = v29;
  v120 = v96;
  v97 = v96;
  v122 = v6;
  while (1)
  {
    v131 = v97;
    sub_10000AE18(v6, &v136);
    sub_10000AE18(v6 - 40, v134);
    sub_10000AEC8(&v136, v137);
    v98 = v127;
    v99 = dispatch thunk of WorkerProtocol.workerConfig.getter();
    v100 = v130;
    LOBYTE(v133) = v130(v99);
    LODWORD(v133) = v133;
    v132 = *v126;
    v101 = v129;
    v132(v98, v129);
    sub_10000AEC8(v134, v135);
    v102 = v128;
    v103 = dispatch thunk of WorkerProtocol.workerConfig.getter();
    v104 = v100(v103);
    v132(v102, v101);
    sub_10000AE7C(v134);
    result = sub_10000AE7C(&v136);
    if (v133 >= v104)
    {
LABEL_81:
      v29 = v123 + 1;
      v6 = v122 + 40;
      v96 = v120 - 1;
      v48 = v119;
      if (v123 + 1 != v119)
      {
        goto LABEL_82;
      }

      a6 = v115;
      v17 = v117;
      v19 = v121;
      if (v119 < v118)
      {
        goto LABEL_118;
      }

      goto LABEL_31;
    }

    v105 = v131;
    if (!v125)
    {
      break;
    }

    sub_10000C43C(v6, &v136);
    v106 = *(v6 - 24);
    *v6 = *(v6 - 40);
    *(v6 + 16) = v106;
    *(v6 + 32) = *(v6 - 8);
    sub_10000C43C(&v136, v6 - 40);
    v6 -= 40;
    v107 = __CFADD__(v105, 1);
    v97 = v105 + 1;
    if (v107)
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_10002DE44(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(uint64_t))
{
  v63 = a5;
  v62 = type metadata accessor for Config.WorkerConfigs();
  v9 = *(v62 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v62);
  v61 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v60 = &v53 - v13;
  v14 = (a2 - a1) / 40;
  v15 = (a3 - a2) / 40;
  if (v14 >= v15)
  {
    v64 = a1;
    if (a4 != a2 || &a2[40 * v15] <= a4)
    {
      memmove(a4, a2, 40 * v15);
    }

    v16 = &a4[40 * v15];
    if (a3 - a2 < 40 || a2 <= v64)
    {
      v31 = a2;
    }

    else
    {
      v54 = (v9 + 8);
      v70 = a4;
      do
      {
        v59 = a2;
        v32 = (a2 - 40);
        v33 = (v16 - 40);
        v34 = a3 - 40;
        v55 = v32;
        while (1)
        {
          v65 = (v33 + 40);
          v57 = v34 + 40;
          v58 = v34;
          sub_10000AE18(v33, v68);
          sub_10000AE18(v32, v66);
          sub_10000AEC8(v68, v69);
          v37 = v60;
          v38 = dispatch thunk of WorkerProtocol.workerConfig.getter();
          v39 = v63;
          LOBYTE(v56) = v63(v38);
          v56 = v56;
          v40 = *v54;
          v41 = v37;
          v42 = v62;
          (*v54)(v41, v62);
          sub_10000AEC8(v66, v67);
          v43 = v61;
          v44 = dispatch thunk of WorkerProtocol.workerConfig.getter();
          v45 = v39(v44);
          v40(v43, v42);
          sub_10000AE7C(v66);
          sub_10000AE7C(v68);
          if (v56 < v45)
          {
            break;
          }

          v46 = v58;
          if (v57 != v65)
          {
            v47 = *v33;
            v48 = *(v33 + 16);
            *(v58 + 4) = *(v33 + 32);
            *v46 = v47;
            v46[1] = v48;
          }

          v35 = v33 - 40;
          v34 = v46 - 40;
          a4 = v70;
          v36 = v33 > v70;
          v33 -= 40;
          v32 = v55;
          if (!v36)
          {
            v16 = (v35 + 40);
            v31 = v59;
            goto LABEL_34;
          }
        }

        v16 = v65;
        a3 = v58;
        v31 = v55;
        if (v57 != v59)
        {
          v49 = *v55;
          v50 = *(v55 + 1);
          *(v58 + 4) = *(v55 + 4);
          *a3 = v49;
          *(a3 + 1) = v50;
        }

        a4 = v70;
        if (v16 <= v70)
        {
          break;
        }

        a2 = v31;
      }

      while (v31 > v64);
      v16 = (v33 + 40);
    }
  }

  else
  {
    if (a4 != a1 || &a1[40 * v14] <= a4)
    {
      memmove(a4, a1, 40 * v14);
    }

    v16 = &a4[40 * v14];
    if (a2 - a1 >= 40)
    {
      v17 = a2;
      if (a2 < a3)
      {
        v57 = (v9 + 8);
        v65 = &a4[40 * v14];
        while (1)
        {
          v70 = a4;
          v59 = v17;
          v64 = a1;
          sub_10000AE18(v17, v68);
          sub_10000AE18(a4, v66);
          sub_10000AEC8(v68, v69);
          v18 = v60;
          v19 = dispatch thunk of WorkerProtocol.workerConfig.getter();
          v20 = v63;
          LOBYTE(v58) = v63(v19);
          LODWORD(v58) = v58;
          v21 = *v57;
          v22 = v18;
          v23 = v62;
          (*v57)(v22, v62);
          sub_10000AEC8(v66, v67);
          v24 = v61;
          v25 = dispatch thunk of WorkerProtocol.workerConfig.getter();
          v26 = v20(v25);
          v21(v24, v23);
          sub_10000AE7C(v66);
          sub_10000AE7C(v68);
          if (v58 >= v26)
          {
            break;
          }

          v27 = v59;
          v17 = (v59 + 40);
          v28 = v64;
          a4 = v70;
          v16 = v65;
          if (v64 != v59)
          {
            goto LABEL_12;
          }

LABEL_13:
          a1 = v28 + 40;
          if (a4 >= v16 || v17 >= a3)
          {
            goto LABEL_15;
          }
        }

        v27 = v70;
        a4 = v70 + 40;
        v28 = v64;
        v17 = v59;
        v16 = v65;
        if (v64 == v70)
        {
          goto LABEL_13;
        }

LABEL_12:
        v29 = *v27;
        v30 = *(v27 + 1);
        *(v28 + 4) = *(v27 + 4);
        *v28 = v29;
        *(v28 + 1) = v30;
        goto LABEL_13;
      }
    }

LABEL_15:
    v31 = a1;
  }

LABEL_34:
  v51 = (v16 - a4) / 40;
  if (v31 != a4 || v31 >= &a4[40 * v51])
  {
    memmove(v31, a4, 40 * v51);
  }

  return 1;
}

uint64_t sub_10002E374(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002E400(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t *sub_10002E414(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_10000D100(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10002E50C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a1 + 24);
  v8 = *(*a1 + 48);
  v9 = *(*a1 + 52);
  v10 = swift_allocObject();

  sub_10002B564(v2, v3, v4, v5, v6, v7);
  swift_beginAccess();
  v11 = *(a1 + 72);
  v12 = *(v10 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100009FD0;
  *(v14 + 24) = v13;
  aBlock[4] = sub_10000853C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002EB0;
  aBlock[3] = &unk_100042538;
  v15 = _Block_copy(aBlock);
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    if (*(a1 + 80))
    {
      v17 = *(a1 + 80);

      sub_10000B6EC(v18);
    }

    return v10;
  }

  return result;
}

uint64_t sub_10002E748()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 44);
  v5 = *(v0 + 16);
  sub_100015070();
  sub_1000280B4(v1, v2, v3, v4);
}

uint64_t sub_10002E7BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002E7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10002E88C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002E900()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10002E944()
{
  v1 = 0x735F6C616E676973;
  if (*v0 != 1)
  {
    v1 = 1886352499;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

__n128 sub_10002E99C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10002E9B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002EA00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionMethod(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SessionMethod(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002EBD4()
{
  result = qword_100045E30;
  if (!qword_100045E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045E30);
  }

  return result;
}

unint64_t *SystemMonitor.currentMessageContents.getter()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sub_100010128((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_10002ECE4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static SystemMonitor.shared = v1;
}

uint64_t sub_10002ED48()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SystemMonitor.shutdown()", v4, 2u);
  }

  v5 = *(v1 + 16);

  os_unfair_lock_lock((v5 + 24));
  sub_10003338C((v5 + 16));
  os_unfair_lock_unlock((v5 + 24));
}

void sub_10002EE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v151 = a5;
  v153 = a4;
  v5 = sub_10001712C(&qword_100045480, &qword_100035FD8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v142 = &v129 - v7;
  v144 = type metadata accessor for Message();
  v143 = *(v144 - 8);
  v8 = *(v143 + 64);
  __chkstk_darwin(v144);
  v141 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_10001712C(&qword_100046060, &qword_100036878);
  v10 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v146 = &v129 - v11;
  v148 = type metadata accessor for FeatureInfo(0);
  v12 = *(*(v148 - 8) + 64);
  v13 = __chkstk_darwin(v148);
  v14 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v147 = &v129 - v15;
  v16 = sub_10001712C(&qword_100045998, &qword_100036360);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v138 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v137 = &v129 - v21;
  v22 = __chkstk_darwin(v20);
  v149 = &v129 - v23;
  v24 = __chkstk_darwin(v22);
  v150 = &v129 - v25;
  __chkstk_darwin(v24);
  v27 = &v129 - v26;
  v154 = type metadata accessor for FeatureState(0);
  v28 = *(v154 - 8);
  v29 = v28[8];
  v30 = __chkstk_darwin(v154);
  v136 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v135 = &v129 - v33;
  v34 = __chkstk_darwin(v32);
  v140 = &v129 - v35;
  v36 = __chkstk_darwin(v34);
  v139 = &v129 - v37;
  v38 = __chkstk_darwin(v36);
  v134 = &v129 - v39;
  __chkstk_darwin(v38);
  v152 = &v129 - v40;
  v41 = type metadata accessor for Logger();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = __chkstk_darwin(v41);
  v46 = &v129 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v48 = &v129 - v47;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v50 = Strong;
    swift_beginAccess();
    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      v53 = v151;
      swift_beginAccess();
      v54 = v53[4];
      LOBYTE(v155) = 0;
      v55 = v153;
      sub_100030040(v153, v54, v27);
      v56 = v154;
      v151 = v28[6];
      if ((v151)(v27, 1, v154) == 1)
      {
        sub_100006CC8(v27, &qword_100045998, &qword_100036360);
        sub_1000108FC(v55, v14, type metadata accessor for FeatureInfo);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v155 = v60;
          *v59 = 136380675;
          v61 = &v14[*(v148 + 28)];
          v62 = *v61;
          v63 = v61[1];

          sub_10003332C(v14, type metadata accessor for FeatureInfo);
          v64 = sub_100013120(v62, v63, &v155);

          *(v59 + 4) = v64;
          _os_log_impl(&_mh_execute_header, v57, v58, "No value found, even though we received a notification! { notification=%{private}s }", v59, 0xCu);
          sub_10000AE7C(v60);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          sub_10003332C(v14, type metadata accessor for FeatureInfo);
        }

        return;
      }

      v133 = v52;
      v71 = v152;
      sub_100010D10(v27, v152, type metadata accessor for FeatureState);
      v72 = v71;
      v73 = v150;
      sub_1000108FC(v72, v150, type metadata accessor for FeatureState);
      v74 = v28[7];
      v131 = v28 + 7;
      v130 = v74;
      v74(v73, 0, 1, v56);
      v75 = v73;
      v132 = v50;
      v76 = *(v50 + 16);
      v77 = v55;
      v78 = v147;
      v79 = sub_1000108FC(v77, v147, type metadata accessor for FeatureInfo);
      __chkstk_darwin(v79);
      sub_100010D10(v78, &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureInfo);
      swift_getKeyPath();
      v80 = v154;

      v81 = v149;
      OSAllocatedUnfairLock<A>.load<A>(_:)();

      v82 = v146;
      v83 = *(v145 + 48);
      sub_10000C454(v73, v146, &qword_100045998, &qword_100036360);
      v84 = v82;
      sub_10000C454(v81, v82 + v83, &qword_100045998, &qword_100036360);
      if ((v151)(v82, 1, v80) == 1)
      {
        sub_100006CC8(v81, &qword_100045998, &qword_100036360);
        sub_100006CC8(v75, &qword_100045998, &qword_100036360);
        v85 = (v151)(v82 + v83, 1, v80);
        v86 = v152;
        v87 = v132;
        v88 = v80;
        if (v85 == 1)
        {
          sub_100006CC8(v84, &qword_100045998, &qword_100036360);
          goto LABEL_25;
        }
      }

      else
      {
        v89 = v82;
        v90 = v137;
        sub_10000C454(v89, v137, &qword_100045998, &qword_100036360);
        v88 = v80;
        if ((v151)(v84 + v83, 1, v80) != 1)
        {
          v112 = v134;
          sub_100010D10(v84 + v83, v134, type metadata accessor for FeatureState);
          v113 = v84;
          v114 = sub_100032FC0(v90, v112);
          sub_10003332C(v112, type metadata accessor for FeatureState);
          sub_100006CC8(v149, &qword_100045998, &qword_100036360);
          sub_100006CC8(v150, &qword_100045998, &qword_100036360);
          sub_10003332C(v90, type metadata accessor for FeatureState);
          sub_100006CC8(v113, &qword_100045998, &qword_100036360);
          v86 = v152;
          v91 = v153;
          v87 = v132;
          if (v114)
          {
LABEL_25:
            v115 = v135;
            sub_1000108FC(v86, v135, type metadata accessor for FeatureState);
            v116 = v136;
            sub_1000108FC(v86, v136, type metadata accessor for FeatureState);
            v117 = Logger.logObject.getter();
            v118 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v117, v118))
            {
              v119 = swift_slowAlloc();
              v155 = swift_slowAlloc();
              *v119 = 136380931;
              v120 = (v115 + *(v148 + 20));
              v121 = *v120;
              v122 = v120[1];

              sub_10003332C(v115, type metadata accessor for FeatureState);
              v123 = sub_100013120(v121, v122, &v155);

              *(v119 + 4) = v123;
              *(v119 + 12) = 2081;
              v124 = *(v88 + 20);
              type metadata accessor for SimpleType();
              sub_100033264(&qword_100046068, &type metadata accessor for SimpleType);
              v125 = dispatch thunk of CustomStringConvertible.description.getter();
              v127 = v126;
              sub_10003332C(v116, type metadata accessor for FeatureState);
              v128 = sub_100013120(v125, v127, &v155);

              *(v119 + 14) = v128;
              _os_log_impl(&_mh_execute_header, v117, v118, "Value did not change. { feature=%{private}s, value=%{private}s }", v119, 0x16u);
              swift_arrayDestroy();

              swift_unknownObjectRelease();

              sub_10003332C(v152, type metadata accessor for FeatureState);
            }

            else
            {
              swift_unknownObjectRelease();

              sub_10003332C(v116, type metadata accessor for FeatureState);
              sub_10003332C(v115, type metadata accessor for FeatureState);
              sub_10003332C(v86, type metadata accessor for FeatureState);
            }

            return;
          }

          goto LABEL_20;
        }

        sub_100006CC8(v149, &qword_100045998, &qword_100036360);
        sub_100006CC8(v150, &qword_100045998, &qword_100036360);
        sub_10003332C(v90, type metadata accessor for FeatureState);
        v86 = v152;
        v87 = v132;
      }

      sub_100006CC8(v84, &qword_100046060, &qword_100036878);
      v91 = v153;
LABEL_20:
      v92 = *(v87 + 16);
      v93 = sub_1000108FC(v91, v78, type metadata accessor for FeatureInfo);
      __chkstk_darwin(v93);
      sub_100010D10(v78, &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureInfo);
      swift_getKeyPath();
      v94 = v138;
      sub_1000108FC(v86, v138, type metadata accessor for FeatureState);
      v130(v94, 0, 1, v88);

      OSAllocatedUnfairLock<A>.assign<A>(_:newValue:)();

      sub_100006CC8(v94, &qword_100045998, &qword_100036360);
      v95 = v139;
      sub_1000108FC(v86, v139, type metadata accessor for FeatureState);
      v96 = v140;
      sub_1000108FC(v86, v140, type metadata accessor for FeatureState);
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *v99 = 136380931;
        v100 = (v95 + *(v148 + 20));
        v101 = *v100;
        v102 = v100[1];

        sub_10003332C(v95, type metadata accessor for FeatureState);
        v103 = sub_100013120(v101, v102, &v155);

        *(v99 + 4) = v103;
        *(v99 + 12) = 2081;
        v104 = *(v88 + 20);
        type metadata accessor for SimpleType();
        sub_100033264(&qword_100046068, &type metadata accessor for SimpleType);
        v105 = dispatch thunk of CustomStringConvertible.description.getter();
        v107 = v106;
        sub_10003332C(v96, type metadata accessor for FeatureState);
        v108 = sub_100013120(v105, v107, &v155);
        v86 = v152;

        *(v99 + 14) = v108;
        _os_log_impl(&_mh_execute_header, v97, v98, "Broadcasting new value. { feature=%{private}s, value=%{private}s }", v99, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10003332C(v96, type metadata accessor for FeatureState);
        sub_10003332C(v95, type metadata accessor for FeatureState);
      }

      v109 = *(v87 + 16);

      os_unfair_lock_lock((v109 + 24));
      sub_100010128((v109 + 16), &v155);
      os_unfair_lock_unlock((v109 + 24));

      v110 = type metadata accessor for Message.Metadata();
      (*(*(v110 - 8) + 56))(v142, 1, 1, v110);
      v111 = v141;
      Message.init(category:type:content:metadata:)();
      sub_10002101C(v111);

      swift_unknownObjectRelease();
      (*(v143 + 8))(v111, v144);
      sub_10003332C(v86, type metadata accessor for FeatureState);
      return;
    }

    static Logger.service.getter();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Somehow Server no longer exists!", v70, 2u);
    }

    (*(v42 + 8))(v46, v41);
  }

  else
  {
    static Logger.service.getter();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Somehow SystemMonitor no longer exists!", v67, 2u);
    }

    (*(v42 + 8))(v48, v41);
  }
}

uint64_t sub_100030040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v141 = a2;
  v144 = a3;
  v4 = type metadata accessor for FeatureInfo(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = __chkstk_darwin(v4);
  v138 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v140 = &v137 - v8;
  v9 = type metadata accessor for SimpleType();
  v142 = *(v9 - 8);
  v143 = v9;
  v10 = *(v142 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = (&v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v11);
  v139 = (&v137 - v15);
  __chkstk_darwin(v14);
  v17 = (&v137 - v16);
  v18 = type metadata accessor for SystemMonitorConfig.DataType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SystemMonitorConfig.MonitorType();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, a1, v23);
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 == enum case for SystemMonitorConfig.MonitorType.defaults(_:))
  {
    (*(v19 + 16))(v22, a1 + v4[9], v18);
    v29 = (*(v19 + 88))(v22, v18);
    if (v29 == enum case for SystemMonitorConfig.DataType.string(_:))
    {
      v30 = v4[6];
      v31 = (a1 + v4[5]);
      v32 = *v31;
      v33 = v31[1];
      v34 = *(a1 + v30);
      v35 = *(a1 + v30 + 8);
      default argument 2 of static DefaultsUtilities.get<A>(key:applicationID:userName:)();
      static DefaultsUtilities.get<A>(key:applicationID:userName:)();

      v36 = v147;
      if (v147)
      {
        v37 = state64;
        v38 = v144;
        sub_1000108FC(a1, v144, type metadata accessor for FeatureInfo);
        v39 = type metadata accessor for FeatureState(0);
        v40 = (v38 + *(v39 + 20));
        *v40 = v37;
        v40[1] = v36;
        (*(v142 + 104))();
        *(v38 + *(v39 + 24)) = -1;
        v41 = *(*(v39 - 8) + 56);
        v42 = v38;
        return v41(v42, 0, 1, v39);
      }

LABEL_31:
      v65 = v144;
      sub_1000108FC(a1, v144, type metadata accessor for FeatureInfo);
      v66 = type metadata accessor for FeatureState(0);
      v67 = (v65 + *(v66 + 20));
      v68 = (a1 + v4[8]);
      v69 = v68[1];
      *v67 = *v68;
      v67[1] = v69;
      (*(v142 + 104))();
      *(v65 + *(v66 + 24)) = -1;
      (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    }

    if (v29 == enum case for SystemMonitorConfig.DataType.int(_:))
    {
      v46 = v4[6];
      v47 = (a1 + v4[5]);
      v48 = *v47;
      v49 = v47[1];
      v50 = *(a1 + v46);
      v51 = *(a1 + v46 + 8);
      default argument 2 of static DefaultsUtilities.get<A>(key:applicationID:userName:)();
      static DefaultsUtilities.get<A>(key:applicationID:userName:)();

      if (v147)
      {
        v52 = v140;
        sub_1000108FC(a1, v140, type metadata accessor for FeatureInfo);
        v53 = (a1 + v4[8]);
        v55 = *v53;
        v54 = v53[1];
        v56 = HIBYTE(v54) & 0xF;
        v57 = v55 & 0xFFFFFFFFFFFFLL;
        if ((v54 & 0x2000000000000000) != 0)
        {
          v58 = HIBYTE(v54) & 0xF;
        }

        else
        {
          v58 = v55 & 0xFFFFFFFFFFFFLL;
        }

        if (!v58)
        {
          goto LABEL_97;
        }

        if ((v54 & 0x1000000000000000) != 0)
        {

          v61 = sub_100031F78(v55, v54, 10);
          v136 = v135;

          if ((v136 & 1) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        }

        if ((v54 & 0x2000000000000000) != 0)
        {
          state64 = v55;
          v147 = v54 & 0xFFFFFFFFFFFFFFLL;
          if (v55 == 43)
          {
            if (v56)
            {
              if (--v56)
              {
                v61 = 0;
                v124 = &state64 + 1;
                while (1)
                {
                  v125 = *v124 - 48;
                  if (v125 > 9)
                  {
                    break;
                  }

                  v126 = 10 * v61;
                  if ((v61 * 10) >> 64 != (10 * v61) >> 63)
                  {
                    break;
                  }

                  v61 = v126 + v125;
                  if (__OFADD__(v126, v125))
                  {
                    break;
                  }

                  ++v124;
                  if (!--v56)
                  {
                    goto LABEL_96;
                  }
                }
              }

              goto LABEL_95;
            }

LABEL_108:
            __break(1u);
          }

          if (v55 != 45)
          {
            if (v56)
            {
              v61 = 0;
              p_state64 = &state64;
              while (1)
              {
                v130 = *p_state64 - 48;
                if (v130 > 9)
                {
                  break;
                }

                v131 = 10 * v61;
                if ((v61 * 10) >> 64 != (10 * v61) >> 63)
                {
                  break;
                }

                v61 = v131 + v130;
                if (__OFADD__(v131, v130))
                {
                  break;
                }

                p_state64 = (p_state64 + 1);
                if (!--v56)
                {
                  goto LABEL_96;
                }
              }
            }

            goto LABEL_95;
          }

          if (v56)
          {
            if (--v56)
            {
              v61 = 0;
              v118 = &state64 + 1;
              while (1)
              {
                v119 = *v118 - 48;
                if (v119 > 9)
                {
                  break;
                }

                v120 = 10 * v61;
                if ((v61 * 10) >> 64 != (10 * v61) >> 63)
                {
                  break;
                }

                v61 = v120 - v119;
                if (__OFSUB__(v120, v119))
                {
                  break;
                }

                ++v118;
                if (!--v56)
                {
                  goto LABEL_96;
                }
              }
            }

            goto LABEL_95;
          }
        }

        else
        {
          if ((v55 & 0x1000000000000000) != 0)
          {
            v59 = ((v54 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v59 = _StringObject.sharedUTF8.getter();
          }

          v60 = *v59;
          if (v60 == 43)
          {
            if (v57 >= 1)
            {
              v56 = v57 - 1;
              if (v57 != 1)
              {
                v61 = 0;
                if (v59)
                {
                  v121 = v59 + 1;
                  while (1)
                  {
                    v122 = *v121 - 48;
                    if (v122 > 9)
                    {
                      goto LABEL_95;
                    }

                    v123 = 10 * v61;
                    if ((v61 * 10) >> 64 != (10 * v61) >> 63)
                    {
                      goto LABEL_95;
                    }

                    v61 = v123 + v122;
                    if (__OFADD__(v123, v122))
                    {
                      goto LABEL_95;
                    }

                    ++v121;
                    if (!--v56)
                    {
                      goto LABEL_96;
                    }
                  }
                }

                goto LABEL_87;
              }

              goto LABEL_95;
            }

            goto LABEL_107;
          }

          if (v60 != 45)
          {
            if (v57)
            {
              v61 = 0;
              if (v59)
              {
                while (1)
                {
                  v127 = *v59 - 48;
                  if (v127 > 9)
                  {
                    goto LABEL_95;
                  }

                  v128 = 10 * v61;
                  if ((v61 * 10) >> 64 != (10 * v61) >> 63)
                  {
                    goto LABEL_95;
                  }

                  v61 = v128 + v127;
                  if (__OFADD__(v128, v127))
                  {
                    goto LABEL_95;
                  }

                  ++v59;
                  if (!--v57)
                  {
                    goto LABEL_87;
                  }
                }
              }

              goto LABEL_87;
            }

LABEL_95:
            v61 = 0;
            LOBYTE(v56) = 1;
LABEL_96:
            v145 = v56;
            if ((v56 & 1) == 0)
            {
LABEL_98:
              v132 = v139;
              *v139 = v61;
              v134 = v142;
              v133 = v143;
              (*(v142 + 104))(v132, enum case for SimpleType.int(_:), v143);
              v44 = v144;
              sub_100010D10(v52, v144, type metadata accessor for FeatureInfo);
              v39 = type metadata accessor for FeatureState(0);
              (*(v134 + 32))(v44 + *(v39 + 20), v132, v133);
              goto LABEL_99;
            }

LABEL_97:
            v61 = 0;
            goto LABEL_98;
          }

          if (v57 >= 1)
          {
            v56 = v57 - 1;
            if (v57 != 1)
            {
              v61 = 0;
              if (v59)
              {
                v62 = v59 + 1;
                while (1)
                {
                  v63 = *v62 - 48;
                  if (v63 > 9)
                  {
                    goto LABEL_95;
                  }

                  v64 = 10 * v61;
                  if ((v61 * 10) >> 64 != (10 * v61) >> 63)
                  {
                    goto LABEL_95;
                  }

                  v61 = v64 - v63;
                  if (__OFSUB__(v64, v63))
                  {
                    goto LABEL_95;
                  }

                  ++v62;
                  if (!--v56)
                  {
                    goto LABEL_96;
                  }
                }
              }

LABEL_87:
              LOBYTE(v56) = 0;
              goto LABEL_96;
            }

            goto LABEL_95;
          }

          __break(1u);
        }

        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v94 = state64;
      v89 = v144;
      sub_1000108FC(a1, v144, type metadata accessor for FeatureInfo);
      v39 = type metadata accessor for FeatureState(0);
      v95 = *(v39 + 20);
      *(v89 + v95) = v94;
      v96 = &enum case for SimpleType.int(_:);
      goto LABEL_44;
    }

    if (v29 == enum case for SystemMonitorConfig.DataType.double(_:))
    {
      v75 = v4[6];
      v76 = (a1 + v4[5]);
      v77 = *v76;
      v78 = v76[1];
      v79 = *(a1 + v75);
      v80 = *(a1 + v75 + 8);
      default argument 2 of static DefaultsUtilities.get<A>(key:applicationID:userName:)();
      static DefaultsUtilities.get<A>(key:applicationID:userName:)();

      if ((v147 & 1) == 0)
      {
        v112 = state64;
        v44 = v144;
        sub_1000108FC(a1, v144, type metadata accessor for FeatureInfo);
        v39 = type metadata accessor for FeatureState(0);
        v113 = *(v39 + 20);
        *(v44 + v113) = v112;
        (*(v142 + 104))(v44 + v113, enum case for SimpleType.double(_:), v143);
LABEL_99:
        *(v44 + *(v39 + 24)) = -1;
        goto LABEL_100;
      }

      v81 = v138;
      sub_1000108FC(a1, v138, type metadata accessor for FeatureInfo);
      v82 = (a1 + v4[8]);
      v83 = *v82;
      v84 = v82[1];
      state64 = 0;
      v85 = sub_100032978(v83, v84);
      v86 = *&state64;
      if (!v85)
      {
        v86 = 0.0;
      }

      *v13 = v86;
      v88 = v142;
      v87 = v143;
      (*(v142 + 104))(v13, enum case for SimpleType.double(_:), v143);
      v89 = v144;
      sub_100010D10(v81, v144, type metadata accessor for FeatureInfo);
      v39 = type metadata accessor for FeatureState(0);
      (*(v88 + 32))(v89 + *(v39 + 20), v13, v87);
LABEL_45:
      *(v89 + *(v39 + 24)) = -1;
      v41 = *(*(v39 - 8) + 56);
      v42 = v89;
      return v41(v42, 0, 1, v39);
    }

    if (v29 == enum case for SystemMonitorConfig.DataType.BOOL(_:))
    {
      v97 = v4[6];
      v98 = (a1 + v4[5]);
      v99 = *v98;
      v100 = v98[1];
      v101 = *(a1 + v97);
      v102 = *(a1 + v97 + 8);
      default argument 2 of static DefaultsUtilities.get<A>(key:applicationID:userName:)();
      static DefaultsUtilities.get<A>(key:applicationID:userName:)();

      v103 = state64;
      if (state64 == 2)
      {
        v104 = (a1 + v4[8]);
        v105 = v104[1];
        *v17 = *v104;
        v17[1] = v105;
        v107 = v142;
        v106 = v143;
        v108 = *(v142 + 104);
        v108(v17, enum case for SimpleType.string(_:), v143);
        v109 = v144;
        sub_1000108FC(a1, v144, type metadata accessor for FeatureInfo);
        v110 = type metadata accessor for FeatureState(0);
        v111 = *(v110 + 20);

        LOBYTE(v105) = SimpleType.isTrue()();
        (*(v107 + 8))(v17, v106);
        *(v109 + v111) = v105 & 1;
        v108((v109 + v111), enum case for SimpleType.BOOL(_:), v106);
        *(v109 + *(v110 + 24)) = -1;
        return (*(*(v110 - 8) + 56))(v109, 0, 1, v110);
      }

      v89 = v144;
      sub_1000108FC(a1, v144, type metadata accessor for FeatureInfo);
      v39 = type metadata accessor for FeatureState(0);
      v95 = *(v39 + 20);
      *(v89 + v95) = v103 & 1;
      v96 = &enum case for SimpleType.BOOL(_:);
LABEL_44:
      (*(v142 + 104))(v89 + v95, *v96, v143);
      goto LABEL_45;
    }

    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "Unknown featureInfo dataType received.", v116, 2u);
    }

    v117 = type metadata accessor for FeatureState(0);
    (*(*(v117 - 8) + 56))(v144, 1, 1, v117);
    return (*(v19 + 8))(v22, v18);
  }

  else if (v28 == enum case for SystemMonitorConfig.MonitorType.notify(_:))
  {
    v43 = v141;
    if ((v141 & 0x100000000) == 0)
    {
      state64 = 0;
      if (notify_get_state(v141, &state64))
      {
        goto LABEL_31;
      }

      v44 = v144;
      sub_1000108FC(a1, v144, type metadata accessor for FeatureInfo);
      v39 = type metadata accessor for FeatureState(0);
      v45 = *(v39 + 20);
      *(v44 + v45) = state64 == 1;
      (*(v142 + 104))(v44 + v45, enum case for SimpleType.BOOL(_:), v143);
      *(v44 + *(v39 + 24)) = v43;
LABEL_100:
      v41 = *(*(v39 - 8) + 56);
      v42 = v44;
      return v41(v42, 0, 1, v39);
    }

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "cachedToken is nil.", v73, 2u);
    }

    v74 = type metadata accessor for FeatureState(0);
    return (*(*(v74 - 8) + 56))(v144, 1, 1, v74);
  }

  else
  {
    if (v28 == enum case for SystemMonitorConfig.MonitorType.other(_:))
    {
      goto LABEL_31;
    }

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "Unknown featureInfo monitorType received.", v92, 2u);
    }

    v93 = type metadata accessor for FeatureState(0);
    (*(*(v93 - 8) + 56))(v144, 1, 1, v93);
    return (*(v24 + 8))(v27, v23);
  }
}

uint64_t SystemMonitor.currentMessage.getter()
{
  v1 = sub_10001712C(&qword_100045480, &qword_100035FD8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  v5 = *(v0 + 16);

  os_unfair_lock_lock((v5 + 24));
  sub_100010128((v5 + 16), &v9);
  os_unfair_lock_unlock((v5 + 24));

  v6 = type metadata accessor for Message.Metadata();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  return Message.init(category:type:content:metadata:)();
}

uint64_t sub_100031164(void *a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for FeatureState(0);
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v27 - v9;
  __chkstk_darwin(v8);
  v31 = &v27 - v11;
  v27 = a1;
  v12 = *a1;
  v13 = *a1 + 64;
  v14 = 1 << *(*a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(*a1 + 64);
  v30 = OBJC_IVAR____TtC15audioanalyticsd13SystemMonitor_logger;
  v17 = (v14 + 63) >> 6;
  v35 = v12;

  v19 = 0;
  *&v20 = 67240192;
  v28 = v20;
  v29 = v3;
  v32 = v10;
  while (v16)
  {
LABEL_11:
    v22 = v31;
    sub_1000108FC(*(v35 + 56) + *(v33 + 72) * (__clz(__rbit64(v16)) | (v19 << 6)), v31, type metadata accessor for FeatureState);
    sub_100010D10(v22, v10, type metadata accessor for FeatureState);
    sub_1000108FC(v10, v7, type metadata accessor for FeatureState);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = v28;
      v26 = *&v7[*(v3 + 24)];
      sub_10003332C(v7, type metadata accessor for FeatureState);
      *(v25 + 4) = v26;
      v3 = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "notify_cancel(%{public}d)", v25, 8u);
    }

    else
    {
      sub_10003332C(v7, type metadata accessor for FeatureState);
    }

    v16 &= v16 - 1;

    v10 = v32;
    notify_cancel(*&v32[*(v3 + 24)]);
    result = sub_10003332C(v10, type metadata accessor for FeatureState);
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {

      *v27 = &_swiftEmptyDictionarySingleton;
      return result;
    }

    v16 = *(v13 + 8 * v21);
    ++v19;
    if (v16)
    {
      v19 = v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100031484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for SystemMonitorConfig();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v47 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v43[-v8];
  v10 = type metadata accessor for Logger();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  __chkstk_darwin(v10);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.service.getter();
  v14 = *(v4 + 16);
  v49 = a1;
  v14(v9, a1, v3);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v46 = v10;
    v18 = v17;
    v45 = swift_slowAlloc();
    v51 = v45;
    *v18 = 136380675;
    v44 = v16;
    v14(v47, v9, v3);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    (*(v4 + 8))(v9, v3);
    v22 = sub_100013120(v19, v21, &v51);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v44, "SystemMonitor.buildFeatureInfos. { config=%{private}s }", v18, 0xCu);
    sub_10000AE7C(v45);

    (*(v48 + 8))(v13, v46);
  }

  else
  {

    (*(v4 + 8))(v9, v3);
    (*(v48 + 8))(v13, v10);
  }

  v23 = v50;
  SystemMonitorConfig.monitorType.getter();
  v24 = SystemMonitorConfig.name.getter();
  v47 = v25;
  v48 = v24;
  v26 = SystemMonitorConfig.domain.getter();
  v28 = v27;
  v29 = SystemMonitorConfig.notification.getter();
  v31 = v30;
  v32 = SystemMonitorConfig.defaultValue.getter();
  v34 = v33;
  v35 = type metadata accessor for FeatureInfo(0);
  v36 = v23 + v35[9];
  result = SystemMonitorConfig.dataType.getter();
  v38 = (v23 + v35[5]);
  v39 = v47;
  *v38 = v48;
  v38[1] = v39;
  v40 = (v23 + v35[6]);
  *v40 = v26;
  v40[1] = v28;
  v41 = (v23 + v35[7]);
  *v41 = v29;
  v41[1] = v31;
  v42 = (v23 + v35[8]);
  *v42 = v32;
  v42[1] = v34;
  return result;
}

uint64_t SystemMonitor.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = OBJC_IVAR____TtC15audioanalyticsd13SystemMonitor_logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t SystemMonitor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = OBJC_IVAR____TtC15audioanalyticsd13SystemMonitor_logger;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100031960()
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

uint64_t sub_100031A44()
{
  result = type metadata accessor for FeatureInfo(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SimpleType();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100031AF8()
{
  result = type metadata accessor for SystemMonitorConfig.MonitorType();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SystemMonitorConfig.DataType();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

Swift::Int sub_100031B90(int *a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for SystemMonitorConfig.MonitorType();
  sub_100033264(&qword_1000459B0, &type metadata accessor for SystemMonitorConfig.MonitorType);
  dispatch thunk of Hashable.hash(into:)();
  v3 = (v1 + a1[5]);
  v4 = *v3;
  v5 = v3[1];
  String.hash(into:)();
  v6 = (v1 + a1[6]);
  v7 = *v6;
  v8 = v6[1];
  String.hash(into:)();
  v9 = (v1 + a1[7]);
  v10 = *v9;
  v11 = v9[1];
  String.hash(into:)();
  v12 = (v1 + a1[8]);
  v13 = *v12;
  v14 = v12[1];
  String.hash(into:)();
  v15 = a1[9];
  type metadata accessor for SystemMonitorConfig.DataType();
  sub_100033264(&qword_1000459B8, &type metadata accessor for SystemMonitorConfig.DataType);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100031CCC(uint64_t a1, int *a2)
{
  type metadata accessor for SystemMonitorConfig.MonitorType();
  sub_100033264(&qword_1000459B0, &type metadata accessor for SystemMonitorConfig.MonitorType);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  String.hash(into:)();
  v7 = (v2 + a2[6]);
  v8 = *v7;
  v9 = v7[1];
  String.hash(into:)();
  v10 = (v2 + a2[7]);
  v11 = *v10;
  v12 = v10[1];
  String.hash(into:)();
  v13 = (v2 + a2[8]);
  v14 = *v13;
  v15 = v13[1];
  String.hash(into:)();
  v16 = a2[9];
  type metadata accessor for SystemMonitorConfig.DataType();
  sub_100033264(&qword_1000459B8, &type metadata accessor for SystemMonitorConfig.DataType);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100031DF0(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for SystemMonitorConfig.MonitorType();
  sub_100033264(&qword_1000459B0, &type metadata accessor for SystemMonitorConfig.MonitorType);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  String.hash(into:)();
  v7 = (v2 + a2[6]);
  v8 = *v7;
  v9 = v7[1];
  String.hash(into:)();
  v10 = (v2 + a2[7]);
  v11 = *v10;
  v12 = v10[1];
  String.hash(into:)();
  v13 = (v2 + a2[8]);
  v14 = *v13;
  v15 = v13[1];
  String.hash(into:)();
  v16 = a2[9];
  type metadata accessor for SystemMonitorConfig.DataType();
  sub_100033264(&qword_1000459B8, &type metadata accessor for SystemMonitorConfig.DataType);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unsigned __int8 *sub_100031F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100032504();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100032504()
{
  v0 = String.subscript.getter();
  v4 = sub_100032584(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100032584(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1000131EC(v9, 0);
  v12 = sub_1000326DC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000326DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000328FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000328FC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000328FC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_100032978(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

void *sub_100032A70()
{
  v0 = type metadata accessor for SystemMonitorConfig();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v25 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FeatureInfo(0);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Config.systemMonitorConfigs.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v27 = &_swiftEmptyArrayStorage;
    v10 = v8;
    sub_10002CE80(0, v9, 0);
    v11 = 0;
    v12 = v27;
    v23 = v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v22[1] = v1 + 16;
    v24 = (v1 + 8);
    while (v11 < *(v10 + 16))
    {
      v13 = v23 + *(v1 + 72) * v11;
      v14 = v1;
      v15 = *(v1 + 16);
      v16 = v25;
      v15(v25, v13, v0);
      sub_100031484(v16, v7);
      v17 = v16;
      v18 = v0;
      (*v24)(v17, v0);
      v27 = v12;
      v20 = v12[2];
      v19 = v12[3];
      if (v20 >= v19 >> 1)
      {
        sub_10002CE80(v19 > 1, v20 + 1, 1);
        v12 = v27;
      }

      ++v11;
      v12[2] = v20 + 1;
      sub_100010D10(v7, v12 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v20, type metadata accessor for FeatureInfo);
      v0 = v18;
      v1 = v14;
      if (v9 == v11)
      {

        return v12;
      }
    }

    __break(1u);
    (*v24)(v1, v0);

    __break(1u);
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100032D44(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SystemMonitorConfig.MonitorType();
  sub_100033264(&qword_100045BC0, &type metadata accessor for SystemMonitorConfig.MonitorType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v30 == v28 && v31 == v29)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
LABEL_27:
      v26 = 0;
      return v26 & 1;
    }
  }

  v6 = type metadata accessor for FeatureInfo(0);
  v7 = v6[5];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v12 = v6[6];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v17 = v6[7];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  if ((v18 != *v20 || v19 != v20[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v21 = v6[8];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if ((v22 != *v24 || v23 != v24[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v25 = v6[9];
  type metadata accessor for SystemMonitorConfig.DataType();
  sub_100033264(&qword_100045BC8, &type metadata accessor for SystemMonitorConfig.DataType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v30 == v28 && v31 == v29)
  {
    v26 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v26 & 1;
}

uint64_t sub_100032FC0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SystemMonitorConfig.MonitorType();
  sub_100033264(&qword_100045BC0, &type metadata accessor for SystemMonitorConfig.MonitorType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v32 == v30 && v33 == v31)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v6 = type metadata accessor for FeatureInfo(0);
  v7 = v6[5];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  v12 = v6[6];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  v17 = v6[7];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  if ((v18 != *v20 || v19 != v20[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  v21 = v6[8];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if ((v22 != *v24 || v23 != v24[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  v25 = v6[9];
  type metadata accessor for SystemMonitorConfig.DataType();
  sub_100033264(&qword_100045BC8, &type metadata accessor for SystemMonitorConfig.DataType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v32 == v30 && v33 == v31)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
LABEL_29:
      v28 = 0;
      return v28 & 1;
    }
  }

  v27 = *(type metadata accessor for FeatureState(0) + 20);
  v28 = static SimpleType.== infix(_:_:)();
  return v28 & 1;
}

uint64_t sub_100033264(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_1000332AC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10003332C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1000333B8()
{
  result = sub_1000333D8();
  qword_100046140 = result;
  return result;
}

char *sub_1000333D8()
{
  sub_10001712C(&qword_100045DE8, &qword_100036658);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000368D0;
  v1 = type metadata accessor for CoreAnalyticsWorker();
  v2 = sub_100033E7C(&qword_100046070, &type metadata accessor for CoreAnalyticsWorker);
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v3 = type metadata accessor for RTCWorker();
  v4 = sub_100033E7C(&qword_100046078, &type metadata accessor for RTCWorker);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = type metadata accessor for TailspinWorker();
  v6 = sub_100033E7C(&qword_100046080, &type metadata accessor for TailspinWorker);
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = type metadata accessor for SummaryDecoratorWorker();
  v8 = sub_100033E7C(&qword_100046088, &type metadata accessor for SummaryDecoratorWorker);
  *(inited + 80) = v7;
  *(inited + 88) = v8;
  v9 = type metadata accessor for SessionSummaryWorker();
  v10 = sub_100033E7C(&qword_100046090, &type metadata accessor for SessionSummaryWorker);
  *(inited + 96) = v9;
  *(inited + 104) = v10;
  v11 = type metadata accessor for DurationSummaryWorker();
  v12 = sub_100033E7C(&qword_100046098, &type metadata accessor for DurationSummaryWorker);
  *(inited + 112) = v11;
  *(inited + 120) = v12;
  v13 = type metadata accessor for DriverSnapshotWorker();
  v14 = sub_100033E7C(&qword_1000460A0, &type metadata accessor for DriverSnapshotWorker);
  *(inited + 128) = v13;
  *(inited + 136) = v14;
  v15 = type metadata accessor for PowerLogWorker();
  v16 = sub_100033E7C(&qword_1000460A8, &type metadata accessor for PowerLogWorker);
  *(inited + 144) = v15;
  *(inited + 152) = v16;
  v17 = type metadata accessor for AirPodWorker();
  v18 = sub_100033E7C(&qword_1000460B0, &type metadata accessor for AirPodWorker);
  *(inited + 160) = v17;
  *(inited + 168) = v18;
  v19 = type metadata accessor for AdaptiveVolumeWorker();
  v20 = sub_100033E7C(&qword_1000460B8, &type metadata accessor for AdaptiveVolumeWorker);
  v21 = sub_10002C1CC(1, 10, 1, inited);
  *(v21 + 2) = 10;
  *(v21 + 22) = v19;
  *(v21 + 23) = v20;
  v22 = *(v21 + 3);
  if (v22 <= 0x15)
  {
    v21 = sub_10002C1CC((v22 > 1), 11, 1, v21);
  }

  v23 = type metadata accessor for InferenceSummaryWorker();
  v24 = sub_100033E7C(&qword_1000460C0, &type metadata accessor for InferenceSummaryWorker);
  *(v21 + 2) = 11;
  *(v21 + 24) = v23;
  *(v21 + 25) = v24;
  if (&protocol conformance descriptor for JsonFileWorker && &type metadata accessor for JsonFileWorker && &type metadata for JsonFileWorker && &metaclass for JsonFileWorker && &nominal type descriptor for JsonFileWorker)
  {
    v60 = v21;
    if (*(v21 + 3) <= 0x17uLL)
    {
      v21 = sub_10002C1CC(1, 12, 1, v21);
      v60 = v21;
    }

    v25 = type metadata accessor for JsonFileWorker();
    v26 = sub_100033EC4(&qword_1000460E0, &type metadata accessor for JsonFileWorker);
    sub_10002A544(0, 0, 1, v25, v26);
    v27 = [objc_opt_self() processInfo];
    v28 = [v27 environment];

    v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = static Constants.loadTestWorkerEnv.getter();
    if (*(v29 + 16))
    {
      v32 = sub_10000710C(v30, v31);
      v34 = v33;

      if (v34)
      {
        v35 = (*(v29 + 56) + 16 * v32);
        v36 = *v35;
        v37 = v35[1];

        v38 = String._bridgeToObjectiveC()();

        LOBYTE(v36) = [v38 BOOLValue];

        if (v36)
        {
          v40 = *(v21 + 2);
          v39 = *(v21 + 3);
          if (v40 >= v39 >> 1)
          {
            v21 = sub_10002C1CC((v39 > 1), v40 + 1, 1, v21);
          }

          v41 = type metadata accessor for TestWorker();
          v42 = sub_100033EC4(&qword_1000460E8, &type metadata accessor for TestWorker);
          *(v21 + 2) = v40 + 1;
          v43 = &v21[16 * v40];
          *(v43 + 4) = v41;
          *(v43 + 5) = v42;
        }

        goto LABEL_18;
      }
    }

    else
    {
    }
  }

LABEL_18:
  if (&protocol conformance descriptor for DiagnosticWorker && &protocol conformance descriptor for DiagnosticWorker && &type metadata accessor for DiagnosticWorker && &type metadata for DiagnosticWorker && &metaclass for DiagnosticWorker && &nominal type descriptor for DiagnosticWorker)
  {
    v45 = *(v21 + 2);
    v44 = *(v21 + 3);
    if (v45 >= v44 >> 1)
    {
      v21 = sub_10002C1CC((v44 > 1), v45 + 1, 1, v21);
    }

    v46 = type metadata accessor for DiagnosticWorker();
    v47 = sub_100033EC4(&qword_1000460D8, &type metadata accessor for DiagnosticWorker);
    *(v21 + 2) = v45 + 1;
    v48 = &v21[16 * v45];
    *(v48 + 4) = v46;
    *(v48 + 5) = v47;
  }

  if (&protocol conformance descriptor for AudioCaptureNotificationsWorker && &protocol conformance descriptor for AudioCaptureNotificationsWorker && &type metadata accessor for AudioCaptureNotificationsWorker && &type metadata for AudioCaptureNotificationsWorker && &metaclass for AudioCaptureNotificationsWorker && &nominal type descriptor for AudioCaptureNotificationsWorker)
  {
    v50 = *(v21 + 2);
    v49 = *(v21 + 3);
    if (v50 >= v49 >> 1)
    {
      v21 = sub_10002C1CC((v49 > 1), v50 + 1, 1, v21);
    }

    v51 = type metadata accessor for AudioCaptureNotificationsWorker();
    v52 = sub_100033EC4(&qword_1000460D0, &type metadata accessor for AudioCaptureNotificationsWorker);
    *(v21 + 2) = v50 + 1;
    v53 = &v21[16 * v50];
    *(v53 + 4) = v51;
    *(v53 + 5) = v52;
  }

  if (&protocol conformance descriptor for AudioCaptureLogsWorker && &protocol conformance descriptor for AudioCaptureLogsWorker && &type metadata accessor for AudioCaptureLogsWorker && &type metadata for AudioCaptureLogsWorker && &metaclass for AudioCaptureLogsWorker && &nominal type descriptor for AudioCaptureLogsWorker)
  {
    v55 = *(v21 + 2);
    v54 = *(v21 + 3);
    if (v55 >= v54 >> 1)
    {
      v21 = sub_10002C1CC((v54 > 1), v55 + 1, 1, v21);
    }

    v56 = type metadata accessor for AudioCaptureLogsWorker();
    v57 = sub_100033EC4(&qword_1000460C8, &type metadata accessor for AudioCaptureLogsWorker);
    *(v21 + 2) = v55 + 1;
    v58 = &v21[16 * v55];
    *(v58 + 4) = v56;
    *(v58 + 5) = v57;
  }

  return v21;
}

void sub_100033BB4()
{
  if (qword_1000453B0 != -1)
  {
    swift_once();
  }

  v0 = qword_100046140;
  v1 = *(qword_100046140 + 16);
  if (v1)
  {

    v2 = 32;
    do
    {
      v7 = *(v0 + v2);
      v5 = *(v0 + v2);
      if (swift_conformsToProtocol2())
      {
        v6 = v5 == 0;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10002CEE0(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v4 = *(&_swiftEmptyArrayStorage + 2);
        v3 = *(&_swiftEmptyArrayStorage + 3);
        if (v4 >= v3 >> 1)
        {
          sub_10002CEE0((v3 > 1), v4 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v4 + 1;
        *(&_swiftEmptyArrayStorage + v4 + 2) = v7;
      }

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  qword_100046148 = &_swiftEmptyArrayStorage;
}

void sub_100033D18()
{
  if (qword_1000453B0 != -1)
  {
    swift_once();
  }

  v0 = qword_100046140;
  v1 = *(qword_100046140 + 16);
  if (v1)
  {

    v2 = 32;
    do
    {
      v7 = *(v0 + v2);
      v5 = *(v0 + v2);
      if (swift_conformsToProtocol2())
      {
        v6 = v5 == 0;
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10002CEE0(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v4 = *(&_swiftEmptyArrayStorage + 2);
        v3 = *(&_swiftEmptyArrayStorage + 3);
        if (v4 >= v3 >> 1)
        {
          sub_10002CEE0((v3 > 1), v4 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v4 + 1;
        *(&_swiftEmptyArrayStorage + v4 + 2) = v7;
      }

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  qword_100046150 = &_swiftEmptyArrayStorage;
}

uint64_t sub_100033E7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100033EC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100034150(id a1)
{
  qword_100046BE0 = objc_opt_new();

  _objc_release_x1();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall Message.toString()()
{
  v0 = Message.toString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}