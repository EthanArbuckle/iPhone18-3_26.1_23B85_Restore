uint64_t sub_1001AF584(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v123 = a2;
  v124 = a3;
  v112 = type metadata accessor for DispatchWorkItemFlags();
  v111 = *(v112 - 8);
  v6 = *(v111 + 64);
  __chkstk_darwin(v112);
  v109 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DispatchQoS();
  v108 = *(v110 - 8);
  v8 = *(v108 + 64);
  __chkstk_darwin(v110);
  v107 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for Date();
  v105 = *(v106 - 8);
  v10 = *(v105 + 64);
  __chkstk_darwin(v106);
  v103 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for BTDeferredRecord();
  v12 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v114 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v120 = *(v14 - 8);
  v15 = *(v120 + 64);
  __chkstk_darwin(v14);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v119 = &v98 - v19;
  __chkstk_darwin(v20);
  v126 = &v98 - v21;
  v118 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  v22 = *(*(v118 - 8) + 64);
  __chkstk_darwin(v118);
  v121 = &v98 - v23;
  v127 = type metadata accessor for DeviceSupportInformationRecord();
  v125 = *(v127 - 8);
  v24 = *(v125 + 64);
  __chkstk_darwin(v127);
  v116 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v25;
  __chkstk_darwin(v26);
  v113 = &v98 - v27;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v28 = qword_100300E38;
  v101 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v29 = swift_allocObject();
  v100 = xmmword_100226100;
  *(v29 + 16) = xmmword_100226100;
  v30 = sub_100133818();
  v32 = v31;
  *(v29 + 56) = &type metadata for String;
  v99 = sub_1000EE954();
  *(v29 + 64) = v99;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v102 = v28;
  os_log(_:dso:log:_:_:)();

  v122 = v4;
  v33 = sub_100192340();
  v34 = *(v127 + 24);
  v117 = a1;
  v35 = (a1 + v34);
  v37 = *v35;
  v36 = v35[1];
  if (qword_1002F7A68 != -1)
  {
    swift_once();
  }

  sub_1000EE91C(v14, qword_100300D48);
  v38 = v120;
  (*(v120 + 16))();
  v39 = objc_autoreleasePoolPush();
  URL.path.getter();
  URL.appendingPathComponent(_:)();

  v40 = v119;
  URL.appendingPathComponent(_:)();
  v41 = *(v38 + 8);
  v41(v17, v14);
  objc_autoreleasePoolPop(v39);
  v42 = objc_autoreleasePoolPush();
  v43 = *(v33 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v42);
  *(&v98 - 2) = v40;
  *(&v98 - 1) = v33;
  v44 = v121;
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v42);
  v41(v40, v14);

  v41(v126, v14);
  v45 = v125;
  v46 = v127;
  if ((*(v125 + 48))(v44, 1, v127) == 1)
  {
    sub_1000EEE6C(v44, &qword_1002F8510, &unk_100227B50);
    v47 = *(v122 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
    v48 = v116;
    sub_1001CC14C(v117, v116, type metadata accessor for DeviceSupportInformationRecord);
    v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v50 = (v115 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    sub_1001CC214(v48, v51 + v49, type metadata accessor for DeviceSupportInformationRecord);
    v52 = (v51 + v50);
    v53 = v124;
    *v52 = v123;
    v52[1] = v53;
    aBlock[4] = sub_1001CBA5C;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002C0BE8;
    v54 = _Block_copy(aBlock);
    v55 = v47;

    v56 = v107;
    static DispatchQoS.unspecified.getter();
    v128 = _swiftEmptyArrayStorage;
    sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    v57 = v109;
    v58 = v112;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v54);

    (*(v111 + 8))(v57, v58);
    (*(v108 + 8))(v56, v110);
  }

  else
  {
    v60 = v113;
    sub_1001CC214(v44, v113, type metadata accessor for DeviceSupportInformationRecord);
    v61 = objc_autoreleasePoolPush();
    sub_100135EE0(v60, aBlock);
    objc_autoreleasePoolPop(v61);
    v62 = aBlock[0];
    v63 = [(objc_class *)aBlock[0] recordID];

    v64 = objc_autoreleasePoolPush();
    sub_100135EE0(v60, aBlock);
    objc_autoreleasePoolPop(v64);
    v65 = v46;
    v66 = aBlock[0];
    v67 = CKRecord.recordType.getter();
    v69 = v68;

    v70 = v122;
    sub_1001A73C4(v63, v67, v69, 0);

    v71 = v104;
    v72 = *(v104 + 24);
    v73 = type metadata accessor for UUID();
    v74 = v114;
    (*(*(v73 - 8) + 16))(&v114[v72], v60, v73);
    v75 = (v60 + *(v65 + 24));
    v77 = *v75;
    v76 = v75[1];

    v78 = v103;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v80 = v79;
    (*(v105 + 8))(v78, v106);
    *v74 = 1;
    *(v74 + 8) = 0xD00000000000001ELL;
    *(v74 + 16) = 0x80000001002671E0;
    v81 = (v74 + v71[7]);
    *v81 = v77;
    v81[1] = v76;
    *(v74 + v71[8]) = v80;
    *(v74 + v71[9]) = xmmword_1002298C0;
    v82 = objc_autoreleasePoolPush();
    sub_1001B9D1C(v70, v74);
    objc_autoreleasePoolPop(v82);
    sub_100193560();
    type metadata accessor for CloudCoordinator();
    LOBYTE(v82) = sub_10015A5D0();
    swift_unknownObjectRelease();
    if (v82)
    {
      v83 = *(v70 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
      swift_unknownObjectRetain();
      v84 = objc_autoreleasePoolPush();
      sub_100135EE0(v60, aBlock);
      objc_autoreleasePoolPop(v84);
      v85 = aBlock[0];
      v86 = [(objc_class *)aBlock[0] recordID];

      v87 = swift_allocObject();
      swift_weakInit();
      v88 = v116;
      sub_1001CC14C(v60, v116, type metadata accessor for DeviceSupportInformationRecord);
      v89 = (*(v125 + 80) + 16) & ~*(v125 + 80);
      v90 = (v115 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
      v91 = swift_allocObject();
      sub_1001CC214(v88, v91 + v89, type metadata accessor for DeviceSupportInformationRecord);
      *(v91 + v90) = v87;
      v92 = swift_allocObject();
      *(v92 + 16) = v83;
      *(v92 + 24) = v86;
      *(v92 + 32) = sub_1001CBA60;
      *(v92 + 40) = v91;
      *(v92 + 48) = 1;
      swift_unknownObjectRetain();

      v93 = v86;

      sub_100153CF4(sub_1001CE26C, v92);

      swift_unknownObjectRelease();
    }

    else
    {
      static os_log_type_t.error.getter();
      v94 = swift_allocObject();
      *(v94 + 16) = v100;
      v95 = sub_100133818();
      v96 = v99;
      *(v94 + 56) = &type metadata for String;
      *(v94 + 64) = v96;
      *(v94 + 32) = v95;
      *(v94 + 40) = v97;
      os_log(_:dso:log:_:_:)();
    }

    v123(0);
    sub_1001CC1B4(v74, type metadata accessor for BTDeferredRecord);
    return sub_1001CC1B4(v60, type metadata accessor for DeviceSupportInformationRecord);
  }
}

uint64_t sub_1001B031C(uint64_t a1, uint64_t (*a2)(void))
{
  static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100226100;
  v4 = sub_100133818(v3);
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1000EE954();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  os_log(_:dso:log:_:_:)();

  return a2(0);
}

uint64_t sub_1001B0430(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
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
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100226100;
    v9 = sub_100133818();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_1000EE954();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1001AA79C(a2, 0);
    }
  }

  return result;
}

void sub_1001B0678(unsigned __int8 *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66[3] = &type metadata for AudioAccessoryFeatures;
  v66[4] = sub_1000F1874();
  v13 = isFeatureEnabled(_:)();
  sub_1000EF824(v66);
  if ((v13 & 1) == 0)
  {
    sub_1001266E0();
    swift_allocError();
    *v35 = 0x8000000000000038;
    a2();

    return;
  }

  sub_100192340();
  v14 = *&a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress];
  v15 = *&a1[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress + 8];
  if (qword_1002F7AB8 != -1)
  {
    swift_once();
  }

  v16 = sub_1000EE91C(v8, qword_100300D88);
  (*(v9 + 16))(v12, v16, v8);
  v17 = sub_10018ACBC(v14, v15, v12, &unk_1002F9C50, &qword_1002299C0, sub_1001CE20C);

  (*(v9 + 8))(v12, v8);
  v65 = a3;
  if (v17)
  {
    v18 = sub_10016886C(a1);
    v64 = a2;
    if ((v18 & 1) == 0)
    {
      v19 = objc_autoreleasePoolPush();
      isa = sub_100169D38(*&v17[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata], *&v17[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata + 8]);
      if (!isa)
      {
        isa = sub_1000F89F4().super.isa;
      }

      v66[0] = isa;
      v21 = isa;
      sub_1001675F4(v66);
      objc_autoreleasePoolPop(v19);
      v22 = [v21 recordChangeTag];

      if (v22)
      {

        static os_log_type_t.default.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_100226C80;
        v24 = v17;
        v25 = [v24 description];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        *(v23 + 56) = &type metadata for String;
        v29 = sub_1000EE954();
        *(v23 + 64) = v29;
        *(v23 + 32) = v26;
        *(v23 + 40) = v28;
        v30 = a1;
        v31 = [v30 description];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        *(v23 + 96) = &type metadata for String;
        *(v23 + 104) = v29;
        *(v23 + 72) = v32;
        *(v23 + 80) = v34;
        os_log(_:dso:log:_:_:)();

        (v64)(0);

        return;
      }
    }

    v63[3] = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100226C80;
    v37 = v17;
    v38 = [v37 description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    *(v36 + 56) = &type metadata for String;
    v42 = sub_1000EE954();
    *(v36 + 64) = v42;
    *(v36 + 32) = v39;
    *(v36 + 40) = v41;
    v43 = a1;
    v44 = [v43 description];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    *(v36 + 96) = &type metadata for String;
    *(v36 + 104) = v42;
    *(v36 + 72) = v45;
    *(v36 + 80) = v47;
    os_log(_:dso:log:_:_:)();

    v48 = v37;
    v49 = sub_1001681DC(v43);
    a2 = v64;
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100226100;
    v51 = a1;
    v52 = [v51 description];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_1000EE954();
    *(v50 + 32) = v53;
    *(v50 + 40) = v55;
    os_log(_:dso:log:_:_:)();

    v49 = v51;
    v48 = v49;
  }

  v56 = *(v4 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
  v66[0] = v48;
  v57 = *(v56 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v49);
  *&v63[-4] = v56;
  *&v63[-2] = v66;

  OS_dispatch_queue.sync<A>(execute:)();

  (a2)(0);
  v58 = objc_autoreleasePoolPush();
  v59 = sub_100169D38(*&v48[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata], *&v48[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata + 8]);
  if (!v59)
  {
    v59 = sub_1000F89F4().super.isa;
  }

  v66[0] = v59;
  v60 = v59;
  sub_1001675F4(v66);
  objc_autoreleasePoolPop(v58);
  sub_100193560();
  v61 = swift_allocObject();
  *(v61 + 16) = v4;
  *(v61 + 24) = v60;

  v62 = v60;
  sub_100154534(v62, 1, sub_1001CB9FC, v61);
  swift_unknownObjectRelease();
}

void *sub_1001B0F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = &type metadata for AudioAccessoryFeatures;
  v9 = sub_1000F1874();
  v24 = v9;
  v10 = isFeatureEnabled(_:)();
  sub_1000EF824(v22);
  v11 = 0;
  if (v10)
  {
    v23 = &type metadata for AudioAccessoryFeatures;
    v24 = v9;
    v12 = isFeatureEnabled(_:)();
    sub_1000EF824(v22);
    if ((v12 & 1) == 0)
    {
      v14 = &_swiftEmptyArrayStorage;
      if (&_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    if (![objc_opt_self() isFirstUnlocked])
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v14 = &_swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
      if (&_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    sub_100192340();
    if (qword_1002F7AB8 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v13 = sub_1000EE91C(v4, qword_100300D88);
      (v5[2])(v8, v13, v4);
      v14 = sub_10018E14C(v8, &unk_1002F9C50, &qword_1002299C0, sub_1001CA538);

      (v5[1])(v8, v4);
      if (v14 >> 62)
      {
LABEL_26:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (!v4)
        {
LABEL_27:

          return 0;
        }
      }

      else
      {
LABEL_8:
        v4 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_27;
        }
      }

      v8 = 0;
      v5 = &OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v15 = *(v14 + 8 * v8 + 32);
        }

        v11 = v15;
        v16 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v17 = &v15[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress];
        v18 = *&v15[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress];
        v19 = *v17 == a1 && *(v17 + 1) == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return v11;
        }

        ++v8;
        if (v16 == v4)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
    }
  }

  return v11;
}

uint64_t sub_1001B1288(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v100 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DispatchQoS();
  v99 = *(v101 - 8);
  v10 = *(v99 + 64);
  __chkstk_darwin(v101);
  v98 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v104 = *(v12 - 8);
  v13 = *(v104 + 64);
  __chkstk_darwin(v12);
  v102 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for BTDeferredRecord();
  v15 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v105 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = &type metadata for AudioAccessoryFeatures;
  v111 = sub_1000F1874();
  v22 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v22)
  {
    v94 = v7;
    v96 = v12;
    v95 = v6;
    v106 = a2;
    v97 = a3;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v23 = qword_100300E38;
    v92 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v24 = swift_allocObject();
    v91 = xmmword_100226100;
    *(v24 + 16) = xmmword_100226100;
    v25 = a1;
    v26 = [v25 description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *(v24 + 56) = &type metadata for String;
    v90 = sub_1000EE954();
    *(v24 + 64) = v90;
    *(v24 + 32) = v27;
    *(v24 + 40) = v29;
    v93 = v23;
    v30 = v25;
    os_log(_:dso:log:_:_:)();

    v31 = v107;
    sub_100192340();
    v32 = *&v25[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress];
    v33 = *&v25[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress + 8];
    if (qword_1002F7AB8 != -1)
    {
      swift_once();
    }

    v34 = sub_1000EE91C(v17, qword_100300D88);
    (*(v18 + 16))(v21, v34, v17);
    v35 = sub_10018ACBC(v32, v33, v21, &unk_1002F9C50, &qword_1002299C0, sub_1001CE20C);

    (*(v18 + 8))(v21, v17);
    v36 = v106;
    if (v35)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = &v35[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata];
      isa = sub_100169D38(*&v35[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata], *&v35[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_cloudMetadata + 8]);
      if (!isa)
      {
        isa = sub_1000F89F4().super.isa;
      }

      v40 = v105;
      v41 = v96;
      aBlock[0] = isa;
      v42 = isa;
      sub_1001675F4(aBlock);
      objc_autoreleasePoolPop(v37);
      v43 = [v42 recordID];

      v44 = objc_autoreleasePoolPush();
      v45 = sub_100169D38(*v38, *(v38 + 1));
      if (!v45)
      {
        v45 = sub_1000F89F4().super.isa;
      }

      aBlock[0] = v45;
      v46 = v45;
      sub_1001675F4(aBlock);
      objc_autoreleasePoolPop(v44);
      v47 = CKRecord.recordType.getter();
      v49 = v48;

      v50 = v107;
      sub_1001A73C4(v43, v47, v49, 0);

      v51 = OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_identifier;
      v52 = v103;
      v53 = *(v103 + 24);
      v54 = type metadata accessor for UUID();
      (*(*(v54 - 8) + 16))(&v40[v53], &v35[v51], v54);
      v56 = *&v35[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress];
      v55 = *&v35[OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress + 8];

      v57 = v102;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v59 = v58;
      (*(v104 + 8))(v57, v41);
      *v40 = 1;
      strcpy(v40 + 8, "AADeviceRecord");
      v40[23] = -18;
      v60 = &v40[v52[7]];
      *v60 = v56;
      v60[1] = v55;
      *&v40[v52[8]] = v59;
      *&v40[v52[9]] = xmmword_1002298C0;
      v61 = objc_autoreleasePoolPush();
      sub_1001B9D1C(v50, v40);
      objc_autoreleasePoolPop(v61);
      sub_100193560();
      type metadata accessor for CloudCoordinator();
      LOBYTE(v61) = sub_10015A5D0();
      swift_unknownObjectRelease();
      if (v61)
      {
        v62 = *(v50 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
        swift_unknownObjectRetain();
        v63 = objc_autoreleasePoolPush();
        v64 = sub_100169D38(*v38, *(v38 + 1));
        if (!v64)
        {
          v64 = sub_1000F89F4().super.isa;
        }

        aBlock[0] = v64;
        v65 = v64;
        sub_1001675F4(aBlock);
        objc_autoreleasePoolPop(v63);
        v66 = [v65 recordID];

        v67 = swift_allocObject();
        swift_weakInit();
        v68 = swift_allocObject();
        *(v68 + 16) = v35;
        *(v68 + 24) = v67;
        v69 = swift_allocObject();
        *(v69 + 16) = v62;
        *(v69 + 24) = v66;
        *(v69 + 32) = sub_1001CB9F4;
        *(v69 + 40) = v68;
        *(v69 + 48) = 1;
        swift_unknownObjectRetain();
        v70 = v35;

        v71 = v66;

        sub_100153CF4(sub_1001CE26C, v69);
        swift_unknownObjectRelease();
      }

      else
      {
        static os_log_type_t.error.getter();
        v82 = swift_allocObject();
        *(v82 + 16) = v91;
        v83 = v30;
        v84 = [v83 description];
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = v90;
        *(v82 + 56) = &type metadata for String;
        *(v82 + 64) = v88;
        *(v82 + 32) = v85;
        *(v82 + 40) = v87;
        os_log(_:dso:log:_:_:)();
      }

      (v106)(0);

      return sub_1001CC1B4(v40, type metadata accessor for BTDeferredRecord);
    }

    else
    {
      v74 = *(v31 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
      v75 = swift_allocObject();
      v75[2] = v25;
      v75[3] = v36;
      v75[4] = v97;
      v111 = sub_1001CB9D4;
      v112 = v75;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001742E0;
      v110 = &unk_1002C0AD0;
      v76 = _Block_copy(aBlock);
      v77 = v30;
      v78 = v74;

      v79 = v98;
      static DispatchQoS.unspecified.getter();
      v108 = _swiftEmptyArrayStorage;
      sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
      sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
      v80 = v100;
      v81 = v95;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v76);

      (*(v94 + 8))(v80, v81);
      (*(v99 + 8))(v79, v101);
    }
  }

  else
  {
    sub_1001266E0();
    swift_allocError();
    *v72 = 0x8000000000000038;
    a2();
  }
}

uint64_t sub_1001B1DE0(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
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
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100226100;
    v9 = a2;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_1000EE954();
    *(v8 + 32) = v11;
    *(v8 + 40) = v13;
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1001AC244(v9, 0);
    }
  }

  return result;
}

void sub_1001B204C(char *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66[3] = &type metadata for AudioAccessoryFeatures;
  v66[4] = sub_1000F1874();
  v13 = isFeatureEnabled(_:)();
  sub_1000EF824(v66);
  if ((v13 & 1) == 0)
  {
    sub_1001266E0();
    swift_allocError();
    *v35 = 0x8000000000000038;
    a2();

    return;
  }

  sub_100192340();
  v14 = *&a1[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress];
  v15 = *&a1[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8];
  if (qword_1002F79D0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000EE91C(v8, qword_100300B10);
  (*(v9 + 16))(v12, v16, v8);
  v17 = sub_10018ACBC(v14, v15, v12, &unk_1002F9C68, &qword_1002299D0, sub_1001CE224);

  (*(v9 + 8))(v12, v8);
  v65 = a3;
  if (v17)
  {
    v18 = sub_1000F7B9C(a1);
    v64 = a2;
    if ((v18 & 1) == 0)
    {
      v19 = objc_autoreleasePoolPush();
      isa = sub_100169D38(*&v17[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata], *&v17[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata + 8]);
      if (!isa)
      {
        isa = sub_1000F882C().super.isa;
      }

      v66[0] = isa;
      v21 = isa;
      sub_1000F6FF4(v66);
      objc_autoreleasePoolPop(v19);
      v22 = [v21 recordChangeTag];

      if (v22)
      {

        static os_log_type_t.default.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_100226C80;
        v24 = v17;
        v25 = [v24 description];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        *(v23 + 56) = &type metadata for String;
        v29 = sub_1000EE954();
        *(v23 + 64) = v29;
        *(v23 + 32) = v26;
        *(v23 + 40) = v28;
        v30 = a1;
        v31 = [v30 description];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        *(v23 + 96) = &type metadata for String;
        *(v23 + 104) = v29;
        *(v23 + 72) = v32;
        *(v23 + 80) = v34;
        os_log(_:dso:log:_:_:)();

        (v64)(0);

        return;
      }
    }

    v63[3] = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100226C80;
    v37 = v17;
    v38 = [v37 description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    *(v36 + 56) = &type metadata for String;
    v42 = sub_1000EE954();
    *(v36 + 64) = v42;
    *(v36 + 32) = v39;
    *(v36 + 40) = v41;
    v43 = a1;
    v44 = [v43 description];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    *(v36 + 96) = &type metadata for String;
    *(v36 + 104) = v42;
    *(v36 + 72) = v45;
    *(v36 + 80) = v47;
    os_log(_:dso:log:_:_:)();

    v48 = v37;
    v49 = sub_1000F75E4(v43);
    a2 = v64;
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100226100;
    v51 = a1;
    v52 = [v51 description];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_1000EE954();
    *(v50 + 32) = v53;
    *(v50 + 40) = v55;
    os_log(_:dso:log:_:_:)();

    v49 = v51;
    v48 = v49;
  }

  v56 = *(v4 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
  v66[0] = v48;
  v57 = *(v56 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v49);
  *&v63[-4] = v56;
  *&v63[-2] = v66;

  OS_dispatch_queue.sync<A>(execute:)();

  (a2)(0);
  v58 = objc_autoreleasePoolPush();
  v59 = sub_100169D38(*&v48[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata], *&v48[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata + 8]);
  if (!v59)
  {
    v59 = sub_1000F882C().super.isa;
  }

  v66[0] = v59;
  v60 = v59;
  sub_1000F6FF4(v66);
  objc_autoreleasePoolPop(v58);
  sub_100193560();
  v61 = swift_allocObject();
  *(v61 + 16) = v4;
  *(v61 + 24) = v60;

  v62 = v60;
  sub_100154534(v62, 1, sub_1001CB934, v61);
  swift_unknownObjectRelease();
}

void *sub_1001B2908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = &type metadata for AudioAccessoryFeatures;
  v9 = sub_1000F1874();
  v24 = v9;
  v10 = isFeatureEnabled(_:)();
  sub_1000EF824(v22);
  v11 = 0;
  if (v10)
  {
    v23 = &type metadata for AudioAccessoryFeatures;
    v24 = v9;
    v12 = isFeatureEnabled(_:)();
    sub_1000EF824(v22);
    if ((v12 & 1) == 0)
    {
      v14 = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    if (![objc_opt_self() isFirstUnlocked])
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v14 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    sub_100192340();
    if (qword_1002F79D0 != -1)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v13 = sub_1000EE91C(v4, qword_100300B10);
      (v5[2])(v8, v13, v4);
      v14 = sub_10018E14C(v8, &unk_1002F9C68, &qword_1002299D0, sub_1001CAE20);

      (v5[1])(v8, v4);
      if (v14 >> 62)
      {
LABEL_26:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (!v4)
        {
LABEL_27:

          return 0;
        }
      }

      else
      {
LABEL_8:
        v4 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_27;
        }
      }

      v8 = 0;
      v5 = &OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v15 = *(v14 + 8 * v8 + 32);
        }

        v11 = v15;
        v16 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v17 = &v15[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress];
        v18 = *&v15[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress];
        v19 = *v17 == a1 && *(v17 + 1) == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return v11;
        }

        ++v8;
        if (v16 == v4)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
    }
  }

  return v11;
}

uint64_t sub_1001B2C5C(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v100 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DispatchQoS();
  v99 = *(v101 - 8);
  v10 = *(v99 + 64);
  __chkstk_darwin(v101);
  v98 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v104 = *(v12 - 8);
  v105 = v12;
  v13 = *(v104 + 64);
  __chkstk_darwin(v12);
  v102 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for BTDeferredRecord();
  v15 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = &type metadata for AudioAccessoryFeatures;
  v111 = sub_1000F1874();
  v23 = isFeatureEnabled(_:)();
  sub_1000EF824(aBlock);
  if (v23)
  {
    v94 = v7;
    v95 = v6;
    v97 = v17;
    v106 = a2;
    v96 = a3;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v24 = qword_100300E38;
    v92 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v25 = swift_allocObject();
    v91 = xmmword_100226100;
    *(v25 + 16) = xmmword_100226100;
    v26 = a1;
    v27 = [v26 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *(v25 + 56) = &type metadata for String;
    v90 = sub_1000EE954();
    *(v25 + 64) = v90;
    *(v25 + 32) = v28;
    *(v25 + 40) = v30;
    v93 = v24;
    v31 = v26;
    os_log(_:dso:log:_:_:)();

    v32 = v107;
    sub_100192340();
    v33 = *&v26[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress];
    v34 = *&v26[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8];
    if (qword_1002F79D0 != -1)
    {
      swift_once();
    }

    v35 = sub_1000EE91C(v18, qword_100300B10);
    (*(v19 + 16))(v22, v35, v18);
    v36 = sub_10018ACBC(v33, v34, v22, &unk_1002F9C68, &qword_1002299D0, sub_1001CE224);

    (*(v19 + 8))(v22, v18);
    v37 = v106;
    if (v36)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = &v36[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata];
      isa = sub_100169D38(*&v36[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata], *&v36[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_cloudMetadata + 8]);
      if (!isa)
      {
        isa = sub_1000F882C().super.isa;
      }

      aBlock[0] = isa;
      v41 = isa;
      sub_1000F6FF4(aBlock);
      objc_autoreleasePoolPop(v38);
      v42 = [v41 recordID];

      v43 = objc_autoreleasePoolPush();
      v44 = sub_100169D38(*v39, *(v39 + 1));
      if (!v44)
      {
        v44 = sub_1000F882C().super.isa;
      }

      aBlock[0] = v44;
      v45 = v44;
      sub_1000F6FF4(aBlock);
      objc_autoreleasePoolPop(v43);
      v46 = CKRecord.recordType.getter();
      v48 = v47;

      v49 = v107;
      sub_1001A73C4(v42, v46, v48, 0);

      v50 = OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_identifier;
      v51 = v103;
      v52 = *(v103 + 24);
      v53 = type metadata accessor for UUID();
      v54 = v97;
      (*(*(v53 - 8) + 16))(&v97[v52], &v36[v50], v53);
      v56 = *&v36[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress];
      v55 = *&v36[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8];

      v57 = v102;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v59 = v58;
      (*(v104 + 8))(v57, v105);
      *v54 = 1;
      *(v54 + 8) = 0xD000000000000011;
      *(v54 + 16) = 0x800000010026EAC0;
      v60 = (v54 + v51[7]);
      *v60 = v56;
      v60[1] = v55;
      *(v54 + v51[8]) = v59;
      *(v54 + v51[9]) = xmmword_1002298C0;
      v61 = objc_autoreleasePoolPush();
      sub_1001B9D1C(v49, v54);
      objc_autoreleasePoolPop(v61);
      sub_100193560();
      type metadata accessor for CloudCoordinator();
      LOBYTE(v61) = sub_10015A5D0();
      swift_unknownObjectRelease();
      if (v61)
      {
        v62 = *(v49 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
        swift_unknownObjectRetain();
        v63 = objc_autoreleasePoolPush();
        v64 = sub_100169D38(*v39, *(v39 + 1));
        if (!v64)
        {
          v64 = sub_1000F882C().super.isa;
        }

        aBlock[0] = v64;
        v65 = v64;
        sub_1000F6FF4(aBlock);
        objc_autoreleasePoolPop(v63);
        v66 = [v65 recordID];

        v67 = swift_allocObject();
        swift_weakInit();
        v68 = swift_allocObject();
        *(v68 + 16) = v36;
        *(v68 + 24) = v67;
        v69 = swift_allocObject();
        *(v69 + 16) = v62;
        *(v69 + 24) = v66;
        *(v69 + 32) = sub_1001CB92C;
        *(v69 + 40) = v68;
        *(v69 + 48) = 1;
        swift_unknownObjectRetain();
        v70 = v36;

        v71 = v66;

        sub_100153CF4(sub_1001CE26C, v69);
        swift_unknownObjectRelease();
      }

      else
      {
        static os_log_type_t.error.getter();
        v82 = swift_allocObject();
        *(v82 + 16) = v91;
        v83 = v31;
        v84 = [v83 description];
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = v90;
        *(v82 + 56) = &type metadata for String;
        *(v82 + 64) = v88;
        *(v82 + 32) = v85;
        *(v82 + 40) = v87;
        os_log(_:dso:log:_:_:)();
      }

      (v106)(0);

      return sub_1001CC1B4(v97, type metadata accessor for BTDeferredRecord);
    }

    else
    {
      v74 = *(v32 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
      v75 = swift_allocObject();
      v75[2] = v26;
      v75[3] = v37;
      v75[4] = v96;
      v111 = sub_1001CE288;
      v112 = v75;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001742E0;
      v110 = &unk_1002C09B8;
      v76 = _Block_copy(aBlock);
      v77 = v31;
      v78 = v74;

      v79 = v98;
      static DispatchQoS.unspecified.getter();
      v108 = _swiftEmptyArrayStorage;
      sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
      sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
      v80 = v100;
      v81 = v95;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v76);

      (*(v94 + 8))(v80, v81);
      (*(v99 + 8))(v79, v101);
    }
  }

  else
  {
    sub_1001266E0();
    swift_allocError();
    *v72 = 0x8000000000000038;
    a2();
  }
}

uint64_t sub_1001B379C(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
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
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100226100;
    v9 = a2;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_1000EE954();
    *(v8 + 32) = v11;
    *(v8 + 40) = v13;
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1001ACB04(v9, 0);
    }
  }

  return result;
}

void sub_1001B3A08(_BYTE *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100192340();
  v12 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress];
  v13 = *&a1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8];
  if (qword_1002F7A60 != -1)
  {
    swift_once();
  }

  v14 = sub_1000EE91C(v7, qword_100300C40);
  (*(v8 + 16))(v11, v14, v7);
  v15 = sub_10018ACBC(v12, v13, v11, &unk_1002F9C80, &qword_1002299E0, sub_1001CE23C);

  (*(v8 + 8))(v11, v7);
  if (v15)
  {
    v16 = sub_1001319F8(a1);
    v60 = a2;
    if ((v16 & 1) == 0)
    {
      v17 = objc_autoreleasePoolPush();
      isa = sub_100169D38(*&v15[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata], *&v15[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata + 8]);
      if (!isa)
      {
        isa = sub_1000F8660().super.isa;
      }

      v62 = isa;
      v19 = isa;
      sub_10012F138(&v62);
      objc_autoreleasePoolPop(v17);
      v20 = [v19 recordChangeTag];

      if (v20)
      {

        static os_log_type_t.default.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_100226C80;
        v22 = v15;
        v23 = [v22 description];
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        *(v21 + 56) = &type metadata for String;
        v27 = sub_1000EE954();
        *(v21 + 64) = v27;
        *(v21 + 32) = v24;
        *(v21 + 40) = v26;
        v28 = a1;
        v29 = [v28 description];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        *(v21 + 96) = &type metadata for String;
        *(v21 + 104) = v27;
        *(v21 + 72) = v30;
        *(v21 + 80) = v32;
        os_log(_:dso:log:_:_:)();

        v60(0);
        goto LABEL_20;
      }
    }

    v59[3] = static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100226C80;
    v34 = v15;
    v35 = [v34 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *(v33 + 56) = &type metadata for String;
    v39 = sub_1000EE954();
    *(v33 + 64) = v39;
    *(v33 + 32) = v36;
    *(v33 + 40) = v38;
    v40 = a1;
    v41 = [v40 description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    *(v33 + 96) = &type metadata for String;
    *(v33 + 104) = v39;
    *(v33 + 72) = v42;
    *(v33 + 80) = v44;
    os_log(_:dso:log:_:_:)();

    v22 = v34;
    v45 = sub_100130AB8(v40);
    a2 = v60;
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100226100;
    v47 = a1;
    v48 = [v47 description];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = sub_1000EE954();
    *(v46 + 32) = v49;
    *(v46 + 40) = v51;
    os_log(_:dso:log:_:_:)();

    v45 = v47;
    v22 = v45;
  }

  v52 = *(v4 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
  v62 = v22;
  v53 = *(v52 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v45);
  *&v59[-4] = v52;
  *&v59[-2] = &v62;

  OS_dispatch_queue.sync<A>(execute:)();

  a2(0);
  v54 = objc_autoreleasePoolPush();
  v55 = sub_100169D38(*&v22[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata], *&v22[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata + 8]);
  if (!v55)
  {
    v55 = sub_1000F8660().super.isa;
  }

  v62 = v55;
  v56 = v55;
  sub_10012F138(&v62);
  objc_autoreleasePoolPop(v54);
  sub_100193560();
  v57 = swift_allocObject();
  *(v57 + 16) = v4;
  *(v57 + 24) = v56;

  v58 = v56;
  sub_100154534(v58, 1, sub_1001CB898, v57);
  swift_unknownObjectRelease();

LABEL_20:
}

void *sub_1001B4250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F7A60 != -1)
    {
      swift_once();
    }

    v9 = sub_1000EE91C(v4, qword_100300C40);
    (*(v5 + 16))(v8, v9, v4);
    v10 = sub_10018E14C(v8, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v10 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();
  }

  if (v10 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = &v13[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress];
      v17 = *&v13[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress];
      v18 = *v16 == a1 && *(v16 + 1) == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return v14;
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  return 0;
}

uint64_t sub_1001B4538(void *a1, void (*a2)(void), uint64_t a3)
{
  v100 = a2;
  v101 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v92 = *(v4 - 8);
  v93 = v4;
  v5 = *(v92 + 64);
  __chkstk_darwin(v4);
  v90 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchQoS();
  v89 = *(v91 - 8);
  v7 = *(v89 + 64);
  __chkstk_darwin(v91);
  v88 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v96 = *(v9 - 8);
  v97 = v9;
  v10 = *(v96 + 64);
  __chkstk_darwin(v9);
  v94 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for BTDeferredRecord();
  v12 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v98 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v19 = qword_100300E38;
  v86 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v20 = swift_allocObject();
  v85 = xmmword_100226100;
  *(v20 + 16) = xmmword_100226100;
  v21 = a1;
  v22 = [v21 description];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v20 + 56) = &type metadata for String;
  v84 = sub_1000EE954();
  *(v20 + 64) = v84;
  *(v20 + 32) = v23;
  *(v20 + 40) = v25;
  v87 = v19;
  v26 = v21;
  os_log(_:dso:log:_:_:)();

  v27 = v99;
  sub_100192340();
  v28 = *&v26[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress];
  v29 = *&v26[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8];
  if (qword_1002F7A60 != -1)
  {
    swift_once();
  }

  v30 = sub_1000EE91C(v14, qword_100300C40);
  (*(v15 + 16))(v18, v30, v14);
  v31 = sub_10018ACBC(v28, v29, v18, &unk_1002F9C80, &qword_1002299E0, sub_1001CE23C);

  (*(v15 + 8))(v18, v14);
  if (v31)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = &v31[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata];
    isa = sub_100169D38(*&v31[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata], *&v31[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata + 8]);
    if (!isa)
    {
      isa = sub_1000F8660().super.isa;
    }

    aBlock[0] = isa;
    v35 = isa;
    sub_10012F138(aBlock);
    objc_autoreleasePoolPop(v32);
    v36 = [v35 recordID];

    v37 = objc_autoreleasePoolPush();
    v38 = sub_100169D38(*v33, *(v33 + 1));
    if (!v38)
    {
      v38 = sub_1000F8660().super.isa;
    }

    aBlock[0] = v38;
    v39 = v38;
    sub_10012F138(aBlock);
    objc_autoreleasePoolPop(v37);
    v40 = CKRecord.recordType.getter();
    v42 = v41;

    sub_1001A73C4(v36, v40, v42, 0);

    v43 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_identifier;
    v44 = v95;
    v45 = *(v95 + 24);
    v46 = type metadata accessor for UUID();
    v47 = v98;
    (*(*(v46 - 8) + 16))(&v98[v45], &v31[v43], v46);
    v49 = *&v31[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress];
    v48 = *&v31[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8];

    v50 = v94;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v52 = v51;
    (*(v96 + 8))(v50, v97);
    *v47 = 1;
    *(v47 + 8) = 0xD000000000000013;
    *(v47 + 16) = 0x8000000100267B10;
    v53 = (v47 + v44[7]);
    *v53 = v49;
    v53[1] = v48;
    *(v47 + v44[8]) = v52;
    *(v47 + v44[9]) = xmmword_1002298C0;
    v54 = objc_autoreleasePoolPush();
    sub_1001B9D1C(v27, v47);
    objc_autoreleasePoolPop(v54);
    sub_100193560();
    type metadata accessor for CloudCoordinator();
    LOBYTE(v54) = sub_10015A5D0();
    swift_unknownObjectRelease();
    if (v54)
    {
      v55 = *(v27 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
      swift_unknownObjectRetain();
      v56 = objc_autoreleasePoolPush();
      v57 = sub_100169D38(*v33, *(v33 + 1));
      if (!v57)
      {
        v57 = sub_1000F8660().super.isa;
      }

      aBlock[0] = v57;
      v58 = v57;
      sub_10012F138(aBlock);
      objc_autoreleasePoolPop(v56);
      v59 = [v58 recordID];

      v60 = swift_allocObject();
      swift_weakInit();
      v61 = swift_allocObject();
      *(v61 + 16) = v31;
      *(v61 + 24) = v60;
      v62 = swift_allocObject();
      *(v62 + 16) = v55;
      *(v62 + 24) = v59;
      *(v62 + 32) = sub_1001CB890;
      *(v62 + 40) = v61;
      *(v62 + 48) = 1;
      swift_unknownObjectRetain();
      v63 = v31;

      v64 = v59;

      sub_100153CF4(sub_1001CE26C, v62);
      swift_unknownObjectRelease();
    }

    else
    {
      static os_log_type_t.error.getter();
      v76 = swift_allocObject();
      *(v76 + 16) = v85;
      v77 = v26;
      v78 = [v77 description];
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      v82 = v84;
      *(v76 + 56) = &type metadata for String;
      *(v76 + 64) = v82;
      *(v76 + 32) = v79;
      *(v76 + 40) = v81;
      os_log(_:dso:log:_:_:)();
    }

    v100(0);

    return sub_1001CC1B4(v47, type metadata accessor for BTDeferredRecord);
  }

  else
  {
    v65 = *(v27 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
    v66 = swift_allocObject();
    v67 = v100;
    v68 = v101;
    v66[2] = v26;
    v66[3] = v67;
    v66[4] = v68;
    aBlock[4] = sub_1001CE288;
    aBlock[5] = v66;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001742E0;
    aBlock[3] = &unk_1002C08A0;
    v69 = _Block_copy(aBlock);
    v70 = v26;
    v71 = v65;

    v72 = v88;
    static DispatchQoS.unspecified.getter();
    v102 = _swiftEmptyArrayStorage;
    sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
    sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
    v73 = v90;
    v74 = v93;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v69);

    (*(v92 + 8))(v73, v74);
    (*(v89 + 8))(v72, v91);
  }
}

uint64_t sub_1001B4FE0(void *a1, uint64_t (*a2)(void))
{
  static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100226100;
  v5 = a1;
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_1000EE954();
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  os_log(_:dso:log:_:_:)();

  return a2(0);
}

uint64_t sub_1001B5120(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
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
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100226100;
    v9 = a2;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_1000EE954();
    *(v8 + 32) = v11;
    *(v8 + 40) = v13;
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1001AD3A0(v9, 0);
    }
  }

  return result;
}

uint64_t sub_1001B538C(void *a1, int a2, void (*a3)(uint64_t), uint64_t a4)
{
  v177 = a4;
  v178 = a3;
  v172 = type metadata accessor for URL();
  v6 = *(v172 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v172);
  v171 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MagicPairingSettingsRecord();
  v184 = *(v9 - 8);
  v185 = v9;
  v10 = *(v184 + 64);
  __chkstk_darwin(v9);
  v169 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v186 = &v143 - v13;
  __chkstk_darwin(v14);
  v168 = &v143 - v15;
  v165 = v16;
  __chkstk_darwin(v17);
  v167 = &v143 - v18;
  v19 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v175 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v143 - v23;
  v180 = type metadata accessor for LegacyMagicPairingSettingsRecords();
  v173 = *(v180 - 8);
  v25 = *(v173 + 64);
  __chkstk_darwin(v180);
  v27 = &v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v176 = &v143 - v29;
  *&v31 = __chkstk_darwin(v30).n128_u64[0];
  v33 = &v143 - v32;
  v34 = [a1 modifiedByDevice];
  v163 = v27;
  if (v34)
  {
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v179 = v36;
  }

  else
  {
    v35 = 0;
    v179 = 0;
  }

  v37 = a1;
  sub_10013D8F4(v37, v33);
  v38 = &unk_100300000;
  v182 = 0;
  LODWORD(v183) = a2;
  v160 = v37;
  *&v156 = v6;
  sub_100194630(v24);
  v39 = v173 + 48;
  v40 = *(v173 + 48);
  v41 = v180;
  v42 = v40(v24, 1, v180);
  v164 = v39;
  if (v42 == 1)
  {
    sub_1001CC14C(v33, v176, type metadata accessor for LegacyMagicPairingSettingsRecords);
    v43 = &type metadata for String;
    v44 = v40;
    if (v40(v24, 1, v41) != 1)
    {
      sub_1000EEE6C(v24, &qword_1002F9D90, &qword_100227B30);
    }
  }

  else
  {
    sub_1001CC214(v24, v176, type metadata accessor for LegacyMagicPairingSettingsRecords);
    v43 = &type metadata for String;
    v44 = v40;
  }

  v45 = sub_10013B008();
  v46 = &unk_1002F7000;
  if (v45 >> 62)
  {
    goto LABEL_120;
  }

  v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v170 = v47;

  v48 = sub_10013B008();
  if (v48 >> 62)
  {
    v49 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v166 = v49;
  v157 = v44;

  static os_log_type_t.default.getter();
  if (*(v46 + 2792) != -1)
  {
    swift_once();
  }

  v50 = *(v38 + 455);
  v161 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1002289D0;
  *(v51 + 56) = &type metadata for Bool;
  *(v51 + 64) = &protocol witness table for Bool;
  *(v51 + 32) = v183 & 1;
  *(v51 + 96) = v43;
  v52 = sub_1000EE954();
  if (v179)
  {
    v53 = v35;
  }

  else
  {
    v53 = 15932;
  }

  if (v179)
  {
    v38 = v179;
  }

  else
  {
    v38 = 0xE200000000000000;
  }

  *(v51 + 72) = v53;
  *(v51 + 80) = v38;
  *(v51 + 136) = &type metadata for Int;
  *(v51 + 144) = &protocol witness table for Int;
  v162 = v52;
  v54 = v170;
  *(v51 + 104) = v52;
  *(v51 + 112) = v54;
  *(v51 + 176) = &type metadata for Int;
  *(v51 + 184) = &protocol witness table for Int;
  *(v51 + 152) = v166;

  v174 = v50;
  os_log(_:dso:log:_:_:)();

  v55 = sub_100192340();
  v56 = *(v55 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v55);
  *(&v143 - 2) = v57;
  *(&v143 - 1) = v33;
  v58 = v182;
  OS_dispatch_queue.sync<A>(execute:)();
  v182 = v58;
  if (v58)
  {
    sub_1001CC1B4(v176, type metadata accessor for LegacyMagicPairingSettingsRecords);

    sub_1001CC1B4(v33, type metadata accessor for LegacyMagicPairingSettingsRecords);
    v38 = &unk_100300000;
    static os_log_type_t.error.getter();
    v46 = v182;
    if (qword_1002F7AE8 != -1)
    {
LABEL_112:
      swift_once();
    }

    v59 = *(v38 + 455);
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_100226100;
    v187 = v46;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v61 = String.init<A>(describing:)();
    v63 = v62;
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = sub_1000EE954();
    *(v60 + 32) = v61;
    *(v60 + 40) = v63;
    os_log(_:dso:log:_:_:)();

    sub_1001266E0();
    v64 = swift_allocError();
    *v65 = v46 | 0x4000000000000000;
    swift_errorRetain();
    v178(v64);
  }

  v150 = v38;
  v151 = v53;

  static os_log_type_t.default.getter();
  v67 = swift_allocObject();
  v149 = xmmword_100226C80;
  *(v67 + 16) = xmmword_100226C80;
  *(v67 + 56) = sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
  *(v67 + 64) = sub_1001CB38C(&qword_1002F7BE0, &qword_1002F85A0, CKRecord_ptr);
  v68 = v160;
  *(v67 + 32) = v160;
  v69 = &v33[*(v180 + 20)];
  v70 = *v69;
  v71 = v69[1];
  v72 = v68;
  v73 = Data.hexString.getter(v70, v71);
  v74 = v162;
  *(v67 + 96) = v43;
  *(v67 + 104) = v74;
  *(v67 + 72) = v73;
  *(v67 + 80) = v75;
  os_log(_:dso:log:_:_:)();

  if (v183)
  {

    goto LABEL_131;
  }

  if (v166 >= v170)
  {
    goto LABEL_74;
  }

  v76 = [objc_opt_self() sharedInstance];
  v152 = [v76 isLegacyDevice:v34];

  v183 = sub_10013B008();
  v187 = v183;
  v166 = sub_10013B008();
  if (v166 >> 62)
  {
    goto LABEL_123;
  }

  result = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
  v77 = v175;
  v78 = v180;
  v44 = v164;
  v170 = v33;
  if (!result)
  {

LABEL_76:
    if (v183 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      if (v35)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v35 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
LABEL_78:
        v159 = objc_opt_self();
        v96 = 0;
        v155 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager;
        v160 = v183 & 0xC000000000000001;
        v145 = v183 & 0xFFFFFFFFFFFFFF8;
        v144 = v183 + 32;
        v154 = (v156 + 16);
        v153 = (v156 + 8);
        v143 = xmmword_1002290F0;
        v156 = xmmword_100226100;
        v158 = v35;
        do
        {
          if (v160)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v99 = __OFADD__(v96, 1);
            v46 = v96 + 1;
            if (v99)
            {
              goto LABEL_118;
            }
          }

          else
          {
            if (v96 >= *(v145 + 16))
            {
              __break(1u);
LABEL_123:
              result = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_28;
            }

            v34 = *(v144 + 8 * v96);
            v99 = __OFADD__(v96, 1);
            v46 = v96 + 1;
            if (v99)
            {
              goto LABEL_118;
            }
          }

          if ([v159 isFirstUnlocked])
          {
            v100 = *(v181 + v155);
            v101 = qword_1002F7A00;

            if (v101 != -1)
            {
              swift_once();
            }

            v102 = v172;
            v103 = sub_1000EE91C(v172, qword_100300BA8);
            v104 = v171;
            (*v154)(v171, v103, v102);
            v105 = sub_10018C984(v104);

            (*v153)(v104, v102);
          }

          else
          {
            static os_log_type_t.error.getter();
            v105 = _swiftEmptyArrayStorage;
            os_log(_:dso:log:_:_:)();
          }

          v166 = v46;
          v106 = v105[2];
          if (v106)
          {
            v43 = 0;
            while (1)
            {
              if (v43 >= v105[2])
              {
                __break(1u);
                goto LABEL_112;
              }

              v107 = *(v184 + 80);
              v108 = v186;
              sub_1001CC14C(v105 + ((v107 + 32) & ~v107) + *(v184 + 72) * v43, v186, type metadata accessor for MagicPairingSettingsRecord);
              v109 = (v108 + *(v185 + 24));
              v110 = *v109;
              v111 = v109[1];
              v46 = [v34 bluetoothAddress];
              v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v38 = v113;

              if (v110 == v112 && v111 == v38)
              {
                break;
              }

              v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v115)
              {
                goto LABEL_106;
              }

              ++v43;
              sub_1001CC1B4(v186, type metadata accessor for MagicPairingSettingsRecord);
              if (v106 == v43)
              {
                goto LABEL_79;
              }
            }

LABEL_106:

            v38 = v161;
            v116 = v168;
            sub_1001CC214(v186, v168, type metadata accessor for MagicPairingSettingsRecord);
            v117 = v167;
            sub_1001CC214(v116, v167, type metadata accessor for MagicPairingSettingsRecord);
            static os_log_type_t.default.getter();
            v118 = swift_allocObject();
            *(v118 + 16) = v156;
            v43 = v169;
            sub_1001CC14C(v117, v169, type metadata accessor for MagicPairingSettingsRecord);
            v119 = sub_100116308();
            v121 = v120;
            sub_1001CC1B4(v43, type metadata accessor for MagicPairingSettingsRecord);
            v122 = v162;
            *(v118 + 56) = &type metadata for String;
            *(v118 + 64) = v122;
            *(v118 + 32) = v119;
            *(v118 + 40) = v121;
            os_log(_:dso:log:_:_:)();

            if (v152)
            {
              v147 = ~v107;
              v146 = static os_log_type_t.default.getter();
              v123 = swift_allocObject();
              *(v123 + 16) = v149;
              sub_1001CC14C(v117, v43, type metadata accessor for MagicPairingSettingsRecord);
              v124 = sub_100116308();
              v38 = v125;
              v148 = type metadata accessor for MagicPairingSettingsRecord;
              sub_1001CC1B4(v43, type metadata accessor for MagicPairingSettingsRecord);
              *(v123 + 56) = &type metadata for String;
              *(v123 + 64) = v122;
              *(v123 + 32) = v124;
              *(v123 + 40) = v38;
              *(v123 + 96) = &type metadata for String;
              *(v123 + 104) = v122;
              v126 = v150;
              *(v123 + 72) = v151;
              *(v123 + 80) = v126;

              os_log(_:dso:log:_:_:)();

              sub_1001CC14C(v117, v43, type metadata accessor for MagicPairingSettingsRecord);
              v127 = (v107 + 16) & v147;
              v128 = swift_allocObject();
              sub_1001CC214(v43, v128 + v127, type metadata accessor for MagicPairingSettingsRecord);
              sub_1001B8D28(v117, 1, sub_1001CB820, v128);

              sub_1001CC1B4(v117, v148);
              goto LABEL_81;
            }

            v129 = *(v180 + 28);
            v130 = *(v185 + 120);
            type metadata accessor for Date();
            sub_1001C4BB4(&unk_1002F9DA8, &type metadata accessor for Date);
            v33 = v170;
            if (dispatch thunk of static Comparable.< infix(_:_:)())
            {
              sub_1001CC1B4(v117, type metadata accessor for MagicPairingSettingsRecord);
            }

            else
            {
              static os_log_type_t.default.getter();
              v131 = swift_allocObject();
              *(v131 + 16) = v156;
              v132 = v117;
              v133 = v34;
              v134 = [v133 description];
              v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v137 = v136;

              v138 = v162;
              *(v131 + 56) = &type metadata for String;
              *(v131 + 64) = v138;
              *(v131 + 32) = v135;
              *(v131 + 40) = v137;
              os_log(_:dso:log:_:_:)();

              sub_1001AB070(v132, 1);

              sub_1001CC1B4(v132, type metadata accessor for MagicPairingSettingsRecord);
            }
          }

          else
          {
LABEL_79:

            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
              v97 = swift_allocObject();
              *(v97 + 16) = v143;
              *(v97 + 32) = v34;
              v98 = v34;
              sub_10011455C();

              swift_unknownObjectRelease();
            }

            else
            {
            }

LABEL_81:
            v33 = v170;
          }

          v35 = v158;
          v96 = v166;
          v77 = v175;
          v78 = v180;
          v44 = v164;
        }

        while (v166 != v158);
      }
    }

    goto LABEL_126;
  }

  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v34 = 0;
  v160 = v166 & 0xC000000000000001;
  v159 = result;
  while (1)
  {
    v81 = v160 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v166 + 8 * v34 + 32);
    v82 = v182;
    v35 = v81;
    v46 = sub_1001CAADC(&v187, v35);

    v83 = v187;
    v44 = v187 >> 62;
    v183 = v187;
    if (v187 >> 62)
    {
      v94 = _CocoaArrayWrapper.endIndex.getter();
      v83 = v183;
      v84 = v94;
      v85 = v94 - v46;
      if (v94 < v46)
      {
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
        v47 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_10;
      }
    }

    else
    {
      v84 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v85 = v84 - v46;
      if (v84 < v46)
      {
        goto LABEL_113;
      }
    }

    if (v46 < 0)
    {
      goto LABEL_114;
    }

    if (v44)
    {
      v86 = _CocoaArrayWrapper.endIndex.getter();
      v83 = v183;
    }

    else
    {
      v86 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v86 < v84)
    {
      goto LABEL_115;
    }

    v43 = -v85;
    if (__OFSUB__(0, v85))
    {
      goto LABEL_116;
    }

    v182 = v82;
    if (v44)
    {
      v87 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v87 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = (v87 - v85);
    if (__OFADD__(v87, v43))
    {
      goto LABEL_117;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v44)
      {
        goto LABEL_56;
      }

      v44 = v183 & 0xFFFFFFFFFFFFFF8;
      if (v33 <= *((v183 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v44)
      {
LABEL_56:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_57;
      }

      v44 = v183 & 0xFFFFFFFFFFFFFF8;
    }

    v88 = *(v44 + 16);
LABEL_57:
    v183 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v183 & 0xFFFFFFFFFFFFFF8;
LABEL_58:
    v33 = (v44 + 32);
    v38 = (v44 + 32 + 8 * v46);
    sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
    swift_arrayDestroy();
    if (v85)
    {
      break;
    }

LABEL_67:
    ++v34;

    v187 = v183;
    v33 = v170;
    if (v159 == v34)
    {

      v77 = v175;
      v78 = v180;
      v44 = v164;
      goto LABEL_76;
    }
  }

  v89 = v183 >> 62;
  if (!(v183 >> 62))
  {
    v90 = *(v44 + 16);
    v91 = v90 - v84;
    if (__OFSUB__(v90, v84))
    {
      goto LABEL_73;
    }

    goto LABEL_61;
  }

  v95 = _CocoaArrayWrapper.endIndex.getter();
  v91 = v95 - v84;
  if (!__OFSUB__(v95, v84))
  {
LABEL_61:
    v92 = &v33[8 * v84];
    if (v84 != v46 || v38 >= &v92[8 * v91])
    {
      memmove((v44 + 32 + 8 * v46), v92, 8 * v91);
    }

    if (v89)
    {
      v93 = _CocoaArrayWrapper.endIndex.getter();
      v80 = v93 + v43;
      if (__OFADD__(v93, v43))
      {
        goto LABEL_119;
      }
    }

    else
    {
      v79 = *(v44 + 16);
      v80 = v79 + v43;
      if (__OFADD__(v79, v43))
      {
        goto LABEL_119;
      }
    }

    *(v44 + 16) = v80;
    goto LABEL_67;
  }

LABEL_73:
  __break(1u);
LABEL_74:

  v78 = v180;
  v77 = v175;
LABEL_126:
  sub_100194630(v77);
  if (v157(v77, 1, v78) == 1)
  {
    sub_1000EEE6C(v77, &qword_1002F9D90, &qword_100227B30);
  }

  else
  {
    v139 = v163;
    sub_1001CC214(v77, v163, type metadata accessor for LegacyMagicPairingSettingsRecords);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000EE870(&qword_1002F8528, &unk_100229A90);
      v140 = *(v173 + 72);
      v141 = (*(v173 + 80) + 32) & ~*(v173 + 80);
      v142 = swift_allocObject();
      *(v142 + 1) = xmmword_100226100;
      sub_1001CC14C(v139, v142 + v141, type metadata accessor for LegacyMagicPairingSettingsRecords);
      sub_10017D6AC(v142);
      swift_unknownObjectRelease();
    }

    sub_1001CC1B4(v139, type metadata accessor for LegacyMagicPairingSettingsRecords);
  }

LABEL_131:
  v178(0);
  sub_1001CC1B4(v176, type metadata accessor for LegacyMagicPairingSettingsRecords);
  return sub_1001CC1B4(v33, type metadata accessor for LegacyMagicPairingSettingsRecords);
}

void sub_1001B69D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagicPairingSettingsRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100226C80;
    sub_1001CC14C(a2, v7, type metadata accessor for MagicPairingSettingsRecord);
    v9 = sub_100116308();
    v11 = v10;
    sub_1001CC1B4(v7, type metadata accessor for MagicPairingSettingsRecord);
    *(v8 + 56) = &type metadata for String;
    v12 = sub_1000EE954();
    *(v8 + 64) = v12;
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    v15[1] = a1;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v13 = String.init<A>(describing:)();
    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v12;
    *(v8 + 72) = v13;
    *(v8 + 80) = v14;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_1001B6BA8(int a1, void (*a2)(void), void *a3)
{
  v4 = v3;
  v97 = a3;
  v95 = a1;
  v6 = type metadata accessor for MagicPairingSettingsRecord();
  v7 = *(v6 - 8);
  v91 = v6;
  v92 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v93 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v96 = v84 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v84 - v19;
  v21 = type metadata accessor for LegacyMagicPairingSettingsRecords();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v94 = v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v84 - v26;
  sub_100194630(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000EEE6C(v20, &qword_1002F9D90, &qword_100227B30);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return (a2)(0);
    }

    if (![objc_opt_self() isFirstUnlocked])
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v30 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
      goto LABEL_28;
    }

    sub_100192340();
    if (qword_1002F7A00 == -1)
    {
LABEL_5:
      v28 = sub_1000EE91C(v12, qword_100300BA8);
      (*(v13 + 16))(v16, v28, v12);
      v29 = v13;
      v30 = sub_10018C984(v16);

      (*(v29 + 8))(v16, v12);
LABEL_28:
      sub_100176C18(v30);

      swift_unknownObjectRelease();
      return (a2)(0);
    }

LABEL_56:
    swift_once();
    goto LABEL_5;
  }

  v85 = a2;
  v86 = v16;
  v31 = v12;
  sub_1001CC214(v20, v27, type metadata accessor for LegacyMagicPairingSettingsRecords);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v32 = qword_100300E38;
  v84[1] = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100226C80;
  v34 = v94;
  sub_1001CC14C(v27, v94, type metadata accessor for LegacyMagicPairingSettingsRecords);
  v35 = sub_10013C5B4();
  v37 = v36;
  sub_1001CC1B4(v34, type metadata accessor for LegacyMagicPairingSettingsRecords);
  *(v33 + 56) = &type metadata for String;
  v84[0] = sub_1000EE954();
  *(v33 + 64) = v84[0];
  *(v33 + 32) = v35;
  *(v33 + 40) = v37;
  *(v33 + 96) = &type metadata for Bool;
  *(v33 + 104) = &protocol witness table for Bool;
  *(v33 + 72) = v95 & 1;
  v90 = v32;
  os_log(_:dso:log:_:_:)();

  v38 = sub_100192340();
  v87 = v27;
  v39 = UUID.uuidString.getter();
  v41 = v40;
  if (qword_1002F7A70 != -1)
  {
    swift_once();
  }

  v12 = v31;
  v42 = sub_1000EE91C(v31, qword_100300D60);
  a2 = (v13 + 16);
  v16 = v86;
  v89 = *(v13 + 16);
  v43 = v89(v86, v42, v12);
  v44 = *(v38 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v43);
  v84[-4] = v38;
  v84[-3] = v39;
  v84[-2] = v41;
  v84[-1] = v16;
  OS_dispatch_queue.sync<A>(execute:)();

  v13 += 8;
  v88 = *v13;
  v88(v16, v12);
  v85(0);
  v45 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
  v97 = objc_opt_self();
  if ([v97 isFirstUnlocked])
  {
    v46 = *(v4 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
    v47 = qword_1002F7A00;

    v48 = v96;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = sub_1000EE91C(v12, qword_100300BA8);
    v89(v16, v49, v12);
    v50 = sub_10018C984(v16);

    v88(v16, v12);
    v51 = v87;
    v45 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
  }

  else
  {
    static os_log_type_t.error.getter();
    v50 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();
    v51 = v87;
    v48 = v96;
  }

  v52 = v50[2];
  v84[2] = a2;
  if (!v52)
  {
    goto LABEL_45;
  }

  v53 = v93;
  sub_1001CC14C(v50 + ((*(v92 + 80) + 32) & ~*(v92 + 80)), v93, type metadata accessor for MagicPairingSettingsRecord);

  sub_1001CC214(v53, v48, type metadata accessor for MagicPairingSettingsRecord);
  v54 = sub_10013B008();
  v55 = v54;
  if (!(v54 >> 62))
  {
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_44:
    sub_1001CC1B4(v48, type metadata accessor for MagicPairingSettingsRecord);
LABEL_45:

    goto LABEL_46;
  }

LABEL_18:
  if ((v55 & 0xC000000000000001) != 0)
  {
    v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_56;
    }

    v56 = *(v55 + 32);
  }

  v93 = v56;

  if ([v97 isFirstUnlocked])
  {
    v57 = *(v4 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
    v58 = qword_1002F7A00;

    if (v58 != -1)
    {
      swift_once();
    }

    v59 = sub_1000EE91C(v12, qword_100300BA8);
    v89(v16, v59, v12);
    v60 = sub_10018C984(v16);

    v88(v16, v12);
  }

  else
  {
    static os_log_type_t.error.getter();
    v60 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();
  }

  v62 = v60[2];

  if (v62 == 1)
  {
    v63 = sub_10013B008();
    v45 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
    if (v63 >> 62)
    {
      v64 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v64 == 1)
    {
      v65 = (v48 + *(v91 + 24));
      v66 = *v65;
      v67 = v65[1];
      v68 = [v93 bluetoothAddress];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      if (v66 == v69 && v67 == v71)
      {
      }

      else
      {
        v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v72 & 1) == 0)
        {
          sub_1001CC1B4(v96, type metadata accessor for MagicPairingSettingsRecord);

          v45 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
          goto LABEL_46;
        }
      }

      LODWORD(v92) = static os_log_type_t.default.getter();
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_100226100;
      v74 = v94;
      sub_1001CC14C(v51, v94, type metadata accessor for LegacyMagicPairingSettingsRecords);
      v75 = sub_10013C5B4();
      v77 = v76;
      sub_1001CC1B4(v74, type metadata accessor for LegacyMagicPairingSettingsRecords);
      v78 = v84[0];
      *(v73 + 56) = &type metadata for String;
      *(v73 + 64) = v78;
      *(v73 + 32) = v75;
      *(v73 + 40) = v77;
      os_log(_:dso:log:_:_:)();

      v79 = v96;
      sub_1001AB070(v96, (v95 & 1) == 0);

      sub_1001CC1B4(v79, type metadata accessor for MagicPairingSettingsRecord);
      v45 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
    }

    else
    {
      sub_1001CC1B4(v48, type metadata accessor for MagicPairingSettingsRecord);
    }
  }

  else
  {
    sub_1001CC1B4(v48, type metadata accessor for MagicPairingSettingsRecord);

    v45 = &selRef_initializedCKAfterFirstUnlockedSinceBoot;
  }

LABEL_46:
  if (swift_unknownObjectWeakLoadStrong())
  {
    if ([v97 v45[34]])
    {
      v80 = *(v4 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
      v81 = qword_1002F7A00;

      if (v81 != -1)
      {
        swift_once();
      }

      v82 = sub_1000EE91C(v12, qword_100300BA8);
      v89(v16, v82, v12);
      v83 = sub_10018C984(v16);

      v88(v16, v12);
    }

    else
    {
      static os_log_type_t.error.getter();
      v83 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
    }

    sub_100176C18(v83);
    swift_unknownObjectRelease();
  }

  return sub_1001CC1B4(v51, type metadata accessor for LegacyMagicPairingSettingsRecords);
}

uint64_t sub_1001B78D8(void *a1, void (*a2)(void), uint64_t a3)
{
  v150 = a3;
  v151 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v139 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v149 = &v138 - v14;
  __chkstk_darwin(v15);
  v17 = &v138 - v16;
  v147 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  v18 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v147);
  v146 = &v138 - v19;
  v153 = type metadata accessor for MagicPairingSettingsRecord();
  v148 = *(v153 - 8);
  v20 = *(v148 + 8);
  __chkstk_darwin(v153);
  v142 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v143 = &v138 - v23;
  __chkstk_darwin(v24);
  v140 = v3;
  v141 = &v138 - v25;
  v26 = sub_100192340();
  v152 = a1;
  v27 = [a1 bluetoothAddress];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (qword_1002F7A00 != -1)
  {
    swift_once();
  }

  v30 = sub_1000EE91C(v8, qword_100300BA8);
  (*(v9 + 16))(v17, v30, v8);
  v31 = objc_autoreleasePoolPush();
  v145 = v17;
  v32 = v31;
  URL.path.getter();
  URL.appendingPathComponent(_:)();

  v33 = v149;
  v144 = v29;
  URL.appendingPathComponent(_:)();
  v34 = *(v9 + 8);
  v34(v12, v8);
  objc_autoreleasePoolPop(v32);
  v35 = objc_autoreleasePoolPush();
  v36 = *(v26 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v35);
  *(&v138 - 2) = v33;
  *(&v138 - 1) = v26;
  v37 = v146;
  v38 = 0;
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v35);
  v34(v33, v8);

  v34(v145, v8);
  v39 = v153;
  if ((*(v148 + 6))(v37, 1, v153) != 1)
  {
    v81 = v143;
    sub_1001CC214(v37, v143, type metadata accessor for MagicPairingSettingsRecord);
    v82 = v152;
    if ((sub_10011D740(v152) & 1) == 0)
    {
      v83 = objc_autoreleasePoolPush();
      isa = sub_100169D38(*(v81 + *(v39 + 20)), *(v81 + *(v39 + 20) + 8));
      if (!isa)
      {
        isa = sub_1000F8100().super.isa;
      }

      v154[0] = isa;
      v85 = isa;
      sub_10011A7B0(v154);
      objc_autoreleasePoolPop(v83);
      v86 = [v85 recordChangeTag];

      if (v86)
      {

        LODWORD(v153) = static os_log_type_t.default.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_100226C80;
        v88 = v142;
        sub_1001CC14C(v81, v142, type metadata accessor for MagicPairingSettingsRecord);
        v89 = sub_100116308();
        v90 = v81;
        v92 = v91;
        sub_1001CC1B4(v88, type metadata accessor for MagicPairingSettingsRecord);
        *(v87 + 56) = &type metadata for String;
        v93 = sub_1000EE954();
        *(v87 + 64) = v93;
        *(v87 + 32) = v89;
        *(v87 + 40) = v92;
        v94 = v82;
        v95 = [v94 description];
        v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v97;

        *(v87 + 96) = &type metadata for String;
        *(v87 + 104) = v93;
        *(v87 + 72) = v96;
        *(v87 + 80) = v98;
        os_log(_:dso:log:_:_:)();

        (v151)(0);
        v99 = v90;
        return sub_1001CC1B4(v99, type metadata accessor for MagicPairingSettingsRecord);
      }
    }

    v149 = 0;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_100226100;
    v148 = type metadata accessor for MagicPairingSettingsRecord;
    v109 = v142;
    sub_1001CC14C(v81, v142, type metadata accessor for MagicPairingSettingsRecord);
    v110 = sub_100116308();
    v112 = v111;
    sub_1001CC1B4(v109, type metadata accessor for MagicPairingSettingsRecord);
    *(v108 + 56) = &type metadata for String;
    v113 = v81;
    v114 = sub_1000EE954();
    *(v108 + 64) = v114;
    *(v108 + 32) = v110;
    *(v108 + 40) = v112;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.default.getter();
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_100226C80;
    v116 = (v113 + *(v153 + 24));
    v118 = *v116;
    v117 = v116[1];
    *(v115 + 56) = &type metadata for String;
    *(v115 + 64) = v114;
    *(v115 + 32) = v118;
    *(v115 + 40) = v117;

    v119 = v152;
    v120 = [v119 description];
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v122;

    *(v115 + 96) = &type metadata for String;
    *(v115 + 104) = v114;
    *(v115 + 72) = v121;
    *(v115 + 80) = v123;
    os_log(_:dso:log:_:_:)();

    v79 = v141;
    sub_1001CC14C(v113, v141, v148);
    sub_10011BD3C(v119);
    v80 = sub_1001CC1B4(v113, type metadata accessor for MagicPairingSettingsRecord);
    v38 = v149;
LABEL_26:
    v124 = v140;
    v125 = *(v140 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
    v126 = *(v125 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
    __chkstk_darwin(v80);
    *(&v138 - 2) = v125;
    *(&v138 - 1) = v79;

    OS_dispatch_queue.sync<A>(execute:)();
    if (v38)
    {

      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_100226100;
      v154[0] = v38;
      swift_errorRetain();
      sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v128 = String.init<A>(describing:)();
      v130 = v129;
      *(v127 + 56) = &type metadata for String;
      *(v127 + 64) = sub_1000EE954();
      *(v127 + 32) = v128;
      *(v127 + 40) = v130;
      os_log(_:dso:log:_:_:)();

      sub_1001266E0();
      v131 = swift_allocError();
      *v132 = v38 | 0x4000000000000000;
      swift_errorRetain();
      (v151)(v131);
    }

    else
    {

      (v151)(0);
      v133 = objc_autoreleasePoolPush();
      v134 = sub_100169D38(*(v79 + *(v153 + 20)), *(v79 + *(v153 + 20) + 8));
      if (!v134)
      {
        v134 = sub_1000F8100().super.isa;
      }

      v154[0] = v134;
      v135 = v134;
      sub_10011A7B0(v154);
      objc_autoreleasePoolPop(v133);
      sub_100193560();
      v136 = swift_allocObject();
      *(v136 + 16) = v124;
      *(v136 + 24) = v135;

      v137 = v135;
      sub_100154534(v137, 1, sub_1001CB5D4, v136);

      swift_unknownObjectRelease();
    }

    v99 = v79;
    return sub_1001CC1B4(v99, type metadata accessor for MagicPairingSettingsRecord);
  }

  sub_1000EEE6C(v37, &unk_1002F9C30, &qword_1002299A0);
  v40 = v152;
  v41 = [v152 masterKey];
  if (v41)
  {
    v42 = v41;
    v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    sub_1000EF870(v43, v45);
    v46 = [v40 masterHint];
    if (v46)
    {
      v47 = v46;
      v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      sub_1000EF870(v48, v50);
      v51 = [v40 accessoryKey];
      if (v51)
      {
        v52 = v51;
        v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        sub_1000EF870(v53, v55);
        v56 = [v40 accessoryHint];
        if (v56)
        {
          v57 = v56;
          v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;

          sub_1000EF870(v58, v60);
          v61 = [v40 encryptionKey];
          if (v61)
          {
            v62 = v61;
            v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v65 = v64;

            sub_1000EF870(v63, v65);
            v66 = [v40 irk];
            if (v66)
            {
              v67 = v66;
              v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v70 = v69;

              sub_1000EF870(v68, v70);
              static os_log_type_t.default.getter();
              if (qword_1002F7AE8 != -1)
              {
                swift_once();
              }

              sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
              v71 = swift_allocObject();
              *(v71 + 16) = xmmword_100226100;
              v72 = v40;
              v73 = [v72 description];
              v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v76 = v75;

              *(v71 + 56) = &type metadata for String;
              *(v71 + 64) = sub_1000EE954();
              *(v71 + 32) = v74;
              *(v71 + 40) = v76;
              os_log(_:dso:log:_:_:)();

              v77 = v72;
              v78 = v139;
              UUID.init()();
              v79 = v141;
              v80 = sub_100116EB8(v78, v77, v141);
              goto LABEL_26;
            }
          }
        }
      }
    }
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_100226100;
  v101 = v40;
  v102 = [v101 description];
  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v105 = v104;

  *(v100 + 56) = &type metadata for String;
  *(v100 + 64) = sub_1000EE954();
  *(v100 + 32) = v103;
  *(v100 + 40) = v105;
  os_log(_:dso:log:_:_:)();

  sub_1001266E0();
  swift_allocError();
  *v106 = 0x8000000000000028;
  v151();
}

uint64_t sub_1001B87B8(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v28 = a7;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v15 = *(v29 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v29);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = a2 & 1;
  *(v20 + 24) = a2 & 1;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  aBlock[4] = v27;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = v28;
  v22 = _Block_copy(aBlock);
  v23 = v19;
  sub_1001CB634(a1, v21);

  v24 = a4;
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v30 + 8))(v14, v11);
  (*(v15 + 8))(v18, v29);
}

uint64_t sub_1001B8AB8(void *a1, char a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100226100;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_1000EE954();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    os_log(_:dso:log:_:_:)();

    v10 = a4;
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100226100;
    v12 = a1;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_1001633D8(a1, 0);
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1000EE954();
    *(v11 + 32) = v14;
    *(v11 + 40) = v16;
    os_log(_:dso:log:_:_:)();

    v10 = v12;
  }

  return sub_10019A610(v10, _swiftEmptyArrayStorage, 0);
}

uint64_t sub_1001B8D28(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v125 = a4;
  v126 = a3;
  v109 = type metadata accessor for Date();
  v108 = *(v109 - 8);
  v8 = *(v108 + 64);
  __chkstk_darwin(v109);
  v106 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for BTDeferredRecord();
  v10 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v12 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v118 = *(v13 - 8);
  v119 = v13;
  v14 = *(v118 + 64);
  __chkstk_darwin(v13);
  v120 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v122 = &v104 - v17;
  __chkstk_darwin(v18);
  v20 = &v104 - v19;
  v121 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  v21 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v123 = &v104 - v22;
  v23 = type metadata accessor for MagicPairingSettingsRecord();
  v127 = *(v23 - 8);
  v128 = v23;
  v24 = *(v127 + 64);
  __chkstk_darwin(v23);
  v110 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v25;
  __chkstk_darwin(v26);
  v28 = &v104 - v27;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v111 = v12;
  v29 = qword_100300E38;
  v112 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100226C80;
  sub_1001CC14C(a1, v28, type metadata accessor for MagicPairingSettingsRecord);
  v31 = sub_100116308();
  v32 = a1;
  v34 = v33;
  v124 = v28;
  sub_1001CC1B4(v28, type metadata accessor for MagicPairingSettingsRecord);
  *(v30 + 56) = &type metadata for String;
  v113 = sub_1000EE954();
  *(v30 + 64) = v113;
  *(v30 + 32) = v31;
  *(v30 + 40) = v34;
  *(v30 + 96) = &type metadata for Bool;
  *(v30 + 104) = &protocol witness table for Bool;
  v105 = a2;
  *(v30 + 72) = a2 & 1;
  v114 = v29;
  os_log(_:dso:log:_:_:)();

  v116 = v5;
  v35 = sub_100192340();
  v36 = *(v128 + 24);
  v115 = v32;
  v37 = (v32 + v36);
  v38 = *v37;
  v39 = v37[1];
  if (qword_1002F7A00 != -1)
  {
    swift_once();
  }

  v40 = v119;
  v41 = sub_1000EE91C(v119, qword_100300BA8);
  v42 = v118;
  v43 = *(v118 + 16);
  v117 = v20;
  v43(v20, v41, v40);
  v44 = objc_autoreleasePoolPush();
  URL.path.getter();
  v45 = v120;
  URL.appendingPathComponent(_:)();

  v46 = v35;
  v47 = v122;
  URL.appendingPathComponent(_:)();
  v48 = *(v42 + 8);
  v48(v45, v40);
  objc_autoreleasePoolPop(v44);
  v49 = objc_autoreleasePoolPush();
  v50 = *(v46 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v49);
  *(&v104 - 2) = v47;
  *(&v104 - 1) = v46;
  v51 = v123;
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v49);
  v48(v47, v40);

  v48(v117, v40);
  v52 = v128;
  if ((*(v127 + 48))(v51, 1, v128) == 1)
  {
    sub_1000EEE6C(v51, &unk_1002F9C30, &qword_1002299A0);
    static os_log_type_t.error.getter();
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100226100;
    v54 = v124;
    sub_1001CC14C(v115, v124, type metadata accessor for MagicPairingSettingsRecord);
    v55 = sub_100116308();
    v57 = v56;
    sub_1001CC1B4(v54, type metadata accessor for MagicPairingSettingsRecord);
    v58 = v113;
    *(v53 + 56) = &type metadata for String;
    *(v53 + 64) = v58;
    *(v53 + 32) = v55;
    *(v53 + 40) = v57;
    os_log(_:dso:log:_:_:)();

    return v126(0);
  }

  else
  {
    v60 = v110;
    sub_1001CC214(v51, v110, type metadata accessor for MagicPairingSettingsRecord);
    v61 = objc_autoreleasePoolPush();
    v62 = v60 + *(v52 + 20);
    isa = sub_100169D38(*v62, *(v62 + 8));
    if (!isa)
    {
      isa = sub_1000F8100().super.isa;
    }

    v64 = v111;
    v65 = v105;
    v129[0] = isa;
    v66 = isa;
    sub_10011A7B0(v129);
    objc_autoreleasePoolPop(v61);
    v67 = [v66 recordID];

    v68 = objc_autoreleasePoolPush();
    v69 = sub_100169D38(*v62, *(v62 + 8));
    if (!v69)
    {
      v69 = sub_1000F8100().super.isa;
    }

    v129[0] = v69;
    v70 = v69;
    sub_10011A7B0(v129);
    objc_autoreleasePoolPop(v68);
    v71 = CKRecord.recordType.getter();
    v73 = v72;

    v74 = v116;
    sub_1001A73C4(v67, v71, v73, v65 & 1);

    v75 = v107;
    v76 = *(v107 + 24);
    v77 = type metadata accessor for UUID();
    (*(*(v77 - 8) + 16))(v64 + v76, v60, v77);
    v78 = (v60 + *(v52 + 24));
    v80 = *v78;
    v79 = v78[1];

    v81 = v106;
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v83 = v82;
    (*(v108 + 8))(v81, v109);
    *v64 = 1;
    strcpy((v64 + 8), "MagicSettings");
    *(v64 + 22) = -4864;
    v84 = (v64 + v75[7]);
    *v84 = v80;
    v84[1] = v79;
    *(v64 + v75[8]) = v83;
    *(v64 + v75[9]) = xmmword_1002298C0;
    v85 = objc_autoreleasePoolPush();
    sub_1001B9D1C(v74, v64);
    objc_autoreleasePoolPop(v85);
    sub_100193560();
    type metadata accessor for CloudCoordinator();
    LOBYTE(v85) = sub_10015A5D0();
    swift_unknownObjectRelease();
    if (v85)
    {
      v86 = *(v74 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
      swift_unknownObjectRetain();
      v87 = objc_autoreleasePoolPush();
      v88 = sub_100169D38(*v62, *(v62 + 8));
      if (!v88)
      {
        v88 = sub_1000F8100().super.isa;
      }

      v129[0] = v88;
      v89 = v88;
      sub_10011A7B0(v129);
      objc_autoreleasePoolPop(v87);
      v90 = [v89 recordID];

      v91 = swift_allocObject();
      swift_weakInit();
      v92 = v124;
      sub_1001CC14C(v60, v124, type metadata accessor for MagicPairingSettingsRecord);
      v93 = (*(v127 + 80) + 16) & ~*(v127 + 80);
      v94 = (v104 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      sub_1001CC214(v92, v95 + v93, type metadata accessor for MagicPairingSettingsRecord);
      *(v95 + v94) = v91;
      v96 = swift_allocObject();
      *(v96 + 16) = v86;
      *(v96 + 24) = v90;
      *(v96 + 32) = sub_1001CB58C;
      *(v96 + 40) = v95;
      *(v96 + 48) = 1;
      swift_unknownObjectRetain();

      v97 = v90;

      sub_100153CF4(sub_1001CE26C, v96);

      swift_unknownObjectRelease();
    }

    else
    {
      static os_log_type_t.error.getter();
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_100226100;
      v99 = v124;
      sub_1001CC14C(v115, v124, type metadata accessor for MagicPairingSettingsRecord);
      v100 = sub_100116308();
      v102 = v101;
      sub_1001CC1B4(v99, type metadata accessor for MagicPairingSettingsRecord);
      v103 = v113;
      *(v98 + 56) = &type metadata for String;
      *(v98 + 64) = v103;
      *(v98 + 32) = v100;
      *(v98 + 40) = v102;
      os_log(_:dso:log:_:_:)();
    }

    v126(0);
    sub_1001CC1B4(v64, type metadata accessor for BTDeferredRecord);
    return sub_1001CC1B4(v60, type metadata accessor for MagicPairingSettingsRecord);
  }
}

uint64_t sub_1001B9918(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for MagicPairingSettingsRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v26[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100226100;
    v26[4] = a1;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_1000EE954();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100226100;
    sub_1001CC14C(a2, v7, type metadata accessor for MagicPairingSettingsRecord);
    v14 = sub_100116308();
    v16 = v15;
    sub_1001CC1B4(v7, type metadata accessor for MagicPairingSettingsRecord);
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_1000EE954();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1001AB070(a2, 0);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100193560();

      v17 = objc_autoreleasePoolPush();
      isa = sub_100169D38(*(a2 + *(v4 + 20)), *(a2 + *(v4 + 20) + 8));
      if (!isa)
      {
        isa = sub_1000F8100().super.isa;
      }

      v26[0] = isa;
      v19 = isa;
      sub_10011A7B0(v26);
      objc_autoreleasePoolPop(v17);
      v20 = [v19 recordID];

      v21 = [v20 zoneID];
      v22 = (a2 + *(v4 + 24));
      v23 = *v22;
      v24 = v22[1];

      sub_100158CC4(&off_1002BBCB8, v21, 0xD000000000000010, 0x8000000100267080, v23, v24);

      swift_unknownObjectRelease();
      return swift_arrayDestroy();
    }
  }

  return result;
}

uint64_t sub_1001B9D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BTDeferredRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100192340();
  v9 = *(v8 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  v19 = v8;
  v20 = a2;
  OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
  }

  static os_log_type_t.error.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226C80;
  sub_1001CC14C(a2, v7, type metadata accessor for BTDeferredRecord);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_1000EE954();
  *(v10 + 64) = v14;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v21 = v2;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v15 = String.init<A>(describing:)();
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 72) = v15;
  *(v10 + 80) = v16;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_1001B9F44(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v144 = a3;
  v145 = a2;
  v152 = type metadata accessor for SoundProfileRecord();
  v154 = *(v152 - 8);
  v4 = *(v154 + 64);
  __chkstk_darwin(v152);
  v6 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v141 = (&v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v136 = &v134 - v11;
  v12 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v135 = &v134 - v14;
  v156 = type metadata accessor for UUID();
  v158 = *(v156 - 8);
  v15 = *(v158 + 64);
  __chkstk_darwin(v156);
  v151 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v153 = &v134 - v18;
  v19 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v168 = &v134 - v21;
  v22 = type metadata accessor for URL();
  v157 = *(v22 - 8);
  v23 = *(v157 + 64);
  __chkstk_darwin(v22);
  v137 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v134 - v26;
  __chkstk_darwin(v28);
  v139 = &v134 - v29;
  __chkstk_darwin(v30);
  v150 = &v134 - v31;
  __chkstk_darwin(v32);
  v155 = &v134 - v33;
  __chkstk_darwin(v34);
  v165 = &v134 - v35;
  __chkstk_darwin(v36);
  v164 = &v134 - v37;
  v167 = type metadata accessor for BTDeferredRecord();
  v38 = *(v167 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v167);
  v41 = &v134 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v166 = &v134 - v43;
  __chkstk_darwin(v44);
  v46 = &v134 - v45;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v138 = v27;
    v146 = v6;
    v47 = qword_100300E38;
    v149 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v48 = swift_allocObject();
    v148 = xmmword_100226100;
    *(v48 + 16) = xmmword_100226100;
    v49 = sub_1001C4BB4(&unk_1002F9C00, &type metadata accessor for URL);
    v143 = a1;
    v140 = v49;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    *(v48 + 56) = &type metadata for String;
    v147 = sub_1000EE954();
    *(v48 + 64) = v147;
    *(v48 + 32) = v50;
    *(v48 + 40) = v52;
    v142 = v47;
    os_log(_:dso:log:_:_:)();

    a1 = v170;
    v53 = sub_10019391C();
    v54 = *(v53 + 16);
    v172 = v22;
    v55 = v22;
    v169 = v54;
    if (v54)
    {
      v6 = 0;
      v171 = 0x80000001002671C0;
      v56 = _swiftEmptyArrayStorage;
      v22 = v41;
      while (1)
      {
        if (v6 >= *(v53 + 16))
        {
          __break(1u);
          goto LABEL_42;
        }

        v41 = ((*(v38 + 80) + 32) & ~*(v38 + 80));
        v27 = *(v38 + 72);
        sub_1001CC14C(&v41[v53 + v27 * v6], v46, type metadata accessor for BTDeferredRecord);
        v57 = *(v46 + 1) == 0xD000000000000012 && v171 == *(v46 + 2);
        if (v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (*v46 == 1)
          {

LABEL_15:
            sub_1001CC214(v46, v22, type metadata accessor for BTDeferredRecord);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v173 = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1001C4EBC(0, v56[2] + 1, 1);
              v56 = v173;
            }

            v60 = v56[2];
            v59 = v56[3];
            a1 = v56;
            if (v60 >= v59 >> 1)
            {
              sub_1001C4EBC(v59 > 1, v60 + 1, 1);
              a1 = v173;
            }

            *(a1 + 16) = v60 + 1;
            sub_1001CC214(v22, &v41[a1 + v60 * v27], type metadata accessor for BTDeferredRecord);
            v55 = v172;
            v56 = a1;
            goto LABEL_5;
          }

          a1 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (a1)
          {
            goto LABEL_15;
          }
        }

        sub_1001CC1B4(v46, type metadata accessor for BTDeferredRecord);
LABEL_5:
        if (v169 == ++v6)
        {
          goto LABEL_21;
        }
      }
    }

    v56 = _swiftEmptyArrayStorage;
LABEL_21:

    v171 = v56[2];
    if (!v171)
    {
      break;
    }

    v6 = 0;
    v22 = 0;
    v169 = (v157 + 48);
    v160 = "ew";
    v161 = (v157 + 32);
    v159 = (v157 + 8);
    v162 = v56;
    v163 = v38;
    while (v6 < v56[2])
    {
      v61 = v166;
      sub_1001CC14C(v56 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v6, v166, type metadata accessor for BTDeferredRecord);
      v46 = sub_100192340();
      v62 = v61 + *(v167 + 24);
      v63 = UUID.uuidString.getter();
      v65 = v64;
      sub_1001CC1B4(v61, type metadata accessor for BTDeferredRecord);
      v66 = v168;
      URL.init(string:)();
      result = (*v169)(v66, 1, v55);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v68 = v55;
      ++v6;
      v69 = v165;
      (*v161)(v165, v66, v68);
      v27 = v164;
      URL.appendingPathComponent(_:)();
      v41 = v159;
      v70 = *v159;
      v71 = (*v159)(v69, v68);
      v72 = v70;
      a1 = *&v46[OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue];
      __chkstk_darwin(v71);
      *(&v134 - 4) = v46;
      *(&v134 - 3) = v63;
      *(&v134 - 2) = v65;
      *(&v134 - 1) = v27;
      OS_dispatch_queue.sync<A>(execute:)();

      v55 = v172;
      v72(v27, v172);
      v56 = v162;
      v38 = v163;
      if (v171 == v6)
      {
        goto LABEL_26;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

LABEL_26:
  v168 = 0;

  v73 = v136;
  sub_10019493C(v136);
  v74 = *(v154 + 48);
  v75 = v152;
  v154 += 48;
  v76 = (v74)(v73, 1, v152);
  v169 = v74;
  if (v76 == 1)
  {
    sub_1000EEE6C(v73, &qword_1002F84F8, &unk_1002299F0);
    v77 = v158;
    v78 = v135;
    v79 = v156;
    (*(v158 + 56))(v135, 1, 1, v156);
    UUID.init()();
    if ((*(v77 + 48))(v78, 1, v79) != 1)
    {
      sub_1000EEE6C(v78, &qword_1002F8000, &unk_1002262C0);
    }
  }

  else
  {
    v80 = v158;
    v81 = v73 + *(v75 + 20);
    v82 = v135;
    v83 = v156;
    (*(v158 + 16))(v135, v81, v156);
    sub_1001CC1B4(v73, type metadata accessor for SoundProfileRecord);
    (*(v80 + 56))(v82, 0, 1, v83);
    (*(v80 + 32))(v153, v82, v83);
  }

  type metadata accessor for DeviceStore();
  v84 = v138;
  sub_100174350();
  if (qword_1002F79E0 != -1)
  {
    swift_once();
  }

  v85 = sub_1000EE91C(v55, qword_100300B68);
  v86 = v55;
  v87 = v157;
  v88 = v137;
  v89 = *(v157 + 16);
  v89(v137, v85, v86);
  URL.path.getter();
  v90 = *(v87 + 8);
  v90(v88, v86);
  v91 = v139;
  URL.appendingPathComponent(_:isDirectory:)();

  v90(v84, v86);
  v92 = v153;
  UUID.uuidString.getter();
  v93 = v150;
  URL.appendingPathComponent(_:)();

  v90(v91, v86);
  URL.appendingPathExtension(_:)();
  v157 = v87 + 8;
  v171 = v90;
  v90(v93, v86);
  v94 = *(v158 + 16);
  v94(v151, v92, v156);
  v95 = v141;
  sub_10019493C(v141);
  v96 = v152;
  v97 = (v169)(v95, 1, v152);
  v167 = v94;
  if (v97 == 1)
  {
    sub_1000EEE6C(v95, &qword_1002F84F8, &unk_1002299F0);
    v98 = 0;
    v99 = 0xC000000000000000;
  }

  else
  {
    v98 = *v95;
    v99 = v95[1];
    sub_1000EE9F4(*v95, v99);
    sub_1001CC1B4(v95, type metadata accessor for SoundProfileRecord);
  }

  v100 = v150;
  v101 = v155;
  v102 = v172;
  v89(v150, v155, v172);
  v103 = v146;
  *v146 = v98;
  *(v103 + 8) = v99;
  v104 = v151;
  v105 = v156;
  (v167)(v103 + v96[5], v151, v156);
  v89((v103 + v96[6]), v100, v102);
  v106 = v103 + v96[7];
  static Date.now.getter();
  v171(v100, v102);
  v107 = *(v158 + 8);
  v158 += 8;
  v169 = v107;
  (v107)(v104, v105);
  static os_log_type_t.default.getter();
  v108 = swift_allocObject();
  *(v108 + 16) = v148;
  v109 = dispatch thunk of CustomStringConvertible.description.getter();
  v110 = v147;
  *(v108 + 56) = &type metadata for String;
  *(v108 + 64) = v110;
  *(v108 + 32) = v109;
  *(v108 + 40) = v111;
  os_log(_:dso:log:_:_:)();

  v112 = v170;
  v113 = sub_100192340();
  v114 = *(v113 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v113);
  v115 = v143;
  *(&v134 - 2) = v101;
  *(&v134 - 1) = v115;
  v116 = v168;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v116)
  {

    static os_log_type_t.error.getter();
    v120 = swift_allocObject();
    *(v120 + 16) = v148;
    v173 = v116;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v121 = String.init<A>(describing:)();
    v122 = v147;
    *(v120 + 56) = &type metadata for String;
    *(v120 + 64) = v122;
    *(v120 + 32) = v121;
    *(v120 + 40) = v123;
    os_log(_:dso:log:_:_:)();

    sub_1001266E0();
    v124 = swift_allocError();
    *v125 = v116 | 0x4000000000000000;
    swift_errorRetain();
    v145(v124);

    (v169)(v153, v156);
    sub_1001CC1B4(v103, type metadata accessor for SoundProfileRecord);
    return (v171)(v155, v172);
  }

  else
  {

    v118 = *(v112 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
    v119 = *(v118 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
    __chkstk_darwin(v117);
    *(&v134 - 2) = v118;
    *(&v134 - 1) = v103;

    OS_dispatch_queue.sync<A>(execute:)();

    notify_post("BTCloudServicesSoundProfileChangedNotification");
    v145(0);
    v126 = objc_autoreleasePoolPush();
    isa = sub_100169D38(*v103, *(v103 + 8));
    if (!isa)
    {
      isa = sub_1000F82C4(v103).super.isa;
    }

    v128 = v172;
    v129 = v169;
    v173 = isa;
    v130 = isa;
    sub_1000FD23C(&v173);
    objc_autoreleasePoolPop(v126);
    sub_100193560();
    v131 = swift_allocObject();
    swift_weakInit();
    v132 = swift_allocObject();
    *(v132 + 16) = v131;
    *(v132 + 24) = v130;

    v133 = v130;
    sub_100154534(v133, 1, sub_1001CB580, v132);

    swift_unknownObjectRelease();
    (v129)(v153, v156);
    sub_1001CC1B4(v103, type metadata accessor for SoundProfileRecord);
    v171(v155, v128);
  }
}

uint64_t sub_1001BB228(void *a1, char a2, uint64_t a3, id a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100226100;
      swift_errorRetain();
      sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
      v9 = String.init<A>(describing:)();
      v11 = v10;
      *(v8 + 56) = &type metadata for String;
      *(v8 + 64) = sub_1000EE954();
      *(v8 + 32) = v9;
      *(v8 + 40) = v11;
    }

    else
    {
      static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100226100;
      a4 = a1;
      v13 = [a4 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      sub_1001633D8(a1, 0);
      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = sub_1000EE954();
      *(v12 + 32) = v14;
      *(v12 + 40) = v16;
    }

    os_log(_:dso:log:_:_:)();

    sub_1001A1688(a4, 0);
  }

  return result;
}

uint64_t sub_1001BB488(void (*a1)(void), void (*a2)(void))
{
  v3 = v2;
  v6 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for SoundProfileRecord();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  sub_10019493C(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000EEE6C(v9, &qword_1002F84F8, &unk_1002299F0);
    sub_1001266E0();
    swift_allocError();
    *v17 = 0x8000000000000020;
    a1();
  }

  else
  {
    v40 = a1;
    sub_1001CC214(v9, v16, type metadata accessor for SoundProfileRecord);
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v19 = *(sub_100192340() + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
    OS_dispatch_queue.sync<A>(execute:)();

    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    notify_post("BTCloudServicesSoundProfileChangedNotification");
    (v40)(0);
    v20 = objc_autoreleasePoolPush();
    isa = sub_100169D38(*v16, *(v16 + 1));
    v39 = a2;
    if (!isa)
    {
      isa = sub_1000F82C4(v16).super.isa;
    }

    v41 = isa;
    v22 = isa;
    sub_1000FD23C(&v41);
    objc_autoreleasePoolPop(v20);
    v23 = [v22 recordID];

    v38 = [v23 zoneID];
    v24 = sub_100193560();
    v25 = swift_allocObject();
    swift_weakInit();
    sub_1001CC14C(v16, v13, type metadata accessor for SoundProfileRecord);
    v26 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = v3;
    v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    sub_1001CC214(v13, v30 + v26, type metadata accessor for SoundProfileRecord);
    *(v30 + v27) = v25;
    v31 = (v30 + v28);
    v32 = v39;
    *v31 = v40;
    v31[1] = v32;
    *(v30 + v29) = v23;
    v33 = swift_allocObject();
    *(v33 + 16) = v24;
    *(v33 + 24) = v23;
    *(v33 + 32) = sub_1001CB260;
    *(v33 + 40) = v30;
    *(v33 + 48) = 1;
    v34 = v23;

    swift_unknownObjectRetain();

    sub_100153CF4(sub_1001CB318, v33);

    swift_unknownObjectRelease();

    v35 = *(v37 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
    swift_unknownObjectRetain();
    v36 = v38;
    sub_100158CC4(&off_1002BBC58, v38, 0, 0, 0, 0);
    swift_unknownObjectRelease();

    sub_1001CB31C(&unk_1002BBC78);
    return sub_1001CC1B4(v16, type metadata accessor for SoundProfileRecord);
  }
}

uint64_t sub_1001BB9D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void *a6)
{
  v40 = a2;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BTDeferredRecord();
  v17 = *(*(v16 - 1) + 64);
  __chkstk_darwin(v16);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v37 = a3;
    v38 = a5;
    v39 = a4;
    swift_errorRetain();
    v36[3] = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100226100;
    v41 = a1;
    swift_errorRetain();
    sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_1000EE954();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    os_log(_:dso:log:_:_:)();

    v24 = *(type metadata accessor for SoundProfileRecord() + 20);
    v25 = v16[6];
    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 16))(&v19[v25], v40 + v24, v26);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v28 = v27;
    (*(v12 + 8))(v15, v11);
    *v19 = 1;
    *(v19 + 1) = 0xD000000000000012;
    *(v19 + 2) = 0x80000001002671C0;
    v29 = &v19[v16[7]];
    *v29 = 0xD000000000000011;
    *(v29 + 1) = 0x8000000100267AA0;
    *&v19[v16[8]] = v28;
    *&v19[v16[9]] = xmmword_1002298C0;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      v32 = objc_autoreleasePoolPush();
      sub_1001B9D1C(v31, v19);
      objc_autoreleasePoolPop(v32);
    }

    sub_1001266E0();
    v33 = swift_allocError();
    *v34 = a1;
    swift_errorRetain();
    v39(v33);

    return sub_1001CC1B4(v19, type metadata accessor for BTDeferredRecord);
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1001A73C4(a6, 0xD000000000000012, 0x80000001002671C0, 0);
    }

    return (a4)(0);
  }
}

uint64_t sub_1001BBE68(uint64_t a1, uint64_t a2)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4._object = v5;
  v6._object = 0x8000000100267960;
  v6._countAndFlagsBits = 0xD000000000000010;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v6, v4).super.isa;
  sub_100193560();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v8;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &off_1002BBC28;
  *(v11 + 32) = isa;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 72) = sub_1001CB218;
  *(v11 + 80) = v9;

  v12 = isa;

  sub_100153CF4(sub_1001CB224, v11);

  swift_unknownObjectRelease();
}

void sub_1001BC0A0(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SoundProfileRecord();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));

  v47[0] = sub_1001CA2F0(v11);
  sub_1001C5B54(v47, sub_1001C6F88, sub_1001C609C);
  v12 = v47[0];
  if ((v47[0] & 0x8000000000000000) == 0 && (v47[0] & 0x4000000000000000) == 0)
  {
    if (*(v47[0] + 16))
    {
      goto LABEL_4;
    }

LABEL_17:

    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 == -1)
    {
LABEL_18:
      os_log(_:dso:log:_:_:)();
      a2(0);
      return;
    }

LABEL_21:
    swift_once();
    goto LABEL_18;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_17;
  }

LABEL_4:
  v44 = a3;
  v45 = a2;
  v42[0] = v7;
  v42[1] = a4;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*(v12 + 16))
  {
    __break(1u);
    goto LABEL_21;
  }

  v13 = *(v12 + 32);
LABEL_7:
  v14 = v13;

  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v15 = swift_allocObject();
  v43 = xmmword_100226100;
  *(v15 + 16) = xmmword_100226100;
  v16 = v14;
  v17 = [v16 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v15 + 56) = &type metadata for String;
  v21 = sub_1000EE954();
  *(v15 + 64) = v21;
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  os_log(_:dso:log:_:_:)();

  v22 = v16;
  sub_1000FC2B4(v22, v10);
  static os_log_type_t.default.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v43;
  v24 = sub_1000FAF14();
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = v21;
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  os_log(_:dso:log:_:_:)();

  v26 = *(v42[0] + 24);
  v27 = objc_allocWithZone(BTCloudSoundProfileRecord);
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  v31 = [v27 initWithFileURL:v29];

  v45(v31);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    if (IsAppleInternalBuild())
    {
      v32 = [objc_opt_self() standardUserDefaults];
      v33 = String._bridgeToObjectiveC()();
      v34 = [v32 BOOLForKey:v33];

      if (v34)
      {
        v35 = [objc_opt_self() defaultManager];
        URL._bridgeToObjectiveC()(v36);
        v38 = v37;
        v46[0] = 0;
        v39 = [v35 removeItemAtURL:v37 error:v46];

        if (v39)
        {
          v40 = v46[0];
          sub_1001CC1B4(v10, type metadata accessor for SoundProfileRecord);

          return;
        }

        v41 = v46[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }

  sub_1001CC1B4(v10, type metadata accessor for SoundProfileRecord);
}

uint64_t sub_1001BC694(void **a1, void **a2)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v52 - v8;
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v56 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v52 - v20;
  *&v23 = __chkstk_darwin(v22).n128_u64[0];
  v25 = &v52 - v24;
  v26 = *a1;
  v55 = *a2;
  v27 = [v26 modificationDate];
  if (v27)
  {
    v28 = v27;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *(v16 + 32);
    v29(v14, v21, v15);
    v30 = *(v16 + 56);
    v30(v14, 0, 1, v15);
    v29(v25, v14, v15);
    v31 = v55;
  }

  else
  {
    v54 = v25;
    v30 = *(v16 + 56);
    v30(v14, 1, 1, v15);
    v32 = [v26 creationDate];
    if (v32)
    {
      v33 = v32;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = *(v16 + 32);
      v34(v11, v21, v15);
      v30(v11, 0, 1, v15);
      v34(v54, v11, v15);
      v35 = (*(v16 + 48))(v14, 1, v15);
    }

    else
    {
      v30(v11, 1, 1, v15);
      static Date.now.getter();
      v36 = *(v16 + 48);
      if (v36(v11, 1, v15) != 1)
      {
        sub_1000EEE6C(v11, &qword_1002F7EF0, &unk_100226C90);
      }

      v35 = v36(v14, 1, v15);
    }

    v31 = v55;
    if (v35 != 1)
    {
      sub_1000EEE6C(v14, &qword_1002F7EF0, &unk_100226C90);
    }

    v25 = v54;
  }

  v37 = [v31 modificationDate];
  v38 = v57;
  if (v37)
  {
    v39 = v37;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = *(v16 + 32);
    v40(v38, v21, v15);
    v30(v38, 0, 1, v15);
    v41 = v56;
    v40(v56, v38, v15);
  }

  else
  {
    v30(v57, 1, 1, v15);
    v42 = [v31 creationDate];
    if (v42)
    {
      v43 = v42;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = v25;
      v44 = *(v16 + 32);
      v45 = v53;
      v44(v53, v21, v15);
      v30(v45, 0, 1, v15);
      v41 = v56;
      v44(v56, v45, v15);
      v25 = v54;
      v46 = (*(v16 + 48))(v38, 1, v15);
    }

    else
    {
      v47 = v53;
      v30(v53, 1, 1, v15);
      v41 = v56;
      static Date.now.getter();
      v48 = *(v16 + 48);
      if (v48(v47, 1, v15) != 1)
      {
        sub_1000EEE6C(v47, &qword_1002F7EF0, &unk_100226C90);
      }

      v46 = v48(v38, 1, v15);
    }

    if (v46 != 1)
    {
      sub_1000EEE6C(v38, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v49 = static Date.> infix(_:_:)();
  v50 = *(v16 + 8);
  v50(v41, v15);
  v50(v25, v15);
  return v49 & 1;
}

uint64_t sub_1001BCC98(uint64_t (*a1)(void))
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v2 = *(sub_100192340() + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  v5[4] = sub_100174324;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100174328;
  v5[3] = &unk_1002C05F8;
  v3 = _Block_copy(v5);

  dispatch_sync(v2, v3);

  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return a1(0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BCE18(uint64_t (*a1)(void), uint64_t a2)
{
  v45 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v45);
  v44 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v7 = *(v43 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v43);
  v42 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v50 = sub_100193560();
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  v10 = qword_100300E28;
  os_log(_:dso:log:_:_:)();
  v11 = v50 + OBJC_IVAR____TtC15audioaccessoryd16CloudCoordinator_configuration;
  v12 = *(*(v11 + *(type metadata accessor for CloudCoordinatorConfiguration() + 32)) + 16);
  if (v12)
  {
    v36[1] = a2;
    v37 = a1;
    v41 = CKCurrentUserDefaultName;
    v40 = v53;
    v39 = (v4 + 8);
    v38 = (v7 + 8);

    v13 = (v36[0] + 40);
    v14 = &unk_1002262B0;
    v49 = xmmword_100226100;
    do
    {
      v15 = *(v13 - 1);
      v16 = *v13;

      static os_log_type_t.default.getter();
      sub_1000EE870(&unk_1002F8260, v14);
      v17 = swift_allocObject();
      *(v17 + 16) = v49;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = sub_1000EE954();
      *(v17 + 32) = v15;
      *(v17 + 40) = v16;

      os_log(_:dso:log:_:_:)();

      if ((sub_10014D91C(v15, v16) & 1) != 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v19 = Strong;
        sub_1000FA784(0, &unk_1002F7FD0, CKRecordZoneID_ptr);
        v20._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20._object = v21;
        v22._countAndFlagsBits = v15;
        v22._object = v16;
        isa = CKRecordZoneID.init(zoneName:ownerName:)(v22, v20).super.isa;
        v24 = *(v19 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue);
        v25 = swift_allocObject();
        *(v25 + 16) = isa;
        *(v25 + 24) = v19;
        v53[2] = sub_100162BAC;
        v53[3] = v25;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v53[0] = sub_1001742E0;
        v53[1] = &unk_1002C05D0;
        v47 = _Block_copy(aBlock);
        v46 = v24;
        v48 = isa;
        swift_unknownObjectRetain();
        v26 = v42;
        static DispatchQoS.unspecified.getter();
        v51 = _swiftEmptyArrayStorage;
        sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
        sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
        v27 = v10;
        v28 = v44;
        v29 = v14;
        v30 = v45;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v31 = v46;
        v32 = v47;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v32);

        v33 = v28;
        v10 = v27;
        v34 = v30;
        v14 = v29;
        (*v39)(v33, v34);
        (*v38)(v26, v43);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v13 += 2;
      --v12;
    }

    while (v12);
    swift_unknownObjectRelease();

    return v37(0);
  }

  else
  {
    swift_unknownObjectRelease();
    return a1(0);
  }
}

double sub_1001BD42C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v136 = a3;
  v137 = a2;
  v134 = a4;
  v135 = a1;
  v5 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v121 = &v117 - v7;
  v122 = type metadata accessor for SoundProfileRecord();
  v120 = *(v122 - 8);
  v8 = *(v120 + 64);
  __chkstk_darwin(v122);
  v118 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v126 = &v117 - v12;
  v13 = type metadata accessor for DeviceSupportInformationRecord();
  v124 = *(v13 - 8);
  v14 = *(v124 + 64);
  __chkstk_darwin(v13);
  v119 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v130 = &v117 - v18;
  v19 = type metadata accessor for MagicPairingSettingsRecord();
  v128 = *(v19 - 8);
  v129 = v19;
  v20 = *(v128 + 64);
  __chkstk_darwin(v19);
  v123 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for URL();
  v133 = *(v22 - 8);
  v23 = *(v133 + 64);
  __chkstk_darwin(v22);
  v132 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000EE870(&qword_1002F8520, &unk_100227B60);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v117 - v27;
  v29 = type metadata accessor for DeviceRecord();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = objc_opt_self();
  v35 = [v34 isFirstUnlocked];
  v127 = v22;
  v131 = v4;
  v125 = v13;
  if (v35)
  {
    v36 = v34;
    sub_100192340();
    if (qword_1002F79C0 != -1)
    {
      swift_once();
    }

    v37 = sub_1000EE91C(v22, qword_100300AF0);
    v38 = v132;
    v39 = v133;
    (*(v133 + 16))(v132, v37, v22);
    v40 = sub_10018B20C(v38);

    v41 = (*(v39 + 8))(v38, v22);
    v34 = v36;
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v40 = &_swiftEmptyArrayStorage;
    v41 = os_log(_:dso:log:_:_:)();
  }

  __chkstk_darwin(v41);
  v42 = v136;
  v43 = v137;
  *(&v117 - 4) = v135;
  *(&v117 - 3) = v43;
  *(&v117 - 2) = v42;
  sub_10017D118(sub_1001CB0D4, v40, type metadata accessor for DeviceRecord, type metadata accessor for DeviceRecord, type metadata accessor for DeviceRecord, type metadata accessor for DeviceRecord, v28);

  if ((*(v30 + 48))(v28, 1, v29) != 1)
  {
    sub_1001CC214(v28, v33, type metadata accessor for DeviceRecord);
    v54 = v134;
    v134[3] = v29;
    v54[4] = sub_1001C4BB4(&unk_1002F9BF0, type metadata accessor for DeviceRecord);
    v55 = sub_100133584(v54);
    v56 = v33;
    v57 = type metadata accessor for DeviceRecord;
LABEL_31:
    sub_1001CC214(v56, v55, v57);
    return result;
  }

  sub_1000EEE6C(v28, &qword_1002F8520, &unk_100227B60);
  if ([v34 isFirstUnlocked])
  {
    v44 = v34;
    sub_100192340();
    v46 = v135;
    v45 = v136;
    if (qword_1002F7A00 != -1)
    {
      swift_once();
    }

    v47 = v127;
    v48 = sub_1000EE91C(v127, qword_100300BA8);
    v49 = v132;
    v50 = v133;
    (*(v133 + 16))(v132, v48, v47);
    v51 = sub_10018C984(v49);

    v52 = (*(v50 + 8))(v49, v47);
    v53 = v137;
    v34 = v44;
  }

  else
  {
    static os_log_type_t.error.getter();
    v46 = v135;
    v45 = v136;
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v51 = &_swiftEmptyArrayStorage;
    v52 = os_log(_:dso:log:_:_:)();
    v53 = v137;
  }

  v59 = v129;
  v58 = v130;
  __chkstk_darwin(v52);
  *(&v117 - 4) = v46;
  *(&v117 - 3) = v53;
  *(&v117 - 2) = v45;
  sub_10017D118(sub_1001CB0F8, v51, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, type metadata accessor for MagicPairingSettingsRecord, v58);

  if ((*(v128 + 48))(v58, 1, v59) != 1)
  {
    v67 = type metadata accessor for MagicPairingSettingsRecord;
    v68 = v123;
    sub_1001CC214(v58, v123, type metadata accessor for MagicPairingSettingsRecord);
    v69 = v134;
    v134[3] = v59;
    v70 = &unk_1002F9BE8;
    v71 = type metadata accessor for MagicPairingSettingsRecord;
LABEL_30:
    v69[4] = sub_1001C4BB4(v70, v71);
    v55 = sub_100133584(v69);
    v56 = v68;
    v57 = v67;
    goto LABEL_31;
  }

  sub_1000EEE6C(v58, &unk_1002F9C30, &qword_1002299A0);
  if ([v34 isFirstUnlocked])
  {
    v60 = v34;
    sub_100192340();
    if (qword_1002F7A68 != -1)
    {
      swift_once();
    }

    v61 = v127;
    v62 = sub_1000EE91C(v127, qword_100300D48);
    v64 = v132;
    v63 = v133;
    (*(v133 + 16))(v132, v62, v61);
    v65 = sub_10018BDC8(v64);

    v66 = (*(v63 + 8))(v64, v61);
    v34 = v60;
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v65 = &_swiftEmptyArrayStorage;
    v66 = os_log(_:dso:log:_:_:)();
  }

  __chkstk_darwin(v66);
  *(&v117 - 4) = v46;
  *(&v117 - 3) = v53;
  *(&v117 - 2) = v45;
  v72 = v126;
  sub_10017D118(sub_1001CB11C, v65, type metadata accessor for DeviceSupportInformationRecord, type metadata accessor for DeviceSupportInformationRecord, type metadata accessor for DeviceSupportInformationRecord, type metadata accessor for DeviceSupportInformationRecord, v126);

  v73 = v72;
  v74 = v72;
  v75 = v125;
  if ((*(v124 + 48))(v74, 1, v125) != 1)
  {
    v67 = type metadata accessor for DeviceSupportInformationRecord;
    v68 = v119;
    sub_1001CC214(v73, v119, type metadata accessor for DeviceSupportInformationRecord);
    v69 = v134;
    v134[3] = v75;
    v70 = &unk_1002F9BE0;
    v71 = type metadata accessor for DeviceSupportInformationRecord;
    goto LABEL_30;
  }

  sub_1000EEE6C(v73, &qword_1002F8510, &unk_100227B50);
  v76 = v121;
  sub_10019493C(v121);
  v77 = v76;
  v78 = v76;
  v79 = v122;
  if ((*(v120 + 48))(v78, 1, v122) == 1)
  {
    sub_1000EEE6C(v77, &qword_1002F84F8, &unk_1002299F0);
    goto LABEL_38;
  }

  v81 = v77;
  v82 = v118;
  sub_1001CC214(v81, v118, type metadata accessor for SoundProfileRecord);
  v83 = *(v79 + 20);
  if (static UUID.== infix(_:_:)() & 1) != 0 && (v53 == 0xD000000000000012 && 0x80000001002671C0 == v45 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v84 = v79;
    v85 = v134;
    v134[3] = v84;
    v85[4] = sub_1001C4BB4(&unk_1002F9CA0, type metadata accessor for SoundProfileRecord);
    v55 = sub_100133584(v85);
    v57 = type metadata accessor for SoundProfileRecord;
    v56 = v82;
    goto LABEL_31;
  }

  sub_1001CC1B4(v82, type metadata accessor for SoundProfileRecord);
LABEL_38:
  v139 = &type metadata for AudioAccessoryFeatures;
  v86 = sub_1000F1874();
  v140 = v86;
  v87 = isFeatureEnabled(_:)();
  v88 = sub_1000EF824(v138);
  if (v87)
  {
    if ([v34 isFirstUnlocked])
    {
      v137 = v34;
      sub_100192340();
      if (qword_1002F7AB8 != -1)
      {
        swift_once();
      }

      v89 = v127;
      v90 = sub_1000EE91C(v127, qword_100300D88);
      v91 = v132;
      v92 = v133;
      (*(v133 + 16))(v132, v90, v89);
      v93 = sub_10018E14C(v91, &unk_1002F9C50, &qword_1002299C0, sub_1001CA538);

      v88 = (*(v92 + 8))(v91, v89);
      v34 = v137;
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v93 = &_swiftEmptyArrayStorage;
      v88 = os_log(_:dso:log:_:_:)();
    }
  }

  else
  {
    v93 = &_swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v88);
  *(&v117 - 4) = v46;
  *(&v117 - 3) = v53;
  *(&v117 - 2) = v45;
  v94 = sub_10017D320(sub_1001CB140, (&v117 - 6), v93);

  if (v94)
  {
    v95 = type metadata accessor for AADeviceRecord();
    v96 = v134;
    v134[3] = v95;
    v96[4] = sub_1001C4BB4(&qword_1002F9BC8, type metadata accessor for AADeviceRecord);
    *v96 = v94;
    return result;
  }

  v139 = &type metadata for AudioAccessoryFeatures;
  v140 = v86;
  v97 = isFeatureEnabled(_:)();
  v98 = sub_1000EF824(v138);
  if (v97)
  {
    if ([v34 isFirstUnlocked])
    {
      v137 = v34;
      sub_100192340();
      if (qword_1002F79D0 != -1)
      {
        swift_once();
      }

      v99 = v127;
      v100 = sub_1000EE91C(v127, qword_100300B10);
      v102 = v132;
      v101 = v133;
      (*(v133 + 16))(v132, v100, v99);
      v103 = sub_10018E14C(v102, &unk_1002F9C68, &qword_1002299D0, sub_1001CAE20);

      v98 = (*(v101 + 8))(v102, v99);
      v34 = v137;
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v103 = &_swiftEmptyArrayStorage;
      v98 = os_log(_:dso:log:_:_:)();
    }
  }

  else
  {
    v103 = &_swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v98);
  *(&v117 - 4) = v46;
  *(&v117 - 3) = v53;
  *(&v117 - 2) = v45;
  v104 = sub_10017D320(sub_1001CB164, (&v117 - 6), v103);

  if (v104)
  {
    v105 = type metadata accessor for AAProxCardsRecord();
    v106 = v134;
    v134[3] = v105;
    v107 = &unk_1002F9BD0;
    v108 = type metadata accessor for AAProxCardsRecord;
LABEL_69:
    v106[4] = sub_1001C4BB4(v107, v108);
    *v106 = v104;
    return result;
  }

  if ([v34 isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F7A60 != -1)
    {
      swift_once();
    }

    v109 = v127;
    v110 = sub_1000EE91C(v127, qword_100300C40);
    v112 = v132;
    v111 = v133;
    (*(v133 + 16))(v132, v110, v109);
    v113 = sub_10018E14C(v112, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

    v114 = (*(v111 + 8))(v112, v109);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v113 = &_swiftEmptyArrayStorage;
    v114 = os_log(_:dso:log:_:_:)();
  }

  __chkstk_darwin(v114);
  *(&v117 - 4) = v46;
  *(&v117 - 3) = v53;
  *(&v117 - 2) = v45;
  v104 = sub_10017D320(sub_1001CB188, (&v117 - 6), v113);

  if (v104)
  {
    v115 = type metadata accessor for HMDeviceCloudRecord();
    v106 = v134;
    v134[3] = v115;
    v107 = &unk_1002F9BD8;
    v108 = type metadata accessor for HMDeviceCloudRecord;
    goto LABEL_69;
  }

  v116 = v134;
  v134[4] = 0;
  result = 0.0;
  *v116 = 0u;
  *(v116 + 1) = 0u;
  return result;
}

uint64_t sub_1001BE7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for DeviceRecord() + 20);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 == 0x6552656369766544 && a4 == 0xEC00000064726F63)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

uint64_t sub_1001BE8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 == 0x746553636967614DLL && a4 == 0xED000073676E6974)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

uint64_t sub_1001BE938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 == 0xD00000000000001ELL && 0x80000001002671E0 == a4)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

uint64_t sub_1001BE9C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 == 0x6563697665444141 && a4 == 0xEE0064726F636552)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

uint64_t sub_1001BEA6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 == 0xD000000000000011 && 0x800000010026EAC0 == a4)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

uint64_t sub_1001BEB10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 == 0xD000000000000013 && 0x8000000100267B10 == a4)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

double sub_1001BEBB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v144 = a3;
  v145 = a4;
  v146 = a1;
  v147 = a2;
  v8 = type metadata accessor for DeviceSupportInformationRecord();
  v139 = *(v8 - 8);
  v9 = *(v139 + 64);
  __chkstk_darwin(v8);
  v142 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v127 = &v126 - v12;
  __chkstk_darwin(v13);
  v128 = &v126 - v14;
  v15 = type metadata accessor for MagicPairingSettingsRecord();
  v16 = *(v15 - 8);
  v140 = v15;
  v141 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v143 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v129 = &v126 - v20;
  __chkstk_darwin(v21);
  v130 = &v126 - v22;
  v23 = type metadata accessor for URL();
  v135 = *(v23 - 8);
  v136 = v23;
  v24 = *(v135 + 64);
  __chkstk_darwin(v23);
  v134 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DeviceRecord();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v131 = &v126 - v32;
  __chkstk_darwin(v33);
  v132 = &v126 - v34;
  v137 = objc_opt_self();
  v35 = [v137 isFirstUnlocked];
  v138 = a5;
  if (!v35)
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v41 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();
    goto LABEL_7;
  }

  a5 = v8;
  v36 = v5;
  sub_100192340();
  if (qword_1002F79C0 != -1)
  {
    goto LABEL_186;
  }

  while (1)
  {
    v37 = v136;
    v38 = sub_1000EE91C(v136, qword_100300AF0);
    v40 = v134;
    v39 = v135;
    (*(v135 + 16))(v134, v38, v37);
    v41 = sub_10018B20C(v40);

    (*(v39 + 8))(v40, v37);
    v8 = a5;
    a5 = v138;
    v6 = v36;
LABEL_7:
    v42 = v41[2];
    v133 = v6;
    if (v42)
    {
      break;
    }

LABEL_26:
    if ([v137 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v54 = v136;
      v55 = sub_1000EE91C(v136, qword_100300BA8);
      v57 = v134;
      v56 = v135;
      (*(v135 + 16))(v134, v55, v54);
      v58 = sub_10018C984(v57);

      (*(v56 + 8))(v57, v54);
      v59 = v58[2];
      if (v59)
      {
        goto LABEL_30;
      }
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v58 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
      v59 = _swiftEmptyArrayStorage[2];
      if (v59)
      {
LABEL_30:
        v60 = 0;
        v27 = 0xED000073676E6974;
        v30 = 0x746553636967614DLL;
        v61 = v58 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
        v26 = v144 == 0x746553636967614DLL && v145 == 0xED000073676E6974;
        v36 = v143;
        while (v60 < v58[2])
        {
          sub_1001CC14C(&v61[*(v141 + 72) * v60], v36, type metadata accessor for MagicPairingSettingsRecord);
          v63 = (v36 + *(v140 + 24));
          v64 = *v63 == v146 && v63[1] == v147;
          if (v64 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v26 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
          {

            v48 = type metadata accessor for MagicPairingSettingsRecord;
            v65 = v129;
            sub_1001CC214(v143, v129, type metadata accessor for MagicPairingSettingsRecord);
            v66 = v65;
            v67 = v130;
            sub_1001CC214(v66, v130, type metadata accessor for MagicPairingSettingsRecord);
            a5[3] = v140;
            a5[4] = sub_1001C4BB4(&qword_1002F9BE8, type metadata accessor for MagicPairingSettingsRecord);
            v52 = sub_100133584(a5);
            v53 = v67;
            goto LABEL_47;
          }

          ++v60;
          sub_1001CC1B4(v143, type metadata accessor for MagicPairingSettingsRecord);
          if (v59 == v60)
          {
            goto LABEL_52;
          }
        }

LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }
    }

LABEL_52:

    if ([v137 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A68 != -1)
      {
        swift_once();
      }

      v70 = v136;
      v71 = sub_1000EE91C(v136, qword_100300D48);
      v73 = v134;
      v72 = v135;
      (*(v135 + 16))(v134, v71, v70);
      v74 = sub_10018BDC8(v73);

      (*(v72 + 8))(v73, v70);
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v74 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
    }

    v26 = 0xD000000000000011;
    v30 = v74[2];
    if (v30)
    {
      v75 = 0;
      v76 = v74 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
      v27 = 0x80000001002671E0;
      v78 = v144 == 0xD00000000000001ELL && 0x80000001002671E0 == v145;
      v36 = v142;
      while (v75 < v74[2])
      {
        sub_1001CC14C(&v76[*(v139 + 72) * v75], v36, type metadata accessor for DeviceSupportInformationRecord);
        v79 = (v36 + *(v8 + 24));
        v80 = *v79 == v146 && v79[1] == v147;
        if (v80 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v78 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {

          v81 = v127;
          sub_1001CC214(v142, v127, type metadata accessor for DeviceSupportInformationRecord);
          v82 = v81;
          v83 = v128;
          sub_1001CC214(v82, v128, type metadata accessor for DeviceSupportInformationRecord);
          a5[3] = v8;
          a5[4] = sub_1001C4BB4(&qword_1002F9BE0, type metadata accessor for DeviceSupportInformationRecord);
          v52 = sub_100133584(a5);
          v53 = v83;
          v68 = type metadata accessor for DeviceSupportInformationRecord;
          goto LABEL_48;
        }

        ++v75;
        sub_1001CC1B4(v142, type metadata accessor for DeviceSupportInformationRecord);
        if (v30 == v75)
        {
          goto LABEL_77;
        }
      }

      goto LABEL_179;
    }

LABEL_77:

    v149 = &type metadata for AudioAccessoryFeatures;
    v143 = sub_1000F1874();
    v150 = v143;
    v84 = isFeatureEnabled(_:)();
    sub_1000EF824(v148);
    if (v84)
    {
      if ([v137 isFirstUnlocked])
      {
        sub_100192340();
        if (qword_1002F7AB8 != -1)
        {
          swift_once();
        }

        v85 = v136;
        v86 = sub_1000EE91C(v136, qword_100300D88);
        v88 = v134;
        v87 = v135;
        (*(v135 + 16))(v134, v86, v85);
        v89 = sub_10018E14C(v88, &unk_1002F9C50, &qword_1002299C0, sub_1001CA538);

        (*(v87 + 8))(v88, v85);
        if (!(v89 >> 62))
        {
          goto LABEL_84;
        }
      }

      else
      {
        static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v89 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)();
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_84:
          v27 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v27)
          {
            goto LABEL_85;
          }

          goto LABEL_111;
        }
      }
    }

    else
    {
      v89 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_84;
      }
    }

    v27 = _CocoaArrayWrapper.endIndex.getter();
    if (v27)
    {
LABEL_85:
      v30 = 0;
      v36 = v89 & 0xC000000000000001;
      v91 = v144 == 0x6563697665444141 && v145 == 0xEE0064726F636552;
      v26 = &OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress;
      do
      {
        if (v36)
        {
          v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v30 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_181;
          }

          v92 = *(v89 + 8 * v30 + 32);
        }

        a5 = v92;
        v93 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_180;
        }

        v94 = *(v92 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress) == v146 && *(v92 + OBJC_IVAR____TtC15audioaccessoryd14AADeviceRecord_bluetoothAddress + 8) == v147;
        if (v94 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v91 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {

          v95 = type metadata accessor for AADeviceRecord();
          v96 = v138;
          v138[3] = v95;
          v96[4] = sub_1001C4BB4(&qword_1002F9BC8, type metadata accessor for AADeviceRecord);
          *v96 = a5;
          return result;
        }

        ++v30;
      }

      while (v93 != v27);
    }

LABEL_111:

    v149 = &type metadata for AudioAccessoryFeatures;
    v150 = v143;
    v97 = isFeatureEnabled(_:)();
    sub_1000EF824(v148);
    if (v97)
    {
      if ([v137 isFirstUnlocked])
      {
        sub_100192340();
        if (qword_1002F79D0 != -1)
        {
          swift_once();
        }

        v98 = v136;
        v99 = sub_1000EE91C(v136, qword_100300B10);
        v101 = v134;
        v100 = v135;
        (*(v135 + 16))(v134, v99, v98);
        v102 = sub_10018E14C(v101, &unk_1002F9C68, &qword_1002299D0, sub_1001CAE20);

        (*(v100 + 8))(v101, v98);
        if (!(v102 >> 62))
        {
          goto LABEL_118;
        }
      }

      else
      {
        static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v102 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)();
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_118:
          v103 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v103)
          {
            goto LABEL_119;
          }

          goto LABEL_145;
        }
      }
    }

    else
    {
      v102 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_118;
      }
    }

    v103 = _CocoaArrayWrapper.endIndex.getter();
    if (v103)
    {
LABEL_119:
      v27 = 0;
      a5 = (v102 & 0xFFFFFFFFFFFFFF8);
      v30 = 0x800000010026EAC0;
      v105 = v144 == 0xD000000000000011 && 0x800000010026EAC0 == v145;
      v36 = &OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress;
      do
      {
        if ((v102 & 0xC000000000000001) != 0)
        {
          v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_183;
          }

          v106 = *(v102 + 8 * v27 + 32);
        }

        v26 = v106;
        v107 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_182;
        }

        v108 = *&v106[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress] == v146 && *&v106[OBJC_IVAR____TtC15audioaccessoryd17AAProxCardsRecord_bluetoothAddress + 8] == v147;
        if (v108 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v105 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {

          v109 = type metadata accessor for AAProxCardsRecord();
          v110 = v138;
          v138[3] = v109;
          v111 = &unk_1002F9BD0;
          v112 = type metadata accessor for AAProxCardsRecord;
LABEL_176:
          v110[4] = sub_1001C4BB4(v111, v112);
          *v110 = v26;
          return result;
        }

        ++v27;
      }

      while (v107 != v103);
    }

LABEL_145:

    if ([v137 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A60 != -1)
      {
        swift_once();
      }

      v113 = v136;
      v114 = sub_1000EE91C(v136, qword_100300C40);
      v116 = v134;
      v115 = v135;
      (*(v135 + 16))(v134, v114, v113);
      v117 = sub_10018E14C(v116, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

      (*(v115 + 8))(v116, v113);
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v117 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
    }

    if (v117 >> 62)
    {
      v118 = _CocoaArrayWrapper.endIndex.getter();
      if (!v118)
      {
LABEL_188:

        v125 = v138;
        v138[4] = 0;
        result = 0.0;
        *v125 = 0u;
        *(v125 + 1) = 0u;
        return result;
      }
    }

    else
    {
      v118 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v118)
      {
        goto LABEL_188;
      }
    }

    v27 = 0;
    a5 = (v117 & 0xFFFFFFFFFFFFFF8);
    v30 = 0x8000000100267B10;
    v120 = v144 == 0xD000000000000013 && 0x8000000100267B10 == v145;
    v36 = &OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress;
    while (1)
    {
      if ((v117 & 0xC000000000000001) != 0)
      {
        v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_185;
        }

        v121 = *(v117 + 8 * v27 + 32);
      }

      v26 = v121;
      v122 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v123 = *&v121[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress] == v146 && *&v121[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8] == v147;
      if (v123 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v120 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {

        v124 = type metadata accessor for HMDeviceCloudRecord();
        v110 = v138;
        v138[3] = v124;
        v111 = &unk_1002F9BD8;
        v112 = type metadata accessor for HMDeviceCloudRecord;
        goto LABEL_176;
      }

      ++v27;
      if (v122 == v118)
      {
        goto LABEL_188;
      }
    }

LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    swift_once();
  }

  v126 = v8;
  v43 = 0;
  a5 = 0xEC00000064726F63;
  v44 = v41 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v36 = v144 == 0x6552656369766544 && v145 == 0xEC00000064726F63;
  while (1)
  {
    if (v43 >= v41[2])
    {
      __break(1u);
      goto LABEL_178;
    }

    sub_1001CC14C(&v44[*(v27 + 72) * v43], v30, type metadata accessor for DeviceRecord);
    v46 = (v30 + *(v26 + 24));
    v47 = *v46 == v146 && v46[1] == v147;
    if (v47 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v36 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      break;
    }

    ++v43;
    sub_1001CC1B4(v30, type metadata accessor for DeviceRecord);
    if (v42 == v43)
    {

      a5 = v138;
      v8 = v126;
      goto LABEL_26;
    }
  }

  v48 = type metadata accessor for DeviceRecord;
  v49 = v131;
  sub_1001CC214(v30, v131, type metadata accessor for DeviceRecord);
  v50 = v132;
  sub_1001CC214(v49, v132, type metadata accessor for DeviceRecord);
  v51 = v138;
  v138[3] = v26;
  v51[4] = sub_1001C4BB4(&unk_1002F9BF0, type metadata accessor for DeviceRecord);
  v52 = sub_100133584(v51);
  v53 = v50;
LABEL_47:
  v68 = v48;
LABEL_48:
  sub_1001CC214(v53, v52, v68);
  return result;
}

uint64_t sub_1001C00D0(id *a1, void **a2)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v37 - v20;
  v22 = *a2;
  v23 = &off_1002EA000;
  v24 = [*a1 creationDate];
  v39 = v21;
  if (v24)
  {
    v25 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = *(v11 + 32);
    v26(v9, v17, v10);
    v38 = *(v11 + 56);
    v38(v9, 0, 1, v10);
    v26(v21, v9, v10);
    v23 = &off_1002EA000;
  }

  else
  {
    v38 = *(v11 + 56);
    v38(v9, 1, 1, v10);
    static Date.now.getter();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_1000EEE6C(v9, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v27 = [v22 v23[146]];
  if (v27)
  {
    v28 = v27;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *(v11 + 32);
    v30 = v40;
    v29(v40, v17, v10);
    v38(v30, 0, 1, v10);
    v29(v14, v30, v10);
    v31 = v39;
  }

  else
  {
    v32 = v40;
    v38(v40, 1, 1, v10);
    static Date.now.getter();
    v33 = (*(v11 + 48))(v32, 1, v10);
    v31 = v39;
    if (v33 != 1)
    {
      sub_1000EEE6C(v32, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  v34 = static Date.> infix(_:_:)();
  v35 = *(v11 + 8);
  v35(v14, v10);
  v35(v31, v10);
  return v34 & 1;
}

uint64_t sub_1001C04B0(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = __chkstk_darwin(v2).n128_u64[0];
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 zoneName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = v9 == 0xD00000000000001ELL && 0x8000000100267220 == v11;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v13 = qword_100300E38;
    os_log(_:dso:log:_:_:)();
    Strong = swift_unknownObjectWeakLoadStrong();
    v38[1] = v13;
    if (Strong)
    {
      sub_100193560();
      type metadata accessor for CloudCoordinator();
      v15 = sub_10015A5B8();
      swift_unknownObjectRelease();
      sub_10011436C(v15 & 1, 1);
      swift_unknownObjectRelease();
    }

    v16 = objc_opt_self();
    if ([v16 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F79C0 != -1)
      {
        swift_once();
      }

      v17 = sub_1000EE91C(v2, qword_100300AF0);
      (*(v3 + 16))(v7, v17, v2);
      v18 = sub_10018B20C(v7);

      (*(v3 + 8))(v7, v2);
    }

    else
    {
      static os_log_type_t.error.getter();
      v18 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
    }

    if ([v16 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A68 != -1)
      {
        swift_once();
      }

      v19 = sub_1000EE91C(v2, qword_100300D48);
      (*(v3 + 16))(v7, v19, v2);
      v20 = sub_10018BDC8(v7);

      (*(v3 + 8))(v7, v2);
    }

    else
    {
      static os_log_type_t.error.getter();
      v20 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
    }

    if ([v16 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v21 = sub_1000EE91C(v2, qword_100300BA8);
      (*(v3 + 16))(v7, v21, v2);
      v22 = sub_10018C984(v7);

      (*(v3 + 8))(v7, v2);
    }

    else
    {
      static os_log_type_t.error.getter();
      v22 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
    }

    sub_1001C1064();
    v23 = *(sub_100192340() + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
    OS_dispatch_queue.sync<A>(execute:)();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100181FF0(v18, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10017F63C(v20);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
    }

    sub_10017EEAC(v22);

    return swift_unknownObjectRelease();
  }

  v24 = v9 == 0xD000000000000010 && 0x8000000100267960 == v11;
  if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    static os_log_type_t.default.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v25 = *(sub_100192340() + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
    OS_dispatch_queue.sync<A>(execute:)();

    return notify_post("BTCloudServicesSoundProfileChangedNotification");
  }

  if (v9 == 0xD000000000000012 && 0x8000000100267AF0 == v11)
  {

    goto LABEL_50;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
LABEL_50:
    v40 = &type metadata for AudioAccessoryFeatures;
    v28 = sub_1000F1874();
    v41 = v28;
    v29 = isFeatureEnabled(_:)();
    result = sub_1000EF824(v39);
    if (v29)
    {
      static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      sub_1001C1064();
      v30 = sub_100192340();
      v40 = &type metadata for AudioAccessoryFeatures;
      v41 = v28;
      v31 = isFeatureEnabled(_:)();
      sub_1000EF824(v39);
      if (v31)
      {
        v32 = *(v30 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
        OS_dispatch_queue.sync<A>(execute:)();
      }
    }

    return result;
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100226100;
  v34 = [a1 zoneName];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = sub_1000EE954();
  *(v33 + 32) = v35;
  *(v33 + 40) = v37;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_1001C1064()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = &type metadata for AudioAccessoryFeatures;
    v17 = sub_1000F1874();
    v5 = isFeatureEnabled(_:)();
    sub_1000EF824(v15);
    if (v5)
    {
      if ([objc_opt_self() isFirstUnlocked])
      {
        sub_100192340();
        if (qword_1002F7AB8 != -1)
        {
          swift_once();
        }

        v6 = sub_1000EE91C(v0, qword_100300D88);
        (*(v1 + 16))(v4, v6, v0);
        v7 = sub_10018E14C(v4, &unk_1002F9C50, &qword_1002299C0, sub_1001CA538);

        (*(v1 + 8))(v4, v0);
      }

      else
      {
        static os_log_type_t.error.getter();
        v7 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)();
      }
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    sub_10018150C(v7, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_, &selRef_deviceSupportInformationRecordsRemovedWithRecords_, &selRef_magicPairingRecordsRemovedWithRecords_, sub_1000F16D8);

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = &type metadata for AudioAccessoryFeatures;
    v17 = sub_1000F1874();
    v8 = isFeatureEnabled(_:)();
    sub_1000EF824(v15);
    if (v8)
    {
      if ([objc_opt_self() isFirstUnlocked])
      {
        sub_100192340();
        if (qword_1002F79D0 != -1)
        {
          swift_once();
        }

        v9 = sub_1000EE91C(v0, qword_100300B10);
        (*(v1 + 16))(v4, v9, v0);
        v10 = sub_10018E14C(v4, &unk_1002F9C68, &qword_1002299D0, sub_1001CAE20);

        (*(v1 + 8))(v4, v0);
      }

      else
      {
        static os_log_type_t.error.getter();
        v10 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)();
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    sub_100180998(v10, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_, &selRef_deviceSupportInformationRecordsRemovedWithRecords_, sub_1000F16D8, &selRef_magicPairingRecordsRemovedWithRecords_);

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ([objc_opt_self() isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7A60 != -1)
      {
        swift_once();
      }

      v12 = sub_1000EE91C(v0, qword_100300C40);
      (*(v1 + 16))(v4, v12, v0);
      v13 = sub_10018E14C(v4, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

      (*(v1 + 8))(v4, v0);
    }

    else
    {
      static os_log_type_t.error.getter();
      v13 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
    }

    sub_10017FDB0(v13, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_, &selRef_deviceSupportInformationRecordsRemovedWithRecords_, sub_1000F16D8, &selRef_magicPairingRecordsRemovedWithRecords_, sub_100172070);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001C1668(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (!*(result + 48))
    {
      static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_100226100;
      *(v5 + 56) = &type metadata for Bool;
      *(v5 + 64) = &protocol witness table for Bool;
      *(v5 + 32) = a2 & 1;
      os_log(_:dso:log:_:_:)();

      v6 = *(v4 + 16);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_10011436C(1, (v6 ^ 1) & a2);
        Strong = swift_unknownObjectRelease();
      }

      *(v4 + 16) = a2 & 1;
      sub_100195ABC(Strong);
    }
  }

  return result;
}

void sub_1001C17D0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v7 = objc_opt_self();
  if ([v7 isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F79C0 != -1)
    {
      swift_once();
    }

    v8 = sub_1000EE91C(v2, qword_100300AF0);
    (*(v3 + 16))(v6, v8, v2);
    v22 = sub_10018B20C(v6);

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    static os_log_type_t.error.getter();
    v22 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();
  }

  v24 = &type metadata for AudioAccessoryFeatures;
  v9 = sub_1000F1874();
  v25 = v9;
  v10 = isFeatureEnabled(_:)();
  sub_1000EF824(v23);
  if (v10)
  {
    if ([v7 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F7AB8 != -1)
      {
        swift_once();
      }

      v11 = sub_1000EE91C(v2, qword_100300D88);
      (*(v3 + 16))(v6, v11, v2);
      v21 = sub_10018E14C(v6, &unk_1002F9C50, &qword_1002299C0, sub_1001CA538);

      (*(v3 + 8))(v6, v2);
    }

    else
    {
      static os_log_type_t.error.getter();
      v21 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
    }
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v24 = &type metadata for AudioAccessoryFeatures;
  v25 = v9;
  v12 = isFeatureEnabled(_:)();
  sub_1000EF824(v23);
  if (v12)
  {
    if ([v7 isFirstUnlocked])
    {
      sub_100192340();
      if (qword_1002F79D0 != -1)
      {
        swift_once();
      }

      v13 = sub_1000EE91C(v2, qword_100300B10);
      (*(v3 + 16))(v6, v13, v2);
      v14 = sub_10018E14C(v6, &unk_1002F9C68, &qword_1002299D0, sub_1001CAE20);

      (*(v3 + 8))(v6, v2);
    }

    else
    {
      static os_log_type_t.error.getter();
      v14 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if ([v7 isFirstUnlocked])
  {
    sub_100192340();
    if (qword_1002F7A60 != -1)
    {
      swift_once();
    }

    v15 = sub_1000EE91C(v2, qword_100300C40);
    (*(v3 + 16))(v6, v15, v2);
    v16 = sub_10018E14C(v6, &unk_1002F9C80, &qword_1002299E0, sub_1001CAE4C);

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    static os_log_type_t.error.getter();
    v16 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();
  }

  v17 = *(sub_100192340() + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100181FF0(v22, "records Purged: %@", 18, &selRef_allDevicesRemovedWithRecords_);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v24 = &type metadata for AudioAccessoryFeatures;
  v25 = v9;
  v18 = isFeatureEnabled(_:)();
  sub_1000EF824(v23);
  if (v18)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10018150C(v21, "records Purged: %@", 18, &selRef_allDevicesRemovedWithRecords_, &selRef_allDeviceSupportInformationRecordsRemovedWithRecords_, &selRef_allMagicPairingRecordsRemovedWithRecords_, sub_1000F18C8);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100180998(v14, "records Purged: %@", 18, &selRef_allDevicesRemovedWithRecords_, &selRef_allDeviceSupportInformationRecordsRemovedWithRecords_, sub_1000F18C8, &selRef_allMagicPairingRecordsRemovedWithRecords_);

      swift_unknownObjectRelease();
      goto LABEL_38;
    }
  }

  else
  {
  }

LABEL_38:
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10017FDB0(v16, "records Purged: %@", 18, &selRef_allDevicesRemovedWithRecords_, &selRef_allDeviceSupportInformationRecordsRemovedWithRecords_, sub_1000F18C8, &selRef_allMagicPairingRecordsRemovedWithRecords_, sub_1001701A4);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v19 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer;
  [*(a1 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer) invalidate];
  v20 = *(a1 + v19);
  *(a1 + v19) = 0;

  if (!*(a1 + 48))
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10011436C(0, 1);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001C1FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v22[-v7];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v22[-v15];
  v17 = sub_100192340();
  URL.init(string:)();
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    CKRecord.recordType.getter();
    URL.appendingPathComponent(_:)();

    v19 = *(v10 + 8);
    v20 = v19(v13, v9);
    v21 = *(v17 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
    __chkstk_darwin(v20);
    *&v22[-32] = v17;
    *&v22[-24] = a2;
    *&v22[-16] = a3;
    *&v22[-8] = v16;
    OS_dispatch_queue.sync<A>(execute:)();

    return v19(v16, v9);
  }

  return result;
}

uint64_t sub_1001C2258@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[3];
  v7 = a2[4];
  sub_1000EF78C(a2, v6);
  v8 = (*(v7 + 56))(v6, v7);
  v9 = [v8 encryptedValues];

  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 objectForKeyedSubscript:v10];

  result = swift_unknownObjectRelease();
  *a3 = v11;
  return result;
}

uint64_t sub_1001C232C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DeviceRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100192340();
  v12 = *(v11 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  v29 = v11;
  v30 = a1;
  OS_dispatch_queue.sync<A>(execute:)();
  v27 = v7;

  LODWORD(v28) = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100226C80;
  *(v13 + 56) = &type metadata for String;
  v14 = sub_1000EE954();
  *(v13 + 64) = v14;
  strcpy((v13 + 32), "DeviceRecord");
  *(v13 + 45) = 0;
  *(v13 + 46) = -5120;
  sub_1001CC14C(a1, v10, type metadata accessor for DeviceRecord);
  v15 = String.init<A>(describing:)();
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v14;
  *(v13 + 72) = v15;
  *(v13 + 80) = v16;
  os_log(_:dso:log:_:_:)();

  if (a2)
  {
    static os_log_type_t.default.getter();
    v18 = swift_allocObject();
    v28 = xmmword_100226100;
    *(v18 + 16) = xmmword_100226100;
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = *(v3 + 32);
    v31 = Strong;
    v32 = v20;
    sub_1000EE870(&qword_1002F9DB8, &qword_100229A80);
    v21 = String.init<A>(describing:)();
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = v14;
    *(v18 + 32) = v21;
    *(v18 + 40) = v22;
    os_log(_:dso:log:_:_:)();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000EE870(&unk_1002F9CE0, &qword_100229A08);
      v23 = *(v27 + 72);
      v24 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v28;
      sub_1001CC14C(a1, v25 + v24, type metadata accessor for DeviceRecord);
      sub_1001746E8(v25);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001C27B8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for DeviceSupportInformationRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100192340();
  v12 = *(v11 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  v29 = v11;
  v30 = a1;
  OS_dispatch_queue.sync<A>(execute:)();
  LODWORD(v28) = a2;
  v26 = v7;

  v27 = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100226C80;
  *(v13 + 56) = &type metadata for String;
  v14 = sub_1000EE954();
  *(v13 + 64) = v14;
  *(v13 + 32) = 0xD00000000000001ELL;
  *(v13 + 40) = 0x80000001002671E0;
  sub_1001CC14C(a1, v10, type metadata accessor for DeviceSupportInformationRecord);
  v15 = String.init<A>(describing:)();
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v14;
  *(v13 + 72) = v15;
  *(v13 + 80) = v16;
  os_log(_:dso:log:_:_:)();

  if (v28)
  {
    static os_log_type_t.default.getter();
    v18 = swift_allocObject();
    v28 = xmmword_100226100;
    *(v18 + 16) = xmmword_100226100;
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = *(v3 + 32);
    v31 = Strong;
    v32 = v20;
    sub_1000EE870(&qword_1002F9DB8, &qword_100229A80);
    v21 = String.init<A>(describing:)();
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = v14;
    *(v18 + 32) = v21;
    *(v18 + 40) = v22;
    os_log(_:dso:log:_:_:)();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000EE870(&qword_1002F9CD8, &qword_100229A00);
      v23 = *(v26 + 72);
      v24 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v28;
      sub_1001CC14C(a1, v25 + v24, type metadata accessor for DeviceSupportInformationRecord);
      sub_1001754E4(v25);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001C2C44(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for MagicPairingSettingsRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100192340();
  v12 = *(v11 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  v29 = v11;
  v30 = a1;
  OS_dispatch_queue.sync<A>(execute:)();
  v27 = v7;

  LODWORD(v28) = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100226C80;
  *(v13 + 56) = &type metadata for String;
  v14 = sub_1000EE954();
  *(v13 + 64) = v14;
  strcpy((v13 + 32), "MagicSettings");
  *(v13 + 46) = -4864;
  sub_1001CC14C(a1, v10, type metadata accessor for MagicPairingSettingsRecord);
  v15 = String.init<A>(describing:)();
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v14;
  *(v13 + 72) = v15;
  *(v13 + 80) = v16;
  os_log(_:dso:log:_:_:)();

  if (a2)
  {
    static os_log_type_t.default.getter();
    v18 = swift_allocObject();
    v28 = xmmword_100226100;
    *(v18 + 16) = xmmword_100226100;
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = *(v3 + 32);
    v31 = Strong;
    v32 = v20;
    sub_1000EE870(&qword_1002F9DB8, &qword_100229A80);
    v21 = String.init<A>(describing:)();
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = v14;
    *(v18 + 32) = v21;
    *(v18 + 40) = v22;
    os_log(_:dso:log:_:_:)();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000EE870(&unk_1002F9CF0, &unk_100229A10);
      v23 = *(v27 + 72);
      v24 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v28;
      sub_1001CC14C(a1, v25 + v24, type metadata accessor for MagicPairingSettingsRecord);
      sub_100176C18(v25);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001C30D4(void *a1, char a2)
{
  v3 = v2;
  v6 = *(sub_100192340() + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100226C80;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_1000EE954();
  *(v7 + 64) = v8;
  strcpy((v7 + 32), "AADeviceRecord");
  *(v7 + 47) = -18;
  type metadata accessor for AADeviceRecord();
  v17 = a1;
  v9 = String.init<A>(describing:)();
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v8;
  *(v7 + 72) = v9;
  *(v7 + 80) = v10;
  os_log(_:dso:log:_:_:)();

  if (a2)
  {
    static os_log_type_t.default.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100226100;
    swift_unknownObjectWeakLoadStrong();
    v18 = *(v3 + 32);
    sub_1000EE870(&qword_1002F9DB8, &qword_100229A80);
    v13 = String.init<A>(describing:)();
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = v8;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    os_log(_:dso:log:_:_:)();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1002290F0;
      *(v15 + 32) = v17;
      v16 = v17;
      sub_10017B128(v15);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001C34AC(void *a1, char a2)
{
  v3 = v2;
  v6 = *(sub_100192340() + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100226C80;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_1000EE954();
  *(v7 + 64) = v8;
  *(v7 + 32) = 0xD000000000000011;
  *(v7 + 40) = 0x800000010026EAC0;
  type metadata accessor for AAProxCardsRecord();
  v17 = a1;
  v9 = String.init<A>(describing:)();
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v8;
  *(v7 + 72) = v9;
  *(v7 + 80) = v10;
  os_log(_:dso:log:_:_:)();

  if (a2)
  {
    static os_log_type_t.default.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100226100;
    swift_unknownObjectWeakLoadStrong();
    v18 = *(v3 + 32);
    sub_1000EE870(&qword_1002F9DB8, &qword_100229A80);
    v13 = String.init<A>(describing:)();
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = v8;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    os_log(_:dso:log:_:_:)();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1002290F0;
      *(v15 + 32) = v17;
      v16 = v17;
      sub_100179344(v15);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001C387C(void *a1, char a2)
{
  v3 = v2;
  v6 = *(sub_100192340() + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  OS_dispatch_queue.sync<A>(execute:)();

  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100226C80;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_1000EE954();
  *(v7 + 64) = v8;
  *(v7 + 32) = 0xD000000000000013;
  *(v7 + 40) = 0x8000000100267B10;
  type metadata accessor for HMDeviceCloudRecord();
  v17 = a1;
  v9 = String.init<A>(describing:)();
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v8;
  *(v7 + 72) = v9;
  *(v7 + 80) = v10;
  os_log(_:dso:log:_:_:)();

  if (a2)
  {
    static os_log_type_t.default.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100226100;
    swift_unknownObjectWeakLoadStrong();
    v18 = *(v3 + 32);
    sub_1000EE870(&qword_1002F9DB8, &qword_100229A80);
    v13 = String.init<A>(describing:)();
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = v8;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    os_log(_:dso:log:_:_:)();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1002290F0;
      *(v15 + 32) = v17;
      v16 = v17;
      sub_100177500(v15);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001C3C4C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for LegacyAccountMagicKeysRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100192340();
  v12 = *(v11 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  v29 = v11;
  v30 = a1;
  OS_dispatch_queue.sync<A>(execute:)();
  v27 = v7;

  LODWORD(v28) = static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100226C80;
  *(v13 + 56) = &type metadata for String;
  v14 = sub_1000EE954();
  *(v13 + 64) = v14;
  *(v13 + 32) = 0x654B72657473614DLL;
  *(v13 + 40) = 0xE900000000000079;
  sub_1001CC14C(a1, v10, type metadata accessor for LegacyAccountMagicKeysRecord);
  v15 = String.init<A>(describing:)();
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v14;
  *(v13 + 72) = v15;
  *(v13 + 80) = v16;
  os_log(_:dso:log:_:_:)();

  if (a2)
  {
    static os_log_type_t.default.getter();
    v18 = swift_allocObject();
    v28 = xmmword_100226100;
    *(v18 + 16) = xmmword_100226100;
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = *(v3 + 32);
    v31 = Strong;
    v32 = v20;
    sub_1000EE870(&qword_1002F9DB8, &qword_100229A80);
    v21 = String.init<A>(describing:)();
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = v14;
    *(v18 + 32) = v21;
    *(v18 + 40) = v22;
    os_log(_:dso:log:_:_:)();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1000EE870(&unk_1002F9DC0, &qword_100229A88);
      v23 = *(v27 + 72);
      v24 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v28;
      sub_1001CC14C(a1, v25 + v24, type metadata accessor for LegacyAccountMagicKeysRecord);
      sub_100177018(v25);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001C40D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v97 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v100 = &v93 - v12;
  __chkstk_darwin(v13);
  v101 = &v93 - v14;
  v15 = type metadata accessor for URL();
  v107 = *(v15 - 8);
  v16 = v107[8];
  __chkstk_darwin(v15);
  v93 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v94 = &v93 - v19;
  __chkstk_darwin(v20);
  v95 = &v93 - v21;
  __chkstk_darwin(v22);
  v96 = &v93 - v23;
  __chkstk_darwin(v24);
  v98 = &v93 - v25;
  __chkstk_darwin(v26);
  v99 = &v93 - v27;
  __chkstk_darwin(v28);
  v30 = &v93 - v29;
  if (a3)
  {
    v31 = sub_1001B0F34(a1, a2);
    if (v31)
    {
      v32 = v31;
      v106 = v15;
      v33 = a1;
      static os_log_type_t.default.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v105 = qword_100300E38;
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_100226100;
      v35 = v32;
      v36 = [v35 description];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = sub_1000EE954();
      *(v34 + 32) = v37;
      *(v34 + 40) = v39;
      os_log(_:dso:log:_:_:)();

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1002290F0;
        *(v40 + 32) = v35;
        v41 = v35;
        sub_10018150C(v40, "records Removed: %@", 19, &selRef_devicesRemovedWithRecords_, &selRef_deviceSupportInformationRecordsRemovedWithRecords_, &selRef_magicPairingRecordsRemovedWithRecords_, sub_1000F16D8);

        swift_unknownObjectRelease();
      }

      a1 = v33;
      v15 = v106;
    }
  }

  v42 = a2;
  v43 = sub_100192340();
  v44 = v4;
  if (qword_1002F7AB8 != -1)
  {
    swift_once();
  }

  v45 = sub_1000EE91C(v15, qword_100300D88);
  v46 = v107;
  v103 = v107[2];
  v104 = (v107 + 2);
  v47 = v103(v30, v45, v15);
  v48 = *(v43 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  __chkstk_darwin(v47);
  *(&v93 - 4) = v43;
  *(&v93 - 3) = a1;
  *(&v93 - 2) = v42;
  *(&v93 - 1) = v30;
  OS_dispatch_queue.sync<A>(execute:)();

  v106 = a1;
  v49 = v46[1];
  v49(v30, v15);
  v50 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager;
  v51 = *(v44 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager);
  v52 = qword_1002F79D0;

  v105 = v42;
  if (v52 != -1)
  {
    swift_once();
  }

  v53 = sub_1000EE91C(v15, qword_100300B10);
  v54 = v103(v30, v53, v15);
  v55 = *&v51[OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue];
  __chkstk_darwin(v54);
  v56 = v105;
  v57 = v106;
  *(&v93 - 4) = v51;
  *(&v93 - 3) = v57;
  *(&v93 - 2) = v56;
  *(&v93 - 1) = v30;
  OS_dispatch_queue.sync<A>(execute:)();

  v49(v30, v15);
  v58 = *(v44 + v50);
  v59 = qword_1002F7A60;

  v60 = v49;
  if (v59 != -1)
  {
    swift_once();
  }

  v61 = sub_1000EE91C(v15, qword_100300C40);
  v62 = v103(v30, v61, v15);
  v63 = *&v58[OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue];
  __chkstk_darwin(v62);
  v64 = v105;
  v65 = v106;
  *(&v93 - 4) = v58;
  *(&v93 - 3) = v65;
  *(&v93 - 2) = v64;
  *(&v93 - 1) = v30;
  OS_dispatch_queue.sync<A>(execute:)();

  v49(v30, v15);
  v66 = *(v44 + v50);

  v67 = v101;
  URL.init(string:)();
  v102 = v44;
  v103 = v50;
  v68 = v107;
  v104 = v107[6];
  result = v104(v67, 1, v15);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_19;
  }

  v70 = v68[4];
  v107 = v68 + 4;
  v71 = v98;
  v70(v98, v67, v15);
  v72 = v99;
  URL.appendingPathComponent(_:)();
  v73 = v60(v71, v15);
  v74 = *&v66[OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue];
  __chkstk_darwin(v73);
  v75 = v105;
  v76 = v106;
  *(&v93 - 4) = v66;
  *(&v93 - 3) = v76;
  *(&v93 - 2) = v75;
  *(&v93 - 1) = v72;
  OS_dispatch_queue.sync<A>(execute:)();

  v60(v72, v15);
  v77 = *(v103 + v102);

  v78 = v100;
  URL.init(string:)();
  result = v104(v78, 1, v15);
  if (result == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v79 = v95;
  v70(v95, v78, v15);
  v80 = v96;
  URL.appendingPathComponent(_:)();
  v81 = v60(v79, v15);
  v82 = *&v77[OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue];
  __chkstk_darwin(v81);
  v83 = v105;
  v84 = v106;
  *(&v93 - 4) = v77;
  *(&v93 - 3) = v84;
  *(&v93 - 2) = v83;
  *(&v93 - 1) = v80;
  OS_dispatch_queue.sync<A>(execute:)();

  v60(v80, v15);
  v85 = *(v103 + v102);

  v86 = v97;
  URL.init(string:)();
  result = v104(v86, 1, v15);
  if (result != 1)
  {
    v87 = v93;
    v70(v93, v86, v15);
    v88 = v94;
    URL.appendingPathComponent(_:)();
    v89 = v60(v87, v15);
    v90 = *&v85[OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue];
    __chkstk_darwin(v89);
    v91 = v105;
    v92 = v106;
    *(&v93 - 4) = v85;
    *(&v93 - 3) = v92;
    *(&v93 - 2) = v91;
    *(&v93 - 1) = v88;
    OS_dispatch_queue.sync<A>(execute:)();

    return v60(v88, v15);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1001C4BB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001C4BFC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10018AE70(type metadata accessor for DeviceRecord, sub_1001826E4, type metadata accessor for DeviceRecord, a1);
}

uint64_t sub_1001C4C54@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10018AE70(type metadata accessor for MagicPairingSettingsRecord, sub_100182AFC, type metadata accessor for MagicPairingSettingsRecord, a1);
}

uint64_t sub_1001C4CAC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10018AE70(type metadata accessor for DeviceSupportInformationRecord, sub_1001828F0, type metadata accessor for DeviceSupportInformationRecord, a1);
}

void *sub_1001C4D04(uint64_t a1, uint64_t a2)
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

  sub_1000EE870(&qword_1002F9350, &qword_1002292D0);
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

size_t sub_1001C4D8C(size_t a1, int64_t a2, char a3)
{
  result = sub_1001C500C(a1, a2, a3, *v3, &unk_1002F9CF0, &unk_100229A10, type metadata accessor for MagicPairingSettingsRecord);
  *v3 = result;
  return result;
}

size_t sub_1001C4DD0(size_t a1, int64_t a2, char a3)
{
  result = sub_1001C500C(a1, a2, a3, *v3, &qword_1002F9CD8, &qword_100229A00, type metadata accessor for DeviceSupportInformationRecord);
  *v3 = result;
  return result;
}

size_t sub_1001C4E14(size_t a1, int64_t a2, char a3)
{
  result = sub_1001C500C(a1, a2, a3, *v3, &unk_1002F9CE0, &qword_100229A08, type metadata accessor for DeviceRecord);
  *v3 = result;
  return result;
}

char *sub_1001C4E58(char *a1, int64_t a2, char a3)
{
  result = sub_1001C4F00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001C4E78(size_t a1, int64_t a2, char a3)
{
  result = sub_1001C500C(a1, a2, a3, *v3, &qword_1002F8528, &unk_100229A90, type metadata accessor for LegacyMagicPairingSettingsRecords);
  *v3 = result;
  return result;
}

size_t sub_1001C4EBC(size_t a1, int64_t a2, char a3)
{
  result = sub_1001C500C(a1, a2, a3, *v3, &qword_1002F9D88, &unk_100229A48, type metadata accessor for BTDeferredRecord);
  *v3 = result;
  return result;
}

char *sub_1001C4F00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000EE870(&unk_1002F9E70, qword_100229840);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1001C500C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1000EE870(a5, a6);
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

uint64_t sub_1001C51E8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1001C5598(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1001C5338(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000EE870(&qword_1002F9D50, &unk_100229360);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_1001C5598(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1001C5338(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1001C5718();
      goto LABEL_16;
    }

    sub_1001C5874(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1001C5718()
{
  v1 = v0;
  sub_1000EE870(&qword_1002F9D50, &unk_100229360);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1001C5874(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000EE870(&qword_1002F9D50, &unk_100229360);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void sub_1001C5AAC(void **a1)
{
  v2 = *(type metadata accessor for SoundProfileRecord() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001CA564(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1001C5BE8(v5);
  *a1 = v3;
}

uint64_t sub_1001C5B54(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1001CA5B0(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_1001C5D14(v10, a2, a3);
  return specialized ContiguousArray._endMutation()();
}

void sub_1001C5BE8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for SoundProfileRecord();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for SoundProfileRecord() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1001C6624(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1001C5E38(0, v2, 1, a1);
  }
}

Swift::Int sub_1001C5D14(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_1001C5E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SoundProfileRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    while (1)
    {
      sub_1001CC14C(v23, v17, type metadata accessor for SoundProfileRecord);
      sub_1001CC14C(v20, v13, type metadata accessor for SoundProfileRecord);
      v24 = *(v8 + 28);
      v25 = static Date.> infix(_:_:)();
      sub_1001CC1B4(v13, type metadata accessor for SoundProfileRecord);
      sub_1001CC1B4(v17, type metadata accessor for SoundProfileRecord);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v26 = v36;
      sub_1001CC214(v23, v36, type metadata accessor for SoundProfileRecord);
      swift_arrayInitWithTakeFrontToBack();
      sub_1001CC214(v26, v20, type metadata accessor for SoundProfileRecord);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1001C609C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v20 = v9;
      v19 = *v7;
      v11 = v19;
      v12 = v9;
      v13 = v11;
      v14 = sub_1001BC694(&v20, &v19);

      if (v4)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v18 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1001C618C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v62 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v59 = &v48 - v18;
  __chkstk_darwin(v19);
  v53 = &v48 - v21;
  v49 = a2;
  if (a3 != a2)
  {
    v58 = (v20 + 32);
    v22 = *a4;
    v61 = (v20 + 56);
    v54 = (v20 + 48);
    v55 = (v20 + 8);
    v56 = v22;
    v23 = v22 + 8 * a3 - 8;
    v24 = a1 - a3;
LABEL_5:
    v51 = v23;
    v52 = a3;
    v25 = *(v56 + 8 * a3);
    v50 = v24;
    v26 = v53;
    while (1)
    {
      v27 = *v23;
      v28 = v25;
      v63 = v27;
      v60 = v28;
      v29 = [v28 creationDate];
      if (v29)
      {
        v30 = v29;
        v31 = v59;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = *v58;
        (*v58)(v13, v31, v14);
        v33 = *v61;
        (*v61)(v13, 0, 1, v14);
        v32(v26, v13, v14);
      }

      else
      {
        v33 = *v61;
        (*v61)(v13, 1, 1, v14);
        static Date.now.getter();
        if ((*v54)(v13, 1, v14) != 1)
        {
          sub_1000EEE6C(v13, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      v34 = [v63 creationDate];
      if (v34)
      {
        v35 = v59;
        v36 = v34;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = *v58;
        v38 = v13;
        v39 = v57;
        v40 = v35;
        v26 = v53;
        (*v58)(v57, v40, v14);
        v33(v39, 0, 1, v14);
        v41 = v39;
        v13 = v38;
        v37(v62, v41, v14);
      }

      else
      {
        v42 = v57;
        v33(v57, 1, 1, v14);
        static Date.now.getter();
        if ((*v54)(v42, 1, v14) != 1)
        {
          sub_1000EEE6C(v57, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      v43 = v62;
      v44 = static Date.> infix(_:_:)();
      v45 = *v55;
      (*v55)(v43, v14);
      v45(v26, v14);

      if ((v44 & 1) == 0)
      {
LABEL_4:
        a3 = v52 + 1;
        v23 = v51 + 8;
        v24 = v50 - 1;
        if (v52 + 1 == v49)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v56)
      {
        break;
      }

      v46 = *v23;
      v25 = *(v23 + 8);
      *v23 = v25;
      *(v23 + 8) = v46;
      v23 -= 8;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1001C6624(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for SoundProfileRecord();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  __chkstk_darwin(v9);
  v111 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v119 = &v104 - v13;
  __chkstk_darwin(v14);
  v120 = &v104 - v15;
  __chkstk_darwin(v16);
  v18 = &v104 - v17;
  v118 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = &_swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v99 = a4;
LABEL_99:
      v122 = v99;
      a4 = *(v99 + 2);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *&v99[16 * a4];
          v101 = v99;
          v102 = *&v99[16 * a4 + 24];
          sub_1001C8A3C(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *&v99[16 * a4 + 16], *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
            goto LABEL_107;
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_1001C9D08(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_1001C9C7C(a4 - 1);
          v99 = v122;
          a4 = *(v122 + 2);
          if (a4 <= 1)
          {
            goto LABEL_107;
          }
        }

        goto LABEL_133;
      }

LABEL_107:

      return;
    }

LABEL_129:
    v99 = sub_1001C9D08(a4);
    goto LABEL_99;
  }

  v20 = 0;
  v21 = &_swiftEmptyArrayStorage;
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v112 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v116 + 72);
      v5 = *v118 + v24 * v23;
      v114 = *v118;
      v25 = v114;
      sub_1001CC14C(v114 + v24 * v23, v18, type metadata accessor for SoundProfileRecord);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v120;
      sub_1001CC14C(v26, v120, type metadata accessor for SoundProfileRecord);
      v29 = *(v9 + 28);
      LODWORD(v115) = static Date.> infix(_:_:)();
      sub_1001CC1B4(v28, type metadata accessor for SoundProfileRecord);
      sub_1001CC1B4(v18, type metadata accessor for SoundProfileRecord);
      v106 = v27;
      v30 = v27 + 2;
      v117 = v24;
      v31 = v114 + v24 * (v27 + 2);
      while (v19 != v30)
      {
        sub_1001CC14C(v31, v18, type metadata accessor for SoundProfileRecord);
        v32 = v120;
        sub_1001CC14C(v5, v120, type metadata accessor for SoundProfileRecord);
        v33 = *(v121 + 28);
        v34 = static Date.> infix(_:_:)() & 1;
        sub_1001CC1B4(v32, type metadata accessor for SoundProfileRecord);
        sub_1001CC1B4(v18, type metadata accessor for SoundProfileRecord);
        ++v30;
        v31 += v117;
        v5 += v117;
        if ((v115 & 1) != v34)
        {
          v19 = v30 - 1;
          break;
        }
      }

      v22 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v19 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v19)
        {
          v105 = v6;
          v35 = v117 * (v19 - 1);
          v36 = v19;
          v37 = v19 * v117;
          v115 = v19;
          v38 = v106;
          v39 = v106;
          v40 = v106 * v117;
          do
          {
            if (v38 != --v36)
            {
              v41 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v41 + v40;
              sub_1001CC214(v41 + v40, v111, type metadata accessor for SoundProfileRecord);
              if (v40 < v35 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1001CC214(v111, v41 + v35, type metadata accessor for SoundProfileRecord);
            }

            ++v38;
            v35 -= v117;
            v37 -= v117;
            v40 += v117;
          }

          while (v38 < v36);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v22 = v39;
          v19 = v115;
        }
      }
    }

    v42 = v118[1];
    if (v19 >= v42)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v19, v22))
    {
      goto LABEL_125;
    }

    if (v19 - v22 >= a4)
    {
LABEL_32:
      v20 = v19;
      if (v19 < v22)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v22, a4))
    {
      goto LABEL_127;
    }

    if ((v22 + a4) >= v42)
    {
      v43 = v118[1];
    }

    else
    {
      v43 = v22 + a4;
    }

    if (v43 < v22)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v19 == v43)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v88 = v19;
    v89 = v22;
    v90 = *v118;
    v91 = *(v116 + 72);
    v92 = *v118 + v91 * (v19 - 1);
    v93 = -v91;
    v106 = v89;
    v94 = v89 - v19;
    v115 = v88;
    v109 = v91;
    v110 = v43;
    v5 = v90 + v88 * v91;
LABEL_86:
    v113 = v5;
    v114 = v94;
    v117 = v92;
LABEL_87:
    sub_1001CC14C(v5, v18, type metadata accessor for SoundProfileRecord);
    v95 = v120;
    sub_1001CC14C(v92, v120, type metadata accessor for SoundProfileRecord);
    v96 = *(v9 + 28);
    a4 = static Date.> infix(_:_:)();
    sub_1001CC1B4(v95, type metadata accessor for SoundProfileRecord);
    sub_1001CC1B4(v18, type metadata accessor for SoundProfileRecord);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v20 = v110;
    v92 = v117 + v109;
    v94 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v22 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v112;
    }

    else
    {
      v21 = sub_1001C9E00(0, *(v112 + 2) + 1, 1, v112);
    }

    a4 = *(v21 + 2);
    v44 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      v21 = sub_1001C9E00((v44 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v45 = &v21[16 * a4];
    *(v45 + 4) = v22;
    *(v45 + 5) = v20;
    v46 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          v52 = &v21[16 * v5 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_111;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_112;
          }

          v59 = &v21[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_114;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_117;
          }

          if (v63 >= v55)
          {
            v81 = &v21[16 * v47 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_121;
            }

            if (v50 < v84)
            {
              v47 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v51)
            {
              goto LABEL_113;
            }

            v64 = &v21[16 * v5];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_116;
            }

            v70 = &v21[16 * v47 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_120;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_66;
            }

            if (v50 < v73)
            {
              v47 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v48 = *(v21 + 4);
            v49 = *(v21 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_52;
          }

          v74 = &v21[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_66:
          if (v69)
          {
            goto LABEL_115;
          }

          v77 = &v21[16 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        a4 = v47 - 1;
        if (v47 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v85 = v21;
        v86 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v47 + 40];
        sub_1001C8A3C(*v118 + *(v116 + 72) * v86, *v118 + *(v116 + 72) * *&v21[16 * v47 + 32], *v118 + *(v116 + 72) * v5, v46);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v86)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_1001C9D08(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_110;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v122 = v85;
        sub_1001C9C7C(v47);
        v21 = v122;
        v5 = *(v122 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v19 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v20 >= v19)
    {
      goto LABEL_96;
    }
  }

  if (v90)
  {
    a4 = type metadata accessor for SoundProfileRecord;
    v97 = v119;
    sub_1001CC214(v5, v119, type metadata accessor for SoundProfileRecord);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_1001CC214(v97, v92, type metadata accessor for SoundProfileRecord);
    v92 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
}

void sub_1001C6F88(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v163 = a1;
  v8 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v178 = &v159 - v13;
  __chkstk_darwin(v14);
  v16 = &v159 - v15;
  __chkstk_darwin(v17);
  v19 = &v159 - v18;
  v185 = type metadata accessor for Date();
  v20 = *(*(v185 - 8) + 64);
  __chkstk_darwin(v185);
  __chkstk_darwin(v21);
  v180 = &v159 - v22;
  __chkstk_darwin(v23);
  v184 = &v159 - v26;
  v27 = *(a3 + 8);
  v166 = a3;
  if (v27 >= 1)
  {
    v170 = v11;
    v161 = a4;
    v28 = 0;
    v179 = (v24 + 32);
    v172 = (v24 + 48);
    v174 = (v24 + 8);
    v29 = _swiftEmptyArrayStorage;
    v171 = v16;
    v176 = v19;
    v177 = v25;
    v30 = (v24 + 56);
    v173 = v30;
    v31 = v16;
    while (1)
    {
      v32 = v28 + 1;
      v165 = v28;
      if (v28 + 1 >= v27)
      {
        v43 = v30;
      }

      else
      {
        v33 = v28;
        v162 = v29;
        a4 = *a3;
        v34 = *(*a3 + 8 * v32);
        v186 = *(*a3 + 8 * v28);
        v35 = v186;
        v187[0] = v34;
        v36 = v34;
        v11 = v35;
        LODWORD(v183) = sub_1001BC694(v187, &v186);
        if (v5)
        {

          return;
        }

        v37 = v33 + 2;
        v38 = 8 * v33;
        v39 = (a4 + 8 * v33 + 16);
        while (v27 != v37)
        {
          v40 = *v39;
          v186 = *(v39 - 1);
          v41 = v186;
          v187[0] = v40;
          a4 = v40;
          v42 = v41;
          v11 = sub_1001BC694(v187, &v186);

          ++v37;
          ++v39;
          if ((v183 ^ v11))
          {
            v27 = v37 - 1;
            break;
          }
        }

        v5 = 0;
        v29 = v162;
        v31 = v171;
        v43 = v173;
        if (v183)
        {
          v44 = v165;
          if (v27 < v165)
          {
            goto LABEL_145;
          }

          if (v165 < v27)
          {
            v45 = 8 * v27 - 8;
            v46 = v27;
            do
            {
              if (v44 != --v46)
              {
                v48 = *v166;
                if (!*v166)
                {
                  goto LABEL_149;
                }

                v47 = *(v48 + v38);
                *(v48 + v38) = *(v48 + v45);
                *(v48 + v45) = v47;
              }

              ++v44;
              v45 -= 8;
              v38 += 8;
            }

            while (v44 < v46);
          }
        }

        v32 = v27;
        a3 = v166;
      }

      v49 = *(a3 + 8);
      if (v32 < v49)
      {
        if (__OFSUB__(v32, v165))
        {
          goto LABEL_141;
        }

        if (v32 - v165 < v161)
        {
          v50 = v165 + v161;
          if (__OFADD__(v165, v161))
          {
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
            return;
          }

          if (v50 >= v49)
          {
            v50 = *(a3 + 8);
          }

          if (v50 < v165)
          {
            goto LABEL_144;
          }

          if (v32 != v50)
          {
            v162 = v29;
            v160 = v5;
            v175 = *a3;
            v51 = v175 + 8 * v32 - 8;
            v52 = v165 - v32;
            v164 = v50;
            do
            {
              v168 = v51;
              v169 = v32;
              v53 = v52;
              v54 = *(v175 + 8 * v32);
              v167 = v53;
              v55 = v53;
              while (1)
              {
                v181 = v55;
                v56 = *v51;
                v57 = v54;
                v58 = v56;
                v59 = [v57 modificationDate];
                v183 = v57;
                if (v59)
                {
                  v60 = v180;
                  v61 = v59;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v62 = *v179;
                  v63 = v176;
                  v64 = v185;
                  (*v179)(v176, v60, v185);
                  v65 = *v43;
                  (*v43)(v63, 0, 1, v64);
                  v62(v184, v63, v64);
                }

                else
                {
                  v65 = *v43;
                  v66 = v176;
                  (*v43)(v176, 1, 1, v185);
                  v67 = [v57 creationDate];
                  if (v67)
                  {
                    v68 = v180;
                    v69 = v67;
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v70 = *v179;
                    v71 = v171;
                    v72 = v68;
                    v73 = v185;
                    (*v179)(v171, v72, v185);
                    v65(v71, 0, 1, v73);
                    v70(v184, v71, v73);
                    v74 = (*v172)(v66, 1, v185);
                  }

                  else
                  {
                    v75 = v171;
                    v76 = v185;
                    v65(v171, 1, 1, v185);
                    static Date.now.getter();
                    v77 = *v172;
                    if ((*v172)(v75, 1, v76) != 1)
                    {
                      sub_1000EEE6C(v75, &qword_1002F7EF0, &unk_100226C90);
                    }

                    v66 = v176;
                    v74 = v77(v176, 1, v185);
                  }

                  if (v74 != 1)
                  {
                    sub_1000EEE6C(v66, &qword_1002F7EF0, &unk_100226C90);
                  }

                  v43 = v173;
                }

                v78 = [v58 modificationDate];
                v182 = v58;
                if (v78)
                {
                  v79 = v43;
                  v80 = v180;
                  v81 = v78;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v82 = v178;
                  v83 = *v179;
                  v84 = v185;
                  (*v179)(v178, v80, v185);
                  v85 = v79;
                  v65(v82, 0, 1, v84);
                  v86 = v177;
                  v83(v177, v82, v84);
                }

                else
                {
                  v65(v178, 1, 1, v185);
                  v87 = [v58 creationDate];
                  v88 = v43;
                  v89 = v172;
                  if (v87)
                  {
                    v90 = v180;
                    v91 = v87;
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v92 = *v179;
                    v93 = v170;
                    v94 = v90;
                    v95 = v185;
                    (*v179)(v170, v94, v185);
                    v65(v93, 0, 1, v95);
                    v92(v177, v93, v95);
                    v85 = v173;
                    v96 = (*v89)(v178, 1, v185);
                  }

                  else
                  {
                    v97 = v170;
                    v98 = v185;
                    v85 = v88;
                    v65(v170, 1, 1, v185);
                    static Date.now.getter();
                    v99 = *v89;
                    if ((*v89)(v97, 1, v98) != 1)
                    {
                      sub_1000EEE6C(v97, &qword_1002F7EF0, &unk_100226C90);
                    }

                    v96 = v99(v178, 1, v185);
                  }

                  v86 = v177;
                  if (v96 != 1)
                  {
                    sub_1000EEE6C(v178, &qword_1002F7EF0, &unk_100226C90);
                  }
                }

                v100 = v184;
                v11 = static Date.> infix(_:_:)();
                a4 = v174;
                v101 = *v174;
                v102 = v185;
                (*v174)(v86, v185);
                v101(v100, v102);

                if ((v11 & 1) == 0)
                {
                  break;
                }

                v103 = v181;
                if (!v175)
                {
                  goto LABEL_146;
                }

                v43 = v85;
                v104 = *v51;
                v54 = *(v51 + 8);
                *v51 = v54;
                *(v51 + 8) = v104;
                v51 -= 8;
                v105 = __CFADD__(v103, 1);
                v55 = v103 + 1;
                if (v105)
                {
                  goto LABEL_31;
                }
              }

              v43 = v85;
LABEL_31:
              v32 = v169 + 1;
              v51 = v168 + 8;
              v52 = v167 - 1;
            }

            while (v169 + 1 != v164);
            v32 = v164;
            v5 = v160;
            a3 = v166;
            v29 = v162;
            v31 = v171;
          }
        }
      }

      if (v32 < v165)
      {
        goto LABEL_140;
      }

      v106 = v31;
      v107 = v29;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v29 = v107;
      }

      else
      {
        v29 = sub_1001C9E00(0, *(v107 + 2) + 1, 1, v107);
      }

      v11 = *(v29 + 2);
      v108 = *(v29 + 3);
      a4 = v11 + 1;
      if (v11 >= v108 >> 1)
      {
        v29 = sub_1001C9E00((v108 > 1), v11 + 1, 1, v29);
      }

      *(v29 + 2) = a4;
      v109 = &v29[16 * v11];
      *(v109 + 4) = v165;
      *(v109 + 5) = v32;
      v110 = *v163;
      if (!*v163)
      {
        goto LABEL_150;
      }

      v111 = v32;
      if (v11)
      {
        while (1)
        {
          v112 = a4 - 1;
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v113 = *(v29 + 4);
            v114 = *(v29 + 5);
            v123 = __OFSUB__(v114, v113);
            v115 = v114 - v113;
            v116 = v123;
LABEL_78:
            if (v116)
            {
              goto LABEL_129;
            }

            v129 = &v29[16 * a4];
            v131 = *v129;
            v130 = *(v129 + 1);
            v132 = __OFSUB__(v130, v131);
            v133 = v130 - v131;
            v134 = v132;
            if (v132)
            {
              goto LABEL_132;
            }

            v135 = &v29[16 * v112 + 32];
            v137 = *v135;
            v136 = *(v135 + 1);
            v123 = __OFSUB__(v136, v137);
            v138 = v136 - v137;
            if (v123)
            {
              goto LABEL_135;
            }

            if (__OFADD__(v133, v138))
            {
              goto LABEL_136;
            }

            if (v133 + v138 >= v115)
            {
              if (v115 < v138)
              {
                v112 = a4 - 2;
              }

              goto LABEL_99;
            }

            goto LABEL_92;
          }

          v139 = &v29[16 * a4];
          v141 = *v139;
          v140 = *(v139 + 1);
          v123 = __OFSUB__(v140, v141);
          v133 = v140 - v141;
          v134 = v123;
LABEL_92:
          if (v134)
          {
            goto LABEL_131;
          }

          v142 = &v29[16 * v112];
          v144 = *(v142 + 4);
          v143 = *(v142 + 5);
          v123 = __OFSUB__(v143, v144);
          v145 = v143 - v144;
          if (v123)
          {
            goto LABEL_134;
          }

          if (v145 < v133)
          {
            goto LABEL_3;
          }

LABEL_99:
          v11 = v112 - 1;
          if (v112 - 1 >= a4)
          {
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
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            v154 = sub_1001C9D08(v11);
            goto LABEL_114;
          }

          if (!*a3)
          {
            goto LABEL_147;
          }

          v150 = v29;
          a4 = *&v29[16 * v11 + 32];
          v151 = *&v29[16 * v112 + 40];
          sub_1001C8F6C((*a3 + 8 * a4), (*a3 + 8 * *&v29[16 * v112 + 32]), (*a3 + 8 * v151), v110);
          if (v5)
          {
            goto LABEL_122;
          }

          if (v151 < a4)
          {
            goto LABEL_125;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v152 = v150;
          }

          else
          {
            v152 = sub_1001C9D08(v150);
          }

          v106 = v171;
          if (v11 >= *(v152 + 2))
          {
            goto LABEL_126;
          }

          v153 = &v152[16 * v11];
          *(v153 + 4) = a4;
          *(v153 + 5) = v151;
          v188 = v152;
          v11 = &v188;
          sub_1001C9C7C(v112);
          v29 = v188;
          a4 = *(v188 + 2);
          if (a4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v117 = &v29[16 * a4 + 32];
        v118 = *(v117 - 64);
        v119 = *(v117 - 56);
        v123 = __OFSUB__(v119, v118);
        v120 = v119 - v118;
        if (v123)
        {
          goto LABEL_127;
        }

        v122 = *(v117 - 48);
        v121 = *(v117 - 40);
        v123 = __OFSUB__(v121, v122);
        v115 = v121 - v122;
        v116 = v123;
        if (v123)
        {
          goto LABEL_128;
        }

        v124 = &v29[16 * a4];
        v126 = *v124;
        v125 = *(v124 + 1);
        v123 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v123)
        {
          goto LABEL_130;
        }

        v123 = __OFADD__(v115, v127);
        v128 = v115 + v127;
        if (v123)
        {
          goto LABEL_133;
        }

        if (v128 >= v120)
        {
          v146 = &v29[16 * v112 + 32];
          v148 = *v146;
          v147 = *(v146 + 1);
          v123 = __OFSUB__(v147, v148);
          v149 = v147 - v148;
          if (v123)
          {
            goto LABEL_139;
          }

          if (v115 < v149)
          {
            v112 = a4 - 2;
          }

          goto LABEL_99;
        }

        goto LABEL_78;
      }

LABEL_3:
      v27 = *(a3 + 8);
      v28 = v111;
      v30 = v173;
      v31 = v106;
      if (v111 >= v27)
      {
        goto LABEL_111;
      }
    }
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_111:
  a4 = *v163;
  if (!*v163)
  {
    goto LABEL_151;
  }

  v11 = v29;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_142;
  }

  v154 = v11;
LABEL_114:
  v188 = v154;
  v11 = *(v154 + 2);
  if (v11 >= 2)
  {
    do
    {
      v155 = *a3;
      if (!*a3)
      {
        goto LABEL_148;
      }

      a3 = *&v154[16 * v11];
      v156 = v154;
      v157 = *&v154[16 * v11 + 24];
      sub_1001C8F6C((v155 + 8 * a3), (v155 + 8 * *&v154[16 * v11 + 16]), (v155 + 8 * v157), a4);
      if (v5)
      {
        break;
      }

      if (v157 < a3)
      {
        goto LABEL_137;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v156 = sub_1001C9D08(v156);
      }

      if (v11 - 2 >= *(v156 + 2))
      {
        goto LABEL_138;
      }

      v158 = &v156[16 * v11];
      *v158 = a3;
      *(v158 + 1) = v157;
      v188 = v156;
      sub_1001C9C7C(v11 - 1);
      v154 = v188;
      v11 = *(v188 + 2);
      a3 = v166;
    }

    while (v11 > 1);
  }

LABEL_122:
}