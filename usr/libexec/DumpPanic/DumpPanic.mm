uint64_t sub_1000016C0()
{
  v0 = type metadata accessor for Logger();
  sub_100003280(v0, qword_100042078);
  sub_100002FFC(v0, qword_100042078);
  return Logger.init(subsystem:category:)();
}

void sub_100001740(char a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC9DumpPanic27PanicPatternMatchingWrapper_takeAction] = a1;
  v3 = objc_allocWithZone(type metadata accessor for DiagnosticPatternMatching());
  v4 = DiagnosticPatternMatching.init(type:)();
  v5 = OBJC_IVAR____TtC9DumpPanic27PanicPatternMatchingWrapper_patternMatching;
  if (v4)
  {
    *&v1[OBJC_IVAR____TtC9DumpPanic27PanicPatternMatchingWrapper_patternMatching] = v4;
    if (qword_100042070 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100002FFC(v6, qword_100042078);
    v7 = v1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v8, v9))
    {

LABEL_19:
      v22 = type metadata accessor for PanicPatternMatchingWrapper();
      v24.receiver = v7;
      v24.super_class = v22;
      objc_msgSendSuper2(&v24, "init");
      return;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    v12 = *&v1[v5];

    if (v12)
    {
      v13 = DiagnosticPatternMatching.isPatternPayloadAvailable()();
      v14 = !v13;
      if (v13)
      {
        v15 = 7562585;
      }

      else
      {
        v15 = 28494;
      }

      if (v14)
      {
        v16 = 0xE200000000000000;
      }

      else
      {
        v16 = 0xE300000000000000;
      }

      v17 = sub_100001D10(v15, v16, &v23);

      *(v10 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Pattern Matching initialized with payload available: %s", v10, 0xCu);
      sub_100003034(v11);

      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    *&v1[OBJC_IVAR____TtC9DumpPanic27PanicPatternMatchingWrapper_patternMatching] = 0;
    if (qword_100042070 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100002FFC(v18, qword_100042078);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to initialize Pattern Matching", v21, 2u);
    }

    type metadata accessor for PanicPatternMatchingWrapper();
    swift_deallocPartialClassInstance();
  }
}

unint64_t *sub_100001A1C(uint64_t a1)
{
  v2 = type metadata accessor for PanicMatchedPattern();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = &_swiftEmptyArrayStorage;
  if (v7)
  {
    v22 = &_swiftEmptyArrayStorage;
    sub_1000022B8(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_1000022B8((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = &protocol witness table for PanicMatchedPattern;
      v15 = sub_1000031A4(&v19);
      v10(v15, v6, v2);
      v8 = v22;
      v22[2] = v14 + 1;
      sub_100003208(&v19, &v8[5 * v14 + 4]);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

id sub_100001CA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PanicPatternMatchingWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001D10(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001DDC(v11, 0, 0, 1, a1, a2);
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
    sub_100003224(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003034(v11);
  return v7;
}

unint64_t sub_100001DDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001EE8(a5, a6);
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

char *sub_100001EE8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100001F34(a1, a2);
  sub_100002064(&off_100038B10);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100001F34(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002150(v5, 0);
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
        v7 = sub_100002150(v10, 0);
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

uint64_t sub_100002064(uint64_t result)
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

  result = sub_1000021C4(result, v12, 1, v3);
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

void *sub_100002150(uint64_t a1, uint64_t a2)
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

  sub_100002FB4(&qword_100041F60, &unk_10002B550);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000021C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002FB4(&qword_100041F60, &unk_10002B550);
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

void *sub_1000022B8(void *a1, int64_t a2, char a3)
{
  result = sub_1000022D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000022D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002FB4(&qword_100041F58, &qword_10002B548);
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
    sub_100002FB4(&qword_100041F48, &qword_10002B540);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100002420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PanicPatternAction();
  v87 = *(v7 - 8);
  v8 = *(v87 + 64);
  v9 = (__chkstk_darwin)();
  v88 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = &v72 - v11;
  v12 = sub_100002FB4(&qword_100041F38, &qword_10002B530);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - 8);
  v15 = &v72 - v14;
  v16 = type metadata accessor for PanicMatchedPattern();
  v85 = *(v16 - 8);
  v86 = v16;
  v17 = *(v85 + 64);
  __chkstk_darwin(v16);
  v83 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100002FB4(&qword_100041F40, &qword_10002B538);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (&v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = &v72 - v25;
  if (!*(a3 + OBJC_IVAR____TtC9DumpPanic27PanicPatternMatchingWrapper_patternMatching))
  {
    if (qword_100042070 == -1)
    {
LABEL_14:
      v39 = type metadata accessor for Logger();
      sub_100002FFC(v39, qword_100042078);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "No DiagnosticPatternMatching object available", v42, 2u);
      }

      return 0;
    }

LABEL_46:
    swift_once();
    goto LABEL_14;
  }

  v74 = a4;
  v27 = objc_allocWithZone(type metadata accessor for PanicPatternInfo());

  v84 = PanicPatternInfo.init(panicString:)();
  DiagnosticPatternMatching.lookForPanicPatternRemote(report:)();
  (*(v20 + 16))(v24, v26, v19);
  v28 = (*(v20 + 88))(v24, v19);
  if (v28 != enum case for PatternMatchResult.success<A>(_:))
  {
    if (v28 != enum case for PatternMatchResult.failure<A>(_:))
    {
      if (qword_100042070 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_100002FFC(v50, qword_100042078);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Unexpected return from remote pattern matching", v53, 2u);
      }

      v54 = *(v20 + 8);
      v54(v26, v19);
      v54(v24, v19);
      return 0;
    }

    (*(v20 + 96))(v24, v19);
    a2 = *v24;
    v29 = v24[1];
    if (qword_100042070 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

  (*(v20 + 96))(v24, v19);
  v29 = *v24;
  v30 = sub_100001A1C(*v24);

  v31 = v30[2];
  if (!v31)
  {

    if (qword_100042070 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100002FFC(v55, qword_100042078);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "No panic patterns matched", v58, 2u);
    }

    goto LABEL_41;
  }

  if (v31 != 1)
  {
    if (qword_100042070 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100002FFC(v32, qword_100042078);
    v29 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v33))
    {
      v34 = swift_slowAlloc();
      a2 = v26;
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v29, v33, "Multiple panic patterns matched", v34, 2u);
    }
  }

  if (!v30[2])
  {
    __break(1u);
LABEL_48:
    swift_once();
LABEL_19:
    v43 = type metadata accessor for Logger();
    sub_100002FFC(v43, qword_100042078);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = v26;
      v48 = swift_slowAlloc();
      v90[0] = v48;
      *v46 = 136315138;
      v49 = sub_100001D10(a2, v29, v90);

      *(v46 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v44, v45, "Error in remote pattern matching: %s", v46, 0xCu);
      sub_100003034(v48);

      (*(v20 + 8))(v47, v19);
      return 0;
    }

LABEL_41:
    (*(v20 + 8))(v26, v19);
    return 0;
  }

  sub_100003080((v30 + 4), v90);

  sub_100002FB4(&qword_100041F48, &qword_10002B540);
  v35 = v86;
  v36 = swift_dynamicCast();
  v37 = v85;
  (*(v85 + 56))(v15, v36 ^ 1u, 1, v35);
  if ((*(v37 + 48))(v15, 1, v35) == 1)
  {
    (*(v20 + 8))(v26, v19);

    sub_1000030E4(v15);
    return 1;
  }

  v81 = v7;
  v73 = v26;
  (*(v37 + 32))(v83, v15, v35);
  v59 = PanicMatchedPattern.panicActions.getter();
  if (!v59)
  {
    v59 = &_swiftEmptyArrayStorage;
  }

  v60 = v82;
  v61 = v88;
  v76 = v59[2];
  if (v76)
  {
    v62 = 0;
    v79 = v87 + 16;
    v78 = enum case for PanicPatternAction.DonateTypeOne(_:);
    v75 = enum case for PanicPatternAction.DonateTypeTwo(_:);
    v80 = v19;
    v77 = v20;
    while (v62 < v59[2])
    {
      v63 = v87;
      v64 = v59;
      v65 = v81;
      (*(v87 + 16))(v60, v59 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v62, v81);
      v66 = *(v63 + 104);
      v66(v61, v78, v65);
      sub_10000314C();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v67 = v88;
      v68 = *(v63 + 8);
      v68(v88, v65);
      if (LODWORD(v90[0]) == v89 || (v66(v67, v75, v65), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v61 = v88, v68(v88, v65), LODWORD(v90[0]) == v89))
      {

        v69 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:PanicPatternAction.rawValue.getter()];
        v68(v60, v65);
        v20 = v77;
        v19 = v80;
        goto LABEL_44;
      }

      ++v62;
      v68(v60, v65);
      v20 = v77;
      v19 = v80;
      v59 = v64;
      if (v76 == v62)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_39:

  v69 = 0;
LABEL_44:
  v70 = v83;
  PanicMatchedPattern.uuid.getter();
  v71 = String._bridgeToObjectiveC()();
  (*(v74 + 16))(v74, v71, v69);

  (*(v85 + 8))(v70, v86);
  (*(v20 + 8))(v73, v19);

  return 1;
}

uint64_t sub_100002FB4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002FFC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003034(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003080(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000030E4(uint64_t a1)
{
  v2 = sub_100002FB4(&qword_100041F38, &qword_10002B530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000314C()
{
  result = qword_100041F50;
  if (!qword_100041F50)
  {
    type metadata accessor for PanicPatternAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041F50);
  }

  return result;
}

uint64_t *sub_1000031A4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100003208(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100003224(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100003280(uint64_t a1, uint64_t *a2)
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

uint64_t ccaes_arm_encrypt_cbc(uint64_t result, int8x16_t *a2, uint64_t a3, __int128 *a4, int8x16_t *a5)
{
  if (a3)
  {
    v5 = *(result + 240);
    if (v5 == 160 || v5 == 192 || v5 == 224)
    {
      v6 = *a2;
      do
      {
        v7 = v5 - 16;
        v8 = *a4++;
        _Q2 = *result;
        v9 = (result + 16);
        do
        {
          __asm
          {
            AESE            V0.16B, V2.16B
            AESMC           V0.16B, V0.16B
          }

          _Q2 = *v9++;
          v17 = v7 <= 16;
          v7 -= 16;
        }

        while (!v17);
        __asm { AESE            V0.16B, V2.16B }

        v19 = veorq_s8(_Q0, *v9);
        result = v9->i64 - v5;
        *a5++ = v19;
        v17 = a3-- <= 1;
      }

      while (!v17);
      result = 0;
      *a2 = v19;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

uint64_t ccentropy_rng_init(void *a1, uint64_t a2)
{
  v5 = timingsafe_enable_if_supported();
  *a1 = &off_100038B38;
  a1[1] = a2;
  cc_disable_dit_with_sb(&v5);
  return 0;
}

uint64_t *ccrng_prng(_DWORD *a1)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v7 = 1;
  }

  v9 = v7;
  pthread_once(&stru_100041F68, sub_100003450);
  if (a1)
  {
    *a1 = 0;
  }

  cc_disable_dit(&v9);
  return &qword_100042090;
}

uint64_t sub_100003450()
{
  if (ccrng_process_init(&off_1000420A0, sub_100003500, &ccrng_getentropy))
  {
    sub_100026040();
  }

  result = pthread_atfork(sub_100003544, sub_10000356C, sub_100003594);
  if (result)
  {
    sub_100026058();
  }

  qword_100042090 = sub_1000035BC;
  return result;
}

uint64_t sub_100003500()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  if (clock_gettime(_CLOCK_MONOTONIC, &v1))
  {
    sub_100026070();
  }

  return v1.tv_nsec + 1000000000 * v1.tv_sec;
}

uint64_t sub_100003544()
{
  result = ccrng_process_atfork_prepare(&off_1000420A0);
  if (result)
  {
    sub_100026088();
  }

  return result;
}

uint64_t sub_10000356C()
{
  result = ccrng_process_atfork_parent(&off_1000420A0);
  if (result)
  {
    sub_1000260A0();
  }

  return result;
}

uint64_t sub_100003594()
{
  result = ccrng_process_atfork_child(&off_1000420A0);
  if (result)
  {
    sub_1000260B8();
  }

  return result;
}

uint64_t sub_1000035BC()
{
  result = off_1000420A0();
  if (result)
  {
    sub_1000260D0();
  }

  return result;
}

uint64_t sub_1000035E8(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
{
  if (a3 > 127)
  {
    if (a3 != 128 && a3 != 256 && a3 != 192)
    {
      return 4294967289;
    }

    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  return 4294967289;
}

uint64_t ccec_mult_blinded_ws(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(void, uint64_t, uint64_t *))
{
  v10 = *a2;
  v11 = ccn_bitlen_internal(*a2, a4);
  if (v11 > cczp_bitlen(a2))
  {
    return 4294967289;
  }

  v17 = 1;
  if (a6)
  {
    result = (*a6)(a6, 8, &v17);
    if (result)
    {
      return result;
    }

    v13 = v17 | 0x80000000;
  }

  else
  {
    v13 = 2147483649;
  }

  v17 = v13;
  v14 = *(a1 + 16);
  (*(a1 + 24))(a1, 3 * v10);
  v15 = (*(a1 + 24))(a1, v10);
  ccn_mux_seed_mask(v17);
  v17 = v17;
  result = ccec_mult_ws(a1, a2);
  if (!result)
  {
    v16 = 0;
    ccn_divmod_ws(a1, v10, a4, v10, v15, 1, &v16, &v17);
    cczp_bitlen(a2);
    result = ccec_mult_ws(a1, a2);
    if (!result)
    {
      result = ccec_mult_ws(a1, a2);
      if (!result)
      {
        ccec_full_add_ws(a1, a2);
        result = 0;
      }
    }
  }

  *(a1 + 16) = v14;
  return result;
}

uint64_t sub_10000380C(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
{
  if (a3 > 127)
  {
    if (a3 != 128 && a3 != 256 && a3 != 192)
    {
      return 4294967289;
    }

    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  if (a3 <= 0x20 && ((1 << a3) & 0x101010000) != 0)
  {
    return ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  }

  return 4294967289;
}

uint64_t ccn_cond_swap(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  result = ccn_mux_next_mask();
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * result)); a1; --a1)
  {
    v10 = *a4 ^ *a3;
    *a3 ^= result;
    v11 = *a4 ^ result;
    *a4 = v11;
    v12 = *a3 ^ v10 & 0x5555555555555555;
    v13 = v11 ^ v10 & 0x5555555555555555;
    v14 = v10 & i;
    *a3++ = v12 ^ v14 ^ result;
    *a4++ = v13 ^ v14 ^ result;
  }

  return result;
}

uint64_t *ccaes_ctr_crypt_mode()
{
  v0 = ((*ccaes_ecb_encrypt_mode() + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v1 = ccaes_ecb_encrypt_mode();
  qword_1000429E0 = v0;
  unk_1000429E8 = xmmword_10002B560;
  qword_1000429F8 = ccmode_ctr_init;
  qword_100042A00 = ccmode_ctr_setctr;
  qword_100042A08 = ccaes_vng_ctr_crypt;
  unk_100042A10 = v1;
  return &qword_1000429E0;
}

uint64_t ccrng_schedule_read(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 3;
  }

  result = (**a1)(a1);
  *(a1 + 8) = result == 3;
  return result;
}

uint64_t ccrng_schedule_atomic_flag_init(uint64_t result)
{
  *result = off_100038BA8;
  *(result + 8) = 0;
  *(result + 16) = 1;
  return result;
}

uint64_t ccrng_schedule_timer_init(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  *a1 = off_100038BB8;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  result = a2();
  *(a1 + 32) = result;
  return result;
}

uint64_t ccrng_schedule_tree_init(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = off_100038BC8;
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t sub_100003A94(uint64_t a1)
{
  if (((*(a1 + 16))() - *(a1 + 32)) < *(a1 + 24))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_100003AD0(uint64_t a1)
{
  result = (*(a1 + 16))();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100003AFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v3 = 3;
  }

  else
  {
    v3 = (**v2)(*(a1 + 16));
    *(v2 + 8) = v3 == 3;
  }

  v4 = *(a1 + 24);
  if (*(v4 + 8))
  {
    LODWORD(result) = 3;
  }

  else
  {
    LODWORD(result) = (**v4)(v4);
    *(v4 + 8) = result == 3;
  }

  if (v3 <= result)
  {
    return result;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100003B90(uint64_t a1)
{
  v2 = *(a1 + 16);
  v2[8] = 0;
  (*(*v2 + 8))(v2);
  v3 = *(a1 + 24);
  v3[8] = 0;
  v4 = *(*v3 + 8);

  return v4();
}

uint64_t ccn_n_asm(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    v3 = 0;
    do
    {
      v4 = *a2++;
      ++v3;
      if (v4)
      {
        result = v3;
      }
    }

    while (v3 < v2);
  }

  return result;
}

uint64_t ccaes_vng_ctr_crypt(void *a1, unint64_t a2, int8x16_t *a3, int8x16_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = a1[1];
  if (a2)
  {
    v10 = a2;
    v11 = *a1;
    v12 = (*(*a1 + 8) + 7) >> 3;
    v13 = a1 + 2;
    v14 = &a1[2 * v12 + 2];
    v15 = &a1[v12 + 2];
    v16 = &a1[v12];
    while (1)
    {
      if (v7 == 16)
      {
        if (v10 >= 0x10)
        {
          aes_ctr_crypt(a3, a4, v10 & 0xFFFFFFFFFFFFFFF0, v15, v14, a6);
          a4 = (a4 + (v10 & 0xFFFFFFFFFFFFFFF0));
          a3 = (a3 + (v10 & 0xFFFFFFFFFFFFFFF0));
          v10 &= 0xFu;
        }

        (*(v11 + 24))(v14, 1, v15, a1 + 2);
        v17 = 31;
        do
        {
          if ((v17 - 15) < 9)
          {
            break;
          }

          v18 = (*(v16 + v17--))++ + 1;
        }

        while ((v18 & 0x100) != 0);
        v7 = 0;
        v19 = 0;
        if (!v10)
        {
          break;
        }
      }

      v20 = 0;
      do
      {
        v21 = v20 + 1;
        a4->i8[v20] = *(v13 + v7 + v20) ^ a3->i8[v20];
        v22 = (v20 + 1 + v7) > 0xF || v10 - 1 == v20;
        ++v20;
      }

      while (!v22);
      v7 += v21;
      a3 = (a3 + v21);
      a4 = (a4 + v21);
      v10 -= v21;
      if (!v10)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v19 = v7;
  }

  a1[1] = v19;
  return 0;
}

void *cczp_to_default_ws(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = cczp_n(a2);

  return ccn_set(v6, a3, a4);
}

uint64_t cc_try_abort_if (uint64_t result)
{
  if (result)
  {
    cc_abort();
  }

  return result;
}

unint64_t cczp_negate(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v6 = cczp_n(a1);
  v7 = ccn_n(v6, a3) != 0;
  v8 = cczp_prime(a1);

  return ccn_cond_rsub(v6, v7, a2, a3, v8);
}

unint64_t cczp_cond_negate(uint64_t a1, char a2, uint64_t *a3, unint64_t *a4)
{
  v8 = cczp_n(a1);
  if (ccn_n(v8, a4))
  {
    v9 = a2 & 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = cczp_prime(a1);

  return ccn_cond_rsub(v8, v9, a3, a4, v10);
}

void *cczp_from_default_ws(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = cczp_n(a2);

  return ccn_set(v6, a3, a4);
}

unint64_t ccn_mul1_asm(uint64_t a1, void *a2, unint64_t *a3, unint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    v5 = *a3++;
    v4 = (v5 * a4) >> 64;
    *a2++ = v5 * a4;
    --a1;
  }

  if ((a1 & 2) != 0)
  {
    v6 = *a3;
    v7 = a3[1];
    a3 += 2;
    v8 = v6 * a4 + __PAIR128__(v7 * a4, v4);
    v4 = (__CFADD__(__CFADD__(v6 * a4, v4), (v6 * a4) >> 64) | __CFADD__(v7 * a4, *(&v8 + 1))) + ((v7 * a4) >> 64);
    *a2 = v8;
    a2 += 2;
    a1 -= 2;
  }

  while (1)
  {
    v9 = a1 < 4;
    a1 -= 4;
    if (v9)
    {
      break;
    }

    v11 = *a3;
    v12 = a3[1];
    v10 = a3 + 2;
    v14 = *v10;
    v15 = v10[1];
    a3 = v10 + 2;
    v16 = (v12 * a4) >> 64;
    v17 = __CFADD__(__CFADD__(v11 * a4, v4), (v11 * a4) >> 64);
    v13 = v11 * a4 + __PAIR128__(v12 * a4, v4);
    *a2 = v13;
    v18 = a2 + 2;
    v19 = (v14 * a4) >> 64;
    v20 = v16 + (v17 | __CFADD__(v12 * a4, *(&v13 + 1))) + v14 * a4;
    v22 = __CFADD__(v17 | __CFADD__(v12 * a4, *(&v13 + 1)), v14 * a4) | __CFADD__(v16, (v17 | __CFADD__(v12 * a4, *(&v13 + 1))) + v14 * a4);
    v17 = __CFADD__(v22, v19);
    v21 = v22 + v19;
    v4 = (v17 | __CFADD__(v15 * a4, v21)) + ((v15 * a4) >> 64);
    *v18 = v20;
    v18[1] = v15 * a4 + v21;
    a2 = v18 + 2;
  }

  return v4;
}

uint64_t ccdigest_internal(uint64_t a1, size_t a2, char *a3, uint64_t a4)
{
  v8 = (*(a1 + 8) + *(a1 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  ccdigest_init_internal(a1, v9);
  ccdigest_update_internal(a1, v9, a2, a3);
  (*(a1 + 56))(a1, v9, a4);
  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v9);
}

uint64_t ccdigest(uint64_t a1, size_t a2, char *a3, uint64_t a4)
{
  v9 = timingsafe_enable_if_supported();
  ccdigest_internal(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
}

uint64_t ccdigest_final_64be(uint64_t a1, const void *a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = a2 + v7 + 8;
  if (v6 <= *(v8 + v6))
  {
    *(v8 + v6) = 0;
  }

  v9 = (v7 + v6 + 19) & 0xFFFFFFFFFFFFFFF8;
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v10, v9);
  memcpy(v10, a2, v7 + v6 + 12);
  v11 = v10 + v7;
  v12 = v10 + v7 + 8;
  v13 = (v12 + v6);
  v14 = *(v12 + v6);
  *v10 += (8 * v14);
  *(v12 + v6) = v14 + 1;
  *(v12 + v14) = 0x80;
  v15 = *(v12 + v6);
  if (v15 < 0x39)
  {
    if (v15 == 56)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v15 <= 0x3F)
    {
      do
      {
        *v13 = v15 + 1;
        *(v12 + v15) = 0;
        v15 = *v13;
      }

      while (v15 < 0x40);
    }

    (*(a1 + 48))(v10 + 1, 1);
    v15 = 0;
    v11 = v10 + *(a1 + 8);
    v12 = (v11 + 8);
    v13 = &v11[*(a1 + 16) + 8];
    *v13 = 0;
  }

  do
  {
    *v13 = v15 + 1;
    *(v12 + v15) = 0;
    v15 = *v13;
  }

  while (v15 < 0x38);
LABEL_9:
  *(v11 + 8) = bswap64(*v10);
  (*(a1 + 48))(v10 + 1, 1);
  if (*a1 >= 4uLL)
  {
    v16 = 0;
    v17 = 0;
    v18 = 1;
    do
    {
      *(a3 + v16) = bswap32(*(v10 + v17 + 2));
      v17 = v18++;
      v16 += 4;
    }

    while (v17 < *a1 >> 2);
  }

  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v10);
}

void *ccdigest_init_internal(uint64_t a1, void *a2)
{
  result = memcpy(a2 + 1, *(a1 + 40), *(a1 + 8));
  *a2 = 0;
  *(a2 + *(a1 + 8) + *(a1 + 16) + 8) = 0;
  return result;
}

unint64_t *ccdigest_update_internal(unint64_t *result, void *a2, size_t a3, char *__src)
{
  v5 = a3;
  v7 = result;
  v8 = result[2];
  v9 = a2 + result[1] + 8;
  if (v8 <= *(v9 + v8))
  {
    *(v9 + v8) = 0;
  }

  if (a3)
  {
    v10 = a2 + 1;
    do
    {
      v11 = v7[2];
      v12 = v10 + v7[1];
      v13 = *&v12[v11];
      if (v5 > v11 && v13 == 0)
      {
        if (v11 == 128)
        {
          v22 = v5 >> 7;
          v16 = v5 & 0xFFFFFFFFFFFFFF80;
        }

        else if (v11 == 64)
        {
          v22 = v5 >> 6;
          v16 = v5 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v5 / v11;
          v16 = v5 / v11 * v11;
        }

        result = (v7[6])(a2 + 1, v22, __src);
        *a2 += 8 * v16;
      }

      else
      {
        v15 = v11 - v13;
        if (v15 >= v5)
        {
          v16 = v5;
        }

        else
        {
          v16 = v15;
        }

        result = memcpy(&v12[v13], __src, v16);
        v17 = v7[2];
        v18 = v10 + v7[1];
        v19 = (*&v18[v17] + v16);
        *&v18[v17] = v19;
        if (v17 == v19)
        {
          result = (v7[6])(a2 + 1, 1);
          v20 = v7[2];
          v21 = v10 + v7[1];
          *a2 += (8 * *&v21[v20]);
          *&v21[v20] = 0;
        }
      }

      __src += v16;
      v5 -= v16;
    }

    while (v5);
  }

  return result;
}

void *ccdrbg_factory_nistctr(void *result, uint64_t a2)
{
  *result = 88;
  result[1] = sub_1000044DC;
  result[3] = sub_100026388;
  result[2] = sub_1000265C8;
  result[4] = sub_1000046DC;
  result[5] = a2;
  result[6] = sub_10000471C;
  return result;
}

uint64_t sub_1000044DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 40);
  cc_clear(0x58uLL, a2);
  v18 = *v12;
  v19 = v12[1];
  *(a2 + 56) = *v12;
  *(a2 + 64) = v19;
  *(a2 + 72) = *(v12 + 4);
  v20 = v12[3];
  *(a2 + 80) = v20;
  if (v19 >= 0x21 || *(v18 + 16) != 16)
  {
    cc_try_abort();
  }

  if (!v20)
  {
    if (v19 + 16 >= a7 && v19 + 16 == a3)
    {
      v28 = 0u;
      v29 = 0u;
      __s = 0u;
      __memcpy_chk();
      for (; a7; --a7)
      {
        *(&v26 + a7 + 7) ^= *(a8 - 1 + a7);
      }

      goto LABEL_8;
    }

    v21 = 4294967233;
LABEL_16:
    cc_clear(0x20uLL, a2);
    cc_clear(0x10uLL, (a2 + 32));
    v23 = -1;
    goto LABEL_9;
  }

  v21 = 4294967233;
  if ((a3 - 65537) < 0xFFFFFFFFFFFF000FLL || a7 > 0x10000)
  {
    goto LABEL_16;
  }

  v28 = 0u;
  v29 = 0u;
  __s = 0u;
  HIBYTE(v26) = HIBYTE(a8);
  v22 = sub_100004740(a2, &__s, 3u, v13, v14, v15, v16, v17, a3);
  if (v22)
  {
    v21 = v22;
    goto LABEL_16;
  }

  v19 = *(a2 + 64);
LABEL_8:
  cc_clear(v19, a2);
  cc_clear(0x10uLL, (a2 + 32));
  sub_100004804(a2, &__s);
  v21 = 0;
  v23 = 1;
LABEL_9:
  *(a2 + 48) = v23;
  cc_clear(0x30uLL, &__s);
  return v21;
}

uint64_t sub_1000046DC(char *__s)
{
  cc_clear(0x20uLL, __s);
  result = cc_clear(0x10uLL, __s + 32);
  *(__s + 6) = -1;
  return result;
}

uint64_t sub_100004740(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  memset(v16, 0, sizeof(v16));
  v15 = &a9;
  if (a3)
  {
    v10 = a3;
    v11 = v16 + 1;
    v12 = a3;
    do
    {
      v13 = v15;
      *v11 = *v15;
      v15 += 2;
      *(v11 - 1) = v13[1];
      v11 += 2;
      --v12;
    }

    while (v12);
  }

  else
  {
    v10 = 0;
  }

  return ccdrbg_df_derive_keys(*(a1 + 80), v10, v16, *(a1 + 64) + 16, a2);
}

uint64_t sub_100004804(uint64_t a1, uint64_t a2)
{
  v4 = (ccctr_context_size(*(a1 + 56)) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v9 - v4;
  bzero(&v9 - v4, v4);
  inc_uint(a1 + 40, 8uLL);
  v6 = *(a1 + 64);
  ccctr_init_internal(*(a1 + 56));
  sub_1000048C8(a1, v5, a2);
  v7 = ccctr_context_size(*(a1 + 56));
  return cc_clear(v7, v5);
}

uint64_t sub_1000048C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ccctr_update_internal(*(a1 + 56), a2, *(a1 + 64), a3, a1);
  v6 = *(a1 + 56);
  v7 = a3 + *(a1 + 64);

  return ccctr_update_internal(v6, a2, 16, v7, a1 + 32);
}

uint64_t ccec_affinify_jacobian_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  v9 = *a2;
  v10 = cczp_inv_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  v11 = *a2;
  cczp_mul_ws(a1, a2);
  cczp_from_ws(a1, a2);
  v12 = *a2;
  cczp_from_ws(a1, a2);
  *(a1 + 16) = v8;
  return v10;
}

uint64_t ccec_affinify_x_only_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, v6);
  v9 = *a2;
  cczp_sqr_ws(a1, a2);
  v10 = cczp_inv_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_from_ws(a1, a2);
  *(a1 + 16) = v8;
  return v10;
}

uint64_t ccn_sqr_ws(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4)
{
  result = ccn_mul1(a2 - 1, a3 + 1, a4 + 1, *a4);
  a3[a2] = result;
  v8 = *a4;
  v9 = (v8 * v8) >> 64;
  v10 = v8 * v8;
  v11 = a3[1];
  v12 = __CFADD__(v9, 2 * v11);
  v13 = v9 + 2 * v11;
  if (v12)
  {
    v14 = (v11 >> 63) + 1;
  }

  else
  {
    v14 = v11 >> 63;
  }

  *a3 = v10;
  a3[1] = v13;
  v15 = a2 - 2;
  if (a2 >= 2)
  {
    v16 = 0;
    v17 = &a3[a2 + 1];
    v18 = a3 + 3;
    do
    {
      result = ccn_addmul1(v15, v18, &a4[v16 + 2], a4[v16 + 1]);
      *(v17 + v16 * 8) = result;
      v19 = a4[v16 + 1];
      v20 = (v19 * v19) >> 64;
      v21 = v19 * v19;
      v12 = __CFADD__(v21, v14);
      v22 = v21 + v14;
      if (v12)
      {
        ++v20;
      }

      v23 = *(v18 - 1);
      v24 = v23 >> 63;
      v12 = __CFADD__(v20, 2 * *v18);
      v25 = v20 + 2 * *v18;
      if (v12)
      {
        v26 = (*v18 >> 63) + 1;
      }

      else
      {
        v26 = *v18 >> 63;
      }

      v12 = __CFADD__(v22, 2 * v23);
      v27 = v22 + 2 * v23;
      v29 = v12;
      v12 = __CFADD__(v12, v25);
      v28 = v29 + v25;
      v12 |= __CFADD__(v24, v28);
      v28 += v24;
      if (v12)
      {
        v14 = v26 + 1;
      }

      else
      {
        v14 = v26;
      }

      *(v18 - 1) = v27;
      *v18 = v28;
      ++v16;
      --v15;
      v18 += 2;
    }

    while (v15 != -1);
  }

  return result;
}

uint64_t ccec_double_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  v6 = *a2;
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  v7 = *a2;
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  v8 = *a2;
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sub_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t ccec_export_pub(uint64_t *a1, char *a2)
{
  v3 = a1 + 2;
  v4 = *a1;
  v6 = ((cczp_bitlen(*a1) + 7) >> 2) | 1;
  return ccec_export_affine_point_public_value(v4, 1, v3, &v6, a2);
}

uint64_t ccec_add_normalized_ws(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *a2;
  v14 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, *a2);
  v11 = (*(a1 + 24))(a1, v9);
  (*(a1 + 24))(a1, v9);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  if (a6)
  {
    cczp_add_ws(a1, a2);
  }

  else
  {
    cczp_sub_ws(a1, a2);
  }

  if (ccn_n(v9, v10) || ccn_n(v9, v11))
  {
    if (ccn_n(v9, v10) || !ccn_n(v9, v11))
    {
      cczp_add_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      result = cczp_div2_ws(a1, a2, &a3[v9], &a3[v9]);
    }

    else
    {
      ccn_seti(v9, a3, 1);
      cczp_to_ws(a1, a2);
      ccn_set(v9, &a3[v9], a3);
      result = cc_clear(8 * v9, &a3[2 * v9]);
    }
  }

  else
  {
    result = ccec_double_ws(a1, a2);
  }

  *(a1 + 16) = v14;
  return result;
}

uint64_t ccec_full_add_normalized_ws(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, char *a5)
{
  v10 = *(a1 + 16);
  v11 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    ccn_set(v11, a3, a5);
    ccn_set(v11, &a3[8 * *a2], &a5[8 * *a2]);
    result = ccn_set(v11, &a3[16 * *a2], &a5[16 * *a2]);
  }

  else
  {
    result = ccec_add_normalized_ws(a1, a2, a3, a4, a5, 0);
  }

  *(a1 + 16) = v10;
  return result;
}

uint64_t ccec_full_add_default_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v17 = a4 + 8 * *a2;
  v7 = cczp_n(a2);
  v18 = *(a1 + 16);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  (*(a1 + 24))(a1, v7);
  sub_100005A88(a1, a2);
  sub_100005A88(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  v8 = cczp_n(a2);
  v9 = *a2;
  v10 = &a3[*a2];
  v11 = (*(a1 + 24))(a1, v8);
  v12 = (*(a1 + 24))(a1, v8);
  ccn_set(v8, v11, v10);
  cczp_from_ws(a1, a2);
  v13 = ccn_n(v8, v12) == 1 && *v12 == 1;
  v14 = ccn_n(v8, a3);
  if (ccn_n(v8, &a3[2 * v9]) | v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  ccn_mux(v8, v15, a3, v11, a3);
  result = ccn_mux(v8, v15, v10, v11, v10);
  *(a1 + 16) = v18;
  return result;
}

uint64_t sub_100005A88(uint64_t a1, uint64_t *a2)
{
  v4 = cczp_n(a2);
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, v4);
  v6 = *a2;
  cczp_mul_ws(a1, a2);
  v7 = *a2;
  cczp_sqr_ws(a1, a2);
  v8 = *a2;
  result = cczp_mul_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

int8x16_t sub_100005B80(int8x16_t *a1, int8x16_t *a2)
{
  result = *a1;
  a2[15].i32[0] = 160;
  _Q2 = 0uLL;
  v4 = loc_100005B50;
  v5 = 10;
  *a2 = result;
  v6 = a2 + 1;
  do
  {
    __asm { AESE            V1.16B, V2.16B }

    v12 = vqtbl1q_s8(_Q1, *qword_100005B70);
    v13 = veorq_s8(result, v12);
    v12.i8[0] = v4.i8[0];
    v4 = vextq_s8(v4, v4, 1uLL);
    v14 = veorq_s8(v13, v12);
    v15 = veorq_s8(v14, vextq_s8(0, v14, 0xCuLL));
    result = veorq_s8(v15, vextq_s8(0, v15, 8uLL));
    *v6++ = result;
    _CF = v5-- != 0;
  }

  while (v5 != 0 && _CF);
  return result;
}

int8x16_t sub_100005BF0(int8x16_t *a1, int8x16_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, int64x2_t a9)
{
  result = *a1;
  a9.i64[0] = a1[1].i64[0];
  a2[15].i32[0] = 192;
  _Q2 = 0uLL;
  v11 = loc_100005B50;
  *a2 = result;
  v12 = a2 + 1;
  v13 = 46;
  v12->i64[0] = a9.i64[0];
  v14 = &v12->u64[1];
  do
  {
    __asm { AESE            V1.16B, V2.16B }

    v20 = vqtbl1q_s8(_Q1, *qword_100005B70);
    v21 = veorq_s8(result, v20);
    v20.i8[0] = v11.i8[0];
    v11 = vextq_s8(v11, v11, 1uLL);
    v22 = veorq_s8(v21, v20);
    v23 = veorq_s8(v22, vextq_s8(0, v22, 0xCuLL));
    result = veorq_s8(v23, vextq_s8(0, v23, 8uLL));
    *a9.i8 = veor_s8(veor_s8(*a9.i8, *&vshlq_n_s64(a9, 0x20uLL)), *&vdupq_laneq_s32(result, 3));
    *v14 = result;
    v24 = v14 + 1;
    v24->i64[0] = a9.i64[0];
    v14 = &v24->u64[1];
    _CF = v13 >= 6;
    v13 -= 6;
  }

  while (v13 != 0 && _CF);
  return result;
}

int8x16_t *sub_100005C80(int8x16_t *result, int8x16_t *a2)
{
  v2 = *result;
  v3 = result[1];
  a2[15].i32[0] = 224;
  _Q2 = 0uLL;
  v5 = loc_100005B50;
  *a2 = v2;
  v6 = a2 + 1;
  v7 = 52;
  *v6 = v3;
  v8 = v6 + 1;
  do
  {
    __asm { AESE            V1.16B, V2.16B }

    v14 = vqtbl1q_s8(_Q1, *qword_100005B70);
    v15 = veorq_s8(v2, v14);
    v14.i8[0] = v5.i8[0];
    v5 = vextq_s8(v5, v5, 1uLL);
    v16 = veorq_s8(v15, v14);
    v17 = veorq_s8(v16, vextq_s8(0, v16, 0xCuLL));
    v2 = veorq_s8(v17, vextq_s8(0, v17, 8uLL));
    *v8 = v2;
    v18 = v8 + 1;
    v19 = v7 - 4;
    if (!v19)
    {
      break;
    }

    __asm { AESE            V7.16B, V2.16B }

    v21 = veorq_s8(v3, vqtbl1q_s8(_Q7, *qword_100005B70));
    v22 = veorq_s8(v21, vextq_s8(0, v21, 0xCuLL));
    v3 = veorq_s8(v22, vextq_s8(0, v22, 8uLL));
    *v18 = v3;
    v8 = v18 + 1;
    _CF = v19 >= 4;
    v7 = v19 - 4;
  }

  while (v7 != 0 && _CF);
  return result;
}

uint64_t ccaes_arm_encrypt_key(double a1, double a2, double a3, double a4, double a5, double a6, int64x2_t a7, uint64_t a8, int8x16_t *a9, uint64_t a10, int8x16_t *a11)
{
  v13 = a9;
  v15 = a10;
  if (a10 > 32)
  {
    v15 = a10 >> 3;
  }

  switch(v15)
  {
    case 0x10uLL:
      sub_100005B80(a11, v13);
      break;
    case 0x18uLL:
      sub_100005BF0(a11, v13, a1, a2, a3, a4, a5, a6, a7);
      break;
    case 0x20uLL:
      sub_100005C80(a11, v13);
      break;
    default:
      return -1;
  }

  return 0;
}

__n128 ccaes_arm_decrypt_key(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, int64x2_t a11)
{
  v11 = ccaes_arm_encrypt_key(a5, a6, a7, a8, a9, a10, a11, a1, a2, a3, a4);
  v13 = a3;
  if (v11 != -1)
  {
    if (a3 > 32)
    {
      v13 = a3 >> 3;
    }

    v14 = (v13 >> 2) + 4;
    v15 = &a2[1];
    do
    {
      _Q0 = *v15;
      _Q1 = v15[1];
      __asm
      {
        AESIMC          V0.16B, V0.16B
        AESIMC          V1.16B, V1.16B
      }

      *v15 = _Q0;
      v15[1] = _Q1;
      v15 += 2;
      v24 = v14 <= 2;
      v14 -= 2;
    }

    while (!v24);
    _Q0 = *v15;
    __asm { AESIMC          V0.16B, V0.16B }

    *v15 = result;
  }

  return result;
}

int8x16_t *aes_ctr_crypt(int8x16_t *a1, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5, uint64_t a6)
{
  v6 = a5[15].i32[0];
  v7 = vqtbl1q_s8(*a4, *qword_100005E60);
  v9 = __OFSUB__(a3, 128);
  v8 = a3 - 128 < 0;
  v10 = a3 - 128;
  if (v8 != v9)
  {
    return sub_10000630C(a1, a2, v10, a4, a5, a6, v6);
  }

  else
  {
    return sub_100005EC0(a1, a2, v10, a4, a5, a6, v6);
  }
}

uint64_t sub_100005EC0(_OWORD *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6, int a7)
{
  do
  {
    v8 = vaddq_s64(v7, vaddq_s64(v7, vaddq_s64(v7, vaddq_s64(v7, v8))));
    _Q20 = *a5;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[1];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[2];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[3];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[4];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[5];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[6];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[7];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[8];
    __asm
    {
      AESE            V22.16B, V20.16B
      AESMC           V22.16B, V22.16B
      AESE            V23.16B, V20.16B
      AESMC           V23.16B, V23.16B
      AESE            V24.16B, V20.16B
      AESMC           V24.16B, V24.16B
      AESE            V25.16B, V20.16B
      AESMC           V25.16B, V25.16B
      AESE            V26.16B, V20.16B
      AESMC           V26.16B, V26.16B
      AESE            V27.16B, V20.16B
      AESMC           V27.16B, V27.16B
      AESE            V28.16B, V20.16B
      AESMC           V28.16B, V28.16B
      AESE            V29.16B, V20.16B
      AESMC           V29.16B, V29.16B
    }

    _Q20 = a5[9];
    v167 = a5[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a5[10];
      __asm
      {
        AESE            V22.16B, V20.16B
        AESMC           V22.16B, V22.16B
        AESE            V23.16B, V20.16B
        AESMC           V23.16B, V23.16B
        AESE            V24.16B, V20.16B
        AESMC           V24.16B, V24.16B
        AESE            V25.16B, V20.16B
        AESMC           V25.16B, V25.16B
        AESE            V26.16B, V20.16B
        AESMC           V26.16B, V26.16B
        AESE            V27.16B, V20.16B
        AESMC           V27.16B, V27.16B
        AESE            V28.16B, V20.16B
        AESMC           V28.16B, V28.16B
        AESE            V29.16B, V20.16B
        AESMC           V29.16B, V29.16B
      }

      _Q20 = a5[11];
      v167 = a5[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a5[12];
        __asm
        {
          AESE            V22.16B, V20.16B
          AESMC           V22.16B, V22.16B
          AESE            V23.16B, V20.16B
          AESMC           V23.16B, V23.16B
          AESE            V24.16B, V20.16B
          AESMC           V24.16B, V24.16B
          AESE            V25.16B, V20.16B
          AESMC           V25.16B, V25.16B
          AESE            V26.16B, V20.16B
          AESMC           V26.16B, V26.16B
          AESE            V27.16B, V20.16B
          AESMC           V27.16B, V27.16B
          AESE            V28.16B, V20.16B
          AESMC           V28.16B, V28.16B
          AESE            V29.16B, V20.16B
          AESMC           V29.16B, V29.16B
        }

        _Q20 = a5[13];
        v167 = a5[14];
      }
    }

    v235 = *a1;
    v236 = *(a1 + 1);
    v237 = *(a1 + 2);
    v238 = *(a1 + 3);
    v234 = a1 + 4;
    __asm
    {
      AESE            V22.16B, V20.16B
      AESE            V23.16B, V20.16B
      AESE            V24.16B, V20.16B
      AESE            V25.16B, V20.16B
    }

    v243 = veorq_s8(v235, veorq_s8(_Q22, v167));
    v244 = veorq_s8(v236, veorq_s8(_Q23, v167));
    v245 = veorq_s8(v237, veorq_s8(_Q24, v167));
    v246 = veorq_s8(v238, veorq_s8(_Q25, v167));
    v247 = *v234;
    v248 = *(v234 + 1);
    v249 = *(v234 + 2);
    v250 = *(v234 + 3);
    a1 = v234 + 4;
    __asm
    {
      AESE            V26.16B, V20.16B
      AESE            V27.16B, V20.16B
      AESE            V28.16B, V20.16B
      AESE            V29.16B, V20.16B
    }

    *a2 = v243;
    a2[1] = v244;
    a2[2] = v245;
    a2[3] = v246;
    v255 = a2 + 4;
    *v255 = veorq_s8(v247, veorq_s8(_Q26, v167));
    v255[1] = veorq_s8(v248, veorq_s8(_Q27, v167));
    v255[2] = veorq_s8(v249, veorq_s8(_Q28, v167));
    v255[3] = veorq_s8(v250, veorq_s8(_Q29, v167));
    a2 = v255 + 4;
    _VF = __OFSUB__(a3, 128);
    _NF = a3 - 128 < 0;
    a3 -= 128;
  }

  while (_NF == _VF);
  return sub_10000630C();
}

int8x16_t *sub_10000630C(int8x16_t *result, int8x16_t *a2, uint64_t a3, int8x16_t *a4, int8x16_t *a5, uint64_t a6, int a7)
{
  v10 = a3 < -112;
  for (i = a3 + 112; !v10; i -= 16)
  {
    _Q4 = *a5;
    _Q5 = a5[1];
    _Q6 = a5[2];
    v9 = vaddq_s64(v7, v9);
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a5[3];
    _Q5 = a5[4];
    _Q6 = a5[5];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q4 = a5[6];
    _Q5 = a5[7];
    _Q6 = a5[8];
    __asm
    {
      AESE            V7.16B, V4.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V5.16B
      AESMC           V7.16B, V7.16B
      AESE            V7.16B, V6.16B
      AESMC           V7.16B, V7.16B
    }

    _Q20 = a5[9];
    _Q21 = a5[10];
    if (a7 > 160)
    {
      __asm
      {
        AESE            V7.16B, V20.16B
        AESMC           V7.16B, V7.16B
        AESE            V7.16B, V21.16B
        AESMC           V7.16B, V7.16B
      }

      _Q20 = a5[11];
      _Q21 = a5[12];
      if (a7 > 192)
      {
        __asm
        {
          AESE            V7.16B, V20.16B
          AESMC           V7.16B, V7.16B
          AESE            V7.16B, V21.16B
          AESMC           V7.16B, V7.16B
        }

        _Q20 = a5[13];
        _Q21 = a5[14];
      }
    }

    __asm { AESE            V7.16B, V20.16B }

    v54 = *result++;
    *a2++ = veorq_s8(v54, veorq_s8(_Q7, _Q21));
    v10 = i < 16;
  }

  *a4 = vqtbl1q_s8(v9, v8);
  return result;
}

uint64_t ccec_affine_point_from_x_ws(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v7);
  if ((ccn_cmp_internal(*a2, a4, a2 + 3) & 0x80000000) != 0)
  {
    cczp_to_ws(a1, a2);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_add_ws(a1, a2);
    cczp_add_ws(a1, a2);
    cczp_sub_ws(a1, a2);
    v10 = &a2[2 * *a2];
    cczp_add_ws(a1, a2);
    v11 = *a2;
    result = cczp_sqrt_ws(a1, a2);
    if (!result)
    {
      cczp_from_ws(a1, a2);
      v12 = *a2;
      cczp_from_ws(a1, a2);
      result = 0;
    }
  }

  else
  {
    result = 4294967289;
  }

  *(a1 + 16) = v8;
  return result;
}

uint64_t ccec_mult_default_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, _BYTE *a4, unint64_t a5, uint64_t *a6)
{
  v12 = a2 + 4;
  if (cczp_bitlen(&a2[5 * *a2 + 4]) < a5)
  {
    return 4294967289;
  }

  v58 = a3;
  __src = a4;
  v61 = v12;
  v14 = *a2;
  v15 = (a5 + 63) >> 6;
  v60 = *(a1 + 16);
  v16 = 3 * *a2;
  v17 = (*(a1 + 24))(a1, v16);
  v18 = (*(a1 + 24))(a1, v14);
  v62 = ccn_n(v14, a6) == 0;
  if (a5 + 63 >= 0x40)
  {
    ccn_set((a5 + 63) >> 6, v18, a4);
  }

  ccn_zero(v14 - v15, v18 + 8 * v15);
  v18->i64[v15 - 1] &= 0xFFFFFFFFFFFFFFFFLL >> -a5;
  v57 = (a5 + 63) >> 6;
  v64 = v18;
  ccn_shift_right(v57, v18, v18, v62);
  ccec_double_ws(a1, a2);
  ccn_mux(3 * v14, !v62, v17, a6, v17);
  if (!ccn_n(v14, v17))
  {
LABEL_13:
    result = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  if (cczp_bitlen(&v61[5 * *a2]) >= a5)
  {
    v19 = *a2;
    if (ccn_n(*a2, v17))
    {
      v54 = v16;
      v52 = *(a1 + 16);
      v20 = (*(a1 + 24))(a1, 2 * v19);
      v21 = (*(a1 + 24))(a1, 2 * v19);
      v63 = 2 * v19;
      v22 = (*(a1 + 24))(a1, 2 * v19);
      v23 = *a2;
      v49 = *(a1 + 16);
      __dst = v22;
      (*(a1 + 24))(a1, *a2);
      v56 = v19;
      (*(a1 + 24))(a1, v23);
      (*(a1 + 24))(a1, v23);
      cczp_sqr_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_add_ws(a1, a2);
      v24 = *a2;
      cczp_sqr_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      v25 = *a2;
      cczp_sqr_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_add_ws(a1, a2);
      v53 = v17;
      cczp_mul_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      v26 = a1;
      v27 = a1;
      v28 = v20;
      cczp_sub_ws(v26, a2);
      cczp_mul_ws(v27, a2);
      cczp_sqr_ws(v27, a2);
      cczp_add_ws(v27, a2);
      cczp_sub_ws(v27, a2);
      v29 = v18;
      v30 = *(v18->u64 + (((a5 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8));
      v55 = v27;
      *(v27 + 16) = v49;
      v31 = (v30 >> (a5 - 1)) & 1;
      v32 = !((v30 >> (a5 - 1)) & 1);
      v33 = &v21[v56];
      v34 = a5 - 2;
      if (v34)
      {
        v35 = v31;
        do
        {
          v36 = v31;
          v31 = (*(v29->i64 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v34) & 1;
          cczp_cond_negate(a2, v32, v33, v33);
          ccn_cond_swap(v63, v31 ^ v36 | v35 ^ 1, v28, v21);
          sub_100006D88(v55, a2);
          sub_100006FD8(v55, a2);
          LOBYTE(v32) = v31 & (v35 ^ 1);
          v29 = v18;
          v35 |= v31;
          --v34;
        }

        while (v34);
        v50 = v35 ^ 1;
      }

      else
      {
        v50 = v32;
      }

      cczp_cond_negate(a2, v32, v33, v33);
      ccn_cond_swap(v63, v29->i8[0] & 1 ^ v31, v28, v21);
      sub_100006D88(v55, a2);
      ccn_set(v63, __dst, v21);
      v37 = v29->i64[0];
      ccn_cond_swap(v63, v29->i8[0] & 1, v28, v21);
      v38 = *a2;
      v39 = v28;
      a1 = v55;
      v40 = v58;
      v48 = *(v55 + 16);
      cczp_sub_ws(v55, a2);
      cczp_mul_ws(v55, a2);
      cczp_mul_ws(v55, a2);
      v41 = *a2;
      cczp_mul_ws(v55, a2);
      v42 = *a2;
      cczp_mul_ws(v55, a2);
      cczp_sqr_ws(v55, a2);
      cczp_mul_ws(v55, a2);
      *(v55 + 16) = v48;
      ccn_cond_swap(v63, v37 & 1, v39, v21);
      sub_100006FD8(v55, a2);
      ccn_mux(v63, v37 & 1, v39, v21, v39);
      cczp_mul_ws(v55, a2);
      v43 = *a2;
      cczp_mul_ws(v55, a2);
      v44 = cczp_prime(&v61[5 * *a2]);
      ccn_sub1(v56, __dst, v44, 1uLL);
      v45 = (ccn_cmpn_internal(v57, v64, v56, __dst) & 1) == 0;
      is_point_at_infinity = ccec_is_point_at_infinity(a2, v53);
      ccn_mux(3 * v56, v50 | is_point_at_infinity | v45, v40, v53, v40);
      cczp_cond_negate(a2, v45, &v40[*a2], &v40[*a2]);
      v47 = v50 & ~v64->i32[0];
      ccn_cond_clear(v56, v50 & ~v64->i8[0] & 1, &v58[2 * *a2]);
      ccn_seti(v56, v39, 1);
      cczp_to_ws(v55, a2);
      ccn_mux(v56, v47 & 1, v40, v39, v40);
      ccn_mux(v56, v47 & 1, &v40[*a2], v39, &v40[*a2]);
      *(v55 + 16) = v52;
      ccec_full_add_ws(v55, a2);
      ccn_mux(v54, *__src & v62, v40, v53, v40);
      result = 0;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  result = 4294967289;
LABEL_16:
  *(a1 + 16) = v60;
  return result;
}

uint64_t sub_100006D88(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  (*(a1 + 24))(a1, v4);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sub_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_100006FD8(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v4);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sub_ws(a1, a2);
  *(a1 + 16) = v5;
  return result;
}

unint64_t ccn_addmul1_asm(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t a4)
{
  v4 = 0;
  if (a1)
  {
    v5 = *a3++;
    v4 = (v5 * a4 + *a2) >> 64;
    *a2++ += v5 * a4;
    --a1;
  }

  if ((a1 & 2) != 0)
  {
    v6 = *a3;
    v7 = a3[1];
    a3 += 2;
    v8 = *a2 + __PAIR128__(v7 * a4, v4);
    v9 = v8 + v6 * a4;
    v4 = (__CFADD__(__CFADD__(v8, v6 * a4), *(&v8 + 1)) | __CFADD__((v6 * a4) >> 64, *(&v9 + 1))) + (__CFADD__(__CFADD__(*a2, v4), a2[1]) | __CFADD__(v7 * a4, *(&v8 + 1))) + ((v7 * a4) >> 64);
    *a2 = v9;
    a2 += 2;
    a1 -= 2;
  }

  while (1)
  {
    v10 = a1 < 4;
    a1 -= 4;
    if (v10)
    {
      break;
    }

    v11 = a2[2];
    v12 = a2[3];
    v14 = *a3;
    v15 = a3[1];
    v13 = a3 + 2;
    v16 = *v13;
    v17 = v13[1];
    a3 = v13 + 2;
    v18 = (v15 * a4) >> 64;
    v19 = *a2 + __PAIR128__(v15 * a4, v4);
    v20 = __CFADD__(__CFADD__(__CFADD__(*a2, v4), a2[1]) | __CFADD__(v15 * a4, *(&v19 + 1)), v11);
    v21 = (__CFADD__(__CFADD__(*a2, v4), a2[1]) | __CFADD__(v15 * a4, *(&v19 + 1))) + v11;
    v20 |= __CFADD__(v18, v21);
    v21 += v18;
    v23 = v20;
    v20 = __CFADD__(v20, v12);
    v22 = v23 + v12;
    v20 |= __CFADD__(v17 * a4, v22);
    v22 += v17 * a4;
    v24 = v20 + ((v17 * a4) >> 64);
    v25 = v19 + v14 * a4;
    *a2 = v25;
    v26 = a2 + 2;
    v27 = (v16 * a4) >> 64;
    v29 = __CFADD__(__CFADD__(v19, v14 * a4), *(&v19 + 1)) | __CFADD__((v14 * a4) >> 64, *(&v25 + 1));
    v20 = __CFADD__(v29, v21);
    v28 = v29 + v21;
    v31 = v20 | __CFADD__(v16 * a4, v28);
    v20 = __CFADD__(v31, v22);
    v30 = v31 + v22;
    v4 = (v20 | __CFADD__(v27, v30)) + v24;
    *v26 = v16 * a4 + v28;
    v26[1] = v27 + v30;
    a2 = v26 + 2;
  }

  return v4;
}

unsigned int (**ccec_projectify_jacobian_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int (**a5)(void, unint64_t, uint64_t)))(void, unint64_t, uint64_t)
{
  v5 = a5;
  v9 = *(a1 + 16);
  if (a5)
  {
    v10 = cczp_bitlen(a2);
    ccn_random_bits(v10 - 1, a3 + 16 * *a2, v5);
    v5 = v11;
    ccn_set_bit(a3 + 16 * *a2, v10 - 2, 1);
    v12 = *a2;
    cczp_sqr_ws(a1, a2);
    v13 = *a2;
    cczp_mul_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    v14 = *a2;
    cczp_mul_ws(a1, a2);
  }

  else
  {
    ccn_seti(*a2, (a3 + 16 * *a2), 1);
    cczp_to_ws(a1, a2);
    v16 = *a2;
  }

  cczp_to_ws(a1, a2);
  v15 = *a2;
  cczp_to_ws(a1, a2);
  *(a1 + 16) = v9;
  return v5;
}

uint64_t cc_cmp_safe_internal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v3 |= *(a3 - 1 + a1) ^ *(a2 - 1 + a1);
    --a1;
  }

  while (a1);
  v6 = timingsafe_enable_if_supported();
  v4 = v3 != 0;
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccec_x963_export(int a1, char *a2, uint64_t *a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = ccec_export_pub(a3, a2);
  v7 = v6;
  if (a1 && !v6)
  {
    v8 = *a3;
    v9 = **a3;
    v10 = &a3[3 * v9];
    v11 = (cczp_bitlen(*a3 + 40 * v9 + 32) + 7) >> 3;
    v12 = cczp_bitlen(v8);
    v13 = ccn_write_uint_padded_ct_internal(v9, v10 + 2, v11, &a2[((v12 + 7) >> 2) | 1]);
    v7 = v13 & (v13 >> 31);
  }

  cc_disable_dit_with_sb(&v15);
  return v7;
}

uint64_t ccec_x963_import_priv(unint64_t *a1, unint64_t a2, unsigned __int8 *a3, unint64_t **a4)
{
  v14 = timingsafe_enable_if_supported();
  v8 = cc_malloc_clear(160 * *a1);
  v9 = 20 * *a1;
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = 0;
  v12[3] = cc_ws_alloc;
  v13 = cc_ws_free;
  if (v8)
  {
    v10 = ccec_x963_import_priv_ws(v12, a1, a2, a3, a4);
    v13(v12);
  }

  else
  {
    v10 = 4294967283;
  }

  cc_disable_dit_with_sb(&v14);
  return v10;
}

uint64_t ccec_x963_import_pub_ws(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned __int8 *a4, unint64_t **a5)
{
  if (!a3)
  {
    return 4294967289;
  }

  if (a3 == 1)
  {
    v10 = *a4;
    if (!*a4)
    {
      return 4294967136;
    }
  }

  else
  {
    v10 = *a4;
  }

  v12 = v10 - 2;
  if (v12 > 5 || ((0x37u >> v12) & 1) == 0)
  {
    return 4294967289;
  }

  v13 = dword_10002B5F0[v12];
  v14 = *(a1 + 16);
  *a5 = a2;
  result = ccec_import_affine_point_ws(a1, a2, v13, a3, a4, a5 + 2);
  if (!result)
  {
    ccn_seti(*a2, &a5[2 * **a5 + 2], 1);
    v15 = (*(a1 + 24))(a1, 3 * *a2);
    result = ccec_validate_point_and_projectify_ws(a1, a2, v15, (a5 + 2));
  }

  *(a1 + 16) = v14;
  return result;
}

uint64_t ccec_x963_import_pub(unint64_t *a1, uint64_t a2, unsigned __int8 *a3, unint64_t **a4)
{
  v8 = cc_malloc_clear(160 * *a1);
  v9 = 20 * *a1;
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = 0;
  v12[3] = cc_ws_alloc;
  v13 = cc_ws_free;
  if (!v8)
  {
    return 4294967283;
  }

  v10 = ccec_x963_import_pub_ws(v12, a1, a2, a3, a4);
  v13(v12);
  return v10;
}

uint64_t ccrng_crypto_generate(uint64_t a1, rsize_t a2, char *a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  v7 = a3;
  while (1)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      os_unfair_lock_lock(v8);
      v9 = *(a1 + 24);
      if (v9)
      {
        os_unfair_lock_assert_owner(v9);
      }
    }

    memset(v27, 0, sizeof(v27));
    v10 = *(a1 + 56);
    v11 = ccrng_schedule_read(*(a1 + 16));
    if (v11 == 1)
    {
      goto LABEL_13;
    }

    v12 = v11;
    seed = ccentropy_get_seed(*(a1 + 8), v10, v27);
    if (seed != -10)
    {
      break;
    }

    if (v12 != 2)
    {
      if (v12 == 3)
      {
        v14 = 4294967134;
      }

      else
      {
        v14 = 0xFFFFFFFFLL;
      }

      goto LABEL_36;
    }

LABEL_13:
    if (v6 >= *(a1 + 48))
    {
      v16 = *(a1 + 48);
    }

    else
    {
      v16 = v6;
    }

    v17 = *(a1 + 24);
    if (v17)
    {
      os_unfair_lock_assert_owner(v17);
    }

    if (a2 <= 0xB && (v18 = *(a1 + 64), v18 >= v16))
    {
      v21 = *(a1 + 72);
      v22 = *(a1 + 80);
      v23 = v18 - v22;
      if (v18 - v22 >= v16)
      {
        v24 = v16;
      }

      else
      {
        v24 = v18 - v22;
      }

      memcpy(v7, (v21 + v22), v24);
      cc_clear(v24, (v21 + v22));
      *(a1 + 80) += v24;
      if (v23 < v16)
      {
        v19 = sub_100007A28(a1, *(a1 + 64), *(a1 + 72));
        if (v19)
        {
LABEL_39:
          v14 = v19;
          goto LABEL_36;
        }

        memcpy(&v7[v24], *(a1 + 72), v16 - v24);
        cc_clear(v16 - v24, *(a1 + 72));
        *(a1 + 80) = v16 - v24;
      }
    }

    else
    {
      v19 = sub_100007A28(a1, v16, v7);
      if (v19)
      {
        goto LABEL_39;
      }
    }

    v20 = *(a1 + 24);
    if (v20)
    {
      os_unfair_lock_unlock(v20);
    }

    v7 += v16;
    v6 -= v16;
    if (!v6)
    {
      return 0;
    }
  }

  v14 = seed;
  if (seed)
  {
    goto LABEL_41;
  }

  v15 = sub_100026838(a1, v10, v27, 0, 0);
  if (!v15)
  {
    ccrng_schedule_notify_reseed(*(a1 + 16));
    cc_clear(v10, v27);
    goto LABEL_13;
  }

  v14 = v15;
LABEL_41:
  cc_clear(v10, v27);
LABEL_36:
  v26 = *(a1 + 24);
  if (v26)
  {
    os_unfair_lock_unlock(v26);
  }

  cc_clear(a2, a3);
  return v14;
}

uint64_t ccrng_crypto_init(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a8 > 0x40)
  {
    return 4294967291;
  }

  result = 0;
  *a1 = j__ccrng_crypto_generate;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = a4;
  a1[4] = a5;
  a1[5] = a6;
  a1[6] = a7;
  a1[7] = a8;
  a1[8] = a9;
  a1[9] = a10;
  a1[10] = a9;
  return result;
}

uint64_t sub_100007A28(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  if (v6)
  {
    os_unfair_lock_assert_owner(v6);
  }

  v7 = a1[4];
  v8 = a1[5];

  return ccdrbg_generate(v7, v8, a2, a3, 0, 0);
}

uint64_t cczp_inv_default_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = cczp_n(a2);
  v8 = cczp_prime(v6);
  v9 = v7;
  if ((ccn_cmp_internal(v7, a4, v8) & 0x80000000) == 0)
  {
    return 4294967289;
  }

  __s = a3;
  v11 = v7 << 7;
  v12 = a1;
  v39 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, v7);
  v14 = (*(v12 + 24))(v12, v9);
  v49 = v13;
  cczp_from_ws(a1, v6);
  v15 = cczp_prime(v6);
  ccn_set(v9, v14, v15);
  v16 = (*(v12 + 24))(v12, v9);
  v17 = (*(v12 + 24))(v12, v9);
  v44 = v16;
  ccn_seti(v9, v16, 1);
  __n = 8 * v9;
  v45 = v17;
  cc_clear(8 * v9, v17);
  __src = (*(v12 + 24))(v12, v9);
  if (v11)
  {
    v18 = 0;
    v19 = ((v11 | 0x1EuLL) * 0x842108421084211uLL) >> 64;
    v20 = (v19 + (((v11 | 0x1EuLL) - v19) >> 1)) >> 4;
    if (v20 <= 1)
    {
      v20 = 1;
    }

    v42 = v20;
    v43 = v6;
    v41 = v14;
    do
    {
      v47 = v18;
      v50 = 0;
      v51 = 0;
      ccn_gcd_approximate(v9, v49, &v51, v14, &v50);
      v21 = 0;
      v22 = 0;
      LOBYTE(v23) = v51;
      v24 = 31;
      v25 = 0x80000000;
      v26 = 0x80000000;
      do
      {
        v27 = v23 & 1;
        v28 = -v27;
        v51 >>= 1 - v27;
        v29 = -((((v51 - v50) ^ v51 | v50 ^ v51) ^ v51) >> 63) & -v27;
        v30 = v51 & ~v29 | v50 & v29;
        v50 ^= v51 ^ v30;
        v31 = v26 & ~v29 | v29 & v22;
        v22 ^= v26 ^ v31;
        v32 = v21 & ~v29 | v29 & v25;
        v25 ^= v21 ^ v32;
        v23 = (v30 - (v50 & -v27)) >> v27;
        v51 = v23;
        v26 = (v31 - (v22 & v28)) & 0x8000000000000000 | ((v31 - (v22 & v28)) >> 1);
        v21 = (v32 - (v25 & v28)) & 0x8000000000000000 | ((v32 - (v25 & v28)) >> 1);
        --v24;
      }

      while (v24);
      v33 = v9;
      updated = ccn_gcd_update_ws(a1, v9, __src, v49, (v31 - (v22 & v28)) & 0x8000000000000000 | ((v31 - (v22 & v28)) >> 1), v14, (v32 - (v25 & v28)) & 0x8000000000000000 | ((v32 - (v25 & v28)) >> 1));
      v35 = ccn_gcd_update_ws(a1, v33, v14, v49, v22, v14, v25);
      ccn_set(v33, v49, __src);
      v36 = -updated & -v26;
      v37 = (updated - 1) & v26;
      v6 = v43;
      sub_100007E80(a1, v43, __src, v44, v37 | v36, v45, (updated - 1) & v21 | -updated & -v21);
      v14 = v41;
      sub_100007E80(a1, v43, v45, v44, (v35 - 1) & v22 | -v35 & -v22, v45, (v35 - 1) & v25 | -v35 & -v25);
      v9 = v33;
      ccn_set(v33, v44, __src);
      v18 = v47 + 1;
    }

    while (v47 + 1 != v42);
  }

  if (ccn_n(v9, v14) == 1 && *v14 == 1)
  {
    cczp_to_ws(a1, v6);
    result = 0;
  }

  else
  {
    cc_clear(__n, __s);
    result = 4294967289;
  }

  *(a1 + 16) = v39;
  return result;
}

uint64_t sub_100007E80(uint64_t a1, void *a2, void *a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  v11 = cczp_n(a2);
  v22 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v11 + 1);
  v13 = (*(a1 + 24))(a1, v11);
  cczp_cond_negate(a2, a5 < 0, v12->i64, a4);
  cczp_cond_negate(a2, a7 < 0, v13, a6);
  v12->i64[v11] = ccn_mul1(v11, v12, v12, ((a5 >> 63) - 1) & a5 | -(a5 >> 63) & -a5);
  v12->i64[v11] += ccn_addmul1(v11, v12, v13, ((a7 >> 63) - 1) & a7 | -(a7 >> 63) & -a7);
  v14 = cczp_prime(a2);
  v12->i64[v11] += ccn_addmul1(v11, v12, v14, (LODWORD(a2[*a2 + 3]) * v12->i32[0]) & 0x7FFFFFFF);
  ccn_shift_right(v11 + 1, v12, v12, 31);
  ccn_set(v11, a3, v12);
  v15 = cczp_prime(a2);
  v16 = ccn_subn(v11 + 1, v12, v12->i64, v11, v15);
  result = ccn_mux(v11, v16, a3, a3, v12->i64);
  *(a1 + 16) = v22;
  return result;
}

uint64_t ccn_mul(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result *= -8;
    v4 = (a2 - result);
    v5 = a3 - result;
    v6 = a4 - result;
    v7 = result;
    v8 = result;
    v9 = 0;
    v10 = *(v6 + result);
    do
    {
      v11 = *(v5 + v8) * v10 + v9;
      *(v4 + v8) = v11;
      v9 = *(&v11 + 1);
      v8 += 8;
    }

    while (v8);
    while (1)
    {
      *v4 = v9;
      v7 += 8;
      if (!v7)
      {
        break;
      }

      ++v4;
      v12 = result;
      v9 = 0;
      v13 = *(v6 + v7);
      do
      {
        v14 = *(v5 + v12) * v13 + v9 + *(v4 + v12);
        *(v4 + v12) = v14;
        v9 = *(&v14 + 1);
        v12 += 8;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t ccmode_ctr_init(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 48);
  *a2 = v8;
  v9 = a2 + ((2 * *(v8 + 8) + 14) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = (*(v8 + 16))();
  (*(a1 + 32))(a1, a2, a5);
  return v10;
}

uint64_t ccn_cmpn_public_value(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a1;
  }

  if (a1 >= a3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a4;
  }

  if (a1 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1;
  }

  if (a1 < a3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  v8 = ccn_cmp_public_value(v4, a2, a4);
  if (ccn_n(v6 - v4, v5 + 8 * v4))
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t cczp_sqrt_tonelli_shanks_precomp_ws(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, unint64_t a5, uint64_t a6, void *a7)
{
  v12 = cczp_n(a2);
  v25 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, v12);
  v14 = (*(a1 + 24))(a1, v12);
  v15 = (*(a1 + 24))(a1, v12);
  v16 = (*(a1 + 24))(a1, v12);
  v24 = a4;
  result = cczp_power_fast_ws(a1, a2, a3, a4, a6);
  v18 = v25;
  if (!result)
  {
    ccn_seti(v12, v16, 1);
    v27 = v16;
    cczp_to_ws(a1, a2);
    ccn_set(v12, v15, a7);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    v19 = a5 - 2;
    if (a5 >= 2)
    {
      while (1)
      {
        ccn_set(v12, v14, v13);
        --a5;
        v20 = v19;
        if (a5 < 2)
        {
          break;
        }

        do
        {
          cczp_sqr_ws(a1, a2);
          --v20;
        }

        while (v20);
        v21 = ccn_cmp_internal(v12, v14, v27) & 1;
        cczp_mul_ws(a1, a2);
        ccn_mux(v12, v21, a3, v14, a3);
        cczp_sqr_ws(a1, a2);
        cczp_mul_ws(a1, a2);
        ccn_mux(v12, v21, v13, v14, v13);
        --v19;
      }

      v22 = ccn_cmp_internal(v12, v14, v27) & 1;
      cczp_mul_ws(a1, a2);
      ccn_mux(v12, v22, a3, v14, a3);
      cczp_sqr_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      ccn_mux(v12, v22, v13, v14, v13);
    }

    cczp_sqr_ws(a1, a2);
    if (ccn_cmp_internal(v12, v14, v24))
    {
      result = 4294967289;
    }

    else
    {
      result = 0;
    }

    v18 = v25;
  }

  *(a1 + 16) = v18;
  return result;
}

uint64_t cczp_sqrt_default_ws(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = ~*cczp_prime(a2) & 3;
  v9 = cczp_n(a2);
  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, v9);
  v12 = cczp_prime(a2);
  if (v8)
  {
    ccn_set(v9, v11, v12);
    v11->i64[0] &= ~1uLL;
    v14 = ccn_trailing_zeros(v9, v11);
    ccn_shift_right_multi(v9, v11, v11, v14);
    v15 = (*(a1 + 24))(a1, v9);
    ccn_sub1(v9, v15, v11, 1uLL);
    ccn_shift_right(v9, v15, v15, 1);
    v16 = (*(a1 + 24))(a1, v9);
    ccn_seti(v9, v16, 1);
    while (!cczp_is_quadratic_residue_ws(a1, a2, v16))
    {
      ccn_add1_ws(a1, v9, v16, v16, 1);
    }

    result = cczp_power_fast_ws(a1, a2, v16, v16, v11);
    if (!result)
    {
      result = cczp_sqrt_tonelli_shanks_precomp_ws(a1, a2, a3, a4, v14, v15, v16);
    }
  }

  else
  {
    ccn_add1_ws(a1, v9, v11, v12, 1);
    ccn_shift_right(v9, v11, v11, 2);
    result = cczp_power_fast_ws(a1, a2, a3, a4, v11);
    if (!result)
    {
      cczp_sqr_ws(a1, a2);
      if (ccn_cmp_internal(v9, v11, a4))
      {
        result = 4294967289;
      }

      else
      {
        result = 0;
      }
    }
  }

  *(a1 + 16) = v10;
  return result;
}

BOOL ccec_is_point_projective_ws(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  v6 = (*(a1 + 24))(a1, *a2);
  v7 = (*(a1 + 24))(a1, v4);
  (*(a1 + 24))(a1, v4);
  v8 = *a2;
  cczp_sqr_ws(a1, a2);
  v9 = &a2[2 * *a2];
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  v10 = *a2;
  cczp_sqr_ws(a1, a2);
  result = ccn_cmp_internal(v4, v7, v6) == 0;
  *(a1 + 16) = v5;
  return result;
}

uint64_t ccentropy_get_seed(uint64_t (***a1)(void, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = (**a1)(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

BOOL ccn_add_asm(_BOOL8 result, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = 0;
  if (result)
  {
    if (result)
    {
      v6 = *a3++;
      v5 = v6;
      v7 = *a4++;
      v4 = __CFADD__(v5, v7);
      *a2++ = v5 + v7;
    }

    if (result & 2)
    {
      v8 = *a3;
      v9 = a3[1];
      a3 += 2;
      v10 = *a4;
      v11 = a4[1];
      a4 += 2;
      v13 = v4 + v8;
      v4 = __CFADD__(v4, v8) | __CFADD__(v10, v13);
      v12 = v10 + v13;
      v14 = v4 + v9;
      v4 = __CFADD__(v4, v9) | __CFADD__(v11, v14);
      *a2 = v12;
      a2[1] = v11 + v14;
      a2 += 2;
    }

    v15 = result & 0xFFFFFFFC;
    if (v15)
    {
      v16 = v15 - 4;
      v18 = *a3;
      v19 = a3[1];
      v17 = a3 + 2;
      v21 = *a4;
      v22 = a4[1];
      v20 = a4 + 2;
      v24 = *v17;
      v25 = v17[1];
      v23 = v17 + 2;
      v27 = *v20;
      v28 = v20[1];
      for (i = v20 + 2; v16; i = v38 + 2)
      {
        v30 = v4 + v18;
        v4 = __CFADD__(v4, v18) | __CFADD__(v21, v30);
        v29 = v21 + v30;
        v32 = v4 + v19;
        v4 = __CFADD__(v4, v19) | __CFADD__(v22, v32);
        v31 = v22 + v32;
        v18 = *v23;
        v19 = v23[1];
        v33 = v23 + 2;
        v35 = v4 + v24;
        v4 = __CFADD__(v4, v24) | __CFADD__(v27, v35);
        v34 = v27 + v35;
        *a2 = v29;
        a2[1] = v31;
        v36 = a2 + 2;
        v37 = v4 + v25;
        v4 = __CFADD__(v4, v25) | __CFADD__(v28, v37);
        v21 = *i;
        v22 = i[1];
        v38 = i + 2;
        *v36 = v34;
        v36[1] = v28 + v37;
        a2 = v36 + 2;
        v16 -= 4;
        v24 = *v33;
        v25 = v33[1];
        v23 = v33 + 2;
        v27 = *v38;
        v28 = v38[1];
      }

      v40 = v4 + v18;
      v4 = __CFADD__(v4, v18) | __CFADD__(v21, v40);
      v39 = v21 + v40;
      v42 = v4 + v19;
      v4 = __CFADD__(v4, v19) | __CFADD__(v22, v42);
      v41 = v22 + v42;
      v44 = v4 + v24;
      v4 = __CFADD__(v4, v24) | __CFADD__(v27, v44);
      v43 = v27 + v44;
      v45 = v4 + v25;
      v4 = __CFADD__(v4, v25) | __CFADD__(v28, v45);
      *a2 = v39;
      a2[1] = v41;
      v46 = a2 + 2;
      *v46 = v43;
      v46[1] = v28 + v45;
    }

    return v4;
  }

  return result;
}

BOOL ccn_add1_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (a2)
  {
    return ccn_add1_asm(a2, a3, a4, a5);
  }

  else
  {
    return a5;
  }
}

uint64_t ccn_mux(uint64_t result, char a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = qword_100041F78 ^ (qword_100041F78 << 13) ^ ((qword_100041F78 ^ (qword_100041F78 << 13)) >> 7);
  v6 = v5 ^ (v5 << 17);
  qword_100041F78 = v6;
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * v6)); result; --result)
  {
    v9 = *a4++;
    v8 = v9;
    v10 = *a5++;
    *a3 = v10 ^ v6;
    *a3++ = (v10 ^ v8) & 0x5555555555555555 ^ v10 ^ v6 ^ (v10 ^ v8) & i ^ v6;
  }

  return result;
}

uint64_t ccn_mux_next_mask()
{
  v0 = qword_100041F78 ^ (qword_100041F78 << 13) ^ ((qword_100041F78 ^ (qword_100041F78 << 13)) >> 7);
  result = v0 ^ (v0 << 17);
  qword_100041F78 = result;
  return result;
}

uint64_t cczp_power_fast_ws(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = cczp_n(a2);
  v11 = ccn_bitlen_internal(v10, a5);
  if (v11)
  {
    v12 = v11;
    v17 = *(a1 + 16);
    v13 = (*(a1 + 24))(a1, 3 * v10);
    ccn_set(v10, v13, a4);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    v14 = (*(a5 + (((v12 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v12 - 1)) & 1;
    if ((v12 & 1) == 0)
    {
      v14 = (*(a5 + (((v12 - 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ((v12 - 2) & 0x3E)) & 1 | (2 * v14);
    }

    ccn_set(v10, a3, &v13[8 * (v14 - 1) * v10]);
    if ((v12 | 0xFFFFFFFFFFFFFFFELL) + v12)
    {
      v15 = v12 + (v12 | 0xFFFFFFFFFFFFFFFELL) - 1;
      do
      {
        cczp_sqr_ws(a1, a2);
        cczp_sqr_ws(a1, a2);
        if ((*(a5 + (((v15 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v15 - 1)) & 1 | (2 * ((*(a5 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15) & 1)))
        {
          cczp_mul_ws(a1, a2);
        }

        v15 -= 2;
      }

      while (v15 != -1);
    }

    *(a1 + 16) = v17;
  }

  else
  {
    ccn_seti(v10, a3, 1);
    cczp_to_ws(a1, a2);
  }

  return 0;
}

unint64_t ccn_bitlen_public_value(uint64_t a1, uint64_t *a2)
{
  v2 = 0;
  if (a1)
  {
    v3 = 64;
    do
    {
      v4 = *a2++;
      v2 = (v3 - __clz(v4 | 1)) & -(v4 != 0) | (v4 != 0 ? 0 : v2);
      v3 += 64;
      --a1;
    }

    while (a1);
  }

  return v2;
}

uint64_t ccn_gcd_approximate(uint64_t result, void *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  *a3 = a2[result - 1];
  v5 = a4[result - 1];
  for (*a5 = v5; result != 1; --result)
  {
    v6 = v5 | *a3;
    v7 = __clz(v6 | 1);
    LOBYTE(v6) = v6 != 0 ? ((*a5 | *a3) >> 63) - v7 + 64 : 0;
    *a3 = (a2[result - 2] >> v6) | (*a3 << v7);
    v5 = (a4[result - 2] >> v6) | (*a5 << v7);
    *a5 = v5;
  }

  *a3 = *a3 & 0xFFFFFFFF80000000 | *a2 & 0x7FFFFFFFLL;
  *a5 = *a5 & 0xFFFFFFFF80000000 | *a4 & 0x7FFFFFFFLL;
  return result;
}

unint64_t ccn_gcd_update_ws(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v18 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, a2 + 1);
  v14 = (*(a1 + 24))(a1, a2 + 1);
  if (a2)
  {
    ccn_set(a2, v13, a4);
  }

  ccn_zero(1, v13 + 8 * a2);
  ccn_cond_neg(a2 + 1, a5 < 0, v13->i64, v13->i64);
  if (a2)
  {
    ccn_set(a2, v14, a6);
  }

  ccn_zero(1, &v14[8 * a2]);
  ccn_cond_neg(a2 + 1, a7 < 0, v14, v14);
  ccn_mul1(a2 + 1, v13, v13, ((a5 >> 63) - 1) & a5 | -(a5 >> 63) & -a5);
  ccn_addmul1(a2 + 1, v13, v14, ((a7 >> 63) - 1) & a7 | -(a7 >> 63) & -a7);
  v15 = v13->i64[a2] >> 63;
  ccn_cond_neg(a2 + 1, v13->i64[a2] < 0, v13->i64, v13->i64);
  ccn_shift_right(a2 + 1, v13, v13, 31);
  ccn_set(a2, a3, v13);
  *(a1 + 16) = v18;
  return v15;
}

uint64_t ccn_divmod_ws(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v12 = ccn_n(a6, a8);
  v13 = a2 - v12;
  v45 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, v12 + 1);
  v15 = (*(a1 + 24))(a1, v12 + 1);
  v52 = a1;
  v16 = (*(a1 + 24))(a1, v12 + 1);
  v14[v12] = 0;
  v51 = v12 - 1;
  v17 = __clz(*(a8 + 8 * (v12 - 1)));
  ccn_shift_left(v12, v14, a8, v17, v18);
  v53 = v17;
  if (v12)
  {
    ccn_set(v12, v15, (a3 + 8 * v13));
  }

  v47 = -(v17 != 0);
  v48 = -v17 & 0x3F;
  ccn_zero(1, v15 + 8 * v12);
  ccn_shift_left(v12 + 1, v15, v15, v17, v19);
  v20 = 0;
  v21 = 0;
  v22 = v14[v51];
  v23 = v22 != 0x8000000000000000;
  v24 = -v22;
  v26 = -__PAIR128__(v25, v22) >> 64;
  v27 = 65;
  do
  {
    v28 = ((((__PAIR128__(v26, v24) - __PAIR128__(v22, v21)) >> 64) ^ v26 | v22 ^ v26) ^ v26) >> 63;
    v29 = v28-- != 0;
    v26 = (__PAIR128__(v26, v24) - __PAIR128__(v29 ? 0 : v22, v28 & v21)) >> 64;
    v24 -= v28 & v21;
    v20 = v28 & 1 | (2 * v20);
    *(&v30 + 1) = v22;
    *&v30 = v21;
    v21 = v30 >> 1;
    v22 >>= 1;
    --v27;
  }

  while (v27);
  v50 = v23 ? v20 + 2 : -1;
  v31 = (a3 - 8 * v12 + 8 * a2);
  v32 = a2 - v12;
  do
  {
    v33 = v13;
    v34 = *v31 << v53;
    v15->i64[0] = v34;
    if (v32)
    {
      v15->i64[0] = ((*(v31 - 1) & v47) >> v48) | v34;
    }

    v35 = v15->i64[v12];
    v36 = v15->i64[v51];
    v56 = v14[v51];
    v37 = v35 + ((v35 * v50) >> 64) - ((((v36 - v56) ^ v36 | v56 ^ v36) ^ v36) >> 63) + 2;
    v55 = v37 | -((((((v35 * v50) >> 64) - ((((v36 - v56) ^ v36 | v56 ^ v36) ^ v36) >> 63) + 2) ^ v37 | v37 ^ v35) ^ v37) >> 63);
    v58[0] = 0;
    v58[1] = 0;
    ccn_mul(1, v58, &v55, &v56);
    v57[0] = v36;
    v57[1] = v35;
    v38 = ccn_sub_ws(0, 2, v58, v57, v58);
    v55 -= 2 * v38;
    v39 = ccn_add1_ws(0, 2, v58, v58, v56);
    v40 = v55 + v39;
    v16[v12] = ccn_mul1(v12, v16, v14, v55 + v39);
    v41 = ccn_sub_ws(v52, v12 + 1, v15, v15->i64, v16);
    v42 = v41 - ccn_cond_add(v12 + 1, v41, v15->i64, v15->i64, v14);
    result = ccn_cond_add(v12 + 1, v42, v15->i64, v15->i64, v14);
    if (a5 && v32 < a4)
    {
      *(a5 + 8 * v32) = v40 - (v41 + v42);
    }

    if (v32)
    {
      result = memmove(&v15->u64[1], v15, 8 * v12);
    }

    --v32;
    --v31;
    v13 = v33;
  }

  while (v32 <= v33);
  if (a5 && a4 > v33 + 1)
  {
    result = cc_clear(8 * (a4 - (v33 + 1)), (a5 + 8 * (v33 + 1)));
  }

  if (a7)
  {
    ccn_shift_right(v12, v15, v15, v53);
    if (v12)
    {
      ccn_set(v12, a7, v15);
    }

    result = ccn_zero(a6 - v12, &a7[8 * v12]);
  }

  *(v52 + 16) = v45;
  return result;
}

uint64_t ccmode_ctr_setctr(int a1, void *a2, void *__src)
{
  v4 = *(*a2 + 8);
  a2[1] = v4;
  memcpy(a2 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, __src, v4);
  return 0;
}

uint64_t ccn_read_uint_public_value(unint64_t a1, void *a2, unint64_t a3, unsigned __int8 *a4)
{
  v4 = 8 * a1;
  if (a3 > 8 * a1)
  {
    v5 = 0;
    v6 = a3 - v4;
    v7 = a4;
    do
    {
      v8 = *v7++;
      v5 |= v8;
      --a3;
    }

    while (a3 > v4);
    if (v5)
    {
      return 4294967289;
    }

    a4 += v6;
    a3 = 8 * a1;
  }

  v10 = &a4[a3];
  v11 = a3 - 8;
  if (a3 < 8)
  {
    v12 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v12 = (v11 >> 3) + 1;
  a3 = v11 - 8 * (v11 >> 3);
  v13 = a2;
  v14 = v12;
  do
  {
    v15 = *(v10 - 1);
    v10 -= 8;
    *v13++ = bswap64(v15);
    --v14;
  }

  while (v14);
  if (a3)
  {
LABEL_13:
    v16 = 0;
    v17 = -a3;
    do
    {
      v16 = v10[v17] | (v16 << 8);
    }

    while (!__CFADD__(v17++, 1));
    a2[v12++] = v16;
  }

LABEL_17:
  if (v12 < a1)
  {
    bzero(&a2[v12], v4 - 8 * v12);
  }

  return 0;
}

uint64_t ccrng_process_atfork_prepare(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 52);
  ccrng_schedule_atomic_flag_set(&a1[42]);
  return 0;
}

uint64_t ccn_shift_right(uint64_t result, int8x16_t *a2, int8x16_t *a3, uint64_t a4)
{
  if (result)
  {
    return ccn_shift_right_asm(result, a2, a3, a4);
  }

  return result;
}

uint64_t ccn_shift_right_multi(uint64_t a1, int8x16_t *a2, int8x16_t *a3, unint64_t a4)
{
  result = ccn_shift_right(a1, a2, a3, a4 & 0x3F);
  if (a1)
  {
    v8 = 0;
    do
    {
      v9 = 0;
      v10 = a4 >> 6;
      v11 = v8;
      do
      {
        v13 = v10-- != 0;
        v9 |= v13 ? 0 : a2->i64[v11++];
      }

      while (a1 != v11);
      a2->i64[v8++] = v9;
    }

    while (v8 != a1);
  }

  return result;
}

BOOL ccn_sub_asm(_BOOL8 result, void *a2, uint64_t *a3, unint64_t *a4)
{
  v4 = 1;
  if (result)
  {
    if (result)
    {
      v6 = *a3++;
      v5 = v6;
      v7 = *a4++;
      v4 = v5 >= v7;
      *a2++ = v5 - v7;
    }

    if (result & 2)
    {
      v8 = *a3;
      v9 = a3[1];
      a3 += 2;
      v10 = *a4;
      v11 = a4[1];
      a4 += 2;
      v13 = v4;
      v4 = __CFSUB__(v8, v10, v4);
      v12 = v8 - (v10 + !v13);
      v14 = v4;
      v4 = __CFSUB__(v9, v11, v4);
      *a2 = v12;
      a2[1] = v9 - (v11 + !v14);
      a2 += 2;
    }

    v15 = result & 0xFFFFFFFC;
    if (v15)
    {
      v16 = v15 - 4;
      v18 = *a3;
      v19 = a3[1];
      v17 = a3 + 2;
      v21 = *a4;
      v22 = a4[1];
      v20 = (a4 + 2);
      v24 = *v17;
      v25 = v17[1];
      v23 = v17 + 2;
      v27 = *v20;
      v28 = v20[1];
      for (i = v20 + 2; v16; i = v38 + 2)
      {
        v30 = v4;
        v4 = __CFSUB__(v18, v21, v4);
        v29 = v18 - (v21 + !v30);
        v32 = v4;
        v4 = __CFSUB__(v19, v22, v4);
        v31 = v19 - (v22 + !v32);
        v18 = *v23;
        v19 = v23[1];
        v33 = v23 + 2;
        v35 = v4;
        v4 = __CFSUB__(v24, v27, v4);
        v34 = v24 - (v27 + !v35);
        *a2 = v29;
        a2[1] = v31;
        v36 = a2 + 2;
        v37 = v4;
        v4 = __CFSUB__(v25, v28, v4);
        v21 = *i;
        v22 = i[1];
        v38 = i + 2;
        *v36 = v34;
        v36[1] = v25 - (v28 + !v37);
        a2 = v36 + 2;
        v16 -= 4;
        v24 = *v33;
        v25 = v33[1];
        v23 = v33 + 2;
        v27 = *v38;
        v28 = v38[1];
      }

      v40 = v4;
      v4 = __CFSUB__(v18, v21, v4);
      v39 = v18 - (v21 + !v40);
      v42 = v4;
      v4 = __CFSUB__(v19, v22, v4);
      v41 = v19 - (v22 + !v42);
      v44 = v4;
      v4 = __CFSUB__(v24, v27, v4);
      v43 = v24 - (v27 + !v44);
      v45 = v4;
      v4 = __CFSUB__(v25, v28, v4);
      *a2 = v39;
      a2[1] = v41;
      v46 = a2 + 2;
      *v46 = v43;
      v46[1] = v25 - (v28 + !v45);
    }

    return !v4;
  }

  return result;
}

unint64_t ccn_sub1(uint64_t a1, void *a2, unint64_t *a3, unint64_t a4)
{
  for (; a1; --a1)
  {
    v4 = *a3++;
    v5 = v4 - a4;
    *a2++ = v5;
    a4 = *(&v5 + 1) >> 63;
  }

  return a4;
}

uint64_t ccn_write_uint_padded_ct_internal(uint64_t a1, uint64_t *a2, unint64_t a3, char *__s)
{
  if (a3 > 0x7FFFFFFE)
  {
    return 4294967289;
  }

  v6 = 8 * a1;
  if ((8 * a1) > 0x7FFFFFFE)
  {
    return 4294967289;
  }

  v7 = __s;
  v8 = a3;
  v10 = a3 - v6;
  if (a3 <= v6)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    cc_clear(a3 - v6, __s);
    v7 += v10;
    v8 = v6;
  }

  v11 = ccn_bitlen_public_value(a1, a2);
  if (v8 < (v11 + 7) >> 3)
  {
    return 4294967289;
  }

  result = v10 + v8 - ((v11 + 7) >> 3);
  v12 = &v7[v8];
  v13 = v8 - 8;
  if (v8 < 8)
  {
    v14 = 0;
    if (!v8)
    {
      return result;
    }

    goto LABEL_16;
  }

  v14 = (v13 >> 3) + 1;
  v8 = v13 - 8 * (v13 >> 3);
  v15 = a2;
  v16 = v14;
  do
  {
    v17 = *v15++;
    *(v12 - 1) = bswap64(v17);
    v12 -= 8;
    --v16;
  }

  while (v16);
  if (v8)
  {
LABEL_16:
    v18 = a2[v14];
    v19 = v12 - 1;
    do
    {
      *v19-- = v18;
      v18 >>= 8;
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t ccn_write_uint_public_value(unint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  result = ccn_bitlen_public_value(a1, a2);
  v9 = (result + 7) >> 3;
  if (v9 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = (result + 7) >> 3;
  }

  v11 = a4 + v10;
  v12 = v9 - v10;
  v13 = v12 >> 3;
  v14 = v12 & 7;
  v15 = a2[v12 >> 3] >> (8 * (v12 & 7u));
  if (v10 >= 8)
  {
    do
    {
      v16 = v10 - 8;
      v17 = v14 - 8;
      do
      {
        *--v11 = v15;
        v15 >>= 8;
      }

      while (!__CFADD__(v17++, 1));
      if (v13 + 1 < a1)
      {
        v15 = a2[++v13];
      }

      v10 = v16 + v14;
      v14 = 0;
    }

    while (v10 > 7);
  }

  if (v10)
  {
    v19 = (v11 - 1);
    do
    {
      *v19-- = v15;
      v15 >>= 8;
      --v10;
    }

    while (v10);
  }

  return result;
}

BOOL ccn_add1_asm(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (!a1)
  {
    return a4;
  }

  v5 = *a3;
  v4 = a3 + 1;
  v6 = __CFADD__(v5, a4);
  *a2 = v5 + a4;
  for (i = a2 + 1; --a1; ++i)
  {
    v8 = *v4++;
    v9 = v6;
    v6 = __CFADD__(v6, v8);
    *i = v9 + v8;
  }

  return v6;
}

uint64_t ccn_cond_neg(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  result = ccn_mux_next_mask();
  v9 = __ROR8__(0x5555555555555555, a2 | (2 * result));
  if (a1)
  {
    v10 = 1;
    do
    {
      v12 = *a4++;
      v11 = v12;
      v13 = v10 + ~v12;
      v10 = __CFADD__(v10, ~v12);
      v14 = v11 ^ v13;
      v15 = v11 ^ result;
      *a3 = v15;
      *a3++ = v14 & v9 ^ v14 & 0x5555555555555555 ^ v15 ^ result;
      --a1;
    }

    while (a1);
  }

  return result;
}

BOOL ccec_validate_pub(uint64_t **a1)
{
  v19 = timingsafe_enable_if_supported();
  v2 = *a1;
  v3 = **a1;
  v4 = sizeof_cc_unit();
  v5 = 5 * v3 + (v4 + 7) / v4 + 3;
  if (v5 <= 7 * v3)
  {
    v5 = 7 * v3;
  }

  v6 = cc_malloc_clear(8 * (v5 + 3 * v3));
  v15[0] = v6;
  v7 = *v2;
  v8 = sizeof_cc_unit();
  v9 = 5 * v7 + (v8 + 7) / v8 + 3;
  if (v9 <= 7 * v7)
  {
    v9 = 7 * v7;
  }

  v15[1] = v9 + 3 * v7;
  v16 = 0;
  v17 = cc_ws_alloc;
  v18 = cc_ws_free;
  if (v6)
  {
    v10 = *a1;
    v11 = cc_ws_alloc(v15, 3 * **a1);
    v12 = ccec_validate_point_and_projectify_ws(v15, v10, v11, (a1 + 2));
    v16 = 0;
    v18(v15);
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  cc_disable_dit_with_sb(&v19);
  return v13;
}

unint64_t ccn_subn(uint64_t a1, void *a2, uint64_t *a3, _BOOL8 a4, unint64_t *a5)
{
  v5 = a1 - a4;
  v6 = &a2[a4];
  v7 = &a3[a4];
  v8 = ccn_sub_ws(0, a4, a2, a3, a5);

  return ccn_sub1(v5, v6, v7, v8);
}

int32x4_t *AccelerateCrypto_SHA256_compress(int32x4_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v4 = *a3;
    v5 = a3[1];
    v6 = a3[2];
    v7 = a3[3];
    v3 = a3 + 4;
    _Q1 = vrev32q_s8(v5);
    v9 = *result;
    _Q2 = vrev32q_s8(v6);
    _Q17 = result[1];
    _Q3 = vrev32q_s8(v7);
    _Q18 = *result;
    _Q4 = vaddq_s32(vrev32q_s8(v4), xmmword_100009BD0);
    _Q5 = vaddq_s32(_Q1, xmmword_100009BE0);
    _Q19 = _Q17;
    _Q6 = vaddq_s32(_Q2, xmmword_100009BF0);
    _Q7 = vaddq_s32(_Q3, xmmword_100009C00);
    v19 = &xmmword_100009C10;
    v20 = 3;
    do
    {
      _Q20 = _Q18;
      v22 = *v19;
      __asm { SHA256SU0       V0.4S, V1.4S }

      v28 = v19[1];
      __asm { SHA256H         Q18, Q19, V4.4S }

      v30 = v19[2];
      __asm { SHA256SU1       V0.4S, V2.4S, V3.4S }

      v32 = v19[3];
      __asm { SHA256H2        Q19, Q20, V4.4S }

      v19 += 4;
      _Q4 = vaddq_s32(_Q0, v22);
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V1.4S, V2.4S
        SHA256H         Q18, Q19, V5.4S
        SHA256SU1       V1.4S, V3.4S, V0.4S
        SHA256H2        Q19, Q20, V5.4S
      }

      _Q5 = vaddq_s32(_Q1, v28);
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V2.4S, V3.4S
        SHA256H         Q18, Q19, V6.4S
        SHA256SU1       V2.4S, V0.4S, V1.4S
        SHA256H2        Q19, Q20, V6.4S
      }

      _Q6 = vaddq_s32(_Q2, v30);
      --v20;
      _Q20 = _Q18;
      __asm
      {
        SHA256SU0       V3.4S, V0.4S
        SHA256H         Q18, Q19, V7.4S
        SHA256SU1       V3.4S, V1.4S, V2.4S
        SHA256H2        Q19, Q20, V7.4S
      }

      _Q7 = vaddq_s32(_Q3, v32);
    }

    while (!(_NF ^ _VF | _ZF));
    v44 = a2 <= 1;
    v45 = a2 - 1;
    if (!v44)
    {
      v46 = (v19 - 16);
      do
      {
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V4.4S }

        v49 = v3[1];
        v50 = v3[2];
        __asm { SHA256H2        Q19, Q20, V4.4S }

        v52 = v3[3];
        _Q4 = vaddq_s32(vrev32q_s8(*v3), *v46);
        _Q20 = _Q18;
        v3 += 4;
        __asm { SHA256H         Q18, Q19, V5.4S }

        _Q1 = vrev32q_s8(v49);
        __asm { SHA256H2        Q19, Q20, V5.4S }

        _Q5 = vaddq_s32(_Q1, v46[1]);
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V6.4S }

        _Q2 = vrev32q_s8(v50);
        __asm { SHA256H2        Q19, Q20, V6.4S }

        _Q6 = vaddq_s32(_Q2, v46[2]);
        _Q20 = _Q18;
        __asm { SHA256H         Q18, Q19, V7.4S }

        _Q3 = vrev32q_s8(v52);
        __asm { SHA256H2        Q19, Q20, V7.4S }

        _Q7 = vaddq_s32(_Q3, v46[3]);
        v9 = vaddq_s32(v9, _Q18);
        _Q17 = vaddq_s32(_Q17, _Q19);
        _Q20 = v9;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[4]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[5]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[6]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[7]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[8]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[9]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[10]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[11]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V0.4S, V1.4S
          SHA256H         Q18, Q19, V4.4S
          SHA256SU1       V0.4S, V2.4S, V3.4S
          SHA256H2        Q19, Q20, V4.4S
        }

        _Q4 = vaddq_s32(_Q0, v46[12]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V1.4S, V2.4S
          SHA256H         Q18, Q19, V5.4S
          SHA256SU1       V1.4S, V3.4S, V0.4S
          SHA256H2        Q19, Q20, V5.4S
        }

        _Q5 = vaddq_s32(_Q1, v46[13]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V2.4S, V3.4S
          SHA256H         Q18, Q19, V6.4S
          SHA256SU1       V2.4S, V0.4S, V1.4S
          SHA256H2        Q19, Q20, V6.4S
        }

        _Q6 = vaddq_s32(_Q2, v46[14]);
        _Q20 = _Q18;
        __asm
        {
          SHA256SU0       V3.4S, V0.4S
          SHA256H         Q18, Q19, V7.4S
          SHA256SU1       V3.4S, V1.4S, V2.4S
          SHA256H2        Q19, Q20, V7.4S
        }

        _Q7 = vaddq_s32(_Q3, v46[15]);
        v44 = v45-- <= 1;
      }

      while (!v44);
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V4.4S
      SHA256H2        Q19, Q20, V4.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V5.4S
      SHA256H2        Q19, Q20, V5.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V6.4S
      SHA256H2        Q19, Q20, V6.4S
    }

    _Q20 = _Q18;
    __asm
    {
      SHA256H         Q18, Q19, V7.4S
      SHA256H2        Q19, Q20, V7.4S
    }

    *result = vaddq_s32(v9, _Q18);
    result[1] = vaddq_s32(_Q17, _Q19);
  }

  return result;
}

int8x16_t gcm_init(int8x16_t *a1, int8x16_t *a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8)
{
  v8 = vqtbl1q_s8(*a2, *qword_10000A640);
  v9 = veorq_s8(a8, a8);
  v10 = veorq_s8(vandq_s8(vextq_s8(*&qword_10000A640[2], *&qword_10000A640[2], 8uLL), vshrq_n_s32(vdupq_laneq_s32(v8, 3), 0x1FuLL)), vorrq_s8(vextq_s8(v9, vshrq_n_u64(v8, 0x3FuLL), 8uLL), vshlq_n_s64(v8, 1uLL)));
  *a1 = v10;
  a1[8] = veorq_s8(v10, vextq_s8(v10, v10, 8uLL));
  v11 = vmull_high_p64(v10, v10);
  v12 = vmull_p64(v10.u64[0], v10.u64[0]);
  v13 = veorq_s8(v12, veorq_s8(v11, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0])));
  v14 = veorq_s8(vextq_s8(v9, v13, 8uLL), v12);
  v15 = veorq_s8(vextq_s8(v14, v14, 8uLL), vmull_p64(0xC200000000000000, v14.u64[0]));
  v16 = veorq_s8(veorq_s8(vextq_s8(v13, v9, 8uLL), v11), veorq_s8(vextq_s8(v15, v15, 8uLL), vmull_p64(0xC200000000000000, v15.u64[0])));
  a1[1] = v16;
  a1[9] = veorq_s8(v16, vextq_s8(v16, v16, 8uLL));
  v13.i64[0] = veorq_s8(v16, vextq_s8(v16, v16, 8uLL)).u64[0];
  v17 = vmull_high_p64(v16, v10);
  v18 = vmull_p64(v16.u64[0], v10.u64[0]);
  v19 = veorq_s8(v18, veorq_s8(v17, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v13.u64[0])));
  v20 = veorq_s8(vextq_s8(v9, v19, 8uLL), v18);
  v21 = veorq_s8(vextq_s8(v20, v20, 8uLL), vmull_p64(0xC200000000000000, v20.u64[0]));
  v22 = veorq_s8(veorq_s8(vextq_s8(v19, v9, 8uLL), v17), veorq_s8(vextq_s8(v21, v21, 8uLL), vmull_p64(0xC200000000000000, v21.u64[0])));
  a1[2] = v22;
  a1[10] = veorq_s8(v22, vextq_s8(v22, v22, 8uLL));
  v19.i64[0] = veorq_s8(v22, vextq_s8(v22, v22, 8uLL)).u64[0];
  v23 = vmull_high_p64(v22, v10);
  v24 = vmull_p64(v22.u64[0], v10.u64[0]);
  v25 = veorq_s8(v24, veorq_s8(v23, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v19.u64[0])));
  v26 = veorq_s8(vextq_s8(v9, v25, 8uLL), v24);
  v27 = veorq_s8(vextq_s8(v26, v26, 8uLL), vmull_p64(0xC200000000000000, v26.u64[0]));
  v28 = veorq_s8(veorq_s8(vextq_s8(v25, v9, 8uLL), v23), veorq_s8(vextq_s8(v27, v27, 8uLL), vmull_p64(0xC200000000000000, v27.u64[0])));
  a1[3] = v28;
  a1[11] = veorq_s8(v28, vextq_s8(v28, v28, 8uLL));
  v25.i64[0] = veorq_s8(v28, vextq_s8(v28, v28, 8uLL)).u64[0];
  v29 = vmull_high_p64(v28, v10);
  v30 = vmull_p64(v28.u64[0], v10.u64[0]);
  v31 = veorq_s8(v30, veorq_s8(v29, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v25.u64[0])));
  v32 = veorq_s8(vextq_s8(v9, v31, 8uLL), v30);
  v33 = veorq_s8(vextq_s8(v32, v32, 8uLL), vmull_p64(0xC200000000000000, v32.u64[0]));
  v34 = veorq_s8(veorq_s8(vextq_s8(v31, v9, 8uLL), v29), veorq_s8(vextq_s8(v33, v33, 8uLL), vmull_p64(0xC200000000000000, v33.u64[0])));
  a1[4] = v34;
  a1[12] = veorq_s8(v34, vextq_s8(v34, v34, 8uLL));
  v31.i64[0] = veorq_s8(v34, vextq_s8(v34, v34, 8uLL)).u64[0];
  v35 = vmull_high_p64(v34, v10);
  v36 = vmull_p64(v34.u64[0], v10.u64[0]);
  v37 = veorq_s8(v36, veorq_s8(v35, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v31.u64[0])));
  v38 = veorq_s8(vextq_s8(v9, v37, 8uLL), v36);
  v39 = veorq_s8(vextq_s8(v38, v38, 8uLL), vmull_p64(0xC200000000000000, v38.u64[0]));
  v40 = veorq_s8(veorq_s8(vextq_s8(v37, v9, 8uLL), v35), veorq_s8(vextq_s8(v39, v39, 8uLL), vmull_p64(0xC200000000000000, v39.u64[0])));
  a1[5] = v40;
  a1[13] = veorq_s8(v40, vextq_s8(v40, v40, 8uLL));
  v37.i64[0] = veorq_s8(v40, vextq_s8(v40, v40, 8uLL)).u64[0];
  v41 = vmull_high_p64(v40, v10);
  v42 = vmull_p64(v40.u64[0], v10.u64[0]);
  v43 = veorq_s8(v42, veorq_s8(v41, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v37.u64[0])));
  v44 = veorq_s8(vextq_s8(v9, v43, 8uLL), v42);
  v45 = veorq_s8(vextq_s8(v44, v44, 8uLL), vmull_p64(0xC200000000000000, v44.u64[0]));
  v46 = veorq_s8(veorq_s8(vextq_s8(v43, v9, 8uLL), v41), veorq_s8(vextq_s8(v45, v45, 8uLL), vmull_p64(0xC200000000000000, v45.u64[0])));
  a1[6] = v46;
  a1[14] = veorq_s8(v46, vextq_s8(v46, v46, 8uLL));
  v43.i64[0] = veorq_s8(v46, vextq_s8(v46, v46, 8uLL)).u64[0];
  v47 = vmull_high_p64(v46, v10);
  v48 = vmull_p64(v46.u64[0], v10.u64[0]);
  v49 = veorq_s8(v48, veorq_s8(v47, vmull_p64(veorq_s8(v10, vextq_s8(v10, v10, 8uLL)).u64[0], v43.u64[0])));
  v50 = veorq_s8(vextq_s8(v9, v49, 8uLL), v48);
  v51 = veorq_s8(vextq_s8(v50, v50, 8uLL), vmull_p64(0xC200000000000000, v50.u64[0]));
  result = veorq_s8(veorq_s8(vextq_s8(v49, v9, 8uLL), v47), veorq_s8(vextq_s8(v51, v51, 8uLL), vmull_p64(0xC200000000000000, v51.u64[0])));
  a1[7] = result;
  a1[15] = veorq_s8(result, vextq_s8(result, result, 8uLL));
  return result;
}

int8x16_t gcm_gmult(int8x16_t *a1, uint64x2_t *a2, int8x16_t *a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  v9 = vqtbl1q_s8(*a1, *qword_10000A640);
  v10 = veorq_s8(a9, a9);
  v11 = veorq_s8(v9, vextq_s8(v9, v9, 8uLL)).u64[0];
  v12 = vmull_high_p64(v9, *a2);
  v13 = vmull_p64(v9.u64[0], a2->i64[0]);
  v14 = veorq_s8(v13, veorq_s8(v12, vmull_p64(veorq_s8(*a2, vextq_s8(*a2, *a2, 8uLL)).u64[0], v11)));
  v15 = veorq_s8(vextq_s8(v10, v14, 8uLL), v13);
  v16 = veorq_s8(vextq_s8(v15, v15, 8uLL), vmull_p64(0xC200000000000000, v15.u64[0]));
  result = vqtbl1q_s8(veorq_s8(veorq_s8(vextq_s8(v14, v10, 8uLL), v12), veorq_s8(vextq_s8(v16, v16, 8uLL), vmull_p64(0xC200000000000000, v16.u64[0]))), *qword_10000A640);
  *a3 = result;
  return result;
}

int8x16_t gcm_ghash(int8x16_t *a1, uint64x2_t *a2, int8x16_t *a3, uint64_t a4)
{
  v5 = veorq_s8(v4, v4);
  v6 = vqtbl1q_s8(*a1, *qword_10000A640);
  v7 = a4 < 128;
  for (i = a4 - 128; !v7; i -= 128)
  {
    v9 = vqtbl1q_s8(a3[7], *qword_10000A640);
    v10 = vmull_p64(a2->i64[0], v9.u64[0]);
    v11 = vmull_high_p64(*a2, v9);
    v12 = vmull_p64(a2[8].u64[0], veorq_s8(v9, vextq_s8(v9, v9, 8uLL)).u64[0]);
    v13 = vqtbl1q_s8(a3[6], *qword_10000A640);
    v14 = a2[1];
    v15 = veorq_s8(v10, vmull_p64(v14.u64[0], v13.u64[0]));
    v16 = veorq_s8(v11, vmull_high_p64(v14, v13));
    v17 = veorq_s8(v12, vmull_p64(a2[9].u64[0], veorq_s8(v13, vextq_s8(v13, v13, 8uLL)).u64[0]));
    v18 = vqtbl1q_s8(a3[5], *qword_10000A640);
    v19 = a2[2];
    v20 = veorq_s8(v15, vmull_p64(v19.u64[0], v18.u64[0]));
    v21 = veorq_s8(v16, vmull_high_p64(v19, v18));
    v22 = veorq_s8(v17, vmull_p64(a2[10].u64[0], veorq_s8(v18, vextq_s8(v18, v18, 8uLL)).u64[0]));
    v23 = vqtbl1q_s8(a3[4], *qword_10000A640);
    v24 = a2[3];
    v25 = veorq_s8(v20, vmull_p64(v24.u64[0], v23.u64[0]));
    v26 = veorq_s8(v21, vmull_high_p64(v24, v23));
    v27 = veorq_s8(v22, vmull_p64(a2[11].u64[0], veorq_s8(v23, vextq_s8(v23, v23, 8uLL)).u64[0]));
    v28 = vqtbl1q_s8(a3[3], *qword_10000A640);
    v29 = a2[4];
    v30 = veorq_s8(v25, vmull_p64(v29.u64[0], v28.u64[0]));
    v31 = veorq_s8(v26, vmull_high_p64(v29, v28));
    v32 = veorq_s8(v27, vmull_p64(a2[12].u64[0], veorq_s8(v28, vextq_s8(v28, v28, 8uLL)).u64[0]));
    v33 = vqtbl1q_s8(a3[2], *qword_10000A640);
    v34 = a2[5];
    v35 = veorq_s8(v30, vmull_p64(v34.u64[0], v33.u64[0]));
    v36 = veorq_s8(v31, vmull_high_p64(v34, v33));
    v37 = veorq_s8(v32, vmull_p64(a2[13].u64[0], veorq_s8(v33, vextq_s8(v33, v33, 8uLL)).u64[0]));
    v38 = vqtbl1q_s8(a3[1], *qword_10000A640);
    v39 = a2[6];
    v40 = veorq_s8(v35, vmull_p64(v39.u64[0], v38.u64[0]));
    v41 = veorq_s8(v36, vmull_high_p64(v39, v38));
    v42 = veorq_s8(v37, vmull_p64(a2[14].u64[0], veorq_s8(v38, vextq_s8(v38, v38, 8uLL)).u64[0]));
    v43 = a2[7];
    v44 = veorq_s8(vqtbl1q_s8(*a3, *qword_10000A640), v6);
    v45 = veorq_s8(v40, vmull_p64(v43.u64[0], v44.u64[0]));
    v46 = veorq_s8(v41, vmull_high_p64(v43, v44));
    v47 = veorq_s8(v46, veorq_s8(v45, veorq_s8(v42, vmull_p64(a2[15].u64[0], veorq_s8(v44, vextq_s8(v44, v44, 8uLL)).u64[0]))));
    v48 = veorq_s8(v45, vextq_s8(v5, v47, 8uLL));
    v49 = veorq_s8(vmull_p64(0xC200000000000000, v48.u64[0]), vextq_s8(v48, v48, 8uLL));
    v6 = veorq_s8(veorq_s8(v46, vextq_s8(v47, v5, 8uLL)), veorq_s8(vmull_p64(0xC200000000000000, v49.u64[0]), vextq_s8(v49, v49, 8uLL)));
    a3 += 8;
    v7 = i < 128;
  }

  v7 = i < -112;
  v50 = i + 112;
  if (!v7)
  {
    v52 = *a3;
    v51 = a3 + 1;
    v53 = veorq_s8(v6, vqtbl1q_s8(v52, *qword_10000A640));
    v54 = (a2 + v50);
    v55 = *(a2 + v50);
    v56 = vmull_p64(v53.u64[0], v55.u64[0]);
    v57 = vmull_high_p64(v53, v55);
    v58 = vmull_p64(veorq_s8(v53, vextq_s8(v53, v53, 8uLL)).u64[0], *(a2[8].u64 + v50));
    v7 = v50 < 16;
    for (j = v50 - 16; !v7; j -= 16)
    {
      --v54;
      v60 = *v51++;
      v61 = vqtbl1q_s8(v60, *qword_10000A640);
      v56 = veorq_s8(v56, vmull_p64(v61.u64[0], v54->i64[0]));
      v57 = veorq_s8(v57, vmull_high_p64(v61, *v54));
      v58 = veorq_s8(v58, vmull_p64(veorq_s8(v61, vextq_s8(v61, v61, 8uLL)).u64[0], v54[8].u64[0]));
      v7 = j < 16;
    }

    v62 = veorq_s8(v57, veorq_s8(v56, v58));
    v63 = veorq_s8(v56, vextq_s8(v5, v62, 8uLL));
    v64 = veorq_s8(vmull_p64(0xC200000000000000, v63.u64[0]), vextq_s8(v63, v63, 8uLL));
    v6 = veorq_s8(veorq_s8(v57, vextq_s8(v62, v5, 8uLL)), veorq_s8(vmull_p64(0xC200000000000000, v64.u64[0]), vextq_s8(v64, v64, 8uLL)));
  }

  result = vqtbl1q_s8(v6, *qword_10000A640);
  *a1 = result;
  return result;
}

uint64_t sub_10000A68C(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v7 = *(a1 + 16);
  v8 = 4;
  v9 = (*(a1 + 24))(a1, 4);
  v10 = (*(a1 + 24))(a1, 4);
  v11 = (*(a1 + 24))(a1, 4);
  ccn_mulmod_p256(v11, a4, a4);
  ccn_mulmod_p256(v10, v11, a4);
  ccn_mulmod_p256(v10, v10, v10);
  ccn_mulmod_p256(v10, v10, v10);
  ccn_mulmod_p256(v9, v10, a4);
  ccn_mulmod_p256(v10, v9, v11);
  do
  {
    ccn_mulmod_p256(v10, v10, v10);
    --v8;
  }

  while (v8);
  ccn_mulmod_p256(v9, v9, v10);
  ccn_mulmod_p256(v10, v9, v11);
  v12 = 8;
  do
  {
    ccn_mulmod_p256(v10, v10, v10);
    --v12;
  }

  while (v12);
  ccn_mulmod_p256(v9, v9, v10);
  ccn_mulmod_p256(v10, v9, v11);
  v13 = 16;
  do
  {
    ccn_mulmod_p256(v10, v10, v10);
    --v13;
  }

  while (v13);
  ccn_mulmod_p256(v9, v9, v10);
  ccn_mulmod_p256(v10, v9, v11);
  ccn_set(4, v11, v10);
  v14 = 32;
  do
  {
    ccn_mulmod_p256(v11, v11, v11);
    --v14;
  }

  while (v14);
  ccn_mulmod_p256(v11, v11, a4);
  v15 = 128;
  do
  {
    ccn_mulmod_p256(v11, v11, v11);
    --v15;
  }

  while (v15);
  ccn_mulmod_p256(v11, v11, v10);
  v16 = 32;
  do
  {
    ccn_mulmod_p256(v11, v11, v11);
    --v16;
  }

  while (v16);
  ccn_mulmod_p256(v11, v11, v10);
  v17 = 32;
  do
  {
    ccn_mulmod_p256(v11, v11, v11);
    --v17;
  }

  while (v17);
  ccn_mulmod_p256(v10, v11, v9);
  ccn_mulmod_p256(v9, v10, a4);
  v19[0] = xmmword_10002B620;
  v19[1] = *algn_10002B630;
  ccn_mulmod_p256(v9, v9, v19);
  if (ccn_n(4, v9) == 1 && *v9 == 1)
  {
    ccn_set(4, a3, v10);
    result = 0;
  }

  else
  {
    result = 4294967254;
  }

  *(a1 + 16) = v7;
  return result;
}

_OWORD *sub_10000A978(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5[0] = xmmword_10002B620;
  v5[1] = *algn_10002B630;
  return ccn_mulmod_p256(a3, a4, v5);
}

uint64_t cczp_mm_redc_ws(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = cczp_n(a2);
  v9 = v8;
  if (v8)
  {
    v10 = a2[*a2 + 3];
    v11 = a4;
    v12 = v8;
    do
    {
      v13 = cczp_prime(a2);
      *v11 = ccn_addmul1(v9, v11, v13, *v11 * v10);
      ++v11;
      --v12;
    }

    while (v12);
  }

  v14 = ccn_add_ws(a1, v9, &a4[v9], &a4[v9], a4);
  v15 = cczp_prime(a2);
  v16 = ccn_sub_ws(a1, v9, a4, &a4[v9], v15) ^ v14;

  return ccn_mux(v9, v16, a3, &a4[v9], a4);
}

uint64_t inc_uint(uint64_t result, unint64_t a2)
{
  if (a2)
  {
    v2 = (a2 + result - 1);
    v3 = 2;
    do
    {
      if (++*v2--)
      {
        v5 = 1;
      }

      else
      {
        v5 = v3 > a2;
      }

      ++v3;
    }

    while (!v5);
  }

  return result;
}

uint64_t ccn_cond_clear(uint64_t a1, char a2, uint64_t *a3)
{
  result = ccn_mux_next_mask();
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * result)); a1; --a1)
  {
    v8 = *a3;
    v9 = *a3 ^ result;
    *a3 = v9;
    *a3++ = v9 ^ v8 & 0x5555555555555555 ^ v8 & i ^ result;
  }

  return result;
}

uint64_t ccn_shift_right_asm(uint64_t result, int8x16_t *a2, int8x16_t *a3, uint64_t a4)
{
  if (result)
  {
    v4 = a3->i64[0];
    v5 = 64 - a4;
    v6 = vdupq_n_s64(64 - a4);
    v7 = vdupq_n_s64(-a4);
    v8 = result == 4;
    v9 = result < 4;
    result -= 4;
    if (!v9)
    {
      if (v8)
      {
        v13 = a3[1];
        *a2 = veorq_s8(vshlq_u64(*a3, v7), vshlq_u64(vextq_s8(*a3, v13, 8uLL), v6));
        a2[1] = veorq_s8(vshlq_u64(v13, v7), vshlq_u64(vextq_s8(v13, v13, 8uLL).u64[0], v6));
        return result;
      }

      do
      {
        v10 = *a3;
        v11 = a3[1];
        a3 += 2;
        v4 = a3->i64[0];
        v12.i64[0] = vextq_s8(v11, v11, 8uLL).u64[0];
        v12.i64[1] = a3->i64[0];
        *a2 = veorq_s8(vshlq_u64(v10, v7), vshlq_u64(vextq_s8(v10, v11, 8uLL), v6));
        a2[1] = veorq_s8(vshlq_u64(v11, v7), vshlq_u64(v12, v6));
        a2 += 2;
        v9 = result <= 4;
        result -= 4;
      }

      while (!v9);
    }

    v14 = result + 4;
    v15 = &a3->u64[1];
    v16 = v14 == 2;
    v9 = v14 < 2;
    result = v14 - 2;
    if (!v9)
    {
      if (v16)
      {
        v19 = *v15 >> a4;
        a2->i64[0] = (v4 >> a4) | (*v15 << v5) & (((64 - a4) >> 6) - 1);
        a2->i64[1] = v19;
        return result;
      }

      do
      {
        v17 = *v15;
        v18 = v15[1];
        v15 += 2;
        a2->i64[0] = (v4 >> a4) | (v17 << v5) & (((64 - a4) >> 6) - 1);
        a2->i64[1] = (v17 >> a4) | (v18 << v5) & (((64 - a4) >> 6) - 1);
        ++a2;
        v4 = v18;
        v9 = result <= 2;
        result -= 2;
      }

      while (!v9);
    }

    a2->i64[0] = v4 >> a4;
  }

  return result;
}

uint64_t ccn_set_bit(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 1 << a2;
  v4 = (a2 >> 3) & 0x1FFFFFFFFFFFFFF8;
  if (a3)
  {
    v5 = *(result + v4) | v3;
  }

  else
  {
    v5 = *(result + v4) & ~v3;
  }

  *(result + v4) = v5;
  return result;
}

uint64_t ccn_write_uint_padded_internal(uint64_t a1, uint64_t *a2, unint64_t a3, char *a4)
{
  LODWORD(result) = ccn_write_uint_padded_ct_internal(a1, a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  ccn_write_uint_internal(a1, a2, a3, a4);
  return 0;
}

unint64_t ccn_cond_rsub(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  mask = ccn_mux_next_mask();
  v11 = __ROR8__(0x5555555555555555, a2 | (2 * mask));
  if (a1)
  {
    v12 = 0;
    do
    {
      v14 = *a4++;
      v13 = v14;
      v15 = *a5++;
      v16 = __PAIR128__(v12, v12) - v13;
      v17 = v16 + v15;
      if (__CFADD__(v16, v15))
      {
        v18 = *(&v16 + 1) + 1;
      }

      else
      {
        v18 = (__PAIR128__(v12, v12) - v13) >> 64;
      }

      v12 = v18 >> 63;
      v19 = v13 ^ v17;
      v20 = v13 ^ mask;
      *a3 = v20;
      *a3++ = v19 & v11 ^ v19 & 0x5555555555555555 ^ v20 ^ mask;
      --a1;
    }

    while (a1);
    v21 = v18 >> 63;
  }

  else
  {
    v21 = 0;
  }

  return v21 & a2;
}

BOOL timingsafe_enable_if_supported()
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) != 0)
  {
    v0 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) != 0;
    __asm { MSR             DIT, #1 }
  }

  else
  {
    v0 = 0;
  }

  if ((MEMORY[0xFFFFFC010] & 0x200000000000) != 0)
  {
    sub_10000AE74();
  }

  else
  {
    __dsb(0xFu);
    __isb(0xFu);
  }

  return v0;
}

uint64_t timingsafe_restore_if_supported(uint64_t result)
{
  if ((result & 1) == 0 && (MEMORY[0xFFFFFC010] & 0x200000000000000) != 0)
  {
    __asm { MSR             DIT, #0 }
  }

  return result;
}

uint64_t AccelerateCrypto_ecb_AES_encrypt(__int128 *a1, int a2, __int128 *a3, int8x16_t *a4)
{
  v4 = *(a1 + 60);
  _VF = __OFSUB__(a2, 4);
  v6 = a2 - 4;
  for (i = *(a1 + v4); v6 < 0 == _VF; v6 -= 4)
  {
    _Q4 = *a1;
    v9 = 16;
    v10 = *a3;
    v11 = a3[1];
    v12 = a3[2];
    v13 = a3[3];
    a3 += 4;
    do
    {
      __asm
      {
        AESE            V0.16B, V4.16B
        AESMC           V0.16B, V0.16B
        AESE            V1.16B, V4.16B
        AESMC           V1.16B, V1.16B
        AESE            V2.16B, V4.16B
        AESMC           V2.16B, V2.16B
        AESE            V3.16B, V4.16B
        AESMC           V3.16B, V3.16B
      }

      _Q4 = a1[v9 / 0x10];
      v9 += 16;
    }

    while (v9 < v4);
    __asm
    {
      AESE            V0.16B, V4.16B
      AESE            V1.16B, V4.16B
      AESE            V2.16B, V4.16B
      AESE            V3.16B, V4.16B
    }

    *a4 = veorq_s8(_Q0, i);
    a4[1] = veorq_s8(_Q1, i);
    a4[2] = veorq_s8(_Q2, i);
    a4[3] = veorq_s8(_Q3, i);
    a4 += 4;
    _VF = __OFSUB__(v6, 4);
  }

  v29 = v6 & 3;
  if (v29)
  {
    do
    {
      _Q4 = *a1;
      v31 = 16;
      v32 = *a3++;
      do
      {
        __asm
        {
          AESE            V0.16B, V4.16B
          AESMC           V0.16B, V0.16B
        }

        _Q4 = a1[v31 / 0x10];
        v31 += 16;
      }

      while (v31 < v4);
      __asm { AESE            V0.16B, V4.16B }

      *a4++ = veorq_s8(_Q0, i);
      _VF = __OFSUB__(v29--, 1);
    }

    while (!((v29 < 0) ^ _VF | (v29 == 0)));
  }

  return 0;
}

unint64_t ccec_export_affine_point_size(uint64_t a1, int a2)
{
  result = 0;
  if (a2 > 2)
  {
    if (a2 == 3)
    {

      return ccec_compressed_x962_export_pub_size(a1);
    }

    else if (a2 == 4)
    {
      return (cczp_bitlen(a1) + 7) >> 3;
    }
  }

  else if (a2 == 1 || a2 == 2)
  {
    return ((cczp_bitlen(a1) + 7) >> 2) | 1;
  }

  return result;
}

unint64_t ccn_trailing_zeros(unint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    v3 = (v2 << 6) - 64;
    do
    {
      result = (__clz(__rbit64(*(a2 - 8 + 8 * v2) | 0x8000000000000000)) + v3) & -(*(a2 - 8 + 8 * v2) != 0) | (*(a2 - 8 + 8 * v2) != 0 ? 0 : result);
      v3 -= 64;
      --v2;
    }

    while (v2);
  }

  return result;
}

double ccn_shift_left(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64x2_t a5)
{
  v5 = a2 + 8 * a1;
  v6 = vdupq_n_s64(a4);
  v7 = vdupq_n_s64(a4 - 64);
  v8 = (a3 + 8 * a1 - 8);
  v9 = a1 == 4;
  v10 = a1 < 4;
  v11 = a1 - 4;
  if (!v10)
  {
    if (v9)
    {
      v16.i64[0] = 0;
      v16.i64[1] = *(v8 - 3);
      a5 = veorq_s8(vshlq_u64(v16, v7), vshlq_u64(*(v8 - 3), v6));
      v17 = veorq_s8(vshlq_u64(*(v8 - 1), v7), vshlq_u64(*(v8 - 1), v6));
      *(v5 - 32) = a5;
      *(v5 - 16) = v17;
      return *a5.i64;
    }

    do
    {
      v12 = *(v8 - 3);
      v13 = *(v8 - 1);
      v14 = *(v8 - 2);
      v15 = *(v8 - 1);
      v8 -= 4;
      a5 = veorq_s8(vshlq_u64(v14, v7), vshlq_u64(v12, v6));
      *(v5 - 32) = a5;
      *(v5 - 16) = veorq_s8(vshlq_u64(v15, v7), vshlq_u64(v13, v6));
      v5 -= 32;
      v10 = v11 <= 4;
      v11 -= 4;
    }

    while (!v10);
  }

  v18 = v11 & 3;
  if (!v18)
  {
    return *a5.i64;
  }

  if (v18 == 3)
  {
    v19 = *(v8 - 1);
  }

  else
  {
    if ((v18 & 2) == 0)
    {
      goto LABEL_13;
    }

    v19.i64[0] = 0;
    v19.i64[1] = *(v8 - 1);
  }

  a5 = veorq_s8(vshlq_u64(*(v8 - 1), v6), vshlq_u64(v19, v7));
  v8 -= 2;
  *(v5 - 16) = a5;
  v5 -= 16;
LABEL_13:
  if (v18)
  {
    a5.i64[0] = *v8;
    a5.i64[0] = vshlq_u64(a5, v6).u64[0];
    *(v5 - 8) = a5.i64[0];
  }

  return *a5.i64;
}

uint64_t ccn_cond_add(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  mask = ccn_mux_next_mask();
  v11 = __ROR8__(0x5555555555555555, a2 | (2 * mask));
  v12 = 0;
  if (a1)
  {
    v13 = 0;
    do
    {
      v15 = *a4++;
      v14 = v15;
      v17 = *a5++;
      v16 = v17;
      v18 = __CFADD__(v12, v14);
      v19 = v12 + v14;
      if (v18)
      {
        v13 = 1;
      }

      v18 = __CFADD__(v19, v16);
      v20 = v19 + v16;
      if (v18)
      {
        v12 = v13 + 1;
      }

      else
      {
        v12 = v13;
      }

      v21 = v14 ^ v20;
      v22 = v14 ^ mask;
      *a3 = v22;
      *a3++ = v21 & v11 ^ v21 & 0x5555555555555555 ^ v22 ^ mask;
      v13 = 0;
      --a1;
    }

    while (a1);
  }

  return v12 & a2;
}

uint64_t cczp_is_quadratic_residue_ws(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = cczp_n(a2);
  v7 = *(a1 + 16);
  v8 = (*(a1 + 24))(a1, v6);
  v9 = cczp_prime(a2);
  ccn_set(v6, v8, v9);
  v8->i64[0] &= ~1uLL;
  v10 = (*(a1 + 24))(a1, v6);
  ccn_shift_right(v6, v10, v8, 1);
  v11 = (*(a1 + 24))(a1, v6);
  LODWORD(a3) = -(cczp_power_fast_ws(a1, a2, v11, a3, v10) != 0);
  cczp_from_ws(a1, a2);
  v12 = (*v11 | ccn_n(v6, v11)) != 1;
  *(a1 + 16) = v7;
  return !v12 ? a3 : -1;
}

uint64_t ccdrbg_reseed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = (*(a1 + 16))(a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t ccdrbg_generate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = (*(a1 + 24))(a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t cczp_add_default_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *(a1 + 16);
  v11 = cczp_n(a2);
  v12 = (*(a1 + 24))(a1, v11);
  LOBYTE(a5) = ccn_add_ws(a1, v11, a3, a4, a5);
  v13 = cczp_prime(a2);
  v14 = ccn_sub_ws(a1, v11, v12, a3, v13);
  result = ccn_mux(v11, !v14 | a5, a3, v12, a3);
  *(a1 + 16) = v10;
  return result;
}

uint64_t cczp_div2_ws(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t *a4)
{
  v7 = cczp_n(a2);
  v8 = *a4;
  v9 = cczp_prime(a2);
  v10 = ccn_cond_add(v7, v8 & 1, a3->i64, a4, v9);
  result = ccn_shift_right(v7, a3, a3, 1);
  a3->i64[v7 - 1] |= v10 << 63;
  return result;
}

uint64_t cczp_modn_ws(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v10 = cczp_n(a2);
  v11 = v10;
  v22 = (a4 - 1) / v10;
  if (v22 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = (a4 - 1) / v10;
  }

  v20 = a4;
  v21 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, 2 * v10);
  v23 = a5;
  ccn_set(v11, v13, a5);
  v19 = v12;
  v14 = v12 - 1;
  if (v14)
  {
    v15 = 0;
    v16 = &v23[8 * v11];
    do
    {
      ++v15;
      ccn_set(v11, &v13[8 * v11], v16);
      cczp_mm_redc_ws(a1, a2, v13, v13);
      v16 += 8 * v11;
    }

    while (v15 < v14);
  }

  if (v20 != v19 * v11)
  {
    ccn_set(v20 - v19 * v11, &v13[8 * v11], &v23[8 * v19 * v11]);
  }

  ccn_zero(v11 - (v20 - v19 * v11), &v13[8 * v11 + 8 * (v20 - v19 * v11)]);
  cczp_mm_redc_ws(a1, a2, a3, v13);
  v17 = 0;
  do
  {
    ccn_mul_ws(a1, v11, v13, a3, &a2[*a2 + 4]);
    result = cczp_mm_redc_ws(a1, a2, a3, v13);
    ++v17;
  }

  while (v22 > v17);
  *(a1 + 16) = v21;
  return result;
}

uint64_t cczp_mod_default_ws(uint64_t a1, void *a2, uint64_t *a3, char *a4)
{
  v8 = 2 * cczp_n(a2);

  return cczp_modn_ws(a1, a2, a3, v8, a4);
}

uint64_t cczp_mul_default_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 16);
  v10 = cczp_n(a2);
  v11 = (*(a1 + 24))(a1, 2 * v10);
  v12 = cczp_n(a2);
  ccn_mul_ws(a1, v12, v11, a4, a5);
  result = cczp_mod_ws(a1, a2);
  *(a1 + 16) = v9;
  return result;
}

_OWORD *ccn_mulmod_p256(void *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v3 = a2 + 2;
  v6 = *v3;
  v7 = v3[1];
  v9 = *a3;
  v10 = a3[1];
  v8 = a3 + 2;
  v11 = *v8;
  v12 = v8[1];
  v13 = v4 * v9;
  v14 = (v5 * v9) >> 64;
  v15 = *v3 * v9;
  v16 = (v6 * v9) >> 64;
  v18 = v9;
  v17 = (__PAIR128__(v5, v4) * v9) >> 64;
  v19 = __CFADD__(__CFADD__((v4 * v9) >> 64, v5 * v9), v14);
  v20 = __CFADD__((v4 * v9) >> 64, v5 * v9) + v14;
  v19 |= __CFADD__(v15, v20);
  v20 += v15;
  v21 = (v7 * v9) >> 64;
  v22 = (v7 * v10) >> 64;
  v24 = v19;
  v19 = __CFADD__(v19, v16);
  v23 = v24 + v16;
  v19 |= __CFADD__(v7 * v9, v23);
  v23 += v7 * v9;
  v26 = v19;
  v19 = __CFADD__(v19, v21);
  v25 = v26 + v21;
  v19 |= __CFADD__(v7 * v10, v25);
  v25 += v7 * v10;
  v27 = v7 * *v8;
  v28 = (v7 * v11) >> 64;
  v30 = v19;
  v19 = __CFADD__(v19, v22);
  v29 = v30 + v22;
  v19 |= __CFADD__(v27, v29);
  v29 += v27;
  v32 = v19;
  v19 = __CFADD__(v19, v28);
  v31 = v32 + v28;
  v19 |= __CFADD__(v7 * v12, v31);
  v31 += v7 * v12;
  v33 = v19 + ((v7 * v12) >> 64);
  v34 = (v4 * v10) >> 64;
  v19 = __CFADD__(v17, v4 * v10);
  v35 = (__PAIR128__(v10, v18) * __PAIR128__(v5, v4)) >> 64;
  v37 = v19;
  v19 = __CFADD__(v19, v20);
  v36 = v37 + v20;
  v19 |= __CFADD__(v34, v36);
  v36 += v34;
  v38 = (v6 * v10) >> 64;
  v40 = v19;
  v19 = __CFADD__(v19, v23);
  v39 = v40 + v23;
  v19 |= __CFADD__(v6 * v10, v39);
  v39 += v6 * v10;
  v42 = v19;
  v19 = __CFADD__(v19, v25);
  v41 = v42 + v25;
  v19 |= __CFADD__(v38, v41);
  v41 += v38;
  v43 = (v6 * v12) >> 64;
  v45 = v19;
  v19 = __CFADD__(v19, v29);
  v44 = v45 + v29;
  v19 |= __CFADD__(v6 * v12, v44);
  v44 += v6 * v12;
  v47 = v19;
  v19 = __CFADD__(v19, v31);
  v46 = v47 + v31;
  v19 |= __CFADD__(v43, v46);
  v46 += v43;
  v48 = v19 + v33;
  v49 = (v5 * v10) >> 64;
  v19 = __CFADD__(v36, v5 * v10);
  v50 = v36 + v5 * v10;
  v52 = v19;
  v19 = __CFADD__(v19, v39);
  v51 = v52 + v39;
  v19 |= __CFADD__(v49, v51);
  v51 += v49;
  v53 = (v6 * v11) >> 64;
  v55 = v19;
  v19 = __CFADD__(v19, v41);
  v54 = v55 + v41;
  v19 |= __CFADD__(v6 * v11, v54);
  v54 += v6 * v11;
  v57 = v19;
  v19 = __CFADD__(v19, v44);
  v56 = v57 + v44;
  v19 |= __CFADD__(v53, v56);
  v56 += v53;
  v58 = v19;
  v59 = (v4 * v11) >> 64;
  v19 = __CFADD__(v50, v4 * v11);
  v60 = v50 + v4 * v11;
  v62 = v19;
  v19 = __CFADD__(v19, v51);
  v61 = v62 + v51;
  v19 |= __CFADD__(v59, v61);
  v61 += v59;
  v63 = (v5 * v12) >> 64;
  v65 = v19;
  v19 = __CFADD__(v19, v54);
  v64 = v65 + v54;
  v19 |= __CFADD__(v5 * v12, v64);
  v64 += v5 * v12;
  v67 = v19;
  v19 = __CFADD__(v19, v56);
  v66 = v67 + v56;
  v19 |= __CFADD__(v63, v66);
  v66 += v63;
  v68 = v19 + v58;
  v69 = (v5 * v11) >> 64;
  v19 = __CFADD__(v61, v5 * v11);
  v70 = v61 + v5 * v11;
  v72 = v19;
  v19 = __CFADD__(v19, v64);
  v71 = v72 + v64;
  v19 |= __CFADD__(v69, v71);
  v71 += v69;
  v73 = v19;
  v74 = (v4 * v12) >> 64;
  v19 = __CFADD__(v70, v4 * v12);
  v75 = v70 + v4 * v12;
  v77 = v19;
  v19 = __CFADD__(v19, v71);
  v76 = v77 + v71;
  v19 |= __CFADD__(v74, v76);
  v76 += v74;
  v79 = v19;
  v19 = __CFADD__(v19, v66);
  v78 = v79 + v66;
  v19 |= __CFADD__(v73, v78);
  v78 += v73;
  v81 = v19;
  v19 = __CFADD__(v19, v46);
  v80 = v81 + v46;
  v19 |= __CFADD__(v68, v80);
  v80 += v68;
  v82 = v19 + v48;
  v19 = __CFADD__(v35, v13 << 32);
  v83 = v35 + (v13 << 32);
  v85 = v19;
  v19 = __CFADD__(v19, v60);
  v84 = v85 + v60;
  v19 |= __CFADD__(HIDWORD(v13), v84);
  v84 += HIDWORD(v13);
  v87 = v19;
  v19 = __CFADD__(v19, v75);
  v86 = v87 + v75;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v13, v86);
  v86 += 0xFFFFFFFF00000001 * v13;
  v88 = v19 + ((v13 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v84, v83 << 32);
  v89 = v84 + (v83 << 32);
  v91 = v19;
  v19 = __CFADD__(v19, v86);
  v90 = v91 + v86;
  v19 |= __CFADD__(HIDWORD(v83), v90);
  v90 += HIDWORD(v83);
  v93 = v19;
  v19 = __CFADD__(v19, v76);
  v92 = v93 + v76;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v83, v92);
  v92 += 0xFFFFFFFF00000001 * v83;
  v94 = v19 + ((v83 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v90, v89 << 32);
  v95 = v90 + (v89 << 32);
  v97 = v19;
  v19 = __CFADD__(v19, v92);
  v96 = v97 + v92;
  v19 |= __CFADD__(HIDWORD(v89), v96);
  v96 += HIDWORD(v89);
  v99 = v19;
  v19 = __CFADD__(v19, v78);
  v98 = v99 + v78;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v89, v98);
  v98 += 0xFFFFFFFF00000001 * v89;
  v100 = v19 + ((v89 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v96, v95 << 32);
  v101 = v96 + (v95 << 32);
  v103 = v19;
  v19 = __CFADD__(v19, v98);
  v102 = v103 + v98;
  v19 |= __CFADD__(HIDWORD(v95), v102);
  v102 += HIDWORD(v95);
  v105 = v19;
  v19 = __CFADD__(v19, v80);
  v104 = v105 + v80;
  v19 |= __CFADD__(0xFFFFFFFF00000001 * v95, v104);
  v104 += 0xFFFFFFFF00000001 * v95;
  v106 = v19 + ((v95 * 0xFFFFFFFF00000001) >> 64);
  v19 = __CFADD__(v88, v101);
  v107 = v88 + v101;
  v109 = v19;
  v19 = __CFADD__(v19, v94);
  v108 = v109 + v94;
  v19 |= __CFADD__(v102, v108);
  v108 += v102;
  v111 = v19;
  v19 = __CFADD__(v19, v100);
  v110 = v111 + v100;
  v19 |= __CFADD__(v104, v110);
  v110 += v104;
  v113 = v19;
  v19 = __CFADD__(v19, v106);
  v112 = v113 + v106;
  v19 |= __CFADD__(v82, v112);
  v112 += v82;
  v114 = v19;
  v19 = __CFADD__(v107++, 1);
  LOBYTE(v113) = v19;
  v19 = __CFSUB__(v108, 0xFFFFFFFFLL, v19);
  v115 = v108 - (!v113 + 0xFFFFFFFFLL);
  LOBYTE(v113) = v19;
  v19 = v110 >= !v19;
  v116 = v110 - !v113;
  LOBYTE(v113) = v19;
  v19 = __CFSUB__(v112, 0xFFFFFFFF00000001, v19);
  v117 = v114 - !v19;
  v118 = v114 - !v19;
  v19 = __CFADD__(__CFADD__(v107, v117), v115);
  v119 = __CFADD__(v107, v117) + v115;
  *a1 = v107 + v117;
  a1[1] = v118 + v119;
  result = a1 + 2;
  *result = __PAIR128__(v117 & 0xFFFFFFFF00000001, v19 | __CFADD__(v118, v119)) + __PAIR128__(v112 - (!v113 - 0xFFFFFFFF), v116);
  return result;
}

uint64_t cczp_sqr_default_ws(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = *(a1 + 16);
  v8 = cczp_n(a2);
  v9 = (*(a1 + 24))(a1, 2 * v8);
  ccn_sqr_ws(a1, v8, v9, a4);
  result = cczp_mod_ws(a1, a2);
  *(a1 + 16) = v7;
  return result;
}

uint64_t cczp_sub_default_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v10 = *(a1 + 16);
  v11 = cczp_n(a2);
  v12 = ccn_sub_ws(a1, v11, a3, a4, a5);
  v13 = cczp_prime(a2);
  result = ccn_cond_add(v11, v12, a3, a3, v13);
  *(a1 + 16) = v10;
  return result;
}

uint64_t sub_10000BB34(int a1, unint64_t a2, char *buffer)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      if (v4 >= 0x100)
      {
        v5 = 256;
      }

      else
      {
        v5 = v4;
      }

      if (getentropy(buffer, v5) == -1)
      {
        sub_10002748C();
      }

      buffer += v5;
      v4 -= v5;
    }

    while (v4);
  }

  return 0;
}

uint64_t ccecdh_generate_key_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, uint64_t, uint64_t *), uint64_t **a4)
{
  v7 = *(a1 + 16);
  result = ccec_generate_key_internal_fips_ws(a1, a2, a3, a4);
  if (!result)
  {
    if (ccecdh_pairwise_consistency_check_ws(a1, a4, 0, a3))
    {
      result = 4294967278;
    }

    else
    {
      result = 0;
    }
  }

  *(a1 + 16) = v7;
  return result;
}

uint64_t ccecdh_generate_key(uint64_t *a1, uint64_t (**a2)(void, uint64_t, uint64_t *), uint64_t **a3)
{
  v16 = timingsafe_enable_if_supported();
  v6 = *a1;
  v7 = sizeof_struct_ccec_full_ctx();
  v8 = sizeof_cc_unit();
  v14[0] = cc_malloc_clear(8 * ((v7 + v8 + 4 * v6 * v8 - 1) / v8 - v6 + 32 * v6));
  v9 = *a1;
  v10 = sizeof_struct_ccec_full_ctx();
  v11 = sizeof_cc_unit();
  v14[1] = (v10 + v11 + 4 * v9 * v11 - 1) / v11 - v9 + 32 * v9;
  v14[2] = 0;
  v14[3] = cc_ws_alloc;
  v15 = cc_ws_free;
  if (v14[0])
  {
    key_ws = ccecdh_generate_key_ws(v14, a1, a2, a3);
    v15(v14);
  }

  else
  {
    key_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v16);
  return key_ws;
}

uint64_t ccdrbg_df_derive_keys(uint64_t (**a1)(void), uint64_t a2, uint64_t a3, rsize_t a4, void *a5)
{
  v7 = (*a1)();
  if (v7)
  {
    cc_clear(a4, a5);
  }

  return v7;
}

uint64_t sub_10000BD74()
{
  v3 = *(*(v0 + 8) + 8);

  return cc_clear(v3, v1);
}

void *cc_malloc_clear(size_t a1)
{
  v2 = malloc(a1);
  v3 = v2;
  if (v2)
  {
    bzero(v2, a1);
  }

  return v3;
}

uint64_t cc_ws_alloc(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1 + 8 * v2;
  v5 = v2 + a2;
  a1[2] = v5;
  cc_try_abort_if (v5 > v3);
  return v4;
}

void cc_ws_free(uint64_t a1)
{
  cc_try_abort_if (*(a1 + 16) > *(a1 + 8));
  cc_clear(8 * *(a1 + 8), *a1);
  free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t ccn_cmp_asm(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  if (result)
  {
    v3 = result;
    result = 0;
    do
    {
      v5 = *a2++;
      v4 = v5;
      v6 = *a3++;
      v7 = v4 >= v6;
      if (v4 > v6)
      {
        result = 1;
      }

      if (!v7)
      {
        result = -1;
      }
    }

    while (v3-- > 1);
  }

  return result;
}

_BYTE *cc_disable_dit(_BYTE *result)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) != 0 && *result == 1)
  {
    __asm { MSR             DIT, #0 }
  }

  return result;
}

void sub_10000BF28(id a1, int a2)
{
  v2 = MKBGetDeviceLockState();
  if (v2 <= 7 && ((1 << v2) & 0xB9) != 0)
  {
    v3 = qword_100042A18;

    dispatch_semaphore_signal(v3);
  }
}

void sub_10000BF80(id a1)
{
  memset(v13, 0, 255);
  v8 = 255;
  if (sysctlbyname("hw.osenvironment", v13, &v8, 0, 0))
  {
    v1 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      v2 = v1;
      v3 = __error();
      v4 = strerror(*v3);
      v5 = *__error();
      *buf = 136315394;
      v10 = v4;
      v11 = 1024;
      v12 = v5;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "failed to look up hw.osenvironment: %s(%d)", buf, 0x12u);
    }
  }

  else
  {
    if (*&v13[0] == 0x722D656369766564 && *(&v13[0] + 1) == 0x797265766F6365)
    {
      byte_100042A20 = 1;
    }

    v7 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "found hw.osenvironment: %s", buf, 0xCu);
    }
  }
}

id sub_10000C138(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = +[NSMutableDictionary dictionary];
  if (v5)
  {
    v8 = [v5 path];
    [v7 setObject:v8 forKeyedSubscript:kOSALogOptionOverridePath];
  }

  if (a3 != 0.0)
  {
    v9 = [NSNumber numberWithDouble:a3];
    [v7 setObject:v9 forKeyedSubscript:kOSALogOptionCaptureTime];
  }

  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:kOSALogOptionOverrideFilePrefix];
  }

  [v7 setObject:@"ips" forKeyedSubscript:kOSALogOptionOverrideFileExtension];

  return v7;
}

uint64_t sub_10000C250(uint64_t a1, const char *a2, _DWORD *a3)
{
  if (!a1)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  if (!a2)
  {
LABEL_18:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_19:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (!a3)
  {
    goto LABEL_19;
  }

  *a3 = 0;
  *path = *"IODeviceTree:/";
  v16 = unk_10002B788;
  v17 = xmmword_10002B798;
  v18 = unk_10002B7A8;
  __strlcat_chk();
  v5 = IORegistryEntryFromPath(kIOMainPortDefault, path);
  v6 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  if (!v6)
  {
    v11 = qword_100042B10;
    if (os_log_type_enabled(qword_100042B10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      v14 = a2;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error creating CFString %s", &v13, 0xCu);
    }

    return 0xFFFFFFFFLL;
  }

  CFProperty = IORegistryEntryCreateCFProperty(v5, v6, kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    IOObjectRelease(v5);
    return 0xFFFFFFFFLL;
  }

  v8 = CFProperty;
  v9 = CFGetTypeID(CFProperty);
  if (v9 == CFDataGetTypeID())
  {
    v10 = [v8 mutableCopy];
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v8);
  IOObjectRelease(v5);
  if (v10)
  {
    *a3 = *[v10 bytes];
  }

  return 0;
}

BOOL sub_10000C428(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = @"OK";
  v6 = @"Cancel";
  if (!v3)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_16:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v21[0] = kCFUserNotificationAlertHeaderKey;
  v21[1] = kCFUserNotificationAlertMessageKey;
  v22[0] = v3;
  v22[1] = v4;
  v21[2] = kCFUserNotificationDefaultButtonTitleKey;
  v22[2] = @"OK";
  v7 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

  [v8 setObject:@"Cancel" forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];
  error = 0;
  v9 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 1uLL, &error, v8);
  v10 = v9;
  v11 = error;
  if (v9 && !error)
  {
    responseFlags = 0;
    v12 = CFUserNotificationReceiveResponse(v9, 0.0, &responseFlags);
    if (!v12)
    {
      CFRelease(v10);
      v10 = (responseFlags & 3) == 0;
      goto LABEL_12;
    }

    v13 = v12;
    v14 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v19 = v13;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to get response for tap to radar notification with error: %d", buf, 8u);
    }

    goto LABEL_10;
  }

  v15 = qword_100042B28;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
  {
    LODWORD(responseFlags) = 67109120;
    HIDWORD(responseFlags) = v11;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to display tap to radar notification with error: %d", &responseFlags, 8u);
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v10)
  {
LABEL_10:
    CFRelease(v10);
    v10 = 0;
  }

LABEL_12:

  return v10;
}

void sub_10000C6B0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, unsigned __int8 a9)
{
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  if (!v16)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_29;
  }

  if (!v17)
  {
LABEL_29:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_30:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (!v18)
  {
    goto LABEL_30;
  }

  v24 = v23;
  if (objc_opt_class())
  {
    v51 = v16;
    v52 = v24;
    v25 = objc_opt_new();
    v50 = v17;
    [v25 setTitle:v17];
    [v25 setProblemDescription:v18];
    v26 = v22;
    v47 = v21;
    v48 = v20;
    v49 = v19;
    v27 = [[RadarComponent alloc] initWithName:v19 version:v20 identifier:{objc_msgSend(v21, "integerValue")}];
    [v25 setComponent:v27];

    [v25 setClassification:2];
    [v25 setDiagnosticExtensionIDs:&off_10003C310];
    [v25 setAutoDiagnostics:1];
    [v25 setIsUserInitiated:a9];
    v28 = objc_alloc_init(NSMutableArray);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v46 = v26;
    v29 = v26;
    v30 = [v29 countByEnumeratingWithState:&v58 objects:v65 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v59;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v59 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [NSURL fileURLWithPath:*(*(&v58 + 1) + 8 * i), v46];
          [v28 addObject:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v58 objects:v65 count:16];
      }

      while (v31);
    }

    [v25 setAttachments:v28];
    v35 = objc_alloc_init(NSMutableArray);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v36 = v52;
    v37 = [v36 countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v55;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v55 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(*(&v54 + 1) + 8 * j) intValue]);
          [v35 addObject:v41];
        }

        v38 = [v36 countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v38);
    }

    [v25 setKeywords:v35];
    v42 = +[TapToRadarService shared];
    v53 = 0;
    v16 = v51;
    [v42 createDraft:v25 forProcessNamed:0 withDisplayReason:v51 error:&v53];
    v43 = v53;

    v44 = qword_100042B28;
    if (v43)
    {
      v19 = v49;
      v17 = v50;
      v20 = v48;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v63 = v43;
        _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Failed to create draft in Tap-to-Radar: %@", buf, 0xCu);
      }
    }

    else
    {
      v19 = v49;
      v17 = v50;
      v20 = v48;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Received confirmation that a Tap-to-Radar draft has been started", buf, 2u);
      }
    }

    v22 = v46;
    v21 = v47;
    v24 = v52;
  }

  else
  {
    v45 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "TapToRadarService does not exist and thus we cannot start a radar", buf, 2u);
    }
  }
}

uint64_t sub_10000CB64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000CB7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100042B28;
  if (v3)
  {
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to launch DR with error: %@.", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DR launched.", &v5, 2u);
  }

  dispatch_group_leave(*(*(*(a1 + 32) + 8) + 40));
}

uint64_t sub_10000CC80()
{
  result = sub_10000CCAC(@"stress-rack");
  if (result)
  {
    CFRelease(result);
    return 1;
  }

  return result;
}

CFTypeRef sub_10000CCAC(void *a1)
{
  v2 = a1;
  if (v2)
  {
    v1 = v2;
    if (qword_100042A38 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  dispatch_once(&qword_100042A38, &stru_100038E58);
LABEL_3:
  if (dword_100042A30)
  {
    CFProperty = IORegistryEntryCreateCFProperty(dword_100042A30, v1, 0, 0);
  }

  else
  {
    v4 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "NVRAM is not supported on this system", v6, 2u);
    }

    CFProperty = 0;
  }

  return CFProperty;
}

uint64_t sub_10000CDB8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_100042A38 != -1)
  {
    dispatch_once(&qword_100042A38, &stru_100038E58);
  }

  v5 = dword_100042A30;
  if (dword_100042A30)
  {
    v6 = IORegistryEntrySetCFProperty(dword_100042A30, v3, v4);
    if (v6)
    {
      v7 = v6;
      v8 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412546;
        v13 = v3;
        v14 = 1024;
        v15 = v7;
        v9 = "Failed to set the '%@' NVRAM variable. Error 0x%04x";
LABEL_14:
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v9, &v12, 0x12u);
      }
    }

    else
    {
      v7 = IORegistryEntrySetCFProperty(v5, @"IONVRAM-FORCESYNCNOW-PROPERTY", @"IONVRAM-FORCESYNCNOW-PROPERTY");
      if (v7)
      {
        v8 = qword_100042B28;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
        {
          v12 = 138412546;
          v13 = v3;
          v14 = 1024;
          v15 = v7;
          v9 = "Failed to flush the NVRAM store when setting '%@': Error 0x%04x";
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v10 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "NVRAM is not supported on this system", &v12, 2u);
    }

    v7 = 46;
  }

  return v7;
}

void sub_10000CF88(id a1)
{
  if (_os_feature_enabled_impl())
  {
    v1 = sub_10000CCAC(@"panicmedic-telemetry");
    if (!v1)
    {
      v9 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v38 = @"panicmedic-telemetry";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "no %@ in NVRAM", buf, 0xCu);
      }

      v10 = 0;
      goto LABEL_26;
    }

    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFDataGetTypeID())
    {
      v4 = v2;
      v5 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
        v7 = [[NSString alloc] initWithData:v4 encoding:4];
        *buf = 138412546;
        *v38 = @"panicmedic-telemetry";
        *&v38[8] = 2112;
        v39 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "loaded %@ from NVRAM: %@", buf, 0x16u);
      }
    }

    else
    {
      v11 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v38 = @"panicmedic-telemetry";
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "implausible data type for %@, abandoning data", buf, 0xCu);
      }

      v4 = 0;
    }

    CFRelease(v2);
    v12 = [v4 bytes];
    v13 = v12;
    if (v12)
    {
      v14 = *v12;
      if ((v14 & 3) == 1 && v12[1] - 41 > 0xFFFFFFD7)
      {
        v21 = objc_alloc_init(NSMutableArray);
        v24 = [NSNumber numberWithUnsignedLong:*(v13 + 2)];
        v25 = [NSNumber numberWithUnsignedInt:v13[24]];
        v34 = [NSNumber numberWithUnsignedInt:v13[25]];
        v35 = v25;
        v36 = v24;
        v33 = [[NSDictionary alloc] initWithObjectsAndKeys:{v24, @"PanicMedicEntryTimestamp", v25, @"PanicMedicEntryBootStage", v34, @"PanicMedicEntryBootTarget", 0}];
        [v21 addObject:?];
        if (v13[1] >= 2u)
        {
          v26 = 0;
          v27 = v13 + 28;
          do
          {
            v28 = [NSNumber numberWithUnsignedInt:*(v27 - 2)];
            v29 = [NSNumber numberWithUnsignedInt:*(v27 - 1)];
            v30 = *v27;
            v27 += 3;
            v31 = [NSNumber numberWithUnsignedInt:v30];
            v32 = [[NSDictionary alloc] initWithObjectsAndKeys:{v28, @"PanicMedicEntryTimestampDiff", v29, @"PanicMedicEntryBootStage", v31, @"PanicMedicEntryBootTarget", 0}];
            [v21 addObject:v32];

            ++v26;
          }

          while (v26 < v13[1] - 1);
        }

        goto LABEL_21;
      }

      v15 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        v16 = v13[1];
        *buf = 67109632;
        *v38 = v14 & 1;
        *&v38[4] = 1024;
        *&v38[6] = (v14 >> 1) & 1;
        LOWORD(v39) = 1024;
        *(&v39 + 2) = v16;
        v17 = "PanicMedic telemetry(valid:%d, reported:%d,panic count:%d) should be valid, hasn't been reported and has panic, skipping parsing...";
        v18 = v15;
        v19 = 20;
LABEL_33:
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
      }
    }

    else
    {
      v20 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v17 = "PanicMedic telemetry is nil, skipping parsing...";
        v18 = v20;
        v19 = 2;
        goto LABEL_33;
      }
    }

    v21 = 0;
LABEL_21:
    v22 = qword_100042A40;
    qword_100042A40 = v21;

    if ([qword_100042A40 count])
    {
      *v13 |= 2u;
      v10 = [NSData dataWithBytes:v13 length:143];

      if (sub_10000CDB8(@"panicmedic-telemetry", v10))
      {
        v23 = qword_100042B28;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v38 = @"panicmedic-telemetry";
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "unable to write %@ back to NVRAM, it is not marked as reported!", buf, 0xCu);
        }
      }
    }

    else
    {
      v10 = v4;
    }

LABEL_26:

    return;
  }

  v8 = qword_100042B28;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "the feature flag is not enabled, skipping PanicMedic telemetry...", buf, 2u);
  }
}

id sub_10000D4EC()
{
  if (qword_100042A58 != -1)
  {
    dispatch_once(&qword_100042A58, &stru_100038E98);
  }

  v1 = qword_100042A50;

  return v1;
}

void sub_10000D540(id a1)
{
  size = 0;
  v1 = sysctlbyname("kern.bootargs", 0, &size, 0, 0);
  if (v1)
  {
    v2 = v1;
    v3 = qword_100042B28;
    if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    v16 = v2;
    v8 = "Failed to query the size of the boot-args. Error: %d";
    goto LABEL_13;
  }

  if (size)
  {
    v4 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (v4)
    {
      v5 = v4;
      v6 = sysctlbyname("kern.bootargs", v4, &size, 0, 0);
      if (!v6)
      {
        v12 = [NSString stringWithUTF8String:v5];
        v13 = qword_100042A50;
        qword_100042A50 = v12;

        free(v5);
        return;
      }

      v7 = v6;
      free(v5);
      v3 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v16 = v7;
        v8 = "Failed to query the boot-args. Error: %d";
LABEL_13:
        v10 = v3;
        v11 = 8;
        goto LABEL_14;
      }
    }

    else
    {
      v9 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v8 = "Failed to allocate memory for the boot-args";
        v10 = v9;
        v11 = 2;
LABEL_14:
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v8, buf, v11);
      }
    }
  }
}

uint64_t sub_10000D704(void *a1, void *a2, unint64_t *a3)
{
  v5 = a1;
  v6 = a2;
  if (!v6)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_25:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  v7 = v6;

  if (!a3)
  {
    goto LABEL_25;
  }

  *a3 = 0;
  if (v5)
  {
    v8 = [NSString stringWithFormat:@"(?:^|[ \t\r\n])%@=(0x[a-fA-F0-9]+|-?[0-9]+)(?:[ \t\r\n]|$)", v7];
    v25 = 0;
    v9 = [NSRegularExpression regularExpressionWithPattern:v8 options:0 error:&v25];
    v10 = v25;
    if (v10)
    {
      v11 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v10;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create a regex matching expression: %@", buf, 0xCu);
      }

      v12 = 0;
    }

    else
    {
      v14 = [v9 firstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 rangeAtIndex:1];
        v18 = [v5 substringWithRange:{v16, v17}];
        __endptr = 0;
        v19 = strtoull([v18 UTF8String], &__endptr, 0);
        v20 = __endptr;
        if (*__endptr)
        {
          v21 = qword_100042B28;
          if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v27 = v7;
            v28 = 2080;
            v29 = v20;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to parse the value of the '%@' boot-arg as an integer. Remainder = '%s'", buf, 0x16u);
          }

          v12 = 0;
        }

        else
        {
          *a3 = v19;
          v12 = 1;
        }
      }

      else
      {
        v22 = qword_100042B28;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = v7;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "boot-args NVRAM variable does not have a '%@'=<value> arg", buf, 0xCu);
        }

        v12 = 0;
      }
    }
  }

  else
  {
    v13 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "boot-args NVRAM variable is either not set or inaccessible", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

void sub_10000DA08(unint64_t *a1)
{
  v2 = sub_10000D4EC();
  sub_10000D704(v2, @"dumppanic", a1);
}

void sub_10000DA60(id a1)
{
  v3 = 0;
  sub_10000DA08(&v3);
  if ((v3 & 2) != 0)
  {
    byte_100042A60 = 1;
    v1 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Machine configured for intentional panic", v2, 2u);
    }
  }
}

void sub_10000DAE4(id a1)
{
  v2 = 0;
  v1 = 4;
  if (!sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0))
  {
    dword_100042A70 = v2 != 0;
  }
}

void sub_10000DB40(id a1)
{
  v1 = 0;
  sub_10000C250("chosen", "development-cert", &v1);
  dword_100042A80 = v1 != 0;
}

void sub_10000DBB4(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/chosen");
  if (v1)
  {
    v2 = v1;
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"unique-chip-id", 0, 0);
    if (CFProperty)
    {
      v4 = CFProperty;
      BytePtr = CFDataGetBytePtr(CFProperty);
      snprintf(__str, 0x18uLL, "%02llX", *BytePtr);
      v6 = [NSString stringWithCString:__str encoding:4];
      v7 = qword_100042AA0;
      qword_100042AA0 = v6;

      CFRelease(v4);
    }

    IOObjectRelease(v2);
  }
}

uint64_t sub_10000DC98(uint64_t a1)
{
  if (*(a1 + 32))
  {
    result = 0;
  }

  else
  {
    if (qword_100042A28 != -1)
    {
      dispatch_once(&qword_100042A28, &stru_100038E38);
    }

    if (byte_100042A20)
    {
      result = 0;
    }

    else
    {
      result = _os_feature_enabled_impl();
    }
  }

  byte_100042AB8 = result;
  return result;
}

void sub_10000DD18(void *a1, _BYTE *a2, uint64_t a3)
{
  v5 = a1;
  if (a3 >= 1)
  {
    v6 = &a2[a3];
    v7 = a2;
    v8 = a2;
    do
    {
      if (*v8 == 10)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v10 = v7 - a2;
          v11 = 2080;
          v12 = a2;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%.*s", buf, 0x12u);
        }

        a2 = v8 + 1;
      }

      else if (!*v8)
      {
        break;
      }

      ++v8;
      ++v7;
    }

    while (v8 < v6);
  }
}

BOOL sub_10000DE34(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  v4 = sysctlbyname("kern.coredump_encryption_key", 0, 0, v2, v3);
  if (v4)
  {
    v5 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      v7 = v5;
      v8 = *__error();
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to notify kernel of new public encryption key. Error: %{errno}d", v9, 8u);
    }
  }

  return v4 == 0;
}

void sub_10000DF40(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = [v2 stringByDeletingLastPathComponent];
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 fileExistsAtPath:v2];

    v6 = v2;
    if ((v5 & 1) == 0)
    {
      v7 = [v3 stringByAppendingPathComponent:@"Retired"];
      v8 = [v2 lastPathComponent];
      v6 = [v7 stringByAppendingPathComponent:v8];
    }

    v9 = +[NSFileManager defaultManager];
    v10 = [v9 fileExistsAtPath:v6];

    if ((v10 & 1) == 0)
    {
      v11 = [v2 stringByAppendingString:@".synced"];

      v12 = +[NSFileManager defaultManager];
      v13 = [v12 fileExistsAtPath:v11];

      if (v13)
      {
        v6 = v11;
      }

      else
      {
        v14 = [v3 stringByAppendingPathComponent:@"Retired"];
        v15 = [v11 lastPathComponent];
        v6 = [v14 stringByAppendingPathComponent:v15];
      }
    }

    v16 = +[NSFileManager defaultManager];
    v17 = [v16 fileExistsAtPath:v6];

    v18 = qword_100042B28;
    v19 = os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v23 = 138412290;
        v24 = v6;
        v20 = "attempting to discard safe log at %@";
        v21 = v18;
        v22 = 12;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, &v23, v22);
      }
    }

    else if (v19)
    {
      LOWORD(v23) = 0;
      v20 = "no safe log will be discarded";
      v21 = v18;
      v22 = 2;
      goto LABEL_13;
    }

    unlink([v6 UTF8String]);
  }
}

void sub_10000E1A4(id a1)
{
  v1 = MGCopyAnswer();
  if (!v1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 == CFStringGetTypeID())
  {
    v4 = CFStringCompare(v2, @"AppleDisplay", 0) == kCFCompareEqualTo;
LABEL_5:
    byte_100042AB9 = v4;
    return;
  }

  _os_assert_log();
  _os_crash();
  __break(1u);
}

__CFString *sub_10000E228(const char *a1, unsigned int a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = [[NSString alloc] initWithBytesNoCopy:a1 length:strnlen(a1 encoding:a2) freeWhenDone:{4, 0}];
    }

    else
    {
      v2 = &stru_100039908;
    }

    return v2;
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void sub_10000E5B8(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void sub_10000E614(io_registry_entry_t a1)
{
  if (a1)
  {
    v1 = IORegistryEntrySetCFProperty(a1, @"IOPMUBootErrorClear", &off_10003C430);
    if (v1)
    {
      v2 = v1;
      v3 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        v4[0] = 67109120;
        v4[1] = v2;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "failed to clear PMU boot-properties with error: %d", v4, 8u);
      }

      if (qword_100042A78 != -1)
      {
        dispatch_once(&qword_100042A78, &stru_100038ED8);
      }

      if (!dword_100042A70)
      {
        if (os_variant_has_internal_diagnostics())
        {
          _os_crash();
          __break(1u);
        }
      }
    }
  }
}

id sub_10000E728(void *a1, id *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  result = a2[5];
  a1[5] = result;
  return result;
}

id sub_10000E794(uint64_t a1)
{
  v1 = *(a1 + 56);
  v5[0] = @"bootStage";
  v5[1] = @"type";
  v2 = *(a1 + 32);
  v6[0] = v1;
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

id sub_10000E828(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = objc_alloc_init(NSMutableDictionary);
  [v10 setObject:v9 forKeyedSubscript:@"bootStage"];
  [v10 setObject:v7 forKeyedSubscript:@"panicCount"];

  [v10 setObject:v8 forKeyedSubscript:@"otherResetCount"];
  [v10 setObject:v9 forKeyedSubscript:@"bootStage"];

  [v10 setObject:v5 forKeyedSubscript:@"resetType"];
  [v10 setObject:off_100042010 forKeyedSubscript:@"bootAppHash"];
  if ([v6 containsObject:@"backpow"])
  {
    v11 = &__kCFBooleanTrue;
  }

  else
  {
    v11 = &__kCFBooleanFalse;
  }

  [v10 setObject:v11 forKeyedSubscript:@"backpow"];
  if ([v6 containsObject:@"btn_rst"])
  {
    v12 = &__kCFBooleanTrue;
  }

  else
  {
    v12 = &__kCFBooleanFalse;
  }

  [v10 setObject:v12 forKeyedSubscript:@"btn_rst"];
  if ([v6 containsObject:@"btn_shdn"])
  {
    v13 = &__kCFBooleanTrue;
  }

  else
  {
    v13 = &__kCFBooleanFalse;
  }

  [v10 setObject:v13 forKeyedSubscript:@"btn_shdn"];
  if ([v6 containsObject:@"chg_pok_fall"])
  {
    v14 = &__kCFBooleanTrue;
  }

  else
  {
    v14 = &__kCFBooleanFalse;
  }

  [v10 setObject:v14 forKeyedSubscript:@"chg_pok_fall"];
  if ([v6 containsObject:@"cpu_therm"])
  {
    v15 = &__kCFBooleanTrue;
  }

  else
  {
    v15 = &__kCFBooleanFalse;
  }

  [v10 setObject:v15 forKeyedSubscript:@"cpu_therm"];
  if ([v6 containsObject:@"crash"])
  {
    v16 = &__kCFBooleanTrue;
  }

  else
  {
    v16 = &__kCFBooleanFalse;
  }

  [v10 setObject:v16 forKeyedSubscript:@"crash"];
  if ([v6 containsObject:@"dbg_rst"])
  {
    v17 = &__kCFBooleanTrue;
  }

  else
  {
    v17 = &__kCFBooleanFalse;
  }

  [v10 setObject:v17 forKeyedSubscript:@"dbg_rst"];
  if ([v6 containsObject:@"force_off"])
  {
    v18 = &__kCFBooleanTrue;
  }

  else
  {
    v18 = &__kCFBooleanFalse;
  }

  [v10 setObject:v18 forKeyedSubscript:@"force_off"];
  if ([v6 containsObject:@"gpu_therm"])
  {
    v19 = &__kCFBooleanTrue;
  }

  else
  {
    v19 = &__kCFBooleanFalse;
  }

  [v10 setObject:v19 forKeyedSubscript:@"gpu_therm"];
  if ([v6 containsObject:@"ntc_shdn"])
  {
    v20 = &__kCFBooleanTrue;
  }

  else
  {
    v20 = &__kCFBooleanFalse;
  }

  [v10 setObject:v20 forKeyedSubscript:@"ntc_shdn"];
  if ([v6 containsObject:@"oc"])
  {
    v21 = &__kCFBooleanTrue;
  }

  else
  {
    v21 = &__kCFBooleanFalse;
  }

  [v10 setObject:v21 forKeyedSubscript:@"oc"];
  if ([v6 containsObject:@"ot"])
  {
    v22 = &__kCFBooleanTrue;
  }

  else
  {
    v22 = &__kCFBooleanFalse;
  }

  [v10 setObject:v22 forKeyedSubscript:@"ot"];
  if ([v6 containsObject:@"ov"])
  {
    v23 = &__kCFBooleanTrue;
  }

  else
  {
    v23 = &__kCFBooleanFalse;
  }

  [v10 setObject:v23 forKeyedSubscript:@"ov"];
  if ([v6 containsObject:@"por"])
  {
    v24 = &__kCFBooleanTrue;
  }

  else
  {
    v24 = &__kCFBooleanFalse;
  }

  [v10 setObject:v24 forKeyedSubscript:@"por"];
  if ([v6 containsObject:@"remote_pmic"])
  {
    v25 = &__kCFBooleanTrue;
  }

  else
  {
    v25 = &__kCFBooleanFalse;
  }

  [v10 setObject:v25 forKeyedSubscript:@"remote_pmic"];
  if ([v6 containsObject:@"rst"])
  {
    v26 = &__kCFBooleanTrue;
  }

  else
  {
    v26 = &__kCFBooleanFalse;
  }

  [v10 setObject:v26 forKeyedSubscript:@"rst"];
  if ([v6 containsObject:@"sgpio"])
  {
    v27 = &__kCFBooleanTrue;
  }

  else
  {
    v27 = &__kCFBooleanFalse;
  }

  [v10 setObject:v27 forKeyedSubscript:@"sgpio"];
  if ([v6 containsObject:@"sochot"])
  {
    v28 = &__kCFBooleanTrue;
  }

  else
  {
    v28 = &__kCFBooleanFalse;
  }

  [v10 setObject:v28 forKeyedSubscript:@"sochot"];
  if ([v6 containsObject:@"spmi"])
  {
    v29 = &__kCFBooleanTrue;
  }

  else
  {
    v29 = &__kCFBooleanFalse;
  }

  [v10 setObject:v29 forKeyedSubscript:@"spmi"];
  if ([v6 containsObject:@"sstate"])
  {
    v30 = &__kCFBooleanTrue;
  }

  else
  {
    v30 = &__kCFBooleanFalse;
  }

  [v10 setObject:v30 forKeyedSubscript:@"sstate"];
  if ([v6 containsObject:@"timeout"])
  {
    v31 = &__kCFBooleanTrue;
  }

  else
  {
    v31 = &__kCFBooleanFalse;
  }

  [v10 setObject:v31 forKeyedSubscript:@"timeout"];
  if ([v6 containsObject:@"upc_reset"])
  {
    v32 = &__kCFBooleanTrue;
  }

  else
  {
    v32 = &__kCFBooleanFalse;
  }

  [v10 setObject:v32 forKeyedSubscript:@"upc_reset"];
  if ([v6 containsObject:@"uv"])
  {
    v33 = &__kCFBooleanTrue;
  }

  else
  {
    v33 = &__kCFBooleanFalse;
  }

  [v10 setObject:v33 forKeyedSubscript:@"uv"];
  if ([v6 containsObject:@"vdd_hi_and_chg_pok"])
  {
    v34 = &__kCFBooleanTrue;
  }

  else
  {
    v34 = &__kCFBooleanFalse;
  }

  [v10 setObject:v34 forKeyedSubscript:@"vdd_hi_and_chg_pok"];
  v35 = [v6 containsObject:@"wdog"];

  if (v35)
  {
    v36 = &__kCFBooleanTrue;
  }

  else
  {
    v36 = &__kCFBooleanFalse;
  }

  [v10 setObject:v36 forKeyedSubscript:@"wdog"];

  return v10;
}

void sub_10000ED40(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = +[OSASystemConfiguration sharedInstance];
  v6 = [v5 crashReporterKey];
  v7 = *(a1 + 40);
  v8 = OSADateFormat();
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = [*(a1 + 72) componentsJoinedByString:@" "];
  v12 = [*(a1 + 64) unsignedIntValue];
  v14 = [NSString stringWithFormat:@"Incident Identifier: %@\nCrashReporter Key:   %@\nDate: %@\nReset count: %@\nBoot failure count: %@\nBoot faults: %@\nBoot stage: 0x%x\nBoot app: %@\nsocId: %x\nsocRevision: %x", v3, v6, v8, v9, v10, v11, v12, off_100042010, *(a1 + 96), *(a1 + 100)];

  v13 = [v14 dataUsingEncoding:4 allowLossyConversion:1];
  [v4 writeData:v13];
}

uint64_t sub_10000EEA8()
{
  if (qword_100042AD8 != -1)
  {
    dispatch_once(&qword_100042AD8, &stru_100039070);
  }

  return qword_100042AC8;
}

void sub_10000EEF4(id a1)
{
  LOWORD(qword_100042AC8) = 0;
  BYTE2(qword_100042AC8) = 0;
  qword_100042AD0 = 0;
  if (os_variant_has_internal_diagnostics())
  {
    v14 = 0;
    sub_10000DA08(&v14);
    LOBYTE(qword_100042AC8) = v14 & 1;
    if (v14)
    {
      v1 = +[NSFileManager defaultManager];
      if ([v1 fileExistsAtPath:@"/var/tmp/dumppanic"])
      {
        v13 = 0;
        v2 = [v1 removeItemAtPath:@"/var/tmp/dumppanic" error:&v13];
        v3 = v13;
        if ((v2 & 1) == 0)
        {
          v4 = qword_100042B28;
          if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = @"/var/tmp/dumppanic";
            v16 = 2112;
            v17 = v3;
            _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to remove directory: %@ -> %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v3 = 0;
      }

      v12 = v3;
      v5 = [v1 createDirectoryAtPath:@"/var/tmp/dumppanic" withIntermediateDirectories:1 attributes:0 error:&v12];
      v6 = v12;

      if ((v5 & 1) == 0)
      {
        v7 = qword_100042B28;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = @"/var/tmp/dumppanic";
          v16 = 2112;
          v17 = v6;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to create directory: %@ -> %@", buf, 0x16u);
        }
      }
    }

    *buf = 0;
    v8 = sub_10000D4EC();
    v9 = sub_10000D704(v8, @"BATS_TESTPLAN_ID", buf);

    if (v9)
    {
      qword_100042AD0 = *buf;
    }

    if (sub_10000CC80())
    {
      v10 = 1;
    }

    else
    {
      if (v9)
      {
        v11 = *buf == 0;
      }

      else
      {
        v11 = 1;
      }

      v10 = !v11;
    }

    BYTE1(qword_100042AC8) = v10;
    if (qword_100042A68 != -1)
    {
      dispatch_once(&qword_100042A68, &stru_100038EB8);
    }

    BYTE2(qword_100042AC8) = byte_100042A60;
  }
}

BOOL sub_10000F190(void *a1, const void *a2, size_t a3)
{
  v5 = a1;
  if (!v5)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;

  if (!a2)
  {
LABEL_14:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_15:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  if (a3 > 0x240000)
  {
    v7 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Paniclog data size (%llu bytes) size greater than max buffer size. Truncating.", &v12, 0xCu);
    }

    a3 = 2359296;
  }

  v8 = [v6 path];
  v9 = fopen([v8 UTF8String], "w");

  if (v9)
  {
    fwrite(a2, a3, 1uLL, v9);
    fclose(v9);
  }

  else
  {
    v10 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unable to open file: %@", &v12, 0xCu);
    }
  }

  return v9 != 0;
}

uint64_t sub_10000F344(uint64_t a1)
{
  v1 = a1;
  if ((a1 - 101) <= 0xFFFFFF9B)
  {
    [NSString stringWithFormat:@"Implausible embedded panic header version: %d", a1];
    [objc_claimAutoreleasedReturnValue() UTF8String];
    _os_crash();
    __break(1u);
  }

  if ((a1 - 1) < 6)
  {
    return *&asc_10002B7B8[4 * (a1 - 1)];
  }

  v3 = qword_100042B28;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v5 = v1;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unknown embedded panic header version: %d", buf, 8u);
  }

  return 177;
}

__CFString *sub_10000F440(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0xFFFFFFFFFFFFFFFELL;
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v4 = 0;
    v5 = &stru_100039908;
    do
    {
      v6 = [NSString stringWithFormat:@"%02hhx%02hhx", *(a1 + v4), *(a1 + v4 + 1)];
      v7 = [(__CFString *)v5 stringByAppendingString:v6];

      v4 += 2;
      v5 = v7;
    }

    while (v2 > v4);
  }

  else
  {
    v7 = &stru_100039908;
  }

  return v7;
}

void sub_10000F510(_DWORD *a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a1[2] <= 4u)
  {
    *a4 = 0;
    v5 = qword_100042B28;
    if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v20) = 0;
    v6 = "Extensible Paniclog not supported. Skipping.";
    v7 = v5;
    v8 = 2;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v20, v8);
    return;
  }

  v12 = qword_100042B28;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 161);
    v14 = *(a1 + 165);
    v20 = 67109376;
    v21 = v13;
    v22 = 1024;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Extensible Paniclog offset %u Length %u", &v20, 0xEu);
  }

  v15 = *(a1 + 165);
  if ((v15 - 1) >> 15)
  {
    v19 = qword_100042B28;
    if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v20 = 67109120;
    v21 = v15;
    v6 = "Did not find a valid ext paniclog. Found with length: %d";
    v7 = v19;
    v8 = 8;
    goto LABEL_15;
  }

  v16 = *(a1 + 161);
  v17 = qword_100042B28;
  if (v16 < a3 && v16 >= a1[6] + a1[5])
  {
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 67109120;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "found ext paniclog with %u bytes", &v20, 8u);
      v16 = *(a1 + 161);
      v15 = *(a1 + 165);
    }

    *a4 = [NSData dataWithBytesNoCopy:a2 + v16 length:v15 freeWhenDone:0];
  }

  else if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
  {
    v20 = 67109376;
    v21 = v15;
    v22 = 1024;
    v23 = v16;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "invalid extensible paniclog eph_ext_paniclog_len %u eph_ext_paniclog_offset %u,", &v20, 0xEu);
  }
}

void sub_10000F770(_DWORD *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = a1[2];
  v9 = qword_100042B28;
  v10 = os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT);
  if (v8 <= 5)
  {
    if (!v10)
    {
      return;
    }

    LOWORD(v21) = 0;
    v11 = "Panic Initiator not supported. Skipping.";
    v12 = v9;
    v13 = 2;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v21, v13);
    return;
  }

  if (v10)
  {
    v14 = *(a1 + 169);
    v15 = *(a1 + 173);
    v21 = 67109376;
    v22 = v14;
    v23 = 1024;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Panic Initiator offset %u Length %u", &v21, 0xEu);
  }

  v16 = *(a1 + 173);
  if (v16 - 1 > 0xFF)
  {
    v20 = qword_100042B28;
    if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v21 = 67109120;
    v22 = v16;
    v11 = "Did not find a valid panic initiator. Found with length: %d";
    v12 = v20;
    v13 = 8;
    goto LABEL_15;
  }

  v17 = *(a1 + 169);
  v18 = qword_100042B28;
  if (v17 < a3 && v17 >= a1[6] + a1[5])
  {
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 67109120;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "found panic initiator with %u bytes", &v21, 8u);
      v17 = *(a1 + 169);
      v16 = *(a1 + 173);
    }

    *a4 = sub_10000E228((a2 + v17), v16);
  }

  else if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
  {
    v21 = 67109376;
    v22 = v16;
    v23 = 1024;
    v24 = v17;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "invalid panic initiator eph_panic_initiator_len %u eph_panic_initiator_offset %u,", &v21, 0xEu);
  }
}

void sub_10000F9AC(unsigned int *a1, unint64_t a2, void *a3, void *a4, void *a5, Bytef *a6, void *a7, void *a8, double a9, void *a10)
{
  v14 = a3;
  v15 = a5;
  v16 = a8;
  v17 = a10;
  v18 = objc_opt_new();
  v19 = [NSString stringWithFormat:@"Source: %@", 0];
  [v18 addObject:v19];

  if (v15)
  {
    v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"OTA UUID: %.*s\n", [v15 length], objc_msgSend(v15, "bytes"));
    [v18 addObject:v20];
  }

  v277 = v16;
  v278 = v14;
  v282 = v18;
  if (a1 && a2 >= 0xB1 && *a1 == 1179995723)
  {
    v274 = 0;
    v21 = 0;
    v22 = 0;
    v23 = a2;
    v24 = a1;
  }

  else
  {
    v22 = 0;
    v274 = 0;
    v23 = 0;
    v24 = 0;
    v21 = 0;
    if (a1 && a2 >= 8)
    {
      if (*a1 != 1346717008)
      {
        v26 = [NSString stringWithFormat:@"iBoot panic header magic invalid: found 0x%x, expected 0x%x", *a1, 1346717008];
        v30 = qword_100042B28;
        v25 = v14;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.next_in) = 138412290;
          *(&buf.next_in + 4) = v26;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
        }

        [v18 addObject:v26];
        if (byte_100042AE8)
        {
          v31 = @"iBoot header contained bad magic (possible legacy panic data)";
        }

        else
        {
          v31 = @"iBoot header contained bad magic";
        }

        v29 = [v14 path];
        sub_100012258(v31, v18, a4, v29, a6, a7, a9);
        v28 = v277;
        goto LABEL_186;
      }

      v25 = v14;
      if (a1[1] - 6 <= 0xFFFFFFFA)
      {
        v26 = [NSString stringWithFormat:@"iBoot panic header indicates invalid number of logs available (%d)", a1[1]];
        v27 = qword_100042B28;
        v28 = v277;
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.next_in) = 138412290;
          *(&buf.next_in + 4) = v26;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
        }

        [v18 addObject:v26];
        v29 = [v14 path];
        sub_100012258(@"iBoot header contains invalid number of logs", v18, a4, v29, a6, a7, a9);
        goto LABEL_186;
      }

      v32 = qword_100042B28;
      v33 = v277;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = a1[1];
        LODWORD(buf.next_in) = 67109120;
        HIDWORD(buf.next_in) = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "iBoot panic header indicates %d panic logs available", &buf, 8u);
      }

      v35 = a1[1];
      if (v35)
      {
        v271 = v17;
        v261 = v15;
        v36 = 0;
        v37 = 0;
        v22 = 0;
        v266 = 0;
        v274 = 0;
        v38 = (a1 + 6);
        do
        {
          v10 = (v38 - 2);
          v39 = *(v38 - 4);
          v40 = qword_100042B28;
          v41 = v40;
          if (v39 == 4)
          {
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v44 = *v38;
              LODWORD(buf.next_in) = 134217984;
              *(&buf.next_in + 4) = v44;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Found SOCD container with length 0x%llx", &buf, 0xCu);
            }

            ++v37;
            v274 = v38 - 2;
          }

          else if (v39 == 2)
          {
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v43 = *v38;
              LODWORD(buf.next_in) = 134217984;
              *(&buf.next_in + 4) = v43;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Found storage dump log of length 0x%llx", &buf, 0xCu);
            }

            ++v37;
            v266 = v38 - 2;
          }

          else if (v39)
          {
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v45 = *(v38 - 4);
              v46 = *v38;
              LODWORD(buf.next_in) = 67109376;
              HIDWORD(buf.next_in) = v45;
              LOWORD(buf.avail_in) = 2048;
              *(&buf.avail_in + 2) = v46;
              _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Found panic log of unknown type (%d) length 0x%llx", &buf, 0x12u);
            }
          }

          else
          {
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v42 = *v38;
              LODWORD(buf.next_in) = 134217984;
              *(&buf.next_in + 4) = v42;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Found embedded panic log of length 0x%llx", &buf, 0xCu);
            }

            ++v37;
            v22 = v38 - 2;
          }

          v35 = a1[1];
          ++v36;
          v38 += 3;
        }

        while (v36 < v35);
        if (v37)
        {
          v23 = 0;
          v24 = 0;
          v15 = v261;
          v17 = v271;
          v21 = v266;
          goto LABEL_42;
        }

        v33 = v277;
        v25 = v278;
        v15 = v261;
        v17 = v271;
      }

      v26 = [NSString stringWithFormat:@"Unable to find usable panic log after traversing %d iBoot metadata logs", v35];
      v195 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.next_in) = 138412290;
        *(&buf.next_in + 4) = v26;
        _os_log_error_impl(&_mh_execute_header, v195, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }

      [v18 addObject:v26];
      v29 = [v25 path];
      sub_100012258(@"No usable panic logs available from iBoot headers", v18, a4, v29, a6, a7, a9);
      v28 = v33;
      goto LABEL_186;
    }
  }

LABEL_42:
  v267 = v21;
  v47 = sub_10000EEA8();
  v48 = v47;
  if (v17 && (v47 & 1) != 0)
  {
    v49 = [NSURL fileURLWithPathComponents:&off_10003C328];
    v10 = v17;
    if (!sub_10000F190(v49, [v17 bytes], objc_msgSend(v17, "length")))
    {
      v50 = qword_100042B28;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.next_in) = 138412290;
        *(&buf.next_in + 4) = v49;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "failed to write fallback data to file: %@", &buf, 0xCu);
      }
    }

    v17 = v10;
  }

  v276 = objc_alloc_init(NSMutableDictionary);
  if (v22)
  {
    v10 = &unk_100042000;
    v51 = qword_100042B28;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = v22[2];
      LODWORD(buf.next_in) = 134217984;
      *(&buf.next_in + 4) = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Found embedded panic log of length 0x%llx", &buf, 0xCu);
    }

    if (v48)
    {
      v53 = [NSURL fileURLWithPathComponents:&off_10003C340];
      if (!sub_10000F190(v53, &v22[1][a1], v22[2]))
      {
        v54 = qword_100042B28;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.next_in) = 138412290;
          *(&buf.next_in + 4) = v53;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "failed to write embedded panic data to file: %@", &buf, 0xCu);
        }
      }
    }

    v55 = *(v22 + 1);
    if ((v55 & 2) != 0)
    {
      v60 = v18;
      v273 = 0;
      v64 = @"BAD MAGIC! (flag set in iBoot panic header), no panic log available";
      p_isa = &IOIteratorIsValid_ptr;
    }

    else
    {
      p_isa = &IOIteratorIsValid_ptr;
      if ((v55 & 4) != 0)
      {
        v65 = [NSString stringWithFormat:@"iBoot indicates CRC mismatch"];
        [v18 addObject:v65];

        p_isa = &IOIteratorIsValid_ptr;
        v273 = 2;
      }

      else
      {
        v273 = 0;
      }

      v295 = 0;
      v66 = sub_10001240C(v22, a2, &v295);
      v64 = v295;
      if (!v66)
      {
        v60 = v18;
        v23 = v22[2];
        v61 = &v22[1][a1];
        goto LABEL_70;
      }

      v60 = v18;
    }

    v61 = v24;
LABEL_70:
    v269 = v64;
    *a6 = [p_isa[288] stringWithFormat:@"%@\n%@", v64, 0];
    v62 = 1;
    v63 = @"panic";
    goto LABEL_71;
  }

  if (!v17)
  {
    v60 = v18;
    v273 = 0;
    v269 = 0;
    v62 = 0;
    v265 = @"panic";
    p_isa = &IOIteratorIsValid_ptr;
    v61 = v24;
    goto LABEL_72;
  }

  v57 = qword_100042B28;
  p_isa = &IOIteratorIsValid_ptr;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = [v17 length];
    LODWORD(buf.next_in) = 134217984;
    *(&buf.next_in + 4) = v58;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Falling back to corefile embedded panic log of length 0x%lx", &buf, 0xCu);
  }

  v59 = [NSString stringWithFormat:@"DRAM panic log missing corefile fallback log in use"];;
  v60 = v18;
  [v18 addObject:v59];

  v61 = [v17 bytes];
  v23 = [v17 length];
  v269 = 0;
  v273 = 1;
  v62 = 1;
  v63 = @"interrupted coredump panic";
LABEL_71:
  v265 = v63;
LABEL_72:
  v275 = v61;
  v252 = v23;
  v262 = v15;
  v272 = v17;
  v251 = v62;
  if (!v61 || !v23)
  {

    v256 = 0;
    v78 = 0;
    v79 = 0;
    v24 = 0;
    v15 = 0;
    v62 = 0;
    v80 = 0;
    a6 = 0;
    v81 = @"embedded panic data not available";
    goto LABEL_103;
  }

  v293 = 0;
  v67 = v60;
  v68 = v276;
  v69 = v67;
  if (!v69)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_296;
  }

  v70 = v69;

  v71 = v68;
  if (!v71)
  {
LABEL_296:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_297;
  }

  v72 = v71;

  v294 = 0;
  v73 = qword_100042B28;
  if (v252 <= 0xB0)
  {
    v10 = p_isa;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.next_in) = 0;
      _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "rejecting implausible buffer!", &buf, 2u);
    }

    v256 = 0;
    v259 = 0;
    v263 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    goto LABEL_101;
  }

  v258 = v72;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
  {
    v82 = *v275;
    v83 = v275[2];
    v254 = *(v275 + 3);
    LODWORD(v255) = v275[5];
    v257 = v275[6];
    v260 = v275[9];
    v264 = v275[10];
    v84 = v73;
    v85 = sub_10000E228(v275 + 52, 0x20u);
    sub_10000E228(v275 + 84, 0x20u);
    v87 = v86 = v70;
    v88 = sub_10000E228(v275 + 116, 0x25u);
    v89 = *(v275 + 153);
    LODWORD(buf.next_in) = 134220802;
    *(&buf.next_in + 4) = v252;
    *(&buf.avail_in + 2) = 1024;
    *(&buf.avail_in + 6) = v82;
    WORD1(buf.total_in) = 1024;
    HIDWORD(buf.total_in) = v83;
    LOWORD(buf.next_out) = 2048;
    *(&buf.next_out + 2) = v254;
    HIWORD(buf.avail_out) = 1024;
    *(&buf.avail_out + 1) = v255;
    LOWORD(buf.total_out) = 1024;
    *(&buf.total_out + 2) = v257;
    HIWORD(buf.total_out) = 1024;
    LODWORD(buf.msg) = v260;
    WORD2(buf.msg) = 1024;
    *(&buf.msg + 6) = v264;
    WORD1(buf.state) = 2112;
    *(&buf.state + 4) = v85;
    WORD2(buf.zalloc) = 2112;
    *(&buf.zalloc + 6) = v87;
    HIWORD(buf.zfree) = 2112;
    buf.opaque = v88;
    LOWORD(buf.data_type) = 2048;
    *(&buf.data_type + 2) = v89;
    _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "(embedded) length: %zu eph: magic %08X vers %u flags 0x%016llX panic_log offset %u, len %u, other_log offset %u, len %u, osversion: %@, macosversion: %@, bootsessionuuid: %@, roots_installed: %lld", &buf, 0x62u);

    v70 = v86;
    v72 = v258;
  }

  v90 = *v275;
  if (v90 == 1179995723)
  {
    v91 = *(v275 + 3);
    v255 = sub_10000E228(v275 + 116, 0x25u);
    v92 = v255;
    v75 = sub_10000E228(v275 + 52, 0x20u);
    v93 = v75;
    v263 = *(v275 + 153);
    v259 = v91;
    if (!v275[6])
    {
      v95 = 0;
      goto LABEL_97;
    }

    v94 = v275[5];
    if (v94 < sub_10000F344(v275[2]))
    {
      v95 = v275[6];
LABEL_97:
      v104 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
      {
        v105 = v275[5];
        LODWORD(buf.next_in) = 67109632;
        HIDWORD(buf.next_in) = v95;
        LOWORD(buf.avail_in) = 1024;
        *(&buf.avail_in + 2) = v105;
        *(&buf.avail_in + 3) = 2048;
        v106 = v252;
        buf.total_in = v252;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "invalid eph_panic_log_len %u eph_panic_log_offset %u, embedded_panic_length %lu", &buf, 0x18u);
        v95 = v275[6];
      }

      else
      {
        v106 = v252;
      }

      v76 = v255;
      v10 = p_isa;
      v107 = [p_isa[288] stringWithFormat:@"Embedded panic header doesn't contain valid panic log: eph_panic_log_len %u eph_panic_log_offset %u embedded_panic_length %lu", v95, v275[5], v106];
      [(__CFString *)v70 addObject:v107];

      v256 = 0;
      v74 = 0;
      v77 = @"Embedded panic log header contains invalid panic log offset";
      v72 = v258;
      goto LABEL_101;
    }

    v95 = v275[6];
    if (v252 <= v275[5])
    {
      goto LABEL_97;
    }

    v98 = [NSNumber numberWithUnsignedLongLong:v95];
    [(Bytef *)v258 setObject:v98 forKey:@"PanicLogLengthInBytes"];

    v99 = [NSNumber numberWithUnsignedLongLong:v275[10]];
    [(Bytef *)v258 setObject:v99 forKey:@"OtherLogLengthInBytes"];

    v100 = [NSNumber numberWithUnsignedLongLong:v275[8]];
    [(Bytef *)v258 setObject:v100 forKey:@"StackshotLengthInBytes"];

    LODWORD(v100) = v275[10] + v275[6] + v275[8];
    v101 = v100 + sub_10000F344(v275[2]);
    v102 = [NSNumber numberWithUnsignedLongLong:v101];
    [(Bytef *)v258 setObject:v102 forKey:@"UsedSizeInBytes"];

    *v299 = 0;
    if (sub_10000C250("chosen", "embedded-panic-log-size", v299))
    {
      v103 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.next_in) = 0;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "WARNING: unable to calculate panic region utilization", &buf, 2u);
      }
    }

    else
    {
      if (*v299)
      {
        v203 = [NSNumber numberWithUnsignedLongLong:100 * v101 / *v299];
        v204 = v258;
        [(Bytef *)v258 setObject:v203 forKey:@"PercentUsed"];

        v205 = *v299;
      }

      else
      {
        v205 = 0;
        v204 = v258;
      }

      v210 = [NSNumber numberWithUnsignedLongLong:v205];
      [(Bytef *)v204 setObject:v210 forKey:@"PanicRegionSizeInBytes"];
    }

    v211 = v275[5];
    v212 = v275[6];
    v256 = &v252[-v211] >= v212;
    if (&v252[-v211] < v212)
    {
      v217 = (v252 - v211);
      v218 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.next_in) = 67109376;
        HIDWORD(buf.next_in) = v211;
        LOWORD(buf.avail_in) = 1024;
        *(&buf.avail_in + 2) = v212;
        _os_log_error_impl(&_mh_execute_header, v218, OS_LOG_TYPE_ERROR, "truncating eph_panic_log_offset %u, eph_panic_log_len %u (ignoring other log)", &buf, 0xEu);
        v212 = v275[6];
      }

      v220 = [p_isa[288] stringWithFormat:@"Truncated panic string from 0x%x to 0x%x bytes (ignoring other log)", v212, v217];
      [(__CFString *)v70 addObject:v220];

      v221 = [objc_alloc(p_isa[288]) initWithBytesNoCopy:v275 + v275[5] length:v217 encoding:4 freeWhenDone:0];
      v222 = v221;
      v74 = 0;
      goto LABEL_287;
    }

    v213 = qword_100042B28;
    if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.next_in) = 67109120;
      HIDWORD(buf.next_in) = v212;
      _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "found embedded panic log with %u bytes", &buf, 8u);
    }

    v214 = [objc_alloc(p_isa[288]) initWithBytesNoCopy:v275 + v275[5] length:v275[6] encoding:4 freeWhenDone:0];
    if (v214)
    {
      v215 = qword_100042B28;
      v254 = v214;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.next_in) = 138412290;
        *(&buf.next_in + 4) = v214;
        _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_DEFAULT, "embedded panic string decoded: %@", &buf, 0xCu);
      }

      v216 = v275;
    }

    else
    {
      v223 = [p_isa[288] stringWithFormat:@"Parsed empty panic string from panic log buffer even though expected non-zero length: eph_panic_log_len %u eph_panic_log_offset %u embedded_panic_length %lu", v275[6], v275[5], v252];
      [(__CFString *)v70 addObject:v223];

      v216 = v275;
      if (v275[6] < 0xF1)
      {
        v254 = 0;
      }

      else
      {
        v254 = [objc_alloc(p_isa[288]) initWithBytesNoCopy:v275 + v275[5] length:240 encoding:4 freeWhenDone:0];
        if (v254)
        {
          goto LABEL_260;
        }
      }

      v224 = p_isa[288];
      v225 = v275[6];
      if (v225 >= 0x64)
      {
        v226 = 100;
      }

      else
      {
        v226 = v225;
      }

      v227 = sub_10000F440(v275 + v275[5], v226);
      v228 = [v224 stringWithFormat:@"Prefix of panic string dumped as hex: %@", v227];
      [(__CFString *)v70 addObject:v228];

      v216 = v275;
    }

LABEL_260:
    v229 = v216[10];
    if (v229)
    {
      v230 = v216[9];
      v231 = v216[5];
      v232 = v216[6];
      if (v230 < v232 + v231)
      {
        v233 = qword_100042B28;
LABEL_271:
        v221 = v254;
        if (os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.next_in) = 67109376;
          HIDWORD(buf.next_in) = v232;
          LOWORD(buf.avail_in) = 1024;
          *(&buf.avail_in + 2) = v230;
          _os_log_error_impl(&_mh_execute_header, v233, OS_LOG_TYPE_ERROR, "invalid eph_panic_log_len %u eph_other_log_offset %u,", &buf, 0xEu);
        }

        v74 = 0;
        goto LABEL_286;
      }

      v233 = qword_100042B28;
      if (v252 <= v230)
      {
        goto LABEL_271;
      }

      if (&v252[-v230] >= v229)
      {
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.next_in) = 67109120;
          HIDWORD(buf.next_in) = v229;
          _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_DEFAULT, "found other log with %u bytes", &buf, 8u);
        }

        v237 = [NSString alloc];
        v239 = v275[10];
        v238 = v275 + v275[9];
      }

      else
      {
        if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.next_in) = 67109376;
          HIDWORD(buf.next_in) = v230;
          LOWORD(buf.avail_in) = 1024;
          *(&buf.avail_in + 2) = v229;
          _os_log_error_impl(&_mh_execute_header, v233, OS_LOG_TYPE_ERROR, "truncating eph_other_log_offset %u, eph_other_log_len %u", &buf, 0xEu);
        }

        v235 = [NSString stringWithFormat:@"truncated other string"];
        [(__CFString *)v70 addObject:v235];

        v236 = v252 - v275[9];
        v237 = [NSString alloc];
        v238 = v275 + v275[9];
        v239 = v236;
      }

      v74 = [v237 initWithBytesNoCopy:v238 length:v239 encoding:4 freeWhenDone:0];
      v243 = v74;
      p_isa = &IOIteratorIsValid_ptr;
    }

    else
    {
      v234 = qword_100042B28;
      if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.next_in) = 0;
        _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_DEFAULT, "no 'other' log found in embedded panic log", &buf, 2u);
      }

      v74 = 0;
    }

    v221 = v254;
LABEL_286:
    sub_10000F510(v275, v275, v252, &v294);
    sub_10000F770(v275, v275, v252, &v293);
LABEL_287:
    v72 = v258;
    v10 = p_isa;
    if (v221)
    {
      v77 = v221;
    }

    else
    {
      v77 = @"embedded panic data was failed to be parsed from panic buffer, check notes for more details";
    }

    v76 = v255;
    goto LABEL_101;
  }

  v96 = qword_100042B28;
  if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf.next_in) = 67109120;
    HIDWORD(buf.next_in) = v90;
    _os_log_error_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "invalid eph_magic 0x%08X", &buf, 8u);
    v90 = *v275;
  }

  v10 = p_isa;
  v97 = [p_isa[288] stringWithFormat:@"Embedded panic header contains invalid magic, expected 0x%x found 0x%x", 1179995723, v90];
  [(__CFString *)v70 addObject:v97];

  v256 = 0;
  v259 = 0;
  v263 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = @"Embedded panic log header contained bad magic";
LABEL_101:

  v67 = v77;
  v62 = v74;
  v68 = v294;
  v80 = v293;
  v15 = v75;
  v24 = v76;
  v108 = v67;
  if (v108)
  {
    v81 = v108;

    *a6 = [v10[288] stringWithFormat:@"%@\n%@", v81, v62];
    v60 = v282;
    a6 = v68;
    v78 = v259;
    v79 = v263;
LABEL_103:
    v109 = [PanicReport alloc];
    v110 = [NSNumber numberWithUnsignedLongLong:v79];
    v254 = v81;
    v255 = v62;
    v253 = v24;
    v111 = [(PanicReport *)v109 initWithPanicString:v81 otherString:v62 buildVersion:v15 panicFlags:v78 panicType:v265 incidentID:v24 rootsInstalled:v110];

    v112 = sub_10000C138(v278, 0, a9);
    [(PanicReport *)v111 setSOCIdAndRev];
    [(PanicReport *)v111 setUtilizationInfo:v276];
    [(PanicReport *)v111 useStackshotBuffer:0 size:0 frontmostPids:0 atTime:a4 machTime:0xFFFFFFFFLL sequence:a9];
    [(PanicReport *)v111 addNotes:v60];
    [v60 removeAllObjects];
    [(PanicReport *)v111 useExtPaniclog:a6];
    v258 = v80;
    [(PanicReport *)v111 setPanicInitiator:v80];
    [(PanicReport *)v111 setPanicProcessingFlags:v273];
    a4 = v112;
    if (([(PanicReport *)v111 saveWithOptions:v112]& 1) == 0)
    {
      v113 = qword_100042B28;
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.next_in) = 0;
        _os_log_error_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "Failed to write initial safe panic log", &buf, 2u);
      }
    }

    v114 = [(PanicReport *)v111 logfile];
    v269 = [v114 copy];

    if (byte_100042AB8 == 1)
    {
      v115 = [[_TtC9DumpPanic27PanicPatternMatchingWrapper alloc] initWithAction:1];
      v116 = qword_100042AE0;
      qword_100042AE0 = v115;

      v117 = qword_100042AE0;
      if (qword_100042AE0)
      {
        v118 = [(PanicReport *)v111 panicString];
        v291[0] = _NSConcreteStackBlock;
        v291[1] = 3221225472;
        v291[2] = sub_1000125A8;
        v291[3] = &unk_100039098;
        v292 = v111;
        v119 = [v117 lookForKnownPanicWithPanicString:v118 completion:v291];

        v120 = qword_100042B28;
        if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
        {
          v121 = "Cannot find";
          if (v119)
          {
            v121 = "Found";
          }

          LODWORD(buf.next_in) = 136315138;
          *(&buf.next_in + 4) = v121;
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_INFO, "%s matched panic pattern", &buf, 0xCu);
        }

        v122 = v292;
      }

      else
      {
        v122 = qword_100042B28;
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.next_in) = 0;
          _os_log_error_impl(&_mh_execute_header, v122, OS_LOG_TYPE_ERROR, "Failed to create PanicPatternMatchingSupport object, bailing out pattern matching", &buf, 2u);
        }
      }
    }

    v263 = v15;
    [(PanicReport *)v111 donateToBiome];
    v123 = [(PanicReport *)v111 patternTypeString];

    v124 = [(PanicReport *)v111 problemType];
    v125 = v124;
    if (v123)
    {
      v298[0] = v124;
      v126 = [(PanicReport *)v111 incidentID];
      v298[1] = v126;
      v127 = [(PanicReport *)v111 patternTypeString];
      v298[2] = v127;
      v128 = [NSArray arrayWithObjects:v298 count:3];
      logForAppleCare();
    }

    else
    {
      v297[0] = v124;
      v126 = [(PanicReport *)v111 incidentID];
      v297[1] = v126;
      v127 = [NSArray arrayWithObjects:v297 count:2];
      logForAppleCare();
    }

    v129 = v282;

    v15 = objc_alloc_init(NSMutableArray);
    v287 = 0u;
    v288 = 0u;
    v289 = 0u;
    v290 = 0u;
    v130 = v277;
    v131 = [v130 countByEnumeratingWithState:&v287 objects:v296 count:16];
    v265 = v111;
    if (v131)
    {
      v132 = v131;
      v133 = *v288;
      do
      {
        for (i = 0; i != v132; i = i + 1)
        {
          if (*v288 != v133)
          {
            objc_enumerationMutation(v130);
          }

          v135 = *(*(&v287 + 1) + 8 * i);
          v136 = objc_alloc_init(NSMutableArray);
          v137 = sub_100014DB0(v135);
          v138 = sub_1000148D0(v135);
          v139 = [v135 base64EncodedStringWithOptions:0];
          if (v139)
          {
            [v136 addObject:v139];
          }

          if (v137)
          {
            [v136 addObject:v137];
          }

          [v15 addObject:v136];
        }

        v132 = [v130 countByEnumeratingWithState:&v287 objects:v296 count:16];
      }

      while (v132);
      v17 = v272;
      v129 = v282;
      v111 = v265;
    }

    else
    {
      v17 = v272;
      v138 = 0;
    }

    if (v274)
    {
      if ((*(v274 + 4) & 2) == 0)
      {
        v286 = 0;
        v140 = sub_10001240C(v274, a2, &v286);
        v141 = v286;
        v142 = v141;
        if (v140)
        {
          v259 = v141;
          [(PanicReport *)v111 useSocdContainer:v15];
          v17 = v272;
          v143 = v263;
          if (!v138)
          {
            goto LABEL_142;
          }

LABEL_141:
          v145 = off_100042010;
          [(PanicReport *)v111 setForegroundAppHash:v145];

          goto LABEL_142;
        }

        v156 = [NSData dataWithBytesNoCopy:&v274[1][a1] length:*(v274 + 4) freeWhenDone:0];
        v157 = [v156 base64EncodedStringWithOptions:0];

        v259 = v157;
        if (!v157)
        {
          v259 = [NSString stringWithFormat:@"Failed to base64 encode SOCD container of length %u", v274[2]];
        }

        v143 = v263;
        if (v251)
        {
          [(PanicReport *)v111 useSocdNandContainer:v259];

          [(PanicReport *)v111 useSocdContainer:v15];
          v129 = v282;
          v17 = v272;
          if (v138)
          {
            goto LABEL_141;
          }
        }

        else
        {
          [v130 addObject:v156];
          v165 = sub_100014DB0(v156);
          v166 = sub_1000148D0(v156);
          v167 = objc_alloc_init(NSMutableArray);
          [v167 addObject:v259];
          [v167 addObject:v165];
          [v15 addObject:v167];
          [(PanicReport *)v111 setPanicString:v165];

          [(PanicReport *)v111 useSocdContainer:v15];
          v129 = v282;
          v17 = v272;
          if (v166)
          {
            goto LABEL_141;
          }
        }

LABEL_142:
        [(PanicReport *)v111 addNotes:v129];
        [v129 removeAllObjects];
        [(PanicReport *)v111 setPanicProcessingFlags:v273];
        v146 = [(PanicReport *)v111 saveWithOptions:a4];
        v62 = &unk_100042000;
        v147 = qword_100042B28;
        v148 = v147;
        if (v146)
        {
          if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.next_in) = 0;
            _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "Wrote log with SOCD data, discarding initial safe log", &buf, 2u);
          }

          sub_10000DF40(v269);
          v148 = [(PanicReport *)v111 logfile];
          v149 = [v148 copy];

          v269 = v149;
        }

        else if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.next_in) = 0;
          _os_log_error_impl(&_mh_execute_header, v148, OS_LOG_TYPE_ERROR, "Failed to write panic log with SOCD data", &buf, 2u);
        }

        v29 = a6;
        v150 = v258;

        if (v267)
        {
          if ((*(v267 + 4) & 2) != 0)
          {
            v154 = qword_100042B28;
            v155 = v275;
            if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.next_in) = 0;
              _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "No valid storage dump data found", &buf, 2u);
            }
          }

          else
          {
            v151 = v17;
            v285 = 0;
            v152 = v267;
            v153 = sub_10001240C(v267, a2, &v285);
            v154 = v285;
            if (v153)
            {
              [v282 addObject:v154];
              v155 = v275;
              v17 = v151;
            }

            else
            {
              if ((*(v267 + 4) & 4) != 0)
              {
                v158 = [NSString stringWithFormat:@"iBoot indicates storage dump CRC mismatch"];
                [v282 addObject:v158];

                v152 = v267;
                v273 |= 2uLL;
              }

              v159 = [NSData dataWithBytesNoCopy:&v152[1][a1] length:*(v152 + 4) freeWhenDone:0];
              v160 = [v159 base64EncodedStringWithOptions:0];

              v154 = v160;
              if (!v160)
              {
                v154 = [[NSString alloc] initWithFormat:@"Failed to base64 encode storage dump of length %llu", v152[2]];
              }

              [(__CFString *)v265 useStoragePanicData:v154];
              [(__CFString *)v265 addNotes:v282];
              [v282 removeAllObjects];
              [(__CFString *)v265 setPanicProcessingFlags:v273];
              v161 = [(__CFString *)v265 saveWithOptions:a4];
              v162 = qword_100042B28;
              v163 = v162;
              if (v161)
              {
                if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.next_in) = 0;
                  _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "Wrote log with storage data, discarding initial safe log", &buf, 2u);
                }

                sub_10000DF40(v269);
                v163 = [(__CFString *)v265 logfile];
                v164 = [v163 copy];

                v269 = v164;
              }

              else if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
              {
                LOWORD(buf.next_in) = 0;
                _os_log_error_impl(&_mh_execute_header, v163, OS_LOG_TYPE_ERROR, "Failed to write panic log with storage data", &buf, 2u);
              }

              v17 = v151;

              v155 = v275;
              v29 = a6;
              v150 = v258;
            }

            v143 = v263;
          }

          v111 = v265;
        }

        else
        {
          v155 = v275;
        }

        if (!v256 || (v155[3] & 2) == 0)
        {
          v168 = qword_100042B28;
          if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.next_in) = 0;
            _os_log_impl(&_mh_execute_header, v168, OS_LOG_TYPE_DEFAULT, "no stackshot found", &buf, 2u);
          }

LABEL_184:
          v18 = v282;
          v172 = v253;
LABEL_185:

          v173 = [(PanicReport *)v111 logfile];
          *a7 = [v173 copy];

          v26 = v259;
          v15 = v262;
          v28 = v277;
          v25 = v278;
LABEL_186:

          return;
        }

        v169 = v275[7];
        if (v169 < sub_10000F344(v275[2]) || (v170 = v275[8]) == 0 || (v171 = v275[7], v252 < v171 + v170))
        {
          v168 = qword_100042B28;
          if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
          {
            v196 = v275[7];
            v197 = v275[8];
            LODWORD(buf.next_in) = 67109376;
            HIDWORD(buf.next_in) = v196;
            LOWORD(buf.avail_in) = 1024;
            *(&buf.avail_in + 2) = v197;
            _os_log_error_impl(&_mh_execute_header, v168, OS_LOG_TYPE_ERROR, "invalid eph_stackshot_offset %u, eph_stackshot_len %u", &buf, 0xEu);
          }

          goto LABEL_184;
        }

        v174 = [NSData dataWithBytesNoCopy:"dataWithBytesNoCopy:length:freeWhenDone:" length:v275 + v171 freeWhenDone:?];
        v175 = [v174 bytes];
        v176 = [v174 length];

        v177 = 0;
        if (v176 >= 5)
        {
          if (*v175 == 1503811591)
          {
            v177 = 1;
          }

          else
          {
            v177 = 2 * (*v175 == 1129270608);
          }
        }

        v178 = qword_100042B28;
        if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.next_in) = 67109120;
          HIDWORD(buf.next_in) = v177;
          _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_INFO, "panic stackshot is type %d", &buf, 8u);
        }

        v179 = v174;
        p_isa = &v179->isa;
        v168 = v179;
        v180 = v177 == 2;
        v17 = v272;
        v181 = v263;
        if (!v180)
        {
LABEL_231:
          v143 = v181;

          v111 = v265;
          [(__CFString *)v265 useStackshotBuffer:[v168 bytes] size:[v168 length] frontmostPids:0 atTime:mach_absolute_time() machTime:1 sequence:a9];
          [(__CFString *)v265 addNotes:v282];
          [v282 removeAllObjects];
          v207 = [(__CFString *)v265 saveWithOptions:a4];
          v208 = *(v62 + 2856);
          v209 = v208;
          if (v207)
          {
            v172 = v253;
            if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf.next_in) = 138412290;
              *(&buf.next_in + 4) = v269;
              _os_log_impl(&_mh_execute_header, v209, OS_LOG_TYPE_DEFAULT, "Discarding 'safe' log %@", &buf, 0xCu);
            }

            sub_10000DF40(v269);
          }

          else
          {
            v172 = v253;
            if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf.next_in) = 0;
              _os_log_error_impl(&_mh_execute_header, v209, OS_LOG_TYPE_ERROR, "Failed to write full panic log", &buf, 2u);
            }
          }

          v18 = v282;
          v29 = a6;
          v150 = v258;
          goto LABEL_185;
        }

        v182 = [v179 bytes];
        v183 = [p_isa length];
        v184 = *v182;
        if (*v182 == 1129270608)
        {
          v185 = 0;
          v284 = 0;
          v281 = 0;
          v274 = v183;
          v275 = v182;
          v186 = v182 + v183;
          v10 = (v182 + v182[1] + 16);
          v187 = 3;
          do
          {
            if ((v10 + 2) > v186 || (v188 = v10, v10 = (v10 + *(v10 + 1) + 16), v10 > v186))
            {
              v206 = qword_100042B28;
              v17 = v272;
              v181 = v263;
              if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_229;
              }

              LOWORD(buf.next_in) = 0;
              v200 = "kcdata iterator was invalid while collecting compression metadata";
              v201 = v206;
              v202 = 2;
              goto LABEL_292;
            }

            if (!strcmp(v188 + 16, "kcd_c_type"))
            {
              v185 = v188[6];
            }

            else if (!strcmp(v188 + 16, "kcd_c_totalout"))
            {
              v284 = v188[6];
            }

            else if (!strcmp(v188 + 16, "kcd_c_totalin"))
            {
              v281 = v188[6];
            }

            --v187;
          }

          while (v187);
          v189 = qword_100042B28;
          v24 = v284;
          if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf.next_in) = 134218496;
            *(&buf.next_in + 4) = v185;
            *(&buf.avail_in + 2) = 2048;
            *(&buf.avail_in + 6) = v284;
            HIWORD(buf.total_in) = 2048;
            buf.next_out = v281;
            _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_INFO, "Compressed stackshot metadata: type: %lld totalout: %lld totalin %lld", &buf, 0x20u);
          }

          if (v185 == 1 && v284 && v281)
          {
            v190 = *v10;
            v17 = v272;
            v181 = v263;
            if (*v10 == 1503811591)
            {
              v67 = &v281[v281 >> 3];
              v191 = malloc_type_malloc(v67, 0x100004077774924uLL);
              if (v191)
              {
                v68 = v191;
                memset(&buf, 0, sizeof(buf));
                v192 = inflateInit_(&buf, "1.2.12", 112);
                if (!v192)
                {
                  goto LABEL_298;
                }

                v193 = v192;
                v194 = qword_100042B28;
                if (os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
                {
                  *v299 = 67109120;
                  *&v299[4] = v193;
                  _os_log_error_impl(&_mh_execute_header, v194, OS_LOG_TYPE_ERROR, "Failed to initialize the z_stream for this panic stackshot: rc = %d", v299, 8u);
                }

                free(v68);
                v168 = p_isa;
                v17 = v272;
                goto LABEL_230;
              }

              v244 = qword_100042B28;
              if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_229;
              }

              LODWORD(buf.next_in) = 134217984;
              *(&buf.next_in + 4) = &v281[v281 >> 3];
              v200 = "Couldn't allocate a large enough (%zu bytes) buffer for inflating the compressed panic stackshot";
              v201 = v244;
              v202 = 12;
            }

            else
            {
              v241 = qword_100042B28;
              if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_229;
              }

              if ((v190 & 0xFFFFFFF0) == 0x20)
              {
                v242 = 17;
              }

              else
              {
                v242 = v190;
              }

              LODWORD(buf.next_in) = 67109120;
              HIDWORD(buf.next_in) = v242;
              v200 = "Compressed kcdata buffer doesn't contain a stackshot, iter_type is %d";
              v201 = v241;
              v202 = 8;
            }
          }

          else
          {
            v240 = qword_100042B28;
            v17 = v272;
            v181 = v263;
            if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_229;
            }

            LODWORD(buf.next_in) = 134218496;
            *(&buf.next_in + 4) = v185;
            *(&buf.avail_in + 2) = 2048;
            *(&buf.avail_in + 6) = v284;
            HIWORD(buf.total_in) = 2048;
            buf.next_out = v281;
            v200 = "Required metadata from compressed panic stackshot is unexpected: type: %lld totalout %lld totalin %lld";
            v201 = v240;
            v202 = 32;
          }
        }

        else
        {
          v198 = qword_100042B28;
          if (!os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR))
          {
LABEL_229:
            v168 = p_isa;
LABEL_230:

            goto LABEL_231;
          }

          if ((v184 & 0xFFFFFFF0) == 0x20)
          {
            v199 = 17;
          }

          else
          {
            v199 = v184;
          }

          LODWORD(buf.next_in) = 136315394;
          *(&buf.next_in + 4) = "decompress_stackshot";
          *(&buf.avail_in + 2) = 1024;
          *(&buf.avail_in + 6) = v199;
          v200 = "invalid kcdata iter type in %s(): %d";
          v201 = v198;
          v202 = 18;
        }

LABEL_292:
        _os_log_error_impl(&_mh_execute_header, v201, OS_LOG_TYPE_ERROR, v200, &buf, v202);
        goto LABEL_229;
      }

      [(PanicReport *)v111 useSocdContainer:v15];
      v144 = @"BAD MAGIC! (flag set in iBoot panic header), no SOCD container available";
    }

    else
    {
      [(PanicReport *)v111 useSocdContainer:v15];
      v144 = @"No valid SOCD nand container present";
    }

    v259 = v144;
    v143 = v263;
    if ((v138 & 1) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_297:
  _os_assert_log();
  _os_crash();
  __break(1u);
LABEL_298:
  *v68 = 1503811591;
  *(v68 + 1) = 0;
  v245 = (v10 + 2);
  buf.next_in = (v10 + 2);
  buf.avail_in = v24;
  buf.next_out = v68 + 16;
  buf.avail_out = v67 - 16;
  v246 = inflate(&buf, 4);
  if (v246 != 1)
  {
    v249 = v246;
    v250 = *(v62 + 2856);
    if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
    {
      *v299 = 67109120;
      *&v299[4] = v249;
      _os_log_error_impl(&_mh_execute_header, v250, OS_LOG_TYPE_ERROR, "Failed to inflate the compresssed panic stackshot buffer: rc = %d", v299, 8u);
    }

    free(v68);
    v248 = p_isa;
    goto LABEL_304;
  }

  inflateEnd(&buf);
  v247 = v274 - v24 + v275 - v245;
  if (v247 <= &v67[-1].data - buf.total_out)
  {
    memcpy(&v68[buf.total_out + 16], v24 + v245, v247);
    v248 = [NSData dataWithBytesNoCopy:v68 length:v67];
LABEL_304:
    v168 = v248;
    v17 = v272;
    v181 = v263;
    goto LABEL_230;
  }

  _os_assert_log();
  _os_crash();
  __break(1u);
}