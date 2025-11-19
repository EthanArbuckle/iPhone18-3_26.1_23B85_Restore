void sub_10014B134()
{
  v81 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v81 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v81);
  v80 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v79);
  v78 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = (&v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = v0;
  v13 = *(v0 + 72);
  *v12 = v13;
  (*(v8 + 104))(v12, enum case for DispatchPredicate.notOnQueue(_:), v7, v10);
  v77 = v13;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v12, v7);
  if ((v14 & 1) == 0)
  {
    goto LABEL_26;
  }

  v70 = v4;
  i = v1;
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v15 = qword_100300E28;
    v16 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v17 = swift_allocObject();
    v76 = xmmword_100226100;
    *(v17 + 16) = xmmword_100226100;
    v18 = v87 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
    v19 = type metadata accessor for CloudCoordinatorConfiguration();
    v20 = *(v18 + *(v19 + 32));

    v21 = Array.description.getter();
    v23 = v22;

    *(v17 + 56) = &type metadata for String;
    v24 = sub_1000EE954();
    *(v17 + 64) = v24;
    *(v17 + 32) = v21;
    *(v17 + 40) = v23;
    os_log(_:dso:log:_:_:)();

    v25 = sub_10015FAF0();
    v27 = v26;
    v28 = sub_1001605C4(v25, v26);
    v29 = *(v18 + *(v19 + 32));

    v31 = sub_10016076C(v30);

    v32 = sub_10015E4EC(v28, v31);
    if (!v32[2])
    {
      break;
    }

    v82 = dispatch_group_create();
    static os_log_type_t.default.getter();
    v75 = v16;
    v33 = swift_allocObject();
    v74 = xmmword_100226C80;
    *(v33 + 16) = xmmword_100226C80;
    *(v33 + 56) = sub_1000EE870(&qword_1002F94A8, &qword_100229358);
    v34 = sub_1000FA0E0(&unk_1002F94B0, &qword_1002F94A8, &qword_100229358);
    *(v33 + 32) = v32;
    *(v33 + 96) = &type metadata for String;
    *(v33 + 104) = v24;
    v88 = v24;
    v35 = 0x6E776F6E6B6E75;
    v86 = v25;
    if (v27)
    {
      v35 = v25;
    }

    v36 = 0xE700000000000000;
    if (v27)
    {
      v36 = v27;
    }

    *(v33 + 64) = v34;
    *(v33 + 72) = v35;
    *(v33 + 80) = v36;

    v83 = v27;

    v84 = v15;
    os_log(_:dso:log:_:_:)();

    v37 = 0;
    v85 = v32;
    v38 = v32[7];
    v69 = v32 + 7;
    v39 = 1 << *(v32 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & v38;
    v42 = (v39 + 63) >> 6;
    v72 = v91;
    v71 = (i + 8);
    ++v70;
    for (i = v42; v41; v42 = i)
    {
      v43 = v37;
      v44 = v88;
      v45 = v85;
      v46 = v86;
LABEL_17:
      v47 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v48 = (v45[6] + ((v43 << 10) | (16 * v47)));
      v49 = *v48;
      v50 = v48[1];

      v51 = v82;
      dispatch_group_enter(v82);
      static os_log_type_t.default.getter();
      v52 = swift_allocObject();
      *(v52 + 16) = v76;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = v44;
      *(v52 + 32) = v49;
      *(v52 + 40) = v50;

      os_log(_:dso:log:_:_:)();

      v53 = swift_allocObject();
      v53[2] = v46;
      v53[3] = v83;
      v53[4] = v49;
      v54 = v87;
      v53[5] = v50;
      v53[6] = v54;
      v53[7] = v51;

      v55 = v51;
      static os_log_type_t.default.getter();
      v56 = swift_allocObject();
      *(v56 + 16) = v74;
      *(v56 + 56) = &type metadata for Int;
      *(v56 + 64) = &protocol witness table for Int;
      *(v56 + 32) = 0;
      v57 = v88;
      *(v56 + 96) = &type metadata for String;
      *(v56 + 104) = v57;
      *(v56 + 72) = v49;
      *(v56 + 80) = v50;

      os_log(_:dso:log:_:_:)();

      v58 = swift_allocObject();
      v58[2] = v49;
      v58[3] = v50;
      v58[4] = v54;
      v58[5] = sub_100162CAC;
      v58[6] = v53;
      v58[7] = 0;
      v91[2] = sub_10016339C;
      v91[3] = v58;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v91[0] = sub_1001742E0;
      v91[1] = &unk_1002BF410;
      v59 = _Block_copy(aBlock);

      v60 = v78;
      static DispatchQoS.unspecified.getter();
      v89 = _swiftEmptyArrayStorage;
      sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
      sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
      v62 = v80;
      v61 = v81;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v59);

      (*v71)(v62, v61);
      (*v70)(v60, v79);
    }

    v44 = v88;
    v45 = v85;
    v46 = v86;
    while (1)
    {
      v43 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v43 >= v42)
      {

        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        v63 = v82;
        OS_dispatch_group.wait()();

        return;
      }

      v41 = v69[v43];
      ++v37;
      if (v41)
      {
        v37 = v43;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  static os_log_type_t.default.getter();
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_100226C80;
  *(v64 + 56) = sub_1000EE870(&qword_1002F7F00, &qword_1002284F0);
  v65 = sub_1000FA0E0(&unk_1002F9310, &qword_1002F7F00, &qword_1002284F0);
  *(v64 + 32) = v28;
  *(v64 + 96) = &type metadata for String;
  *(v64 + 104) = v24;
  v66 = 0x6E776F6E6B6E75;
  if (v27)
  {
    v66 = v25;
  }

  v67 = 0xE700000000000000;
  if (v27)
  {
    v67 = v27;
  }

  *(v64 + 64) = v65;
  *(v64 + 72) = v66;
  *(v64 + 80) = v67;
  os_log(_:dso:log:_:_:)();
}

void sub_10014BB2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100226C80;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    v14 = sub_1000EE954();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v14;
    v15 = 0x6E776F6E6B6E75;
    if (a3)
    {
      v15 = a2;
    }

    v16 = 0xE700000000000000;
    if (a3)
    {
      v16 = a3;
    }

    *(v10 + 64) = v14;
    *(v10 + 72) = v15;
    *(v10 + 80) = v16;

    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100226C80;
    *(v19 + 56) = &type metadata for String;
    v20 = sub_1000EE954();
    *(v19 + 32) = a4;
    *(v19 + 40) = a5;
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v20;
    if (a3)
    {
      v21 = a2;
    }

    else
    {
      v21 = 0x6E776F6E6B6E75;
    }

    v22 = 0xE700000000000000;
    if (a3)
    {
      v22 = a3;
    }

    *(v19 + 64) = v20;
    *(v19 + 72) = v21;
    *(v19 + 80) = v22;

    os_log(_:dso:log:_:_:)();

    sub_100161528(a4, a5, a2, a3);
  }

  dispatch_group_leave(a7);
}

uint64_t sub_10014BDC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v25 = *(v13 - 8);
  v26 = v13;
  v14 = *(v25 + 64);
  __chkstk_darwin(v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100226C80;
  *(v17 + 56) = &type metadata for Int;
  *(v17 + 64) = &protocol witness table for Int;
  *(v17 + 32) = a3;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = sub_1000EE954();
  *(v17 + 72) = a1;
  *(v17 + 80) = a2;

  os_log(_:dso:log:_:_:)();

  if (a3 > 2)
  {
    sub_10015C3E8();
    swift_allocError();
    *v23 = 3;
    v28();
  }

  else
  {
    v24[1] = *(v5 + 72);
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a2;
    v19 = v28;
    v20 = v29;
    v18[4] = v5;
    v18[5] = v19;
    v18[6] = v20;
    v18[7] = a3;
    aBlock[4] = sub_100162C20;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002BF2A8;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v30 = &_swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v27 + 8))(v12, v9);
    (*(v25 + 8))(v16, v26);
  }
}

void sub_10014C4D4(uint64_t a1, char a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100226100;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_1000EE954();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a6;
    v18[5] = a7;
    v18[6] = a8;
    v18[7] = a9;

    v19 = sub_100140CF8();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_100162C5C;
    *(v20 + 24) = v18;
    aBlock[4] = sub_100163398;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001634D8;
    aBlock[3] = &unk_1002BF348;
    v21 = _Block_copy(aBlock);

    [v19 accountInfoWithCompletionHandler:v21];
    _Block_release(v21);
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100226100;
    *(v23 + 56) = sub_1000FA784(0, &qword_1002F9488, CKRecordZone_ptr);
    *(v23 + 64) = sub_100162740(&qword_1002F94A0, &qword_1002F9488, CKRecordZone_ptr);
    *(v23 + 32) = a3;
    v24 = a3;
    os_log(_:dso:log:_:_:)();

    a4(0);
  }
}

uint64_t sub_10014C848(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a6;
  v52 = a8;
  v53 = a5;
  v54 = a7;
  v60 = a3;
  v61 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = *(v55 + 64);
  __chkstk_darwin(v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchTime();
  v59 = *(v18 - 8);
  v19 = *(v59 + 64);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  v25 = type metadata accessor for DispatchQoS.QoSClass();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  *&v28 = __chkstk_darwin(v25).n128_u64[0];
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100226100;
    aBlock[0] = a1;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_1000EE954();
    *(v31 + 32) = v32;
    *(v31 + 40) = v34;
    os_log(_:dso:log:_:_:)();

    return (v60)(a1);
  }

  if ([a1 accountStatus] == 3)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_10015C3E8();
    swift_allocError();
    *v36 = 1;
LABEL_16:
    v60();
  }

  v37 = [a1 supportsDeviceToDeviceEncryption];
  static os_log_type_t.error.getter();
  if (!v37)
  {
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_10015C3E8();
    swift_allocError();
    *v47 = 2;
    goto LABEL_16;
  }

  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
  (*(v26 + 104))(v30, enum case for DispatchQoS.QoSClass.default(_:), v25);
  v49 = static OS_dispatch_queue.global(qos:)();
  (*(v26 + 8))(v30, v25);
  static DispatchTime.now()();
  + infix(_:_:)();
  v38 = *(v59 + 8);
  v59 += 8;
  v50 = v38;
  v38(v21, v18);
  v39 = swift_allocObject();
  v40 = v54;
  v42 = v51;
  v41 = v52;
  v39[2] = v53;
  v39[3] = v42;
  v39[4] = v40;
  v39[5] = v41;
  v43 = v61;
  v39[6] = v60;
  v39[7] = v43;
  aBlock[4] = sub_100162C70;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BF398;
  v44 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v62 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  v45 = v58;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v46 = v49;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v44);

  (*(v57 + 8))(v13, v45);
  (*(v55 + 8))(v17, v56);
  v50(v24, v18);
}

uint64_t sub_10014D010()
{
  v1 = [objc_opt_self() defaultCenter];
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  [v1 addObserver:v0 selector:"accountDidChange:" name:CKAccountChangedNotification object:0];
  [v1 addObserver:v0 selector:"onIdentityUpdateNotification" name:CKIdentityUpdateNotification object:0];
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  v2 = swift_allocObject();
  swift_weakInit();
  sub_1000EE870(&qword_1002F9490, &qword_100229348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100226100;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100162C10;
  *(v4 + 24) = v2;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x800000010026CE80;
  *(inited + 48) = sub_10015C3A0;
  *(inited + 56) = v4;

  v5 = sub_1000F9B20(inited);
  swift_setDeallocating();
  sub_1000EEE6C(inited + 32, &qword_1002F9498, &qword_100229350);
  v6 = _s15audioaccessoryd24DarwinNotificationHelperC20notificationHandlersACSgSDySSyycG_tcfC_0(v5);

  v7 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_identityUpdateNotificationListener);
  *(v0 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_identityUpdateNotificationListener) = v6;
}

uint64_t sub_10014D268()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(result + 72);
    v15 = v1;
    v16 = result;
    v11 = swift_allocObject();
    v17 = v5;
    v12 = v11;
    swift_weakInit();
    aBlock[4] = sub_100162C18;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002BF258;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v18 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);
    (*(v15 + 8))(v4, v0);
    (*(v6 + 8))(v9, v17);
  }

  return result;
}

uint64_t sub_10014D5F4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100226100;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_1000EE954();
    *(v2 + 32) = 0xD00000000000001ELL;
    *(v2 + 40) = 0x800000010026CDE0;
    os_log(_:dso:log:_:_:)();

    if (*(v1 + 104) == 1)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      sub_100152F5C(150.0);
    }
  }

  return result;
}

uint64_t sub_10014D774()
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100226100;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_1000EE954();
  *(v1 + 32) = 0xD00000000000001ELL;
  *(v1 + 40) = 0x800000010026CDE0;
  os_log(_:dso:log:_:_:)();

  if (*(v0 + 104))
  {
    static os_log_type_t.default.getter();

    return os_log(_:dso:log:_:_:)();
  }

  else
  {

    return sub_100152F5C(150.0);
  }
}

uint64_t sub_10014D91C(void *a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  __chkstk_darwin(v8);
  v38 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + 72);
  *v16 = v17;
  (*(v12 + 104))(v16, enum case for DispatchPredicate.notOnQueue(_:), v11, v14);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v16, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v16 = swift_allocObject();
  v16[16] = 1;
  v35 = v16 + 16;
  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  v20 = sub_10015FAF0();
  v31 = v18;
  v32 = v8;
  v21 = v20;
  v23 = v22;
  v24 = swift_allocObject();
  v25 = v37;
  v24[2] = v36;
  v24[3] = v25;
  v34 = v21;
  v24[4] = v21;
  v24[5] = v23;
  v24[6] = v16;
  v24[7] = v19;
  v24[8] = v2;
  aBlock[4] = sub_100162BCC;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BF1B8;
  v26 = _Block_copy(aBlock);
  v36 = v23;

  v33 = v19;

  v27 = v38;
  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v4 + 8))(v7, v3);
  (*(v39 + 8))(v27, v32);

  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
LABEL_5:
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v28 = v33;
  OS_dispatch_group.wait()();
  sub_10015FBAC(v34, v36);

  swift_beginAccess();
  v29 = v16[16];

  return v29;
}

void sub_10014DE00(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = a1;
  v15._object = a2;
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v15, v16).super.isa;
  sub_1000FA784(0, &qword_1002F9480, CKModifyRecordZonesOperation_ptr);
  sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
  v18 = swift_allocObject();
  v19 = v18;
  *(v18 + 16) = xmmword_1002290F0;
  *(v18 + 32) = isa;
  v20 = isa;
  v36.value._rawValue = _swiftEmptyArrayStorage;
  v36.is_nil = v19;
  v21.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v36, v37).super.super.super.super.isa;
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = a1;
  v22[6] = a2;
  v22[7] = a6;
  aBlock[4] = sub_100162BE0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10014E468;
  aBlock[3] = &unk_1002BF208;
  v23 = _Block_copy(aBlock);

  v24 = a6;

  [(objc_class *)v21.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v23];
  _Block_release(v23);
  if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
  {
    [(objc_class *)v21.super.super.super.super.isa setQualityOfService:25];
  }

  v25 = v21.super.super.super.super.isa;
  v26 = [(objc_class *)v25 configuration];
  if (!v26)
  {
    __break(1u);
    goto LABEL_13;
  }

  v27 = v26;
  [v26 setAutomaticallyRetryNetworkFailures:0];

  v28 = [(objc_class *)v25 configuration];
  if (!v28)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v28 setDiscretionaryNetworkBehavior:0];

  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100226C80;
  *(v29 + 56) = &type metadata for String;
  v30 = sub_1000EE954();
  *(v29 + 32) = a1;
  *(v29 + 40) = a2;
  *(v29 + 96) = &type metadata for String;
  *(v29 + 104) = v30;
  v31 = 0x6E776F6E6B6E75;
  if (a4)
  {
    v31 = a3;
  }

  v32 = 0xE700000000000000;
  if (a4)
  {
    v32 = a4;
  }

  *(v29 + 64) = v30;
  *(v29 + 72) = v31;
  *(v29 + 80) = v32;

  os_log(_:dso:log:_:_:)();

  v33 = sub_100140CF8();
  v34 = [v33 privateCloudDatabase];

  [v34 addOperation:v25];
}

void sub_10014E1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, NSObject *a9)
{
  v11 = a9;
  if (a3)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100226C80;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    v17 = sub_1000EE954();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = v17;
    v18 = 0x6E776F6E6B6E75;
    if (a5)
    {
      v18 = a4;
    }

    v19 = 0xE700000000000000;
    if (a5)
    {
      v19 = a5;
    }

    *(v13 + 64) = v17;
    *(v13 + 72) = v18;
    *(v13 + 80) = v19;

    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    *(a6 + 16) = 0;
    v11 = a9;
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100226C80;
    *(v22 + 56) = &type metadata for String;
    v23 = sub_1000EE954();
    *(v22 + 32) = a7;
    *(v22 + 40) = a8;
    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v23;
    if (a5)
    {
      v24 = a4;
    }

    else
    {
      v24 = 0x6E776F6E6B6E75;
    }

    v25 = 0xE700000000000000;
    if (a5)
    {
      v25 = a5;
    }

    *(v22 + 64) = v23;
    *(v22 + 72) = v24;
    *(v22 + 80) = v25;

    os_log(_:dso:log:_:_:)();
  }

  dispatch_group_leave(v11);
}

void sub_10014E48C(uint64_t a1, int a2)
{
  LODWORD(v161) = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v163 = v14;
  v164 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v162 = v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v143 - v19;
  __chkstk_darwin(v21);
  v155 = v143 - v22;
  aBlock._countAndFlagsBits = a1;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  type metadata accessor for CKError(0);
  v24 = v23;
  if (!swift_dynamicCast())
  {
    return;
  }

  v156 = v24;
  v153 = v2;
  v145 = v13;
  v146 = v10;
  v147 = v8;
  v148 = v9;
  v149 = v5;
  v150 = v4;
  v25 = v171;
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v26 = qword_100300E28;
    v154 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v27 = swift_allocObject();
    v152 = xmmword_100226100;
    *(v27 + 16) = xmmword_100226100;
    v28 = v25;
    v29 = related decl 'e' for CKErrorCode.description.getter();
    v31 = v30;

    *(v27 + 56) = &type metadata for String;
    v151 = sub_1000EE954();
    *(v27 + 64) = v151;
    *(v27 + 32) = v29;
    *(v27 + 40) = v31;
    v157 = v26;
    os_log(_:dso:log:_:_:)();

    v32 = String._bridgeToObjectiveC()();
    sub_1000EE870(&qword_1002F9378, &unk_1002292E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100226C80;
    *(inited + 32) = 0x43726F7272456B63;
    *(inited + 40) = 0xEB0000000065646FLL;
    aBlock._countAndFlagsBits = v28;
    v34 = sub_1001624EC(&qword_1002F9330, type metadata accessor for CKError);
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:_BridgedStoredNSError.errorCode.getter()];
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x800000010026CA60;
    aBlock._countAndFlagsBits = v28;
    sub_1001624EC(&qword_1002F7D10, type metadata accessor for CKError);
    Error.localizedDescription.getter();
    v35 = objc_allocWithZone(NSString);
    v36 = String._bridgeToObjectiveC()();

    v37 = [v35 initWithString:v36];

    *(inited + 72) = v37;
    sub_1000F9D9C(inited);
    swift_setDeallocating();
    sub_1000EE870(&qword_1002F9380, &unk_100229A70);
    swift_arrayDestroy();
    sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    CUMetricsLog();

    v39 = v28;
    v171 = v28;
    v158 = v34;
    v40 = _BridgedStoredNSError.userInfo.getter();
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v40 + 16))
    {

      v47 = v153;
      v48 = v163;
      v49 = v164;
      goto LABEL_18;
    }

    v43 = v28;
    v44 = sub_1000F8C5C(v41, v42);
    v46 = v45;

    v47 = v153;
    v48 = v163;
    v49 = v164;
    if ((v46 & 1) == 0)
    {

      v39 = v43;
      goto LABEL_18;
    }

    sub_100162534(*(v40 + 56) + 32 * v44, &aBlock);

    sub_1000EE870(&qword_1002F9390, &qword_1002292F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v144 = v43;
    v50 = v47;
    v51 = v170;
    static os_log_type_t.error.getter();
    v52 = swift_allocObject();
    *(v52 + 16) = v152;
    v53 = Dictionary.description.getter();
    v54 = v151;
    *(v52 + 56) = &type metadata for String;
    *(v52 + 64) = v54;
    *(v52 + 32) = v53;
    *(v52 + 40) = v55;
    os_log(_:dso:log:_:_:)();

    v56 = 1 << *(v51 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & *(v51 + 64);
    v59 = (v56 + 63) >> 6;

    v60 = 0;
    v25 = &qword_1002292F8;
    while (v58)
    {
      v61 = v60;
LABEL_14:
      v62 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v63 = v62 | (v61 << 6);
      sub_1000FA898(*(v51 + 48) + 40 * v63, &aBlock);
      v169 = *(*(v51 + 56) + 8 * v63);
      v64 = v169;
      sub_10014E48C(v64, v161 & 1);
      sub_1000EEE6C(&aBlock, &qword_1002F9398, &qword_1002292F8);
    }

    while (1)
    {
      v61 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v61 >= v59)
      {

        v47 = v50;
        v39 = v144;
        v48 = v163;
        v49 = v164;
        goto LABEL_18;
      }

      v58 = *(v51 + 64 + 8 * v61);
      ++v60;
      if (v58)
      {
        v60 = v61;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_56:
    swift_once();
  }

  v39 = v43;
LABEL_18:
  v171 = v39;
  _BridgedStoredNSError.code.getter();
  if (v170 <= 13)
  {
    if ((v170 - 3) < 2)
    {
      if ((v161 & 1) == 0)
      {
        goto LABEL_44;
      }

      v65 = 150.0;
      goto LABEL_29;
    }

    if ((v170 - 6) < 2)
    {
      v65 = COERCE_DOUBLE(related decl 'e' for CKErrorCode.retryAfterSeconds.getter());
      if (v66)
      {
        v65 = 600.0;
      }

LABEL_29:
      sub_100152F5C(v65);
      goto LABEL_44;
    }

LABEL_38:
    LODWORD(v164) = static os_log_type_t.error.getter();
    v86 = swift_allocObject();
    *(v86 + 16) = v152;
    v87 = v39;
    v88 = v39;
    v89 = related decl 'e' for CKErrorCode.description.getter();
    v91 = v90;

    v92 = v151;
    *(v86 + 56) = &type metadata for String;
    *(v86 + 64) = v92;
    *(v86 + 32) = v89;
    *(v86 + 40) = v91;
    v39 = v88;
    os_log(_:dso:log:_:_:)();

LABEL_44:
    aBlock._countAndFlagsBits = v39;
    _BridgedStoredNSError.code.getter();
    if (v171 == 110)
    {
      static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)();
      if (*(v47 + 104) == 1)
      {
        *(v47 + 104) = 0;
        static os_log_type_t.fault.getter();
        os_log(_:dso:log:_:_:)();
      }
    }

    else if (v171 == 112)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v132 = *(v47 + 80);
      v168 = sub_100162BBC;
      v169 = v47;
      aBlock._countAndFlagsBits = _NSConcreteStackBlock;
      aBlock._object = 1107296256;
      v166 = sub_1001742E0;
      v167 = &unk_1002BF118;
      v133 = _Block_copy(&aBlock);

      v134 = v145;
      static DispatchQoS.unspecified.getter();
      v171 = _swiftEmptyArrayStorage;
      sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
      sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
      v135 = v147;
      v136 = v150;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v133);

      (*(v149 + 8))(v135, v136);
      (*(v146 + 8))(v134, v148);
    }

    else if (v171 == 111)
    {
      static os_log_type_t.default.getter();
      v126 = swift_allocObject();
      *(v126 + 16) = v152;
      v127 = v47 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
      v128 = (v127 + *(type metadata accessor for CloudCoordinatorConfiguration() + 24));
      v130 = *v128;
      v129 = v128[1];
      v131 = v151;
      *(v126 + 56) = &type metadata for String;
      *(v126 + 64) = v131;
      *(v126 + 32) = v130;
      *(v126 + 40) = v129;

      os_log(_:dso:log:_:_:)();
    }

    else
    {
      static os_log_type_t.error.getter();
      v137 = swift_allocObject();
      *(v137 + 16) = v152;
      v138 = v39;
      v139 = related decl 'e' for CKErrorCode.description.getter();
      v141 = v140;

      v142 = v151;
      *(v137 + 56) = &type metadata for String;
      *(v137 + 64) = v142;
      *(v137 + 32) = v139;
      *(v137 + 40) = v141;
      os_log(_:dso:log:_:_:)();
    }

    return;
  }

  if (v170 != 14)
  {
    if (v170 == 21)
    {
      v93 = v162;
      sub_10013A598();
      URL.appendingPathComponent(_:isDirectory:)();
      v94 = v20;
      v97 = *(v49 + 8);
      v96 = v49 + 8;
      v95 = v97;
      v97(v93, v48);
      v98 = v155;
      URL.appendingPathComponent(_:)();
      v99 = v94;
      v97(v94, v48);
      sub_100160104(v98, 0);
      v100 = v47 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
      v101 = *(v100 + *(type metadata accessor for CloudCoordinatorConfiguration() + 32));
      v102 = *(v101 + 16);
      if (v102)
      {
        v144 = v39;
        v160 = sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
        v159 = CKCurrentUserDefaultName;

        v161 = v95;
        v164 = v96;
        v143[1] = v101;
        v103 = (v101 + 40);
        v104 = v163;
        do
        {
          v105 = *(v103 - 1);
          v106 = *v103;
          v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v109 = v108;

          v110._countAndFlagsBits = v105;
          v110._object = v106;
          v111._countAndFlagsBits = v107;
          v111._object = v109;
          v112 = CKRecordZoneID.init(zoneName:ownerName:)(v110, v111).super.isa;
          v113 = v162;
          sub_10013A598();
          URL.appendingPathComponent(_:isDirectory:)();
          v114 = v161;
          v161(v113, v104);
          v115._countAndFlagsBits = 0x65746176697250;
          v115._object = 0xE700000000000000;
          URL.appendPathComponent(_:)(v115);
          v116 = [(objc_class *)v112 ownerName];
          v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v119 = v118;

          v120._countAndFlagsBits = v117;
          v120._object = v119;
          URL.appendPathComponent(_:)(v120);

          v121 = [(objc_class *)v112 zoneName];
          v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v124 = v123;

          aBlock._countAndFlagsBits = v122;
          aBlock._object = v124;
          v125._countAndFlagsBits = 0x6E656B6F742ELL;
          v125._object = 0xE600000000000000;
          String.append(_:)(v125);
          URL.appendPathComponent(_:)(aBlock);

          sub_100160104(v99, 0);
          v114(v99, v104);
          v103 += 2;
          --v102;
        }

        while (v102);

        v39 = v144;
        v48 = v163;
        v95 = v161;
      }

      v47 = v153;
      sub_100152F5C(30.0);
      v95(v155, v48);
      goto LABEL_44;
    }

    goto LABEL_38;
  }

  static os_log_type_t.error.getter();
  v67 = swift_allocObject();
  *(v67 + 16) = v152;
  v68 = v39;
  v69 = related decl 'e' for CKErrorCode.description.getter();
  v71 = v70;

  v72 = v151;
  *(v67 + 56) = &type metadata for String;
  *(v67 + 64) = v72;
  *(v67 + 32) = v69;
  *(v67 + 40) = v71;
  os_log(_:dso:log:_:_:)();

  v73 = related decl 'e' for CKErrorCode.serverRecord.getter();
  if (v73)
  {
    v74 = v73;
    LODWORD(v164) = static os_log_type_t.error.getter();
    v75 = swift_allocObject();
    *(v75 + 16) = v152;
    v76 = v74;
    v77 = [v76 description];
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    *(v75 + 56) = &type metadata for String;
    *(v75 + 64) = v72;
    *(v75 + 32) = v78;
    *(v75 + 40) = v80;
    os_log(_:dso:log:_:_:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v82 = Strong;
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1002290F0;
      *(v83 + 32) = v76;
      v84 = v76;
      sub_10015EEF4(v47, _swiftEmptyArrayStorage, v83, v82);

      swift_unknownObjectRelease();
    }

    v85 = swift_unknownObjectWeakLoadStrong();
    if (v85)
    {
      sub_10015FDEC(*(v47 + 104), v85);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100152F5C(30.0);
  }
}

uint64_t sub_10014F794(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
  v11 = *(v10 + *(type metadata accessor for CloudCoordinatorConfiguration() + 32));
  v12 = *(v11 + 16);
  if (v12)
  {

    v13 = (v11 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_10014D91C(v14, v15);

      v13 += 2;
      --v12;
    }

    while (v12);
  }

  sub_10014B134();
  v16 = *(a1 + 72);
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100162BC4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BF140;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v22 + 8))(v5, v2);
  (*(v20 + 8))(v9, v21);
}

uint64_t sub_10014FAE0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100141D34(0);
  }

  return result;
}

uint64_t sub_10014FB3C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a3;
  v36 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v37 = *(v12 - 8);
  v38 = v12;
  v13 = *(v37 + 64);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v34 = a5;
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100226100;
    aBlock = a2;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000EE954();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)();

    v20 = *(v35 + 80);
    v21 = swift_allocObject();
    v22 = v34;
    *(v21 + 16) = v36;
    *(v21 + 24) = v22;
    v45 = sub_100162B64;
    v46 = v21;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1001742E0;
    v44 = &unk_1002BEF88;
    v23 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v40 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);
  }

  else
  {
    LODWORD(v34) = static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100226100;
    v25 = CKStringFromAccountStatus();
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_1000EE954();
    *(v24 + 32) = v26;
    *(v24 + 40) = v28;
    os_log(_:dso:log:_:_:)();

    v29 = *(v35 + 80);
    v30 = swift_allocObject();
    v30[2] = v36;
    v30[3] = a5;
    v30[4] = a1;
    v45 = sub_100162B34;
    v46 = v30;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_1001742E0;
    v44 = &unk_1002BEF38;
    v31 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v40 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);
  }

  (*(v39 + 8))(v11, v8);
  (*(v37 + 8))(v15, v38);
}

void sub_10015016C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_1001501E4()
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;

  v2 = sub_100140CF8();
  v3 = swift_allocObject();
  v3[2] = v0;
  v3[3] = sub_100162B1C;
  v3[4] = v1;
  v5[4] = sub_100162B28;
  v5[5] = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10015016C;
  v5[3] = &unk_1002BEEE8;
  v4 = _Block_copy(v5);

  [v2 accountStatusWithCompletionHandler:v4];
  _Block_release(v4);
}

uint64_t sub_100150470()
{
  result = type metadata accessor for CloudCoordinatorConfiguration();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100150584(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(a2 + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a1;
  *(v15 + 32) = a3;
  aBlock[4] = sub_100162B90;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BEFD8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

void sub_100150860(uint64_t a1, uint64_t a2, int a3)
{
  v45 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  __chkstk_darwin(v5);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  __chkstk_darwin(v8);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v44 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100226C80;
  v12 = *(a1 + 96);
  v13 = CKStringFromAccountStatus();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v11 + 56) = &type metadata for String;
  v17 = sub_1000EE954();
  *(v11 + 64) = v17;
  *(v11 + 32) = v14;
  *(v11 + 40) = v16;
  v18 = CKStringFromAccountStatus();
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v17;
  *(v11 + 72) = v19;
  *(v11 + 80) = v21;
  os_log(_:dso:log:_:_:)();

  v22 = *(a1 + 96);
  *(a1 + 96) = a2;
  *(a1 + 105) = a2 == 1;
  if (a2 <= 1)
  {
    if (a2 == 1)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      sub_10015194C(v45 & 1);
      return;
    }

    goto LABEL_13;
  }

  if (a2 == 2)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    if (*(a1 + 96) == 2)
    {
      return;
    }

    v23 = *(a1 + 80);
    v57 = sub_100162BA4;
    v58 = a1;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_1001742E0;
    v56 = &unk_1002BF028;
    v24 = _Block_copy(&aBlock);

    v25 = v46;
    static DispatchQoS.unspecified.getter();
    v59 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    v26 = v47;
    v27 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);
    (*(v50 + 8))(v26, v27);
    (*(v48 + 8))(v25, v49);

    goto LABEL_19;
  }

  if (a2 == 3)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    [*(a1 + 40) invalidate];
    v28 = *(a1 + 40);
    *(a1 + 40) = 0;

    v29 = *(a1 + 48);
    if (v29)
    {
      v30 = *(v29 + 40);
      swift_getObjectType();

      OS_dispatch_source.cancel()();

      v31 = *(a1 + 48);
    }

    *(a1 + 48) = 0;

    swift_beginAccess();
    v32 = *(a1 + 112);
    *(a1 + 112) = _swiftEmptyDictionarySingleton;

    swift_beginAccess();
    v33 = *(a1 + 120);
    *(a1 + 120) = _swiftEmptyDictionarySingleton;

    if (v22 == 3)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      return;
    }

    static os_log_type_t.error.getter();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100226100;
    Strong = swift_unknownObjectWeakLoadStrong();
    v36 = *(a1 + 32);
    aBlock = Strong;
    v54 = v36;
    sub_1000EE870(&unk_1002F9470, &qword_100229340);
    v37 = String.init<A>(describing:)();
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = v17;
    *(v34 + 32) = v37;
    *(v34 + 40) = v38;
    os_log(_:dso:log:_:_:)();

    v39 = *(a1 + 80);
    v57 = sub_100162B9C;
    v58 = a1;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_1001742E0;
    v56 = &unk_1002BF000;
    v40 = _Block_copy(&aBlock);

    v41 = v46;
    static DispatchQoS.unspecified.getter();
    v52 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    v42 = v47;
    v43 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v40);
    (*(v50 + 8))(v42, v43);
    (*(v48 + 8))(v41, v49);

    if ((*(a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator__available) & 1) == 0)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      sub_100141908();
      return;
    }

LABEL_19:
    sub_100141D34(0);
    return;
  }

LABEL_13:
  static os_log_type_t.error.getter();

  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100151144(uint64_t a1)
{
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v38);
  v37 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v8 = a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
  result = *(v8 + *(type metadata accessor for CloudCoordinatorConfiguration() + 32));
  v10 = *(result + 16);
  if (v10)
  {
    v33 = v43;
    v34 = CKCurrentUserDefaultName;
    v31 = (v5 + 8);
    v32 = (v2 + 8);

    v11 = (v30 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = Strong;
        sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19._countAndFlagsBits = v12;
        v19._object = v13;
        v20._countAndFlagsBits = v16;
        v20._object = v18;
        isa = CKRecordZoneID.init(zoneName:ownerName:)(v19, v20).super.isa;
        v22 = *(v15 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
        v23 = swift_allocObject();
        *(v23 + 16) = isa;
        *(v23 + 24) = v15;
        v43[2] = sub_100162BAC;
        v43[3] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v43[0] = sub_1001742E0;
        v43[1] = &unk_1002BF078;
        v24 = _Block_copy(aBlock);
        v25 = v22;
        v40 = isa;
        swift_unknownObjectRetain();
        v26 = v35;
        static DispatchQoS.unspecified.getter();
        v41 = _swiftEmptyArrayStorage;
        sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
        sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
        v28 = v37;
        v27 = v38;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v24);

        swift_unknownObjectRelease();
        (*v32)(v28, v27);
        (*v31)(v26, v36);
      }

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_100151538(uint64_t a1)
{
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v38);
  v37 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v8 = a1 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
  v9 = *(*(v8 + *(type metadata accessor for CloudCoordinatorConfiguration() + 32)) + 16);
  if (v9)
  {
    v33 = v43;
    v34 = CKCurrentUserDefaultName;
    v31 = (v5 + 8);
    v32 = (v2 + 8);

    v10 = (v30 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18._countAndFlagsBits = v11;
        v18._object = v12;
        v19._countAndFlagsBits = v15;
        v19._object = v17;
        isa = CKRecordZoneID.init(zoneName:ownerName:)(v18, v19).super.isa;
        v21 = *(v14 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
        v22 = swift_allocObject();
        *(v22 + 16) = isa;
        *(v22 + 24) = v14;
        v43[2] = sub_1001633F0;
        v43[3] = v22;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v43[0] = sub_1001742E0;
        v43[1] = &unk_1002BF0C8;
        v23 = _Block_copy(aBlock);
        v24 = v21;
        v40 = isa;
        swift_unknownObjectRetain();
        v25 = v35;
        static DispatchQoS.unspecified.getter();
        v41 = _swiftEmptyArrayStorage;
        sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
        sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
        v27 = v37;
        v26 = v38;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v23);

        swift_unknownObjectRelease();
        (*v32)(v27, v26);
        (*v31)(v25, v36);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10015F824(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10015194C(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 72);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
LABEL_5:
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1 & 1;

  v12 = sub_100140CF8();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100162AE0;
  *(v13 + 24) = v11;
  aBlock[4] = sub_100162AF0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001634D8;
  aBlock[3] = &unk_1002BEDA8;
  v14 = _Block_copy(aBlock);

  [v12 accountInfoWithCompletionHandler:v14];
  _Block_release(v14);
}

void sub_100151BC4(char *a1, char a2, uint64_t a3, int a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v128 = *(v13 - 8);
  v14 = *(v128 + 64);
  __chkstk_darwin(v13);
  v127 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v133 = v16;
  v134 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  __chkstk_darwin(v19);
  v132 = &v113 - v20;
  __chkstk_darwin(v21);
  if (a2)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 == -1)
    {
LABEL_3:
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100226100;
      aBlock._countAndFlagsBits = a1;
      swift_errorRetain();
      sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_1000EE954();
      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
      os_log(_:dso:log:_:_:)();

      return;
    }

LABEL_43:
    swift_once();
    goto LABEL_3;
  }

  v130 = &v113 - v22;
  v126 = v23;
  v122 = a4;
  v118 = v12;
  v119 = v13;
  v120 = v9;
  v129 = a3;
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v28 = qword_100300E28;
  v29 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v30 = swift_allocObject();
  v131 = xmmword_100226100;
  *(v30 + 16) = xmmword_100226100;
  v31 = a1;
  v32 = [v31 description];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  sub_100008030(a1, 0);
  *(v30 + 56) = &type metadata for String;
  v36 = sub_1000EE954();
  *(v30 + 64) = v36;
  *(v30 + 32) = v33;
  *(v30 + 40) = v35;
  os_log(_:dso:log:_:_:)();

  v37 = [v31 accountStatus];
  static os_log_type_t.default.getter();
  if (v37 == 1)
  {
    v116 = v36;
    v115 = v8;
    v38 = swift_allocObject();
    *(v38 + 16) = v131;
    v39 = v129;
    v40 = *(v129 + 104);
    *(v38 + 56) = &type metadata for Bool;
    *(v38 + 64) = &protocol witness table for Bool;
    *(v38 + 32) = v40;
    os_log(_:dso:log:_:_:)();

    v41 = *(v39 + 104);
    static os_log_type_t.default.getter();
    v121 = v29;
    v42 = swift_allocObject();
    *(v42 + 16) = v131;
    v43 = [v31 supportsDeviceToDeviceEncryption];
    *(v42 + 56) = &type metadata for Bool;
    *(v42 + 64) = &protocol witness table for Bool;
    *(v42 + 32) = v43;
    v117 = v28;
    os_log(_:dso:log:_:_:)();

    v44 = [v31 supportsDeviceToDeviceEncryption];
    *(v39 + 104) = v44;
    if (v41 == 1 && (v44 & 1) == 0)
    {
      v45 = String._bridgeToObjectiveC()();
      sub_1000EE870(&qword_1002F9378, &unk_1002292E0);
      inited = swift_initStackObject();
      *(inited + 16) = v131;
      *(inited + 32) = 0xD000000000000027;
      *(inited + 40) = 0x800000010026C6D0;
      *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:*(v129 + 104)];
      sub_1000F9D9C(inited);
      swift_setDeallocating();
      sub_1000EEE6C(inited + 32, &qword_1002F9380, &unk_100229A70);
      sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v39 = v129;

      CUMetricsLog();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_10015FDEC(*(v39 + 104), Strong);
      swift_unknownObjectRelease();
    }

    if ((v41 & 1) == 0 && [v31 supportsDeviceToDeviceEncryption])
    {
      static os_log_type_t.default.getter();
      v49 = swift_allocObject();
      v50 = v39;
      v51 = v49;
      *(v49 + 16) = v131;
      v52 = v50 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
      v53 = type metadata accessor for CloudCoordinatorConfiguration();
      v54 = v133;
      v55 = v134;
      a1 = v130;
      (*(v134 + 16))(v130, v52 + *(v53 + 28), v133);
      sub_1001624EC(&unk_1002F9C00, &type metadata accessor for URL);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      v59 = *(v55 + 8);
      v59(a1, v54);
      v60 = v116;
      v51[7] = &type metadata for String;
      v51[8] = v60;
      v51[4] = v56;
      v51[5] = v58;
      os_log(_:dso:log:_:_:)();

      v61 = v126;
      sub_10013A598();
      v62 = v132;
      URL.appendingPathComponent(_:isDirectory:)();
      v59(v61, v54);
      URL.appendingPathComponent(_:)();
      v59(v62, v54);
      v114 = sub_10013A930();
      v134 = v55 + 8;
      v126 = v59;
      v59(a1, v54);
      v63 = *(*(v52 + *(v53 + 32)) + 16);

      v125 = v63;
      if (v63)
      {
        v65 = 0;
        v66 = (v64 + 40);
        v123 = CKCurrentUserDefaultName;
        v124 = v64;
        while (v65 < *(v64 + 16))
        {
          v68 = *(v66 - 1);
          v67 = *v66;
          sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
          v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v71 = v70;

          v72._countAndFlagsBits = v68;
          v72._object = v67;
          v73._countAndFlagsBits = v69;
          v73._object = v71;
          v74 = CKRecordZoneID.init(zoneName:ownerName:)(v72, v73).super.isa;
          v75 = v132;
          sub_10013A598();
          a1 = v130;
          URL.appendingPathComponent(_:isDirectory:)();
          v76 = v133;
          v77 = v126;
          v126(v75, v133);
          v78._countAndFlagsBits = 0x65746176697250;
          v78._object = 0xE700000000000000;
          URL.appendPathComponent(_:)(v78);
          v79 = [(objc_class *)v74 ownerName];
          v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v82 = v81;

          v83._countAndFlagsBits = v80;
          v83._object = v82;
          URL.appendPathComponent(_:)(v83);

          v84 = [(objc_class *)v74 zoneName];
          v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v87 = v86;

          aBlock._countAndFlagsBits = v85;
          aBlock._object = v87;
          v88._countAndFlagsBits = 0x6E656B6F742ELL;
          v88._object = 0xE600000000000000;
          String.append(_:)(v88);
          URL.appendPathComponent(_:)(aBlock);

          v89 = sub_10013A930();
          v77(a1, v76);
          v90 = v89 == 0;
          if (v89)
          {
            ++v65;

            v66 += 2;
            v64 = v124;
            if (v125 != v65)
            {
              continue;
            }
          }

          goto LABEL_25;
        }

        __break(1u);
        goto LABEL_43;
      }

      v90 = 0;
LABEL_25:

      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      static os_log_type_t.default.getter();
      v91 = v114;
      v92 = v122;
      if ((v122 & 1) != 0 || !v114 || v90)
      {
        v94 = swift_allocObject();
        v95 = v92 & 1;
        v96 = 0x206563726F46;
        if ((v92 & 1) == 0)
        {
          v96 = 0;
        }

        v97 = 0xE000000000000000;
        v98 = 0xE600000000000000;
        if ((v92 & 1) == 0)
        {
          v98 = 0xE000000000000000;
        }

        *(v94 + 16) = xmmword_100226C80;
        v99 = v116;
        *(v94 + 56) = &type metadata for String;
        *(v94 + 64) = v99;
        *(v94 + 32) = v96;
        *(v94 + 40) = v98;
        if (v91)
        {
          v100 = v90;
        }

        else
        {
          v100 = 1;
        }

        v101 = v100 == 0;
        if (v100)
        {
          v102 = 0xD000000000000034;
        }

        else
        {
          v102 = 0;
        }

        *(v94 + 96) = &type metadata for String;
        *(v94 + 104) = v99;
        if (!v101)
        {
          v97 = 0x800000010026C550;
        }

        *(v94 + 72) = v102;
        *(v94 + 80) = v97;
        os_log(_:dso:log:_:_:)();

        static os_log_type_t.default.getter();
        v103 = swift_allocObject();
        *(v103 + 16) = v131;
        v104 = v129;
        v105 = sub_100140EA8();
        *(v103 + 56) = &type metadata for String;
        *(v103 + 64) = v99;
        *(v103 + 32) = v105;
        *(v103 + 40) = v106;
        os_log(_:dso:log:_:_:)();

        sub_100153694();
        v107 = *(v104 + 72);
        v108 = swift_allocObject();
        *(v108 + 16) = v104;
        *(v108 + 24) = v95;
        v139 = sub_100162AF8;
        v140 = v108;
        aBlock._countAndFlagsBits = _NSConcreteStackBlock;
        aBlock._object = 1107296256;
        v137 = sub_1001742E0;
        v138 = &unk_1002BEDF8;
        v109 = _Block_copy(&aBlock);

        v110 = v127;
        static DispatchQoS.unspecified.getter();
        v135 = _swiftEmptyArrayStorage;
        sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
        sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
        v111 = v118;
        v112 = v115;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v109);

        (*(v120 + 8))(v111, v112);
        (*(v128 + 8))(v110, v119);
      }

      else
      {
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1002289A0;
        *(v93 + 56) = &type metadata for Bool;
        *(v93 + 64) = &protocol witness table for Bool;
        *(v93 + 32) = 0;
        *(v93 + 96) = &type metadata for Int;
        *(v93 + 104) = &protocol witness table for Int;
        *(v93 + 72) = 0;
        *(v93 + 136) = &type metadata for Bool;
        *(v93 + 144) = &protocol witness table for Bool;
        *(v93 + 112) = 0;
        os_log(_:dso:log:_:_:)();

        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        sub_100141908();
      }
    }
  }

  else
  {

    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100152B18(uint64_t a1, int a2)
{

  sub_10014AA54(2, a2, sub_100162B04, a1);
}

uint64_t sub_100152B78(uint64_t a1, char a2)
{
  if (a2)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100226100;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v3 = String.init<A>(describing:)();
    v5 = v4;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_1000EE954();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    os_log(_:dso:log:_:_:)();

    swift_errorRetain();
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      sub_1001624EC(&qword_1002F9330, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if ((v8 - 3) > 1)
      {
        v7 = v8;
        sub_10014E48C(v7, 0);
      }

      else
      {
        sub_100152F5C(150.0);
      }
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  return sub_100141908();
}

void sub_100152E60(void *a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    a3(a2, 1);
  }

  else if (a1)
  {
    v6 = a1;
    a3(a1, 0);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_100152F5C(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 72);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  aBlock[4] = sub_100162AD4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BED30;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = &_swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v6, v3);
  (*(v7 + 8))(v10, v16);
}

uint64_t sub_10015326C(double a1)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100226100;
  *(v2 + 56) = &type metadata for Double;
  *(v2 + 64) = &protocol witness table for Double;
  *(v2 + 32) = a1;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!*(result + 40))
    {
      sub_10014233C(a1);
    }
  }

  return result;
}

uint64_t sub_10015339C(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v34 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v33 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100226C80;
  [a1 scope];
  v13 = CKDatabaseScope.description.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_1000EE954();
  v17 = v16;
  *(v12 + 64) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  if (!a2)
  {
    v25 = (v12 + 72);
    *(v12 + 96) = &type metadata for String;
    *(v12 + 104) = v16;
LABEL_8:
    *v25 = 7104878;
    v24 = 0xE300000000000000;
    goto LABEL_9;
  }

  v31 = a1;
  v32 = a2;
  v18 = [a2 data];
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = Data.hexString.getter(v19, v21);
  v24 = v23;
  sub_1000EF870(v19, v21);
  v25 = (v12 + 72);
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v17;
  if (!v24)
  {
    a1 = v31;
    a2 = v32;
    goto LABEL_8;
  }

  *v25 = v22;
  a1 = v31;
  a2 = v32;
LABEL_9:
  *(v12 + 80) = v24;
  os_log(_:dso:log:_:_:)();

  v26 = v35 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
  v27 = type metadata accessor for CloudCoordinatorConfiguration();
  (*(v5 + 16))(v8, v26 + *(v27 + 28), v4);
  sub_10013A374(v8, [a1 scope]);
  v28 = *(v5 + 8);
  v28(v8, v4);
  sub_100160104(v11, a2);
  return (v28)(v11, v4);
}

uint64_t sub_100153694()
{
  v1 = v0;
  v2 = sub_10015FAF0();
  v4 = v3;
  v5 = sub_100161910(v2, v3);
  static os_log_type_t.default.getter();
  if (v5)
  {
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100226100;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_1000EE954();
    if (v4)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0x6E776F6E6B6E75;
    }

    v8 = 0xE700000000000000;
    if (v4)
    {
      v8 = v4;
    }

    *(v6 + 32) = v7;
    *(v6 + 40) = v8;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100226100;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000EE954();
    if (v4)
    {
      v11 = v2;
    }

    else
    {
      v11 = 0x6E776F6E6B6E75;
    }

    v12 = 0xE700000000000000;
    if (v4)
    {
      v12 = v4;
    }

    *(v10 + 32) = v11;
    *(v10 + 40) = v12;

    os_log(_:dso:log:_:_:)();

    v13 = sub_100140EA8();
    v14 = sub_100161A68(v13);

    v15 = v14;
    v16 = sub_100140F64();
    [v15 setGroup:v16];

    v17 = swift_allocObject();
    v17[2] = v1;
    v17[3] = v2;
    v17[4] = v4;

    CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.setter();
    v18 = *(v1 + 64);
    v19 = swift_allocObject();
    *(v19 + 16) = v1;
    *(v19 + 24) = v15;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1001633E8;
    *(v20 + 24) = v19;
    v23[4] = sub_1001633EC;
    v23[5] = v20;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_100174328;
    v23[3] = &unk_1002BECE0;
    v21 = _Block_copy(v23);
    v22 = v15;

    dispatch_sync(v18, v21);

    _Block_release(v21);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100153A64(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100226C80;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    v11 = sub_1000EE954();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v11;
    if (a5)
    {
      v12 = a4;
    }

    else
    {
      v12 = 0x6E776F6E6B6E75;
    }

    v13 = 0xE700000000000000;
    if (a5)
    {
      v13 = a5;
    }

    *(v7 + 64) = v11;
    *(v7 + 72) = v12;
    *(v7 + 80) = v13;

    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100226C80;
    v16 = sub_100140EA8();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    v19 = sub_1000EE954();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v19;
    if (a5)
    {
      v20 = a4;
    }

    else
    {
      v20 = 0x6E776F6E6B6E75;
    }

    v21 = 0xE700000000000000;
    if (a5)
    {
      v21 = a5;
    }

    *(v15 + 64) = v19;
    *(v15 + 72) = v20;
    *(v15 + 80) = v21;

    os_log(_:dso:log:_:_:)();

    return sub_100161BF8(a4, a5);
  }
}

uint64_t sub_100153CF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 72);
  OS_dispatch_queue.sync<A>(execute:)();
  v14 = aBlock;
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100226100;
  *(v15 + 56) = &type metadata for Bool;
  *(v15 + 64) = &protocol witness table for Bool;
  *(v15 + 32) = v14;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  if (v14)
  {
    v16 = *(v3 + 80);
    v17 = swift_allocObject();
    v17[2] = v24;
    v17[3] = a2;
    v17[4] = v3;
    v33 = sub_10015C2A8;
    v34 = v17;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v18 = &unk_1002BE3F8;
  }

  else
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v19 = *(v3 + 88);
    v20 = swift_allocObject();
    v21 = v24;
    v20[2] = v3;
    v20[3] = v21;
    v20[4] = a2;
    v33 = sub_10015C284;
    v34 = v20;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v18 = &unk_1002BE3A8;
  }

  v31 = sub_1001742E0;
  v32 = v18;
  v22 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = &_swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v27 + 8))(v8, v5);
  (*(v25 + 8))(v12, v26);
}

uint64_t sub_1001541BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
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
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  v14 = *(a1 + 80);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  aBlock[4] = sub_1001634E8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BE448;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_100154534(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v40 = a3;
  v41 = a2;
  v45 = type metadata accessor for Date();
  v42 = *(v45 - 8);
  v5 = *(v42 + 64);
  __chkstk_darwin(v45);
  v39 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = v38 - v7;
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v8 = qword_100300E28;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226100;
  v10 = a1;
  v11 = [v10 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v9 + 56) = &type metadata for String;
  v15 = sub_1000EE954();
  *(v9 + 64) = v15;
  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  v38[1] = v8;
  os_log(_:dso:log:_:_:)();

  if (IsAppleInternalBuild())
  {
    static os_log_type_t.default.getter();
  }

  else
  {
    static os_log_type_t.debug.getter();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100226C80;
  v17 = [v10 recordID];
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = v15;
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  sub_100143BEC();
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v15;
  *(v16 + 72) = v22;
  *(v16 + 80) = v23;
  os_log(_:dso:log:_:_:)();

  v24 = v46;
  static Date.now.getter();
  v25 = v42;
  v26 = v39;
  v27 = v45;
  (*(v42 + 16))(v39, v24, v45);
  v28 = (*(v25 + 80) + 40) & ~*(v25 + 80);
  v29 = v28 + v5;
  v30 = (v28 + v5) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v33 = v43;
  v32 = v44;
  *(v31 + 2) = v40;
  *(v31 + 3) = v33;
  *(v31 + 4) = v32;
  (*(v25 + 32))(&v31[v28], v26, v27);
  LOBYTE(v26) = v41 & 1;
  v31[v29] = v41 & 1;
  *&v31[v30 + 8] = v10;
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v10;
  *(v34 + 32) = sub_10015E2BC;
  *(v34 + 40) = v31;
  *(v34 + 48) = v26;
  v35 = v10;
  swift_retain_n();
  v36 = v35;

  sub_100153CF4(sub_10015E374, v34);

  return (*(v25 + 8))(v46, v27);
}

void sub_100154934(void *a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  v79 = a5;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v15);
  if ((a2 & 1) == 0)
  {
    (a3)(a1, 0, v19);

    sub_100161E3C(a1, a6, a7 & 1, 0);
    return;
  }

  v74 = v18;
  v75 = &i - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a8;
  v73 = v16;
  v76 = a3;
  v77 = a7;
  *&v90 = a1;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    v37 = a6;
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
LABEL_40:
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100226100;
    swift_getErrorValue();
    v39 = Error.localizedDescription.getter();
    v41 = v40;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_1000EE954();
    *(v38 + 32) = v39;
    *(v38 + 40) = v41;
    os_log(_:dso:log:_:_:)();

    v76(a1, 1);
    sub_100161E3C(v78, v37, v77 & 1, a1);
    return;
  }

  v20 = *&v87[0];
  *&v90 = *&v87[0];
  v21 = sub_1001624EC(&qword_1002F9330, type metadata accessor for CKError);
  _BridgedStoredNSError.code.getter();
  v71 = v20;
  v72 = a4;
  if (*&v87[0] == 26)
  {
    goto LABEL_4;
  }

  v70 = a6;
  *&v87[0] = v20;
  v42 = _BridgedStoredNSError.userInfo.getter();
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v42 + 16))
  {

    goto LABEL_32;
  }

  v69 = v21;
  v45 = sub_1000F8C5C(v43, v44);
  v47 = v46;

  if ((v47 & 1) == 0)
  {

    goto LABEL_32;
  }

  sub_100162534(*(v42 + 56) + 32 * v45, &v90);

  sub_1000EE870(&qword_1002F9338, &qword_1002292B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v58 = v78;
    static os_log_type_t.error.getter();
    v59 = v76;
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_100226100;
    swift_getErrorValue();
    v61 = Error.localizedDescription.getter();
    v63 = v62;
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = sub_1000EE954();
    *(v60 + 32) = v61;
    *(v60 + 40) = v63;
    os_log(_:dso:log:_:_:)();

    v64 = v71;
    v65 = v71;
    v59(v64, 1);

    v66 = v65;
    sub_10014E48C(v66, 0);

    v67 = v66;
    sub_100161E3C(v58, v70, v77 & 1, v64);

    return;
  }

  v37 = v82;
  v48 = v82 + 64;
  v49 = 1 << *(v82 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v82 + 64);
  v52 = (v49 + 63) >> 6;

  v53 = 0;
  for (i = v48; ; v48 = i)
  {
    if (!v51)
    {
      while (1)
      {
        v54 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if (v54 >= v52)
        {

          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0;

          goto LABEL_31;
        }

        v51 = *(v48 + 8 * v54);
        ++v53;
        if (v51)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    v54 = v53;
LABEL_27:
    v55 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v56 = v55 | (v54 << 6);
    sub_1000FA898(*(v37 + 48) + 40 * v56, v87);
    sub_100162534(*(v37 + 56) + 32 * v56, v88 + 8);
    v84 = v88[0];
    v85 = v88[1];
    v86 = v89;
    v82 = v87[0];
    v83 = v87[1];
    sub_100162590(&v82, v81);
    if (!swift_dynamicCast())
    {
      sub_1000EEE6C(&v82, &qword_1002F9340, &qword_1002292C0);
      sub_1000FA8F4(v81);
      goto LABEL_21;
    }

    v57 = v80;
    sub_1000FA8F4(v81);
    v81[0] = v57;
    _BridgedStoredNSError.code.getter();

    if (v80 == 26)
    {
      break;
    }

    sub_1000EEE6C(&v82, &qword_1002F9340, &qword_1002292C0);
LABEL_21:
    v53 = v54;
  }

  v92 = v84;
  v93 = v85;
  v94 = v86;
  v90 = v82;
  v91 = v83;

  if (!*(&v91 + 1))
  {
LABEL_31:
    sub_1000EEE6C(&v90, &qword_1002F9348, &qword_1002292C8);
    goto LABEL_32;
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sub_1000EEE6C(&v90, &qword_1002F9348, &qword_1002292C8);
  a6 = v70;
LABEL_4:
  static os_log_type_t.error.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  v22 = v78;
  v23 = [v78 recordID];
  v24 = [v23 zoneID];

  v25 = [v24 zoneName];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v27;
  v70 = v26;

  v28 = swift_allocObject();
  swift_weakInit();
  v30 = v73;
  v29 = v74;
  v31 = v75;
  (*(v73 + 16))(v75, a6, v74);
  v32 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v33 = v32 + v17;
  v34 = swift_allocObject();
  v35 = v76;
  *(v34 + 2) = v28;
  *(v34 + 3) = v35;
  *(v34 + 4) = v72;
  *(v34 + 5) = v22;
  (*(v30 + 32))(&v34[v32], v31, v29);
  v34[v33] = v77 & 1;

  v36 = v22;
  sub_10014BDC4(v70, v69, 0, sub_100162600, v34);
}

uint64_t sub_1001552D8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v44 = a6;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_10015C3E8();
    swift_allocError();
    *v24 = 0;
    a3();
  }

  v16 = Strong;
  if (a1)
  {
    v43 = a3;
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100226100;
    aBlock[0] = a1;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_1000EE954();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:_:_:)();

    sub_10015C3E8();
    v21 = swift_allocError();
    *v22 = a1;
    swift_errorRetain();
    (v43)(v21, 1);

    swift_errorRetain();
    sub_100161E3C(a5, v44, a7 & 1, a1);
  }

  sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1002290F0;
  *(v25 + 32) = a5;
  (*(v13 + 16))(&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v12);
  v26 = *(v13 + 80);
  LODWORD(v44) = a7;
  v27 = (v26 + 48) & ~v26;
  v28 = swift_allocObject();
  v29 = a3;
  v30 = v28;
  *(v28 + 2) = v29;
  *(v28 + 3) = a4;
  *(v28 + 4) = v16;
  *(v28 + 5) = a5;
  (*(v13 + 32))(&v28[v27], &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *(v30 + v27 + v14) = v44 & 1;
  v31 = a5;

  sub_1001559B8(v25, sub_100162698, v30);
  v33 = v32;

  if (!v33)
  {
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100226100;
  *(v34 + 56) = sub_1000FA784(0, &qword_1002F9358, CKModifyRecordsOperation_ptr);
  *(v34 + 64) = sub_100162740(&unk_1002F9360, &qword_1002F9358, CKModifyRecordsOperation_ptr);
  *(v34 + 32) = v33;
  v35 = v33;
  os_log(_:dso:log:_:_:)();

  v36 = *(v16 + 64);
  v37 = swift_allocObject();
  *(v37 + 16) = v16;
  *(v37 + 24) = v35;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1001633E8;
  *(v38 + 24) = v37;
  aBlock[4] = sub_1001633EC;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100174328;
  aBlock[3] = &unk_1002BE998;
  v39 = _Block_copy(aBlock);

  v40 = v35;

  dispatch_sync(v36, v39);

  _Block_release(v39);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1001558C8(unint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8)
{
  v12 = a1;
  if ((a2 & 1) == 0)
  {
    if (a1 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_5:
        if ((v12 & 0xC000000000000001) == 0)
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v13 = *(v12 + 32);
          goto LABEL_8;
        }

LABEL_14:
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
        v14 = v13;
        a3();

        v12 = 0;
        goto LABEL_9;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_14;
  }

  (a3)(a1, 1);
LABEL_9:

  sub_100161E3C(a6, a7, a8 & 1, v12);
}

void sub_1001559B8(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v44);
  v41 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_26:
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v38 = v8;
    v39 = v7;
    v40 = a2;
    v8 = v4;
    v4 = 0;
    v7 = a1 & 0xC000000000000001;
    do
    {
      if (v7)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v14 = *(a1 + 8 * v4 + 32);
      }

      v15 = v14;
      a2 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = *(CKRecord.changedKeys()() + 16);

      if (v16)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v17 = *(aBlock + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
    }

    while (a2 != v13);
    v18 = aBlock;
    v4 = v8;
    v7 = v39;
    a2 = v40;
    v8 = v38;
    if ((aBlock & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  v18 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  if ((v18 & 0x4000000000000000) != 0)
  {
LABEL_27:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (!*(v18 + 16))
  {
LABEL_28:
    v26 = v4;

    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100226100;
    sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
    v28 = Array.description.getter();
    v30 = v29;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_1000EE954();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    os_log(_:dso:log:_:_:)();

    v31 = *(v26 + 80);
    v32 = swift_allocObject();
    v33 = v45;
    v32[2] = a2;
    v32[3] = v33;
    v32[4] = a1;
    v51 = sub_1001627E0;
    v52 = v32;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_1001742E0;
    v50 = &unk_1002BEA38;
    v34 = _Block_copy(&aBlock);

    v35 = v41;
    static DispatchQoS.unspecified.getter();
    v46 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    v36 = v43;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);
    (*(v8 + 8))(v36, v7);
    (*(v42 + 8))(v35, v44);

    return;
  }

LABEL_19:
  sub_1000FA784(0, &qword_1002F9358, CKModifyRecordsOperation_ptr);

  v53.is_nil = 0;
  v19 = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v53, v54).super.super.super.super.isa;
  v20 = sub_100140F8C();
  [(objc_class *)v19 setGroup:v20];

  [(objc_class *)v19 setCallbackQueue:*(v4 + 80)];
  if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
  {
    [(objc_class *)v19 setQualityOfService:25];
  }

  v21 = [(objc_class *)v19 configuration];
  if (v21)
  {
    v22 = v21;
    [v21 setAutomaticallyRetryNetworkFailures:0];

    v23 = [(objc_class *)v19 configuration];
    if (v23)
    {

      [v23 setDiscretionaryNetworkBehavior:0];

      v24 = swift_allocObject();
      v24[2] = a1;
      v24[3] = a2;
      v24[4] = v45;
      v24[5] = v4;
      v51 = sub_100162784;
      v52 = v24;
      aBlock = _NSConcreteStackBlock;
      v48 = 1107296256;
      v49 = sub_1001566FC;
      v50 = &unk_1002BE9E8;
      v25 = _Block_copy(&aBlock);

      [(objc_class *)v19 setModifyRecordsCompletionBlock:v25];
      _Block_release(v25);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1001560A4(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(char *, void))
{
  v6 = a3;
  v7 = a1;
  if (a1)
  {
    if (!a3)
    {
      static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100226100;
      *(v8 + 56) = sub_1000EE870(&qword_1002F9D00, &qword_1002292D8);
      *(v8 + 64) = sub_1000FA0E0(&qword_1002F9370, &qword_1002F9D00, &qword_1002292D8);
      v6 = a4;
      *(v8 + 32) = a4;

      os_log(_:dso:log:_:_:)();

      if (IsAppleInternalBuild())
      {
        static os_log_type_t.default.getter();
      }

      else
      {
        static os_log_type_t.debug.getter();
      }

      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100226100;
      if (a4 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = v7;
      v32 = a5;
      if (!v15)
      {
LABEL_36:
        v27 = Array.description.getter();
        v29 = v28;

        *(v30 + 56) = &type metadata for String;
        *(v30 + 64) = sub_1000EE954();
        *(v30 + 32) = v27;
        *(v30 + 40) = v29;
        os_log(_:dso:log:_:_:)();

        v32(v31, 0);
        return;
      }

      v16 = 0;
      a5 = (a4 & 0xC000000000000001);
      v7 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (a5)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v17 = *(v6 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        sub_100143BEC();
        v21 = v20;
        v23 = v22;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1001CF194(0, *(v7 + 2) + 1, 1, v7);
        }

        v25 = *(v7 + 2);
        v24 = *(v7 + 3);
        if (v25 >= v24 >> 1)
        {
          v7 = sub_1001CF194((v24 > 1), v25 + 1, 1, v7);
        }

        *(v7 + 2) = v25 + 1;
        v26 = &v7[16 * v25];
        *(v26 + 4) = v21;
        *(v26 + 5) = v23;
        ++v16;
        v6 = a4;
        if (v19 == v15)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  else if (!a3)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_10015C3E8();
    v13 = swift_allocError();
    *v14 = 0;
    a5(v13, 1);

    return;
  }

  swift_errorRetain();
  static os_log_type_t.error.getter();
  if (qword_1002F7AD8 != -1)
  {
LABEL_39:
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100226100;
  swift_getErrorValue();
  v10 = Error.localizedDescription.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_1000EE954();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  os_log(_:dso:log:_:_:)();

  sub_10014E48C(v6, 0);
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    sub_1001624EC(&qword_1002F9330, type metadata accessor for CKError);
    _BridgedStoredNSError.code.getter();
    if (v34 == 2 && v7)
    {
      if (v7 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() >= 2)
        {
          goto LABEL_14;
        }
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
      {
LABEL_14:
        a5(v7, 0);
        swift_errorRetain();
        a5(v6, 1);

        return;
      }
    }
  }

  swift_errorRetain();
  a5(v6, 1);
}

uint64_t sub_100156720(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, unint64_t *a7, uint64_t *a8)
{
  v12 = a2;
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  if (a2)
  {
    sub_1000FA784(0, a5, a6);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_1000FA784(0, a7, a8);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v15 = a4;
  v14(v12, a3, a4);
}

uint64_t sub_100156800(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = 0;
  swift_beginAccess();
  v8 = *(a1 + 120);
  v11 = *(v8 + 64);
  v10 = v8 + 64;
  v9 = v11;
  v12 = 1 << *(*(a1 + 120) + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v173 = a1;
  *&v174 = *(a1 + 120);
  swift_bridgeObjectRetain_n();
  if (!v14)
  {
LABEL_5:
    while (1)
    {
      v16 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v16 >= v15)
      {

        goto LABEL_21;
      }

      v14 = *(v10 + 8 * v16);
      ++v7;
      if (v14)
      {
        goto LABEL_8;
      }
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  while (1)
  {
    v16 = v7;
LABEL_8:
    v17 = __clz(__rbit64(v14)) | (v16 << 6);
    v18 = *(*(v174 + 48) + 8 * v17);
    v19 = *(v174 + 56) + 16 * v17;
    v20 = *(v19 + 8);
    v169 = *v19;
    v21 = v18;

    v22 = v21;
    v23 = [v21 recordName];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v25;

    v26 = [a2 recordID];
    v27 = [v26 recordName];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    if (v24 == v28 && v5 == v30)
    {

      goto LABEL_18;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      break;
    }

    v14 &= v14 - 1;

    v7 = v16;
    if (!v14)
    {
      goto LABEL_5;
    }
  }

LABEL_18:

  sub_10015C3E8();
  v33 = swift_allocError();
  *v34 = 5;
  v181[0] = v33;
  v169(v181);

  swift_beginAccess();
  v35 = sub_10015C4EC(v22, sub_1000F8DD8, &qword_1002F8020, &unk_100226FF0);
  swift_endAccess();
  sub_100007B0C(v35);
  v5 = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100226100;
  v37 = v22;
  v38 = [v37 description];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = sub_1000EE954();
  *(v36 + 32) = v39;
  *(v36 + 40) = v41;
  *&v174 = v36;
  os_log(_:dso:log:_:_:)();

LABEL_21:

  swift_beginAccess();
  v42 = *(v173 + 112);
  v45 = *(v42 + 64);
  v44 = v42 + 64;
  v43 = v45;
  v46 = 1 << *(*(v173 + 112) + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v43;
  v49 = (v46 + 63) >> 6;
  v170 = *(v173 + 112);
  swift_bridgeObjectRetain_n();
  v50 = 0;
  if (!v48)
  {
LABEL_25:
    while (1)
    {
      v51 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v51 >= v49)
      {

        v65 = [a2 encryptedValues];
        v66 = String._bridgeToObjectiveC()();
        v67 = [v65 objectForKeyedSubscript:v66];
        swift_unknownObjectRelease();

        if (!v67 || (v177 = v67, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) == 0))
        {
LABEL_56:
          if (IsAppleInternalBuild())
          {
            static os_log_type_t.default.getter();
          }

          else
          {
            static os_log_type_t.debug.getter();
          }

          if (qword_1002F7AD8 != -1)
          {
            swift_once();
          }

          sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
          v87 = swift_allocObject();
          *(v87 + 16) = xmmword_100226C80;
          v88 = [a2 recordID];
          v89 = [v88 description];
          v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v92 = v91;

          *(v87 + 56) = &type metadata for String;
          v93 = sub_1000EE954();
          *(v87 + 64) = v93;
          *(v87 + 32) = v90;
          *(v87 + 40) = v92;
          sub_100143BEC();
          *(v87 + 96) = &type metadata for String;
          *(v87 + 104) = v93;
          *(v87 + 72) = v94;
          *(v87 + 80) = v95;
          os_log(_:dso:log:_:_:)();

          v96 = swift_allocObject();
          *(v96 + 16) = a3;
          *(v96 + 24) = a4;
          swift_beginAccess();

          v97 = sub_10015DFA4(sub_1001634DC, v96, a2);
          swift_endAccess();
          sub_100007B0C(v97);
          goto LABEL_70;
        }

        v68 = *(v173 + 112);
        v69 = 1 << *(v68 + 32);
        v70 = -1;
        if (v69 < 64)
        {
          v70 = ~(-1 << v69);
        }

        v71 = v70 & *(v68 + 64);
        v72 = (v69 + 63) >> 6;
        v73 = *(v173 + 112);
        swift_bridgeObjectRetain_n();
        for (i = 0; v71; i = v75)
        {
          v75 = i;
LABEL_44:
          v76 = __clz(__rbit64(v71));
          v71 &= v71 - 1;
          v77 = v76 | (v75 << 6);
          v174 = *(*(v68 + 56) + 16 * v77);
          v78 = *(*(v68 + 48) + 8 * v77);
          swift_retain_n();
          v5 = v78;
          v79 = [v5 encryptedValues];
          v80 = String._bridgeToObjectiveC()();
          v81 = [v79 objectForKeyedSubscript:v80];
          swift_unknownObjectRelease();

          if (v81 && (v177 = v81, (swift_dynamicCast() & 1) != 0))
          {

            v82 = CKRecord.recordType.getter();
            v84 = v83;
            if (v82 == CKRecord.recordType.getter() && v84 == v85)
            {
              goto LABEL_90;
            }

            v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v86)
            {
              goto LABEL_91;
            }
          }

          else
          {
          }
        }

        while (1)
        {
          v75 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v75 >= v72)
          {

            goto LABEL_56;
          }

          v71 = *(v68 + 64 + 8 * v75);
          ++i;
          if (v71)
          {
            goto LABEL_44;
          }
        }

        __break(1u);
        goto LABEL_98;
      }

      v48 = *(v44 + 8 * v51);
      ++v50;
      if (v48)
      {
        goto LABEL_28;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:

LABEL_91:

    v140 = swift_allocObject();
    *(v140 + 16) = v174;

    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v141 = swift_allocObject();
    *(v141 + 16) = xmmword_100226C80;
    v142 = swift_allocObject();
    *(v142 + 16) = sub_1001634E0;
    *(v142 + 24) = v140;
    v179 = v5;
    *&v180 = sub_1001634DC;
    *(&v180 + 1) = v142;
    v165 = v5;

    sub_1000EE870(&unk_1002F9320, &qword_1002292B0);
    v143 = String.init<A>(describing:)();
    v145 = v144;
    *(v141 + 56) = &type metadata for String;
    v146 = sub_1000EE954();
    *(v141 + 64) = v146;
    *(v141 + 32) = v143;
    *(v141 + 40) = v145;
    v147 = a2;
    v148 = [v147 description];
    v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v151 = v150;

    *(v141 + 96) = &type metadata for String;
    *(v141 + 104) = v146;
    *(v141 + 72) = v149;
    *(v141 + 80) = v151;
    os_log(_:dso:log:_:_:)();

    sub_10015C3E8();
    v152 = swift_allocError();
    *v153 = 5;
    v179 = v152;
    LOBYTE(v180) = 1;

    (v174)(&v179);

    a2 = v140;

    swift_beginAccess();
    v154 = sub_10015C4EC(v165, sub_1000F8D88, &qword_1002F8018, &qword_100226FE8);
    swift_endAccess();
    sub_100007B0C(v154);
    if (IsAppleInternalBuild())
    {
      static os_log_type_t.default.getter();
    }

    else
    {
      static os_log_type_t.debug.getter();
    }

    v155 = swift_allocObject();
    *(v155 + 16) = xmmword_100226C80;
    v156 = [v147 recordID];
    v157 = [v156 description];
    v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v160 = v159;

    *(v155 + 56) = &type metadata for String;
    *(v155 + 64) = v146;
    *(v155 + 32) = v158;
    *(v155 + 40) = v160;
    sub_100143BEC();
    *(v155 + 96) = &type metadata for String;
    *(v155 + 104) = v146;
    *(v155 + 72) = v161;
    *(v155 + 80) = v162;
    os_log(_:dso:log:_:_:)();

    v163 = swift_allocObject();
    *(v163 + 16) = a3;
    *(v163 + 24) = a4;
    swift_beginAccess();

    v164 = sub_10015DFA4(sub_1001634DC, v163, v147);
    swift_endAccess();
    sub_100007B0C(v164);

    goto LABEL_70;
  }

  while (1)
  {
    v51 = v50;
LABEL_28:
    v52 = __clz(__rbit64(v48)) | (v51 << 6);
    v175 = *(*(v170 + 56) + 16 * v52);
    v53 = *(*(v170 + 48) + 8 * v52);

    *&v174 = v53;
    v54 = [v53 recordID];
    v55 = [v54 recordName];

    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v57;

    v58 = [a2 recordID];
    v59 = [v58 recordName];

    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    if (v56 == v60 && v5 == v62)
    {

      goto LABEL_64;
    }

    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v64)
    {
      break;
    }

    v48 &= v48 - 1;

    v50 = v51;
    if (!v48)
    {
      goto LABEL_25;
    }
  }

LABEL_64:

  v171 = swift_allocObject();
  *(v171 + 16) = v175;
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_100226100;
  v99 = v174;
  v100 = [v99 description];
  v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v103 = v102;
  DWORD1(v174) = HIDWORD(v99);

  *(v98 + 56) = &type metadata for String;
  v104 = sub_1000EE954();
  *(v98 + 64) = v104;
  *(v98 + 32) = v101;
  *(v98 + 40) = v103;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_100226100;
  v106 = a2;
  v107 = [v106 description];
  v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v110 = v109;

  *(v105 + 56) = &type metadata for String;
  *(v105 + 64) = v104;
  *(v105 + 32) = v108;
  *(v105 + 40) = v110;
  os_log(_:dso:log:_:_:)();

  if (IsAppleInternalBuild())
  {
    static os_log_type_t.default.getter();
  }

  else
  {
    static os_log_type_t.debug.getter();
  }

  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_100226C80;
  v112 = [v106 recordID];
  v113 = [v112 description];
  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v116 = v115;

  *(v111 + 56) = &type metadata for String;
  *(v111 + 64) = v104;
  *(v111 + 32) = v114;
  *(v111 + 40) = v116;
  sub_100143BEC();
  *(v111 + 96) = &type metadata for String;
  *(v111 + 104) = v104;
  *(v111 + 72) = v117;
  *(v111 + 80) = v118;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  v119 = sub_10015C4EC(v99, sub_1000F8D88, &qword_1002F8018, &qword_100226FE8);
  sub_100007B0C(v119);
  v120 = swift_allocObject();
  v120[2] = v99;
  v120[3] = sub_10015E43C;
  v120[4] = v171;
  v120[5] = a3;
  v120[6] = a4;
  v121 = swift_allocObject();
  *(v121 + 16) = sub_10015E488;
  *(v121 + 24) = v120;
  v122 = v99;

  v123 = sub_10015DFA4(sub_10015E4E8, v121, v106);
  swift_endAccess();
  sub_100007B0C(v123);

LABEL_70:
  LODWORD(v174) = static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
LABEL_98:
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_100226C80;
  v125 = *(v173 + 112);
  v126 = *(v125 + 16);
  *(v124 + 56) = &type metadata for Int;
  *(v124 + 64) = &protocol witness table for Int;
  v172 = v124;
  *(v124 + 32) = v126;
  v127 = 1 << *(v125 + 32);
  v128 = -1;
  if (v127 < 64)
  {
    v128 = ~(-1 << v127);
  }

  v129 = v128 & *(v125 + 64);
  v130 = (v127 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v131 = 0;
  v5 = _swiftEmptyArrayStorage;
  while (v129)
  {
LABEL_81:
    v134 = __clz(__rbit64(v129)) | (v131 << 6);
    v135 = *(v125 + 56);
    v179 = *(*(v125 + 48) + 8 * v134);
    v180 = *(v135 + 16 * v134);
    sub_100157C8C(&v179, &v177);
    v136 = v178;
    if (v178)
    {
      a2 = v177;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1001CF194(0, v5[2] + 1, 1, v5);
      }

      v138 = v5[2];
      v137 = v5[3];
      if (v138 >= v137 >> 1)
      {
        v5 = sub_1001CF194((v137 > 1), v138 + 1, 1, v5);
      }

      v5[2] = v138 + 1;
      v132 = &v5[2 * v138];
      v132[4] = a2;
      v132[5] = v136;
    }

    v129 &= v129 - 1;
  }

  while (1)
  {
    v133 = v131 + 1;
    if (__OFADD__(v131, 1))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v133 >= v130)
    {
      break;
    }

    v129 = *(v125 + 64 + 8 * v133);
    ++v131;
    if (v129)
    {
      v131 = v133;
      goto LABEL_81;
    }
  }

  v172[12] = sub_1000EE870(&qword_1002F7F00, &qword_1002284F0);
  v172[13] = sub_1000FA0E0(&unk_1002F9310, &qword_1002F7F00, &qword_1002284F0);
  v172[9] = v5;
  os_log(_:dso:log:_:_:)();

  return sub_100142A78(a5 & 1);
}

uint64_t sub_100157C8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *a1;

  v5 = [v4 recordID];
  v6 = [v5 recordName];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = 58;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);

  v11 = v9;
  v12 = v4;
  v13 = CKRecord.recordType.getter();
  v15 = v14;

  v27 = v7;
  v28 = v11;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 58;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);

  v19 = v7;
  v18 = v11;
  v20 = [v12 encryptedValues];

  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 objectForKeyedSubscript:v21];
  swift_unknownObjectRelease();

  if (v22 && (sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) != 0))
  {
    v23 = v27;
    v24 = v28;
  }

  else
  {
    v24 = 0xE200000000000000;
    v23 = 15932;
  }

  v25._countAndFlagsBits = v23;
  v25._object = v24;
  String.append(_:)(v25);

  *a2 = v19;
  a2[1] = v18;
  return result;
}

uint64_t sub_100157F14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27 = a7;
  v26 = a5;
  v28 = a10;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v18 = *(v30 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v30);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a3 + 72);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  *(v22 + 32) = v26;
  *(v22 + 40) = a6;
  *(v22 + 48) = v27;
  aBlock[4] = a9;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = v28;
  v23 = _Block_copy(aBlock);

  v24 = a4;

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v14 + 8))(v17, v13);
  (*(v18 + 8))(v21, v30);
}

uint64_t sub_100158204(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  v101 = a1;
  v6 = *(a1 + 112);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(a1 + 112) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v105 = *(a1 + 112);
  swift_bridgeObjectRetain_n();
  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = __clz(__rbit64(v12)) | (v15 << 6);
      v17 = *(*(v105 + 48) + 8 * v16);
      v18 = *(v105 + 56) + 16 * v16;
      v19 = *(v18 + 8);
      v102 = *v18;
      v20 = v17;

      v21 = [v20 recordID];
      v22 = [v21 recordName];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = [a2 recordName];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (v23 == v27 && v25 == v29)
      {

        goto LABEL_18;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        break;
      }

      v12 &= v12 - 1;

      v14 = v15;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

LABEL_18:

    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100226100;
    v33 = v20;
    v34 = [v33 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_1000EE954();
    *(v32 + 32) = v35;
    *(v32 + 40) = v37;
    os_log(_:dso:log:_:_:)();

    sub_10015C3E8();
    v38 = swift_allocError();
    *v39 = 5;
    v110 = v38;
    v111 = 1;
    v102(&v110);

    swift_beginAccess();
    v40 = sub_10015C4EC(v33, sub_1000F8D88, &qword_1002F8018, &qword_100226FE8);
    swift_endAccess();
    sub_100007B0C(v40);

LABEL_21:
    swift_beginAccess();
    v41 = *(v101 + 120);
    v44 = *(v41 + 64);
    v43 = v41 + 64;
    v42 = v44;
    v45 = 1 << *(*(v101 + 120) + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & v42;
    v48 = (v45 + 63) >> 6;
    v103 = *(v101 + 120);
    swift_bridgeObjectRetain_n();
    v49 = 0;
    if (v47)
    {
      while (1)
      {
        v50 = v49;
LABEL_28:
        v51 = __clz(__rbit64(v47)) | (v50 << 6);
        v107 = *(*(v103 + 56) + 16 * v51);
        v52 = *(*(v103 + 48) + 8 * v51);

        v106 = v52;
        v53 = [v52 recordName];
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v57 = [a2 recordName];
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        if (v54 == v58 && v56 == v60)
        {

          goto LABEL_38;
        }

        v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v62)
        {
          break;
        }

        v47 &= v47 - 1;

        v49 = v50;
        if (!v47)
        {
          goto LABEL_25;
        }
      }

LABEL_38:

      v65 = swift_allocObject();
      *(v65 + 16) = v107;
      v66 = swift_allocObject();
      v66[2] = v106;
      v66[3] = sub_10015C43C;
      v66[4] = v65;
      v66[5] = a3;
      v66[6] = a4;
      v67 = v106;

      static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_100226100;
      v69 = v67;
      v70 = [v69 description];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      *(v68 + 56) = &type metadata for String;
      *(v68 + 64) = sub_1000EE954();
      *(v68 + 32) = v71;
      *(v68 + 40) = v73;
      os_log(_:dso:log:_:_:)();

      v74 = swift_allocObject();
      *(v74 + 16) = sub_10015C474;
      *(v74 + 24) = v66;
      swift_beginAccess();

      v75 = sub_10015E130(sub_10015C4C0, v74, v69);
      swift_endAccess();
      sub_100007B0C(v75);
    }

    else
    {
      while (1)
      {
LABEL_25:
        v50 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_58;
        }

        if (v50 >= v48)
        {
          break;
        }

        v47 = *(v43 + 8 * v50);
        ++v49;
        if (v47)
        {
          goto LABEL_28;
        }
      }

      v63 = swift_allocObject();
      *(v63 + 16) = a3;
      *(v63 + 24) = a4;
      swift_beginAccess();

      v64 = sub_10015E130(sub_1001634C8, v63, a2);
      swift_endAccess();
      sub_100007B0C(v64);
    }

    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_59;
  }

LABEL_5:
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      goto LABEL_21;
    }

    v12 = *(v8 + 8 * v15);
    ++v14;
    if (v12)
    {
      goto LABEL_8;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  swift_once();
LABEL_42:
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_100226C80;
  v77 = *(v101 + 120);
  v78 = *(v77 + 16);
  *(v76 + 56) = &type metadata for Int;
  *(v76 + 64) = &protocol witness table for Int;
  v104 = v76;
  *(v76 + 32) = v78;
  v79 = v77 + 64;
  v80 = 1 << *(v77 + 32);
  v81 = -1;
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  v82 = v81 & *(v77 + 64);
  v83 = (v80 + 63) >> 6;
  v109 = v77;
  swift_bridgeObjectRetain_n();
  v84 = 0;
  for (i = _swiftEmptyArrayStorage; v82; *(v96 + 5) = v93)
  {
LABEL_49:
    v87 = __clz(__rbit64(v82)) | (v84 << 6);
    v88 = *(v109[7] + 16 * v87 + 8);
    v89 = *(v109[6] + 8 * v87);

    v90 = [v89 recordName];
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1001CF194(0, *(i + 2) + 1, 1, i);
    }

    v95 = *(i + 2);
    v94 = *(i + 3);
    if (v95 >= v94 >> 1)
    {
      i = sub_1001CF194((v94 > 1), v95 + 1, 1, i);
    }

    v82 &= v82 - 1;
    *(i + 2) = v95 + 1;
    v96 = &i[16 * v95];
    *(v96 + 4) = v91;
  }

  while (1)
  {
    v86 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v86 >= v83)
    {
      break;
    }

    v82 = *(v79 + 8 * v86);
    ++v84;
    if (v82)
    {
      v84 = v86;
      goto LABEL_49;
    }
  }

  v104[12] = sub_1000EE870(&qword_1002F7F00, &qword_1002284F0);
  v104[13] = sub_1000FA0E0(&unk_1002F9310, &qword_1002F7F00, &qword_1002284F0);
  v104[9] = i;
  os_log(_:dso:log:_:_:)();

  return sub_100142A78(a5 & 1);
}

uint64_t sub_100158CC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(result + 16);
  if (v7)
  {
    v8 = result;
    sub_1000FA784(0, &qword_1002F92E0, CKQuery_ptr);
    v9 = objc_opt_self();
    v33 = 0;
    v27 = v6;
    queue = *(v6 + 64);
    v26 = v9;
    v24 = v35;
    v10 = v7 - 1;
    for (i = (v8 + 40); ; i += 2)
    {
      v13 = *(i - 1);
      v12 = *i;
      swift_bridgeObjectRetain_n();
      v14 = [v26 predicateWithValue:{1, v24}];
      v15._countAndFlagsBits = v13;
      v15._object = v12;
      isa = CKQuery.init(recordType:predicate:)(v15, v14).super.isa;
      v17 = [objc_allocWithZone(CKQueryOperation) initWithQuery:isa];
      [v17 setZoneID:a2];
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      v19[2] = a3;
      v19[3] = a4;
      v19[4] = a5;
      v19[5] = a6;
      v19[6] = v18;
      v19[7] = v13;
      v19[8] = v12;
      sub_10015C2F4(a3, a4);

      CKQueryOperation.recordMatchedBlock.setter();

      v20 = swift_allocObject();
      *(v20 + 16) = v27;
      *(v20 + 24) = v17;

      v21 = v17;
      sub_100007B0C(v33);
      v22 = swift_allocObject();
      *(v22 + 16) = sub_10015C384;
      *(v22 + 24) = v20;
      v35[2] = sub_10015C3A0;
      v35[3] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v35[0] = sub_100174328;
      v35[1] = &unk_1002BE5D8;
      v23 = _Block_copy(aBlock);

      dispatch_sync(queue, v23);

      _Block_release(v23);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if (v21)
      {
        break;
      }

      if (!v10)
      {
      }

      --v10;
      v33 = sub_10015C384;
    }

    __break(1u);
  }

  return result;
}

void sub_100158FD4(void *a1, void **a2, char a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100226C80;
    v13 = a1;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    *(v12 + 56) = &type metadata for String;
    v18 = sub_1000EE954();
    *(v12 + 64) = v18;
    *(v12 + 32) = v15;
    *(v12 + 40) = v17;
    aBlock = a2;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v19 = String.init<A>(describing:)();
    *(v12 + 96) = &type metadata for String;
    *(v12 + 104) = v18;
    *(v12 + 72) = v19;
    *(v12 + 80) = v20;
    os_log(_:dso:log:_:_:)();
    goto LABEL_13;
  }

  v23 = a9;
  v22 = a10;
  if (a5)
  {

    v27 = [a2 encryptedValues];

    v28 = String._bridgeToObjectiveC()();

    v29 = [v27 objectForKeyedSubscript:v28];
    swift_unknownObjectRelease();

    if (!v29)
    {

      goto LABEL_13;
    }

    v53 = v29;
    sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
    if (swift_dynamicCast())
    {
      if (aBlock == a6 && v48 == a7)
      {

LABEL_15:
        static os_log_type_t.default.getter();
        if (qword_1002F7AD8 != -1)
        {
          swift_once();
        }

        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1002289A0;
        *(v31 + 56) = &type metadata for String;
        v32 = sub_1000EE954();
        *(v31 + 32) = a4;
        *(v31 + 40) = a5;
        *(v31 + 96) = &type metadata for String;
        *(v31 + 104) = v32;
        *(v31 + 64) = v32;
        *(v31 + 72) = a6;
        *(v31 + 80) = a7;
        v33 = [a2 description];
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        sub_100008030(a2, 0);
        *(v31 + 136) = &type metadata for String;
        *(v31 + 144) = v32;
        *(v31 + 112) = v34;
        *(v31 + 120) = v36;
        os_log(_:dso:log:_:_:)();

        v23 = a9;
        v22 = a10;
        goto LABEL_18;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_15;
      }
    }

LABEL_13:

    return;
  }

LABEL_18:
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100226100;
  v38 = a1;
  v39 = [v38 description];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  *(v37 + 56) = &type metadata for String;
  *(v37 + 64) = sub_1000EE954();
  *(v37 + 32) = v40;
  *(v37 + 40) = v42;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v43 = sub_100140CF8();
    v44 = [v43 privateCloudDatabase];

    v45 = swift_allocObject();
    *(v45 + 16) = v23;
    *(v45 + 24) = v22;
    v51 = sub_10015C3C8;
    v52 = v45;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_1001634D8;
    v50 = &unk_1002BE628;
    v46 = _Block_copy(&aBlock);

    [v44 deleteRecordWithID:v38 completionHandler:v46];
    _Block_release(v46);
  }
}

uint64_t sub_1001595A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226C80;
    v6 = a1;
    sub_1000EE870(&qword_1002F92F8, &unk_1002292A0);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    *(v5 + 56) = &type metadata for String;
    v10 = sub_1000EE954();
    *(v5 + 64) = v10;
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v11 = String.init<A>(describing:)();
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v10;
    *(v5 + 72) = v11;
    *(v5 + 80) = v12;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100226C80;
    *(v16 + 56) = &type metadata for String;
    v17 = sub_1000EE954();
    *(v16 + 64) = v17;
    *(v16 + 32) = a3;
    *(v16 + 40) = a4;
    v18 = a1;

    sub_1000EE870(&qword_1002F92F8, &unk_1002292A0);
    v19 = String.init<A>(describing:)();
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v17;
    *(v16 + 72) = v19;
    *(v16 + 80) = v20;
    os_log(_:dso:log:_:_:)();
  }
}

void sub_100159820(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1001598AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_100140CF8();
  v4 = [v3 privateCloudDatabase];

  [v4 addOperation:a2];
}

uint64_t sub_100159924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66 = a5;
  v67 = a6;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v58 = v23;
    v59 = v20;
    v60 = v18;
    v61 = v19;
    v62 = v15;
    v63 = v14;
    v57 = a11;
    v56 = a10;
    v25 = result;
    v68 = dispatch_group_create();
    v26 = swift_allocObject();
    v27 = v26;
    *(v26 + 16) = _swiftEmptyArrayStorage;
    v28 = *(a4 + 16);
    if (v28)
    {
      v29 = a7;
      v71 = 0;
      v64 = a9;
      v65 = v26;
      v30 = (a4 + 40);
      do
      {
        v70 = v28;
        v32 = *(v30 - 1);
        v31 = *v30;

        v33 = v68;
        dispatch_group_enter(v68);
        sub_1000FA784(0, &qword_1002F92E0, CKQuery_ptr);
        v34 = [objc_opt_self() predicateWithValue:1];
        v35._countAndFlagsBits = v32;
        v35._object = v31;
        isa = CKQuery.init(recordType:predicate:)(v35, v34).super.isa;
        v36 = [objc_allocWithZone(CKQueryOperation) initWithQuery:isa];
        [v36 setZoneID:v66];
        v37 = swift_allocObject();
        v38 = v67;
        v37[2] = v67;
        v37[3] = v29;
        v39 = v64;
        v37[4] = a8;
        v37[5] = v39;
        v37[6] = v27;

        sub_10015C2F4(v38, v29);
        CKQueryOperation.recordMatchedBlock.setter();
        *(swift_allocObject() + 16) = v33;
        v40 = v33;
        CKQueryOperation.queryResultBlock.setter();
        v41 = v29;
        v42 = a8;
        v43 = *(v25 + 64);
        v44 = swift_allocObject();
        v45 = swift_weakInit();
        __chkstk_darwin(v45);
        *(&v56 - 2) = v44;
        *(&v56 - 1) = v36;
        v46 = v43;
        sub_1000EE870(&qword_1002F92E8, &unk_100229290);
        v47 = v71;
        OS_dispatch_queue.sync<A>(execute:)();
        v71 = v47;

        a8 = v42;
        v29 = v41;

        v27 = v65;
        v30 += 2;
        v28 = v70 - 1;
      }

      while (v70 != 1);
    }

    v48 = *(v25 + 80);
    v49 = swift_allocObject();
    v50 = v57;
    v49[2] = v56;
    v49[3] = v50;
    v49[4] = v27;
    aBlock[4] = sub_10015C340;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002BE538;
    v51 = _Block_copy(aBlock);

    v52 = v58;
    static DispatchQoS.unspecified.getter();
    v72 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    v53 = v60;
    v54 = v63;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v55 = v68;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v51);

    (*(v62 + 8))(v53, v54);
    (*(v59 + 8))(v52, v61);
  }

  return result;
}

uint64_t sub_100159F3C(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100226C80;
    v11 = a1;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    *(v10 + 56) = &type metadata for String;
    v16 = sub_1000EE954();
    *(v10 + 64) = v16;
    *(v10 + 32) = v13;
    *(v10 + 40) = v15;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v17 = String.init<A>(describing:)();
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v16;
    *(v10 + 72) = v17;
    *(v10 + 80) = v18;
    os_log(_:dso:log:_:_:)();
  }

  if (a5)
  {

    v23 = [a2 encryptedValues];

    v24 = String._bridgeToObjectiveC()();

    v25 = [v23 objectForKeyedSubscript:v24];
    swift_unknownObjectRelease();

    if (!v25)
    {
    }

    sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
    if (swift_dynamicCast())
    {
      if (v43 == a6 && v44 == a7)
      {

LABEL_15:
        static os_log_type_t.default.getter();
        if (qword_1002F7AD8 != -1)
        {
          swift_once();
        }

        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1002289A0;
        *(v28 + 56) = &type metadata for String;
        v29 = sub_1000EE954();
        *(v28 + 32) = a4;
        *(v28 + 40) = a5;
        *(v28 + 96) = &type metadata for String;
        *(v28 + 104) = v29;
        *(v28 + 64) = v29;
        *(v28 + 72) = a6;
        *(v28 + 80) = a7;
        v30 = [a2 description];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        sub_100008030(a2, 0);
        *(v28 + 136) = &type metadata for String;
        *(v28 + 144) = v29;
        *(v28 + 112) = v31;
        *(v28 + 120) = v33;
        os_log(_:dso:log:_:_:)();

        goto LABEL_18;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_18:
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100226100;
  v35 = a2;
  v36 = [v35 description];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  sub_100008030(a2, 0);
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = sub_1000EE954();
  *(v34 + 32) = v37;
  *(v34 + 40) = v39;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  v40 = v35;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v41 = *((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void sub_10015A47C(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = sub_100140CF8();
    v6 = [v5 privateCloudDatabase];

    [v6 addOperation:a1];
  }

  *a2 = Strong == 0;
}

uint64_t sub_10015A538(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  a1(v6);
}

uint64_t sub_10015A5E8()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 72);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.notOnQueue(_:), v1, v4);
  v7;
  v8 = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v6, v1);
  if (v8)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    return v10[15];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015A9BC(void *a1)
{
  v2 = [a1 databaseScope];
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100226100;
  *(v3 + 56) = sub_1000FA784(0, &qword_1002F9448, CKDatabaseNotification_ptr);
  *(v3 + 64) = sub_100162740(&qword_1002F9450, &qword_1002F9448, CKDatabaseNotification_ptr);
  *(v3 + 32) = a1;
  v4 = a1;
  os_log(_:dso:log:_:_:)();

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;

  sub_100153CF4(sub_10016291C, v6);
}

uint64_t sub_10015AB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20[1] = *(result + 72);
    v22 = result;
    v16 = swift_allocObject();
    v20[0] = v6;
    v21 = v10;
    v17 = v16;
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a4;
    aBlock[4] = sub_100162924;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002BEC40;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v23 = _swiftEmptyArrayStorage;
    sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    (*(v20[0] + 8))(v9, v5);
    (*(v11 + 8))(v14, v21);
  }

  return result;
}

uint64_t sub_10015AEC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_10014AA54(a2, 0, sub_10016292C, a1);
  }

  return result;
}

void sub_10015AF58(uint64_t a1, char a2)
{
  if (a2)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100226100;
    swift_getErrorValue();
    v3 = Error.localizedDescription.getter();
    v5 = v4;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_1000EE954();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    os_log(_:dso:log:_:_:)();

    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      sub_1001624EC(&qword_1002F9330, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if (v6 == 4 || (_BridgedStoredNSError.code.getter(), v6 == 3))
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_100152F5C(150.0);
        }
      }
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }
}

void sub_10015B220(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 recordZoneID];
  if (v18)
  {
    v42 = v13;
    v43 = v12;
    v50 = v18;
    v44 = v9;
    v45 = v7;
    v46 = v8;
    v47 = v4;
    v48 = v3;
    v19 = [a1 databaseScope];
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v20 = swift_allocObject();
    v41 = xmmword_100226100;
    *(v20 + 16) = xmmword_100226100;
    *(v20 + 56) = sub_1000FA784(0, &qword_1002F93D8, CKRecordZoneNotification_ptr);
    *(v20 + 64) = sub_100162740(&qword_1002F93E0, &qword_1002F93D8, CKRecordZoneNotification_ptr);
    *(v20 + 32) = a1;
    v21 = a1;
    os_log(_:dso:log:_:_:)();

    if (v19 == 1 || v19 == 3)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      if (v19 == 2)
      {
        v22 = sub_100140CF8();
        v23 = [v22 privateCloudDatabase];

        sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1002290F0;
        *(v24 + 32) = v50;
        sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
        v25 = v49;
        v26 = v42;
        (*(v49 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v42);
        v50 = v50;

        v27 = static OS_dispatch_queue.global(qos:)();
        (*(v25 + 8))(v17, v26);
        v28 = swift_allocObject();
        *(v28 + 16) = v24;
        *(v28 + 24) = sub_100162878;
        *(v28 + 32) = v1;
        *(v28 + 40) = v1;
        *(v28 + 48) = v23;
        *(v28 + 56) = 0;
        aBlock[4] = sub_100162884;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001742E0;
        aBlock[3] = &unk_1002BEA88;
        v29 = _Block_copy(aBlock);
        swift_retain_n();
        v30 = v23;
        v31 = v43;
        static DispatchQoS.unspecified.getter();
        v51 = _swiftEmptyArrayStorage;
        sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
        sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
        v32 = v45;
        v33 = v48;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v29);

        (*(v47 + 8))(v32, v33);
        (*(v44 + 8))(v31, v46);

        return;
      }

      static os_log_type_t.error.getter();
      v36 = swift_allocObject();
      *(v36 + 16) = v41;
      v37 = CKDatabaseScope.description.getter();
      v39 = v38;
      *(v36 + 56) = &type metadata for String;
      *(v36 + 64) = sub_1000EE954();
      *(v36 + 32) = v37;
      *(v36 + 40) = v39;
      os_log(_:dso:log:_:_:)();
    }

    v40 = v50;
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100226100;
    *(v34 + 56) = sub_1000FA784(0, &qword_1002F93D8, CKRecordZoneNotification_ptr);
    *(v34 + 64) = sub_100162740(&qword_1002F93E0, &qword_1002F93D8, CKRecordZoneNotification_ptr);
    *(v34 + 32) = a1;
    v35 = a1;
    os_log(_:dso:log:_:_:)();
  }
}

void sub_10015BA20(uint64_t a1, char a2)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100226100;
  v4 = sub_100140CF8();
  v5 = [v4 privateCloudDatabase];

  *(v3 + 56) = sub_1000FA784(0, &qword_1002F9438, CKDatabase_ptr);
  *(v3 + 64) = sub_100162740(&qword_1002F9440, &qword_1002F9438, CKDatabase_ptr);
  *(v3 + 32) = v5;
  os_log(_:dso:log:_:_:)();

  if (a2)
  {
    static os_log_type_t.error.getter();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100226100;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_1000EE954();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    os_log(_:dso:log:_:_:)();

    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      sub_1001624EC(&qword_1002F9330, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if (v10 == 4 || (_BridgedStoredNSError.code.getter(), v10 == 3))
      {
        sub_100152F5C(150.0);
      }
    }
  }

  else
  {
    static os_log_type_t.default.getter();

    os_log(_:dso:log:_:_:)();
  }
}

void sub_10015BD68(void *a1)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100226100;
  *(v2 + 56) = sub_1000FA784(0, &qword_1002F93C0, APSIncomingMessage_ptr);
  *(v2 + 64) = sub_100162740(&qword_1002F93C8, &qword_1002F93C0, APSIncomingMessage_ptr);
  *(v2 + 32) = a1;
  v3 = a1;
  os_log(_:dso:log:_:_:)();

  v4 = [v3 userInfo];
  if (v4)
  {
    v5 = v4;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v7 = [objc_opt_self() notificationFromRemoteNotificationDictionary:isa];

    static os_log_type_t.error.getter();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100226100;
    v9 = v7;
    sub_1000EE870(&qword_1002F93D0, &qword_100229320);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    *(v8 + 56) = &type metadata for String;
    v13 = sub_1000EE954();
    *(v8 + 64) = v13;
    *(v8 + 32) = v10;
    *(v8 + 40) = v12;
    os_log(_:dso:log:_:_:)();

    if (!v9)
    {
      static os_log_type_t.error.getter();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100226100;
      v17 = String.init<A>(describing:)();
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = v13;
      *(v16 + 32) = v17;
      *(v16 + 40) = v18;
      os_log(_:dso:log:_:_:)();

      return;
    }

    v14 = [v9 notificationType];
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        goto LABEL_16;
      }

      if (v14 == 4)
      {
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          sub_10015A9BC(v19);
          goto LABEL_17;
        }

LABEL_16:
        static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)();
        goto LABEL_17;
      }
    }

    else
    {
      if (v14 == 1)
      {
        goto LABEL_16;
      }

      if (v14 == 2)
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          sub_10015B220(v15);
LABEL_17:

          return;
        }

        goto LABEL_16;
      }
    }

    static os_log_type_t.error.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100226100;
    type metadata accessor for NotificationType(0);
    v21 = String.init<A>(describing:)();
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = v13;
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    os_log(_:dso:log:_:_:)();

    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_10015C290(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015C2F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10015C3A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_10015C3E8()
{
  result = qword_1002F9300;
  if (!qword_1002F9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F9300);
  }

  return result;
}

uint64_t sub_10015C43C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_10015C474(uint64_t a1)
{
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  (*(v1 + 24))();
  return v5(a1);
}

uint64_t sub_10015C4C0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_10015C4EC(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
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
    sub_10015DAC8(a3, a4);
    v14 = v19;
  }

  v15 = (*(v14 + 56) + 16 * v11);
  v16 = *v15;
  v17 = v15[1];
  sub_10015D584(v11, v14);
  *v7 = v14;
  return v16;
}

uint64_t sub_10015C5A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1000F8C5C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10015DD90();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_10015D710(v7, v10);
  *v3 = v10;
  return v12;
}

Swift::Int sub_10015C640(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000EE870(&unk_1002F9420, &qword_100229338);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000FA784(0, &qword_1002F9430, CKFetchRecordZoneChangesConfiguration_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10015D074(v12 + 1, 1);
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
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_10015C88C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000EE870(&qword_1002F8030, qword_100229300);
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

uint64_t sub_10015CB2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000EE870(&unk_1002F9510, &qword_100229390);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v33 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for CFString(0);
      sub_1001624EC(&qword_1002F8028, type metadata accessor for CFString);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v33;
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

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10015CE08(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1000EE870(a3, a4);
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

uint64_t sub_10015D074(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000EE870(&unk_1002F9420, &qword_100229338);
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

uint64_t sub_10015D2DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000EE870(&qword_1002F93B8, &qword_100229318);
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

void sub_10015D584(int64_t a1, uint64_t a2)
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

uint64_t sub_10015D710(uint64_t result, uint64_t a2)
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
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
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

  return result;
}

unint64_t sub_10015D8C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_10015D908(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_10015D94C()
{
  v1 = v0;
  sub_1000EE870(&qword_1002F8030, qword_100229300);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_10015DAC8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000EE870(a1, a2);
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

id sub_10015DC30()
{
  v1 = v0;
  sub_1000EE870(&unk_1002F9420, &qword_100229338);
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

void *sub_10015DD90()
{
  v1 = v0;
  sub_1000EE870(&qword_1002F93B8, &qword_100229318);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

uint64_t sub_10015DF00(uint64_t result, double a2, double a3)
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
    return sub_10015DF00(v6, a2, a3);
  }

  return result;
}

unint64_t sub_10015DFA4(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  result = sub_1000F8D88(a3);
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
    sub_10015CE08(v17, isUniquelyReferenced_nonNull_native, &qword_1002F8018, &qword_100226FE8);
    result = sub_1000F8D88(a3);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = result;
    sub_10015DAC8(&qword_1002F8018, &qword_100226FE8);
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

unint64_t sub_10015E130(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  result = sub_1000F8DD8(a3);
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
    sub_10015CE08(v17, isUniquelyReferenced_nonNull_native, &qword_1002F8020, &unk_100226FF0);
    result = sub_1000F8DD8(a3);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = result;
    sub_10015DAC8(&qword_1002F8020, &unk_100226FF0);
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

void sub_10015E2BC(void *a1, char a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = *(v2 + v7);
  v12 = *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);

  sub_100154934(a1, a2 & 1, v8, v9, v10, v2 + v6, v11, v12);
}

uint64_t sub_10015E3C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10015E440()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10015E488(uint64_t a1, char a2)
{
  v5 = *(v2 + 32);
  v7 = *(v2 + 40);
  v6 = *(v2 + 48);
  (*(v2 + 24))(a1, a2 & 1);
  return v7(a1, a2 & 1);
}

unint64_t *sub_10015E4EC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v59[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v50 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v55 = v4;
  v56 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v53 = v5 + 1;
    v11 = *(v2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v53;
    if (v53 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v56;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v59[1] = v53;

  v22 = *(v2 + 32);
  v51 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v51;
  v24 = v56;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v44 = v23;

  v45 = v44;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v52 = &v49;
    __chkstk_darwin(v21);
    v14 = &v49 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v58 = v7;
    memcpy(v14, v7, v25);
    v57 = v2;
    v26 = *(v2 + 16);
    v27 = *(v14 + 8 * v15) & ~v16;
    v54 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v55;
    v7 = *(v55 + 16);
    v30 = v53;
    while (1)
    {
      v53 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_10015EB7C(v54, v51, v53, v57);
LABEL_42:

        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v57;
        v34 = *(v57 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v35 = Hasher._finalize()();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v58[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v56;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (*(v2 + 48) + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = 1;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v58[v37 >> 6]) == 0)
          {
            v29 = v55;
            goto LABEL_37;
          }

          v42 = (*(v57 + 48) + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v55;
      v31 = v54[v14];
      v54[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v53 - 1;
      v24 = v56;
      if (__OFSUB__(v53, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v53 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_42;
      }
    }
  }

  v46 = swift_slowAlloc();
  memcpy(v46, v7, v45);
  v47 = v50;
  v48 = sub_10015E998(v46, v51, v2, v14, v59);

  if (!v47)
  {

    return v48;
  }

  __break(1u);
  return result;
}

unint64_t *sub_10015E998(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_10015EB7C(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v17 = Hasher._finalize()();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_10015EB7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000EE870(&qword_1002F9D50, &unk_100229360);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_10015EDA0(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10015EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
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
  v16 = *(a4 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a1;
  v17[4] = &off_1002BE310;
  v17[5] = a2;
  v17[6] = a3;
  aBlock[4] = sub_10016290C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BEBC8;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

uint64_t sub_10015F20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = a2;
  v43 = a4;
  v40 = a1;
  v41 = a3;
  v46 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v13;
  *(v5 + 16) = 1;
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = dispatch_semaphore_create(0);
  v45 = sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);
  v36 = "availableSemaphore";
  v14 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v38 = *(v10 + 104);
  v39 = v10 + 104;
  v35 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v38(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  static DispatchQoS.unspecified.getter();
  v47 = &_swiftEmptyArrayStorage;
  v15 = sub_1001624EC(&unk_1002F93A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  v16 = sub_1000EE870(&qword_1002F9710, &unk_100227B80);
  v17 = sub_1000FA0E0(&qword_1002F93B0, &qword_1002F9710, &unk_100227B80);
  v34[1] = v16;
  v34[2] = v15;
  v34[3] = v17;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v44;
  *(v5 + 64) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v36 = "oth.CloudServices.RecordUpdate";
  v19 = v18;
  v20 = v37;
  v21 = v38;
  v38(v19, v14, v37);
  static DispatchQoS.unspecified.getter();
  v47 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v44;
  *(v5 + 72) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v36 = "udCoordinator.serialQueue";
  v21(v22, v35, v20);
  static DispatchQoS.unspecified.getter();
  v47 = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v5 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = &_swiftEmptyDictionarySingleton;
  *(v5 + 120) = &_swiftEmptyDictionarySingleton;
  *(v5 + 128) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___container) = 0;
  v23 = (v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___privateSubscriptionId);
  *v23 = 0;
  v23[1] = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___cloudPushTriggeredGroup) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___forcedGroup) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___cloudInitialSetupGroup) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___cloudUserActionExplicitGroup) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___deferredUpdatesGroup) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator____lazy_storage___multipleUpdatesGroup) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_identityUpdateNotificationListener) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator__available) = 0;
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100226100;
  v47 = 0;
  v48 = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v25._countAndFlagsBits = 0xD000000000000034;
  v25._object = 0x8000000100269980;
  String.append(_:)(v25);
  v26 = type metadata accessor for CloudCoordinatorConfiguration();
  v27 = v40;
  String.append(_:)(*(v40 + *(v26 + 24)));
  v28._countAndFlagsBits = 0x4449656E6F7A202CLL;
  v28._object = 0xEB00000000203A73;
  String.append(_:)(v28);
  v29 = *(v27 + *(v26 + 32));
  v30._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v30);

  v31 = v47;
  v32 = v48;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_1000EE954();
  *(v24 + 32) = v31;
  *(v24 + 40) = v32;
  os_log(_:dso:log:_:_:)();

  sub_100162814(v27, v5 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration);
  *(v5 + 32) = v41;
  swift_unknownObjectWeakAssign();
  *(v5 + 80) = v43;
  return v5;
}

uint64_t sub_10015F824(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  aBlock[4] = sub_100162BB4;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BF0F0;
  v11 = _Block_copy(aBlock);
  v12 = v10;

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v5, v2);
  (*(v6 + 8))(v9, v15);
}

id sub_10015FAF0()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];

    if (v2)
    {
      v3 = [v2 aa_altDSID];
      if (v3)
      {
        v4 = v3;
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v5;
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015FBAC(uint64_t a1, void *a2)
{
  if (a2)
  {

    _StringGuts.grow(_:)(37);

    v4._countAndFlagsBits = a1;
    v4._object = a2;
    String.append(_:)(v4);
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();

    [v5 removeObjectForKey:v6];

    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100226100;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_1000EE954();
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_10015FDEC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v18 = *(v8 - 8);
  v19 = v8;
  v9 = *(v18 + 64);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = sub_100162B10;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BEE70;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1001624EC(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v7, v4);
  (*(v18 + 8))(v11, v19);
}

void sub_100160104(uint64_t a1, void *a2)
{
  if (a2)
  {
    v19 = a2;
    sub_10013ACAC(v19, a1);
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100226C80;
    v4 = URL.absoluteString.getter();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    v7 = sub_1000EE954();
    *(v3 + 64) = v7;
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    v8 = [v19 data];
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = Data.hexString.getter(v9, v11);
    v14 = v13;
    sub_1000EF870(v9, v11);
    *(v3 + 96) = &type metadata for String;
    *(v3 + 104) = v7;
    *(v3 + 72) = v12;
    *(v3 + 80) = v14;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_10013ABC4();
    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100226100;
    v16 = URL.absoluteString.getter();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_1000EE954();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    os_log(_:dso:log:_:_:)();
  }
}

void *sub_1001605C4(uint64_t a1, void *a2)
{
  if (a2)
  {
    _StringGuts.grow(_:)(37);

    v4._countAndFlagsBits = a1;
    v4._object = a2;
    String.append(_:)(v4);
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();

    v7 = [v5 arrayForKey:v6];

    if (!v7 || (v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v7, v9 = sub_10017E70C(v8), , !v9))
    {

      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    v9 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();
  }

  return v9;
}

uint64_t sub_10016076C(uint64_t a1)
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

      sub_1001C51E8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_100160804(unint64_t a1, void *a2)
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

unint64_t sub_1001609C0(unint64_t *a1, void *a2)
{
  v5 = a2;
  v7 = *a1;
  result = sub_100160804(*a1, a2);
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
        v7 = sub_1001CE110(v7);
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
        v7 = sub_1001CE110(v7);
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

uint64_t sub_100160CF0(void *a1, unint64_t *a2)
{
  swift_beginAccess();
  v3 = *a2;
  if (*a2 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    v35 = a2;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      a2 = v6;
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v8 = [v6 recordID];
      v9 = [v8 recordName];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = [a1 recordName];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (v10 == v14 && v12 == v16)
      {

LABEL_18:

        swift_beginAccess();
        v19 = a1;
        v20 = sub_1001609C0(v35, v19);

        v21 = *v35;
        if (!(*v35 >> 62))
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v22 >= v20)
          {
            goto LABEL_20;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if (v21 < 0)
        {
          v34 = *v35;
        }

        v22 = _CocoaArrayWrapper.endIndex.getter();
        if (v22 < v20)
        {
          goto LABEL_29;
        }

LABEL_20:
        sub_100172F38(v20, v22);
        swift_endAccess();
        static os_log_type_t.default.getter();
        if (qword_1002F7AD8 != -1)
        {
LABEL_30:
          swift_once();
        }

        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_100226C80;
        v24 = CKRecord.recordType.getter();
        v26 = v25;
        *(v23 + 56) = &type metadata for String;
        v27 = sub_1000EE954();
        *(v23 + 64) = v27;
        *(v23 + 32) = v24;
        *(v23 + 40) = v26;
        v28 = a2;
        v29 = [v28 description];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        *(v23 + 96) = &type metadata for String;
        *(v23 + 104) = v27;
        *(v23 + 72) = v30;
        *(v23 + 80) = v32;
        os_log(_:dso:log:_:_:)();
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_18;
      }

      ++v5;
      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }
}

uint64_t sub_100161528(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {

    _StringGuts.grow(_:)(37);

    v8._countAndFlagsBits = a3;
    v8._object = a4;
    String.append(_:)(v8);

    v9 = sub_1001605C4(a3, a4);

    v23[0] = a1;
    v23[1] = a2;
    __chkstk_darwin(v10);
    v22[2] = v23;

    v11 = sub_10017CE74(sub_1001633BC, v22, v9);

    if (v11)
    {
    }

    else
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1001CF194(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      if (v15 >= v14 >> 1)
      {
        v9 = sub_1001CF194((v14 > 1), v15 + 1, 1, v9);
      }

      *(v9 + 2) = v15 + 1;
      v16 = &v9[16 * v15];
      *(v16 + 4) = a1;
      *(v16 + 5) = a2;
      v17 = [objc_opt_self() standardUserDefaults];
      isa = Array._bridgeToObjectiveC()().super.isa;

      v19 = String._bridgeToObjectiveC()();

      [v17 setObject:isa forKey:v19];

      static os_log_type_t.default.getter();
      if (qword_1002F7AD8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100226C80;
      *(v20 + 56) = &type metadata for String;
      v21 = sub_1000EE954();
      *(v20 + 32) = a1;
      *(v20 + 40) = a2;
      *(v20 + 96) = &type metadata for String;
      *(v20 + 104) = v21;
      *(v20 + 64) = v21;
      *(v20 + 72) = a3;
      *(v20 + 80) = a4;

      os_log(_:dso:log:_:_:)();
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100226100;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_1000EE954();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;

    os_log(_:dso:log:_:_:)();
  }
}

id sub_100161910(uint64_t a1, void *a2)
{
  if (a2)
  {
    _StringGuts.grow(_:)(44);

    v4._countAndFlagsBits = a1;
    v4._object = a2;
    String.append(_:)(v4);
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();

    v7 = [v5 BOOLForKey:v6];
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    return 0;
  }

  return v7;
}

uint64_t sub_100161BF8(uint64_t a1, void *a2)
{
  if (a2)
  {

    _StringGuts.grow(_:)(44);

    v4._countAndFlagsBits = a1;
    v4._object = a2;
    String.append(_:)(v4);
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();

    [v5 setBool:1 forKey:v6];

    static os_log_type_t.default.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100226100;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_1000EE954();
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AD8 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }
}

void sub_100161E3C(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!a4)
  {
    strcpy(v53, "NotApplicable");
    HIWORD(v53[1]) = -4864;
    goto LABEL_20;
  }

  swift_getErrorValue();
  v53[0] = Error.localizedDescription.getter();
  v53[1] = v6;
  v49[0] = a4;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v47 = String._bridgeToObjectiveC()();
    sub_1000EE870(&qword_1002F9378, &unk_1002292E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100229100;
    *(inited + 32) = 0x726F727245;
    *(inited + 40) = 0xE500000000000000;
    v35 = objc_allocWithZone(NSString);
    v36 = String._bridgeToObjectiveC()();
    v37 = [v35 initWithString:v36];

    *(inited + 48) = v37;
    *(inited + 56) = 0x6D69547473726946;
    *(inited + 64) = 0xE900000000000065;
    v38 = [a1 recordChangeTag];
    v39 = v38;
    if (v38)
    {
    }

    *(inited + 72) = [objc_allocWithZone(NSNumber) initWithBool:v39 == 0];
    *(inited + 80) = 0x795464726F636552;
    *(inited + 88) = 0xEA00000000006570;
    CKRecord.recordType.getter();
    v40 = objc_allocWithZone(NSString);
    v41 = String._bridgeToObjectiveC()();

    v42 = [v40 initWithString:v41];

    *(inited + 96) = v42;
    *(inited + 104) = 0x73736563637553;
    *(inited + 112) = 0xE700000000000000;
    *(inited + 120) = [objc_allocWithZone(NSNumber) initWithBool:a4 == 0];
    strcpy((inited + 128), "SyncDuration");
    *(inited + 141) = 0;
    *(inited + 142) = -5120;
    *(inited + 144) = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
    strcpy((inited + 152), "UploadDuration");
    *(inited + 167) = -18;
    Date.timeIntervalSinceNow.getter();
    *(inited + 168) = [objc_allocWithZone(NSNumber) initWithDouble:-v43];
    strcpy((inited + 176), "UserInitiated");
    *(inited + 190) = -4864;
    *(inited + 192) = [objc_allocWithZone(NSNumber) initWithBool:a3 & 1];
    sub_1000F9D9C(inited);
    swift_setDeallocating();
    sub_1000EE870(&qword_1002F9380, &unk_100229A70);
    swift_arrayDestroy();
    sub_1000FA784(0, &qword_1002F9388, NSObject_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    CUMetricsLog();

    return;
  }

  v7 = v52;
  v49[0] = v52;
  sub_1001624EC(&qword_1002F9330, type metadata accessor for CKError);
  _BridgedStoredNSError.code.getter();
  v8 = stringForCKErrorCode();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v53[0] = v9;
  v53[1] = v11;
  v12 = _BridgedStoredNSError.userInfo.getter();
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v12 + 16))
  {

    goto LABEL_18;
  }

  v15 = sub_1000F8C5C(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  sub_100162534(*(v12 + 56) + 32 * v15, v49);

  sub_1000EE870(&qword_1002F9390, &qword_1002292F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  v18 = v51 + 64;
  v19 = 1 << *(v51 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v51 + 64);
  v22 = (v19 + 63) >> 6;
  v45 = v51;
  v46 = v7;

  v23 = 0;
  while (v21)
  {
    v24 = v23;
LABEL_14:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = v25 | (v24 << 6);
    sub_1000FA898(*(v45 + 48) + 40 * v26, v49);
    v50 = *(*(v45 + 56) + 8 * v26);
    v27 = v50;
    v28._countAndFlagsBits = 8236;
    v28._object = 0xE200000000000000;
    String.append(_:)(v28);
    v52 = v46;
    _BridgedStoredNSError.code.getter();
    v29 = stringForCKErrorCode();
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    String.append(_:)(v33);

    sub_1000EEE6C(v49, &qword_1002F9398, &qword_1002292F8);
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      goto LABEL_20;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1001624EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100162534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100162590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EE870(&qword_1002F9340, &qword_1002292C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100162600(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));
  v9 = *(v8 + *(v3 + 64));

  return sub_1001552D8(a1, v4, v5, v6, v7, v8, v9);
}

void sub_100162698(unint64_t a1, char a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));
  v11 = *(v10 + *(v5 + 64));

  sub_1001558C8(a1, a2 & 1, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100162740(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000FA784(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100162784(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  sub_1001560A4(a1, a2, a3, *(v3 + 16), *(v3 + 24));
}

uint64_t sub_100162790(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100162814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudCoordinatorConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100162938(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002289A0;
  v13 = Data.hexString.getter(a1, a2);
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_1000EE954();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 64) = v16;
  *(v12 + 72) = a3;
  *(v12 + 80) = a4;
  *(v12 + 136) = &type metadata for String;
  *(v12 + 144) = v16;
  *(v12 + 112) = a5;
  *(v12 + 120) = a6;

  os_log(_:dso:log:_:_:)();
}