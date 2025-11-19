uint64_t sub_1002DAE5C(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6)
{
  v6 = a1;
  if (a2)
  {
    v7 = 1;
  }

  else
  {
    if (a1 >> 62)
    {
      goto LABEL_17;
    }

    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      do
      {
        v19 = a5;
        v10 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v11 = *(v6 + 8 * v10 + 32);
          }

          v12 = v11;
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          v21 = v11;
          v14 = sub_1002DAFA0(&v21, a3, a4);

          if (v14)
          {
            a5 = v19;
            a1 = 1;
            goto LABEL_19;
          }

          ++v10;
          if (v13 == v9)
          {
            a1 = 0;
            a5 = v19;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        v15 = a5;
        v16 = a6;
        v17 = _CocoaArrayWrapper.endIndex.getter();
        a6 = v16;
        a5 = v15;
        v9 = v17;
      }

      while (v17);
    }

    a1 = 0;
LABEL_19:
    v7 = 0;
  }

  return a5(a1, v7);
}

uint64_t sub_1002DAFA0(id *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for CharacterSet();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = [*a1 appleID];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v14 == a2 && v16 == a3)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    return 1;
  }

LABEL_7:
  result = [v11 dictionary];
  if (!result)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = 0xD000000000000016;
  v37 = 0x80000001003340D0;
  AnyHashable.init<A>(_:)();
  if (*(v21 + 16) && (v22 = sub_10031B060(v38), (v23 & 1) != 0))
  {
    sub_10000DB1C(*(v21 + 56) + 32 * v22, v39);
    sub_1000526B0(v38);

    sub_100005814(&qword_1003DA1E0, &qword_100345E50);
    if (swift_dynamicCast())
    {
      v35 = v3;
      v24 = (v36 + 40);
      v25 = *(v36 + 16) + 1;
      while (--v25)
      {
        if (*(v24 - 1) != a2 || *v24 != a3)
        {
          v24 += 2;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

LABEL_18:

        return 1;
      }
    }
  }

  else
  {

    sub_1000526B0(v38);
  }

  result = [v11 dictionary];
  if (!result)
  {
    goto LABEL_39;
  }

  v27 = result;
  v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = 0xD000000000000014;
  v37 = 0x80000001003340F0;
  AnyHashable.init<A>(_:)();
  if (!*(v28 + 16) || (v29 = sub_10031B060(v38), (v30 & 1) == 0))
  {

    sub_1000526B0(v38);
    return 0;
  }

  sub_10000DB1C(*(v28 + 56) + 32 * v29, v39);
  sub_1000526B0(v38);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v38[0] = v36;
  v38[1] = v37;
  CharacterSet.init(charactersIn:)();
  sub_1000709A0();
  v31 = StringProtocol.components(separatedBy:)();
  (*(v40 + 8))(v10, v7);

  v32 = (v31 + 40);
  v33 = *(v31 + 16) + 1;
  while (--v33)
  {
    if (*(v32 - 1) != a2 || *v32 != a3)
    {
      v32 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_1002DB400(unint64_t a1, char a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  v3 = a1;
  if (a2)
  {
    return a3(a1, 1);
  }

  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_48:
    v39 = a3;
    v40 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v39;
    v6 = v40;
    v42 = v39;
    if (!v40)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v42 = a3;
    if (!v6)
    {
      goto LABEL_49;
    }
  }

  v7 = 0;
  v8 = v3 & 0xC000000000000001;
  v43 = v3 & 0xC000000000000001;
  v9 = &selRef_setPath_;
  v45 = v5;
  v46 = v3;
  v44 = v6;
  do
  {
    v10 = v7;
    while (1)
    {
      if (v8)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v5 + 16))
        {
          goto LABEL_47;
        }

        v11 = *(v3 + 8 * v10 + 32);
      }

      v12 = v11;
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if ([v11 v9[221]])
      {
        goto LABEL_8;
      }

      v13 = [v12 dsid];
      if (!v13)
      {
        goto LABEL_8;
      }

      v14 = v13;
      v15 = [v12 appleID];
      if (v15)
      {
        break;
      }

LABEL_8:
LABEL_9:
      ++v10;
      if (v7 == v6)
      {
        goto LABEL_49;
      }
    }

    v48 = v15;
    v16 = [v12 firstName];
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v47 = v14;
    v20 = [v12 lastName];
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = [v12 fullName];
    if (v24)
    {
      v25 = v24;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = [v12 memberTypeDisplayString];
    if (v28)
    {
      v29 = v28;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = [v12 isChildAccount];
    if (v19)
    {
      v33 = String._bridgeToObjectiveC()();

      if (v23)
      {
        goto LABEL_31;
      }

LABEL_35:
      v34 = 0;
      if (!v27)
      {
        goto LABEL_36;
      }

LABEL_32:
      v35 = String._bridgeToObjectiveC()();

      if (v31)
      {
        goto LABEL_33;
      }

LABEL_37:
      v36 = 0;
    }

    else
    {
      v33 = 0;
      if (!v23)
      {
        goto LABEL_35;
      }

LABEL_31:
      v34 = String._bridgeToObjectiveC()();

      if (v27)
      {
        goto LABEL_32;
      }

LABEL_36:
      v35 = 0;
      if (!v31)
      {
        goto LABEL_37;
      }

LABEL_33:
      v36 = String._bridgeToObjectiveC()();
    }

    LOBYTE(v41) = v32;
    v37 = [objc_allocWithZone(AALocalContactInfo) initWithFamilyDSID:v47 firstName:v33 lastName:v34 fullName:v35 appleID:v48 familyMemberType:v36 isChild:v41];

    v6 = v44;
    v5 = v45;
    v8 = v43;
    v9 = &selRef_setPath_;
    v3 = v46;
    if (!v37)
    {
      goto LABEL_9;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v38 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v9 = &selRef_setPath_;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v7 != v44);
LABEL_49:
  v42(_swiftEmptyArrayStorage, 0);
}

uint64_t sub_1002DB83C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E7FC8, &unk_100349EC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  (*(*a2 + 224))(sub_1002DC324, v10);
}

uint64_t sub_1002DB9A4(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100005814(&qword_1003E7FC8, &unk_100349EC0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_100005814(&qword_1003E7FC8, &unk_100349EC0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1002DBA24()
{
  sub_10000839C(v0 + 2);
  v1 = OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__analyticsReporter;
  v2 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonFamilyManager()
{
  result = qword_1003E7EA8;
  if (!qword_1003E7EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002DBB74()
{
  sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002DBC7C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002DC63C;

  return sub_1002D98D0();
}

uint64_t sub_1002DBD50(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1002DBDF8;

  return sub_1002DA11C(a1, a2);
}

uint64_t sub_1002DBDF8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_1002DBEF4(uint64_t a1, uint64_t a2)
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA40);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetching suggested family members.", v7, 2u);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_allocWithZone(FAFetchFamilyCircleRequest);

  v10 = [v9 init];
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1002DC2FC;
  *(v11 + 24) = v8;
  v13[4] = sub_1002DC62C;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100015858;
  v13[3] = &unk_1003B3950;
  v12 = _Block_copy(v13);

  [v10 startRequestWithCompletionHandler:v12];
  _Block_release(v12);
}

void sub_1002DC0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_allocWithZone(FAFetchFamilyCircleRequest);

  v10 = [v9 init];
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1002DC294;
  *(v11 + 24) = v8;
  v13[4] = sub_1002DC2DC;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100015858;
  v13[3] = &unk_1003B38D8;
  v12 = _Block_copy(v13);

  [v10 startRequestWithCompletionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_1002DC254()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002DC2A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002DC2E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1002DC350(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E7FD8, qword_100349ED0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  (*(v3 + 16))(aBlock - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1002DC564;
  *(v10 + 24) = v8;
  aBlock[4] = sub_1002DC62C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003B39F0;
  v11 = _Block_copy(aBlock);

  [v9 startRequestWithCompletionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_1002DC58C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, void, uint64_t))
{
  v8 = *(sub_100005814(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2 & 1, v9);
}

uint64_t sub_1002DC648(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100005814(&qword_1003E7FD8, qword_100349ED0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_100005814(&qword_1003E7FD8, qword_100349ED0);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1002DC6C8(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA40);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = _convertErrorToNSError(_:)();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to fetch family circle: %@", v8, 0xCu);
      sub_100083380(v9);
    }

    swift_errorRetain();
    a3(a2, 1);
  }

  else
  {
    if (a1)
    {
      v11 = [a1 members];
      sub_1002DCB28();
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100005814(&qword_1003E8080, &qword_100349F28);
    v12 = Optional._bridgeToObjectiveC()();

    v22 = v12;
    sub_100005814(&qword_1003E7FD0, qword_100349F30);
    if (swift_dynamicCast())
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100008D04(v13, qword_1003FAA40);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "All family members fetched.", v16, 2u);
      }

      a3(v21, 0);
    }

    else
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100008D04(v17, qword_1003FAA40);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "No family members returned.", v20, 2u);
      }

      type metadata accessor for AACustodianError(0);
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10003A9C0();
      _BridgedStoredNSError.init(_:userInfo:)();
      a3(v22, 1);
    }
  }
}

unint64_t sub_1002DCB28()
{
  result = qword_1003E8088;
  if (!qword_1003E8088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E8088);
  }

  return result;
}

id sub_1002DCB74(uint64_t *a1)
{
  v3 = [objc_allocWithZone(AAFTapToRadarRequest) init];
  v4 = v1[8];
  v5 = v1[9];
  v6 = String._bridgeToObjectiveC()();
  [v3 setAlertTitle:v6];

  v7 = v1[10];
  v8 = v1[11];
  v9 = String._bridgeToObjectiveC()();
  [v3 setAlertDefaultButtonText:v9];

  v10 = v1[12];
  v11 = v1[13];
  v12 = String._bridgeToObjectiveC()();
  [v3 setAlertCancelButtonText:v12];

  v13 = v1[2];
  v14 = v1[3];
  v15 = String._bridgeToObjectiveC()();
  [v3 setComponentName:v15];

  v16 = v1[4];
  v17 = v1[5];
  v18 = String._bridgeToObjectiveC()();
  [v3 setComponentVersion:v18];

  v19 = v1[6];
  v20 = v1[7];
  v21 = String._bridgeToObjectiveC()();
  [v3 setComponentID:v21];

  v22 = *a1;
  v23 = a1[1];
  v24 = String._bridgeToObjectiveC()();
  [v3 setAlertMessage:v24];

  v25 = a1[2];
  v26 = a1[3];
  v27 = String._bridgeToObjectiveC()();
  [v3 setRadarTitle:v27];

  v28 = a1[4];
  v29 = a1[5];
  v30 = String._bridgeToObjectiveC()();
  [v3 setRadarDescription:v30];

  v31 = a1[6];
  sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v3 setKeywordIDs:isa];

  [v3 setFullDiagnostic:*(a1 + 56)];
  return v3;
}

char *sub_1002DCD58()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = *(v0 + 9);

  v5 = *(v0 + 11);

  v6 = *(v0 + 13);

  v7 = *(v0 + 15);

  v8 = OBJC_IVAR____TtC13appleaccountd27TapToRadarRequestController__helper;
  v9 = sub_100005814(&qword_1003E5498, &unk_1003480D0);
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  return v0;
}

uint64_t sub_1002DCDFC()
{
  sub_1002DCD58();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TapToRadarRequestController()
{
  result = qword_1003E80C0;
  if (!qword_1003E80C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002DCEA8()
{
  sub_1002DCF50();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1002DCF50()
{
  if (!qword_1003E80D0)
  {
    sub_100016034(255, &qword_1003DF640, AAFTapToRadarHelper_ptr);
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003E80D0);
    }
  }
}

void *sub_1002DCFB8()
{
  v0[2] = 0xD000000000000021;
  v0[3] = 0x8000000100334270;
  v0[6] = 0x36323037383231;
  v0[7] = 0xE700000000000000;
  v0[4] = 0x6E4F6576694CLL;
  v0[5] = 0xE600000000000000;
  v0[8] = 0xD000000000000013;
  v0[9] = 0x80000001003342A0;
  v0[10] = 0x65756E69746E6F43;
  v0[11] = 0xE800000000000000;
  v0[12] = 0x6C65636E6143;
  v0[13] = 0xE600000000000000;
  v0[14] = 0x73412074276E6F44;
  v0[15] = 0xEF6E69616741206BLL;
  sub_100016034(0, &qword_1003DF640, AAFTapToRadarHelper_ptr);
  Dependency.init(dependencyId:config:)();
  return v0;
}

__n128 sub_1002DD0BC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1002DD0D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1002DD120(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1002DD180(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAA70);
  v12 = a3;
  v13 = v3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v33 = a2;
    v34 = v7;
    v35 = v6;
    v16 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38 = v32;
    *v16 = 136315394;
    [v13 scope];
    v17 = CKDatabaseScope.description.getter();
    v19 = sub_10021145C(v17, v18, &v38);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    if (a3)
    {
      v20 = [v12 data];
      v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = sub_100166018(v21, v23);
      v31 = a3;
      v37 = v24;
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      sub_10005A668();
      v25 = BidirectionalCollection<>.joined(separator:)();
      v27 = v26;
      sub_100012324(v21, v23);
      a3 = v31;
    }

    else
    {
      v27 = 0xE300000000000000;
      v25 = 7104878;
    }

    v7 = v34;
    v28 = sub_10021145C(v25, v27, &v38);

    *(v16 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "Updated database change token. database: %s, token: %s", v16, 0x16u);
    swift_arrayDestroy();

    v6 = v35;
    a2 = v33;
  }

  else
  {
  }

  sub_1002DD4BC(v36, a2);
  sub_1002DE040(a3, v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1002DD4BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v15 - v10;
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v12 = *(v5 + 8);
  v12(v9, v4);
  sub_1002DDBBC(v11);
  v15[0] = a1;
  v15[1] = a2;

  v13._countAndFlagsBits = 0x6E656B6F742ELL;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  URL.appendingPathComponent(_:)();

  return (v12)(v11, v4);
}

uint64_t sub_1002DD65C(void *a1, void *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA70);
  v11 = a2;
  v12 = v2;
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v36 = v15;
    v37 = v6;
    v38 = v5;
    v16 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41 = v35;
    *v16 = 136315650;
    [v12 scope];
    v17 = CKDatabaseScope.description.getter();
    v19 = sub_10021145C(v17, v18, &v41);

    *(v16 + 4) = v19;
    v39 = a2;
    *(v16 + 12) = 2080;
    v20 = [v13 zoneName];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10021145C(v21, v23, &v41);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    a2 = v39;
    if (v39)
    {
      v25 = [v11 data];
      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v40 = sub_100166018(v26, v28);
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      sub_10005A668();
      v29 = BidirectionalCollection<>.joined(separator:)();
      v31 = v30;
      v32 = v28;
      a2 = v39;
      sub_100012324(v26, v32);
    }

    else
    {
      v31 = 0xE300000000000000;
      v29 = 7104878;
    }

    v5 = v38;
    v33 = sub_10021145C(v29, v31, &v41);

    *(v16 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v14, v36, "Updated zone change token. database: %s, zoneID: %s, token: %s", v16, 0x20u);
    swift_arrayDestroy();

    v6 = v37;
  }

  else
  {
  }

  sub_1002DD9F0(v13, v9);
  sub_1002DE040(a2, v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1002DD9F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  (*(v5 + 8))(v8, v4);
  sub_1002DDBBC(a2);
  v9 = [a1 ownerName];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  URL.appendPathComponent(_:)(v13);

  v14 = [a1 zoneName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v20._countAndFlagsBits = v15;
  v20._object = v17;
  v18._countAndFlagsBits = 0x6E656B6F742ELL;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  URL.appendPathComponent(_:)(v20);
}

uint64_t sub_1002DDD14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  v23 = 0;
  LODWORD(v4) = [v9 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v23];

  v13 = v23;
  if (v4)
  {
    v14 = objc_opt_self();
    v23 = 0;
    v15 = v13;
    v16 = [v14 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v23];
    v17 = v23;
    if (v16)
    {
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      sub_100015D6C(v18, v20);
      sub_100255998(a2, 1, 0, 1, v18, v20);
      sub_100012324(v18, v20);
      return sub_100012324(v18, v20);
    }
  }

  else
  {
    v17 = v23;
  }

  v22 = v17;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_1002DDF58()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v7 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v7];

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_1002DE040(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  if (a1)
  {
    v10 = a1;
    sub_1002DDD14(v10, a2);
  }

  else
  {
    v7 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v7 fileExistsAtPath:v8];

    if (v9)
    {
      sub_1002DDF58();
    }
  }
}

uint64_t sub_1002DE5D0()
{
  v0 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 fileExistsAtPath:v1];

  result = 0;
  if (v2)
  {
    v4 = Data.init(contentsOf:options:)();
    v6 = v5;
    sub_100016034(0, &qword_1003E1678, NSKeyedUnarchiver_ptr);
    sub_100005814(&unk_1003E1680, &qword_1003447F8);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10033EB30;
    *(v7 + 32) = sub_100016034(0, &qword_1003E81C8, CKServerChangeToken_ptr);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
    sub_100012324(v4, v6);

    if (v8[3])
    {
      if (swift_dynamicCast())
      {
        return v8[4];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_10000DC50(v8);
      return 0;
    }
  }

  return result;
}

void sub_1002DE8D4()
{
  if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
  {
    [v0 setQualityOfService:25];
  }

  v1 = [v0 configuration];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  [v1 setAutomaticallyRetryNetworkFailures:0];

  v3 = [v0 configuration];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 setDiscretionaryNetworkBehavior:0];
}

uint64_t sub_1002DE99C(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v3 + 16))(v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    return v5[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002DEA80(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1002DE99C(v5);
  if (v8)
  {
    v9 = v8;
    v10 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
    if (v10)
    {
      v11 = sub_10030B6CC(v10);

      if (v11)
      {
        swift_getErrorValue();
        v12 = sub_1002DEA80(v16[1], v16[2]);

        return v12;
      }
    }
  }

  (*(v3 + 16))(v7, v1, a1);
  v13 = _getErrorEmbeddedNSError<A>(_:)();
  if (v13)
  {
    v12 = v13;
    (*(v3 + 8))(v7, a1);
  }

  else
  {
    v12 = swift_allocError();
    (*(v3 + 32))(v14, v7, a1);
  }

  return v12;
}

BOOL sub_1002DEC1C(uint64_t a1)
{
  sub_1002DEA80(a1);
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v1 = sub_1002DECD0(v3);
  }

  else
  {

    return 0;
  }

  return v1;
}

BOOL sub_1002DECD0(void *a1)
{
  type metadata accessor for CKError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1002DF38C();
  _BridgedStoredNSError.init(_:userInfo:)();
  _BridgedStoredNSError.code.getter();

  v2 = sub_1002DF114(v5, a1);
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

uint64_t sub_1002DED90(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v3 + 16))(v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CKError(0);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = result;

    return v5;
  }

  return result;
}

void *sub_1002DEE74(void *a1)
{
  type metadata accessor for CKError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1002DF38C();
  _BridgedStoredNSError.init(_:userInfo:)();
  v12 = v10[0];
  _BridgedStoredNSError.code.getter();

  result = sub_1002DF114(v11, a1);
  if (result)
  {
    v3 = result;
    v12 = result;
    v4 = _BridgedStoredNSError.userInfo.getter();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v4 + 16))
    {
      v7 = sub_1003084DC(v5, v6);
      v9 = v8;

      if (v9)
      {
        sub_10000DB1C(*(v4 + 56) + 32 * v7, v10);

        sub_1002DF62C();
        if (swift_dynamicCast())
        {
          return v11;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1002DEFEC()
{
  type metadata accessor for CKError(0);
  sub_1002DF38C();
  v0 = _BridgedStoredNSError.userInfo.getter();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v0 + 16))
  {

    goto LABEL_8;
  }

  v3 = sub_1003084DC(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  sub_10000DB1C(*(v0 + 56) + 32 * v3, v8);

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002DF114(void *a1, void *a2)
{
  v2 = a2;
  *&v28[0] = a2;
  type metadata accessor for CKError(0);
  sub_1002DF38C();
  _BridgedStoredNSError.code.getter();
  v22 = a1;
  if (*&v26[0] == a1)
  {
    v4 = v2;
    return v2;
  }

  *&v28[0] = v2;
  _BridgedStoredNSError.code.getter();
  if (*&v26[0] != 2)
  {
    return 0;
  }

  result = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
  if (!result)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  v8 = result + 64;
  v9 = 1 << *(result + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(result + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = v7;
LABEL_20:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v13 << 6);
    sub_1000D1064(*(v6 + 48) + 40 * v17, v26);
    v18 = *(*(v6 + 56) + 8 * v17);
    v23 = v26[0];
    v24 = v26[1];
    v19 = v27;
    swift_errorRetain();
    v20 = v23;
    v21 = v24;
LABEL_21:
    v28[0] = v20;
    v28[1] = v21;
    v29 = v19;
    v30 = v18;
    if (!*(&v21 + 1))
    {

      return 0;
    }

    *&v26[0] = v18;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    if (swift_dynamicCast())
    {
      v2 = v25;
      *&v26[0] = v25;
      _BridgedStoredNSError.code.getter();

      if (v25 == v22)
      {

        sub_1000526B0(v28);
        return v2;
      }
    }

    else
    {
    }

    result = sub_1000526B0(v28);
  }

  if (v12 <= v7 + 1)
  {
    v14 = v7 + 1;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      v19 = 0;
      v18 = 0;
      v11 = 0;
      v20 = 0uLL;
      v7 = v15;
      v21 = 0uLL;
      goto LABEL_21;
    }

    v11 = *(v8 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002DF38C()
{
  result = qword_1003DA8D0;
  if (!qword_1003DA8D0)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DA8D0);
  }

  return result;
}

void *sub_1002DF3E4(void *a1)
{
  type metadata accessor for CKError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1002DF38C();
  _BridgedStoredNSError.init(_:userInfo:)();
  v20 = v18[0];
  _BridgedStoredNSError.code.getter();

  v2 = sub_1002DF114(v19, a1);
  if (v2)
  {
    v3 = v2;
    v20 = v2;
    v4 = _BridgedStoredNSError.userInfo.getter();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v4 + 16))
    {
      v7 = sub_1003084DC(v5, v6);
      v9 = v8;

      if (v9)
      {
        sub_10000DB1C(*(v4 + 56) + 32 * v7, v18);

        sub_1002DF62C();
        if (swift_dynamicCast())
        {
          v10 = v19;
        }

        else
        {
          v10 = 0;
        }

LABEL_10:
        v20 = v3;
        v11 = _BridgedStoredNSError.userInfo.getter();
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v11 + 16))
        {
          v14 = sub_1003084DC(v12, v13);
          v16 = v15;

          if (v16)
          {
            sub_10000DB1C(*(v11 + 56) + 32 * v14, v18);

            sub_1002DF62C();
            swift_dynamicCast();
            return v10;
          }
        }

        else
        {
        }

        return v10;
      }
    }

    else
    {
    }

    v10 = 0;
    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_1002DF62C()
{
  result = qword_1003E0E18;
  if (!qword_1003E0E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E0E18);
  }

  return result;
}

uint64_t sub_1002DF678(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1002FAEE0(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002DF794(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 56) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1002FAEE0(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CKRecord.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SQLInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v99 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SQL();
  v6 = *(v5 - 8);
  v101 = v5;
  v102 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v85 - v11;
  if (![objc_opt_self() isInternalBuild])
  {
    return 0x657463616465723CLL;
  }

  v98 = v10;
  v103._countAndFlagsBits = 30768;
  v103._object = 0xE200000000000000;
  v104 = v0;
  sub_1002E01D0();
  v13._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
  String.append(_:)(v13);

  object = v103._object;
  countAndFlagsBits = v103._countAndFlagsBits;
  v15 = [v0 recordID];
  v16 = [v15 zoneID];

  v17 = [v0 recordID];
  v18 = [v17 recordName];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v103._countAndFlagsBits = v19;
  v103._object = v21;
  v22._countAndFlagsBits = 10298;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23 = [v16 zoneName];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 58;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29 = [v16 ownerName];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33._countAndFlagsBits = v30;
  v33._object = v32;
  String.append(_:)(v33);

  v34._countAndFlagsBits = 41;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  v91 = v103;
  v35 = [v1 encryptedValuesByKey];
  ObjectType = swift_getObjectType();
  v36 = [v35 changedKeys];
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = sub_1002E225C(v37);

  v100 = v35;
  v39 = [v35 allKeys];
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v103._countAndFlagsBits = v40;

  sub_1002E1058(&v103);

  v41 = v103._countAndFlagsBits;
  v42 = [v1 recordChangeTag];
  if (v42)
  {
    v43 = v41;
    v44 = v42;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v41 = v43;
    v103._countAndFlagsBits = 0x3D676174202CLL;
    v103._object = 0xE600000000000000;
    v48._countAndFlagsBits = v45;
    v48._object = v47;
    String.append(_:)(v48);

    v50 = v103._countAndFlagsBits;
    v49 = v103._object;
    v51 = *(v43 + 16);
    if (v51)
    {
LABEL_4:
      v86 = v50;
      v87 = v49;
      v88 = object;
      v89 = v16;
      v90 = v12;
      v104 = _swiftEmptyArrayStorage;
      v96 = v51;
      sub_1002E0560(0, v51, 0);
      v52 = 0;
      v53 = v104;
      v85[1] = v41;
      v54 = v38 + 56;
      v94 = v102 + 32;
      v95 = v41 + 32;
      v93 = v38;
      while (1)
      {
        v55 = (v95 + 16 * v52);
        v57 = *v55;
        v56 = v55[1];
        if (*(v38 + 16))
        {
          v58 = *(v38 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v59 = Hasher._finalize()();
          v60 = -1 << *(v38 + 32);
          v61 = v59 & ~v60;
          if ((*(v54 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
          {
            v62 = ~v60;
            while (1)
            {
              v63 = (*(v38 + 48) + 16 * v61);
              v64 = *v63 == v57 && v63[1] == v56;
              if (v64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v61 = (v61 + 1) & v62;
              if (((*(v54 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            v103._countAndFlagsBits = v57;
            v103._object = v56;

            v67._countAndFlagsBits = 42;
            v67._object = 0xE100000000000000;
            String.append(_:)(v67);
            v65 = v103._countAndFlagsBits;
            v66 = v103._object;
            goto LABEL_18;
          }
        }

        else
        {
        }

LABEL_16:

        v65 = v57;
        v66 = v56;
LABEL_18:
        SQLInterpolation.init(literalCapacity:interpolationCount:)();
        v68._countAndFlagsBits = 0;
        v68._object = 0xE000000000000000;
        SQLInterpolation.appendLiteral(_:)(v68);
        v103._countAndFlagsBits = v65;
        v103._object = v66;
        sub_1000709A0();
        SQLInterpolation.appendInterpolation<A>(_:)();

        v69._countAndFlagsBits = 2112800;
        v69._object = 0xE300000000000000;
        SQLInterpolation.appendLiteral(_:)(v69);
        CKRecordKeyValueSetting.subscript.getter();
        v70 = v103._countAndFlagsBits;
        if (v103._object)
        {
          v71 = v103._object;
        }

        else
        {
          v70 = 0;
          v71 = 0xE000000000000000;
        }

        v103._countAndFlagsBits = v70;
        v103._object = v71;
        SQLInterpolation.appendInterpolation<A>(_:)();

        v72._countAndFlagsBits = 0;
        v72._object = 0xE000000000000000;
        SQLInterpolation.appendLiteral(_:)(v72);
        v73 = v98;
        SQL.init(stringInterpolation:)();

        v104 = v53;
        v75 = v53[2];
        v74 = v53[3];
        if (v75 >= v74 >> 1)
        {
          sub_1002E0560(v74 > 1, v75 + 1, 1);
          v53 = v104;
        }

        ++v52;
        v53[2] = v75 + 1;
        (*(v102 + 32))(v53 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v75, v73, v101);
        v38 = v93;
        if (v52 == v96)
        {

          v12 = v90;
          v16 = v89;
          object = v88;
          v49 = v87;
          v50 = v86;
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
    v50 = 0;
    v49 = 0xE000000000000000;
    v51 = *(v41 + 16);
    if (v51)
    {
      goto LABEL_4;
    }
  }

  v53 = _swiftEmptyArrayStorage;
LABEL_28:
  v103._countAndFlagsBits = v53;
  sub_100005814(&qword_1003E81D8, &qword_10034A048);
  sub_1002E22F4();
  Collection<>.joined(separator:)();

  v103._countAndFlagsBits = 0;
  v103._object = 0xE000000000000000;
  _StringGuts.grow(_:)(34);
  v77._countAndFlagsBits = 0x726F6365524B433CLL;
  v77._object = 0xEB00000000203A64;
  String.append(_:)(v77);
  v78._countAndFlagsBits = countAndFlagsBits;
  v78._object = object;
  String.append(_:)(v78);

  v79._countAndFlagsBits = 0x64726F636572203BLL;
  v79._object = 0xEB000000003D6449;
  String.append(_:)(v79);
  String.append(_:)(v91);

  v80._countAndFlagsBits = v50;
  v80._object = v49;
  String.append(_:)(v80);

  v81._countAndFlagsBits = 31520;
  v81._object = 0xE200000000000000;
  String.append(_:)(v81);
  v82 = v101;
  _print_unlocked<A, B>(_:_:)();
  v83._countAndFlagsBits = 15997;
  v83._object = 0xE200000000000000;
  String.append(_:)(v83);
  swift_unknownObjectRelease();

  v76 = v103._countAndFlagsBits;
  (*(v102 + 8))(v12, v82);
  return v76;
}

unint64_t sub_1002E01D0()
{
  result = qword_1003E81D0;
  if (!qword_1003E81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E81D0);
  }

  return result;
}

char *sub_1002E0224(char *a1, int64_t a2, char a3)
{
  result = sub_1002E05A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1002E0244(size_t a1, int64_t a2, char a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E81F8, &qword_10034A060, type metadata accessor for CustodianshipInfoRecord);
  *v3 = result;
  return result;
}

size_t sub_1002E0288(size_t a1, int64_t a2, char a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E8238, &qword_10034A0A0, type metadata accessor for CustodianRecord);
  *v3 = result;
  return result;
}

void *sub_1002E02CC(void *a1, int64_t a2, char a3)
{
  result = sub_1002E06B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1002E02EC(void *a1, int64_t a2, char a3)
{
  result = sub_1002E0C20(a1, a2, a3, *v3, &qword_1003E81E8, &qword_10034A050, &qword_1003E12A8, &qword_100344710);
  *v3 = result;
  return result;
}

size_t sub_1002E032C(size_t a1, int64_t a2, char a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E8260, &qword_10034A0C8, type metadata accessor for KeyRepairContext);
  *v3 = result;
  return result;
}

size_t sub_1002E0370(size_t a1, int64_t a2, char a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E8258, &qword_10034A0C0, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

void *sub_1002E03B4(void *a1, int64_t a2, char a3)
{
  result = sub_1002E07E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002E03D4(char *a1, int64_t a2, char a3)
{
  result = sub_1002E0918(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1002E03F4(size_t a1, int64_t a2, char a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E81F0, &qword_10034A058, type metadata accessor for InheritanceInvitationRecord);
  *v3 = result;
  return result;
}

size_t sub_1002E0438(size_t a1, int64_t a2, char a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E8230, &qword_10034A098, type metadata accessor for BeneficiaryInfoRecord);
  *v3 = result;
  return result;
}

size_t sub_1002E047C(size_t a1, int64_t a2, char a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E8200, &qword_10034A068, type metadata accessor for BenefactorInfoRecord);
  *v3 = result;
  return result;
}

char *sub_1002E04C0(char *a1, int64_t a2, char a3)
{
  result = sub_1002E0A28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002E04E0(char *a1, int64_t a2, char a3)
{
  result = sub_1002E0B2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1002E0500(void *a1, int64_t a2, char a3)
{
  result = sub_1002E0C20(a1, a2, a3, *v3, &qword_1003E8218, &qword_10034A080, &unk_1003DABD0, &qword_10033E720);
  *v3 = result;
  return result;
}

char *sub_1002E0540(char *a1, int64_t a2, char a3)
{
  result = sub_1002E0D54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1002E0560(size_t a1, int64_t a2, char a3)
{
  result = sub_1002E0E7C(a1, a2, a3, *v3, &qword_1003E8268, &qword_10034A0D0, &type metadata accessor for SQL);
  *v3 = result;
  return result;
}

char *sub_1002E05A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005814(&qword_1003E3908, &qword_100346C60);
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

void *sub_1002E06B0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005814(&qword_1003E8240, &qword_10034A0A8);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100005814(&qword_1003E8248, &qword_10034A0B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002E07E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005814(&qword_1003E8250, &qword_10034A0B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002E0918(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005814(&qword_1003E8228, &qword_10034A090);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002E0A28(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005814(&qword_1003E8208, &qword_10034A070);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1002E0B2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005814(&qword_1003E8210, &qword_10034A078);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1002E0C20(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100005814(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005814(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1002E0D54(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005814(&qword_1003E8220, &qword_10034A088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1002E0E7C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005814(a5, a6);
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

Swift::Int sub_1002E1058(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002E1C34(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1002E10C4(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1002E10C4(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1002E128C(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_1002E11BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1002E11BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002E128C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1002E1B1C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1002E1868((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1002E1B30(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1002E1B30((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1002E1868((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1002E1B1C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1002E1A90(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1002E1868(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1002E1A90(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002E1B1C(v3);
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

char *sub_1002E1B30(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005814(&unk_1003E8270, qword_10034A0D8);
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
    v10 = _swiftEmptyArrayStorage;
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

id sub_1002E1C48()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

id sub_1002E1D08(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return 0;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = a1;
    v6 = a1 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

LABEL_9:
  v7 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_100015D6C(a1, a2);
  v8 = sub_1002E1C48();
  sub_100012324(a1, a2);
  v9 = [objc_allocWithZone(CKRecord) initWithCoder:v8];
  if (v9)
  {
    v10 = v9;

    return v10;
  }

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA58);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Unable to extract CKRecord from cloudKitMetadata", v15, 2u);
  }

  return 0;
}

uint64_t sub_1002E2014(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Status(0);
  sub_1002E2358(&qword_1003D8440, type metadata accessor for Status);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1002FABF8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1002E20C0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1002E2358(&qword_1003DB0B8, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_1002FB030(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_1002E225C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1002FAEE0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1002E22F4()
{
  result = qword_1003E81E0;
  if (!qword_1003E81E0)
  {
    sub_100008CBC(&qword_1003E81D8, &qword_10034A048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E81E0);
  }

  return result;
}

uint64_t sub_1002E2358(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1002E263C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudKitAPSBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002E26A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA58);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Cloudkit received invalid public token from APS", v4, 2u);
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100015D6C(a1, a2);
    sub_1003012C0(a1, a2);
    swift_unknownObjectRelease();

    sub_100015D58(a1, a2);
  }
}

void sub_1002E2820(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 >> 60 == 15 || a4 == 0 || a6 == 0)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA58);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Cloudkit received invalid topic token from APS", v10, 2u);
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100015D6C(a1, a2);
    sub_1003014A8(a1, a2, a3, a4, a5, a6);
    sub_100015D58(a1, a2);

    swift_unknownObjectRelease();
  }
}

void sub_1002E29E4(void *a1)
{
  if (a1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = a1;
      sub_100300890(v2);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAA58);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Cloudkit received invalid APS message", v5, 2u);
    }
  }
}

unint64_t sub_1002E2B58()
{
  type metadata accessor for CloudKitContainerStore();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *v1 = 0;
  v0[2] = v1;
  v0[3] = sub_100308644(&_swiftEmptyArrayStorage);
  result = sub_100308658(&_swiftEmptyArrayStorage);
  v0[4] = result;
  qword_1003FA9B8 = v0;
  return result;
}

id sub_1002E2BC4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  os_unfair_lock_lock(v6);
  swift_beginAccess();
  v7 = *(v2 + 24);
  if (*(v7 + 16))
  {

    v8 = sub_1003084DC(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      v11 = v10;
      goto LABEL_10;
    }
  }

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA58);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10021145C(a1, a2, &v28);
    _os_log_impl(&_mh_execute_header, v13, v14, "Creating CloudKit container named: %s", v15, 0xCu);
    sub_10000839C(v16);
  }

  v17 = [objc_allocWithZone(CKContainerOptions) init];
  [v17 setUseZoneWidePCS:1];
  v18 = String._bridgeToObjectiveC()();
  [v17 setApplicationBundleIdentifierOverrideForPushTopicGeneration:v18];

  [v17 setUseAnonymousToServerShareParticipants:1];
  v19 = objc_allocWithZone(CKContainerID);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithContainerIdentifier:v20 environment:1];

  v22 = [objc_allocWithZone(CKContainer) initWithContainerID:v21 options:v17];
  swift_beginAccess();
  v23 = v22;

  v11 = v23;
  v24 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_1002CEE00(v11, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + 24) = v27;
  swift_endAccess();

LABEL_10:
  os_unfair_lock_unlock(v6);

  return v11;
}

objc_class *sub_1002E2EE0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  os_unfair_lock_lock(v6);
  swift_beginAccess();
  v7 = *(v2 + 32);
  if (*(v7 + 16))
  {

    v8 = sub_1003084DC(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      v11 = v10;
      goto LABEL_10;
    }
  }

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA58);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10021145C(a1, a2, &v28);
    _os_log_impl(&_mh_execute_header, v13, v14, "Creating CloudKit zone named: %s", v15, 0xCu);
    sub_10000839C(v16);
  }

  sub_1002E3E24();
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20._countAndFlagsBits = a1;
  v20._object = a2;
  v21._countAndFlagsBits = v17;
  v21._object = v19;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v20, v21).super.isa;
  swift_beginAccess();
  v23 = isa;

  v11 = v23;
  v24 = *(v3 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v3 + 32);
  *(v3 + 32) = 0x8000000000000000;
  sub_1002CEE14(v11, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + 32) = v27;
  swift_endAccess();
LABEL_10:
  os_unfair_lock_unlock(v6);

  return v11;
}

uint64_t sub_1002E316C()
{
  v0 = sub_100005814(&qword_1003E83B0, &qword_10034A1A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11[-1] - v3;
  sub_100005814(&qword_1003DF6A8, qword_10034A1B0);
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  v5 = sub_1000080F8(v11, v11[3]);
  v6 = sub_10031A264(0xD000000000000014, 0x80000001003343F0, *v5);
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  result = sub_10000839C(v11);
  qword_1003FA9C0 = v6;
  *algn_1003FA9C8 = v8;
  return result;
}

uint64_t sub_1002E32B8()
{
  v0 = sub_100005814(&qword_1003E83B0, &qword_10034A1A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11[-1] - v3;
  sub_100005814(&qword_1003DF6A8, qword_10034A1B0);
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  v5 = sub_1000080F8(v11, v11[3]);
  v6 = sub_10031A264(0xD00000000000001BLL, 0x80000001003343D0, *v5);
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  result = sub_10000839C(v11);
  qword_1003FA9D0 = v6;
  qword_1003FA9D8 = v8;
  return result;
}

uint64_t sub_1002E3404()
{
  v0 = sub_100005814(&qword_1003E83B0, &qword_10034A1A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11[-1] - v3;
  sub_100005814(&qword_1003DF6A8, qword_10034A1B0);
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  v5 = sub_1000080F8(v11, v11[3]);
  v6 = sub_10031A264(0xD000000000000018, 0x8000000100334450, *v5);
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  result = sub_10000839C(v11);
  qword_1003FA9E0 = v6;
  *algn_1003FA9E8 = v8;
  return result;
}

uint64_t sub_1002E3550()
{
  v0 = sub_100005814(&qword_1003E83B0, &qword_10034A1A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11[-1] - v3;
  sub_100005814(&qword_1003DF6A8, qword_10034A1B0);
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  v5 = sub_1000080F8(v11, v11[3]);
  v6 = sub_10031A264(0xD000000000000016, 0x8000000100334430, *v5);
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  result = sub_10000839C(v11);
  qword_1003FA9F0 = v6;
  *algn_1003FA9F8 = v8;
  return result;
}

uint64_t sub_1002E369C()
{
  v0 = sub_100005814(&qword_1003E83B0, &qword_10034A1A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11[-1] - v3;
  sub_100005814(&qword_1003DF6A8, qword_10034A1B0);
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  v5 = sub_1000080F8(v11, v11[3]);
  v6 = sub_10031A264(0xD00000000000001DLL, 0x8000000100334410, *v5);
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  result = sub_10000839C(v11);
  qword_1003FAA00 = v6;
  qword_1003FAA08 = v8;
  return result;
}

uint64_t sub_1002E37E8()
{
  sub_100005814(&qword_1003E3908, &qword_100346C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10033E5C0;
  if (qword_1003D7EB8 != -1)
  {
    swift_once();
  }

  v1 = *algn_1003FA9C8;
  *(v0 + 32) = qword_1003FA9C0;
  *(v0 + 40) = v1;
  v2 = qword_1003D7EC0;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1003FA9D8;
  *(v0 + 48) = qword_1003FA9D0;
  *(v0 + 56) = v3;
  qword_1003FAA10 = v0;
}

uint64_t sub_1002E38D0()
{
  sub_100005814(&qword_1003E3908, &qword_100346C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10033E5C0;
  if (qword_1003D7ED0 != -1)
  {
    swift_once();
  }

  v1 = *algn_1003FA9F8;
  *(v0 + 32) = qword_1003FA9F0;
  *(v0 + 40) = v1;
  v2 = qword_1003D7ED8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1003FAA08;
  *(v0 + 48) = qword_1003FAA00;
  *(v0 + 56) = v3;
  qword_1003FAA18 = v0;
}

uint64_t sub_1002E39B8()
{
  if (qword_1003D7EE0 != -1)
  {
    swift_once();
  }

  sub_10028BBC0(v0);
  if (qword_1003D7EE8 != -1)
  {
    swift_once();
  }

  result = sub_10028BBC0(v1);
  qword_1003FAA20 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1002E3A7C()
{
  sub_100005814(&qword_1003E3908, &qword_100346C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10033E5C0;
  if (qword_1003D7EC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1003FA9D8;
  *(v0 + 32) = qword_1003FA9D0;
  *(v0 + 40) = v1;
  v2 = qword_1003D7ED8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1003FAA08;
  *(v0 + 48) = qword_1003FAA00;
  *(v0 + 56) = v3;
  qword_1003FAA28 = v0;
}

uint64_t sub_1002E3B64()
{
  result = sub_1002E3B84();
  qword_1003FAA30 = result;
  return result;
}

uint64_t sub_1002E3B84()
{
  v0 = sub_100308864(_swiftEmptyArrayStorage);
  if (qword_1003D7EF0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v1 = qword_1003FAA20;
    v26 = *(qword_1003FAA20 + 16);
    if (!v26)
    {
      return v0;
    }

    v2 = 0;
    v25 = qword_1003FAA20;
    v3 = (qword_1003FAA20 + 40);
    while (v2 < *(v1 + 16))
    {
      v8 = *(v3 - 1);
      v7 = *v3;

      v9._countAndFlagsBits = v8;
      v9._object = v7;
      String.append(_:)(v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v0;
      v11 = sub_1003084DC(0xD00000000000001BLL, 0x8000000100334470);
      v13 = *(v0 + 16);
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v13, v14);
      v16 = v13 + v14;
      if (v15)
      {
        goto LABEL_19;
      }

      v17 = v12;
      if (*(v0 + 24) < v16)
      {
        sub_1002CD910(v16, isUniquelyReferenced_nonNull_native);
        v11 = sub_1003084DC(0xD00000000000001BLL, 0x8000000100334470);
        if ((v17 & 1) != (v18 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_12:
        if (v17)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v23 = v11;
      sub_1002D0AB8();
      v11 = v23;
      if (v17)
      {
LABEL_4:
        v4 = v11;

        v0 = v27;
        v5 = (v27[7] + 16 * v4);
        v6 = v5[1];
        *v5 = v8;
        v5[1] = v7;

        goto LABEL_5;
      }

LABEL_13:
      v0 = v27;
      v27[(v11 >> 6) + 8] |= 1 << v11;
      v19 = (v27[6] + 16 * v11);
      *v19 = 0xD00000000000001BLL;
      v19[1] = 0x8000000100334470;
      v20 = (v27[7] + 16 * v11);
      *v20 = v8;
      v20[1] = v7;
      v21 = v27[2];
      v15 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v15)
      {
        goto LABEL_20;
      }

      v27[2] = v22;
LABEL_5:
      ++v2;
      v3 += 2;
      v1 = v25;
      if (v26 == v2)
      {
        return v0;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_1002E3DC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_1002E3E24()
{
  result = qword_1003DEBF0;
  if (!qword_1003DEBF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DEBF0);
  }

  return result;
}

uint64_t sub_1002E3E70()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v35 - v5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100005814(&qword_1003D9A40, &unk_10033F180);
    Dependency.init(dependencyId:config:)();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA40);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Sync delegate found nil. Obtaining delegate from dependency registry.", v10, 2u);
    }

    if ([objc_opt_self() isInternalBuild])
    {
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v38[0] = v36;
        *v13 = 136315394;
        HIDWORD(v35) = v12;
        Dependency.wrappedValue.getter();
        v14 = String.init<A>(describing:)();
        v16 = sub_10021145C(v14, v15, v38);
        v37 = v3;
        v17 = v16;

        *(v13 + 4) = v17;
        *(v13 + 12) = 2080;
        v18 = [objc_opt_self() callStackSymbols];
        static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = Array.description.getter();
        v21 = v20;

        v22 = sub_10021145C(v19, v21, v38);
        v3 = v37;

        *(v13 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v11, BYTE4(v35), "Sync delegate found nil - %s, call stack - %s", v13, 0x16u);
        swift_arrayDestroy();
      }
    }

    Dependency.wrappedValue.getter();
    sub_100005814(&qword_1003E84E0, &qword_10034A250);
    if (swift_dynamicCast())
    {
      v23 = v38[1];
    }

    else
    {
      v23 = 0;
    }

    *(v1 + 24) = v23;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38[0] = v27;
      *v26 = 136315138;
      Strong = swift_unknownObjectWeakLoadStrong();
      v29 = *(v1 + 24);
      v38[2] = Strong;
      v38[3] = v29;
      sub_100005814(&qword_1003E84E8, qword_10034A258);
      v30 = String.init<A>(describing:)();
      v32 = sub_10021145C(v30, v31, v38);

      *(v26 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "New sync delegete set: %s", v26, 0xCu);
      sub_10000839C(v27);
    }

    (*(v3 + 8))(v6, v2);
  }

  result = swift_unknownObjectWeakLoadStrong();
  v34 = *(v1 + 24);
  return result;
}

uint64_t sub_1002E4358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a3)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAA58);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003E1090, &qword_100344600);
      v11 = String.init<A>(describing:)();
      v13 = sub_10021145C(v11, v12, &v20);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error updating zone - %s", v9, 0xCu);
      sub_10000839C(v10);
    }

    v14 = a3;
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA58);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Record zone is created.", v18, 2u);
    }

    v14 = 0;
  }

  return a4(v14);
}

void sub_1002E45AC(void *a1, NSObject *a2)
{
  v2 = sub_1002DF3E4(a1);
  v4 = v3;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA58);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    v11 = v6;
    sub_100005814(&qword_1003E84D8, &qword_10034A248);
    v12 = String.init<A>(describing:)();
    v14 = sub_10021145C(v12, v13, &v27);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Client record is - %s", v9, 0xCu);
    sub_10000839C(v10);
  }

  v15 = v4;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    v20 = v15;
    sub_100005814(&qword_1003E84D8, &qword_10034A248);
    v21 = String.init<A>(describing:)();
    v23 = sub_10021145C(v21, v22, &v27);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Server record is - %s", v18, 0xCu);
    sub_10000839C(v19);
  }

  if (v4)
  {
    if (sub_1002E3E70())
    {
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1003431D0;
      *(v24 + 32) = v15;
      v25 = v15;
      sub_1002EBDD8(a2, v24);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1002E488C(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA88);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = _convertErrorToNSError(_:)();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "CK accountInfo call returned an error %@. This will result in storing CK Records in non manatee container.", v8, 0xCu);
      sub_100083380(v9);
    }

    swift_errorRetain();
    a3(a2, 1);
  }

  else if (a1)
  {
    v24 = a1;
    if (([v24 supportsDeviceToDeviceEncryption] & 1) != 0 && objc_msgSend(v24, "hasValidCredentials"))
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100008D04(v11, qword_1003FAA88);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Account and device are valid.", v14, 2u);
      }

      v15 = 1;
    }

    else
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100008D04(v16, qword_1003FAA88);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Account and device are invalid.", v19, 2u);
      }

      v15 = 0;
    }

    a3(v15, 0);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA88);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "CK accountInfo call returned no error nor any account info.", v23, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    a3(v25, 1);
  }
}

uint64_t sub_1002E4D2C()
{
  sub_1002E2B30(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1002E4D88(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_allocWithZone(CKDatabaseSubscription);

  v8 = [v7 init];
  v9 = [objc_allocWithZone(CKNotificationInfo) init];
  [v9 setShouldSendContentAvailable:1];
  v10 = v8;
  [v10 setNotificationInfo:v9];
  sub_1002E52A8();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v15.value._rawValue = swift_allocObject();
  *(v15.value._rawValue + 1) = xmmword_1003431D0;
  *(v15.value._rawValue + 4) = v10;
  v15.is_nil = 0;
  isa = CKModifySubscriptionsOperation.init(subscriptionsToSave:subscriptionIDsToDelete:)(v15, v16).super.super.super.super.isa;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = sub_1002E5268;
  v11[4] = v6;
  v12 = a3;
  CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.setter();
  sub_1002DE8D4();
  [v12 addOperation:isa];
}

uint64_t sub_1002E4F28(uint64_t a1, char a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a2)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA58);
    v8 = a3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136315138;
      [v8 scope];
      v13 = CKDatabaseScopeString();
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_10021145C(v14, v16, &v32);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to create CKSubscription for database: %s", v11, 0xCu);
      sub_10000839C(v12);
    }

    v18 = a1;
    v19 = 1;
  }

  else
  {
    if (qword_1003D7F30 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA70);
    v21 = a3;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      [v21 scope];
      v26 = CKDatabaseScopeString();
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_10021145C(v27, v29, &v32);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Created CKSubscription for database: %s", v24, 0xCu);
      sub_10000839C(v25);
    }

    v18 = 1;
    v19 = 0;
  }

  return a4(v18, v19);
}

uint64_t sub_1002E5230()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002E5268(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

unint64_t sub_1002E52A8()
{
  result = qword_1003E84D0;
  if (!qword_1003E84D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E84D0);
  }

  return result;
}

uint64_t sub_1002E52F4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1002E5344(uint64_t a1)
{
  if (a1)
  {
    swift_getErrorValue();
    swift_errorRetain();
    sub_1002DEA80(v4);
    swift_getErrorValue();
    sub_100255F6C(-7085, v2, v3);

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1002E542C(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v77 = a5;
  v82 = a1;
  v83 = a2;
  v11 = a4 & 0x100;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v76 = a4;
  if (a4)
  {
    sub_1002DD4BC(v83, a3);
    v17 = sub_1002DE5D0();
    (*(v13 + 8))(v16, v12);
  }

  v79 = v11;
  if (v11)
  {
    if (qword_1003D7F30 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA70);
    v19 = v82;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = a6;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v19;
      *v24 = v19;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "shouldStartCloudSubscription is true. Creating subscriptions. Database: %@", v23, 0xCu);
      sub_100083380(v24);

      a6 = v22;
    }

    *(swift_allocObject() + 16) = v19;
    v26 = sub_100005814(&qword_1003E84F0, qword_10034A298);
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v29 = v19;
    Future.init(_:)();
  }

  v81 = swift_allocObject();
  *(v81 + 16) = _swiftEmptyArrayStorage;
  v80 = swift_allocObject();
  *(v80 + 16) = _swiftEmptyArrayStorage;
  v30 = [objc_allocWithZone(CKFetchDatabaseChangesOperation) initWithPreviousServerChangeToken:v17];
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_100008D04(v31, qword_1003FAA70);

  v33 = v17;
  v74 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v78 = a6;
  v75 = v33;
  if (v36)
  {
    v73 = v7;
    v37 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v37 = 136315394;
    *(v37 + 4) = sub_10021145C(v83, a3, &aBlock);
    *(v37 + 12) = 2080;
    if (v17)
    {
      v38 = [v33 data];
      v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = a3;
      v40 = v39;
      v42 = v41;

      v84 = sub_100166018(v40, v42);
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      sub_10005A668();
      v43 = BidirectionalCollection<>.joined(separator:)();
      v45 = v44;
      v46 = v40;
      a3 = v72;
      sub_100012324(v46, v42);
    }

    else
    {
      v45 = 0xE300000000000000;
      v43 = 7104878;
    }

    v47 = sub_10021145C(v43, v45, &aBlock);

    *(v37 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v34, v35, "Old database (%s) change token: %s", v37, 0x16u);
    swift_arrayDestroy();

    v7 = v73;
  }

  else
  {
  }

  [v30 setFetchAllChanges:1];
  v48 = v30;
  v49 = [v48 configuration];
  v50 = BYTE1(v79);
  if (!v49)
  {
    __break(1u);
    goto LABEL_23;
  }

  v51 = v49;
  v52 = v7;
  [v49 setAutomaticallyRetryNetworkFailures:0];

  v53 = [v48 configuration];
  if (!v53)
  {
LABEL_23:
    __break(1u);
    return;
  }

  [v53 setDiscretionaryNetworkBehavior:0];

  v54 = v81;
  v89 = sub_1002E8E08;
  v90 = v81;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_1002E8E04;
  v88 = &unk_1003B3BC8;
  v55 = _Block_copy(&aBlock);

  [v48 setRecordZoneWithIDChangedBlock:v55];
  _Block_release(v55);
  v89 = sub_1002E8AD0;
  v90 = v80;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_1002E8E04;
  v88 = &unk_1003B3BF0;
  v56 = _Block_copy(&aBlock);

  [v48 setRecordZoneWithIDWasDeletedBlock:v56];
  _Block_release(v56);
  v57 = swift_allocObject();
  v59 = v82;
  v58 = v83;
  *(v57 + 16) = v82;
  *(v57 + 24) = v58;
  *(v57 + 32) = a3;
  *(v57 + 40) = v52;
  *(v57 + 48) = v76 & 1;
  *(v57 + 49) = v50;
  v60 = v78;
  *(v57 + 56) = v77;
  *(v57 + 64) = v60;
  *(v57 + 72) = v54;
  v89 = sub_1002E8B44;
  v90 = v57;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_1002E7528;
  v88 = &unk_1003B3C40;
  v61 = _Block_copy(&aBlock);
  v62 = v59;

  [v48 setFetchDatabaseChangesCompletionBlock:v61];
  _Block_release(v61);

  v63 = v48;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    aBlock = v68;
    *v66 = 136315394;
    *(v66 + 4) = sub_10021145C(v83, a3, &aBlock);
    *(v66 + 12) = 2112;
    *(v66 + 14) = v63;
    *v67 = v63;
    v69 = v63;
    _os_log_impl(&_mh_execute_header, v64, v65, "Fetching database (%s) changes with operation: %@", v66, 0x16u);
    sub_100083380(v67);

    sub_10000839C(v68);
  }

  v70 = v75;
  [v62 addOperation:v63];
}

uint64_t sub_1002E5D24(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_1002E5DCC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8, void (*a9)(void), uint64_t a10, uint64_t a11)
{
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v13 = a9;
  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAA70);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v46 = v15;
  if (os_log_type_enabled(v16, v17))
  {
    v45 = v14;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v52[0] = v19;
    *v18 = 136315138;
    if (a1)
    {
      v20 = [v15 data];
      v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v51 = sub_100166018(v21, v23);
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      sub_10005A668();
      v24 = BidirectionalCollection<>.joined(separator:)();
      v26 = v25;
      sub_100012324(v21, v23);
    }

    else
    {
      v26 = 0xE300000000000000;
      v24 = 7104878;
    }

    v36 = sub_10021145C(v24, v26, v52);

    *(v18 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v16, v17, "CK fetch database changes complete. token: %s", v18, 0xCu);
    sub_10000839C(v19);

    v14 = v45;
    v13 = a9;
    v27 = a10;
    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    sub_100008D04(v14, qword_1003FAA58);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52[0] = v31;
      *v30 = 136315138;
      v51 = a3;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v32 = String.init<A>(describing:)();
      v34 = v13;
      v35 = sub_10021145C(v32, v33, v52);

      *(v30 + 4) = v35;
      v13 = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Error during fetch database changes operation: %s", v30, 0xCu);
      sub_10000839C(v31);
    }

    v52[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v52[0] = v51;
      sub_1002DF38C();
      _BridgedStoredNSError.code.getter();
      if (v51 == 21)
      {
        sub_1002DD180(a5, a6, 0);
        sub_1002E542C(a4, a5, a6, a8 & 0x101, v13, v27);
      }
    }

    swift_errorRetain();
    v13(a3);
  }

  v27 = a10;
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_16:
  swift_beginAccess();
  v37 = *(a11 + 16);
  if (v37 >> 62)
  {
    if (v37 < 0)
    {
      v44 = *(a11 + 16);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_18;
    }
  }

  else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    swift_beginAccess();
    v38 = a1;
    v39 = *(a11 + 16);
    v40 = swift_allocObject();
    v40[2] = a4;
    v40[3] = a5;
    v40[4] = a6;
    v40[5] = v38;
    v40[6] = v13;
    v40[7] = v27;
    v41 = v46;

    v42 = a4;

    sub_1002E6374(v42, v39, a8 & 0x101, sub_1002E8C24, v40);
  }

  sub_1002DD180(a5, a6, a1);
  return (v13)(0);
}

void sub_1002E6374(void *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v140 = a5;
  v139 = a4;
  v156 = a3;
  v148 = a1;
  v147 = type metadata accessor for URL();
  v6 = *(v147 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v147);
  v146 = v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v145 = v138 - v10;
  if (qword_1003D7F30 != -1)
  {
    goto LABEL_101;
  }

LABEL_2:
  v11 = type metadata accessor for Logger();
  v12 = sub_100008D04(v11, qword_1003FAA70);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v157 = v12;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock._countAndFlagsBits = v17;
    *v16 = 136315138;
    sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
    v18 = Array.description.getter();
    v20 = sub_10021145C(v18, v19, &aBlock._countAndFlagsBits);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "CK ZoneIDs changed: %s", v16, 0xCu);
    sub_10000839C(v17);
  }

  if (a2 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
    if (!v22)
    {
      return;
    }
  }

  else
  {
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      return;
    }
  }

  v23 = 0;
  v155 = a2 & 0xC000000000000001;
  v142 = a2 & 0xFFFFFFFFFFFFFF8;
  v141 = (a2 + 32);
  v144 = (v6 + 8);
  v24 = &_swiftEmptyDictionarySingleton;
  *&v21 = 136315394;
  v143 = v21;
  v168 = xmmword_10033EB30;
  v154 = v22;
  v149 = a2;
  do
  {
    if (v155)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v23 >= *(v142 + 16))
      {
        goto LABEL_97;
      }

      v25 = *&v141[8 * v23];
    }

    v6 = v25;
    v26 = __OFADD__(v23, 1);
    v27 = v23 + 1;
    if (v26)
    {
      goto LABEL_93;
    }

    v28 = [objc_allocWithZone(CKFetchRecordZoneChangesConfiguration) init];
    v165 = v27;
    v166 = v28;
    if (v156)
    {
      type metadata accessor for LocalCache();
      v29 = v146;
      v30 = v24;
      sub_100307F40();
      v31 = v145;
      URL.appendingPathComponent(_:isDirectory:)();
      v32 = *v144;
      v33 = v147;
      (*v144)(v29, v147);
      sub_1002DDBBC(v31);
      v34 = [v6 ownerName];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38._countAndFlagsBits = v35;
      v38._object = v37;
      URL.appendPathComponent(_:)(v38);

      v39 = [v6 zoneName];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      aBlock._countAndFlagsBits = v40;
      aBlock._object = v42;
      v43._countAndFlagsBits = 0x6E656B6F742ELL;
      v43._object = 0xE600000000000000;
      String.append(_:)(v43);
      URL.appendPathComponent(_:)(aBlock);
      v24 = v30;

      v44 = sub_1002DE5D0();
      v45 = v31;
      a2 = v149;
      v22 = v154;
      v32(v45, v33);
      v46 = v166;
    }

    else
    {
      v46 = v28;
      v44 = 0;
    }

    [v46 setPreviousServerChangeToken:v44];
    if ((v24 & 0xC000000000000001) != 0)
    {
      if (v24 >= 0)
      {
        v24 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v47 = v6;
      v48 = v46;
      v49 = __CocoaDictionary.count.getter();
      if (__OFADD__(v49, 1))
      {
        goto LABEL_95;
      }

      v24 = sub_1002E8834(v24, v49 + 1);
    }

    else
    {
      v50 = v6;
      v51 = v46;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock._countAndFlagsBits = v24;
    v53 = sub_10031B1C8(v6);
    v55 = *(v24 + 16);
    v56 = (v54 & 1) == 0;
    v26 = __OFADD__(v55, v56);
    v57 = v55 + v56;
    if (v26)
    {
      goto LABEL_94;
    }

    v58 = v54;
    if (*(v24 + 24) >= v57)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v106 = v53;
        sub_1002D15AC();
        v53 = v106;
      }
    }

    else
    {
      sub_1002CEB98(v57, isUniquelyReferenced_nonNull_native);
      v53 = sub_10031B1C8(v6);
      if ((v58 & 1) != (v59 & 1))
      {
        goto LABEL_108;
      }
    }

    countAndFlagsBits = aBlock._countAndFlagsBits;
    v167 = aBlock._countAndFlagsBits;
    if (v58)
    {
      v61 = *(aBlock._countAndFlagsBits + 56);
      v62 = *(v61 + 8 * v53);
      *(v61 + 8 * v53) = v46;
    }

    else
    {
      *(aBlock._countAndFlagsBits + 8 * (v53 >> 6) + 64) |= 1 << v53;
      *(countAndFlagsBits[6] + 8 * v53) = v6;
      *(countAndFlagsBits[7] + 8 * v53) = v46;
      v63 = countAndFlagsBits[2];
      v26 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v26)
      {
        goto LABEL_96;
      }

      countAndFlagsBits[2] = v64;
    }

    v6 = v6;
    v65 = v44;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();

    v159 = v67;
    if (os_log_type_enabled(v66, v67))
    {
      v152 = v66;
      v158 = v65;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v173 = v69;
      *v68 = v143;
      v153 = v6;
      v70 = [v6 zoneName];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74 = sub_10021145C(v71, v73, &v173);

      *(v68 + 4) = v74;
      *(v68 + 12) = 2080;
      v151 = v68;
      v150 = v69;
      if (v44)
      {
        v75 = [v158 data];
        v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;

        v78 = v77 >> 62;
        v164 = HIDWORD(v6);
        if ((v77 >> 62) > 1)
        {
          if (v78 == 2)
          {
            v84 = *(v6 + 16);
            v83 = *(v6 + 24);
            v79 = v83 - v84;
            if (__OFSUB__(v83, v84))
            {
              goto LABEL_99;
            }

            if (v79)
            {
              goto LABEL_43;
            }
          }
        }

        else if (v78)
        {
          v86 = v164 - v6;
          if (__OFSUB__(v164, v6))
          {
            goto LABEL_100;
          }

          v79 = v86;
          if (v86)
          {
LABEL_43:
            v172 = _swiftEmptyArrayStorage;
            sub_1002E0224(0, v79 & ~(v79 >> 63), 0);
            v163 = v6;
            if (v78)
            {
              if (v78 == 2)
              {
                v85 = *(v6 + 16);
              }

              else
              {
                v85 = v163;
              }
            }

            else
            {
              v85 = 0;
            }

            v171 = v85;
            if (v79 < 0)
            {
              goto LABEL_98;
            }

            a2 = 0;
            v161 = v6 >> 32;
            v162 = BYTE6(v77);
            v87 = v172;
            v160 = &aBlock + v171;
            v169 = v79;
            v170 = v77 >> 62;
            while (2)
            {
              if (a2 < v79)
              {
                v88 = (a2 + 1);
                if (__OFADD__(a2, 1))
                {
                  goto LABEL_86;
                }

                v89 = (v171 + a2);
                if (v78 != 2)
                {
                  if (v78 == 1)
                  {
                    if (v89 < v163 || v89 >= v161)
                    {
                      goto LABEL_89;
                    }

                    v90 = __DataStorage._bytes.getter();
                    if (!v90)
                    {
                      __break(1u);
LABEL_105:
                      __break(1u);
                    }

                    v91 = v90;
                    v92 = __DataStorage._offset.getter();
                    v93 = &v89[-v92];
                    if (__OFSUB__(v89, v92))
                    {
                      goto LABEL_91;
                    }

LABEL_67:
                    v96 = v93[v91];
                  }

                  else
                  {
                    if (v89 >= v162)
                    {
                      goto LABEL_88;
                    }

                    LOWORD(aBlock._countAndFlagsBits) = v6;
                    BYTE2(aBlock._countAndFlagsBits) = BYTE2(v6);
                    BYTE3(aBlock._countAndFlagsBits) = BYTE3(v6);
                    BYTE4(aBlock._countAndFlagsBits) = v164;
                    BYTE5(aBlock._countAndFlagsBits) = BYTE5(v6);
                    BYTE6(aBlock._countAndFlagsBits) = BYTE6(v6);
                    HIBYTE(aBlock._countAndFlagsBits) = HIBYTE(v6);
                    LOWORD(aBlock._object) = v77;
                    BYTE2(aBlock._object) = BYTE2(v77);
                    BYTE3(aBlock._object) = BYTE3(v77);
                    BYTE4(aBlock._object) = BYTE4(v77);
                    BYTE5(aBlock._object) = BYTE5(v77);
                    v96 = v160[a2];
                  }

                  sub_100005814(&unk_1003E7720, &qword_100346B60);
                  v97 = swift_allocObject();
                  *(v97 + 16) = v168;
                  *(v97 + 56) = &type metadata for UInt8;
                  *(v97 + 64) = &protocol witness table for UInt8;
                  *(v97 + 32) = v96;
                  v98 = String.init(format:_:)();
                  v100 = v99;
                  v172 = v87;
                  v78 = v87[2];
                  v101 = v87[3];
                  if (v78 >= v101 >> 1)
                  {
                    sub_1002E0224((v101 > 1), v78 + 1, 1);
                    v87 = v172;
                  }

                  v87[2] = v78 + 1;
                  v102 = &v87[2 * v78];
                  v102[4] = v98;
                  v102[5] = v100;
                  ++a2;
                  v79 = v169;
                  LODWORD(v78) = v170;
                  if (v88 == v169)
                  {
                    a2 = v149;
                    goto LABEL_74;
                  }

                  continue;
                }

                if (v89 < *(v6 + 16))
                {
                  goto LABEL_87;
                }

                if (v89 >= *(v6 + 24))
                {
                  goto LABEL_90;
                }

                v94 = __DataStorage._bytes.getter();
                if (!v94)
                {
                  goto LABEL_105;
                }

                v91 = v94;
                v95 = __DataStorage._offset.getter();
                v93 = &v89[-v95];
                if (__OFSUB__(v89, v95))
                {
                  goto LABEL_92;
                }

                goto LABEL_67;
              }

              break;
            }

            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            swift_once();
            goto LABEL_2;
          }
        }

        else
        {
          v79 = BYTE6(v77);
          if (BYTE6(v77))
          {
            goto LABEL_43;
          }
        }

        v87 = _swiftEmptyArrayStorage;
LABEL_74:
        v82 = v159;
        aBlock._countAndFlagsBits = v87;
        sub_100005814(&qword_1003DA1E0, &qword_100345E50);
        sub_10005A668();
        v81 = BidirectionalCollection<>.joined(separator:)();
        v80 = v103;
        sub_100012324(v6, v77);

        v23 = v165;
      }

      else
      {
        v80 = 0xE300000000000000;
        v81 = 7104878;
        v23 = v165;
        v82 = v159;
      }

      v104 = sub_10021145C(v81, v80, &v173);

      v105 = v151;
      *(v151 + 14) = v104;
      v6 = v152;
      _os_log_impl(&_mh_execute_header, v152, v82, "Old change token for %s: %s", v105, 0x16u);
      swift_arrayDestroy();

      v22 = v154;
    }

    else
    {

      v23 = v165;
    }

    v24 = v167;
  }

  while (v23 != v22);
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    aBlock._countAndFlagsBits = v110;
    *v109 = 136315138;
    sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
    sub_100016034(0, &qword_1003E8500, CKFetchRecordZoneChangesConfiguration_ptr);
    sub_1002E8D60();
    v111 = v167;

    v112 = Dictionary.description.getter();
    v114 = v113;

    v115 = sub_10021145C(v112, v114, &aBlock._countAndFlagsBits);

    *(v109 + 4) = v115;
    _os_log_impl(&_mh_execute_header, v107, v108, "Fetching zones with optionsByRecordZoneID: %s", v109, 0xCu);
    sub_10000839C(v110);
  }

  else
  {

    v111 = v167;
  }

  v116 = swift_allocObject();
  *(v116 + 16) = _swiftEmptyArrayStorage;
  v117 = swift_allocObject();
  *(v117 + 16) = _swiftEmptyArrayStorage;
  sub_100016034(0, &qword_1003E84F8, CKFetchRecordZoneChangesOperation_ptr);

  v179.value._rawValue = a2;
  v179.is_nil = v111;
  v118 = CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(v179, v180).super.super.super.super.isa;
  v119 = [(objc_class *)v118 configuration];
  if (!v119)
  {
    __break(1u);
    goto LABEL_107;
  }

  v120 = v119;
  [v119 setAutomaticallyRetryNetworkFailures:0];

  v121 = [(objc_class *)v118 configuration];
  if (!v121)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  [v121 setDiscretionaryNetworkBehavior:0];

  [(objc_class *)v118 setFetchAllChanges:1];
  v177 = sub_1002E8C6C;
  v178 = v117;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v175 = sub_1002E8E04;
  v176 = &unk_1003B3D08;
  v122 = _Block_copy(&aBlock);

  [(objc_class *)v118 setRecordChangedBlock:v122];
  _Block_release(v122);

  CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter();
  v123 = swift_allocObject();
  *(v123 + 16) = v117;
  *(v123 + 24) = v116;
  v124 = v148;
  v125 = v138[1];
  *(v123 + 32) = v148;
  *(v123 + 40) = v125;
  v126 = BYTE1(v156);
  *(v123 + 48) = v156 & 1;
  *(v123 + 49) = v126 & 1;
  v177 = sub_1002E8CCC;
  v178 = v123;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v175 = sub_1002E8484;
  v176 = &unk_1003B3D58;
  v127 = _Block_copy(&aBlock);

  v128 = v124;

  [(objc_class *)v118 setRecordZoneFetchCompletionBlock:v127];
  _Block_release(v127);
  v129 = swift_allocObject();
  v130 = v139;
  v129[2] = a2;
  v129[3] = v130;
  v129[4] = v140;
  v177 = sub_1002E8D54;
  v178 = v129;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v175 = sub_10020E828;
  v176 = &unk_1003B3DA8;
  v131 = _Block_copy(&aBlock);

  [(objc_class *)v118 setFetchRecordZoneChangesCompletionBlock:v131];
  _Block_release(v131);
  v132 = v118;
  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    *v135 = 138412290;
    *(v135 + 4) = v132;
    *v136 = v132;
    v137 = v132;
    _os_log_impl(&_mh_execute_header, v133, v134, "Fetching record zone changes with operation: %@", v135, 0xCu);
    sub_100083380(v136);
  }

  [v128 addOperation:v132];
}

void sub_1002E7528(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_1002E75BC(void *a1, uint64_t a2)
{
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA58);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = CKRecord.recordType.getter();
    v11 = sub_10021145C(v9, v10, v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = [v5 debugDescription];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10021145C(v13, v15, v20);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Record changed: %s %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v17 = v5;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v19 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void sub_1002E77FC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1002E7864(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA58);

  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_10021145C(a2, a3, &v23);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Record deleted: %s %@", v12, 0x16u);
    sub_100083380(v13);

    sub_10000839C(v14);
  }

  swift_beginAccess();
  v16 = *(a4 + 16);

  v17 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1003067A0(0, v16[2] + 1, 1, v16);
    *(a4 + 16) = v16;
  }

  v20 = v16[2];
  v19 = v16[3];
  if (v20 >= v19 >> 1)
  {
    v16 = sub_1003067A0((v19 > 1), v20 + 1, 1, v16);
  }

  v16[2] = v20 + 1;
  v21 = &v16[3 * v20];
  v21[4] = v17;
  v21[5] = a2;
  v21[6] = a3;
  *(a4 + 16) = v16;
  return swift_endAccess();
}

void sub_1002E7ABC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, NSObject *a9, uint64_t a10, __int16 a11)
{
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v16 = a9;
  v67 = type metadata accessor for Logger();
  sub_100008D04(v67, qword_1003FAA70);
  v17 = a2;
  swift_retain_n();
  swift_retain_n();
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v66 = a2;
  if (os_log_type_enabled(v19, v20))
  {
    v64 = v20;
    v65 = a6;
    v21 = swift_slowAlloc();
    v69[0] = swift_slowAlloc();
    *v21 = 136315906;
    v22 = [v18 zoneName];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_10021145C(v23, v25, v69);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    if (a2)
    {
      v27 = [v17 data];
      v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v68 = sub_100166018(v28, v30);
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      sub_10005A668();
      v31 = BidirectionalCollection<>.joined(separator:)();
      v33 = v32;
      sub_100012324(v28, v30);
    }

    else
    {
      v33 = 0xE300000000000000;
      v31 = 7104878;
    }

    v49 = sub_10021145C(v31, v33, v69);

    *(v21 + 14) = v49;
    *(v21 + 22) = 2048;
    swift_beginAccess();
    v50 = *(a7 + 16);
    a6 = v65;
    if (v50 >> 62)
    {
      if (v50 < 0)
      {
        v63 = *(a7 + 16);
      }

      v51 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 24) = v51;

    *(v21 + 32) = 2048;
    swift_beginAccess();
    v52 = *(*(a8 + 16) + 16);

    *(v21 + 34) = v52;

    _os_log_impl(&_mh_execute_header, v19, v64, "record zone fetch complete. Zone: %s, Token: %s, Changed: %ld, Deleted: %ld", v21, 0x2Au);
    swift_arrayDestroy();

    v16 = a9;
    if (!v65)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!a6)
    {
LABEL_21:
      if (([objc_opt_self() shouldSkipRecoveryInfoRecordStorage] & 1) == 0)
      {
        if (sub_1002E3E70())
        {
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&_mh_execute_header, v53, v54, "Sync delegate is not nil. Saving/deleting records on disk.", v55, 2u);
          }

          swift_beginAccess();
          v56 = *(a7 + 16);

          sub_1002EBDD8(v16, v56);

          swift_beginAccess();
          v57 = *(a8 + 16);

          sub_1002ED6CC(v16, v57);

          sub_1002DD65C(v18, v66);
          swift_unknownObjectRelease();
        }

        else
        {
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&_mh_execute_header, v58, v59, "Sync delegate is nil", v60, 2u);
          }
        }
      }

      swift_beginAccess();
      v61 = *(a7 + 16);
      *(a7 + 16) = _swiftEmptyArrayStorage;

      swift_beginAccess();
      v62 = *(a8 + 16);
      *(a8 + 16) = _swiftEmptyArrayStorage;

      return;
    }
  }

  swift_errorRetain();
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  sub_100008D04(v67, qword_1003FAA58);
  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = v18;
    v38 = swift_slowAlloc();
    *v36 = 138412290;
    v39 = _convertErrorToNSError(_:)();
    *(v36 + 4) = v39;
    *v38 = v39;
    _os_log_impl(&_mh_execute_header, v34, v35, "Error fetching record zone: %@", v36, 0xCu);
    sub_100083380(v38);
    v18 = v37;
  }

  v69[0] = a6;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v69[0] = v68;
    sub_1002DF38C();
    _BridgedStoredNSError.code.getter();
    if (v68 == 21)
    {
      v40 = v18;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v40;
        *v44 = v40;
        v45 = v40;
        _os_log_impl(&_mh_execute_header, v41, v42, "Clearing change token for zone %@ due to error, and pulling again", v43, 0xCu);
        sub_100083380(v44);
      }

      sub_1002DD65C(v40, 0);
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1003431D0;
      *(v46 + 32) = v40;
      v47 = swift_allocObject();
      *(v47 + 16) = v40;
      v48 = v40;
      sub_1002E6374(v16, v46, a11 & 0x101, sub_1002E8DC8, v47);
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_1002E8348(uint64_t a1, void *a2)
{
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA70);
  v4 = a2;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v4;
    *v7 = v4;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Completed zone pull of %@ with nil change token", v6, 0xCu);
    sub_100083380(v7);
  }
}

uint64_t sub_1002E8484(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v8 = a4;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a4)
  {

    v13 = a2;
    v14 = a3;
    v15 = v8;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {

    v18 = a2;
    v19 = a3;
    v17 = 0xF000000000000000;
  }

  v20 = a6;
  v12(a2, a3, v8, v17, a5, a6);

  sub_100015D58(v8, v17);
}

uint64_t sub_1002E8570(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA70);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
    v10 = Array.description.getter();
    v12 = sub_10021145C(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetch record zone changes complete. ZoneIDs: %s", v8, 0xCu);
    sub_10000839C(v9);
  }

  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    sub_100008D04(v5, qword_1003FAA58);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = _convertErrorToNSError(_:)();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error fetching record zone changes: %@", v15, 0xCu);
      sub_100083380(v16);
    }

    else
    {
    }
  }

  return a3(a1);
}

Swift::Int sub_1002E8834(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100005814(&qword_1003E7788, &qword_100349928);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100016034(0, &qword_1003E8500, CKFetchRecordZoneChangesConfiguration_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1002CEB98(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
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
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_1002E8A80()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002E8AB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002E8AEC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1002E8B44(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 49))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1002E5DCC(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), v4 | *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72));
}

uint64_t sub_1002E8B94()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002E8BD4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1002E8C24(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  if (!a1)
  {
    v4 = v1[4];
    v5 = v1[5];
    v7 = v1 + 2;
    v6 = v1[2];
    sub_1002DD180(v7[1], v4, v5);
  }

  return v3(0);
}

uint64_t sub_1002E8C7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 50);
}

void sub_1002E8CCC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 32);
  if (*(v6 + 49))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  sub_1002E7ABC(a1, a2, a3, a4, a5, a6, *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v8 | *(v6 + 48));
}

uint64_t sub_1002E8D14()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

unint64_t sub_1002E8D60()
{
  result = qword_1003E8508;
  if (!qword_1003E8508)
  {
    sub_100016034(255, &qword_1003DEBF0, CKRecordZoneID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E8508);
  }

  return result;
}

uint64_t sub_1002E8E0C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a3;
  v50 = a4;
  v44 = a1;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  __chkstk_darwin(v7);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012D04((v5 + 2), v54, &qword_1003DF6C8, qword_1003436E0);
  if (v54[3])
  {
    sub_100005814(&qword_1003E86F0, &unk_10034A430);
    type metadata accessor for CloudKitStore();
    if (swift_dynamicCast())
    {
      *(v53 + 24) = &off_1003B3DF8;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
    sub_100008D3C(v54, &qword_1003DF6C8, qword_1003436E0);
  }

  if (qword_1003D7F00 != -1)
  {
    swift_once();
  }

  v15 = qword_1003FAA30;
  v16 = *(qword_1003FAA30 + 16);
  v51 = a2;
  if (v16)
  {
    v42 = v7;
    v52 = sub_100306D64(v16, 0);
    v17 = sub_1002FD4E0(v54, v52 + 4, v16, v15);

    result = sub_10005A1DC();
    if (v17 != v16)
    {
      __break(1u);
      return result;
    }

    v7 = v42;
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
  }

  sub_100071C74();
  static DispatchQoS.unspecified.getter();
  v54[0] = _swiftEmptyArrayStorage;
  sub_1002FF768(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v48 + 104))(v47, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = v5[14];
  v21 = v5[15];
  v22 = objc_allocWithZone(APSConnection);

  v23 = String._bridgeToObjectiveC()();

  v24 = String._bridgeToObjectiveC()();
  v25 = [v22 initWithEnvironmentName:v23 namedDelegatePort:v24 queue:v19];

  v26 = v5[16];
  v5[16] = v25;
  v27 = v25;

  v28 = v52;
  if (v27)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v27 _setEnabledTopics:isa];
  }

  v30 = v5[16];
  v31 = v51;
  if (v30)
  {
    [v30 setDelegate:v5[13]];
  }

  v32 = v28[2];
  if (v32)
  {
    v33 = v28 + 5;
    do
    {
      v34 = v5[16];
      if (v34)
      {
        v36 = *(v33 - 1);
        v35 = *v33;

        v37 = v34;
        v38 = String._bridgeToObjectiveC()();

        [v37 requestTokenForTopic:v38 identifier:0];
      }

      v33 += 2;
      --v32;
    }

    while (v32);
  }

  v39 = swift_allocObject();
  *(v39 + 16) = v49;
  *(v39 + 24) = v50;

  if (v31)
  {
    v40 = 257;
  }

  else
  {
    v40 = 1;
  }

  sub_1002E93B4(v44, v40, sub_1002FF724, v39);
}

uint64_t sub_1002E93B4(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = a1;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;

  Date.init()();
  v24 = *(v5 + 168);
  (*(v10 + 16))(v13, v15, v9);
  v17 = (*(v10 + 80) + 50) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  *(v18 + 24) = sub_1002FF0DC;
  v19 = v23;
  *(v18 + 32) = v16;
  *(v18 + 40) = v19;
  *(v18 + 48) = a2 & 1;
  *(v18 + 49) = HIBYTE(a2) & 1;
  (*(v10 + 32))(v18 + v17, v13, v9);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1002FF1EC;
  *(v20 + 24) = v18;
  aBlock[4] = sub_100071DCC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10030F718;
  aBlock[3] = &unk_1003B4530;
  v21 = _Block_copy(aBlock);

  dispatch_sync(v24, v21);
  _Block_release(v21);

  (*(v10 + 8))(v15, v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E9690(char a1, uint64_t (*a2)(void), uint64_t a3, void *a4, uint64_t a5, const char *a6)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, a5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, a6, v13, 8u);
  }

  return a2(a1 & 1);
}

void sub_1002E9790(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  v60 = a6;
  LODWORD(v57) = a5;
  v56 = a4;
  v55 = type metadata accessor for Date();
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v55);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v11;
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100008D04(v12, qword_1003FAA70);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "🎒 pullCloudUpdates: Queuing completion", v16, 2u);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  swift_beginAccess();
  v18 = a1[17];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a1[17] = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1003068E8(0, v18[2] + 1, 1, v18);
    a1[17] = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1003068E8((v20 > 1), v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  v22 = &v18[2 * v21];
  v22[4] = sub_1002FF27C;
  v22[5] = v17;
  a1[17] = v18;
  swift_endAccess();
  v23 = a1[19];
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  if (v23)
  {
    if (v26)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "😎 pullCloudUpdates: Pull underway. NOT Configuring Operations. Returning.", v27, 2u);
    }
  }

  else
  {
    v54 = v13;
    if (v26)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "🎒 pullCloudUpdates: Configuring Operations", v28, 2u);
    }

    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v53 = *(v9 + 16);
    v30 = v58;
    v31 = v55;
    v53(v58, v60, v55);
    v32 = *(v9 + 80);
    v33 = swift_allocObject();
    v34 = v56;
    *(v33 + 16) = a1;
    *(v33 + 24) = v34;
    v35 = BYTE1(v57);
    *(v33 + 32) = v57 & 1;
    *(v33 + 33) = v35 & 1;
    *(v33 + 40) = v29;
    v57 = *(v9 + 32);
    v36 = v30;
    v57(v33 + ((v32 + 48) & ~v32), v30, v31);
    v37 = type metadata accessor for AsyncOperation();
    v38 = objc_allocWithZone(v37);
    v38[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
    v39 = &v38[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
    *v39 = sub_1002FF2BC;
    v39[1] = v33;
    v62.receiver = v38;
    v62.super_class = v37;

    v56 = objc_msgSendSuper2(&v62, "init");
    v53(v36, v60, v31);
    v40 = swift_allocObject();
    *(v40 + 16) = a1;
    *(v40 + 24) = v29;
    v57(v40 + ((v32 + 32) & ~v32), v36, v31);
    v41 = objc_allocWithZone(v37);
    v41[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
    v42 = &v41[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
    *v42 = sub_1002FF428;
    v42[1] = v40;
    v61.receiver = v41;
    v61.super_class = v37;

    v43 = objc_msgSendSuper2(&v61, "init");
    v44 = v56;
    [v43 addDependency:v56];
    v45 = a1[20];
    a1[20] = v43;
    v24 = v43;

    v46 = a1[19];
    a1[19] = v44;
    v47 = v44;

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "🟢 pullCloudUpdates: Starting Pull & Comp Ops", v50, 2u);
    }

    v51 = a1[18];
    [v51 addOperation:v24];
    [v51 addOperation:v47];
  }
}

uint64_t sub_1002E9D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  v18[0] = a4;
  v18[1] = a3;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  (*(v13 + 16))(v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v12);
  v15 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a6;
  *(v16 + 3) = a1;
  *(v16 + 4) = a2;
  (*(v13 + 32))(&v16[v15], v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);

  sub_1002EA698(v18[0], a5 & 0x101, sub_1002FF6AC, v16);
}

void sub_1002E9EEC(char a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = swift_beginAccess();
  *(a2 + 16) = a1;
  a3(v17);
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAA70);
  (*(v10 + 16))(v16, a5, v9);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v23 = v22;
    v24 = *(v10 + 8);
    v24(v14, v9);
    v24(v16, v9);
    *(v21 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v19, v20, "✅ pullCloudUpdates: PullOp Complete ⏰ %f", v21, 0xCu);
  }

  else
  {

    (*(v10 + 8))(v16, v9);
  }
}

uint64_t sub_1002EA148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = a4 + 16;
  v20 = *(a3 + 168);
  (*(v11 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v10);
  v14 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = v13;
  *(v15 + 4) = a1;
  *(v15 + 5) = a2;
  (*(v11 + 32))(&v15[v14], &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1002FF578;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1002ACED0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10030F718;
  aBlock[3] = &unk_1003B4648;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v20, v17);
  _Block_release(v17);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void sub_1002EA390(void *a1, char *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v33 = a3;
  v34 = a5;
  v32[1] = a4;
  v35 = type metadata accessor for Date();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v35);
  v32[0] = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v32 - v11;
  swift_beginAccess();
  v13 = a1[17];
  v14 = *(v13 + 16);

  swift_beginAccess();
  if (v14)
  {
    v15 = 0;
    v16 = (v13 + 40);
    while (v15 < *(v13 + 16))
    {
      ++v15;
      v17 = *(v16 - 1);
      v18 = *v16;
      v36 = *a2;

      v17(&v36);

      v16 += 2;
      if (v14 == v15)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v19 = a1[17];
    a1[17] = _swiftEmptyArrayStorage;

    v33(v20);
    v21 = a1[20];
    a1[20] = 0;

    v22 = a1[19];
    a1[19] = 0;

    if (qword_1003D7F30 == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAA70);
  v24 = v35;
  (*(v7 + 16))(v12, v34, v35);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    v28 = v32[0];
    Date.init()();
    Date.timeIntervalSince(_:)();
    v30 = v29;
    v31 = *(v7 + 8);
    v31(v28, v24);
    v31(v12, v24);
    *(v27 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v25, v26, "✅ pullCloudUpdates: CompOp Complete ⏰ %f", v27, 0xCu);
  }

  else
  {

    (*(v7 + 8))(v12, v24);
  }
}

uint64_t sub_1002EA698(char a1, int a2, uint64_t (*a3)(void), uint64_t a4)
{
  v87 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v84 = *(v12 - 8);
  v85 = v12;
  v13 = *(v84 + 64);
  __chkstk_darwin(v12);
  v83 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for OS_dispatch_queue.Attributes();
  v15 = *(*(v91 - 1) + 64);
  __chkstk_darwin(v91);
  v88 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v86 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v80 = *(v21 - 8);
  v81 = v21;
  v22 = *(v80 + 64);
  __chkstk_darwin(v21);
  v82 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = _swiftEmptyArrayStorage;
  if (a1)
  {
    if (qword_1003D7EE0 != -1)
    {
      swift_once();
    }

    sub_10028BBC0(v24);
  }

  if ((a1 & 2) != 0)
  {
    if (qword_1003D7EE8 != -1)
    {
      swift_once();
    }

    sub_10028BBC0(v25);
  }

  v26 = *(aBlock[0] + 16);
  if (v26)
  {
    v73 = a3;
    v74 = v18;
    v75 = a4;
    v76 = v17;
    v77 = v11;
    v78 = v8;
    v79 = v7;
    v89 = aBlock[0];
    v27 = (aBlock[0] + 40);
    v28 = _swiftEmptyArrayStorage;
    do
    {
      v30 = *(v27 - 1);
      v29 = *v27;
      v31 = qword_1003D7EB0;
      swift_bridgeObjectRetain_n();
      if (v31 != -1)
      {
        swift_once();
      }

      v32 = sub_1002E2BC4(v30, v29);
      v33 = [v32 privateCloudDatabase];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_100306A40(0, v28[2] + 1, 1, v28);
      }

      v35 = v28[2];
      v34 = v28[3];
      if (v35 >= v34 >> 1)
      {
        v28 = sub_100306A40((v34 > 1), v35 + 1, 1, v28);
      }

      v28[2] = v35 + 1;
      v36 = &v28[3 * v35];
      v36[4] = v30;
      v36[5] = v29;
      v36[6] = v33;
      v37 = sub_1002E2BC4(v30, v29);
      v38 = [v37 sharedCloudDatabase];

      v40 = v28[2];
      v39 = v28[3];
      if (v40 >= v39 >> 1)
      {
        v28 = sub_100306A40((v39 > 1), v40 + 1, 1, v28);
      }

      v28[2] = v40 + 1;
      v41 = &v28[3 * v40];
      v41[4] = v30;
      v41[5] = v29;
      v41[6] = v38;
      v27 += 2;
      --v26;
    }

    while (v26);

    v42 = dispatch_group_create();
    v89 = swift_allocObject();
    *(v89 + 16) = &_swiftEmptyDictionarySingleton;
    v43 = sub_100071C74();
    (*(v80 + 104))(v82, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v81);
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1002FF768(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100005814(&unk_1003E6290, &qword_10033F570);
    sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v82 = v43;
    v88 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v44 = v28[2];
    if (v44)
    {
      v45 = (v28 + 6);
      v46 = v88;
      do
      {
        v54 = *(v45 - 2);
        v55 = *(v45 - 1);
        v56 = *v45;

        v57 = v56;
        dispatch_group_enter(v42);
        sub_100012D04(v90 + 16, aBlock, &qword_1003DF6C8, qword_1003436E0);
        if (v94)
        {
          v47 = sub_1000080F8(aBlock, v94);
          v48 = swift_allocObject();
          v48[2] = v54;
          v48[3] = v55;
          v91 = v54;
          v49 = v42;
          v50 = v89;
          v48[4] = v46;
          v48[5] = v50;
          v48[6] = v49;
          v51 = *v47;

          v52 = v46;
          v42 = v49;

          v53 = v49;
          sub_1002E542C(v57, v91, v55, v87 & 0x101, sub_1002FEFF4, v48);

          sub_10000839C(aBlock);
        }

        else
        {

          sub_100008D3C(aBlock, &qword_1003DF6C8, qword_1003436E0);
        }

        v45 += 3;
        --v44;
      }

      while (v44);
    }

    v59 = v83;
    v58 = v84;
    v60 = v85;
    (*(v84 + 104))(v83, enum case for DispatchQoS.QoSClass.default(_:), v85);
    v91 = static OS_dispatch_queue.global(qos:)();
    (*(v58 + 8))(v59, v60);
    v61 = swift_allocObject();
    v62 = v88;
    v63 = v89;
    v61[2] = v88;
    v61[3] = v63;
    v64 = v75;
    v61[4] = v73;
    v61[5] = v64;
    v95 = sub_1002FEF98;
    v96 = v61;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    v94 = &unk_1003B43C8;
    v65 = _Block_copy(aBlock);
    v66 = v62;

    v67 = v86;
    static DispatchQoS.unspecified.getter();
    v92 = _swiftEmptyArrayStorage;
    sub_1002FF768(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v68 = v77;
    v69 = v79;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v70 = v91;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v65);

    (*(v78 + 8))(v68, v69);
    (*(v74 + 8))(v67, v76);
  }

  else
  {

    return a3(0);
  }
}

void sub_1002EB054(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v51 = a6;
  v49 = a5;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v15 - 8);
  v16 = *(v50 + 64);
  __chkstk_darwin(v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v45 = v22;
    v46 = v21;
    v47 = v15;
    v48 = a4;
    v25 = a2;
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA58);
    swift_errorRetain();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v29 = 136315394;
      *(v29 + 4) = sub_10021145C(v25, a3, aBlock);
      *(v29 + 12) = 2112;
      v32 = _convertErrorToNSError(_:)();
      *(v29 + 14) = v32;
      *v30 = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error fetching ckDatabase (%s) changes: %@", v29, 0x16u);
      sub_100008D3C(v30, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v31);
    }

    v33 = swift_allocObject();
    v33[2] = v49;
    v33[3] = v25;
    v33[4] = a3;
    v33[5] = a1;
    aBlock[4] = sub_1002FF04C;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003B4440;
    v34 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v52 = _swiftEmptyArrayStorage;
    sub_1002FF768(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v35 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);

    (*(v50 + 8))(v18, v35);
    (*(v45 + 8))(v24, v46);
  }

  else
  {
    v36 = a2;
    if (qword_1003D7F30 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100008D04(v37, qword_1003FAA70);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_10021145C(v36, a3, aBlock);
      _os_log_impl(&_mh_execute_header, v38, v39, "Successfully fetched ckDatabase (%s) changes", v40, 0xCu);
      sub_10000839C(v41);
    }

    v42 = [objc_opt_self() standardUserDefaults];
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v14, v10);
    v44 = String._bridgeToObjectiveC()();
    [v42 setObject:isa forKey:v44];
  }

  dispatch_group_leave(v51);
}

uint64_t sub_1002EB6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  swift_errorRetain();
  v8 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1002CEFC4(a4, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1002EB79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  aBlock[4] = sub_1002FF098;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B4490;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1002FF768(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v20);
}

uint64_t sub_1002EBA68(uint64_t a1, uint64_t (*a2)(BOOL))
{
  swift_beginAccess();
  v4 = *(*(a1 + 16) + 16);
  if (v4)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA58);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      swift_beginAccess();
      v10 = *(a1 + 16);

      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v11 = Dictionary.description.getter();
      v13 = v12;

      v14 = sub_10021145C(v11, v13, &v19);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed syncing (pulling) cloudkit changes from server: %s", v8, 0xCu);
      sub_10000839C(v9);

LABEL_10:
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA58);
    v6 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v6, v16, "Successfully synced (pulled) cloudkit changes from server", v17, 2u);
      goto LABEL_10;
    }
  }

  return a2(v4 == 0);
}

uint64_t sub_1002EBD00()
{
  sub_100008D3C(v0 + 16, &qword_1003DF6C8, qword_1003436E0);
  sub_10000839C((v0 + 56));
  v1 = *(v0 + 96);

  v2 = *(v0 + 120);

  v3 = *(v0 + 136);

  return v0;
}

uint64_t sub_1002EBD80()
{
  sub_1002EBD00();

  return swift_deallocClassInstance();
}

void sub_1002EBDD8(NSObject *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [a1 container];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 containerID];

    v7 = [v6 containerIdentifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1003D7EF8 != -1)
    {
      v11 = swift_once();
    }

    v39[0] = v8;
    v39[1] = v10;
    __chkstk_darwin(v11);
    v36[2] = v39;
    v13 = sub_1002D9820(sub_1002FF8C0, v36, v12);

    if (qword_1003D7F30 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA70);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    v17 = a2 >> 62;
    if (os_log_type_enabled(v15, v16))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      if (v17)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v18 + 4) = v19;

      _os_log_impl(&_mh_execute_header, v15, v16, "CloudKitSyncManager processing [%ld] changed", v18, 0xCu);
    }

    else
    {
    }

    v3 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_10021145C(5457241, 0xE300000000000000, v39);
      _os_log_impl(&_mh_execute_header, v3, v27, "Records in manatee?: %s", v28, 0xCu);
      sub_10000839C(v29);
    }

    v38 = &_swiftEmptySetSingleton;
    if (v17)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
      if (v30)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v30 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
LABEL_21:
        if (v30 >= 1)
        {
          for (i = 0; i != v30; ++i)
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v32 = *(a2 + 8 * i + 32);
            }

            v33 = v32;
            if (sub_1002EC2F0(v32, v13 & 1))
            {
            }

            else
            {
              v34 = CKRecord.recordType.getter();
              sub_1002FAEE0(v39, v34, v35);
            }
          }

          goto LABEL_32;
        }

        __break(1u);
        goto LABEL_34;
      }
    }

LABEL_32:

    return;
  }

  if (qword_1003D7F28 != -1)
  {
LABEL_34:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAA58);
  v21 = v3;
  v37 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v37, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v21;
    *v24 = v21;
    v25 = v21;
    _os_log_impl(&_mh_execute_header, v37, v22, "Failed to obtain containerID from database: %@", v23, 0xCu);
    sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);
  }

  v26 = v37;
}

uint64_t sub_1002EC2F0(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for InheritanceHealthRecord();
  v143 = *(v6 - 8);
  v7 = *(v143 + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v145 = v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v9;
  __chkstk_darwin(v8);
  v146 = v142 - v10;
  v11 = type metadata accessor for BenefactorInfoRecord();
  v147 = *(v11 - 8);
  v12 = *(v147 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v149 = v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v14;
  __chkstk_darwin(v13);
  v150 = v142 - v15;
  v16 = type metadata accessor for BeneficiaryManifestRecord();
  v151 = *(v16 - 8);
  v17 = *(v151 + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v153 = v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v19;
  __chkstk_darwin(v18);
  v21 = v142 - v20;
  v22 = type metadata accessor for BeneficiaryInfoRecord();
  v154 = *(v22 - 8);
  v23 = *(v154 + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v156 = v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = v25;
  __chkstk_darwin(v24);
  v157 = v142 - v26;
  v27 = type metadata accessor for InheritanceInvitationRecord();
  v158 = *(v27 - 8);
  v28 = *(v158 + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v159 = v30;
  v160 = v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v161 = v142 - v31;
  v32 = type metadata accessor for CustodianHealthRecord();
  v162 = *(v32 - 8);
  v33 = *(v162 + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v163 = v35;
  v164 = v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v165 = v142 - v36;
  v37 = type metadata accessor for CustodianRecoveryInfoRecord();
  v166 = *(v37 - 8);
  v38 = *(v166 + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v167 = v40;
  v168 = v142 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v169 = v142 - v41;
  v42 = type metadata accessor for CustodianRecord();
  v170 = *(v42 - 8);
  v43 = *(v170 + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v171 = v45;
  v172 = v142 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v173 = v142 - v46;
  v47 = type metadata accessor for CustodianshipInfoRecord();
  v174 = *(v47 - 8);
  v48 = *(v174 + 64);
  v49 = __chkstk_darwin(v47 - 8);
  v175 = v50;
  v176 = v142 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v177 = v142 - v51;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  v53 = sub_100008D04(v52, qword_1003FAA58);
  v54 = a1;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v142[1] = v53;
    v58 = v57;
    v142[0] = swift_slowAlloc();
    v178 = v142[0];
    *v58 = 136315394;
    v59 = [v54 recordID];
    v60 = v21;
    v61 = v54;
    v62 = a2;
    v63 = v3;
    v64 = [v59 recordName];

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    v3 = v63;
    a2 = v62;
    v54 = v61;
    v21 = v60;
    v68 = sub_10021145C(v65, v67, &v178);

    *(v58 + 4) = v68;
    *(v58 + 12) = 2080;
    v69 = CKRecord.recordType.getter();
    v71 = sub_10021145C(v69, v70, &v178);

    *(v58 + 14) = v71;
    _os_log_impl(&_mh_execute_header, v55, v56, "Updating record %s of type %s", v58, 0x16u);
    swift_arrayDestroy();
  }

  v73 = CKRecord.recordType.getter();
  v74 = v72;
  if (v73 == 0xD000000000000017 && 0x800000010032CE50 == v72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v75 = v54;
    v21 = v177;
    sub_1000F80E0(v75, a2 & 1, v177);
    v76 = sub_1000080F8((v3 + 56), *(v3 + 80));
    v77 = type metadata accessor for CustodianshipInfoRecord;
    v78 = v176;
    sub_1002FDED4(v21, v176, type metadata accessor for CustodianshipInfoRecord);
    v79 = (*(v174 + 80) + 16) & ~*(v174 + 80);
    v80 = swift_allocObject();
    sub_1002FE0A0(v78, v80 + v79, type metadata accessor for CustodianshipInfoRecord);
    v81 = *v76;
    sub_10017EB20(v21, 0, 2, sub_1002FEE64, v80);
LABEL_9:

    sub_1002FE134(v21, v77);
    return 0;
  }

  if (v73 == 0x6169646F74737543 && v74 == 0xEF64726F6365526ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v83 = v54;
    v21 = v173;
    sub_1000EF6D0(v83, a2 & 1, v173);
    v84 = sub_1000080F8((v3 + 56), *(v3 + 80));
    v77 = type metadata accessor for CustodianRecord;
    v85 = v172;
    sub_1002FDED4(v21, v172, type metadata accessor for CustodianRecord);
    v86 = (*(v170 + 80) + 16) & ~*(v170 + 80);
    v87 = swift_allocObject();
    sub_1002FE0A0(v85, v87 + v86, type metadata accessor for CustodianRecord);
    v88 = *v84;
    sub_10017DF74(v21, 0, 2, sub_1002FED10, v87);
    goto LABEL_9;
  }

  if (v73 == 0xD00000000000001BLL && 0x800000010032CEE0 == v74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v89 = v54;
    v21 = v169;
    sub_1000F3020(v89, a2 & 1, v169);
    v90 = sub_1000080F8((v3 + 56), *(v3 + 80));
    v77 = type metadata accessor for CustodianRecoveryInfoRecord;
    v91 = v168;
    sub_1002FDED4(v21, v168, type metadata accessor for CustodianRecoveryInfoRecord);
    v92 = (*(v166 + 80) + 16) & ~*(v166 + 80);
    v93 = swift_allocObject();
    sub_1002FE0A0(v91, v93 + v92, type metadata accessor for CustodianRecoveryInfoRecord);
    v94 = *v90;
    sub_10017E358(v21, 0, 2, sub_1002FEB0C, v93);
    goto LABEL_9;
  }

  if (v73 == 0xD000000000000015 && 0x800000010032CDD0 == v74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v95 = v54;
    v21 = v165;
    sub_1000EC0A4(v95, a2 & 1, v165);
    v96 = sub_1000080F8((v3 + 56), *(v3 + 80));
    v77 = type metadata accessor for CustodianHealthRecord;
    v97 = v164;
    sub_1002FDED4(v21, v164, type metadata accessor for CustodianHealthRecord);
    v98 = (*(v162 + 80) + 16) & ~*(v162 + 80);
    v99 = swift_allocObject();
    sub_1002FE0A0(v97, v99 + v98, type metadata accessor for CustodianHealthRecord);
    v100 = *v96;
    sub_10017E73C(v21, 0, 2, sub_1002FE918, v99);
    goto LABEL_9;
  }

  if (v73 == 0xD00000000000001BLL && 0x8000000100330380 == v74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v101 = v54;
    v21 = v161;
    sub_1001EDB14(v101, a2 & 1, v161);
    v102 = sub_1000080F8((v3 + 56), *(v3 + 80));
    v77 = type metadata accessor for InheritanceInvitationRecord;
    v103 = v160;
    sub_1002FDED4(v21, v160, type metadata accessor for InheritanceInvitationRecord);
    v104 = (*(v158 + 80) + 16) & ~*(v158 + 80);
    v105 = swift_allocObject();
    sub_1002FE0A0(v103, v105 + v104, type metadata accessor for InheritanceInvitationRecord);
    v106 = *v102;
    sub_10017FAB0(v21, 0, 2, sub_1002FE774, v105);
    goto LABEL_9;
  }

  if (v73 == 0xD000000000000020 && 0x8000000100330350 == v74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v107 = v54;
    v21 = v157;
    sub_1001E4CD8(v107, a2 & 1, v157);
    v108 = sub_1000080F8((v3 + 56), *(v3 + 80));
    v77 = type metadata accessor for BeneficiaryInfoRecord;
    v109 = v156;
    sub_1002FDED4(v21, v156, type metadata accessor for BeneficiaryInfoRecord);
    v110 = (*(v154 + 80) + 16) & ~*(v154 + 80);
    v111 = swift_allocObject();
    sub_1002FE0A0(v109, v111 + v110, type metadata accessor for BeneficiaryInfoRecord);
    v112 = *v108;
    sub_10017F6CC(v21, 0, 2, sub_1002FE600, v111);
    goto LABEL_9;
  }

  if (v73 == 0xD000000000000024 && 0x80000001003303A0 == v74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1001E7CF0(v54, a2 & 1, v21);
    v113 = sub_1000080F8((v3 + 56), *(v3 + 80));
    v77 = type metadata accessor for BeneficiaryManifestRecord;
    v114 = v153;
    sub_1002FDED4(v21, v153, type metadata accessor for BeneficiaryManifestRecord);
    v115 = (*(v151 + 80) + 16) & ~*(v151 + 80);
    v116 = swift_allocObject();
    sub_1002FE0A0(v114, v116 + v115, type metadata accessor for BeneficiaryManifestRecord);
    v117 = *v113;
    sub_100180278(v21, 0, 2, sub_1002FE40C, v116);
    goto LABEL_9;
  }

  if (v73 == 0xD00000000000001FLL && 0x80000001003303D0 == v74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v118 = v54;
    sub_1001E17B0(v118, a2 & 1, v150);
    v119 = sub_1000080F8((v3 + 56), *(v3 + 80));
    v77 = type metadata accessor for BenefactorInfoRecord;
    v21 = v150;
    v120 = v149;
    sub_1002FDED4(v150, v149, type metadata accessor for BenefactorInfoRecord);
    v121 = (*(v147 + 80) + 16) & ~*(v147 + 80);
    v122 = swift_allocObject();
    sub_1002FE0A0(v120, v122 + v121, type metadata accessor for BenefactorInfoRecord);
    v123 = *v119;
    sub_10017FE94(v21, 0, 2, sub_1002FE2BC, v122);
    goto LABEL_9;
  }

  if (v73 == 0xD000000000000017 && 0x8000000100330300 == v74)
  {

LABEL_43:
    v125 = v54;
    sub_1001EA130(v125, a2 & 1, v146);
    v126 = sub_1000080F8((v3 + 56), *(v3 + 80));
    v77 = type metadata accessor for InheritanceHealthRecord;
    v21 = v146;
    v127 = v145;
    sub_1002FDED4(v146, v145, type metadata accessor for InheritanceHealthRecord);
    v128 = (*(v143 + 80) + 16) & ~*(v143 + 80);
    v129 = swift_allocObject();
    sub_1002FE0A0(v127, v129 + v128, type metadata accessor for InheritanceHealthRecord);
    v130 = *v126;
    sub_10017F2E8(v21, 0, 2, sub_1002FE108, v129);
    goto LABEL_9;
  }

  v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v124)
  {
    goto LABEL_43;
  }

  v131 = v54;
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v178 = v135;
    *v134 = 136315138;
    v136 = v131;
    v137 = [v136 description];
    v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v140 = v139;

    v141 = sub_10021145C(v138, v140, &v178);

    *(v134 + 4) = v141;
    _os_log_impl(&_mh_execute_header, v132, v133, "Unrecognized record type cannot be processed: %s", v134, 0xCu);
    sub_10000839C(v135);
  }

  return 0;
}

void sub_1002ED6CC(void *a1, uint64_t a2)
{
  v4 = [a1 container];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 containerID];

    v7 = [v6 containerIdentifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1003D7EF8 != -1)
    {
      v11 = swift_once();
    }

    v32[0] = v8;
    v32[1] = v10;
    __chkstk_darwin(v11);
    v29[2] = v32;
    v13 = sub_1002D9820(sub_1002FD690, v29, v12);

    if (qword_1003D7F30 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA70);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *(a2 + 16);

      _os_log_impl(&_mh_execute_header, v15, v16, "CloudKitSyncManager processing %ld deleted records", v17, 0xCu);
    }

    else
    {
    }

    v31 = &_swiftEmptySetSingleton;
    v24 = *(a2 + 16);
    if (v24)
    {
      v25 = (a2 + 48);
      do
      {
        v26 = *(v25 - 1);
        v27 = *v25;
        v28 = *(v25 - 2);

        if (sub_1002EDACC(v28, v26, v27, v13 & 1))
        {
        }

        else
        {
          sub_1002FAEE0(v32, v26, v27);
        }

        v25 += 3;
        --v24;
      }

      while (v24);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA58);
    v19 = a1;
    v30 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v30, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v19;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v30, v20, "Failed to obtain containerID from database for recordsDeleted: %@", v21, 0xCu);
      sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);
    }
  }
}

uint64_t sub_1002EDACC(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100008D04(v27, qword_1003FAA70);

  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10021145C(a2, a3, &v28);
    *(v11 + 12) = 2080;
    v12 = [v8 recordName];
    v13 = a4;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = v14;
    a4 = v13;
    v18 = sub_10021145C(v17, v16, &v28);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Deleting record %s %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = v8;
  if (a2 == 0xD000000000000017 && 0x800000010032CE50 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F12F4(v8, a4 & 1, sub_1002FD6EC, v19);
LABEL_9:

    return 0;
  }

  if (a2 == 0x6169646F74737543 && a3 == 0xEF64726F6365526ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F15D0(v8, a4 & 1, sub_1002FD6EC, v19);
    goto LABEL_9;
  }

  if (a2 == 0xD00000000000001BLL && 0x800000010032CEE0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F18B4(v8, a4 & 1, sub_1002FD6EC, v19);
    goto LABEL_9;
  }

  if (a2 == 0xD000000000000015 && 0x800000010032CDD0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F1B90(v8, a4 & 1, sub_1002FD6EC, v19);
    goto LABEL_9;
  }

  if (a2 == 0xD00000000000001BLL && 0x8000000100330380 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F1E6C(v8, a4 & 1, sub_1002FD6EC, v19);
    goto LABEL_9;
  }

  if (a2 == 0xD000000000000020 && 0x8000000100330350 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F2148(v8, a4 & 1, sub_1002FD6EC, v19);
    goto LABEL_9;
  }

  if (a2 == 0xD000000000000024 && 0x80000001003303A0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F2424(v8, a4 & 1, sub_1002FD6EC, v19);
    goto LABEL_9;
  }

  if (a2 == 0xD00000000000001FLL && 0x80000001003303D0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F2700(v8, a4 & 1, sub_1002FD6EC, v19);
    goto LABEL_9;
  }

  v21 = qword_1003D7F28;

  v22 = v8;
  if (v21 != -1)
  {
    swift_once();
  }

  sub_100008D04(v27, qword_1003FAA58);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_10021145C(a2, a3, &v28);
    _os_log_impl(&_mh_execute_header, v23, v24, "Unrecognized record type cannot be deleted: %s)", v25, 0xCu);
    sub_10000839C(v26);
  }

  type metadata accessor for AACustodianError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();

  return v28;
}

void sub_1002EE204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceHealthRecord();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v11 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v37 - v13);
  sub_100012D04(a1, &v37 - v13, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA58);
    sub_1002FDED4(a2, v10, type metadata accessor for InheritanceHealthRecord);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = v21;
      *v19 = 136315394;
      v22 = &v10[*(v4 + 28)];
      v23 = UUID.uuidString.getter();
      v25 = v24;
      sub_1002FE134(v10, type metadata accessor for InheritanceHealthRecord);
      v26 = sub_10021145C(v23, v25, &v38);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2112;
      v27 = _convertErrorToNSError(_:)();
      *(v19 + 14) = v27;
      *v20 = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to save record %s with error: %@", v19, 0x16u);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v21);
    }

    else
    {

      sub_1002FE134(v10, type metadata accessor for InheritanceHealthRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA58);
    sub_1002FDED4(a2, v8, type metadata accessor for InheritanceHealthRecord);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_10021145C(0xD000000000000017, 0x8000000100330300, &v38);
      *(v31 + 12) = 2080;
      v32 = &v8[*(v4 + 28)];
      v33 = UUID.uuidString.getter();
      v35 = v34;
      sub_1002FE134(v8, type metadata accessor for InheritanceHealthRecord);
      v36 = sub_10021145C(v33, v35, &v38);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Successfully saved %s %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v8, type metadata accessor for InheritanceHealthRecord);
    }

    sub_100008D3C(v14, &unk_1003E10C0, &qword_100346A70);
  }
}

void sub_1002EE70C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BenefactorInfoRecord();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v11 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v37 - v13);
  sub_100012D04(a1, &v37 - v13, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA58);
    sub_1002FDED4(a2, v10, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = v21;
      *v19 = 136315394;
      v22 = &v10[*(v4 + 28)];
      v23 = UUID.uuidString.getter();
      v25 = v24;
      sub_1002FE134(v10, type metadata accessor for BenefactorInfoRecord);
      v26 = sub_10021145C(v23, v25, &v38);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2112;
      v27 = _convertErrorToNSError(_:)();
      *(v19 + 14) = v27;
      *v20 = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to save record %s with error: %@", v19, 0x16u);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v21);
    }

    else
    {

      sub_1002FE134(v10, type metadata accessor for BenefactorInfoRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA58);
    sub_1002FDED4(a2, v8, type metadata accessor for BenefactorInfoRecord);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, &v38);
      *(v31 + 12) = 2080;
      v32 = &v8[*(v4 + 28)];
      v33 = UUID.uuidString.getter();
      v35 = v34;
      sub_1002FE134(v8, type metadata accessor for BenefactorInfoRecord);
      v36 = sub_10021145C(v33, v35, &v38);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Successfully saved %s %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v8, type metadata accessor for BenefactorInfoRecord);
    }

    sub_100008D3C(v14, &unk_1003E1DD0, &qword_1003444D0);
  }
}

void sub_1002EEC14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeneficiaryManifestRecord();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v11 = sub_100005814(&qword_1003E0E70, &unk_10034A420);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v37 - v13);
  sub_100012D04(a1, &v37 - v13, &qword_1003E0E70, &unk_10034A420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA58);
    sub_1002FDED4(a2, v10, type metadata accessor for BeneficiaryManifestRecord);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = v21;
      *v19 = 136315394;
      v22 = &v10[*(v4 + 24)];
      v23 = UUID.uuidString.getter();
      v25 = v24;
      sub_1002FE134(v10, type metadata accessor for BeneficiaryManifestRecord);
      v26 = sub_10021145C(v23, v25, &v38);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2112;
      v27 = _convertErrorToNSError(_:)();
      *(v19 + 14) = v27;
      *v20 = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to save record %s with error: %@", v19, 0x16u);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v21);
    }

    else
    {

      sub_1002FE134(v10, type metadata accessor for BeneficiaryManifestRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA58);
    sub_1002FDED4(a2, v8, type metadata accessor for BeneficiaryManifestRecord);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_10021145C(0xD000000000000019, 0x8000000100334670, &v38);
      *(v31 + 12) = 2080;
      v32 = &v8[*(v4 + 24)];
      v33 = UUID.uuidString.getter();
      v35 = v34;
      sub_1002FE134(v8, type metadata accessor for BeneficiaryManifestRecord);
      v36 = sub_10021145C(v33, v35, &v38);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Successfully saved %s %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v8, type metadata accessor for BeneficiaryManifestRecord);
    }

    sub_100008D3C(v14, &qword_1003E0E70, &unk_10034A420);
  }
}

void sub_1002EF11C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeneficiaryInfoRecord();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v11 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v37 - v13);
  sub_100012D04(a1, &v37 - v13, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA58);
    sub_1002FDED4(a2, v10, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = v21;
      *v19 = 136315394;
      v22 = &v10[*(v4 + 32)];
      v23 = UUID.uuidString.getter();
      v25 = v24;
      sub_1002FE134(v10, type metadata accessor for BeneficiaryInfoRecord);
      v26 = sub_10021145C(v23, v25, &v38);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2112;
      v27 = _convertErrorToNSError(_:)();
      *(v19 + 14) = v27;
      *v20 = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to save record %s with error: %@", v19, 0x16u);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v21);
    }

    else
    {

      sub_1002FE134(v10, type metadata accessor for BeneficiaryInfoRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA58);
    sub_1002FDED4(a2, v8, type metadata accessor for BeneficiaryInfoRecord);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_10021145C(0xD000000000000015, 0x8000000100330410, &v38);
      *(v31 + 12) = 2080;
      v32 = &v8[*(v4 + 32)];
      v33 = UUID.uuidString.getter();
      v35 = v34;
      sub_1002FE134(v8, type metadata accessor for BeneficiaryInfoRecord);
      v36 = sub_10021145C(v33, v35, &v38);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Successfully saved %s %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v8, type metadata accessor for BeneficiaryInfoRecord);
    }

    sub_100008D3C(v14, &unk_1003E10A0, &unk_100344480);
  }
}

void sub_1002EF624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceInvitationRecord();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v11 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v37 - v13);
  sub_100012D04(a1, &v37 - v13, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA58);
    sub_1002FDED4(a2, v10, type metadata accessor for InheritanceInvitationRecord);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38 = v21;
      *v19 = 136315394;
      v22 = &v10[*(v4 + 36)];
      v23 = UUID.uuidString.getter();
      v25 = v24;
      sub_1002FE134(v10, type metadata accessor for InheritanceInvitationRecord);
      v26 = sub_10021145C(v23, v25, &v38);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2112;
      v27 = _convertErrorToNSError(_:)();
      *(v19 + 14) = v27;
      *v20 = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to save record %s with error: %@", v19, 0x16u);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v21);
    }

    else
    {

      sub_1002FE134(v10, type metadata accessor for InheritanceInvitationRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA58);
    sub_1002FDED4(a2, v8, type metadata accessor for InheritanceInvitationRecord);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v31 = 136315394;
      *(v31 + 4) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, &v38);
      *(v31 + 12) = 2080;
      v32 = &v8[*(v4 + 36)];
      v33 = UUID.uuidString.getter();
      v35 = v34;
      sub_1002FE134(v8, type metadata accessor for InheritanceInvitationRecord);
      v36 = sub_10021145C(v33, v35, &v38);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Successfully saved %s %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v8, type metadata accessor for InheritanceInvitationRecord);
    }

    sub_100008D3C(v14, &qword_1003E1290, &unk_1003444C0);
  }
}

void sub_1002EFB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianHealthRecord();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v35 - v13);
  sub_100012D04(a1, &v35 - v13, &qword_1003D91E8, &qword_100346AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA58);
    sub_1002FDED4(a2, v10, type metadata accessor for CustodianHealthRecord);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v19 = 136315394;
      v22 = UUID.uuidString.getter();
      v24 = v23;
      sub_1002FE134(v10, type metadata accessor for CustodianHealthRecord);
      v25 = sub_10021145C(v22, v24, &v36);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2112;
      v26 = _convertErrorToNSError(_:)();
      *(v19 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to save record %s with error: %@", v19, 0x16u);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v21);
    }

    else
    {

      sub_1002FE134(v10, type metadata accessor for CustodianHealthRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA58);
    sub_1002FDED4(a2, v8, type metadata accessor for CustodianHealthRecord);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, &v36);
      *(v30 + 12) = 2080;
      v31 = UUID.uuidString.getter();
      v33 = v32;
      sub_1002FE134(v8, type metadata accessor for CustodianHealthRecord);
      v34 = sub_10021145C(v31, v33, &v36);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully saved %s %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v8, type metadata accessor for CustodianHealthRecord);
    }

    sub_100008D3C(v14, &qword_1003D91E8, &qword_100346AC0);
  }
}

void sub_1002F0024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoveryInfoRecord();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v35 - v13);
  sub_100012D04(a1, &v35 - v13, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA58);
    sub_1002FDED4(a2, v10, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v19 = 136315394;
      v22 = UUID.uuidString.getter();
      v24 = v23;
      sub_1002FE134(v10, type metadata accessor for CustodianRecoveryInfoRecord);
      v25 = sub_10021145C(v22, v24, &v36);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2112;
      v26 = _convertErrorToNSError(_:)();
      *(v19 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to save record %s with error: %@", v19, 0x16u);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v21);
    }

    else
    {

      sub_1002FE134(v10, type metadata accessor for CustodianRecoveryInfoRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA58);
    sub_1002FDED4(a2, v8, type metadata accessor for CustodianRecoveryInfoRecord);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, &v36);
      *(v30 + 12) = 2080;
      v31 = UUID.uuidString.getter();
      v33 = v32;
      sub_1002FE134(v8, type metadata accessor for CustodianRecoveryInfoRecord);
      v34 = sub_10021145C(v31, v33, &v36);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully saved %s %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v8, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    sub_100008D3C(v14, &unk_1003DB610, &unk_10033FA90);
  }
}

void sub_1002F051C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecord();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v35 - v13);
  sub_100012D04(a1, &v35 - v13, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA58);
    sub_1002FDED4(a2, v10, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v19 = 136315394;
      v22 = UUID.uuidString.getter();
      v24 = v23;
      sub_1002FE134(v10, type metadata accessor for CustodianRecord);
      v25 = sub_10021145C(v22, v24, &v36);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2112;
      v26 = _convertErrorToNSError(_:)();
      *(v19 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to save record %s with error: %@", v19, 0x16u);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v21);
    }

    else
    {

      sub_1002FE134(v10, type metadata accessor for CustodianRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA58);
    sub_1002FDED4(a2, v8, type metadata accessor for CustodianRecord);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, &v36);
      *(v30 + 12) = 2080;
      v31 = UUID.uuidString.getter();
      v33 = v32;
      sub_1002FE134(v8, type metadata accessor for CustodianRecord);
      v34 = sub_10021145C(v31, v33, &v36);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully saved %s %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v8, type metadata accessor for CustodianRecord);
    }

    sub_100008D3C(v14, &unk_1003DA200, &unk_10033FA80);
  }
}

void sub_1002F0A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianshipInfoRecord();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v35 - v13);
  sub_100012D04(a1, &v35 - v13, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA58);
    sub_1002FDED4(a2, v10, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v19 = 136315394;
      v22 = UUID.uuidString.getter();
      v24 = v23;
      sub_1002FE134(v10, type metadata accessor for CustodianshipInfoRecord);
      v25 = sub_10021145C(v22, v24, &v36);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2112;
      v26 = _convertErrorToNSError(_:)();
      *(v19 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to save record %s with error: %@", v19, 0x16u);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v21);
    }

    else
    {

      sub_1002FE134(v10, type metadata accessor for CustodianshipInfoRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA58);
    sub_1002FDED4(a2, v8, type metadata accessor for CustodianshipInfoRecord);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, &v36);
      *(v30 + 12) = 2080;
      v31 = UUID.uuidString.getter();
      v33 = v32;
      sub_1002FE134(v8, type metadata accessor for CustodianshipInfoRecord);
      v34 = sub_10021145C(v31, v33, &v36);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully saved %s %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v8, type metadata accessor for CustodianshipInfoRecord);
    }

    sub_100008D3C(v14, &unk_1003DA0E0, &unk_10033F1D0);
  }
}

void sub_1002F0F14(uint64_t a1, char a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a2)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA58);

    v10 = a5;
    sub_10020E61C(a1, 1);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v12 = 136315650;
      *(v12 + 4) = sub_10021145C(a3, a4, &v30);
      *(v12 + 12) = 2080;
      v14 = [v10 recordName];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_10021145C(v15, v17, &v30);

      *(v12 + 14) = v18;
      *(v12 + 22) = 2112;
      v19 = _convertErrorToNSError(_:)();
      *(v12 + 24) = v19;
      *v13 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Failed to delete record %s %s with error: %@", v12, 0x20u);
      sub_100008D3C(v13, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

LABEL_10:

      return;
    }
  }

  else
  {
    if (qword_1003D7F30 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA70);

    v21 = a5;
    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v23 = 136315394;
      *(v23 + 4) = sub_10021145C(a3, a4, &v30);
      *(v23 + 12) = 2080;
      v24 = [v21 recordName];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = sub_10021145C(v25, v27, &v30);

      *(v23 + 14) = v28;
      _os_log_impl(&_mh_execute_header, oslog, v22, "Successfully deleted record  %s %s", v23, 0x16u);
      swift_arrayDestroy();

      goto LABEL_10;
    }
  }
}