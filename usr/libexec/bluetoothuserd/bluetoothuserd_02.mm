void sub_10002FC58(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v68 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v68 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v68 - v16;
  __chkstk_darwin(v15);
  v19 = &v68 - v18;
  v20 = [a1 recordZoneID];
  if (v20)
  {
    v21 = v20;
    v71 = v1;
    v72 = v17;
    v73 = v14;
    v75 = [a1 databaseScope];
    v22 = sub_10003915C();
    v74 = v4[2];
    v74(v19, v22, v3);
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v69 = v11;
      v27 = v26;
      v28 = swift_slowAlloc();
      v70 = v21;
      v29 = v4;
      v30 = v3;
      v31 = v28;
      *v27 = 138412290;
      *(v27 + 4) = v23;
      *v28 = v23;
      v32 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "RecordZoneNotification: %@", v27, 0xCu);
      sub_100006CAC(v31, &qword_100093F70, &qword_1000730D0);
      v3 = v30;
      v4 = v29;
      v21 = v70;

      v11 = v69;
    }

    v35 = v4[1];
    v33 = (v4 + 1);
    v34 = v35;
    v35(v19, v3);
    if (v75 == 1)
    {
      v53 = v73;
      v74(v73, v22, v3);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v47 = v53;
        v50 = v3;
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "Nothing public";
        goto LABEL_15;
      }

      v54 = v53;
    }

    else
    {
      if (v75 != 3)
      {
        if (v75 == 2)
        {
          v36 = type metadata accessor for Transaction();
          __chkstk_darwin(v36);
          *(&v68 - 2) = v71;
          *(&v68 - 1) = v21;
          static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.recordZoneNotification", 46, 2, sub_100035DDC);

          return;
        }

        v74(v11, v22, v3);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v74 = v33;
          v59 = v58;
          v60 = swift_slowAlloc();
          v76 = v60;
          *v59 = 136315138;
          v61 = CKDatabaseScopeString();
          v75 = v3;
          v62 = v61;
          v63 = v11;
          v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = v65;

          v67 = sub_1000034B8(v64, v66, &v76);

          *(v59 + 4) = v67;
          _os_log_impl(&_mh_execute_header, v56, v57, "Unknown databaseScope: %s", v59, 0xCu);
          sub_1000036EC(v60);

          v34(v63, v75);
          return;
        }

        v54 = v11;
        goto LABEL_21;
      }

      v46 = v72;
      v74(v72, v22, v3);
      v47 = v46;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = v3;
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "Nothing shared";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v48, v49, v52, v51, 2u);

        v54 = v47;
        v55 = v50;
LABEL_22:
        v34(v54, v55);
        return;
      }

      v54 = v47;
    }

LABEL_21:
    v55 = v3;
    goto LABEL_22;
  }

  v37 = sub_10003915C();
  (v4[2])(v8, v37, v3);
  v38 = a1;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = v3;
    v42 = swift_slowAlloc();
    v43 = v4;
    v44 = swift_slowAlloc();
    *v42 = 138412290;
    *(v42 + 4) = v38;
    *v44 = v38;
    v45 = v38;
    _os_log_impl(&_mh_execute_header, v39, v40, "No recordZoneID in %@", v42, 0xCu);
    sub_100006CAC(v44, &qword_100093F70, &qword_1000730D0);
    v4 = v43;

    v3 = v41;
  }

  (v4[1])(v8, v3);
}

uint64_t sub_10003032C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 databaseScope];
  (*(*v1 + 264))(v37);
  v9 = v38;
  v41[0] = v38;
  v40 = v37[0];

  sub_100034994(&v40);
  v39 = v37[1];
  sub_100034994(&v39);
  result = sub_100006CAC(v41, &qword_100094180, &qword_100074290);
  v11 = *(v9 + 16);
  if (!v11)
  {
    sub_100006CAC(v41, &qword_100094180, &qword_100074290);
LABEL_13:
    v22 = sub_10003915C();
    (*(v4 + 16))(v7, v22, v3);
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Only handle cloud pairing recordZoneNotification, Dropping DatabaseNotification: %@", v26, 0xCu);
      sub_100006CAC(v27, &qword_100093F70, &qword_1000730D0);
    }

    return (*(v4 + 8))(v7, v3);
  }

  v33 = v8;
  v34 = v1;
  v29 = a1;
  v30 = v7;
  v31 = v4;
  v32 = v3;
  if (!*(v9 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v12 = 0;
  v13 = 0;
  v14 = v11 - 1;
  v15 = (v9 + 40);
  while (v13)
  {
    if (v14 == v12)
    {
      sub_100006CAC(v41, &qword_100094180, &qword_100074290);
      goto LABEL_12;
    }

    v13 = 1;
LABEL_5:
    ++v12;
    v15 += 2;
    if (v12 >= *(v9 + 16))
    {
      goto LABEL_16;
    }
  }

  v17 = *(v15 - 1);
  v16 = *v15;
  v35 = 0;
  v36 = 0xE000000000000000;

  _StringGuts.grow(_:)(38);

  v35 = 0xD000000000000024;
  v36 = 0x8000000100079F20;
  v18._countAndFlagsBits = v17;
  v18._object = v16;
  String.append(_:)(v18);
  sub_100015AAC(v35, v36, 2, &type metadata for Bool, &v35);

  v19 = v35;
  v13 = v35 == 2;
  if (v14 != v12)
  {
    goto LABEL_5;
  }

  sub_100006CAC(v41, &qword_100094180, &qword_100074290);
  v4 = v31;
  v3 = v32;
  a1 = v29;
  v7 = v30;
  if (v19 != 2)
  {
    goto LABEL_13;
  }

LABEL_12:
  v20 = type metadata accessor for Transaction();
  __chkstk_darwin(v20);
  v21 = v33;
  *(&v29 - 2) = v34;
  *(&v29 - 1) = v21;
  return static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.databaseNotification", 44, 2, sub_100035F24);
}

void sub_100030750(uint64_t a1, char a2, uint64_t a3)
{
  v41 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v37[-v12];
  __chkstk_darwin(v11);
  v15 = &v37[-v14];
  v16 = sub_10003915C();
  v43 = v6;
  v44 = v16;
  v45 = *(v6 + 16);
  v45(v15);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v42 = a3;

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v19 = 138412290;
    v40 = v17;
    v20 = sub_100019AA4();
    v21 = [v20 privateCloudDatabase];
    v38 = v18;
    v22 = v21;

    v23 = v19;
    *(v19 + 4) = v22;
    v24 = v39;
    v17 = v40;
    *v39 = v22;
    _os_log_impl(&_mh_execute_header, v17, v38, "database: %@ updateCache completed.", v23, 0xCu);
    sub_100006CAC(v24, &qword_100093F70, &qword_1000730D0);
  }

  v25 = *(v43 + 8);
  v25(v15, v5);
  if (a2)
  {
    (v45)(v13, v44, v5);
    v26 = v41;
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    sub_100036B6C(v26, 1);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v13;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "APS fetchDatabaseChanges error: %@", v30, 0xCu);
      sub_100006CAC(v31, &qword_100093F70, &qword_1000730D0);

      v13 = v29;
    }

    v25(v13, v5);
    v47 = v26;
    swift_errorRetain();
    sub_10000A45C(&qword_100093748, &qword_100073628);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v33 = v46;
      v47 = v46;
      sub_10000229C(&qword_100093750, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if (v46 == 4 || (v47 = v33, _BridgedStoredNSError.code.getter(), v46 == 3))
      {
        sub_100026364(150.0);
      }
    }
  }

  else
  {
    (v45)(v10, v44, v5);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "APS fetchDatabaseChanges completed.", v36, 2u);
    }

    v25(v10, v5);
  }
}

void sub_100030C44(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v42 = a1;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v38[-v13];
  __chkstk_darwin(v12);
  v16 = &v38[-v15];
  Transaction.capture()();
  v17 = sub_10003915C();
  v44 = v7;
  v45 = v17;
  v46 = *(v7 + 16);
  v46(v16);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v43 = a4;

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v20 = 138412290;
    v41 = v18;
    v21 = sub_100019AA4();
    v22 = [v21 privateCloudDatabase];
    v39 = v19;
    v23 = v22;

    v24 = v20;
    *(v20 + 4) = v23;
    v25 = v40;
    v18 = v41;
    *v40 = v23;
    _os_log_impl(&_mh_execute_header, v18, v39, "database: %@ zone updateCache completed.", v24, 0xCu);
    sub_100006CAC(v25, &qword_100093F70, &qword_1000730D0);
  }

  v26 = *(v44 + 8);
  v26(v16, v6);
  if (a2)
  {
    (v46)(v14, v45, v6);
    v27 = v42;
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    sub_100036B6C(v27, 1);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v14;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v28, v29, "APS fetchZoneChanges error: %@", v31, 0xCu);
      sub_100006CAC(v32, &qword_100093F70, &qword_1000730D0);

      v14 = v30;
    }

    v26(v14, v6);
    v48 = v27;
    swift_errorRetain();
    sub_10000A45C(&qword_100093748, &qword_100073628);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v34 = v47;
      v48 = v47;
      sub_10000229C(&qword_100093750, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if (v47 == 4 || (v48 = v34, _BridgedStoredNSError.code.getter(), v47 == 3))
      {
        sub_100026364(150.0);
      }
    }
  }

  else
  {
    (v46)(v11, v45, v6);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "APS fetchZoneChanges completed.", v37, 2u);
    }

    v26(v11, v6);
  }
}

uint64_t sub_100031164()
{
  v1 = *(v0 + 72);
  sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_1000311DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v22[-v9 - 8];
  sub_10000FA7C(a1, v22);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = sub_10000A45C(&qword_1000937B8, &qword_100073648);
  Subscription.init(subscriber:unsubscribeBlock:)(v22, sub_100037DB8, v11, v12, a3);
  sub_100006C44(a3, v10, &qword_100093F40, &qword_1000730E0);
  v13 = (*(*a2 + 304))(v22);
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_10003201C(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_10003201C(v18 > 1, v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  sub_100035FF0(v10, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, &qword_100093F40, &qword_1000730E0);
  return v13(v22, 0);
}

uint64_t sub_100031420(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = v20 - v14;
  v20[1] = *(v1 + 72);
  sub_100006C44(a1, v20 - v14, &qword_100093F40, &qword_1000730E0);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  sub_100035FF0(v15, v17 + v16, &qword_100093F40, &qword_1000730E0);
  aBlock[4] = sub_100036058;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008A308;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v6, v3);
  (*(v21 + 8))(v10, v22);
}

void (*sub_100031844(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 304))();
  return sub_10000E7CC;
}

uint64_t sub_1000318E0()
{
  v1 = *(*v0 + 72);
  sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_100031958(uint64_t a1)
{
  v2 = sub_10000229C(&qword_100093850, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000319C4(uint64_t a1)
{
  v2 = sub_10000229C(&qword_100093850, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100031A30(uint64_t a1)
{
  v2 = sub_10000229C(&qword_100093750, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100031AB4(uint64_t a1)
{
  v2 = sub_10000229C(&qword_100093750, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100031B20(uint64_t a1)
{
  v2 = sub_10000229C(&qword_100093750, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100031B8C(void *a1, uint64_t a2)
{
  v4 = sub_10000229C(&qword_100093750, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100031C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000229C(&qword_100093750, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100031CBC()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100031D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000229C(&qword_100093750, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

void *sub_100031DA0(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000A45C(&qword_1000937D8, &qword_100073650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A45C(&qword_1000937E0, &qword_100073658);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100031EE8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000A45C(&unk_1000936E0, &qword_1000735E8);
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
    sub_10000A45C(&qword_1000936D8, &qword_1000735E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10003201C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_1000937A8, &qword_100073640);
  v10 = *(sub_10000A45C(&qword_100093F40, &qword_1000730E0) - 8);
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
  v15 = *(sub_10000A45C(&qword_100093F40, &qword_1000730E0) - 8);
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

void *sub_10003220C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000A45C(&qword_100093740, &qword_100073620);
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

size_t sub_100032294(size_t a1, int64_t a2, char a3)
{
  result = sub_1000322B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000322B4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_1000937A8, &qword_100073640);
  v10 = *(sub_10000A45C(&qword_100093F40, &qword_1000730E0) - 8);
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
  v15 = *(sub_10000A45C(&qword_100093F40, &qword_1000730E0) - 8);
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

uint64_t sub_1000324A4(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = *v4;
  v9 = a2();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v9;
  v12 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v7;
  v19 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000333D0(a3, a4);
    v14 = v19;
  }

  v15 = (*(v14 + 56) + 16 * v11);
  v16 = *v15;
  v17 = v15[1];
  sub_100032DE8(v11, v14);
  *v7 = v14;
  return v16;
}

Swift::Int sub_100032560(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000A45C(&qword_1000937E8, &qword_100073660);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100004890(0, &qword_1000937C8, CKFetchRecordZoneChangesConfiguration_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100032914(v12 + 1, 1);
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

unint64_t sub_1000327AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000330EC(a1, a2, v6);
}

unint64_t sub_100032824(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000331A4(a1, v4, &qword_100093758, CKRecordZoneID_ptr);
}

unint64_t sub_100032874(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000331A4(a1, v4, &qword_100093708, CKRecord_ptr);
}

unint64_t sub_1000328C4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_1000331A4(a1, v4, &qword_1000936F0, CKRecordID_ptr);
}

uint64_t sub_100032914(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000A45C(&qword_1000937E8, &qword_100073660);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100032B7C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10000A45C(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v33 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v34 = *(*(v7 + 56) + 16 * v22);
      if ((a2 & 1) == 0)
      {
        v24 = v23;
      }

      result = NSObject._rawHashValue(seed:)(*(v10 + 40));
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v17 + 8 * v27);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 16 * v18) = v34;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (a2)
    {
      v32 = 1 << *(v7 + 32);
      if (v32 >= 64)
      {
        bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v32;
      }

      *(v7 + 16) = 0;
    }

    v5 = v33;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

void sub_100032DE8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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
}

uint64_t sub_100032F74(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100032824(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100032914(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_100032824(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100033270();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return _objc_retain_x1();
}

unint64_t sub_1000330EC(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000331A4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100004890(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

id sub_100033270()
{
  v1 = v0;
  sub_10000A45C(&qword_1000937E8, &qword_100073660);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_1000333D0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000A45C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 16 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 16 * v19) = v21;
        v22 = v20;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_100033538(uint64_t a1)
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

uint64_t sub_1000335D8(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_1000335D8(v6, a2, a3);
  }

  return result;
}

unint64_t sub_10003367C(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  result = sub_100032874(a3);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_100032B7C(v17, isUniquelyReferenced_nonNull_native, &qword_100093730, &qword_100073610);
    result = sub_100032874(a3);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    sub_100004890(0, &qword_100093708, CKRecord_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = result;
    sub_1000333D0(&qword_100093730, &qword_100073610);
    result = v21;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v19 = (v11[7] + 16 * result);
    result = *v19;
    v20 = v19[1];
    *v19 = a1;
    v19[1] = a2;
LABEL_12:
    *v5 = v11;
    return result;
  }

LABEL_10:
  v11[(result >> 6) + 8] |= 1 << result;
  *(v11[6] + 8 * result) = a3;
  v22 = (v11[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  v23 = v11[2];
  v16 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v16)
  {
    v11[2] = v24;
    v25 = a3;
    result = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_100033808(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  result = sub_1000328C4(a3);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_100032B7C(v17, isUniquelyReferenced_nonNull_native, &qword_100093738, &qword_100073618);
    result = sub_1000328C4(a3);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    sub_100004890(0, &qword_1000936F0, CKRecordID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = result;
    sub_1000333D0(&qword_100093738, &qword_100073618);
    result = v21;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v19 = (v11[7] + 16 * result);
    result = *v19;
    v20 = v19[1];
    *v19 = a1;
    v19[1] = a2;
LABEL_12:
    *v5 = v11;
    return result;
  }

LABEL_10:
  v11[(result >> 6) + 8] |= 1 << result;
  *(v11[6] + 8 * result) = a3;
  v22 = (v11[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  v23 = v11[2];
  v16 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v16)
  {
    v11[2] = v24;
    v25 = a3;
    result = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_100033994(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100033AE8(unint64_t a1)
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

uint64_t sub_100033B4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010007A2C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x734449656E6F7ALL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100033C74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000A45C(&qword_100093820, &qword_100073678);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1000078C8(a1, a1[3]);
  sub_100019688();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000036EC(a1);
  }

  v24 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v20 = v11;
  v23 = 1;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v14;
  sub_10000A45C(&qword_100094180, &qword_100074290);
  v22 = 2;
  sub_1000385B4(&qword_100093828);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v21;
  result = sub_1000036EC(a1);
  *a2 = v20;
  a2[1] = v13;
  v17 = v19;
  a2[2] = v18;
  a2[3] = v17;
  a2[4] = v15;
  return result;
}

uint64_t sub_100033F0C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(*v1 + 544))();
  *a1 = result;
  return result;
}

uint64_t sub_100033F90(__int128 *a1)
{
  v50 = a1;
  v1 = type metadata accessor for URL.DirectoryHint();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  __chkstk_darwin(v1);
  v53 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  v6 = __chkstk_darwin(v4);
  v51 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = v47 - v8;
  v9 = type metadata accessor for Logger();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  __chkstk_darwin(v9);
  v61 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v60 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v16 = *(v60 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v60);
  v19 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004890(0, &qword_100092CC0, OS_dispatch_queue_ptr);
  v47[4] = "): containerIdentifier: ";
  v49 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v58 = *(v16 + 104);
  v59 = v16 + 104;
  v58(v19);
  static DispatchQoS.unspecified.getter();
  *&v68[0] = _swiftEmptyArrayStorage;
  v47[3] = sub_10000229C(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  v20 = sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_10000FA34(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
  v47[1] = v20;
  v47[2] = v12;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22 = v48;
  *(v48 + 56) = v21;
  (v58)(v19, v49, v60);
  static DispatchQoS.unspecified.getter();
  *&v68[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v22 + 64) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DispatchQoS.unspecified.getter();
  *&v68[0] = _swiftEmptyArrayStorage;
  v23 = v50;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v58)(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v60);
  *(v22 + 72) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v22 + 80) = _swiftEmptyArrayStorage;
  v24 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_systemNotificationSubscription;
  v25 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  (*(*(v25 - 8) + 56))(v22 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_applePushNotificationSubscription;
  v27 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  (*(*(v27 - 8) + 56))(v22 + v26, 1, 1, v27);
  *(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___container) = 0;
  *(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___cloudZoneSetupGroup) = 0;
  *(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___cloudZoneDeleteGroup) = 0;
  *(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___susbscriptionSetupGroup) = 0;
  *(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___fetchDatabaseGroup) = 0;
  *(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___cloudUserActionExplicitGroup) = 0;
  *(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___deferredUpdatesGroup) = 0;
  *(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_accountAvailable) = 0;
  *(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_currentAccountStatus) = 0;
  *(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_initialUploadDone) = 0;
  *(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable) = 0;
  *(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords) = &_swiftEmptyDictionarySingleton;
  *(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords) = &_swiftEmptyDictionarySingleton;
  *(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_retryFetchActivity) = 0;
  *(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer) = 0;
  v28 = sub_1000391F4();
  (*(v62 + 16))(v61, v28, v63);
  v29 = *v23;
  v67 = v23[1];
  v68[0] = v29;
  v66 = *(v23 + 4);
  sub_100038504(v68, &v65);
  sub_100038504(&v67, &v65);
  sub_100006C44(&v66, &v65, &qword_100094180, &qword_100074290);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  sub_100034994(v68);
  sub_100034994(&v67);
  sub_100006CAC(&v66, &qword_100094180, &qword_100074290);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v64 = v33;
    *v32 = 136315138;
    sub_100038504(v68, &v65);
    sub_100038504(&v67, &v65);
    sub_100006C44(&v66, &v65, &qword_100094180, &qword_100074290);
    v34 = sub_100019268();
    v36 = v35;
    sub_100034994(v68);
    sub_100034994(&v67);
    sub_100006CAC(&v66, &qword_100094180, &qword_100074290);
    v37 = sub_1000034B8(v34, v36, &v64);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "Initializing CloudStorageCoordinator with %s", v32, 0xCu);
    sub_1000036EC(v33);
  }

  (*(v62 + 8))(v61, v63);
  v38 = v23[1];
  *(v22 + 16) = *v23;
  *(v22 + 32) = v38;
  *(v22 + 48) = *(v23 + 4);
  type metadata accessor for UserFileManager();
  sub_100038504(v68, &v65);
  sub_100038504(&v67, &v65);
  sub_100006C44(&v66, &v65, &qword_100094180, &qword_100074290);
  v39 = v51;
  sub_100041768(v51);
  v65 = v68[0];
  v41 = v56;
  v40 = v57;
  v42 = v53;
  (*(v56 + 104))(v53, enum case for URL.DirectoryHint.isDirectory(_:), v57);
  sub_100038560();
  v43 = v52;
  URL.appending<A>(path:directoryHint:)();
  (*(v41 + 8))(v42, v40);
  v45 = v54;
  v44 = v55;
  (*(v54 + 8))(v39, v55);
  (*(v45 + 32))(v22 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_tokenDirectory, v43, v44);
  return v22;
}

uint64_t type metadata accessor for CloudStorageCoordinator()
{
  result = qword_100095C70;
  if (!qword_100095C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100034A48()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 fileExistsAtPath:v3];

  result = 0;
  if (v4)
  {
    v6 = Data.init(contentsOf:options:)();
    v8 = v7;
    sub_100004890(0, &qword_1000937F8, NSKeyedUnarchiver_ptr);
    sub_10000A45C(&qword_100093800, &unk_100073668);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100072BE0;
    *(v9 + 32) = sub_100004890(0, &unk_100093808, CKServerChangeToken_ptr);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
    sub_1000066CC(v6, v8);

    if (v12)
    {
      if (swift_dynamicCast())
      {
        return v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_100006CAC(v11, &qword_100092CB8, &qword_100072C40);
      return 0;
    }
  }

  return result;
}

unint64_t sub_100034DB0()
{
  result = qword_1000931E0;
  if (!qword_1000931E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000931E0);
  }

  return result;
}

uint64_t sub_100034E04(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v4 + 56);
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_10003826C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008AD20;
  v18 = _Block_copy(aBlock);

  v19 = a1;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

id sub_1000350F0()
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

uint64_t sub_1000351D8(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v108 = *(v4 - 8);
  v5 = *(v108 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = (&v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v6);
  v11 = &v98 - v10;
  __chkstk_darwin(v9);
  v102 = &v98 - v12;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v107 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v98 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v98 - v22;
  __chkstk_darwin(v21);
  v25 = &v98 - v24;
  v106 = a1;
  if (a1)
  {
    v104 = v4;
    v26 = objc_opt_self();
    v27 = a1;
    v28 = [v26 defaultManager];
    v103 = a2;
    URL.deletingLastPathComponent()();
    URL._bridgeToObjectiveC()(v29);
    v31 = v30;
    v105 = v14;
    v32 = *(v14 + 8);
    v32(v25, v13);
    v109 = 0;
    v33 = [v28 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:&v109];

    v34 = v109;
    if (v33)
    {
      v35 = objc_opt_self();
      v109 = 0;
      v36 = v34;
      v37 = [v35 archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v109];
      v38 = v109;
      v39 = v108;
      if (v37)
      {
        v100 = v23;
        v101 = v32;
        v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v43 = v103;
        Data.write(to:excludeFromBackup:options:)(v103, 1);
        v99 = v40;
        v107 = v42;
        v80 = sub_10003915C();
        v81 = v102;
        v82 = v104;
        (*(v39 + 16))(v102, v80, v104);
        v83 = v100;
        v84 = v13;
        (v105[2])(v100, v43, v13);
        v85 = v27;
        v86 = Logger.logObject.getter();
        v87 = v39;
        v88 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v86, v88))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v109 = v105;
          *v90 = 136315394;
          sub_10000229C(&qword_1000937F0, &type metadata accessor for URL);
          v92 = dispatch thunk of CustomStringConvertible.description.getter();
          v93 = v84;
          v95 = v94;
          v101(v83, v93);
          v96 = sub_1000034B8(v92, v95, &v109);

          *(v90 + 4) = v96;
          *(v90 + 12) = 2112;
          *(v90 + 14) = v85;
          *v91 = v106;
          v97 = v85;
          _os_log_impl(&_mh_execute_header, v86, v88, "Updated change token, URL, %s, token, %@", v90, 0x16u);
          sub_100006CAC(v91, &qword_100093F70, &qword_1000730D0);

          sub_1000036EC(v105);

          sub_1000066CC(v99, v107);

          return (*(v87 + 8))(v102, v104);
        }

        else
        {
          sub_1000066CC(v99, v107);

          v101(v83, v84);
          return (*(v87 + 8))(v81, v82);
        }
      }

      v60 = v38;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v45 = v27;
      v46 = v104;
    }

    else
    {
      v44 = v109;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v45 = v27;
      v46 = v104;
      v39 = v108;
    }

    v61 = v105;
    v62 = v103;
    v63 = sub_10003915C();
    (*(v39 + 16))(v8, v63, v46);
    v64 = v107;
    (v61[2])(v107, v62, v13);
    v65 = v45;
    swift_errorRetain();
    v66 = v8;
    v67 = v61;
    v105 = v66;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v70 = 136315650;
      if (v106)
      {
        v71 = 0x657461647075;
      }

      else
      {
        v71 = 0x6574656C6564;
      }

      v72 = sub_1000034B8(v71, 0xE600000000000000, &v109);
      LODWORD(v106) = v69;
      v73 = v72;

      *(v70 + 4) = v73;
      *(v70 + 12) = 2080;
      sub_10000229C(&qword_1000937F0, &type metadata accessor for URL);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      (v67[1])(v64, v13);
      v77 = sub_1000034B8(v74, v76, &v109);

      *(v70 + 14) = v77;
      *(v70 + 22) = 2112;
      swift_errorRetain();
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 24) = v78;
      v79 = v103;
      *v103 = v78;
      _os_log_impl(&_mh_execute_header, v68, v106, "Unable to %s change token, URL, %s, error, %@ ", v70, 0x20u);
      sub_100006CAC(v79, &qword_100093F70, &qword_1000730D0);

      swift_arrayDestroy();

      return (*(v108 + 8))(v105, v46);
    }

    else
    {

      (v61[1])(v64, v13);
      return (*(v39 + 8))(v105, v46);
    }
  }

  else
  {
    sub_1000350F0();
    v47 = sub_10003915C();
    v48 = v108;
    (*(v108 + 16))(v11, v47, v4);
    (*(v14 + 16))(v20, a2, v13);
    v49 = v14;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v104 = v4;
      v107 = v11;
      v53 = v52;
      v54 = swift_slowAlloc();
      v109 = v54;
      *v53 = 136315138;
      sub_10000229C(&qword_1000937F0, &type metadata accessor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      (*(v49 + 8))(v20, v13);
      v58 = sub_1000034B8(v55, v57, &v109);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "Deleted change token, URL, %s", v53, 0xCu);
      sub_1000036EC(v54);

      return (*(v48 + 8))(v107, v104);
    }

    else
    {

      (*(v49 + 8))(v20, v13);
      return (*(v48 + 8))(v11, v4);
    }
  }
}

uint64_t sub_100035CE0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_100035D20(uint64_t a1, char a2)
{
  v5 = *(v2 + 32);
  v7 = *(v2 + 40);
  v6 = *(v2 + 48);
  (*(v2 + 24))(a1, a2 & 1);
  return v7(a1, a2 & 1);
}

uint64_t sub_100035D84(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

void sub_100035DDC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  v6 = sub_100019AA4();
  v7 = [v6 privateCloudDatabase];

  sub_10000A45C(&qword_100093740, &qword_100073620);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100073090;
  *(v8 + 32) = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v4;
  v10 = *(*v4 + 864);
  v11 = v5;

  v10(v7, v8, sub_100037E88, v9);
}

uint64_t sub_100035F24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Transaction.capture()();
  v3 = *(*v1 + 848);

  v3(v2, 0, sub_100037E28, v1);
}

uint64_t sub_100035FF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000A45C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100036058()
{
  v1 = *(sub_10000A45C(&qword_100093F40, &qword_1000730E0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = (*(*v2 + 288))();
  v7[2] = v3;
  v5 = sub_100022650(sub_100037D14, v7, v4);
  return (*(*v2 + 296))(v5);
}

unint64_t sub_10003616C(uint64_t a1)
{
  *(a1 + 8) = sub_10003619C();
  result = sub_1000361F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10003619C()
{
  result = qword_100093280;
  if (!qword_100093280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093280);
  }

  return result;
}

unint64_t sub_1000361F0()
{
  result = qword_100093288;
  if (!qword_100093288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093288);
  }

  return result;
}

unint64_t sub_100036248()
{
  result = qword_100093290;
  if (!qword_100093290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093290);
  }

  return result;
}

__n128 sub_10003629C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000362B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000362F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100036358()
{
  sub_1000364F4(319, &qword_1000932F0, &qword_100092E80, qword_100072CF0);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1000364F4(319, &unk_1000932F8, &qword_1000931C0, &unk_100072C70);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for URL();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000364F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000C9B0(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100036548(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003656C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000365C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10003661C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CloudStorageCoordinator.CloudStorageCoordinatorState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudStorageCoordinator.CloudStorageCoordinatorState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000367C4()
{
  result = qword_100095D80[0];
  if (!qword_100095D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100095D80);
  }

  return result;
}

unint64_t sub_10003681C()
{
  result = qword_100095F90;
  if (!qword_100095F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095F90);
  }

  return result;
}

unint64_t sub_100036874()
{
  result = qword_100095F98[0];
  if (!qword_100095F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100095F98);
  }

  return result;
}

uint64_t sub_1000368C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  type metadata accessor for LocalDispatchTimer();
  swift_beginAccess();
  v7 = *v4;
  v8 = *(v3 + 56);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v5;
  *(v10 + 33) = v6;
  v11 = v8;

  v12 = LocalDispatchTimer.__allocating_init(deadline:repeating:leeway:queue:block:)(v8, sub_100036A20, v10, v7, 0.0, 1.0);
  v13 = *(v3 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer);
  *(v3 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer) = v12;

  (*(*v12 + 152))(v14);
}

uint64_t sub_100036A68(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5[4] = j___s14bluetoothuserd11TransactionC7captureyyF;
  v5[5] = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100002410;
  v5[3] = &unk_10008A6B8;
  v3 = _Block_copy(v5);

  sub_100036B5C(j___s14bluetoothuserd11TransactionC7captureyyF);

  [v2 setCompletionBlock:v3];
  _Block_release(v3);
}

uint64_t sub_100036B5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100036B6C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100036B90(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_100036B9C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004890(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100036BEC(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v21 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v19 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 recordID];
    v7 = [v6 recordName];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [a2 recordName];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v8 == v12 && v10 == v14)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  return v3;
}

unint64_t sub_100036DA8(unint64_t *a1, void *a2)
{
  v5 = a2;
  v7 = *a1;
  result = sub_100036BEC(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = a1;
  v34 = result;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v34;
      }
    }

    else if (v10 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v34;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v12 = *(v7 + 8 * v10 + 32);
LABEL_17:
    v4 = v12;
    v13 = [v12 recordID];
    v14 = [v13 recordName];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v3 = v5;
    v18 = [v5 recordName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v15 == v19 && v17 == v21)
    {
LABEL_8:

LABEL_9:
      v5 = v3;
      goto LABEL_10;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_9;
    }

    v5 = v3;
    if (v34 != v10)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34 >= v25)
        {
          goto LABEL_53;
        }

        if (v10 >= v25)
        {
          goto LABEL_54;
        }

        v26 = *(v7 + 32 + 8 * v10);
        v23 = *(v7 + 32 + 8 * v34);
        v24 = v26;
      }

      v27 = v24;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_100033AE8(v7);
        v28 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v28) = 0;
      }

      v29 = v7 & 0xFFFFFFFFFFFFFF8;
      v30 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 0x20) = v27;

      if ((v7 & 0x8000000000000000) != 0 || v28)
      {
        v7 = sub_100033AE8(v7);
        v29 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v34;
        }
      }

      else if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v10 >= *(v29 + 16))
      {
        goto LABEL_51;
      }

      v31 = v29 + 8 * v10;
      v32 = *(v31 + 32);
      *(v31 + 32) = v23;

      *v33 = v7;
    }

    v11 = __OFADD__(v34++, 1);
    if (v11)
    {
      goto LABEL_50;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1000370D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_100004890(0, &qword_100093708, CKRecord_ptr);
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

uint64_t sub_1000371E8(uint64_t a1, uint64_t a2)
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

  sub_100033538(result);

  return sub_1000370D8(v4, v2, 0);
}

uint64_t sub_1000372C0(void *a1, unint64_t *a2)
{
  v54 = a1;
  v3 = type metadata accessor for Logger();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v50 = a2;
  v51 = v3;
  v7 = *a2;
  v8 = *a2 >> 62;
  v48 = v6;
  if (v8)
  {
LABEL_26:
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {
  }

  v10 = 0;
  v52 = v7 & 0xFFFFFFFFFFFFFF8;
  v53 = v7 & 0xC000000000000001;
  while (1)
  {
    if (v53)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v52 + 16))
      {
        goto LABEL_25;
      }

      v11 = *(v7 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v14 = [v11 recordID];
    v15 = [v14 recordName];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v54 recordName];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (v16 == v20 && v18 == v22)
    {
      break;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_19;
    }

    ++v10;
    if (v13 == v9)
    {
    }
  }

LABEL_19:

  v26 = v50;
  swift_beginAccess();
  v27 = v54;
  v28 = sub_100036DA8(v26, v27);
  v29 = v51;
  v30 = v28;

  v31 = *v26;
  if (*v26 >> 62)
  {
    if (v31 < 0)
    {
      v47 = *v26;
    }

    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32 >= v30)
    {
      goto LABEL_21;
    }

LABEL_30:
    __break(1u);
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v32 < v30)
  {
    goto LABEL_30;
  }

LABEL_21:
  sub_1000371E8(v30, v32);
  swift_endAccess();
  v33 = sub_10003915C();
  v35 = v48;
  v34 = v49;
  (*(v49 + 16))(v48, v33, v29);
  v36 = v12;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v55 = v41;
    *v39 = 136315394;
    v42 = CKRecord.recordType.getter();
    v43 = v34;
    v45 = sub_1000034B8(v42, v44, &v55);

    *(v39 + 4) = v45;
    *(v39 + 12) = 2112;
    *(v39 + 14) = v36;
    *v40 = v36;
    v46 = v36;
    _os_log_impl(&_mh_execute_header, v37, v38, "Don't send this record as part of update list as it is in queue for deletion: %s, %@", v39, 0x16u);
    sub_100006CAC(v40, &qword_100093F70, &qword_1000730D0);

    sub_1000036EC(v41);

    return (*(v43 + 8))(v35, v51);
  }

  else
  {

    return (*(v34 + 8))(v35, v29);
  }
}

unint64_t sub_10003774C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_10000A45C(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v15 = *i;
      v9 = *(i - 1);

      result = a4(v9);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 16 * result) = v15;
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      if (!--v4)
      {

        return v7;
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

id sub_10003785C(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100037898(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(*v2 + 848);

  v6(2, 0, sub_100037964, v5);
}

uint64_t sub_1000379CC(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

void sub_100037AD8(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  v6 = sub_100019AA4();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v3;
  v7[4] = v4;
  v9[4] = sub_100037BE8;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10001D1B4;
  v9[3] = &unk_10008AA50;
  v8 = _Block_copy(v9);

  [v6 accountInfoWithCompletionHandler:v8];
  _Block_release(v8);
}

void sub_100037BE8(void *a1, void *a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[2];
  Transaction.capture()();
  if (a2)
  {
    swift_errorRetain();
    v5(a2, 1);
  }

  else if (a1)
  {
    v8 = a1;
    v5(a1, 0);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

BOOL sub_100037D14()
{
  v1 = *(v0 + 16);
  sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  sub_10000FA34(&qword_1000937B0, &qword_100093F40, &qword_1000730E0);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100037DB8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100031420(a1);
  }

  return result;
}

uint64_t sub_100037E34(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));
  v4 = *(v2 + 24);

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100037E94(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_100037ECC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100037F14(uint64_t a1)
{
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  (*(v1 + 24))();
  return v5(a1);
}

uint64_t sub_100037F60(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_100037F8C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 16);
  Transaction.capture()();
  if (*(v1 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_accountAvailable) == 1)
  {
    return (*(*v1 + 904))(v4, v5, v2, v3);
  }

  sub_100034DB0();
  v8 = swift_allocError();
  *v9 = 0;
  v2(v8, 1);
}

uint64_t sub_100038094(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 24);

  a1(*(v2 + 32));
  a1(*(v2 + 40));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100038170(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return swift_errorRetain();
  }

  else
  {
    v9 = a1;

    return sub_10000FB4C(a2, a3);
  }
}

uint64_t sub_1000381C4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    return sub_100006BB4(a2, a3);
  }
}

uint64_t sub_100038218(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 40);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100038280(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

id sub_100038368(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_100038374(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100038388(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000383E0(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1000228D4(a1, a2 & 1, v7, (v2 + v6), v9, v10);
}

uint64_t sub_10003849C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000A45C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_100038560()
{
  result = qword_100093818;
  if (!qword_100093818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093818);
  }

  return result;
}

uint64_t sub_1000385B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000C9B0(&qword_100094180, &qword_100074290);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100038620(uint64_t a1, uint64_t *a2)
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

void sub_10003885C(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1000388F4()
{
  result = qword_100093878;
  if (!qword_100093878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093878);
  }

  return result;
}

uint64_t sub_100038B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_autoreleasePoolPush();
  v7 = type metadata accessor for PropertyListEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v10 = *(*(a5 + 8) + 16);
  v11 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  objc_autoreleasePoolPop(v6);
  return v11;
}

uint64_t sub_100038BC4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v7 = objc_autoreleasePoolPush();
  v8 = type metadata accessor for PropertyListDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  v11 = *(*(a2 + 8) + 8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (v3)
  {

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return (*(*(a1 - 8) + 56))(a3, v12, 1, a1);
}

CKRecord sub_100038CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100004890(0, &qword_1000936F0, CKRecordID_ptr);
  v10 = (*(*(a3 + 8) + 32))(a2);
  v12 = v11;
  sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
  v13 = (*(a3 + 24))(a2, a3);
  v15 = v14;
  v16._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16._object = v17;
  v18._countAndFlagsBits = v13;
  v18._object = v15;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v18, v16).super.isa;
  v20._countAndFlagsBits = v10;
  v20._object = v12;
  v21.super.isa = CKRecordID.init(recordName:zoneID:)(v20, isa).super.isa;
  v22 = sub_10003915C();
  v34 = v6;
  v35 = v5;
  (*(v6 + 16))(v9, v22, v5);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v21.super.isa;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 136315138;
    v28 = (*(a3 + 16))(a2, a3);
    v30 = sub_1000034B8(v28, v29, &v36);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Failed to unarchive record -- creating new %s record", v26, 0xCu);
    sub_1000036EC(v27);

    v21.super.isa = v25;
  }

  (*(v34 + 8))(v9, v35);
  sub_100004890(0, &qword_100093708, CKRecord_ptr);
  v31._countAndFlagsBits = (*(a3 + 16))(a2, a3);
  return CKRecord.init(recordType:recordID:)(v31, v21);
}

uint64_t sub_100038FCC()
{
  v1 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v0 encodeSystemFieldsWithCoder:v1];
  [v1 finishEncoding];
  v2 = [v1 encodedData];
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100039354(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100038620(v3, a2);
  sub_1000027FC(v3, a2);
  return Logger.init(subsystem:category:)();
}

void *sub_100039428@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_100039504()
{
  if (*v0)
  {
    result = 0x6F636341656D6153;
  }

  else
  {
    result = 0x6E776F6E6B6E55;
  }

  *v0;
  return result;
}

uint64_t sub_100039554()
{
  v0 = type metadata accessor for URL();
  sub_100038620(v0, qword_100098AE8);
  sub_1000027FC(v0, qword_100098AE8);
  return URL.init(fileURLWithPath:isDirectory:)();
}

uint64_t sub_1000395BC()
{
  if (qword_100096500 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();

  return sub_1000027FC(v0, qword_100098AE8);
}

void sub_10003A270(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v9 = type metadata accessor for CloudPairedDeviceRecord();
  *(a5 + v9[10]) = 0;
  v10 = (a5 + v9[6]);
  *v10 = a1;
  v10[1] = a2;
  *(a5 + v9[7]) = [a3 fastLEConnectionInfoVersion];
  v11 = [a3 fastLEConnectionInfoData];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xC000000000000000;
  }

  v16 = (a5 + v9[8]);
  *v16 = v13;
  v16[1] = v15;
  *(a5 + v9[9]) = a4;
  *(a5 + v9[11]) = 1;
  *(a5 + v9[12]) = [a3 supportedServices];
  *a5 = xmmword_100073980;
  v17 = a5 + v9[5];
  static Date.now.getter();
}

uint64_t sub_10003A398@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_10000A45C(&unk_1000938B0, &qword_100074AA0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v77 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v79 = &v69 - v8;
  __chkstk_darwin(v7);
  v82 = &v69 - v9;
  v10 = type metadata accessor for Date();
  v83 = *(v10 - 8);
  v84 = v10;
  v11 = v83[8];
  v12 = __chkstk_darwin(v10);
  v78 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v81 = &v69 - v14;
  v15 = sub_10000A45C(&qword_1000938C8, &qword_1000739B0);
  v85 = *(v15 - 8);
  v16 = *(v85 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v69 - v20;
  v22 = type metadata accessor for CloudPairedDeviceRecord();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[4];
  sub_1000078C8(a1, a1[3]);
  sub_10003C9A8();
  v27 = v86;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    return sub_1000036EC(a1);
  }

  v76 = v19;
  v86 = v22;
  v28 = v25;
  v88 = 0;
  sub_10003C9FC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v15;
  v31 = v28;
  *v28 = v87;
  LOBYTE(v87) = 2;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v75 = 0;
  v33 = v86;
  v34 = (v28 + v86[6]);
  *v34 = v32;
  v34[1] = v35;
  LOBYTE(v87) = 3;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v29;
  v38 = a1;
  *(v28 + v33[7]) = v36;
  v88 = 4;
  v74 = v37;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v28 + v33[8]) = v87;
  v39 = v85;
  (*(v85 + 16))(v76, v21, v74);
  sub_10000A45C(&qword_1000938D8, &qword_1000739B8);
  v88 = 5;
  sub_10003CDC8(&qword_1000938E0, sub_10003C9FC);
  v40 = v76;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v41 = v39 + 8;
  v42 = *(v39 + 8);
  v85 = v41;
  v42(v40, v74);
  v43 = v87;
  if (!v87)
  {
    v43 = _swiftEmptyArrayStorage;
  }

  *(v28 + v33[9]) = v43;
  LOBYTE(v87) = 6;
  v44 = KeyedDecodingContainer.decode(_:forKey:)();
  v76 = v42;
  *(v28 + v33[10]) = v44;
  v88 = 7;
  sub_10003CA50();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v28 + v33[11]) = v87;
  LOBYTE(v87) = 8;
  *(v28 + v33[12]) = KeyedDecodingContainer.decode(_:forKey:)();
  v73 = v33[5];
  static Date.now.getter();
  LOBYTE(v87) = 1;
  sub_100006D64(&qword_1000938F0, &type metadata accessor for Date);
  v45 = v82;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v46 = v84;
  v47 = v83[6];
  v75 = v83 + 6;
  v72 = v47;
  if (v47(v45, 1, v84) == 1)
  {
    v48 = sub_100006D64(&qword_100093F80, type metadata accessor for CloudPairedDeviceRecord);
    v49 = sub_100006DF4(v86, v48);
    v50 = [v49 modificationDate];

    if (v50)
    {
      v51 = v78;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v76(v21, v74);
      v52 = v83;
      v53 = v83[4];
      v54 = v79;
      v55 = v51;
      v56 = v84;
      v53(v79, v55, v84);
      (v52[7])(v54, 0, 1, v56);
      v53(v81, v54, v56);
    }

    else
    {
      v70 = v83[7];
      v71 = v83 + 7;
      v70(v79, 1, 1, v84);
      v60 = sub_100006DF4(v86, v48);
      v61 = [v60 creationDate];

      if (v61)
      {
        v62 = v78;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v76(v21, v74);
        v63 = v84;
        v64 = v83[4];
        v65 = v77;
        v64(v77, v62, v84);
        v70(v65, 0, 1, v63);
        v64(v81, v65, v63);
      }

      else
      {
        v66 = v77;
        v67 = v84;
        v70(v77, 1, 1, v84);
        static Date.now.getter();
        v76(v21, v74);
        if (v72(v66, 1, v67) != 1)
        {
          sub_100006CAC(v77, &unk_1000938B0, &qword_100074AA0);
        }
      }

      if (v72(v79, 1, v84) != 1)
      {
        sub_100006CAC(v79, &unk_1000938B0, &qword_100074AA0);
      }
    }

    v46 = v84;
    v68 = v72(v82, 1, v84);
    v57 = v83;
    v31 = v28;
    v38 = a1;
    v59 = v80;
    v58 = v81;
    if (v68 != 1)
    {
      sub_100006CAC(v82, &unk_1000938B0, &qword_100074AA0);
    }
  }

  else
  {
    v76(v21, v74);
    v57 = v83;
    v58 = v81;
    (v83[4])(v81, v45, v46);
    v59 = v80;
  }

  (v57[5])(v31 + v73, v58, v46);
  sub_100004EFC(v31, v59);
  sub_1000036EC(v38);
  return sub_100007124(v31);
}

uint64_t sub_10003AE98(uint64_t a1)
{
  v29 = type metadata accessor for Date();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v29);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CloudPairedDeviceRecord();
  v8 = v7;
  v9 = *(v7 + 28);
  v10 = *(a1 + v9);
  if (!v10)
  {
    v10 = *(v1 + v9);
  }

  *(v1 + v9) = v10;
  v11 = *(v7 + 32);
  v13 = *(a1 + v11);
  v12 = *(a1 + v11 + 8);
  v14 = v12 >> 62;
  if ((v12 >> 62) <= 1)
  {
    if (v14)
    {
      if (v13 != v13 >> 32)
      {
        goto LABEL_12;
      }
    }

    else if ((v12 & 0xFF000000000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v14 != 2 || *(v13 + 16) == *(v13 + 24))
  {
LABEL_11:
    v13 = *(v1 + v11);
    v12 = *(v1 + v11 + 8);
  }

LABEL_12:
  v15 = (v1 + v11);
  v16 = *(v1 + v11);
  v17 = *(v1 + v11 + 8);
  sub_100006218(v13, v12);
  sub_1000066CC(v16, v17);
  *v15 = v13;
  v15[1] = v12;
  v18 = v8[9];
  v19 = *(a1 + v18);
  v20 = *(v1 + v18);

  *(v1 + v18) = v19;
  v21 = v8[10];
  v22 = *(a1 + v21);
  if (!v22)
  {
    v22 = *(v1 + v21);
  }

  *(v1 + v21) = v22;
  v23 = v8[11];
  if (*(a1 + v23))
  {
    v24 = 1;
  }

  else
  {
    v24 = *(v1 + v23);
  }

  *(v1 + v23) = v24;
  v25 = v8[12];
  v26 = *(a1 + v25);
  if (!v26)
  {
    v26 = *(v1 + v25);
  }

  *(v1 + v25) = v26;
  static Date.now.getter();
  return (*(v3 + 40))(v1 + v8[5], v6, v29);
}

void sub_10003B080(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000A45C(&unk_1000938B0, &qword_100074AA0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v74 = &v65 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v71 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v73 = &v65 - v16;
  v17 = CKRecord.recordType.getter();
  v19 = v18;
  swift_beginAccess();
  if (v17 == qword_100093890 && v19 == off_100093898)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      sub_10003CAA4();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();

      return;
    }
  }

  v66 = v9;
  v72 = v12;
  v69 = v11;
  v70 = v2;
  v21 = [a1 encryptedValues];
  v22 = a1;
  ObjectType = swift_getObjectType();
  *a2 = sub_100038FCC();
  a2[1] = v24;
  CKRecordKeyValueSetting.subscript.getter();
  if (BYTE8(v75))
  {
    v25 = 0;
  }

  else
  {
    v25 = v75;
  }

  v26 = type metadata accessor for CloudPairedDeviceRecord();
  *(a2 + v26[10]) = v25;
  v68 = v22;
  v27 = [v22 recordID];
  v28 = [v27 recordName];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = (a2 + v26[6]);
  *v32 = v29;
  v32[1] = v31;
  v67 = ObjectType;
  CKRecordKeyValueSetting.subscript.getter();
  v33 = v75;
  if (BYTE8(v75))
  {
    v33 = 0;
  }

  *(a2 + v26[7]) = v33;
  v34 = String._bridgeToObjectiveC()();
  v35 = [v21 objectForKeyedSubscript:v34];

  v36 = xmmword_100073980;
  if (!v35)
  {
    v38 = v74;
    goto LABEL_14;
  }

  v65 = xmmword_100073980;
  v76 = v35;
  sub_10000A45C(&unk_100093260, &qword_1000730C8);
  v37 = swift_dynamicCast();
  v38 = v74;
  if (v37)
  {
    v36 = v75;
LABEL_14:
    v39 = v68;
    goto LABEL_17;
  }

  v39 = v68;
  v36 = v65;
LABEL_17:
  *(a2 + v26[8]) = v36;
  v41 = String._bridgeToObjectiveC()();
  v42 = [v21 objectForKeyedSubscript:v41];

  if (v42 && (*&v75 = v42, sub_10000A45C(&unk_100093260, &qword_1000730C8), sub_10000A45C(&qword_1000938D8, &qword_1000739B8), (swift_dynamicCast() & 1) != 0))
  {
    v43 = v76;
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
  }

  *(a2 + v26[9]) = v43;
  v44 = String._bridgeToObjectiveC()();
  v45 = [v21 objectForKeyedSubscript:v44];

  if (v45 && (*&v75 = v45, sub_10000A45C(&unk_100093260, &qword_1000730C8), (swift_dynamicCast() & 1) != 0) && v76 <= 1)
  {
    *(a2 + v26[11]) = v76;
  }

  else
  {
    *(a2 + v26[11]) = 0;
  }

  CKRecordKeyValueSetting.subscript.getter();
  v46 = v75;
  if (BYTE8(v75))
  {
    v46 = 0;
  }

  *(a2 + v26[12]) = v46;
  v47 = [v39 modificationDate];
  if (v47)
  {
    v48 = v71;
    v49 = v47;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    v50 = v72;
    v51 = *(v72 + 32);
    v52 = v48;
    v53 = v69;
    v51(v38, v52, v69);
    (*(v50 + 56))(v38, 0, 1, v53);
    v54 = v73;
    v51(v73, v38, v53);
  }

  else
  {
    v50 = v72;
    v55 = *(v72 + 56);
    v53 = v69;
    v55(v38, 1, 1, v69);
    v56 = [v39 creationDate];
    if (v56)
    {
      v57 = v50;
      v58 = v71;
      v68 = v55;
      v59 = v56;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      v60 = *(v57 + 32);
      v61 = v66;
      v60(v66, v58, v53);
      v68(v61, 0, 1, v53);
      v54 = v73;
      v60(v73, v61, v53);
      v38 = v74;
      v50 = v72;
      v62 = (*(v72 + 48))(v74, 1, v53);
    }

    else
    {
      v55(v66, 1, 1, v53);
      static Date.now.getter();
      swift_unknownObjectRelease();

      v63 = v66;
      v64 = *(v50 + 48);
      if (v64(v66, 1, v53) != 1)
      {
        sub_100006CAC(v63, &unk_1000938B0, &qword_100074AA0);
      }

      v54 = v73;
      v62 = v64(v38, 1, v53);
    }

    if (v62 != 1)
    {
      sub_100006CAC(v38, &unk_1000938B0, &qword_100074AA0);
    }
  }

  (*(v50 + 32))(a2 + v26[5], v54, v53);
}

void sub_10003B894()
{
  v1 = type metadata accessor for CloudPairedDeviceRecord();
  v2 = (v0 + v1[6]);
  v3 = *v2;
  v4 = v2[1];
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + v1[7]));
  v5 = (v0 + v1[8]);
  v6 = *v5;
  v7 = v5[1];
  Data.hash(into:)();
  v8 = *(v0 + v1[9]);
  Hasher._combine(_:)(*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      sub_100006218(v11, *v10);
      Data.hash(into:)();
      sub_1000066CC(v11, v12);
      v10 += 2;
      --v9;
    }

    while (v9);
  }

  Hasher._combine(_:)(*(v0 + v1[10]));
  Hasher._combine(_:)(*(v0 + v1[12]));
}

uint64_t sub_10003B97C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74654D64756F6C63;
    v6 = 0x696669746E656469;
    if (a1 != 2)
    {
      v6 = 0xD00000000000001BLL;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7954656369766564;
    v2 = 0x69687372656E776FLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000018;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10003BAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003D540(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003BB14(uint64_t a1)
{
  v2 = sub_10003C9A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003BB50(uint64_t a1)
{
  v2 = sub_10003C9A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003BB8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_100006218(v7, v6);
          sub_100006218(v9, v8);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          __DataStorage._length.getter();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_100006218(v7, v6);
        sub_100006218(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_100006218(v7, v6);
          sub_100006218(v9, v8);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          __DataStorage._length.getter();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_100007CF0(v24, v25, v26, v33);
          sub_1000066CC(v9, v8);
          sub_1000066CC(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_100006218(v7, v6);
        sub_100006218(v9, v8);
      }

      sub_100007CF0(v33, v9, v8, &v32);
      sub_1000066CC(v9, v8);
      sub_1000066CC(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_10003BF98(void *a1)
{
  v3 = v1;
  v5 = sub_10000A45C(&qword_100093910, &qword_1000739C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_1000078C8(a1, a1[3]);
  sub_10003C9A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v23 = *v3;
  v24 = v11;
  v25 = 0;
  sub_100006218(v23, v11);
  sub_10003CD74();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000066CC(v23, v24);
  if (!v2)
  {
    v12 = type metadata accessor for CloudPairedDeviceRecord();
    v13 = v12[5];
    LOBYTE(v23) = 1;
    type metadata accessor for Date();
    sub_100006D64(&qword_100093920, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v23) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + v12[7]);
    LOBYTE(v23) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = (v3 + v12[8]);
    v20 = v19[1];
    v23 = *v19;
    v24 = v20;
    v25 = 4;
    sub_100006218(v23, v20);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000066CC(v23, v24);
    v23 = *(v3 + v12[9]);
    v25 = 5;
    sub_10000A45C(&qword_1000938D8, &qword_1000739B8);
    sub_10003CDC8(&qword_100093928, sub_10003CD74);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = *(v3 + v12[10]);
    LOBYTE(v23) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v23) = *(v3 + v12[11]);
    v25 = 7;
    sub_10003CE40();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = *(v3 + v12[12]);
    LOBYTE(v23) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_10003C364()
{
  Hasher.init(_seed:)();
  sub_10003B894();
  return Hasher._finalize()();
}

uint64_t sub_10003C3C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v6 = *a3;
  v7 = *a4;

  return v6;
}

uint64_t sub_10003C41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_10003C508()
{
  Hasher.init(_seed:)();
  sub_10003B894();
  return Hasher._finalize()();
}

uint64_t sub_10003C558@<X0>(uint64_t a1@<X8>)
{
  if (qword_100096500 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = sub_1000027FC(v2, qword_100098AE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_10003C618(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

char *sub_10003C680(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A45C(&unk_100093A20, &qword_100073E18);
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

uint64_t sub_10003C78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&unk_1000938B0, &qword_100074AA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003C7FC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t sub_10003C898(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

unint64_t sub_10003C954()
{
  result = qword_1000938C0;
  if (!qword_1000938C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000938C0);
  }

  return result;
}

unint64_t sub_10003C9A8()
{
  result = qword_100096508[0];
  if (!qword_100096508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100096508);
  }

  return result;
}

unint64_t sub_10003C9FC()
{
  result = qword_1000938D0;
  if (!qword_1000938D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000938D0);
  }

  return result;
}

unint64_t sub_10003CA50()
{
  result = qword_1000938E8;
  if (!qword_1000938E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000938E8);
  }

  return result;
}

unint64_t sub_10003CAA4()
{
  result = qword_1000938F8;
  if (!qword_1000938F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000938F8);
  }

  return result;
}

uint64_t sub_10003CAF8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100006218(a3, a4);
          return sub_100007AA8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_10003CC60(uint64_t a1, uint64_t a2)
{
  if (sub_10003CAF8(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) != 0 && (v4 = type metadata accessor for CloudPairedDeviceRecord(), v5 = v4[5], (static Date.== infix(_:_:)()) && ((v6 = v4[6], v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + v4[7]) == *(a2 + v4[7]) && (sub_10003CAF8(*(a1 + v4[8]), *(a1 + v4[8] + 8), *(a2 + v4[8]), *(a2 + v4[8] + 8)) & 1) != 0 && (sub_10003BB8C(*(a1 + v4[9]), *(a2 + v4[9])) & 1) != 0 && *(a1 + v4[10]) == *(a2 + v4[10]) && *(a1 + v4[11]) == *(a2 + v4[11])))
  {
    return *(a1 + v4[12]) == *(a2 + v4[12]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10003CD74()
{
  result = qword_100093918;
  if (!qword_100093918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093918);
  }

  return result;
}

uint64_t sub_10003CDC8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000C9B0(&qword_1000938D8, &qword_1000739B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003CE40()
{
  result = qword_100093930;
  if (!qword_100093930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093930);
  }

  return result;
}

unint64_t sub_10003CE98()
{
  result = qword_100093940;
  if (!qword_100093940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093940);
  }

  return result;
}

unint64_t sub_10003CEF0()
{
  result = qword_100093948;
  if (!qword_100093948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093948);
  }

  return result;
}

uint64_t sub_10003CF44(uint64_t a1)
{
  result = sub_100006D64(&qword_100093950, type metadata accessor for CloudPairedDeviceRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10003CFE4(uint64_t a1)
{
  *(a1 + 8) = sub_100006D64(&qword_100093960, type metadata accessor for CloudPairedDeviceRecord);
  result = sub_100006D64(&qword_100093968, type metadata accessor for CloudPairedDeviceRecord);
  *(a1 + 16) = result;
  return result;
}

void sub_10003D068()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_10003D124();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003D124()
{
  if (!qword_1000939C8)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000939C8);
    }
  }
}

uint64_t sub_10003D188(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10003D21C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudPairedDeviceRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudPairedDeviceRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003D43C()
{
  result = qword_100096EA0[0];
  if (!qword_100096EA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100096EA0);
  }

  return result;
}

unint64_t sub_10003D494()
{
  result = qword_100096FB0;
  if (!qword_100096FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100096FB0);
  }

  return result;
}

unint64_t sub_10003D4EC()
{
  result = qword_100096FB8[0];
  if (!qword_100096FB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100096FB8);
  }

  return result;
}

uint64_t sub_10003D540(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010007A6C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010007A620 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010007A640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010007A660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69687372656E776FLL && a2 == 0xED00006570795470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010007A680 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_10003D834()
{
  result = qword_100093A18;
  if (!qword_100093A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093A18);
  }

  return result;
}

id sub_10003D898()
{
  result = [objc_allocWithZone(type metadata accessor for UserNotificationManager()) init];
  static UserNotificationManager.shared = result;
  return result;
}

uint64_t *UserNotificationManager.shared.unsafeMutableAddressor()
{
  if (qword_100097040 != -1)
  {
    swift_once();
  }

  return &static UserNotificationManager.shared;
}

id static UserNotificationManager.shared.getter()
{
  if (qword_100097040 != -1)
  {
    swift_once();
  }

  v1 = static UserNotificationManager.shared;

  return v1;
}

id variable initialization expression of UserNotificationManager.controller()
{
  v0 = objc_allocWithZone(CBController);

  return [v0 init];
}

char *sub_10003D9AC()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v25 = *(v1 - 8);
  v26 = v1;
  v2 = *(v25 + 64);
  __chkstk_darwin(v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_controller;
  *(v0 + v9) = [objc_allocWithZone(CBController) init];
  v23[1] = sub_10000A8F8();
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100002254(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_1000023BC(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v25 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = v24;
  *&v24[OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_dispatchQueue] = v10;
  v12 = objc_allocWithZone(UNUserNotificationCenter);
  v13 = v10;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 initWithBundleIdentifier:v14 queue:v13];

  *&v11[OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_userNotificationCenter] = v15;
  v16 = type metadata accessor for UserNotificationManager();
  v27.receiver = v11;
  v27.super_class = v16;
  v17 = objc_msgSendSuper2(&v27, "init");
  v18 = OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_userNotificationCenter;
  v19 = *&v17[OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_userNotificationCenter];
  v20 = v17;
  [v19 setDelegate:v20];
  v21 = [*&v17[v18] setWantsNotificationResponsesDelivered];
  (*((swift_isaMask & *v20) + 0x80))(v21);

  return v20;
}

void sub_10003DD50()
{
  v1 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_userNotificationCenter);
  v3[4] = sub_10003DE04;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10003E000;
  v3[3] = &unk_10008B210;
  v2 = _Block_copy(v3);
  [v1 requestAuthorizationWithOptions:7 completionHandler:v2];
  _Block_release(v2);
}

uint64_t sub_10003DE04(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = sub_100039094();
  v11 = *(v3 + 16);
  if (a1)
  {
    v11(v9, v10, v2);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      v7 = v9;
      goto LABEL_8;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "LocalUserNotification authorization granted", v14, 2u);
    v7 = v9;
    goto LABEL_6;
  }

  v11(v7, v10, v2);
  v12 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v12, v15, "LocalUserNotification authorization denied", v16, 2u);
LABEL_6:
  }

LABEL_8:

  return (*(v3 + 8))(v7, v2);
}

void sub_10003E000(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_10003E078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = [objc_opt_self() triggerWithTimeInterval:0 repeats:0.1];
  v12 = String._bridgeToObjectiveC()();
  [a5 setThreadIdentifier:v12];

  v13 = String._bridgeToObjectiveC()();
  [a5 setCategoryIdentifier:v13];

  v14 = v11;
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() requestWithIdentifier:v15 content:a5 trigger:v14];

  v17 = *&v6[OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_userNotificationCenter];
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = v6;
  v18[4] = a1;
  v18[5] = a2;
  v21[4] = sub_1000408F4;
  v21[5] = v18;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_10003EA28;
  v21[3] = &unk_10008B260;
  v19 = _Block_copy(v21);
  v20 = v6;

  [v17 addNotificationRequest:v16 withCompletionHandler:v19];
  _Block_release(v19);
}

uint64_t sub_10003E280(char *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v75 = a3;
  v76 = a5;
  v72 = a2;
  v73 = a4;
  v77 = a1;
  v68 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v68 - 8);
  v5 = *(v71 + 64);
  __chkstk_darwin(v68);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v67 = *(v70 - 8);
  v7 = *(v67 + 64);
  __chkstk_darwin(v70);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v66 = *(v10 - 8);
  v11 = *(v66 + 64);
  __chkstk_darwin(v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v74 = *(v14 - 8);
  v15 = *(v74 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v62 - v19;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v62 - v27;
  if (v77)
  {
    swift_errorRetain();
    v29 = sub_100039094();
    v30 = v26;
    (*(v22 + 16))(v26, v29, v21);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    v33 = v21;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315138;
      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = sub_1000034B8(v36, v37, aBlock);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "LocalUserNotification:showlocal Error scheduling notification: %s", v34, 0xCu);
      sub_1000036EC(v35);
    }

    else
    {
    }

    return (*(v22 + 8))(v30, v33);
  }

  else
  {
    v63 = v18;
    v64 = v13;
    v77 = v20;
    v65 = v9;
    v39 = sub_100039094();
    (*(v22 + 16))(v28, v39, v21);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "LocalUserNotification:showlocal scheduled successfully", v42, 2u);
    }

    result = (*(v22 + 8))(v28, v21);
    v44 = v14;
    v45 = v75;
    v46 = v76;
    v48 = v73;
    v47 = v74;
    v49 = v77;
    v50 = v72;
    if (v72)
    {
      v62 = *&v75[OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_dispatchQueue];
      v51 = v63;
      static DispatchTime.now()();
      v52 = v64;
      *v64 = v50;
      v53 = v66;
      (*(v66 + 104))(v52, enum case for DispatchTimeInterval.seconds(_:), v10);
      + infix(_:_:)();
      (*(v53 + 8))(v52, v10);
      v54 = v71;
      v55 = v45;
      v74 = *(v47 + 8);
      (v74)(v51, v44);
      v56 = swift_allocObject();
      v56[2] = v45;
      v56[3] = v48;
      v56[4] = v46;
      aBlock[4] = sub_100040DBC;
      aBlock[5] = v56;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002410;
      aBlock[3] = &unk_10008B360;
      v57 = _Block_copy(aBlock);
      v58 = v55;

      v59 = v65;
      static DispatchQoS.unspecified.getter();
      v78 = _swiftEmptyArrayStorage;
      sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
      v76 = v44;
      sub_10000A45C(&unk_1000931F0, &unk_100072C10);
      v60 = v68;
      sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
      v61 = v69;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v57);
      (*(v54 + 8))(v61, v60);
      (*(v67 + 8))(v59, v70);
      (v74)(v49, v76);
    }
  }

  return result;
}

void sub_10003EA28(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t UserNotificationManager.userNotificationCenter(_:willPresent:withCompletionHandler:)(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100039094();
  (*(v6 + 16))(v9, v10, v5);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v5;
    v15 = v14;
    v25 = swift_slowAlloc();
    v27 = v25;
    *v15 = 136315138;
    v16 = [v11 request];
    v17 = [v16 identifier];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = a3;
    v21 = v20;

    v22 = sub_1000034B8(v18, v21, &v27);
    a3 = v19;

    *(v15 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "LocalUserNotification received with identifier %s", v15, 0xCu);
    sub_1000036EC(v25);

    (*(v6 + 8))(v9, v26);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  return a3(18);
}

id UserNotificationManager.displayBannerUSBPairingCompleted(_:)(void *a1)
{
  v101 = type metadata accessor for URL();
  v100 = *(v101 - 8);
  v2 = *(v100 + 64);
  __chkstk_darwin(v101);
  v98 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A45C(&qword_100093A38, &qword_100073E40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v99 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v96 - v9;
  __chkstk_darwin(v8);
  v107 = &v96 - v11;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v106 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v105 = &v96 - v18;
  __chkstk_darwin(v17);
  v20 = &v96 - v19;
  v21 = [a1 vendorID];
  LODWORD(v114) = [a1 productID];
  v112 = [a1 colorInfo];
  v113 = a1;
  v22 = [a1 btAddressData];
  if (v22)
  {
    v23 = v22;
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000066CC(v24, v26);
  }

  else
  {
    v27.super.isa = 0;
  }

  v28 = CUPrintNSDataAddress();

  if (v28)
  {
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = v29;
  }

  else
  {
    v102 = 0;
    v111 = 0xE000000000000000;
  }

  v30 = sub_100039094();
  v31 = v13[2];
  v108 = v30;
  v110 = v13 + 2;
  v109 = v31;
  (v31)(v20);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v115 = v97;
    *v34 = 136315650;
    sub_10000A45C(&qword_100093A40, &qword_100073E48);
    v35 = swift_allocObject();
    v104 = xmmword_100072BE0;
    *(v35 + 16) = xmmword_100072BE0;
    *(v35 + 56) = &type metadata for UInt16;
    *(v35 + 64) = &protocol witness table for UInt16;
    *(v35 + 32) = v21;
    v36 = String.init(format:_:)();
    v38 = v10;
    v39 = sub_1000034B8(v36, v37, &v115);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    v40 = swift_allocObject();
    *(v40 + 16) = v104;
    *(v40 + 56) = &type metadata for UInt32;
    *(v40 + 64) = &protocol witness table for UInt32;
    *(v40 + 32) = v114;
    v41 = String.init(format:_:)();
    v43 = sub_1000034B8(v41, v42, &v115);

    *(v34 + 14) = v43;
    v10 = v38;
    *(v34 + 22) = 2080;
    v44 = swift_allocObject();
    *(v44 + 16) = v104;
    *(v44 + 56) = &type metadata for UInt16;
    *(v44 + 64) = &protocol witness table for UInt16;
    *(v44 + 32) = v112;
    v45 = String.init(format:_:)();
    v47 = sub_1000034B8(v45, v46, &v115);

    *(v34 + 24) = v47;
    _os_log_impl(&_mh_execute_header, v32, v33, "LocalUserNotification:USBPairingCompleted vid(%s), pid(%s), color(%s)", v34, 0x20u);
    swift_arrayDestroy();
  }

  v48 = v13[1];
  v48(v20, v12);
  v49 = v113;
  if (sub_100040900([v113 productID]))
  {
    v113 = [objc_allocWithZone(UNMutableNotificationContent) init];
    result = [objc_opt_self() sharedAssetHelper];
    if (WORD1(v114) || v112 > 0xFF)
    {
      __break(1u);
    }

    else
    {
      v51 = result;
      v52 = [result getImageURLForAppleProductID:v114 andColor:v112];

      if (v52)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      v58 = v101;
      v59 = v100;
      (*(v100 + 56))(v10, v53, 1, v101);
      v60 = v107;
      sub_100040984(v10, v107);
      v61 = v60;
      v62 = v99;
      sub_100006C44(v61, v99, &qword_100093A38, &qword_100073E40);
      if ((*(v59 + 48))(v62, 1, v58) == 1)
      {
        sub_100006CAC(v62, &qword_100093A38, &qword_100073E40);
      }

      else
      {
        v63 = v98;
        (*(v59 + 32))(v98, v62, v58);
        v64 = v59;
        URL.path.getter();
        v65 = v58;
        v66 = String._bridgeToObjectiveC()();

        v67 = [objc_opt_self() iconAtPath:v66];

        [v113 setIcon:v67];
        (*(v64 + 8))(v63, v65);
      }

      v68 = String._bridgeToObjectiveC()();
      [v113 setTitle:v68];

      v69 = sub_1000409F4([v49 productID]);
      v96 = v13;
      *&v104 = v48;
      if (v69)
      {
        v70 = String._bridgeToObjectiveC()();
        [v113 setTitle:v70];

        v71 = 0xE500000000000000;
        v72 = 0x6573756F4DLL;
      }

      else if (sub_100040A14([v49 productID]))
      {
        v73 = String._bridgeToObjectiveC()();
        [v113 setTitle:v73];

        v71 = 0xE800000000000000;
        v72 = 0x6461706B63617254;
      }

      else if (sub_100040A34([v49 productID]))
      {
        v74 = String._bridgeToObjectiveC()();
        [v113 setTitle:v74];

        v71 = 0x800000010007A890;
        v72 = 0xD000000000000010;
      }

      else if (sub_100040A58([v49 productID]))
      {
        v75 = String._bridgeToObjectiveC()();
        [v113 setTitle:v75];

        v71 = 0xE800000000000000;
        v72 = 0x6472616F6279654BLL;
      }

      else
      {
        v71 = 0xE800000000000000;
        v72 = 0x444948656C707041;
      }

      sub_10000A45C(&qword_100093A40, &qword_100073E48);
      v76 = swift_allocObject();
      v114 = xmmword_100072BE0;
      *(v76 + 16) = xmmword_100072BE0;
      *(v76 + 56) = &type metadata for String;
      *(v76 + 64) = sub_100040A98();
      *(v76 + 32) = v72;
      *(v76 + 40) = v71;

      v77 = String.init(format:_:)();
      v79 = v78;
      v109(v106, v108, v12);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = v72;
        v84 = v12;
        v85 = swift_slowAlloc();
        v115 = v85;
        *v82 = 136315138;
        *(v82 + 4) = sub_1000034B8(v77, v79, &v115);
        _os_log_impl(&_mh_execute_header, v80, v81, "LocalUserNotification:USBPairingCompleted bodyKey = %s", v82, 0xCu);
        sub_1000036EC(v85);

        v86 = v106;
        v87 = v84;
        v72 = v83;
      }

      else
      {

        v86 = v106;
        v87 = v12;
      }

      (v104)(v86, v87);
      v88 = objc_opt_self();
      v89 = String._bridgeToObjectiveC()();

      v90 = [v88 localizedUserNotificationStringForKey:v89 arguments:0];

      if (!v90)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = String._bridgeToObjectiveC()();
      }

      v91 = v113;
      [v113 setBody:{v90, v96}];

      sub_10000A45C(&unk_100093A50, &unk_100073030);
      inited = swift_initStackObject();
      *(inited + 16) = v114;
      v115 = 0xD000000000000014;
      v116 = 0x800000010007A840;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for String;
      v93 = v111;
      *(inited + 72) = v102;
      *(inited + 80) = v93;
      sub_100017EE0(inited);
      swift_setDeallocating();
      sub_100006CAC(inited + 32, &qword_100093160, &qword_100073040);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v91 setUserInfo:isa];

      v115 = 0xD00000000000002ALL;
      v116 = 0x800000010007A860;
      v95._countAndFlagsBits = v72;
      v95._object = v71;
      String.append(_:)(v95);

      (*((swift_isaMask & *v103) + 0x88))(v115, v116, 0xD000000000000030, 0x800000010007A730, v91, 0);

      return sub_100006CAC(v107, &qword_100093A38, &qword_100073E40);
    }
  }

  else
  {

    v54 = v105;
    v109(v105, v108, v12);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "LocalUserNotification:USBPairingCompleted No Apple MIDs", v57, 2u);
    }

    return (v48)(v54, v12);
  }

  return result;
}

void UserNotificationManager.displayBannerGameControllerConnected(_:)(void *a1)
{
  v94 = type metadata accessor for URL();
  v93 = *(v94 - 8);
  v2 = *(v93 + 64);
  __chkstk_darwin(v94);
  v90 = &v87[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10000A45C(&qword_100093A38, &qword_100073E40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v102 = &v87[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v10 = &v87[-v9];
  __chkstk_darwin(v8);
  v92 = &v87[-v11];
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v104 = &v87[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v87[-v17];
  v96 = [a1 vendorID];
  v19 = [a1 productID];
  v20 = [a1 name];
  if (v20)
  {
    v21 = v20;
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v23 = 0xEF72656C6C6F7274;
    v106 = 0x6E6F4320656D6147;
  }

  v91 = v10;
  v97 = [a1 colorInfo];
  v24 = [a1 btAddressData];
  if (v24)
  {
    v25 = v24;
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000066CC(v26, v28);
  }

  else
  {
    v29.super.isa = 0;
  }

  v30 = CUPrintNSDataAddress();

  if (v30)
  {
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
  }

  else
  {
    v107 = 0;
    v32 = 0xE000000000000000;
  }

  v33 = sub_100039094();
  v34 = v13[2];
  v100 = v33;
  v101 = v13 + 2;
  v99 = v34;
  v34(v18);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v108 = v13;
  v103 = v32;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v89 = v12;
    v88 = v19;
    v39 = v38;
    v40 = swift_slowAlloc();
    v98 = v23;
    v109[0] = v40;
    *v39 = 136316162;
    *(v39 + 4) = sub_1000034B8(v106, v98, v109);
    *(v39 + 12) = 2080;
    sub_10000A45C(&qword_100093A40, &qword_100073E48);
    v41 = swift_allocObject();
    v95 = xmmword_100072BE0;
    *(v41 + 16) = xmmword_100072BE0;
    *(v41 + 56) = &type metadata for UInt16;
    *(v41 + 64) = &protocol witness table for UInt16;
    *(v41 + 32) = v96;
    v42 = String.init(format:_:)();
    v44 = sub_1000034B8(v42, v43, v109);

    *(v39 + 14) = v44;
    *(v39 + 22) = 2080;
    v45 = swift_allocObject();
    *(v45 + 16) = v95;
    *(v45 + 56) = &type metadata for UInt32;
    *(v45 + 64) = &protocol witness table for UInt32;
    *(v45 + 32) = v88;
    v46 = String.init(format:_:)();
    v48 = sub_1000034B8(v46, v47, v109);

    *(v39 + 24) = v48;
    *(v39 + 32) = 2080;
    v49 = swift_allocObject();
    *(v49 + 16) = v95;
    *(v49 + 56) = &type metadata for UInt16;
    *(v49 + 64) = &protocol witness table for UInt16;
    *(v49 + 32) = v97;
    v50 = String.init(format:_:)();
    v52 = sub_1000034B8(v50, v51, v109);

    *(v39 + 34) = v52;
    *(v39 + 42) = 2080;
    *(v39 + 44) = sub_1000034B8(v107, v32, v109);
    _os_log_impl(&_mh_execute_header, v35, v36, "LocalUserNotification:GameControllerConnected name(%s), vid(%s), pid(%s), color(%s), BDAddr(%s)", v39, 0x34u);
    swift_arrayDestroy();
    v23 = v98;

    v53 = v108[1];
    v54 = v89;
    v53(v18);
  }

  else
  {

    v53 = v13[1];
    v54 = v12;
    (v53)(v18, v12);
  }

  v55 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v56 = String._bridgeToObjectiveC()();
  v57 = objc_opt_self();
  v58 = [v57 iconForSystemImageNamed:v56];

  [v55 setIcon:v58];
  v59 = [v55 icon];
  v60 = v102;
  if (v59)
  {

    v61 = v104;
  }

  else
  {
    v62 = [objc_opt_self() sharedAssetHelper];
    v63 = String._bridgeToObjectiveC()();
    v64 = [v62 getImageURLFromImageName:v63];

    if (v64)
    {
      v65 = v91;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v66 = 0;
      v67 = v94;
      v68 = v92;
    }

    else
    {
      v66 = 1;
      v67 = v94;
      v68 = v92;
      v65 = v91;
    }

    v69 = v93;
    (*(v93 + 56))(v65, v66, 1, v67);
    sub_100040984(v65, v68);
    sub_100006C44(v68, v60, &qword_100093A38, &qword_100073E40);
    if ((*(v69 + 48))(v60, 1, v67) == 1)
    {
      sub_100006CAC(v68, &qword_100093A38, &qword_100073E40);
      v70 = v60;
    }

    else
    {
      v71 = v90;
      (*(v69 + 32))(v90, v60, v67);
      URL.path.getter();
      v72 = String._bridgeToObjectiveC()();
      v98 = v23;
      v73 = v68;
      v74 = v72;

      v75 = [v57 iconAtPath:v74];

      [v55 setIcon:v75];
      (*(v69 + 8))(v71, v67);
      v70 = v73;
    }

    sub_100006CAC(v70, &qword_100093A38, &qword_100073E40);
    v61 = v104;
  }

  v76 = String._bridgeToObjectiveC()();

  [v55 setTitle:v76];

  v99(v61, v100, v54);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v109[0] = v80;
    *v79 = 136315138;
    *(v79 + 4) = sub_1000034B8(0xD000000000000029, 0x800000010007A8B0, v109);
    _os_log_impl(&_mh_execute_header, v77, v78, "LocalUserNotification:GCConnected titleKey = %s", v79, 0xCu);
    sub_1000036EC(v80);
  }

  (v53)(v61, v54);
  v81 = objc_opt_self();
  v82 = String._bridgeToObjectiveC()();
  v83 = [v81 localizedUserNotificationStringForKey:v82 arguments:0];

  if (!v83)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = String._bridgeToObjectiveC()();
  }

  [v55 setBody:v83];

  sub_10000A45C(&unk_100093A50, &unk_100073030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100072BE0;
  v109[0] = 0xD000000000000014;
  v109[1] = 0x800000010007A840;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  v85 = v103;
  *(inited + 72) = v107;
  *(inited + 80) = v85;
  sub_100017EE0(inited);
  swift_setDeallocating();
  sub_100006CAC(inited + 32, &qword_100093160, &qword_100073040);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v55 setUserInfo:isa];

  (*((swift_isaMask & *v105) + 0x88))(0xD000000000000038, 0x800000010007A8E0, 0xD000000000000030, 0x800000010007A730, v55, 20);
}

id UserNotificationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserNotificationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100040900(int a1)
{
  result = 1;
  if (((a1 - 569) > 0x33 || ((1 << (a1 - 57)) & 0x9500070000007) == 0) && ((a1 - 781) > 0x17 || ((1 << (a1 - 13)) & 0xF80003) == 0))
  {
    v3 = a1 - 666;
    if (v3 > 5 || ((1 << v3) & 0x25) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100040984(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100093A38, &qword_100073E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000409F4(int a1)
{
  v1 = a1 == 803;
  if (a1 == 781)
  {
    v1 = 1;
  }

  return a1 == 617 || v1;
}

uint64_t sub_100040A14(int a1)
{
  v1 = a1 == 804;
  if (a1 == 782)
  {
    v1 = 1;
  }

  return a1 == 613 || v1;
}

uint64_t sub_100040A34(int a1)
{
  v1 = a1 == 671;
  if (a1 == 666)
  {
    v1 = 1;
  }

  return (a1 - 801) < 2 || v1;
}

BOOL sub_100040A58(int a1)
{
  result = 1;
  if ((a1 - 615) > 0x38 || ((1 << (a1 - 103)) & 0x128000000000021) == 0)
  {
    return (a1 - 800) < 3;
  }

  return result;
}

unint64_t sub_100040A98()
{
  result = qword_100093A48;
  if (!qword_100093A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093A48);
  }

  return result;
}

uint64_t sub_100040AEC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100039094();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    v16 = [v10 request];
    v17 = [v16 identifier];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_1000034B8(v18, v20, &v24);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "LocalUserNotification received with identifier %s", v14, 0xCu);
    sub_1000036EC(v15);

    a2 = v23;
  }

  (*(v5 + 8))(v8, v4);
  return (*(a2 + 16))(a2, 18);
}

unint64_t sub_100040D48()
{
  result = qword_100093A70;
  if (!qword_100093A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093A70);
  }

  return result;
}

void sub_100040DBC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0[2] + OBJC_IVAR____TtC14bluetoothuserd23UserNotificationManager_userNotificationCenter);
  sub_10000A45C(&unk_100092D10, &unk_100072C00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100072BE0;
  *(v4 + 32) = v1;
  *(v4 + 40) = v2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 removeDeliveredNotificationsWithIdentifiers:isa];
}

uint64_t sub_100040E8C()
{
  v0 = objc_opt_self();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = [v0 localizedStringFromDate:isa dateStyle:2 timeStyle:2];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

BOOL sub_100040F78(void *a1, uint64_t *a2)
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

void *sub_100040FA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_100040FD4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000410C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100049DE4(a1);

  *a2 = v3;
  return result;
}

Swift::Int sub_100041108()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100041174()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000411B4()
{
  type metadata accessor for UserFileManager();
  v0 = swift_allocObject();
  result = sub_1000488C8();
  qword_100098B08 = v0;
  return result;
}

uint64_t sub_1000411F0()
{
  v0 = swift_allocObject();
  sub_1000488C8();
  return v0;
}

uint64_t *sub_100041228()
{
  if (qword_1000971D0 != -1)
  {
    swift_once();
  }

  return &qword_100098B08;
}

void *sub_100041278()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
    *(v0 + 16) = &_swiftEmptyDictionarySingleton;
  }

  return v1;
}

uint64_t sub_1000412B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t (*sub_1000412C8(void **a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100041278();
  return sub_100041310;
}

uint64_t sub_100041310(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
}

uint64_t sub_100041320@<X0>(uint64_t a1@<X8>)
{
  v28[1] = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v28 - v12;
  v14 = [objc_opt_self() processInfo];
  v15 = [v14 environment];

  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v16 + 16))
  {

LABEL_7:
    v25 = [objc_opt_self() defaultManager];
    v26 = [v25 URLsForDirectory:5 inDomains:1];

    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v27 + 16))
    {
      (*(v7 + 16))(v11, v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      (*(v7 + 32))(v13, v11, v6);
      URL.appendingPathComponent(_:isDirectory:)();
      return (*(v7 + 8))(v13, v6);
    }

    else
    {

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    return result;
  }

  sub_1000327AC(0xD00000000000001BLL, 0x800000010007AA40);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

  v19 = sub_100039094();
  (*(v2 + 16))(v5, v19, v1);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Under test appContainerURL to tmp", v22, 2u);
  }

  (*(v2 + 8))(v5, v1);
  v23 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();
}

void *sub_100041768@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100041320(a1);
  result = xpc_copy_entitlement_for_self();
  if (result)
  {
    if (xpc_string_get_string_ptr(result))
    {
      v9[0] = String.init(cString:)();
      v9[1] = v8;
      (*(v3 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
      sub_100038560();
      URL.append<A>(path:directoryHint:)();
      swift_unknownObjectRelease();
      (*(v3 + 8))(v6, v2);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1000418E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_10004197C(a1, a2, a3, a4, &v9);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_10004197C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25 = a5;
  v26 = type metadata accessor for Logger();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v26);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PropertyListDecoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v5)
  {
  }

  v13 = sub_100004124();
  (*(v6 + 16))(v9, v13, v26);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v16 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_1000034B8(v18, v19, &v27);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v21;
    *v17 = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error decoding %s: %@", v16, 0x16u);
    sub_100006CAC(v17, &qword_100093F70, &qword_1000730D0);

    sub_1000036EC(v24);
  }

  (*(v6 + 8))(v9, v26);
  result = swift_willThrow();
  *v25 = v5;
  return result;
}

uint64_t sub_100041C38()
{
  v0 = objc_autoreleasePoolPush();
  v1 = type metadata accessor for PropertyListEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  objc_autoreleasePoolPop(v0);
  return v4;
}

uint64_t sub_100041CE4()
{
  v1 = *(v0 + 24);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t sub_100041D50(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = type metadata accessor for Logger();
  v82 = *(v7 - 8);
  v83 = v7;
  v8 = *(v82 + 64);
  v9 = __chkstk_darwin(v7);
  v81 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v80 = (&v77 - v11);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v79 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v77 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v77 - v21;
  __chkstk_darwin(v20);
  v24 = &v77 - v23;
  v25 = *(*v3 + 224);
  v78 = a3;
  v25(a1, a2, a3);
  v26 = objc_opt_self();
  v27 = [v26 defaultManager];
  URL.path.getter();
  v28 = String._bridgeToObjectiveC()();

  v29 = [v27 fileExistsAtPath:v28];

  if (!v29)
  {
    (*(v13 + 8))(v24, v12);
    return 1;
  }

  v30 = [v26 defaultManager];
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v84 = 0;
  v34 = [v30 removeItemAtURL:v32 error:&v84];

  if (v34)
  {
    v35 = v84;
    v36 = sub_100004124();
    v37 = v82;
    v38 = v80;
    (*(v82 + 16))(v80, v36, v83);
    v39 = v13;
    v40 = *(v13 + 16);
    v41 = v12;
    v40(v22, v24, v12);
    v40(v19, v78, v12);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v84 = v81;
      *v44 = 136315394;
      sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v79) = v43;
      v46 = v45;
      v48 = v47;
      v49 = *(v39 + 8);
      v49(v22, v41);
      v50 = sub_1000034B8(v46, v48, &v84);

      *(v44 + 4) = v50;
      *(v44 + 12) = 2080;
      v51 = URL.lastPathComponent.getter();
      v53 = v52;
      v49(v19, v41);
      v54 = sub_1000034B8(v51, v53, &v84);

      *(v44 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v42, v79, "Deleted record %s from %s", v44, 0x16u);
      swift_arrayDestroy();

      (*(v37 + 8))(v80, v83);
      v49(v24, v41);
    }

    else
    {

      v75 = *(v39 + 8);
      v75(v19, v12);
      v75(v22, v12);
      (*(v37 + 8))(v38, v83);
      v75(v24, v12);
    }

    return 1;
  }

  v56 = v84;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v57 = sub_100004124();
  v58 = v81;
  v59 = v82;
  (*(v82 + 16))(v81, v57, v83);
  v60 = v79;
  v61 = v12;
  (*(v13 + 16))(v79, v24, v12);
  swift_errorRetain();
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    LODWORD(v78) = v63;
    v65 = v64;
    v77 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v84 = v80;
    *v65 = 136315394;
    sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL);
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v60;
    v68 = v66;
    v70 = v69;
    v71 = *(v13 + 8);
    v71(v67, v61);
    v72 = sub_1000034B8(v68, v70, &v84);

    *(v65 + 4) = v72;
    *(v65 + 12) = 2112;
    swift_errorRetain();
    v73 = _swift_stdlib_bridgeErrorToNSError();
    *(v65 + 14) = v73;
    v74 = v77;
    *v77 = v73;
    _os_log_impl(&_mh_execute_header, v62, v78, "Could not delete record %s due to %@", v65, 0x16u);
    sub_100006CAC(v74, &qword_100093F70, &qword_1000730D0);

    sub_1000036EC(v80);

    (*(v59 + 8))(v81, v83);
    v71(v24, v61);
  }

  else
  {

    v76 = *(v13 + 8);
    v76(v60, v61);
    (*(v59 + 8))(v58, v83);
    v76(v24, v61);
  }

  return 0;
}

uint64_t sub_100042588(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v24 = a2;
  v25 = a5;
  v26 = a3;
  v23 = a1;
  v8 = type metadata accessor for URL();
  v22 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v6 + 24);
  (*(v12 + 16))(v14, v23, a4);
  (*(v9 + 16))(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v8);
  v15 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v16 = (v13 + *(v9 + 80) + v15) & ~*(v9 + 80);
  v17 = swift_allocObject();
  v18 = v25;
  *(v17 + 2) = a4;
  *(v17 + 3) = v18;
  *(v17 + 4) = v6;
  (*(v12 + 32))(&v17[v15], v14, a4);
  (*(v9 + 32))(&v17[v16], &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v17[v16 + v10] = v26;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100049028;
  *(v19 + 24) = v17;
  aBlock[4] = sub_100018FE4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001437C;
  aBlock[3] = &unk_10008B408;
  v20 = _Block_copy(aBlock);

  dispatch_sync(v27, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100042894(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v67 = a6;
  v64 = a4;
  v56 = a3;
  v54 = a2;
  v59 = a1;
  v62 = *(a5 - 8);
  v63 = *(v62 + 64);
  __chkstk_darwin(a1);
  v61 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v52 - 1);
  v10 = *(v9 + 64);
  __chkstk_darwin(v52);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for URL();
  v55 = *(v66 - 8);
  v13 = v55;
  v14 = *(v55 + 64);
  v15 = __chkstk_darwin(v66);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v49 - v19;
  __chkstk_darwin(v18);
  v65 = &v49 - v21;
  v22 = *(a6 + 8);
  v51 = (*(v22 + 32))(a5, v22);
  v23 = *(v22 + 24);
  v53 = a5;
  v23(a5, v22);
  v24 = URL.path(percentEncoded:)(1);
  v25 = v13 + 8;
  v26 = *(v13 + 8);
  v27 = v17;
  v28 = v66;
  v26(v27, v66);
  v57 = v26;
  v58 = v25;
  v68 = v24;
  v29 = v52;
  (*(v9 + 104))(v12, enum case for URL.DirectoryHint.isDirectory(_:), v52);
  sub_100038560();
  URL.appending<A>(path:directoryHint:)();
  (*(v9 + 8))(v12, v29);

  v30 = v65;
  sub_100043440(v65);

  v50 = v20;
  v26(v20, v28);
  v31 = URL.lastPathComponent.getter();
  v56 = (*(*v59 + 248))(v31);

  v32 = v53;
  v33 = v54;
  v34 = (*(v67 + 56))(v53);
  v52 = [v34 recordID];

  v35 = swift_allocObject();
  swift_weakInit();
  v37 = v61;
  v36 = v62;
  (*(v62 + 16))(v61, v33, v32);
  v38 = v55;
  v39 = v66;
  (*(v55 + 16))(v20, v30, v66);
  v40 = v36;
  v41 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v42 = (v63 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (*(v38 + 80) + v42 + 8) & ~*(v38 + 80);
  v44 = swift_allocObject();
  v45 = v67;
  *(v44 + 16) = v32;
  *(v44 + 24) = v45;
  (*(v40 + 32))(v44 + v41, v37, v32);
  *(v44 + v42) = v35;
  (*(v38 + 32))(v44 + v43, v50, v39);
  v46 = *(*v56 + 912);

  v47 = v52;
  v46(v52, v64, sub_10004A108, v44);

  v57(v65, v39);
}

uint64_t sub_100042E00(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v50 = a3;
  v51 = a4;
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(a1);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v49 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v49 - v22;
  if (a1)
  {
    swift_errorRetain();
    v24 = sub_100004124();
    v52 = v17;
    v53 = v16;
    (*(v17 + 16))(v23, v24, v16);
    (*(v9 + 16))(v15, a2, a5);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v55[0] = v51;
      *v27 = 136315394;
      v28 = (*(*(v54 + 8) + 32))(a5);
      v30 = v29;
      (*(v9 + 8))(v15, a5);
      v31 = sub_1000034B8(v28, v30, v55);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2112;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v32;
      v33 = v50;
      *v50 = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error removing record %s from cloud %@", v27, 0x16u);
      sub_100006CAC(v33, &qword_100093F70, &qword_1000730D0);

      sub_1000036EC(v51);
    }

    else
    {

      (*(v9 + 8))(v15, a5);
    }

    return (*(v52 + 8))(v23, v53);
  }

  else
  {
    v34 = sub_100004124();
    (*(v17 + 16))(v21, v34, v16);
    v35 = *(v9 + 16);
    v49[1] = a2;
    v35(v13, a2, a5);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v49[0] = a5;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v53 = v16;
      v40 = v39;
      v41 = swift_slowAlloc();
      v55[0] = v41;
      *v40 = 136315138;
      v42 = (*(*(v54 + 8) + 32))(a5);
      v52 = v17;
      v44 = v43;
      (*(v9 + 8))(v13, a5);
      v45 = sub_1000034B8(v42, v44, v55);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "Removed record %s from cloud", v40, 0xCu);
      sub_1000036EC(v41);

      (*(v52 + 8))(v21, v53);
    }

    else
    {

      (*(v9 + 8))(v13, a5);
      (*(v17 + 8))(v21, v16);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v47 = result;
      v48 = (*(*(v54 + 8) + 32))(v49[0]);
      (*(*v47 + 144))(v48);
    }
  }

  return result;
}

uint64_t sub_1000433D0()
{
  v1 = *(v0 + 24);
  type metadata accessor for URL();
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_100043440@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v84 = *(v2 - 8);
  v85 = v2;
  v3 = *(v84 + 64);
  v4 = __chkstk_darwin(v2);
  v81 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v80 = (&v77 - v6);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v79 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v78 = &v77 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v77 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v77 - v18;
  __chkstk_darwin(v17);
  v21 = &v77 - v20;
  URL.appendingPathComponent(_:)();
  URL.appendingPathComponent(_:)();
  URL.appendingPathComponent(_:)();
  v22 = *(v8 + 8);
  v22(v16, v7);
  URL.appendingPathExtension(_:)();
  v83 = v22;
  v22(v19, v7);
  sub_100004890(0, &qword_100093C78, NSFileManager_ptr);
  sub_1000560C8();
  sub_100056140(a1);

  v23 = objc_opt_self();
  v24 = [v23 defaultManager];
  URL.path(percentEncoded:)(1);
  v25 = String._bridgeToObjectiveC()();

  v26 = [v24 fileExistsAtPath:v25];

  v28 = [v23 defaultManager];
  v82 = v21;
  if (v26)
  {
    URL._bridgeToObjectiveC()(v27);
    v30 = v29;
    URL._bridgeToObjectiveC()(v31);
    v33 = v32;
    v86 = 0;
    v34 = [v28 replaceItemAtURL:v30 withItemAtURL:v32 backupItemName:0 options:0 resultingItemURL:0 error:&v86];

    v35 = v86;
    if ((v34 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    URL._bridgeToObjectiveC()(v27);
    v53 = v52;
    URL._bridgeToObjectiveC()(v54);
    v56 = v55;
    v86 = 0;
    v57 = [v28 moveItemAtURL:v53 toURL:v55 error:&v86];

    v35 = v86;
    if (!v57)
    {
LABEL_3:
      v36 = v35;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v37 = sub_100004124();
      v39 = v84;
      v38 = v85;
      v40 = v81;
      (*(v84 + 16))(v81, v37, v85);
      v41 = v79;
      (*(v8 + 16))(v79, a1, v7);
      swift_errorRetain();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v86 = v80;
        *v44 = 136315394;
        sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        v83(v41, v7);
        v48 = sub_1000034B8(v45, v47, &v86);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2112;
        swift_errorRetain();
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 14) = v49;
        v50 = v78;
        *v78 = v49;
        _os_log_impl(&_mh_execute_header, v42, v43, "Unable to tombstone record to %s due to %@", v44, 0x16u);
        sub_100006CAC(v50, &qword_100093F70, &qword_1000730D0);

        sub_1000036EC(v80);

        (*(v39 + 8))(v81, v85);
        return (v83)(v82, v7);
      }

      else
      {

        v74 = v41;
        v75 = v83;
        v83(v74, v7);
        (*(v39 + 8))(v40, v38);
        return v75(v82, v7);
      }
    }
  }

  v58 = v35;
  v59 = sub_100004124();
  v60 = v84;
  v61 = v85;
  v62 = v80;
  (*(v84 + 16))(v80, v59, v85);
  v63 = v78;
  (*(v8 + 16))(v78, a1, v7);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v86 = v67;
    *v66 = 136315138;
    sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL);
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v69;
    v71 = v63;
    v72 = v83;
    v83(v71, v7);
    v73 = sub_1000034B8(v68, v70, &v86);

    *(v66 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v64, v65, "Tombstoned record to %s", v66, 0xCu);
    sub_1000036EC(v67);

    (*(v84 + 8))(v80, v61);
    return v72(v82, v7);
  }

  else
  {

    v76 = v83;
    v83(v63, v7);
    (*(v60 + 8))(v62, v61);
    return v76(v82, v7);
  }
}

uint64_t sub_100043CD4(char *a1, uint64_t a2, uint64_t a3)
{
  v155 = a3;
  v146 = type metadata accessor for Optional();
  v140 = *(v146 - 8);
  v5 = *(v140 + 64);
  v6 = __chkstk_darwin(v146);
  v154 = &v124 - v7;
  v141 = *(a2 - 8);
  v8 = *(v141 + 64);
  v9 = __chkstk_darwin(v6);
  v145 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v144 = &v124 - v11;
  v12 = sub_10000A45C(&qword_100093A38, &qword_100073E40);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v124 - v14;
  v16 = type metadata accessor for URL();
  v150 = *(v16 - 8);
  v17 = *(v150 + 64);
  v18 = __chkstk_darwin(v16);
  v153 = (&v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v22 = &v124 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v124 - v24;
  v26 = __chkstk_darwin(v23);
  v139 = &v124 - v27;
  v28 = __chkstk_darwin(v26);
  v129 = &v124 - v29;
  __chkstk_darwin(v28);
  v157 = &v124 - v30;
  v148 = type metadata accessor for Logger();
  v31 = *(v148 - 8);
  v32 = v31[8];
  v33 = __chkstk_darwin(v148);
  v159 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v125 = &v124 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v124 - v38;
  __chkstk_darwin(v37);
  v160 = (&v124 - v40);
  v161 = a2;
  v41 = Array.init()();
  v165 = v41;
  v42 = [objc_opt_self() defaultManager];
  v43 = a1;
  v44 = sub_100056704();

  v158 = v44;
  if (v44)
  {
    v130 = v39;
    v131 = v25;
    v45 = sub_100004124();
    v46 = v31[2];
    v134 = v45;
    v136 = v31 + 2;
    v133 = v46;
    (v46)(v160);
    v47 = *(v150 + 16);
    v48 = v157;
    v159 = v43;
    v135 = v150 + 16;
    v132 = v47;
    v47(v157, v43, v16);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    v51 = os_log_type_enabled(v49, v50);
    v147 = v16;
    if (v51)
    {
      v52 = swift_slowAlloc();
      v53 = v31;
      v153 = swift_slowAlloc();
      *&v164[0] = v153;
      *v52 = 136315138;
      sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v22;
      v57 = v56;
      v58 = v48;
      v60 = v150 + 8;
      v59 = *(v150 + 8);
      v59(v58, v147);
      v61 = sub_1000034B8(v54, v57, v164);
      v22 = v55;

      *(v52 + 4) = v61;
      v62 = v59;
      v16 = v147;
      v63 = v50;
      v64 = v60;
      _os_log_impl(&_mh_execute_header, v49, v63, "Enumerate: %s", v52, 0xCu);
      sub_1000036EC(v153);

      v65 = v53[1];
      v138 = v53 + 1;
      v137 = v65;
      v65(v160, v148);
    }

    else
    {

      v64 = v150 + 8;
      v62 = *(v150 + 8);
      v62(v48, v16);
      v80 = v31[1];
      v138 = v31 + 1;
      v137 = v80;
      v66 = (v80)(v160, v148);
    }

    v81 = v139;
    v82 = v129;
    v157 = (v150 + 56);
    v153 = (v150 + 48);
    v150 += 32;
    v149 = (v141 + 48);
    v143 = (v141 + 32);
    v142 = (v141 + 16);
    v141 += 8;
    v140 += 8;
    v66.n128_u64[0] = 136315394;
    v126 = v66;
    v151 = v15;
    v152 = v22;
    v160 = v62;
    while (1)
    {
      if ([v158 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v162 = 0u;
        v163 = 0u;
      }

      v164[0] = v162;
      v164[1] = v163;
      if (!*(&v163 + 1))
      {
        break;
      }

      v85 = swift_dynamicCast();
      (*v157)(v15, v85 ^ 1u, 1, v16);
      if ((*v153)(v15, 1, v16) == 1)
      {
        goto LABEL_22;
      }

      (*v150)(v82, v15, v16);
      URL.deletingPathExtension()();
      v86 = v64;
      v87 = URL.lastPathComponent.getter();
      v89 = v88;
      v90 = v160;
      v160(v81, v16);
      v91 = v82;
      v92 = v154;
      v93 = v16;
      v94 = v161;
      (*(*v156 + 192))(v87, v89, v159, v161, v155);
      if ((*v149)(v92, 1, v94) == 1)
      {
        (*v140)(v92, v146);
        v82 = v91;
        if (URL.hasDirectoryPath.getter())
        {
          v16 = v147;
          v64 = v86;
          v160(v91, v147);

          v15 = v151;
          v22 = v152;
        }

        else
        {
          v95 = v130;
          v133(v130, v134, v148);
          v96 = v131;
          v16 = v147;
          v132(v131, v159, v147);

          v97 = Logger.logObject.getter();
          v98 = static os_log_type_t.info.getter();

          v99 = os_log_type_enabled(v97, v98);
          v15 = v151;
          if (v99)
          {
            v100 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            *&v164[0] = v128;
            *v100 = v126.n128_u32[0];
            v101 = sub_1000034B8(v87, v89, v164);
            v127 = v98;
            v102 = v101;

            *(v100 + 4) = v102;
            *(v100 + 12) = 2080;
            sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL);
            v103 = dispatch thunk of CustomStringConvertible.description.getter();
            v105 = v104;
            v106 = v16;
            v107 = v160;
            v160(v96, v106);
            v108 = sub_1000034B8(v103, v105, v164);
            v64 = v86;

            *(v100 + 14) = v108;
            v109 = v107;
            v16 = v147;
            _os_log_impl(&_mh_execute_header, v97, v127, "Could not read item %s for records at %s", v100, 0x16u);
            swift_arrayDestroy();

            v82 = v129;
          }

          else
          {

            v64 = v86;
            v109 = v160;
            v160(v96, v16);
          }

          v137(v95, v148);
          v109(v82, v16);
          v22 = v152;
          v81 = v139;
        }
      }

      else
      {

        v83 = v144;
        v84 = v161;
        (*v143)(v144, v92, v161);
        (*v142)(v145, v83, v84);
        type metadata accessor for Array();
        Array.append(_:)();
        (*v141)(v83, v84);
        v90(v91, v93);
        v82 = v91;
        v15 = v151;
        v22 = v152;
        v64 = v86;
        v16 = v93;
      }
    }

    sub_100006CAC(v164, &qword_100092CB8, &qword_100072C40);
    (*v157)(v15, 1, 1, v16);
LABEL_22:
    sub_100006CAC(v15, &qword_100093A38, &qword_100073E40);
    v110 = v125;
    v133(v125, v134, v148);
    v111 = v165;
    v132(v22, v159, v16);

    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *&v164[0] = v115;
      *v114 = 134218242;
      *(v114 + 4) = Array.count.getter();

      *(v114 + 12) = 2080;
      sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL);
      v116 = dispatch thunk of CustomStringConvertible.description.getter();
      v117 = v22;
      v118 = v110;
      v120 = v119;
      v160(v117, v16);
      v121 = sub_1000034B8(v116, v120, v164);

      *(v114 + 14) = v121;
      _os_log_impl(&_mh_execute_header, v112, v113, "Found %ld records at %s", v114, 0x16u);
      sub_1000036EC(v115);

      v122 = v118;
    }

    else
    {

      v160(v22, v16);
      v122 = v110;
    }

    v137(v122, v148);
  }

  else
  {
    v67 = v41;
    v68 = sub_100004124();
    (v31[2])(v159, v68, v148);
    v69 = v153;
    (*(v150 + 16))(v153, v43, v16);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = v31;
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v164[0] = v74;
      *v73 = 136315138;
      sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v69;
      v78 = v77;
      (*(v150 + 8))(v76, v16);
      v79 = sub_1000034B8(v75, v78, v164);

      *(v73 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v70, v71, "Could not enumerate %s", v73, 0xCu);
      sub_1000036EC(v74);

      (v72[1])(v159, v148);
    }

    else
    {

      (*(v150 + 8))(v69, v16);
      (v31[1])(v159, v148);
    }

    return v67;
  }

  return v111;
}

uint64_t sub_100044DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v5 + 224))(a1, a2, a3);
  (*(*v5 + 200))(v15, a3, a4, a5);
  return (*(v12 + 8))(v15, v11);
}

void sub_100044F1C()
{
  v1 = objc_autoreleasePoolPush();
  v2 = *(v0 + 24);
  type metadata accessor for Optional();
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v1);
}

uint64_t sub_100044FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v32 = a4;
  v33 = a2;
  v31 = *(a2 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  if (SystemInfo.deviceFirstUnlocked.getter())
  {
    v16 = Data.init(contentsOf:options:)();
    if (v4)
    {

      return (*(v31 + 56))(v32, 1, 1, v33);
    }

    else
    {
      v23 = *(*a1 + 128);
      v24 = *(a3 + 8);
      v25 = *(a3 + 16);
      v29 = v16;
      v30 = v17;
      v26 = v33;
      v23();
      sub_1000066CC(v29, v30);
      v27 = v31;
      v28 = v32;
      (*(v31 + 32))(v32, v9, v26);
      return (*(v27 + 56))(v28, 0, 1, v26);
    }
  }

  else
  {
    v19 = sub_100004124();
    (*(v11 + 16))(v15, v19, v10);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "record call failed because in device is in beforeFirstUnlock state", v22, 2u);
    }

    (*(v11 + 8))(v15, v10);
    return (*(v31 + 56))(v32, 1, 1, v33);
  }
}

uint64_t sub_10004549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v160 = a6;
  v150 = a4;
  v154 = a3;
  v163 = a1;
  v164 = a2;
  v149 = *(a5 - 8);
  v7 = *(v149 + 64);
  v8 = __chkstk_darwin(a1);
  v148 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v9;
  __chkstk_darwin(v8);
  v147 = &v134 - v10;
  v11 = type metadata accessor for URLResourceValues();
  v151 = *(v11 - 8);
  v12 = *(v151 + 64);
  __chkstk_darwin(v11);
  v156 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v145 = &v134 - v21;
  v22 = __chkstk_darwin(v20);
  v155 = &v134 - v23;
  __chkstk_darwin(v22);
  v157 = &v134 - v24;
  v25 = type metadata accessor for URL.DirectoryHint();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for URL();
  v153 = *(v161 - 8);
  v30 = *(v153 + 64);
  v31 = __chkstk_darwin(v161);
  v162 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v152 = &v134 - v34;
  v144 = v35;
  __chkstk_darwin(v33);
  v158 = &v134 - v36;
  if (SystemInfo.deviceFirstUnlocked.getter())
  {
    v142 = v14;
    v143 = v15;
    v37 = isa;
    v38 = v160;
    result = (*(*v163 + 136))(v164, a5, *(v160 + 8), *(v160 + 16));
    if (v37)
    {
      return result;
    }

    v138 = 0;
    v141 = v11;
    v41 = result;
    v42 = v40;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000066CC(v41, v42);
    v43 = v152;
    (*(v38 + 24))(a5, v38);
    v44 = URL.path(percentEncoded:)(1);
    v139 = *(v153 + 8);
    v140 = v153 + 8;
    v139(v43, v161);
    v175 = v44;
    (*(v26 + 104))(v29, enum case for URL.DirectoryHint.isDirectory(_:), v25);
    sub_100038560();
    v45 = v158;
    URL.appending<A>(path:directoryHint:)();
    (*(v26 + 8))(v29, v25);

    sub_100004890(0, &qword_100093C78, NSFileManager_ptr);
    sub_1000560C8();
    sub_100056140(v45);

    v46 = *(v38 + 32);
    v134 = a5;
    v47 = v46(a5, v38);
    v48 = v162;
    (*(*v163 + 224))(v47);

    v49 = sub_100004124();
    v51 = v142;
    v50 = v143;
    v52 = *(v143 + 16);
    v53 = v157;
    v136 = v49;
    v137 = v143 + 16;
    v135 = v52;
    (v52)(v157);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v175._countAndFlagsBits = v57;
      *v56 = 136315138;
      swift_beginAccess();
      sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = sub_1000034B8(v58, v59, &v175._countAndFlagsBits);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "Writing record to file: %s", v56, 0xCu);
      sub_1000036EC(v57);

      v48 = v162;

      v61 = *(v50 + 8);
      v62 = v157;
    }

    else
    {

      v61 = *(v50 + 8);
      v62 = v53;
    }

    v157 = v61;
    (v61)(v62, v51);
    v67 = v155;
    v68 = v156;
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    swift_beginAccess();
    URL._bridgeToObjectiveC()(v69);
    v71 = v70;
    v72 = isa;
    v73 = [(objc_class *)isa writeToURL:v70 atomically:1];

    if (v73)
    {
      v135(v67, v136, v51);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v175._countAndFlagsBits = v77;
        *v76 = 136315138;
        sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL);
        v78 = dispatch thunk of CustomStringConvertible.description.getter();
        v80 = sub_1000034B8(v78, v79, &v175._countAndFlagsBits);

        *(v76 + 4) = v80;
        v68 = v156;
        _os_log_impl(&_mh_execute_header, v74, v75, "Wrote record to file: %s", v76, 0xCu);
        sub_1000036EC(v77);

        v48 = v162;

        v81 = v155;
      }

      else
      {

        v81 = v67;
      }

      (v157)(v81, v51);
    }

    sub_10000A45C(&qword_100093C90, &qword_100074270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100072BE0;
    *(inited + 32) = NSFileProtectionKey;
    *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v83 = NSFileProtectionKey;
    v84 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v85 = sub_100049E70(inited);
    swift_setDeallocating();
    sub_100006CAC(inited + 32, &qword_100093C98, &qword_100074278);
    v86 = [objc_opt_self() defaultManager];
    sub_1000465EC(v85);

    type metadata accessor for FileAttributeKey(0);
    sub_1000022E4(&qword_100093CA0, type metadata accessor for FileAttributeKey);
    v87 = Dictionary._bridgeToObjectiveC()().super.isa;

    URL.path.getter();
    v88 = v48;
    v89 = String._bridgeToObjectiveC()();

    v175._countAndFlagsBits = 0;
    v90 = [v86 setAttributes:v87 ofItemAtPath:v89 error:&v175];

    countAndFlagsBits = v175._countAndFlagsBits;
    if (!v90)
    {
      v95 = v175._countAndFlagsBits;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v151 + 8))(v68, v141);
      goto LABEL_18;
    }

    swift_beginAccess();
    v92 = countAndFlagsBits;
    v93 = v138;
    URL.setResourceValues(_:)();
    v94 = v141;
    if (v93)
    {
      swift_endAccess();

      (*(v151 + 8))(v68, v94);
LABEL_18:
      v96 = v161;
      v97 = v139;
      v139(v158, v161);
      return v97(v88, v96);
    }

    swift_endAccess();
    v98 = v161;
    if ((v150 & 2) == 0)
    {

      (*(v151 + 8))(v68, v94);
      v99 = v139;
      v139(v158, v98);
      v100 = v88;
      return v99(v100, v98);
    }

    v155 = *(v149 + 16);
    (v155)(v147, v164, v134);
    sub_10000A45C(&qword_100093CA8, &qword_100074280);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v151 + 8))(v68, v94);
      v99 = v139;
      v139(v158, v98);
      v174 = 0;
      v173 = 0u;
      v172 = 0u;
      sub_100006CAC(&v172, &qword_100093CB0, &qword_100074288);
      v100 = v162;
      return v99(v100, v98);
    }

    v138 = 0;
    sub_100049F7C(&v172, &v175);
    v101 = URL.lastPathComponent.getter();
    v102 = (*(*v163 + 248))(v101);

    v103 = v145;
    v104 = v142;
    v135(v145, v136, v142);

    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();
    v150 = v102;

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v171 = v147;
      *v107 = 136315394;
      v108 = URL.lastPathComponent.getter();
      v110 = sub_1000034B8(v108, v109, &v171);

      v112 = v150;
      *(v107 + 4) = v110;
      *(v107 + 12) = 2080;
      (*(*v112 + 264))(&v165, v111);
      v170[0] = v167;
      v168 = v165;
      v169 = v166;
      v172 = v165;
      v173 = v166;
      v174 = v167;
      sub_10004A080();
      v113 = dispatch thunk of CustomStringConvertible.description.getter();
      v115 = v114;
      sub_100034994(&v168);
      sub_100034994(&v169);
      sub_100006CAC(v170, &qword_100094180, &qword_100074290);
      v116 = sub_1000034B8(v113, v115, &v171);

      *(v107 + 14) = v116;
      _os_log_impl(&_mh_execute_header, v105, v106, "Uploading record to cloud: %s for %s", v107, 0x16u);
      swift_arrayDestroy();
    }

    (v157)(v103, v104);
    v117 = v176;
    v118 = v177;
    sub_1000078C8(&v175, v176);
    v157 = (*(v118 + 56))(v117, v118);
    v119 = v152;
    v120 = v153;
    (*(v153 + 16))(v152, v154, v161);
    v121 = v134;
    (v155)(v148, v164, v134);
    v122 = (*(v120 + 80) + 40) & ~*(v120 + 80);
    v123 = v149;
    v124 = (v144 + *(v149 + 80) + v122) & ~*(v149 + 80);
    v125 = swift_allocObject();
    v126 = v160;
    *(v125 + 2) = v121;
    *(v125 + 3) = v126;
    *(v125 + 4) = v163;
    v127 = v119;
    v128 = v161;
    (*(v120 + 32))(&v125[v122], v127, v161);
    (*(v123 + 32))(&v125[v124], v148, v121);
    v129 = *(*v150 + 896);

    v130 = v157;
    v129(v157, 0, sub_100049F94, v125);

    (*(v151 + 8))(v156, v141);
    v131 = v128;
    v132 = v128;
    v133 = v139;
    v139(v158, v132);
    sub_1000036EC(&v175._countAndFlagsBits);
    return v133(v162, v131);
  }

  else
  {
    v63 = sub_100004124();
    (*(v15 + 16))(v19, v63, v14);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "store call failed because in device is in beforeFirstUnlock state", v66, 2u);
    }

    (*(v15 + 8))(v19, v14);
    sub_100049E1C();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1000465EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000A45C(&qword_100093CC0, &qword_100074298);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v27 = *(*(a1 + 56) + v11);
    v13 = v27;
    type metadata accessor for FileProtectionType(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_10000C848((v28 + 8), v26);
    sub_10000C848(v26, v28);
    v16 = v1[5];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v17 = Hasher._finalize()();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v6[8 * (v19 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *&v6[8 * v20];
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*&v6[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v14;
    result = sub_10000C848(v28, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100046894(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (**a7)(void))
{
  v60 = a3;
  v61 = a7;
  v59 = a4;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for CloudPairedDeviceRecord();
  v15 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v63 = (v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v64 = (v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v24 = v57 - v23;
  __chkstk_darwin(v22);
  v26 = v57 - v25;
  v27 = sub_100004124();
  v65 = v18;
  v28 = *(v18 + 16);
  if (a2)
  {
    v28(v24, v27, v17);
    (*(v11 + 16))(v14, a5, a6);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_100038A50(a1, 1);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      LODWORD(v63) = v30;
      v32 = v31;
      v33 = swift_slowAlloc();
      v62 = v17;
      v34 = v33;
      v64 = swift_slowAlloc();
      v66 = v64;
      *v32 = 136315394;
      v35 = v61[4](a6);
      v37 = v36;
      (*(v11 + 8))(v14, a6);
      v38 = sub_1000034B8(v35, v37, &v66);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2112;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v39;
      *v34 = v39;
      _os_log_impl(&_mh_execute_header, v29, v63, "Error updating cloud with record %s: %@", v32, 0x16u);
      sub_100006CAC(v34, &qword_100093F70, &qword_1000730D0);

      sub_1000036EC(v64);

      return (*(v65 + 8))(v24, v62);
    }

    else
    {

      (*(v11 + 8))(v14, a6);
      return (*(v65 + 8))(v24, v17);
    }
  }

  else
  {
    v57[0] = v27;
    v57[1] = v28;
    (v28)(v26);
    v41 = a1;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    v61 = a1;
    sub_100038A50(a1, 0);
    v44 = os_log_type_enabled(v42, v43);
    v62 = v17;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v66 = v46;
      *v45 = 136315138;
      v47 = [v41 recordID];
      v48 = v41;
      v49 = [v47 recordName];

      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = sub_1000034B8(v50, v52, &v66);

      *(v45 + 4) = v53;
      v41 = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "Updating cloud record file: %s", v45, 0xCu);
      sub_1000036EC(v46);

      v17 = v62;
    }

    (*(v65 + 8))(v26, v17);
    v54 = v63;
    sub_10003B080(v41, v63);
    v55 = *(*v60 + 208);
    v56 = sub_1000022E4(&qword_100093950, type metadata accessor for CloudPairedDeviceRecord);
    v55(v54, v59, 1, v58, v56);
    sub_100007124(v54);
    return notify_post("com.apple.bluetoothuser.cloudChanged");
  }
}

uint64_t sub_100047098(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = *(v1 + 24);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100049178;
  *(v9 + 24) = v8;
  aBlock[4] = sub_100038A58;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001437C;
  aBlock[3] = &unk_10008B480;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_1000472A8(void *a1)
{
  v2 = sub_10000A45C(&qword_100093A38, &qword_100073E40);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v68 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v68 - v12;
  __chkstk_darwin(v11);
  v15 = &v68 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v87 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v76 = &v68 - v22;
  __chkstk_darwin(v21);
  v24 = &v68 - v23;
  v25 = sub_100004124();
  v26 = v17[2];
  v85 = v17 + 2;
  v86 = v25;
  v84 = v26;
  (v26)(v24);
  v27 = v7[2];
  v89 = a1;
  v75 = v7 + 2;
  v74 = v27;
  v27(v15, a1, v6);
  v28 = Logger.logObject.getter();
  LODWORD(v88) = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v28, v88);
  v79 = v17;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v81 = v16;
    v31 = v30;
    v82 = swift_slowAlloc();
    *&v92[0] = v82;
    *v31 = 136315138;
    sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v7;
    v35 = v34;
    v83 = v33[1];
    v83(v15, v6);
    v36 = sub_1000034B8(v32, v35, v92);
    v7 = v33;

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v28, v88, "Obliterating all user's local storage from %s", v31, 0xCu);
    sub_1000036EC(v82);

    v16 = v81;

    v82 = v79[1];
  }

  else
  {

    v83 = v7[1];
    v83(v15, v6);
    v82 = v17[1];
  }

  (v82)(v24, v16);
  v37 = objc_opt_self();
  v38 = [v37 defaultManager];
  v39 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v41 = v77;
  v42 = v76;
  v89 = v39;
  if (v39)
  {
    v71 = 0;
    v88 = (v7 + 7);
    v80 = (v7 + 4);
    v81 = (v7 + 6);
    ++v79;
    v78 = v7 + 1;
    *&v40 = 136315138;
    v69 = v40;
    *&v40 = 138412290;
    v68 = v40;
    v70 = v5;
    v73 = v37;
    v72 = v13;
    while (1)
    {
      if ([v89 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v90 = 0u;
        v91 = 0u;
      }

      v92[0] = v90;
      v92[1] = v91;
      if (!*(&v91 + 1))
      {

        sub_100006CAC(v92, &qword_100092CB8, &qword_100072C40);
        (*v88)(v5, 1, 1, v6);
        goto LABEL_21;
      }

      v43 = swift_dynamicCast();
      (*v88)(v5, v43 ^ 1u, 1, v6);
      if ((*v81)(v5, 1, v6) == 1)
      {
        break;
      }

      (*v80)(v13, v5, v6);
      v44 = [v37 defaultManager];
      URL._bridgeToObjectiveC()(v45);
      v47 = v46;
      *&v92[0] = 0;
      v48 = [v44 removeItemAtURL:v46 error:v92];

      v49 = *&v92[0];
      if (v48)
      {
        v84(v42, v86, v16);
        v74(v41, v13, v6);
        v50 = v49;
        v51 = Logger.logObject.getter();
        v52 = v16;
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v51, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *&v92[0] = v55;
          *v54 = v69;
          sub_1000022E4(&qword_1000937F0, &type metadata accessor for URL);
          v56 = dispatch thunk of CustomStringConvertible.description.getter();
          v58 = v57;
          v59 = v83;
          v83(v77, v6);
          v60 = sub_1000034B8(v56, v58, v92);
          v41 = v77;

          *(v54 + 4) = v60;
          _os_log_impl(&_mh_execute_header, v51, v53, "Deleted iCloud user file: %s", v54, 0xCu);
          sub_1000036EC(v55);
          v42 = v76;

          (v82)(v42, v52);
          v59(v72, v6);
          v13 = v72;
          v5 = v70;
        }

        else
        {

          v67 = v83;
          v83(v41, v6);
          (v82)(v42, v52);
          v67(v13, v6);
        }

        v16 = v52;
        v37 = v73;
      }

      else
      {
        v61 = *&v92[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v84(v87, v86, v16);
        swift_errorRetain();
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *v64 = v68;
          swift_errorRetain();
          v66 = _swift_stdlib_bridgeErrorToNSError();
          *(v64 + 4) = v66;
          *v65 = v66;
          _os_log_impl(&_mh_execute_header, v62, v63, "Could not delete iCloud user file: %@", v64, 0xCu);
          sub_100006CAC(v65, &qword_100093F70, &qword_1000730D0);

          v41 = v77;
        }

        (v82)(v87, v16);
        v83(v13, v6);
        v71 = 0;
        v42 = v76;
      }
    }

LABEL_21:
    sub_100006CAC(v5, &qword_100093A38, &qword_100073E40);
  }
}

void sub_100047D18()
{
  v0 = objc_autoreleasePoolPush();
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100047D80()
{
  v1 = *(v0 + 24);
  type metadata accessor for CloudStorageCoordinator();
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t sub_100047DF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v14;
  aBlock[4] = sub_10004923C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008B4F8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1000022E4(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_1000023BC(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_1000480F4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004124();
  (*(v5 + 16))(v8, v9, v4);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1000034B8(a1, a2, v18);
    _os_log_impl(&_mh_execute_header, v10, v11, "Removed storage for account: %s", v12, 0xCu);
    sub_1000036EC(v13);
  }

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(*result + 120);

    v16 = v15(v18);
    sub_10004834C(0, a1, a2);
    v16(v18, 0);
  }

  return result;
}