uint64_t sub_100108D34(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  a7(v11, v13, a6, v14);
}

void sub_100108E1C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v70 - v7;
  v85 = type metadata accessor for BTDeferredRecord();
  v9 = *(v85 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v85);
  v73 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = v70 - v13;
  __chkstk_darwin(v14);
  v16 = v70 - v15;
  v84 = type metadata accessor for DeviceSupportInformationRecord();
  *&v82 = *(v84 - 8);
  v17 = *(v82 + 64);
  __chkstk_darwin(v84);
  v72 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v70 - v20;
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v70[2] = a3;
    v71 = a2;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      goto LABEL_64;
    }

    while (1)
    {
      v75 = qword_100300E30;
      os_log(_:dso:log:_:_:)();
      v86 = _swiftEmptyArrayStorage;
      sub_100103934();
      if ([objc_opt_self() isFirstUnlocked])
      {
        sub_100192340();
        if (qword_1002F7A68 != -1)
        {
          swift_once();
        }

        v27 = sub_1000EE91C(v22, qword_100300D48);
        (*(v23 + 16))(v26, v27, v22);
        v28 = sub_10018BDC8(v26);

        (*(v23 + 8))(v26, v22);
      }

      else
      {
        static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v28 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)();
      }

      v22 = &qword_1002F8000;
      v81 = v28[2];
      v77 = v8;
      if (!v81)
      {
        break;
      }

      v23 = 0;
      v79 = (v28 + ((*(v82 + 80) + 32) & ~*(v82 + 80)));
      v80 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore;
      v78 = _swiftEmptyArrayStorage;
      v74 = v28;
      while (v23 < v28[2])
      {
        sub_100115124(v79 + *(v82 + 72) * v23, v21, type metadata accessor for DeviceSupportInformationRecord);
        v22 = *&Strong[v80];

        v29 = sub_10019391C();

        v26 = *(v29 + 16);
        if (v26)
        {
          v30 = 0;
          v8 = (v29 + ((*(v9 + 80) + 32) & ~*(v9 + 80)));
          while (v30 < *(v29 + 16))
          {
            sub_100115124(&v8[*(v9 + 72) * v30], v16, type metadata accessor for BTDeferredRecord);
            v31 = *(v16 + 1) == 0xD00000000000001ELL && 0x80000001002671E0 == *(v16 + 2);
            if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v32 = &v16[*(v85 + 28)], v33 = *v32, v34 = *(v32 + 1), v35 = &v21[*(v84 + 24)], v33 == *v35) ? (v36 = v34 == *(v35 + 1)) : (v36 = 0), v36 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
            {
              if (*v16 == 1)
              {

                sub_1001150A8(v16, type metadata accessor for BTDeferredRecord);
LABEL_14:

                v8 = v77;
                v28 = v74;
                goto LABEL_15;
              }

              v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

              sub_1001150A8(v16, type metadata accessor for BTDeferredRecord);
              if (v22)
              {
                goto LABEL_14;
              }
            }

            else
            {
              sub_1001150A8(v16, type metadata accessor for BTDeferredRecord);
            }

            if (v26 == ++v30)
            {

              v8 = v77;
              v28 = v74;
              goto LABEL_37;
            }
          }

          __break(1u);
          break;
        }

LABEL_37:
        v22 = sub_100109B20();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v26 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v78 = v86;
LABEL_15:
        ++v23;
        sub_1001150A8(v21, type metadata accessor for DeviceSupportInformationRecord);
        if (v23 == v81)
        {

          v22 = 0x1002F8000;
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_64:
      swift_once();
    }

    v78 = _swiftEmptyArrayStorage;
LABEL_42:
    v37 = *&Strong[*(v22 + 1200)];

    v38 = sub_10019391C();

    v39 = *(v38 + 16);
    v40 = v76;
    if (v39)
    {
      v80 = 0;
      v41 = 0x80000001002671E0;
      v42 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v70[1] = v38;
      v43 = v38 + v42;
      v81 = *(v9 + 72);
      v79 = (v82 + 56);
      v82 = xmmword_100226100;
      v44 = v84;
      v74 = 0x80000001002671E0;
      do
      {
        sub_100115124(v43, v40, type metadata accessor for BTDeferredRecord);
        v49 = *(v40 + 8) == 0xD00000000000001ELL && v41 == *(v40 + 16);
        if (!v49 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_46;
        }

        if (*v40)
        {
          v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v50 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
        }

        v51 = v40 + *(v85 + 36);
        v52 = *(v51 + 8);
        if (v52 >> 60 != 15)
        {
          v53 = *v51;
          sub_1000EE9F4(*v51, *(v51 + 8));
          v54 = objc_autoreleasePoolPush();
          v55 = type metadata accessor for PropertyListDecoder();
          v56 = *(v55 + 48);
          v57 = *(v55 + 52);
          swift_allocObject();
          PropertyListDecoder.init()();
          sub_100114C58(&unk_1002F8C30, type metadata accessor for DeviceSupportInformationRecord);
          v58 = v80;
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
          if (!v58)
          {
            v78 = v53;
            v80 = 0;

            objc_autoreleasePoolPop(v54);
            (*v79)(v8, 0, 1, v44);
            v59 = v72;
            sub_100114F1C(v8, v72, type metadata accessor for DeviceSupportInformationRecord);
            static os_log_type_t.default.getter();
            sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
            v60 = swift_allocObject();
            *(v60 + 16) = v82;
            v61 = sub_100133818();
            v63 = v62;
            *(v60 + 56) = &type metadata for String;
            *(v60 + 64) = sub_1000EE954();
            *(v60 + 32) = v61;
            *(v60 + 40) = v63;
            os_log(_:dso:log:_:_:)();

            sub_100109B20();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v64 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v59 = v72;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            sub_1000FF5CC(v78, v52);
            sub_1001150A8(v59, type metadata accessor for DeviceSupportInformationRecord);
            v78 = v86;
            v40 = v76;
            v8 = v77;
            v44 = v84;
            v41 = v74;
            goto LABEL_46;
          }

          objc_autoreleasePoolPop(v54);
          sub_1000FF5CC(v53, v52);
          (*v79)(v8, 1, 1, v44);
          sub_1000EEE6C(v8, &qword_1002F8510, &unk_100227B50);
          v80 = 0;
        }

        static os_log_type_t.default.getter();
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v45 = swift_allocObject();
        *(v45 + 16) = v82;
        v40 = v76;
        sub_100115124(v76, v73, type metadata accessor for BTDeferredRecord);
        v46 = String.init<A>(describing:)();
        v48 = v47;
        *(v45 + 56) = &type metadata for String;
        *(v45 + 64) = sub_1000EE954();
        *(v45 + 32) = v46;
        *(v45 + 40) = v48;
        os_log(_:dso:log:_:_:)();

        v44 = v84;
LABEL_46:
        sub_1001150A8(v40, type metadata accessor for BTDeferredRecord);
        v43 += v81;
        --v39;
      }

      while (v39);
    }

    static os_log_type_t.debug.getter();
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_100226100;
    sub_1000FA784(0, &qword_1002F8518, BTCloudDeviceSupportInformation_ptr);
    v66 = v78;
    v67 = Array.description.getter();
    v69 = v68;
    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = sub_1000EE954();
    *(v65 + 32) = v67;
    *(v65 + 40) = v69;
    os_log(_:dso:log:_:_:)();

    (v71)(v66);
  }

  else
  {
    a2();
  }
}

id sub_100109B20()
{
  v1 = type metadata accessor for DeviceSupportInformationRecord();
  v2 = (v0 + v1[6]);
  v3 = *v2;
  v4 = v2[1];
  v5 = objc_allocWithZone(BTCloudDeviceSupportInformation);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithBluetoothAddress:v6];

  v8 = (v0 + v1[7]);
  v9 = *v8;
  v10 = v8[1];
  v11 = String._bridgeToObjectiveC()();
  [v7 setBudsFirmwareVersion:v11];

  v12 = (v0 + v1[8]);
  v13 = *v12;
  v14 = v12[1];
  v15 = String._bridgeToObjectiveC()();
  [v7 setCaseName:v15];

  v16 = (v0 + v1[9]);
  v17 = *v16;
  v18 = v16[1];
  v19 = String._bridgeToObjectiveC()();
  [v7 setCaseFirmwareVersion:v19];

  v20 = (v0 + v1[10]);
  v21 = *v20;
  v22 = v20[1];
  v23 = String._bridgeToObjectiveC()();
  [v7 setCaseSerialNumber:v23];

  v24 = (v0 + v1[11]);
  v25 = *v24;
  v26 = v24[1];
  v27 = String._bridgeToObjectiveC()();
  [v7 setHardwareVersion:v27];

  v28 = (v0 + v1[12]);
  v29 = *v28;
  v30 = v28[1];
  v31 = String._bridgeToObjectiveC()();
  [v7 setLeftBudSerialNumber:v31];

  v32 = (v0 + v1[13]);
  v33 = *v32;
  v34 = v32[1];
  v35 = String._bridgeToObjectiveC()();
  [v7 setRightBudSerialNumber:v35];

  v36 = (v0 + v1[14]);
  v37 = *v36;
  v38 = v36[1];
  v39 = String._bridgeToObjectiveC()();
  [v7 setAncAssetVersion:v39];

  return v7;
}

void sub_100109D38(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (a1)
  {
    sub_1000FA784(0, a3, a4);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  isa = v5.super.isa;
  (*(a2 + 16))(a2);
}

void sub_100109DE0(uint64_t a1, void (*a2)(void), unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v122 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v118 - v13;
  v15 = type metadata accessor for URL();
  v130 = *(v15 - 8);
  v131 = v15;
  v16 = *(v130 + 64);
  __chkstk_darwin(v15);
  v129 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DeviceSupportInformationRecord();
  v140 = *(v18 - 8);
  v19 = *(v140 + 64);
  __chkstk_darwin(v18);
  v121 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v123 = &v118 - v22;
  __chkstk_darwin(v23);
  v139 = &v118 - v24;
  __chkstk_darwin(v25);
  v124 = &v118 - v26;
  __chkstk_darwin(v27);
  v125 = &v118 - v28;
  v141 = type metadata accessor for BTDeferredRecord();
  v29 = *(v141 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v141);
  v134 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v118 - v33;
  __chkstk_darwin(v35);
  v127 = &v118 - v36;
  __chkstk_darwin(v37);
  v128 = &v118 - v38;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = Strong;
    v119 = v14;
    v126 = v18;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      goto LABEL_57;
    }

    while (1)
    {
      v41 = qword_100300E30;
      v135 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v42 = swift_allocObject();
      v136 = xmmword_100226100;
      *(v42 + 16) = xmmword_100226100;
      *(v42 + 56) = &type metadata for String;
      v137 = sub_1000EE954();
      *(v42 + 64) = v137;
      *(v42 + 32) = a4;
      *(v42 + 40) = a5;

      v133 = v41;
      os_log(_:dso:log:_:_:)();

      sub_100103934();
      v43 = sub_10019391C();

      v44 = *(v43 + 16);
      v132 = a3;
      v138 = v40;
      if (v44)
      {
        break;
      }

LABEL_25:
      v68 = *&v40[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];
      v69 = objc_opt_self();

      v70 = [v69 isFirstUnlocked];
      v34 = v139;
      v29 = v140;
      if (v70)
      {
        v71 = a2;
        sub_100192340();
        if (qword_1002F7A68 != -1)
        {
          swift_once();
        }

        v72 = v131;
        v73 = sub_1000EE91C(v131, qword_100300D48);
        v74 = v129;
        v75 = v130;
        (*(v130 + 16))(v129, v73, v72);
        v76 = sub_10018BDC8(v74);

        (*(v75 + 8))(v74, v72);
        v77 = v126;
        a2 = v71;
        a3 = v132;
        v34 = v139;
        v40 = v76[2];
        if (!v40)
        {
          goto LABEL_41;
        }
      }

      else
      {
        static os_log_type_t.error.getter();
        v77 = v126;
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v76 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)();

        v40 = _swiftEmptyArrayStorage[2];
        if (!v40)
        {
LABEL_41:

          static os_log_type_t.debug.getter();
          v81 = swift_allocObject();
          *(v81 + 16) = v136;
          v82 = v137;
          *(v81 + 56) = &type metadata for String;
          *(v81 + 64) = v82;
          *(v81 + 32) = a4;
          *(v81 + 40) = a5;

          os_log(_:dso:log:_:_:)();

          (a2)(0);

          return;
        }
      }

      v78 = 0;
      while (v78 < v76[2])
      {
        sub_100115124(v76 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v78, v34, type metadata accessor for DeviceSupportInformationRecord);
        v79 = &v34[*(v77 + 24)];
        v80 = *v79 == a4 && *(v79 + 1) == a5;
        if (v80 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v83 = v124;
          sub_100114F1C(v34, v124, type metadata accessor for DeviceSupportInformationRecord);
          v84 = v125;
          sub_100114F1C(v83, v125, type metadata accessor for DeviceSupportInformationRecord);
          static os_log_type_t.default.getter();
          v85 = swift_allocObject();
          *(v85 + 16) = v136;
          v86 = (v84 + *(v77 + 24));
          v88 = *v86;
          v87 = v86[1];
          v89 = v137;
          *(v85 + 56) = &type metadata for String;
          *(v85 + 64) = v89;
          *(v85 + 32) = v88;
          *(v85 + 40) = v87;

          os_log(_:dso:log:_:_:)();

          v90 = sub_100109B20();
          a2();

          v91 = type metadata accessor for DeviceSupportInformationRecord;
          v92 = v84;
          goto LABEL_54;
        }

        ++v78;
        sub_1001150A8(v34, type metadata accessor for DeviceSupportInformationRecord);
        if (v40 == v78)
        {
          goto LABEL_41;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      swift_once();
    }

    v120 = a2;
    a3 = 0;
    a2 = 0xD00000000000001ELL;
    v40 = (v43 + ((*(v29 + 80) + 32) & ~*(v29 + 80)));
    while (1)
    {
      if (a3 >= *(v43 + 16))
      {
        __break(1u);
        goto LABEL_56;
      }

      sub_100115124(&v40[*(v29 + 72) * a3], v34, type metadata accessor for BTDeferredRecord);
      v45 = *(v34 + 1) == 0xD00000000000001ELL && 0x80000001002671E0 == *(v34 + 2);
      if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v46 = &v34[*(v141 + 28)];
        v47 = *v46 == a4 && *(v46 + 1) == a5;
        if (v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      ++a3;
      sub_1001150A8(v34, type metadata accessor for BTDeferredRecord);
      if (v44 == a3)
      {

        a2 = v120;
        a3 = v132;
        v40 = v138;
        goto LABEL_25;
      }
    }

    v48 = v127;
    sub_100114F1C(v34, v127, type metadata accessor for BTDeferredRecord);
    v49 = v128;
    sub_100114F1C(v48, v128, type metadata accessor for BTDeferredRecord);
    v50 = *v49;
    static os_log_type_t.default.getter();
    v51 = swift_allocObject();
    *(v51 + 16) = v136;
    sub_100115124(v49, v134, type metadata accessor for BTDeferredRecord);
    v52 = v141;
    v53 = String.init<A>(describing:)();
    v54 = v137;
    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = v54;
    *(v51 + 32) = v53;
    *(v51 + 40) = v55;
    if (v50)
    {
      os_log(_:dso:log:_:_:)();

      v56 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore;
      v57 = *&v138[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];
      v58 = objc_opt_self();

      v59 = [v58 isFirstUnlocked];
      v60 = v120;
      v61 = v140;
      if (v59)
      {
        sub_100192340();
        if (qword_1002F7A68 != -1)
        {
          swift_once();
        }

        v62 = v131;
        v63 = sub_1000EE91C(v131, qword_100300D48);
        v64 = v129;
        v65 = v130;
        (*(v130 + 16))(v129, v63, v62);
        v66 = sub_10018BDC8(v64);

        v67 = (*(v65 + 8))(v64, v62);
        v60 = v120;
      }

      else
      {
        static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        v66 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)();
      }

      __chkstk_darwin(v67);
      *(&v118 - 2) = v49;
      v108 = v119;
      sub_10017D0B0(sub_100114E78, v66, v119);

      if ((*(v61 + 48))(v108, 1, v126) == 1)
      {
        sub_1000EEE6C(v108, &qword_1002F8510, &unk_100227B50);
        v109 = v138;
      }

      else
      {
        v110 = v123;
        sub_100114F1C(v108, v123, type metadata accessor for DeviceSupportInformationRecord);
        v109 = v138;
        v111 = *&v138[v56];

        sub_1001AE714(v110, v111);

        sub_1001150A8(v110, type metadata accessor for DeviceSupportInformationRecord);
      }

      (v60)(0);
    }

    else
    {
      os_log(_:dso:log:_:_:)();

      v93 = &v49[*(v52 + 36)];
      v94 = *(v93 + 1);
      v95 = v120;
      v96 = v140;
      if (v94 >> 60 == 15)
      {
        static os_log_type_t.default.getter();
        v104 = swift_allocObject();
        *(v104 + 16) = v136;
        sub_100115124(v49, v134, type metadata accessor for BTDeferredRecord);
        v105 = String.init<A>(describing:)();
        v106 = v137;
        *(v104 + 56) = &type metadata for String;
        *(v104 + 64) = v106;
        *(v104 + 32) = v105;
        *(v104 + 40) = v107;
        os_log(_:dso:log:_:_:)();

        (v95)(0);
      }

      else
      {
        v97 = *v93;
        sub_1000EE9F4(*v93, *(v93 + 1));
        v98 = objc_autoreleasePoolPush();
        v99 = type metadata accessor for PropertyListDecoder();
        v100 = *(v99 + 48);
        v101 = *(v99 + 52);
        swift_allocObject();
        PropertyListDecoder.init()();
        sub_100114C58(&unk_1002F8C30, type metadata accessor for DeviceSupportInformationRecord);
        v102 = v122;
        v103 = v126;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

        objc_autoreleasePoolPop(v98);
        (*(v96 + 56))(v102, 0, 1, v103);
        v112 = v121;
        sub_100114F1C(v102, v121, type metadata accessor for DeviceSupportInformationRecord);
        static os_log_type_t.default.getter();
        v113 = swift_allocObject();
        *(v113 + 16) = v136;
        v114 = sub_100133818();
        v115 = v137;
        *(v113 + 56) = &type metadata for String;
        *(v113 + 64) = v115;
        *(v113 + 32) = v114;
        *(v113 + 40) = v116;
        os_log(_:dso:log:_:_:)();

        v117 = sub_100109B20();
        v120();

        sub_1000FF5CC(v97, v94);
        sub_1001150A8(v112, type metadata accessor for DeviceSupportInformationRecord);
      }
    }

    v91 = type metadata accessor for BTDeferredRecord;
    v92 = v49;
LABEL_54:
    sub_1001150A8(v92, v91);
  }

  else
  {
    a2();
  }
}

uint64_t sub_10010AE00(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for DeviceSupportInformationRecord() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = (a2 + *(type metadata accessor for BTDeferredRecord() + 28));
  if (v4 == *v6 && v5 == v6[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10010AE84()
{
  static os_log_type_t.debug.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100226100;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F9E10, &qword_100229AB0);
  v1 = String.init<A>(describing:)();
  v3 = v2;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_1000EE954();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  os_log(_:dso:log:_:_:)();
}

void sub_10010B004(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  v7 = type metadata accessor for DeviceSupportInformationRecord();
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  __chkstk_darwin(v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000EE870(&qword_1002F8510, &unk_100227B50);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v68 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v70 = v19;
    v71 = v12;
    v69 = v11;
    v73 = a3;
    v74 = Strong;
    v72 = a2;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100226100;
      v22 = a4;
      v23 = [v22 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      *(v21 + 56) = &type metadata for String;
      v27 = sub_1000EE954();
      *(v21 + 64) = v27;
      *(v21 + 32) = v24;
      *(v21 + 40) = v26;
      os_log(_:dso:log:_:_:)();

      v28 = &selRef__sendConfigOverCBController_device_completion_;
      v29 = [v22 bluetoothAddress];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = HIBYTE(v32) & 0xF;
      if ((v32 & 0x2000000000000000) == 0)
      {
        v33 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (!v33)
      {
        goto LABEL_11;
      }

      v34 = [v22 bluetoothAddress];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      if (v35 == 0xD000000000000011 && 0x8000000100267AA0 == v37)
      {

        v28 = &selRef__sendConfigOverCBController_device_completion_;
LABEL_11:
        static os_log_type_t.error.getter();
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_100226C80;
        v41 = [v22 v28[475]];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        *(v40 + 56) = &type metadata for String;
        *(v40 + 64) = v27;
        *(v40 + 32) = v42;
        *(v40 + 40) = v44;
        v45 = v22;
        v46 = [v45 description];
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        *(v40 + 96) = &type metadata for String;
        *(v40 + 104) = v27;
        *(v40 + 72) = v47;
        *(v40 + 80) = v49;
        os_log(_:dso:log:_:_:)();

        sub_1000F29F8();
        swift_allocError();
        *v50 = 1;
        v72();

        goto LABEL_12;
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v28 = &selRef__sendConfigOverCBController_device_completion_;
      if (v39)
      {
        goto LABEL_11;
      }

      sub_100103934();
      v51 = [objc_opt_self() isFirstUnlocked];
      v52 = v71;
      if (v51)
      {
        sub_100192340();
        if (qword_1002F7A68 != -1)
        {
          swift_once();
        }

        v53 = v69;
        v54 = sub_1000EE91C(v69, qword_100300D48);
        (*(v52 + 16))(v15, v54, v53);
        a4 = sub_10018BDC8(v15);

        (*(v52 + 8))(v15, v53);
        v15 = a4[2];
        if (!v15)
        {
          goto LABEL_29;
        }
      }

      else
      {
        static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        a4 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)();

        v15 = _swiftEmptyArrayStorage[2];
        if (!v15)
        {
LABEL_29:

          v65 = v70;
          (*(v75 + 56))(v70, 1, 1, v76);
LABEL_32:
          sub_1000EEE6C(v65, &qword_1002F8510, &unk_100227B50);
          v66 = v74;
          v67 = *&v74[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];

          sub_1001ADC50(v22, v72, v73);

          return;
        }
      }

      v55 = 0;
      while (v55 < a4[2])
      {
        sub_100115124(a4 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v55, v10, type metadata accessor for DeviceSupportInformationRecord);
        v56 = &v10[*(v76 + 24)];
        v57 = *v56;
        v58 = *(v56 + 1);
        v59 = [v22 bluetoothAddress];
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        if (v57 == v60 && v58 == v62)
        {

LABEL_31:

          v65 = v70;
          sub_100114F1C(v10, v70, type metadata accessor for DeviceSupportInformationRecord);
          (*(v75 + 56))(v65, 0, 1, v76);
          goto LABEL_32;
        }

        v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v64)
        {
          goto LABEL_31;
        }

        ++v55;
        sub_1001150A8(v10, type metadata accessor for DeviceSupportInformationRecord);
        if (v15 == v55)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_34:
      swift_once();
    }
  }

  sub_1000F29F8();
  swift_allocError();
  *v38 = 0;
  (a2)();
LABEL_12:
}

void sub_10010B838(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1000F29F8();
    swift_allocError();
    *v18 = 0;
    a2();
LABEL_13:

    return;
  }

  v8 = Strong;
  v9 = [a4 bluetoothAddress];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
LABEL_10:
    static os_log_type_t.error.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100226C80;
    v21 = [a4 bluetoothAddress];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v20 + 56) = &type metadata for String;
    v25 = sub_1000EE954();
    *(v20 + 64) = v25;
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    v26 = a4;
    v27 = [v26 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v25;
    *(v20 + 72) = v28;
    *(v20 + 80) = v30;
    os_log(_:dso:log:_:_:)();

    sub_1000F29F8();
    swift_allocError();
    *v31 = 1;
    a2();

    goto LABEL_13;
  }

  v14 = [a4 bluetoothAddress];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == 0xD000000000000011 && 0x8000000100267AA0 == v17)
  {

    goto LABEL_10;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_10;
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100226100;
  v33 = a4;
  v34 = [v33 description];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_1000EE954();
  *(v32 + 32) = v35;
  *(v32 + 40) = v37;
  os_log(_:dso:log:_:_:)();

  sub_100103934();
  sub_1001ADC50(v33, a2, a3);
}

uint64_t sub_10010BC8C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100226100;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1000EE954();
    *(v11 + 32) = a4;
    *(v11 + 40) = a5;

    os_log(_:dso:log:_:_:)();

    sub_100103934();
    sub_1001A55A4(a4, a5, 0xD00000000000001ELL, 0x80000001002671E0, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v13 = 0;
    a2();
  }
}

uint64_t sub_10010BE74(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v25 = *(v14 - 8);
  v26 = v14;
  v15 = *(v25 + 64);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v5 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a1;
  *(v20 + 48) = a2;
  aBlock[4] = sub_100114E20;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BCF38;
  v21 = _Block_copy(aBlock);
  v22 = v18;

  v23 = a1;
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v27 + 8))(v13, v10);
  (*(v25 + 8))(v17, v26);
}

uint64_t sub_10010C194(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v10 = Strong;
  sub_100103934();
  sub_1001B538C(a4, a5 & 1, a2, a3);
}

uint64_t sub_10010C2EC(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v22 = *(v12 - 8);
  v23 = v12;
  v13 = *(v22 + 64);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a1;
  aBlock[4] = sub_100114E10;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BCEE8;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v24 + 8))(v11, v8);
  (*(v22 + 8))(v15, v23);
}

uint64_t sub_10010C604(uint64_t a1, uint64_t (*a2)(void), void *a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v8 = Strong;
  sub_100103934();
  sub_1001B6BA8(a4 & 1, a2, a3);
}

void sub_10010C760(uint64_t a1, void (*a2)(uint64_t, unint64_t))
{
  v3 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100103934();
    sub_100194630(v6);

    v9 = type metadata accessor for LegacyMagicPairingSettingsRecords();
    if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
    {
      sub_1000EEE6C(v6, &qword_1002F9D90, &qword_100227B30);
      static os_log_type_t.default.getter();
      if (qword_1002F7AE0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      a2(0, 0xF000000000000000);
    }

    else
    {
      v10 = &v6[*(v9 + 20)];
      v11 = *v10;
      v12 = v10[1];
      sub_1000EE9F4(*v10, v12);
      sub_1001150A8(v6, type metadata accessor for LegacyMagicPairingSettingsRecords);
      static os_log_type_t.default.getter();
      if (qword_1002F7AE0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100226100;
      sub_1000EE9F4(v11, v12);
      v14 = Data.description.getter();
      v16 = v15;
      sub_1000EF870(v11, v12);
      *(v13 + 56) = &type metadata for String;
      *(v13 + 64) = sub_1000EE954();
      *(v13 + 32) = v14;
      *(v13 + 40) = v16;
      os_log(_:dso:log:_:_:)();

      sub_1000EE9F4(v11, v12);
      a2(v11, v12);
      sub_1000EF870(v11, v12);
      sub_1000EF870(v11, v12);
    }
  }

  else
  {
    a2(0, 0xF000000000000000);
  }
}

void sub_10010CAE4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = type metadata accessor for MagicPairingSettingsRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a2();
    return;
  }

  v16 = Strong;
  v29 = a3;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v31 = _swiftEmptyArrayStorage;
  sub_100103934();
  v17 = [objc_opt_self() isFirstUnlocked];
  v30 = a2;
  if (v17)
  {
    sub_100192340();
    if (qword_1002F7A00 != -1)
    {
      swift_once();
    }

    v18 = sub_1000EE91C(v10, qword_100300BA8);
    (*(v11 + 16))(v14, v18, v10);
    v19 = sub_10018C984(v14);

    (*(v11 + 8))(v14, v10);
    v20 = v19[2];
    if (v20)
    {
LABEL_8:
      v21 = v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v22 = *(v6 + 72);
      do
      {
        sub_100115124(v21, v9, type metadata accessor for MagicPairingSettingsRecord);
        sub_10010CFB8();
        sub_1001150A8(v9, type metadata accessor for MagicPairingSettingsRecord);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 += v22;
        --v20;
      }

      while (v20);
      v24 = v31;

      goto LABEL_18;
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v19 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();

    v20 = _swiftEmptyArrayStorage[2];
    if (v20)
    {
      goto LABEL_8;
    }
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_18:
  static os_log_type_t.debug.getter();
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100226100;
  sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
  v26 = Array.description.getter();
  v28 = v27;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_1000EE954();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  os_log(_:dso:log:_:_:)();

  (v30)(v24);
}

id sub_10010CFB8()
{
  v1 = type metadata accessor for MagicPairingSettingsRecord();
  v2 = (v0 + v1[6]);
  v3 = *v2;
  v4 = v2[1];
  v5 = objc_allocWithZone(BTMagicPairingSettings);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithBluetoothAddress:v6];

  v8 = (v0 + v1[13]);
  v9 = *v8;
  v10 = v8[1];
  v11 = String._bridgeToObjectiveC()();
  [v7 setProductID:v11];

  v12 = (v0 + v1[14]);
  v13 = *v12;
  v14 = v12[1];
  v15 = String._bridgeToObjectiveC()();
  [v7 setVendorID:v15];

  v16 = (v0 + v1[7]);
  v17 = *v16;
  v18 = v16[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v7 setMasterKey:isa];

  v20 = (v0 + v1[8]);
  v21 = *v20;
  v22 = v20[1];
  v23 = Data._bridgeToObjectiveC()().super.isa;
  [v7 setMasterHint:v23];

  v24 = (v0 + v1[9]);
  v25 = *v24;
  v26 = v24[1];
  v27 = Data._bridgeToObjectiveC()().super.isa;
  [v7 setAccessoryKey:v27];

  v28 = (v0 + v1[10]);
  v29 = *v28;
  v30 = v28[1];
  v31 = Data._bridgeToObjectiveC()().super.isa;
  [v7 setAccessoryHint:v31];

  v32 = (v0 + v1[15]);
  v33 = *v32;
  v34 = v32[1];
  v35 = String._bridgeToObjectiveC()();
  [v7 setButtonModes:v35];

  v36 = (v0 + v1[16]);
  v37 = *v36;
  v38 = v36[1];
  v39 = String._bridgeToObjectiveC()();
  [v7 setColor:v39];

  v40 = (v0 + v1[17]);
  v41 = *v40;
  v42 = v40[1];
  v43 = String._bridgeToObjectiveC()();
  [v7 setDeviceIDFeatureBitsV1:v43];

  v44 = (v0 + v1[18]);
  v45 = *v44;
  v46 = v44[1];
  v47 = String._bridgeToObjectiveC()();
  [v7 setDeviceIDFeatureBitsV2:v47];

  v48 = (v0 + v1[12]);
  v49 = *v48;
  v50 = v48[1];
  v51 = Data._bridgeToObjectiveC()().super.isa;
  [v7 setEncryptionKey:v51];

  v52 = (v0 + v1[11]);
  v53 = *v52;
  v54 = v52[1];
  v55 = Data._bridgeToObjectiveC()().super.isa;
  [v7 setIrk:v55];

  v56 = (v0 + v1[19]);
  v57 = *v56;
  v58 = v56[1];
  v59 = String._bridgeToObjectiveC()();
  [v7 setListeningServices:v59];

  v60 = (v0 + v1[20]);
  v61 = *v60;
  v62 = v60[1];
  v63 = String._bridgeToObjectiveC()();
  [v7 setListeningServicesV2:v63];

  v64 = (v0 + v1[22]);
  v65 = *v64;
  v66 = v64[1];
  v67 = String._bridgeToObjectiveC()();
  [v7 setOptimizedBatteryCharging:v67];

  v68 = (v0 + v1[23]);
  v69 = *v68;
  v70 = v68[1];
  v71 = String._bridgeToObjectiveC()();
  [v7 setOptimizedBatteryFullChargeDeadline:v71];

  v72 = (v0 + v1[24]);
  v73 = *v72;
  v74 = v72[1];
  v75 = String._bridgeToObjectiveC()();
  [v7 setRatchet:v75];

  v76 = (v0 + v1[25]);
  v77 = *v76;
  v78 = v76[1];
  v79 = String._bridgeToObjectiveC()();
  [v7 setReserved:v79];

  v80 = (v0 + v1[26]);
  v81 = *v80;
  v82 = v80[1];
  v83 = String._bridgeToObjectiveC()();
  [v7 setSettingsMask:v83];

  v84 = (v0 + v1[27]);
  v85 = *v84;
  v86 = v84[1];
  v87 = String._bridgeToObjectiveC()();
  [v7 setSupportedServices:v87];

  v88 = (v0 + v1[28]);
  v89 = *v88;
  v90 = v88[1];
  v91 = String._bridgeToObjectiveC()();
  [v7 setVersion:v91];

  return v7;
}

uint64_t sub_10010D434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v28 = a1;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v31 = *(v15 - 8);
  v32 = v15;
  v16 = *(v31 + 64);
  __chkstk_darwin(v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v7 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a3;
  v23 = v28;
  v22 = v29;
  v21[4] = a4;
  v21[5] = v23;
  v21[6] = a2;
  aBlock[4] = v22;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = v30;
  v24 = _Block_copy(aBlock);
  v25 = v19;

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v33 + 8))(v14, v11);
  (*(v31 + 8))(v18, v32);
}

void sub_10010D748(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v51 = v47 - v11;
  v50 = type metadata accessor for URL();
  v12 = *(v50 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v50);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MagicPairingSettingsRecord();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v48 = v47 - v22;
  __chkstk_darwin(v23);
  v49 = v47 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a2();
    return;
  }

  v52 = a3;
  v53 = a2;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100226100;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_1000EE954();
    *(v25 + 32) = a4;
    *(v25 + 40) = a5;

    os_log(_:dso:log:_:_:)();

    v26 = sub_100103934();
    if ([objc_opt_self() isFirstUnlocked])
    {
      sub_100192340();
      v47[1] = v26;
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v27 = v50;
      v28 = sub_1000EE91C(v50, qword_100300BA8);
      (*(v12 + 16))(v15, v28, v27);
      v29 = sub_10018C984(v15);

      (*(v12 + 8))(v15, v27);
      v15 = v29[2];
      if (v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v29 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();

      v15 = _swiftEmptyArrayStorage[2];
      if (v15)
      {
LABEL_12:
        v12 = 0;
        while (v12 < v29[2])
        {
          sub_100115124(v29 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v12, v20, type metadata accessor for MagicPairingSettingsRecord);
          v30 = (v20 + *(v16 + 24));
          v31 = *v30 == a4 && v30[1] == a5;
          if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v36 = v20;
            v37 = v48;
            sub_100114F1C(v36, v48, type metadata accessor for MagicPairingSettingsRecord);
            v38 = v37;
            v39 = v49;
            sub_100114F1C(v38, v49, type metadata accessor for MagicPairingSettingsRecord);
            v15 = sub_10010CFB8();
            sub_1001150A8(v39, type metadata accessor for MagicPairingSettingsRecord);
            goto LABEL_46;
          }

          ++v12;
          sub_1001150A8(v20, type metadata accessor for MagicPairingSettingsRecord);
          if (v15 == v12)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_41;
      }
    }

LABEL_20:

    v32 = *&Strong[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];

    v15 = v51;
    sub_100194630(v51);

    v33 = type metadata accessor for LegacyMagicPairingSettingsRecords();
    v34 = (*(*(v33 - 8) + 48))(v15, 1, v33);
    v35 = v53;
    if (v34 == 1)
    {
      sub_1000EEE6C(v15, &qword_1002F9D90, &qword_100227B30);
      v15 = 0;
      goto LABEL_47;
    }

    v20 = sub_10013B008();
    sub_1001150A8(v15, type metadata accessor for LegacyMagicPairingSettingsRecords);
    if (!(v20 >> 62))
    {
      v40 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        break;
      }

      goto LABEL_25;
    }

    v40 = _CocoaArrayWrapper.endIndex.getter();
    if (!v40)
    {
      break;
    }

LABEL_25:
    v12 = 0;
    v50 = v20 & 0xFFFFFFFFFFFFFF8;
    v51 = v20 & 0xC000000000000001;
    while (1)
    {
      if (v51)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v50 + 16))
        {
          goto LABEL_42;
        }

        v41 = *(v20 + 8 * v12 + 32);
      }

      v15 = v41;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v42 = [v41 bluetoothAddress];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      if (v43 == a4 && v45 == a5)
      {

LABEL_39:

        goto LABEL_46;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_39;
      }

      ++v12;
      if (v17 == v40)
      {
        goto LABEL_45;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

LABEL_45:

  v15 = 0;
LABEL_46:
  v35 = v53;
LABEL_47:
  (v35)(v15);
}

uint64_t sub_10010DEC0@<X0>(unint64_t a1@<X0>, void *a2@<X1>, id a3@<X2>, void *a4@<X8>)
{
  v52 = a4;
  v7 = sub_1000EE870(&qword_1002F9D90, &qword_100227B30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v54 = &v46 - v9;
  v49 = type metadata accessor for URL();
  v51 = *(v49 - 8);
  v10 = *(v51 + 64);
  __chkstk_darwin(v49);
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MagicPairingSettingsRecord();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v47 = &v46 - v18;
  __chkstk_darwin(v19);
  v48 = &v46 - v20;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100226100;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_1000EE954();
    v55 = a1;
    *(v21 + 32) = a1;
    *(v21 + 40) = a2;

    os_log(_:dso:log:_:_:)();

    v22 = sub_100103934();
    v23 = [objc_opt_self() isFirstUnlocked];
    v53 = a3;
    if (v23)
    {
      sub_100192340();
      v46 = v22;
      if (qword_1002F7A00 != -1)
      {
        swift_once();
      }

      v24 = v49;
      v25 = sub_1000EE91C(v49, qword_100300BA8);
      v26 = v50;
      v27 = v51;
      (*(v51 + 16))(v50, v25, v24);
      v28 = sub_10018C984(v26);

      (*(v27 + 8))(v26, v24);
    }

    else
    {
      static os_log_type_t.error.getter();
      if (qword_1002F7AE8 != -1)
      {
        swift_once();
      }

      v28 = _swiftEmptyArrayStorage;
      os_log(_:dso:log:_:_:)();
    }

    a1 = v55;
    a3 = v28[2];
    if (a3)
    {
      v29 = 0;
      while (v29 < v28[2])
      {
        sub_100115124(v28 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v29, v16, type metadata accessor for MagicPairingSettingsRecord);
        v30 = (v16 + *(v12 + 24));
        v31 = *v30 == a1 && v30[1] == a2;
        if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v36 = v47;
          sub_100114F1C(v16, v47, type metadata accessor for MagicPairingSettingsRecord);
          v37 = v36;
          v38 = v48;
          sub_100114F1C(v37, v48, type metadata accessor for MagicPairingSettingsRecord);
          a3 = sub_10010CFB8();
          result = sub_1001150A8(v38, type metadata accessor for MagicPairingSettingsRecord);
          goto LABEL_45;
        }

        ++v29;
        sub_1001150A8(v16, type metadata accessor for MagicPairingSettingsRecord);
        if (a3 == v29)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_18:

    v32 = *(v53 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore);

    v33 = v54;
    sub_100194630(v54);

    v34 = type metadata accessor for LegacyMagicPairingSettingsRecords();
    if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
    {
      result = sub_1000EEE6C(v33, &qword_1002F9D90, &qword_100227B30);
      goto LABEL_44;
    }

    a1 = sub_10013B008();
    sub_1001150A8(v33, type metadata accessor for LegacyMagicPairingSettingsRecords);
    if (!(a1 >> 62))
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        break;
      }

      goto LABEL_23;
    }

    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      break;
    }

LABEL_23:
    v16 = 0;
    v53 = a1 & 0xFFFFFFFFFFFFFF8;
    v54 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v54)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(v53 + 16))
        {
          goto LABEL_40;
        }

        v39 = *(a1 + 8 * v16 + 32);
      }

      a3 = v39;
      v40 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v41 = [v39 bluetoothAddress];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      if (v42 == v55 && v44 == a2)
      {

LABEL_37:

        goto LABEL_45;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_37;
      }

      ++v16;
      if (v40 == v13)
      {
        goto LABEL_43;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

LABEL_43:

LABEL_44:
  a3 = 0;
LABEL_45:
  *v52 = a3;
  return result;
}

uint64_t sub_10010E674@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = sub_100103934();
  v7 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices;
  swift_beginAccess();
  v8 = *(v6 + v7);

  LOBYTE(v6) = sub_10017D5B4(a1, a2, v8);

  *a3 = v6 & 1;
  return result;
}

void sub_10010E7E8(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v7 = type metadata accessor for MagicPairingSettingsRecord();
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  __chkstk_darwin(v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000EE870(&unk_1002F9C30, &qword_1002299A0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v68 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v70 = v19;
    v71 = v12;
    v69 = v11;
    v73 = a3;
    v74 = Strong;
    v72 = a2;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100226100;
      v22 = a4;
      v23 = [v22 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      *(v21 + 56) = &type metadata for String;
      v27 = sub_1000EE954();
      *(v21 + 64) = v27;
      *(v21 + 32) = v24;
      *(v21 + 40) = v26;
      os_log(_:dso:log:_:_:)();

      v28 = &selRef__sendConfigOverCBController_device_completion_;
      v29 = [v22 bluetoothAddress];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = HIBYTE(v32) & 0xF;
      if ((v32 & 0x2000000000000000) == 0)
      {
        v33 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (!v33)
      {
        goto LABEL_11;
      }

      v34 = [v22 bluetoothAddress];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      if (v35 == 0xD000000000000011 && 0x8000000100267AA0 == v37)
      {

        v28 = &selRef__sendConfigOverCBController_device_completion_;
LABEL_11:
        static os_log_type_t.error.getter();
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_100226C80;
        v41 = [v22 v28[475]];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        *(v40 + 56) = &type metadata for String;
        *(v40 + 64) = v27;
        *(v40 + 32) = v42;
        *(v40 + 40) = v44;
        v45 = v22;
        v46 = [v45 description];
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        *(v40 + 96) = &type metadata for String;
        *(v40 + 104) = v27;
        *(v40 + 72) = v47;
        *(v40 + 80) = v49;
        os_log(_:dso:log:_:_:)();

        sub_1000F29F8();
        swift_allocError();
        *v50 = 1;
        v72();

        goto LABEL_12;
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v28 = &selRef__sendConfigOverCBController_device_completion_;
      if (v39)
      {
        goto LABEL_11;
      }

      sub_100103934();
      v51 = [objc_opt_self() isFirstUnlocked];
      v52 = v71;
      if (v51)
      {
        sub_100192340();
        if (qword_1002F7A00 != -1)
        {
          swift_once();
        }

        v53 = v69;
        v54 = sub_1000EE91C(v69, qword_100300BA8);
        (*(v52 + 16))(v15, v54, v53);
        a4 = sub_10018C984(v15);

        (*(v52 + 8))(v15, v53);
        v15 = a4[2];
        if (!v15)
        {
          goto LABEL_29;
        }
      }

      else
      {
        static os_log_type_t.error.getter();
        if (qword_1002F7AE8 != -1)
        {
          swift_once();
        }

        a4 = _swiftEmptyArrayStorage;
        os_log(_:dso:log:_:_:)();

        v15 = _swiftEmptyArrayStorage[2];
        if (!v15)
        {
LABEL_29:

          v65 = v70;
          (*(v75 + 56))(v70, 1, 1, v76);
LABEL_32:
          sub_1000EEE6C(v65, &unk_1002F9C30, &qword_1002299A0);
          v66 = v74;
          v67 = *&v74[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];

          sub_1001B78D8(v22, v72, v73);

          return;
        }
      }

      v55 = 0;
      while (v55 < a4[2])
      {
        sub_100115124(a4 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v55, v10, type metadata accessor for MagicPairingSettingsRecord);
        v56 = &v10[*(v76 + 24)];
        v57 = *v56;
        v58 = *(v56 + 1);
        v59 = [v22 bluetoothAddress];
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        if (v57 == v60 && v58 == v62)
        {

LABEL_31:

          v65 = v70;
          sub_100114F1C(v10, v70, type metadata accessor for MagicPairingSettingsRecord);
          (*(v75 + 56))(v65, 0, 1, v76);
          goto LABEL_32;
        }

        v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v64)
        {
          goto LABEL_31;
        }

        ++v55;
        sub_1001150A8(v10, type metadata accessor for MagicPairingSettingsRecord);
        if (v15 == v55)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_34:
      swift_once();
    }
  }

  sub_1000F29F8();
  swift_allocError();
  *v38 = 0;
  a2();
LABEL_12:
}

uint64_t sub_10010F01C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v27 = *(v14 - 8);
  v28 = v14;
  v15 = *(v27 + 64);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v6 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = a1;
  aBlock[4] = v25;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = v26;
  v21 = _Block_copy(aBlock);
  v22 = v18;

  v23 = a1;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v29 + 8))(v13, v10);
  (*(v27 + 8))(v17, v28);
}

void sub_10010F324(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1000F29F8();
    swift_allocError();
    *v18 = 0;
    a2();
LABEL_13:

    return;
  }

  v8 = Strong;
  v9 = [a4 bluetoothAddress];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
LABEL_10:
    static os_log_type_t.error.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100226C80;
    v21 = [a4 bluetoothAddress];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v20 + 56) = &type metadata for String;
    v25 = sub_1000EE954();
    *(v20 + 64) = v25;
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    v26 = a4;
    v27 = [v26 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v25;
    *(v20 + 72) = v28;
    *(v20 + 80) = v30;
    os_log(_:dso:log:_:_:)();

    sub_1000F29F8();
    swift_allocError();
    *v31 = 1;
    a2();

    goto LABEL_13;
  }

  v14 = [a4 bluetoothAddress];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == 0xD000000000000011 && 0x8000000100267AA0 == v17)
  {

    goto LABEL_10;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_10;
  }

  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100226100;
  v33 = a4;
  v34 = [v33 description];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_1000EE954();
  *(v32 + 32) = v35;
  *(v32 + 40) = v37;
  os_log(_:dso:log:_:_:)();

  sub_100103934();
  sub_1001B78D8(v33, a2, a3);
}

uint64_t sub_10010F750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v35 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v35);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = String._bridgeToObjectiveC()();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v44 = sub_100114CA0;
  v45 = v15;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_10010FC9C;
  v43 = &unk_1002BCC18;
  v16 = _Block_copy(&aBlock);

  [v4 removeAADeviceRecordWithBluetoothAddress:v14 completion:v16];
  _Block_release(v16);

  v17 = String._bridgeToObjectiveC()();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v44 = sub_100114CC8;
  v45 = v18;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_10010FC9C;
  v43 = &unk_1002BCC68;
  v19 = _Block_copy(&aBlock);

  [v4 removeAAProxCardsInfoWithBluetoothAddress:v17 completion:v19];
  _Block_release(v19);

  v20 = String._bridgeToObjectiveC()();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v44 = sub_100114CF0;
  v45 = v21;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_10010FC9C;
  v43 = &unk_1002BCCB8;
  v22 = _Block_copy(&aBlock);

  [v4 removeHMDeviceCloudRecordWithBluetoothAddress:v20 completion:v22];
  _Block_release(v22);

  v23 = *&v4[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue];
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v26 = v33;
  v27 = v34;
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v27;
  v25[5] = a1;
  v25[6] = a2;
  v44 = sub_100114D18;
  v45 = v25;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_1001742E0;
  v43 = &unk_1002BCD08;
  v28 = _Block_copy(&aBlock);

  v29 = v23;

  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  v30 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v38 + 8))(v9, v30);
  (*(v36 + 8))(v13, v37);
}

void sub_10010FC9C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10010FD08(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226C80;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000EE954();
    *(v5 + 32) = a2;
    *(v5 + 40) = a3;

    v6 = _convertErrorToNSError(_:)();
    *(v5 + 96) = sub_1000FA784(0, &qword_1002F7ED8, NSError_ptr);
    *(v5 + 104) = sub_100114D48();
    *(v5 + 72) = v6;
    os_log(_:dso:log:_:_:)();
  }

  return result;
}

uint64_t sub_10010FE60(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v19 = a8;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100226100;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000EE954();
    *(v16 + 32) = a4;
    *(v16 + 40) = a5;

    os_log(_:dso:log:_:_:)();

    sub_100103934();
    sub_1001A55A4(a4, a5, v19, a9, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v18 = 0;
    a2();
  }
}

uint64_t sub_100110050@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v19[0] = type metadata accessor for UUID();
  v1 = *(v19[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v19[0]);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v19 - v11;
  __chkstk_darwin(v13);
  v15 = v19 - v14;
  type metadata accessor for DeviceStore();
  sub_100174350();
  if (qword_1002F79E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000EE91C(v5, qword_100300B68);
  (*(v6 + 16))(v9, v16, v5);
  URL.path.getter();
  v17 = *(v6 + 8);
  v17(v9, v5);
  URL.appendingPathComponent(_:isDirectory:)();

  v17(v12, v5);
  if (qword_1002F79C8 != -1)
  {
    swift_once();
  }

  sub_1000F0254();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v1 + 8))(v4, v19[0]);
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v17(v12, v5);
  return (v17)(v15, v5);
}

uint64_t sub_10011046C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v28 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v4 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v15 + 16))(v17, v27, v14);
  v19 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 2) = v18;
  *(v20 + 3) = v21;
  *(v20 + 4) = a3;
  (*(v15 + 32))(&v20[v19], v17, v14);
  aBlock[4] = sub_100114BF0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002BCBC8;
  v22 = _Block_copy(aBlock);
  v23 = v26;

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v31 + 8))(v9, v6);
  (*(v29 + 8))(v13, v30);
}

uint64_t sub_10011084C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v25 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v25[1] = static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100226C80;
    sub_100103934();
    sub_10019493C(v10);

    v14 = type metadata accessor for SoundProfileRecord();
    v15 = (*(*(v14 - 8) + 48))(v10, 1, v14);
    sub_1000EEE6C(v10, &qword_1002F84F8, &unk_1002299F0);
    v16 = sub_1000EE954();
    v17 = v16;
    v18 = 0x676E697461647055;
    if (v15 == 1)
    {
      v18 = 0x676E69646441;
    }

    v19 = 0xE800000000000000;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = v16;
    if (v15 == 1)
    {
      v19 = 0xE600000000000000;
    }

    *(v13 + 32) = v18;
    *(v13 + 40) = v19;
    type metadata accessor for URL();
    sub_100114C58(&unk_1002F9C00, &type metadata accessor for URL);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = v17;
    *(v13 + 72) = v20;
    *(v13 + 80) = v21;
    os_log(_:dso:log:_:_:)();

    v22 = *&v12[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];

    sub_1001B9F44(a4, a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v24 = 0;
    (a2)();
  }
}

void sub_100110C8C(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v5 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for SoundProfileRecord();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_100103934();

    if (IsAppleInternalBuild())
    {
      v16 = [objc_opt_self() standardUserDefaults];
      v17 = String._bridgeToObjectiveC()();
      v18 = [v16 BOOLForKey:v17];

      if (v18)
      {
        sub_1001111B0(a2, a3);
LABEL_9:

        return;
      }
    }

    v19 = *&v15[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];

    sub_10019493C(v8);

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1000EEE6C(v8, &qword_1002F84F8, &unk_1002299F0);
      static os_log_type_t.default.getter();
      if (qword_1002F7AE0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      sub_1000F29F8();
      v20 = swift_allocError();
      *v21 = 3;
      a2(0, v20);

      goto LABEL_9;
    }

    sub_100114F1C(v8, v13, type metadata accessor for SoundProfileRecord);
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100226100;
    v25 = sub_1000FAF14();
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_1000EE954();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    os_log(_:dso:log:_:_:)();

    v28 = *(v9 + 24);
    v29 = objc_allocWithZone(BTCloudSoundProfileRecord);
    URL._bridgeToObjectiveC()(v30);
    v32 = v31;
    v33 = [v29 initWithFileURL:v31];

    a2(v33, 0);
    sub_1001150A8(v13, type metadata accessor for SoundProfileRecord);
  }

  else
  {
    sub_1000F29F8();
    v22 = swift_allocError();
    *v23 = 0;
    a2(0, v22);
  }
}

void sub_100111140(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1001111D8(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100103934();
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;

    sub_1001BBE68(sub_100114BDC, v7);
  }

  else
  {
    sub_1000F29F8();
    v9 = swift_allocError();
    *v10 = 0;
    a2(0, v9);
  }
}

void sub_10011134C(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100226100;
    v6 = v4;
    v7 = [v6 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1000EE954();
    *(v5 + 32) = v8;
    *(v5 + 40) = v10;
    os_log(_:dso:log:_:_:)();

    v13 = v6;
    a2(a1, 0);
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_1000F29F8();
    v11 = swift_allocError();
    *v12 = 3;
    a2(0, v11);
  }
}

void sub_1001115FC(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  v5 = sub_1000EE870(&qword_1002F84F8, &unk_1002299F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for SoundProfileRecord();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_100103934();
    sub_10019493C(v8);

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1000EEE6C(v8, &qword_1002F84F8, &unk_1002299F0);
      static os_log_type_t.default.getter();
      if (qword_1002F7AE0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      (a2)(0);
    }

    else
    {
      sub_100114F1C(v8, v13, type metadata accessor for SoundProfileRecord);
      static os_log_type_t.default.getter();
      if (qword_1002F7AE0 != -1)
      {
        swift_once();
      }

      sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100226100;
      v18 = sub_1000FAF14();
      v20 = v19;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = sub_1000EE954();
      *(v17 + 32) = v18;
      *(v17 + 40) = v20;
      os_log(_:dso:log:_:_:)();

      v21 = *&v15[OBJC_IVAR____TtC15audioaccessoryd13DeviceManager____lazy_storage___deviceStore];

      sub_1001BB488(a2, a3);

      sub_1001150A8(v13, type metadata accessor for SoundProfileRecord);
    }
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v16 = 0;
    a2();
  }
}

uint64_t sub_100111A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v25 = *(v13 - 8);
  v26 = v13;
  v14 = *(v25 + 64);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v5 + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = v24;
  v20 = _Block_copy(aBlock);
  v21 = v17;

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100114C58(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v27 + 8))(v12, v9);
  (*(v25 + 8))(v16, v26);
}

uint64_t sub_100111D34(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void (*)(void), uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    static os_log_type_t.default.getter();
    if (qword_1002F7AE0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100103934();
    a4(a2, a3);
  }

  else
  {
    sub_1000F29F8();
    swift_allocError();
    *v10 = 0;
    a2();
  }
}

char *sub_100111EA0()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100103934();
  v6 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue;
  v7 = *&v5[OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue];
  *v4 = v7;
  (*(v1 + 104))(v4, enum case for DispatchPredicate.notOnQueue(_:), v0);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v4, v0);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v9 = *&v5[v6];
  sub_1000EE870(&qword_1002F84F0, &unk_100227B20);
  OS_dispatch_queue.sync<A>(execute:)();

  v5 = v17;
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226100;
  v17 = v5;
  v11 = v5;
  v12 = String.init<A>(describing:)();
  v14 = v13;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_1000EE954();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  os_log(_:dso:log:_:_:)();

  return v5;
}

uint64_t sub_10011436C(char a1, char a2)
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100226100;
  *(v5 + 56) = &type metadata for Bool;
  *(v5 + 64) = &protocol witness table for Bool;
  *(v5 + 32) = a1 & 1;
  os_log(_:dso:log:_:_:)();

  v6 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v8 = *(v2 + v6);
  if (v8 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v9 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return result;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v8 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v11 respondsToSelector:"accountStatusUpdateWithAvailable:forced:"])
      {
        [v11 accountStatusUpdateWithAvailable:a1 & 1 forced:a2 & 1];
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10011455C()
{
  static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100226100;
  sub_1000FA784(0, &qword_1002F84E8, BTMagicPairingSettings_ptr);
  v2 = Array.description.getter();
  v4 = v3;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_1000EE954();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  os_log(_:dso:log:_:_:)();

  v5 = OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_subscribers;
  result = swift_beginAccess();
  v7 = *(v0 + v5);
  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v7 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v10 respondsToSelector:"magicPairingRecordsRemovedWithRecords:"])
      {
        swift_unknownObjectRetain();
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v10 magicPairingRecordsRemovedWithRecords:isa];
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_100114798(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for MagicPairingSettingsRecord() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = (a2 + *(type metadata accessor for DeviceRecord() + 24));
  if (v4 == *v6 && v5 == v6[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10011481C(uint64_t a1)
{
  v2 = type metadata accessor for CloudCoordinatorConfiguration();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100192340();
  v7 = *(v6 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  v14 = v6;
  v15 = a1;
  OS_dispatch_queue.sync<A>(execute:)();

  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100226100;
  sub_100115124(a1, v5, type metadata accessor for CloudCoordinatorConfiguration);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_1000EE954();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100114B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100114BF0()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_10011084C(v2, v3, v4, v5);
}

uint64_t sub_100114C58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100114D48()
{
  result = qword_1002F8508;
  if (!qword_1002F8508)
  {
    sub_1000FA784(255, &qword_1002F7ED8, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8508);
  }

  return result;
}

uint64_t sub_100114F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100114F90(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100115030(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1001150A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100115124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100115260(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2B2C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceManager.DeviceManagerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeviceManager.DeviceManagerError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AudioAccessoryFeatures(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AudioAccessoryFeatures(_WORD *result, int a2, int a3)
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

unint64_t sub_100115500()
{
  result = qword_1002F8538;
  if (!qword_1002F8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8538);
  }

  return result;
}

unint64_t sub_10011555C()
{
  result = qword_1002F8540;
  if (!qword_1002F8540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8540);
  }

  return result;
}

unint64_t sub_1001155B0()
{
  result = qword_1002F8548;
  if (!qword_1002F8548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F8548);
  }

  return result;
}

uint64_t *DarwinNotificationManager.shared.unsafeMutableAddressor()
{
  if (qword_1002F79F8 != -1)
  {
    swift_once();
  }

  return &static DarwinNotificationManager.shared;
}

id sub_1001157AC()
{
  result = [objc_allocWithZone(type metadata accessor for DarwinNotificationManager()) init];
  static DarwinNotificationManager.shared = result;
  return result;
}

id static DarwinNotificationManager.shared.getter()
{
  if (qword_1002F79F8 != -1)
  {
    swift_once();
  }

  v1 = static DarwinNotificationManager.shared;

  return v1;
}

uint64_t DarwinNotificationManager.registerHelper(helper:)()
{
  v1 = OBJC_IVAR____TtC15audioaccessoryd25DarwinNotificationManager_helpers;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + v1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v3 = *((*(v0 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t DarwinNotificationManager.unregisterHelper(helper:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15audioaccessoryd25DarwinNotificationManager_helpers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v14 = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
LABEL_19:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v12 = v3;
    v13 = v1;
    v3 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v1 = v13;
          v9 = v14;
          v3 = v12;
          goto LABEL_17;
        }
      }

      else
      {
        if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v6 = *(v4 + 8 * v3 + 32);

        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_14;
        }
      }

      if (v6 == a1)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v8 = v14[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v14;
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v7 == v5)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_17:

  v10 = *(v1 + v3);
  *(v1 + v3) = v9;
}

Swift::Void __swiftcall DarwinNotificationManager.setUp()()
{
  v1 = v0;
  sub_100115C10();
  v2 = static OS_dispatch_queue.main.getter();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_1001152B4;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100115F4C;
  v6[3] = &unk_1002BDA80;
  v4 = _Block_copy(v6);
  v5 = v1;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, v4);
  _Block_release(v4);
}

unint64_t sub_100115C10()
{
  result = qword_1002F9700;
  if (!qword_1002F9700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002F9700);
  }

  return result;
}

uint64_t sub_100115C5C(void *a1, uint64_t a2)
{
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    v4 = String.init(cString:)();
    v6 = v5;
    static os_log_type_t.default.getter();
    if (qword_1002F7AC8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100226100;
    *(v7 + 56) = &type metadata for String;
    v30 = sub_1000EE954();
    *(v7 + 64) = v30;
    *(v7 + 32) = v4;
    *(v7 + 40) = v6;

    os_log(_:dso:log:_:_:)();

    v8 = OBJC_IVAR____TtC15audioaccessoryd25DarwinNotificationManager_helpers;
    result = swift_beginAccess();
    v9 = *(a2 + v8);
    if (v9 >> 62)
    {
      if (v9 < 0)
      {
        v28 = *(a2 + v8);
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      v10 = result;
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_6:
        if (v10 < 1)
        {
          __break(1u);
          return result;
        }

        v11 = v9 & 0xC000000000000001;

        v12 = 0;
        v29 = v9 & 0xC000000000000001;
        do
        {
          if (v11)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v13 = *(v9 + 8 * v12 + 32);
          }

          v14 = String._bridgeToObjectiveC()();
          v15 = *(v13 + 16);
          if (*(v15 + 16))
          {
            v16 = *(v13 + 16);

            v17 = sub_1000F8CD4(v14);
            if (v18)
            {
              v19 = *(v15 + 56) + 16 * v17;
              v20 = v6;
              v21 = *v19;
              v22 = *(v19 + 8);

              static os_log_type_t.default.getter();
              v23 = v9;
              v24 = swift_allocObject();
              *(v24 + 16) = xmmword_100226100;
              v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(v24 + 56) = &type metadata for String;
              *(v24 + 64) = v30;
              *(v24 + 32) = v25;
              *(v24 + 40) = v26;
              os_log(_:dso:log:_:_:)();
              v9 = v23;

              v21(v27);
              v6 = v20;
              v11 = v29;
            }

            else
            {
            }
          }

          ++v12;
        }

        while (v10 != v12);
      }
    }
  }

  return result;
}

uint64_t sub_100115F4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100115FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id DarwinNotificationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DarwinNotificationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100116138()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v7, qword_100300BA8);
  sub_1000EE91C(v4, qword_100300BA8);
  URL.init(string:)();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

id sub_100116308()
{
  v1 = v0;
  v122 = type metadata accessor for Date();
  v2 = *(v122 - 8);
  v3 = v2[8];
  __chkstk_darwin(v122 - 8);
  v115 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v115 - v10;
  __chkstk_darwin(v12);
  v14 = &v115 - v13;
  __chkstk_darwin(v15);
  v17 = &v115 - v16;
  v18 = objc_autoreleasePoolPush();
  v19 = type metadata accessor for MagicPairingSettingsRecord();
  isa = sub_100169D38(*(v1 + v19[5]), *(v1 + v19[5] + 8));
  v118 = v8;
  v119 = v11;
  if (!isa)
  {
    isa = sub_1000F8100().super.isa;
  }

  v121 = isa;
  v123 = isa;
  sub_10011A7B0(&v123);
  objc_autoreleasePoolPop(v18);
  v123 = 0;
  v124 = 0xE000000000000000;
  _StringGuts.grow(_:)(436);
  v21._countAndFlagsBits = 0xD00000000000001DLL;
  v21._object = 0x8000000100269440;
  String.append(_:)(v21);
  type metadata accessor for UUID();
  sub_100121ABC(&unk_1002F7BC0, &type metadata accessor for UUID);
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  String.append(_:)(*(v1 + v19[6]));
  v24._countAndFlagsBits = 0x203A646970202CLL;
  v24._object = 0xE700000000000000;
  String.append(_:)(v24);
  String.append(_:)(*(v1 + v19[13]));
  v25._countAndFlagsBits = 0x203A646976202CLL;
  v25._object = 0xE700000000000000;
  String.append(_:)(v25);
  String.append(_:)(*(v1 + v19[14]));
  v26._object = 0xEE00203A746E6948;
  v26._countAndFlagsBits = 0x72657473616D202CLL;
  String.append(_:)(v26);
  v27._countAndFlagsBits = Data.hexString.getter(*(v1 + v19[8]), *(v1 + v19[8] + 8));
  String.append(_:)(v27);

  v28._object = 0xED0000203A79654BLL;
  v28._countAndFlagsBits = 0x72657473616D202CLL;
  String.append(_:)(v28);
  v29._countAndFlagsBits = Data.hexString.getter(*(v1 + v19[7]), *(v1 + v19[7] + 8));
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0xD000000000000011;
  v30._object = 0x8000000100269460;
  String.append(_:)(v30);
  v31._countAndFlagsBits = Data.hexString.getter(*(v1 + v19[10]), *(v1 + v19[10] + 8));
  String.append(_:)(v31);

  v32._object = 0x8000000100269480;
  v32._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v32);
  v33._countAndFlagsBits = Data.hexString.getter(*(v1 + v19[9]), *(v1 + v19[9] + 8));
  String.append(_:)(v33);

  v34._countAndFlagsBits = 0xD000000000000011;
  v34._object = 0x80000001002694A0;
  String.append(_:)(v34);
  v35._countAndFlagsBits = Data.hexString.getter(*(v1 + v19[12]), *(v1 + v19[12] + 8));
  String.append(_:)(v35);

  v36._countAndFlagsBits = 0x203A6B7269202CLL;
  v36._object = 0xE700000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = Data.hexString.getter(*(v1 + v19[11]), *(v1 + v19[11] + 8));
  String.append(_:)(v37);

  v38._countAndFlagsBits = 0x6E6F74747562202CLL;
  v38._object = 0xEF203A7365646F4DLL;
  String.append(_:)(v38);
  String.append(_:)(*(v1 + v19[15]));
  v39._countAndFlagsBits = 0x3A726F6C6F63202CLL;
  v39._object = 0xE900000000000020;
  String.append(_:)(v39);
  String.append(_:)(*(v1 + v19[16]));
  v40._countAndFlagsBits = 0xD000000000000019;
  v40._object = 0x80000001002694C0;
  String.append(_:)(v40);
  String.append(_:)(*(v1 + v19[17]));
  v41._countAndFlagsBits = 0xD000000000000019;
  v41._object = 0x80000001002694E0;
  String.append(_:)(v41);
  String.append(_:)(*(v1 + v19[18]));
  v42._object = 0x8000000100269500;
  v42._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v42);
  String.append(_:)(*(v1 + v19[21]));
  v43._countAndFlagsBits = 0xD000000000000015;
  v43._object = 0x8000000100269520;
  String.append(_:)(v43);
  String.append(_:)(*(v1 + v19[19]));
  v44._countAndFlagsBits = 0xD000000000000017;
  v44._object = 0x8000000100269540;
  String.append(_:)(v44);
  String.append(_:)(*(v1 + v19[20]));
  v45._countAndFlagsBits = 0x656863746172202CLL;
  v45._object = 0xEB00000000203A74;
  String.append(_:)(v45);
  String.append(_:)(*(v1 + v19[24]));
  v46._object = 0x8000000100269560;
  v46._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v46);
  String.append(_:)(*(v1 + v19[26]));
  v47._countAndFlagsBits = 0xD000000000000015;
  v47._object = 0x8000000100269580;
  String.append(_:)(v47);
  String.append(_:)(*(v1 + v19[27]));
  v48._countAndFlagsBits = 0x6F6973726576202CLL;
  v48._object = 0xEB00000000203A6ELL;
  String.append(_:)(v48);
  String.append(_:)(*(v1 + v19[28]));
  v49._countAndFlagsBits = 0xD00000000000001CLL;
  v49._object = 0x80000001002695A0;
  String.append(_:)(v49);
  String.append(_:)(*(v1 + v19[22]));
  v50._countAndFlagsBits = 0xD000000000000026;
  v50._object = 0x80000001002695C0;
  String.append(_:)(v50);
  String.append(_:)(*(v1 + v19[23]));
  v51._countAndFlagsBits = 2604;
  v51._object = 0xE200000000000000;
  String.append(_:)(v51);
  v116 = v123;
  v117 = v124;
  v123 = 0;
  v124 = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v52._countAndFlagsBits = 0x7461657263202020;
  v52._object = 0xEE00203A6E4F6465;
  String.append(_:)(v52);
  v53 = [v121 creationDate];
  if (v53)
  {
    v54 = v53;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = v2[7];
    v56 = v14;
    v57 = 0;
  }

  else
  {
    v55 = v2[7];
    v56 = v14;
    v57 = 1;
  }

  v58 = v122;
  v55(v56, v57, 1, v122);
  sub_1000EED5C(v14, v17);
  v59 = v2[6];
  v60 = v59(v17, 1, v58);
  v120 = v2;
  if (v60)
  {
    sub_1000EEE6C(v17, &qword_1002F7EF0, &unk_100226C90);
    v61 = v19[30];
    v62 = objc_opt_self();
    v63 = Date._bridgeToObjectiveC()().super.isa;
    v64 = [v62 localizedStringFromDate:v63 dateStyle:2 timeStyle:2];

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
  }

  else
  {
    v68 = v2[2];
    v69 = v115;
    v68(v115, v17, v58);
    sub_1000EEE6C(v17, &qword_1002F7EF0, &unk_100226C90);
    v70 = objc_opt_self();
    v71 = Date._bridgeToObjectiveC()().super.isa;
    v72 = [v70 localizedStringFromDate:v71 dateStyle:2 timeStyle:2];

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v73;

    (v120[1])(v69, v122);
  }

  v74._countAndFlagsBits = v65;
  v74._object = v67;
  String.append(_:)(v74);

  v75._countAndFlagsBits = 0x696669646F6D202CLL;
  v75._object = 0xEE00203A6E4F6465;
  String.append(_:)(v75);
  v76 = v121;
  v77 = [v121 modificationDate];
  if (v77)
  {
    v78 = v118;
    v79 = v77;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = 0;
    v81 = v122;
  }

  else
  {
    v80 = 1;
    v81 = v122;
    v78 = v118;
  }

  v82 = v120;
  v55(v78, v80, 1, v81);
  v83 = v119;
  sub_1000EED5C(v78, v119);
  if (v59(v83, 1, v81))
  {
    sub_1000EEE6C(v83, &qword_1002F7EF0, &unk_100226C90);
    v84 = v19[30];
    v85 = objc_opt_self();
    v86 = Date._bridgeToObjectiveC()().super.isa;
    v87 = [v85 localizedStringFromDate:v86 dateStyle:2 timeStyle:2];

    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;
  }

  else
  {
    v91 = v115;
    (v82[2])(v115, v83, v81);
    sub_1000EEE6C(v83, &qword_1002F7EF0, &unk_100226C90);
    v92 = objc_opt_self();
    v93 = Date._bridgeToObjectiveC()().super.isa;
    v94 = [v92 localizedStringFromDate:v93 dateStyle:2 timeStyle:2];

    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v95;

    (v82[1])(v91, v81);
  }

  v96._countAndFlagsBits = v88;
  v96._object = v90;
  String.append(_:)(v96);

  v97._object = 0xEF203A7962206465;
  v97._countAndFlagsBits = 0x696669646F6D202CLL;
  String.append(_:)(v97);
  v98 = [v76 modifiedByDevice];
  if (v98)
  {
    v99 = v98;
    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v101;
  }

  else
  {
    v102 = 0xE200000000000000;
    v100 = 15932;
  }

  v103._countAndFlagsBits = v100;
  v103._object = v102;
  String.append(_:)(v103);

  v104._countAndFlagsBits = 0x203A67617465202CLL;
  v104._object = 0xE800000000000000;
  String.append(_:)(v104);
  v105 = [v76 recordChangeTag];
  if (v105)
  {
    v106 = v105;
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;
  }

  else
  {
    v109 = 0xE200000000000000;
    v107 = 15932;
  }

  v110._countAndFlagsBits = v107;
  v110._object = v109;
  String.append(_:)(v110);

  v111 = v123;
  v112 = v124;
  v123 = v116;
  v124 = v117;

  v113._countAndFlagsBits = v111;
  v113._object = v112;
  String.append(_:)(v113);

  return v123;
}

uint64_t sub_100116EB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MagicPairingSettingsRecord();
  *(a3 + v6[5]) = xmmword_100227DA0;
  v7 = type metadata accessor for UUID();
  v149 = *(v7 - 8);
  (*(v149 + 16))(a3, a1, v7);
  v8 = [a2 bluetoothAddress];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = (a3 + v6[6]);
  *v12 = v9;
  v12[1] = v11;
  v13 = [a2 productID];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = (a3 + v6[13]);
  *v18 = v15;
  v18[1] = v17;
  v19 = [a2 vendorID];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = (a3 + v6[14]);
  *v24 = v21;
  v24[1] = v23;
  v25 = [a2 masterHint];
  if (v25)
  {
    v26 = v25;
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xC000000000000000;
  }

  v30 = (a3 + v6[8]);
  *v30 = v27;
  v30[1] = v29;
  v31 = [a2 masterKey];
  if (v31)
  {
    v32 = v31;
    v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0xC000000000000000;
  }

  v36 = (a3 + v6[7]);
  *v36 = v33;
  v36[1] = v35;
  v37 = [a2 accessoryHint];
  if (v37)
  {
    v38 = v37;
    v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0xC000000000000000;
  }

  v42 = (a3 + v6[10]);
  *v42 = v39;
  v42[1] = v41;
  v43 = [a2 accessoryKey];
  if (v43)
  {
    v44 = v43;
    v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0xC000000000000000;
  }

  v48 = (a3 + v6[9]);
  *v48 = v45;
  v48[1] = v47;
  v49 = [a2 buttonModes];
  if (v49)
  {
    v50 = v49;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0xE000000000000000;
  }

  v54 = (a3 + v6[15]);
  *v54 = v51;
  v54[1] = v53;
  v55 = [a2 color];
  if (v55)
  {
    v56 = v55;
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0xE000000000000000;
  }

  v60 = (a3 + v6[16]);
  *v60 = v57;
  v60[1] = v59;
  v61 = [a2 deviceIDFeatureBitsV1];
  if (v61)
  {
    v62 = v61;
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0xE000000000000000;
  }

  v66 = (a3 + v6[17]);
  *v66 = v63;
  v66[1] = v65;
  v67 = [a2 deviceIDFeatureBitsV2];
  if (v67)
  {
    v68 = v67;
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0xE000000000000000;
  }

  v72 = (a3 + v6[18]);
  *v72 = v69;
  v72[1] = v71;
  v73 = [a2 encryptionKey];
  if (v73)
  {
    v74 = v73;
    v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;
  }

  else
  {
    v75 = 0;
    v77 = 0xC000000000000000;
  }

  v78 = (a3 + v6[12]);
  *v78 = v75;
  v78[1] = v77;
  v79 = [a2 irk];
  if (v79)
  {
    v80 = v79;
    v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;
  }

  else
  {
    v81 = 0;
    v83 = 0xC000000000000000;
  }

  v84 = (a3 + v6[11]);
  *v84 = v81;
  v84[1] = v83;
  v85 = [a2 listeningServices];
  if (v85)
  {
    v86 = v85;
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;
  }

  else
  {
    v87 = 0;
    v89 = 0xE000000000000000;
  }

  v90 = (a3 + v6[19]);
  *v90 = v87;
  v90[1] = v89;
  v91 = [a2 listeningServicesV2];
  if (v91)
  {
    v92 = v91;
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;
  }

  else
  {
    v93 = 0;
    v95 = 0xE000000000000000;
  }

  v96 = (a3 + v6[20]);
  *v96 = v93;
  v96[1] = v95;
  v97 = [a2 spatialAudio];
  if (v97)
  {
    v98 = v97;
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;
  }

  else
  {
    v99 = 0;
    v101 = 0xE000000000000000;
  }

  v102 = (a3 + v6[21]);
  *v102 = v99;
  v102[1] = v101;
  v103 = [a2 optimizedBatteryCharging];
  if (v103)
  {
    v104 = v103;
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;
  }

  else
  {
    v105 = 0;
    v107 = 0xE000000000000000;
  }

  v108 = (a3 + v6[22]);
  *v108 = v105;
  v108[1] = v107;
  v109 = [a2 optimizedBatteryFullChargeDeadline];
  if (v109)
  {
    v110 = v109;
    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;
  }

  else
  {
    v111 = 0;
    v113 = 0xE000000000000000;
  }

  v114 = (a3 + v6[23]);
  *v114 = v111;
  v114[1] = v113;
  v115 = [a2 ratchet];
  if (v115)
  {
    v116 = v115;
    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v119 = v118;
  }

  else
  {
    v117 = 0;
    v119 = 0xE000000000000000;
  }

  v120 = (a3 + v6[24]);
  *v120 = v117;
  v120[1] = v119;
  v121 = [a2 reserved];
  if (v121)
  {
    v122 = v121;
    v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v125 = v124;
  }

  else
  {
    v123 = 0;
    v125 = 0xE000000000000000;
  }

  v126 = (a3 + v6[25]);
  *v126 = v123;
  v126[1] = v125;
  v127 = [a2 settingsMask];
  if (v127)
  {
    v128 = v127;
    v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v131 = v130;
  }

  else
  {
    v129 = 0;
    v131 = 0xE000000000000000;
  }

  v132 = (a3 + v6[26]);
  *v132 = v129;
  v132[1] = v131;
  v133 = [a2 supportedServices];
  if (v133)
  {
    v134 = v133;
    v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v137 = v136;
  }

  else
  {
    v135 = 0;
    v137 = 0xE000000000000000;
  }

  v138 = (a3 + v6[27]);
  *v138 = v135;
  v138[1] = v137;
  v139 = [a2 version];
  if (v139)
  {
    v140 = v139;
    v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v143 = v142;
  }

  else
  {
    v141 = 0;
    v143 = 0xE000000000000000;
  }

  v144 = (a3 + v6[28]);
  *v144 = v141;
  v144[1] = v143;
  v145 = (a3 + v6[29]);
  *v145 = 0;
  v145[1] = 0xE000000000000000;
  v146 = a3 + v6[30];
  static Date.now.getter();

  v147 = *(v149 + 8);

  return v147(a1, v7);
}

uint64_t sub_100117628@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v231 = a2;
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v227 = &v213 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v228 = &v213 - v7;
  __chkstk_darwin(v8);
  v230 = &v213 - v9;
  v10 = type metadata accessor for Date();
  v233 = *(v10 - 8);
  v234 = v10;
  v11 = *(v233 + 64);
  __chkstk_darwin(v10);
  v226 = &v213 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v229 = &v213 - v14;
  v235 = type metadata accessor for UUID();
  v232 = *(v235 - 1);
  v15 = *(v232 + 64);
  __chkstk_darwin(v235);
  v17 = &v213 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000EE870(&qword_1002F8738, &qword_100227FF8);
  v236 = *(v18 - 8);
  v19 = *(v236 + 64);
  __chkstk_darwin(v18);
  v21 = &v213 - v20;
  v22 = type metadata accessor for MagicPairingSettingsRecord();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v213 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[4];
  sub_1000EF78C(a1, a1[3]);
  sub_100121A68();
  v27 = v237;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    return sub_1000EF824(a1);
  }

  v237 = v22;
  v224 = v25;
  v225 = a1;
  v240 = 1;
  v28 = sub_1000EF8C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v18;
  v222 = v28;
  v31 = v237;
  v32 = v224;
  v33 = &v224[v237[5]];
  *v33 = *v238;
  LOBYTE(v238[0]) = 0;
  sub_100121ABC(&unk_1002F8750, &type metadata accessor for UUID);
  v34 = v235;
  v35 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = v236;
  v221 = v33;
  (*(v232 + 32))(v32, v17, v34);
  LOBYTE(v238[0]) = 2;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v214 = 1;
  v38 = &v32[v31[6]];
  *v38 = v37;
  v38[1] = v39;
  LOBYTE(v238[0]) = 9;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v41)
  {
    v65 = v40;
  }

  else
  {
    v65 = 0;
  }

  if (v41)
  {
    v66 = v41;
  }

  else
  {
    v66 = 0xE000000000000000;
  }

  v67 = &v32[v31[13]];
  *v67 = v65;
  v67[1] = v66;
  LOBYTE(v238[0]) = 10;
  v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v69)
  {
    v70 = v68;
  }

  else
  {
    v70 = 0;
  }

  if (v69)
  {
    v71 = v69;
  }

  else
  {
    v71 = 0xE000000000000000;
  }

  v72 = &v32[v31[14]];
  *v72 = v70;
  v72[1] = v71;
  v240 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v74 = v238[1];
  v73 = v238[0];
  if (v238[1] >> 60 == 15)
  {
    v73 = 0;
    v74 = 0xC000000000000000;
  }

  v75 = &v32[v31[8]];
  *v75 = v73;
  *(v75 + 1) = v74;
  v240 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v77 = v238[1];
  v76 = v238[0];
  if (v238[1] >> 60 == 15)
  {
    v76 = 0;
    v77 = 0xC000000000000000;
  }

  v78 = &v32[v31[7]];
  *v78 = v76;
  *(v78 + 1) = v77;
  v240 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v223 = 0;
  v80 = v238[1];
  v79 = v238[0];
  if (v238[1] >> 60 == 15)
  {
    v79 = 0;
    v80 = 0xC000000000000000;
  }

  v81 = &v32[v237[10]];
  *v81 = v79;
  *(v81 + 1) = v80;
  v240 = 5;
  v82 = v223;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v223 = v82;
  if (v82)
  {
    (*(v36 + 8))(v35, v29);
    v215 = 0;
    v239 = 0;
    v219 = 0;
    v83 = 0;
    v84 = 0;
    v216 = 0;
    v218 = 0;
    v220 = 0;
    LODWORD(v221) = 0;
    LODWORD(v222) = 0;
    LODWORD(v226) = 0;
    LODWORD(v227) = 0;
    LODWORD(v228) = 0;
    LODWORD(v229) = 0;
    LODWORD(v230) = 0;
    LODWORD(v231) = 0;
    LODWORD(v236) = 0;
    v217 = 1;
  }

  else
  {
    v86 = v238[1];
    v85 = v238[0];
    if (v238[1] >> 60 == 15)
    {
      v85 = 0;
      v86 = 0xC000000000000000;
    }

    v87 = &v32[v237[9]];
    *v87 = v85;
    *(v87 + 1) = v86;
    LOBYTE(v238[0]) = 11;
    v88 = v29;
    v89 = v35;
    v90 = v223;
    v91 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v223 = v90;
    if (v90)
    {
      (*(v236 + 8))(v35, v29);
      v239 = 0;
      v219 = 0;
      v83 = 0;
      v84 = 0;
      v216 = 0;
      v218 = 0;
      v220 = 0;
      LODWORD(v221) = 0;
      LODWORD(v222) = 0;
      LODWORD(v226) = 0;
      LODWORD(v227) = 0;
      LODWORD(v228) = 0;
      LODWORD(v229) = 0;
      LODWORD(v230) = 0;
      LODWORD(v231) = 0;
      LODWORD(v236) = 0;
      v217 = 1;
      v215 = 1;
    }

    else
    {
      if (v92)
      {
        v93 = v91;
      }

      else
      {
        v93 = 0;
      }

      if (v92)
      {
        v94 = v92;
      }

      else
      {
        v94 = 0xE000000000000000;
      }

      v95 = v223;
      v96 = &v224[v237[15]];
      *v96 = v93;
      v96[1] = v94;
      LOBYTE(v238[0]) = 12;
      v97 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v223 = v95;
      if (v98)
      {
        v99 = v97;
      }

      else
      {
        v99 = 0;
      }

      if (v98)
      {
        v100 = v98;
      }

      else
      {
        v100 = 0xE000000000000000;
      }

      v101 = v223;
      v102 = &v224[v237[16]];
      *v102 = v99;
      v102[1] = v100;
      LOBYTE(v238[0]) = 13;
      v103 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v223 = v101;
      if (v104)
      {
        v105 = v103;
      }

      else
      {
        v105 = 0;
      }

      if (v104)
      {
        v106 = v104;
      }

      else
      {
        v106 = 0xE000000000000000;
      }

      v107 = v223;
      v108 = &v224[v237[17]];
      *v108 = v105;
      v108[1] = v106;
      LOBYTE(v238[0]) = 14;
      v109 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v223 = v107;
      if (v110)
      {
        v111 = v109;
      }

      else
      {
        v111 = 0;
      }

      if (v110)
      {
        v112 = v110;
      }

      else
      {
        v112 = 0xE000000000000000;
      }

      v113 = v223;
      v114 = &v224[v237[18]];
      *v114 = v111;
      v114[1] = v112;
      v240 = 8;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v223 = v113;
      v116 = v238[1];
      v115 = v238[0];
      if (v238[1] >> 60 == 15)
      {
        v115 = 0;
        v116 = 0xC000000000000000;
      }

      v117 = v223;
      v118 = &v224[v237[12]];
      *v118 = v115;
      *(v118 + 1) = v116;
      v240 = 7;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v223 = v117;
      v120 = v238[1];
      v119 = v238[0];
      if (v238[1] >> 60 == 15)
      {
        v119 = 0;
        v120 = 0xC000000000000000;
      }

      v121 = v223;
      v122 = &v224[v237[11]];
      *v122 = v119;
      *(v122 + 1) = v120;
      LOBYTE(v238[0]) = 15;
      v123 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v223 = v121;
      if (v124)
      {
        v125 = v123;
      }

      else
      {
        v125 = 0;
      }

      if (v124)
      {
        v126 = v124;
      }

      else
      {
        v126 = 0xE000000000000000;
      }

      v127 = v223;
      v128 = &v224[v237[19]];
      *v128 = v125;
      v128[1] = v126;
      LOBYTE(v238[0]) = 16;
      v129 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v223 = v127;
      if (v130)
      {
        v131 = v129;
      }

      else
      {
        v131 = 0;
      }

      if (v130)
      {
        v132 = v130;
      }

      else
      {
        v132 = 0xE000000000000000;
      }

      v133 = v223;
      v134 = &v224[v237[20]];
      *v134 = v131;
      v134[1] = v132;
      LOBYTE(v238[0]) = 17;
      v135 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v223 = v133;
      if (v136)
      {
        v137 = v135;
      }

      else
      {
        v137 = 0;
      }

      if (v136)
      {
        v138 = v136;
      }

      else
      {
        v138 = 0xE000000000000000;
      }

      v139 = v223;
      v140 = &v224[v237[21]];
      *v140 = v137;
      v140[1] = v138;
      LOBYTE(v238[0]) = 18;
      v141 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v223 = v139;
      if (v142)
      {
        v143 = v141;
      }

      else
      {
        v143 = 0;
      }

      if (v142)
      {
        v144 = v142;
      }

      else
      {
        v144 = 0xE000000000000000;
      }

      v145 = v223;
      v146 = &v224[v237[22]];
      *v146 = v143;
      v146[1] = v144;
      LOBYTE(v238[0]) = 19;
      v147 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v223 = v145;
      if (v148)
      {
        v149 = v147;
      }

      else
      {
        v149 = 0;
      }

      if (v148)
      {
        v150 = v148;
      }

      else
      {
        v150 = 0xE000000000000000;
      }

      v151 = v223;
      v152 = &v224[v237[23]];
      *v152 = v149;
      v152[1] = v150;
      LOBYTE(v238[0]) = 20;
      v153 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v223 = v151;
      if (v154)
      {
        v155 = v153;
      }

      else
      {
        v155 = 0;
      }

      if (v154)
      {
        v156 = v154;
      }

      else
      {
        v156 = 0xE000000000000000;
      }

      v157 = v223;
      v158 = &v224[v237[24]];
      *v158 = v155;
      v158[1] = v156;
      LOBYTE(v238[0]) = 21;
      v159 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v223 = v157;
      if (v160)
      {
        v161 = v159;
      }

      else
      {
        v161 = 0;
      }

      if (v160)
      {
        v162 = v160;
      }

      else
      {
        v162 = 0xE000000000000000;
      }

      v163 = v223;
      v164 = &v224[v237[25]];
      *v164 = v161;
      v164[1] = v162;
      LOBYTE(v238[0]) = 22;
      v165 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v223 = v163;
      if (v166)
      {
        v167 = v165;
      }

      else
      {
        v167 = 0;
      }

      if (v166)
      {
        v168 = v166;
      }

      else
      {
        v168 = 0xE000000000000000;
      }

      v169 = v223;
      v170 = &v224[v237[26]];
      *v170 = v167;
      v170[1] = v168;
      LOBYTE(v238[0]) = 23;
      v171 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v223 = v169;
      if (v172)
      {
        v173 = v171;
      }

      else
      {
        v173 = 0;
      }

      if (v172)
      {
        v174 = v172;
      }

      else
      {
        v174 = 0xE000000000000000;
      }

      v175 = v223;
      v176 = &v224[v237[27]];
      *v176 = v173;
      v176[1] = v174;
      LOBYTE(v238[0]) = 24;
      v177 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v223 = v175;
      if (v178)
      {
        v179 = v177;
      }

      else
      {
        v179 = 0;
      }

      if (v178)
      {
        v180 = v178;
      }

      else
      {
        v180 = 0xE000000000000000;
      }

      v181 = v223;
      v182 = &v224[v237[28]];
      *v182 = v179;
      v182[1] = v180;
      LOBYTE(v238[0]) = 25;
      v183 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v223 = v181;
      if (v184)
      {
        v185 = v183;
      }

      else
      {
        v185 = 0;
      }

      v186 = 0xE000000000000000;
      if (v184)
      {
        v186 = v184;
      }

      v187 = v237;
      v188 = &v224[v237[29]];
      *v188 = v185;
      v188[1] = v186;
      v189 = v187[30];
      static Date.now.getter();
      LOBYTE(v238[0]) = 26;
      sub_100121ABC(&qword_1002F7D90, &type metadata accessor for Date);
      v190 = v223;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v223 = v190;
      if (!v190)
      {
        v237 = *(v233 + 48);
        if ((v237)(v230, 1, v234) == 1)
        {
          v191 = objc_autoreleasePoolPush();
          isa = sub_100169D38(*v221, *(v221 + 1));
          if (!isa)
          {
            isa = sub_1000F8100().super.isa;
          }

          v193 = isa;
          v238[0] = isa;
          sub_10011A7B0(v238);
          objc_autoreleasePoolPop(v191);
          v194 = [v193 modificationDate];

          if (v194)
          {
            v195 = v226;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            (*(v236 + 8))(v89, v88);
            v196 = v233;
            v197 = *(v233 + 32);
            v198 = v228;
            v199 = v195;
            v200 = v234;
            v197(v228, v199, v234);
            (*(v196 + 56))(v198, 0, 1, v200);
            v197(v229, v198, v200);
          }

          else
          {
            v235 = *(v233 + 56);
            (v235)(v228, 1, 1, v234);
            v201 = objc_autoreleasePoolPush();
            v202 = sub_100169D38(*v221, *(v221 + 1));
            if (!v202)
            {
              v202 = sub_1000F8100().super.isa;
            }

            v203 = v202;
            v238[0] = v202;
            sub_10011A7B0(v238);
            objc_autoreleasePoolPop(v201);
            v204 = [v203 creationDate];

            if (v204)
            {
              v205 = v226;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*(v236 + 8))(v89, v88);
              v206 = *(v233 + 32);
              v207 = v227;
              v208 = v205;
              v209 = v234;
              v206(v227, v208, v234);
              (v235)(v207, 0, 1, v209);
              v206(v229, v207, v209);
            }

            else
            {
              v210 = v227;
              v211 = v234;
              (v235)(v227, 1, 1, v234);
              static Date.now.getter();
              (*(v236 + 8))(v89, v88);
              if ((v237)(v210, 1, v211) != 1)
              {
                sub_1000EEE6C(v227, &qword_1002F7EF0, &unk_100226C90);
              }
            }

            if ((v237)(v228, 1, v234) != 1)
            {
              sub_1000EEE6C(v228, &qword_1002F7EF0, &unk_100226C90);
            }
          }

          if ((v237)(v230, 1, v234) != 1)
          {
            sub_1000EEE6C(v230, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        else
        {
          (*(v236 + 8))(v35, v88);
          (*(v233 + 32))(v229, v230, v234);
        }

        v212 = v224;
        (*(v233 + 40))(&v224[v189], v229, v234);
        sub_1001216CC(v212, v231);
        sub_1000EF824(v225);
        return sub_100121730(v212);
      }

      (*(v236 + 8))(v35, v88);
      v217 = 1;
      v215 = 1;
      v239 = 1;
      v219 = 1;
      v83 = 1;
      v84 = 1;
      v216 = 1;
      v218 = 1;
      v220 = 0x100000001;
      LODWORD(v221) = 1;
      LODWORD(v222) = 1;
      LODWORD(v226) = 1;
      LODWORD(v227) = 1;
      LODWORD(v228) = 1;
      LODWORD(v229) = 1;
      LODWORD(v230) = 1;
      LODWORD(v231) = 1;
      LODWORD(v236) = 1;
    }

    v32 = v224;
    v34 = v235;
  }

  sub_1000EF824(v225);
  (*(v232 + 8))(v32, v34);
  v42 = v214;
  v43 = v237;
  sub_1000EF870(*&v32[v237[5]], *&v32[v237[5] + 8]);
  if (v42)
  {
    v44 = *&v32[v43[6] + 8];

    if ((v217 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v217)
  {
    goto LABEL_7;
  }

  sub_1000EF870(*&v32[v237[7]], *&v32[v237[7] + 8]);
LABEL_7:
  v45 = v237;
  sub_1000EF870(*&v32[v237[8]], *&v32[v237[8] + 8]);
  if (v215)
  {
    sub_1000EF870(*&v32[v45[9]], *&v32[v45[9] + 8]);
  }

  sub_1000EF870(*&v32[v45[10]], *&v32[v45[10] + 8]);
  if (v239)
  {
    sub_1000EF870(*&v32[v45[11]], *&v32[v45[11] + 8]);
    if ((v219 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

  if (v219)
  {
LABEL_11:
    sub_1000EF870(*&v32[v45[12]], *&v32[v45[12] + 8]);
  }

LABEL_31:
  v56 = *&v32[v45[13] + 8];

  v46 = *&v32[v45[14] + 8];

  v47 = v234;
  if (v83)
  {
    v57 = *&v32[v45[15] + 8];

    v48 = v233;
    if (v84)
    {
LABEL_14:
      v49 = *&v32[v45[16] + 8];

      if ((v216 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v48 = v233;
    if (v84)
    {
      goto LABEL_14;
    }
  }

  if (!v216)
  {
LABEL_15:
    if (v218)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v58 = *&v32[v45[17] + 8];

  if (v218)
  {
LABEL_16:
    v50 = *&v32[v45[18] + 8];

    if ((v220 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (!v220)
  {
LABEL_17:
    if (HIDWORD(v220))
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v59 = *&v32[v45[19] + 8];

  if ((v220 & 0x100000000) != 0)
  {
LABEL_18:
    v51 = *&v32[v45[20] + 8];

    if ((v221 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (!v221)
  {
LABEL_19:
    if (v222)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  v60 = *&v32[v45[21] + 8];

  if (v222)
  {
LABEL_20:
    v52 = *&v32[v45[22] + 8];

    if ((v226 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (!v226)
  {
LABEL_21:
    if (v227)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_40:
  v61 = *&v32[v45[23] + 8];

  if (v227)
  {
LABEL_22:
    v53 = *&v32[v45[24] + 8];

    if ((v228 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

LABEL_41:
  if (!v228)
  {
LABEL_23:
    if (v229)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

LABEL_42:
  v62 = *&v32[v45[25] + 8];

  if (v229)
  {
LABEL_24:
    v54 = *&v32[v45[26] + 8];

    if ((v230 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

LABEL_43:
  if (!v230)
  {
LABEL_25:
    if (v231)
    {
      goto LABEL_26;
    }

    goto LABEL_45;
  }

LABEL_44:
  v63 = *&v32[v45[27] + 8];

  if (v231)
  {
LABEL_26:
    v55 = *&v32[v45[28] + 8];

    if (v236)
    {
      goto LABEL_46;
    }

    return result;
  }

LABEL_45:
  if (v236)
  {
LABEL_46:
    v64 = *&v32[v45[29] + 8];

    return (*(v48 + 8))(&v32[v45[30]], v47);
  }

  return result;
}

void sub_100119610(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v148 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v151 = &v141 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v149 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v150 = &v141 - v15;
  v16 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v141 - v18;
  v20 = type metadata accessor for UUID();
  v153 = *(v20 - 8);
  v154 = v20;
  v21 = *(v153 + 64);
  __chkstk_darwin(v20);
  v152 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0x746553636967614DLL && v23 == 0xED000073676E6974)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      sub_100121790();
      swift_allocError();
      *v36 = 0;
      swift_willThrow();

      return;
    }
  }

  v146 = v11;
  v25 = [a1 encryptedValues];
  swift_getObjectType();
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 objectForKeyedSubscript:v26];

  if (!v27)
  {
    goto LABEL_9;
  }

  v156 = v27;
  v147 = sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v142 = v10;
  v143 = v2;
  v144 = a2;
  v28 = v155;
  v29 = [a1 recordID];
  v30 = [v29 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v32 = v153;
  v31 = v154;
  if ((*(v153 + 48))(v19, 1, v154) == 1)
  {

    sub_1000EEE6C(v19, &qword_1002F8000, &unk_1002262C0);
LABEL_9:
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100226100;
    *(v33 + 56) = sub_1000EEE20();
    *(v33 + 64) = sub_100121ABC(&qword_1002F7BE0, sub_1000EEE20);
    *(v33 + 32) = a1;
    v34 = a1;
    os_log(_:dso:log:_:_:)();

    sub_100121790();
    swift_allocError();
    *v35 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    return;
  }

  v141 = a1;
  v37 = v152;
  (*(v32 + 32))(v152, v19, v31);
  v38 = v144;
  (*(v32 + 16))(v144, v37, v31);
  v39 = type metadata accessor for MagicPairingSettingsRecord();
  *(v38 + v39[6]) = v28;
  CKRecordKeyValueSetting.subscript.getter();
  v40 = *(&v155 + 1);
  v41 = v155;
  if (!*(&v155 + 1))
  {
    v41 = 0;
    v40 = 0xE000000000000000;
  }

  v42 = (v38 + v39[13]);
  *v42 = v41;
  v42[1] = v40;
  CKRecordKeyValueSetting.subscript.getter();
  v43 = *(&v155 + 1);
  v44 = v155;
  if (!*(&v155 + 1))
  {
    v44 = 0;
    v43 = 0xE000000000000000;
  }

  v45 = v38;
  v46 = (v38 + v39[14]);
  *v46 = v44;
  v46[1] = v43;
  v47 = String._bridgeToObjectiveC()();
  v48 = [v25 objectForKeyedSubscript:v47];

  v49 = xmmword_100227DA0;
  v145 = xmmword_100227DA0;
  if (v48)
  {
    v156 = v48;
    if (swift_dynamicCast())
    {
      v49 = v155;
    }

    else
    {
      v49 = v145;
    }
  }

  *(v38 + v39[8]) = v49;
  v50 = String._bridgeToObjectiveC()();
  v51 = [v25 objectForKeyedSubscript:v50];

  v52 = v145;
  v53 = v141;
  if (v51)
  {
    v156 = v51;
    if (swift_dynamicCast())
    {
      v52 = v155;
    }

    else
    {
      v52 = v145;
    }
  }

  *(v38 + v39[7]) = v52;
  v54 = String._bridgeToObjectiveC()();
  v55 = [v25 objectForKeyedSubscript:v54];

  v56 = v145;
  if (v55)
  {
    v156 = v55;
    if (swift_dynamicCast())
    {
      v56 = v155;
    }

    else
    {
      v56 = v145;
    }
  }

  *(v45 + v39[10]) = v56;
  v57 = String._bridgeToObjectiveC()();
  v58 = [v25 objectForKeyedSubscript:v57];

  v59 = v145;
  if (v58)
  {
    v156 = v58;
    if (swift_dynamicCast())
    {
      v59 = v155;
    }

    else
    {
      v59 = v145;
    }
  }

  *(v45 + v39[9]) = v59;
  v60 = String._bridgeToObjectiveC()();
  v61 = [v25 objectForKeyedSubscript:v60];

  v62 = v145;
  if (v61)
  {
    v156 = v61;
    if (swift_dynamicCast())
    {
      v62 = v155;
    }

    else
    {
      v62 = v145;
    }
  }

  *(v45 + v39[12]) = v62;
  v63 = String._bridgeToObjectiveC()();
  v64 = [v25 objectForKeyedSubscript:v63];

  if (v64 && (v156 = v64, (swift_dynamicCast() & 1) != 0))
  {
    v65 = v155;
  }

  else
  {
    v65 = v145;
  }

  *(v45 + v39[11]) = v65;
  CKRecordKeyValueSetting.subscript.getter();
  v66 = *(&v155 + 1);
  v67 = v155;
  if (!*(&v155 + 1))
  {
    v67 = 0;
  }

  v68 = 0xE000000000000000;
  if (!*(&v155 + 1))
  {
    v66 = 0xE000000000000000;
  }

  v69 = (v45 + v39[15]);
  *v69 = v67;
  v69[1] = v66;
  CKRecordKeyValueSetting.subscript.getter();
  v70 = *(&v155 + 1);
  v71 = v155;
  if (!*(&v155 + 1))
  {
    v71 = 0;
    v70 = 0xE000000000000000;
  }

  v72 = (v45 + v39[16]);
  *v72 = v71;
  v72[1] = v70;
  CKRecordKeyValueSetting.subscript.getter();
  v73 = *(&v155 + 1);
  v74 = v155;
  if (!*(&v155 + 1))
  {
    v74 = 0;
    v73 = 0xE000000000000000;
  }

  v75 = (v45 + v39[17]);
  *v75 = v74;
  v75[1] = v73;
  CKRecordKeyValueSetting.subscript.getter();
  v76 = *(&v155 + 1);
  v77 = v155;
  if (!*(&v155 + 1))
  {
    v77 = 0;
    v76 = 0xE000000000000000;
  }

  v78 = (v45 + v39[18]);
  *v78 = v77;
  v78[1] = v76;
  CKRecordKeyValueSetting.subscript.getter();
  v79 = *(&v155 + 1);
  v80 = v155;
  if (!*(&v155 + 1))
  {
    v80 = 0;
    v79 = 0xE000000000000000;
  }

  v81 = (v45 + v39[19]);
  *v81 = v80;
  v81[1] = v79;
  CKRecordKeyValueSetting.subscript.getter();
  v82 = *(&v155 + 1);
  v83 = v155;
  if (!*(&v155 + 1))
  {
    v83 = 0;
    v82 = 0xE000000000000000;
  }

  v84 = (v45 + v39[20]);
  *v84 = v83;
  v84[1] = v82;
  CKRecordKeyValueSetting.subscript.getter();
  v85 = *(&v155 + 1);
  v86 = v155;
  if (!*(&v155 + 1))
  {
    v86 = 0;
    v85 = 0xE000000000000000;
  }

  v87 = (v45 + v39[21]);
  *v87 = v86;
  v87[1] = v85;
  CKRecordKeyValueSetting.subscript.getter();
  v88 = *(&v155 + 1);
  v89 = v155;
  if (!*(&v155 + 1))
  {
    v89 = 0;
    v88 = 0xE000000000000000;
  }

  v90 = (v45 + v39[22]);
  *v90 = v89;
  v90[1] = v88;
  CKRecordKeyValueSetting.subscript.getter();
  v91 = *(&v155 + 1);
  v92 = v155;
  if (!*(&v155 + 1))
  {
    v92 = 0;
    v91 = 0xE000000000000000;
  }

  v93 = (v45 + v39[23]);
  *v93 = v92;
  v93[1] = v91;
  CKRecordKeyValueSetting.subscript.getter();
  v94 = *(&v155 + 1);
  v95 = v155;
  if (!*(&v155 + 1))
  {
    v95 = 0;
    v94 = 0xE000000000000000;
  }

  v96 = (v45 + v39[24]);
  *v96 = v95;
  v96[1] = v94;
  CKRecordKeyValueSetting.subscript.getter();
  v97 = *(&v155 + 1);
  v98 = v155;
  if (!*(&v155 + 1))
  {
    v98 = 0;
    v97 = 0xE000000000000000;
  }

  v99 = (v45 + v39[25]);
  *v99 = v98;
  v99[1] = v97;
  CKRecordKeyValueSetting.subscript.getter();
  v100 = *(&v155 + 1);
  v101 = v155;
  if (!*(&v155 + 1))
  {
    v101 = 0;
    v100 = 0xE000000000000000;
  }

  v102 = (v45 + v39[26]);
  *v102 = v101;
  v102[1] = v100;
  CKRecordKeyValueSetting.subscript.getter();
  v103 = *(&v155 + 1);
  v104 = v155;
  if (!*(&v155 + 1))
  {
    v104 = 0;
    v103 = 0xE000000000000000;
  }

  v105 = (v45 + v39[27]);
  *v105 = v104;
  v105[1] = v103;
  CKRecordKeyValueSetting.subscript.getter();
  v106 = *(&v155 + 1);
  v107 = v155;
  if (!*(&v155 + 1))
  {
    v107 = 0;
    v106 = 0xE000000000000000;
  }

  v108 = (v45 + v39[28]);
  *v108 = v107;
  v108[1] = v106;
  v109 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v53 encodeSystemFieldsWithCoder:v109];
  [v109 finishEncoding];
  v110 = [v109 encodedData];
  v111 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v113 = v112;

  v114 = (v45 + v39[5]);
  *v114 = v111;
  v114[1] = v113;
  v115 = [v53 valuesByKey];
  v116 = String._bridgeToObjectiveC()();
  v117 = [v115 objectForKeyedSubscript:v116];
  swift_unknownObjectRelease();

  if (!v117)
  {
    goto LABEL_75;
  }

  objc_opt_self();
  v118 = swift_dynamicCastObjCClass();
  if (!v118)
  {
    swift_unknownObjectRelease();
LABEL_75:
    v121 = 0;
    goto LABEL_76;
  }

  v119 = [v118 recordID];
  v120 = [v119 recordName];

  v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v122;
  swift_unknownObjectRelease();

LABEL_76:
  v123 = (v45 + v39[29]);
  *v123 = v121;
  v123[1] = v68;
  v124 = [v53 modificationDate];
  v125 = v146;
  v126 = v151;
  if (v124)
  {
    v127 = v149;
    v128 = v124;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    (*(v153 + 8))(v152, v154);
    v129 = *(v125 + 32);
    v130 = v142;
    v129(v126, v127, v142);
    (*(v125 + 56))(v126, 0, 1, v130);
    v131 = v150;
    v129(v150, v126, v130);
  }

  else
  {
    v132 = *(v146 + 56);
    v130 = v142;
    v132(v151, 1, 1, v142);
    v133 = [v53 creationDate];
    if (v133)
    {
      v147 = v132;
      v134 = v149;
      v135 = v133;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      (*(v153 + 8))(v152, v154);
      v136 = *(v125 + 32);
      v137 = v148;
      v136(v148, v134, v130);
      v147(v137, 0, 1, v130);
      v131 = v150;
      v136(v150, v137, v130);
      v138 = *(v125 + 48);
    }

    else
    {
      v139 = v148;
      v132(v148, 1, 1, v130);
      v140 = v139;
      v131 = v150;
      static Date.now.getter();

      swift_unknownObjectRelease();
      (*(v153 + 8))(v152, v154);
      v138 = *(v125 + 48);
      if (v138(v140, 1, v130) != 1)
      {
        sub_1000EEE6C(v140, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v45 = v144;
    if (v138(v126, 1, v130) != 1)
    {
      sub_1000EEE6C(v126, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  (*(v125 + 32))(v45 + v39[30], v131, v130);
}

uint64_t sub_10011A7B0(id *a1)
{
  static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100226100;
  v4 = *a1;
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1000EE954();
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  os_log(_:dso:log:_:_:)();

  v9 = [v4 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v129 = type metadata accessor for MagicPairingSettingsRecord();
  v10 = (v1 + v129[6]);
  v12 = *v10;
  v11 = v10[1];
  if (!v131)
  {
    goto LABEL_8;
  }

  if (v130 == v12 && v131 == v11)
  {

    goto LABEL_9;
  }

  v13 = *v10;
  v14 = v10[1];
  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) == 0)
  {
LABEL_8:
    v130 = v12;
    v131 = v11;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_9:
  CKRecordKeyValueSetting.subscript.getter();
  v16 = (v1 + v129[13]);
  v18 = *v16;
  v17 = v16[1];
  if (!v131)
  {
    goto LABEL_14;
  }

  if (v130 != v18 || v131 != v17)
  {
    v19 = *v16;
    v20 = v16[1];
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_15;
    }

LABEL_14:
    v130 = v18;
    v131 = v17;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_15;
  }

LABEL_15:
  CKRecordKeyValueSetting.subscript.getter();
  v22 = (v1 + v129[14]);
  v24 = *v22;
  v23 = v22[1];
  if (!v131)
  {
    goto LABEL_20;
  }

  if (v130 == v24 && v131 == v23)
  {

    goto LABEL_21;
  }

  v25 = *v22;
  v26 = v22[1];
  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v27 & 1) == 0)
  {
LABEL_20:
    v130 = v24;
    v131 = v23;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_21:
  CKRecordKeyValueSetting.subscript.getter();
  v28 = (v1 + v129[7]);
  v30 = *v28;
  v29 = v28[1];
  if (v131 >> 60 == 15)
  {
    if (v29 >> 60 == 15)
    {
      sub_1000EE9F4(v30, v29);
      sub_1000FF5CC(v130, v131);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v29 >> 60 == 15)
  {
LABEL_25:
    sub_1000EE9F4(v30, v29);
    sub_1000FF5CC(v130, v131);
    sub_1000FF5CC(v30, v29);
LABEL_26:
    v130 = v30;
    v131 = v29;
    sub_1000EE9F4(v30, v29);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_27;
  }

  sub_1000EE9F4(v30, v29);
  sub_1000EE9F4(v30, v29);
  sub_1000FF5B8(v130, v131);
  v123 = sub_100121564(v130, v131, v30, v29);
  sub_1000EF870(v30, v29);
  sub_1000FF5CC(v130, v131);
  sub_1000FF5CC(v30, v29);
  sub_1000FF5CC(v130, v131);
  if ((v123 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_27:
  CKRecordKeyValueSetting.subscript.getter();
  v31 = (v1 + v129[8]);
  v33 = *v31;
  v32 = v31[1];
  if (v131 >> 60 == 15)
  {
    if (v32 >> 60 == 15)
    {
      sub_1000EE9F4(v33, v32);
      sub_1000FF5CC(v130, v131);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v32 >> 60 == 15)
  {
LABEL_31:
    sub_1000EE9F4(v33, v32);
    sub_1000FF5CC(v130, v131);
    sub_1000FF5CC(v33, v32);
LABEL_32:
    v130 = v33;
    v131 = v32;
    sub_1000EE9F4(v33, v32);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_33;
  }

  sub_1000EE9F4(v33, v32);
  sub_1000EE9F4(v33, v32);
  sub_1000FF5B8(v130, v131);
  v124 = sub_100121564(v130, v131, v33, v32);
  sub_1000EF870(v33, v32);
  sub_1000FF5CC(v130, v131);
  sub_1000FF5CC(v33, v32);
  sub_1000FF5CC(v130, v131);
  if ((v124 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  CKRecordKeyValueSetting.subscript.getter();
  v34 = (v1 + v129[9]);
  v36 = *v34;
  v35 = v34[1];
  if (v131 >> 60 == 15)
  {
    if (v35 >> 60 == 15)
    {
      sub_1000EE9F4(v36, v35);
      sub_1000FF5CC(v130, v131);
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (v35 >> 60 == 15)
  {
LABEL_37:
    sub_1000EE9F4(v36, v35);
    sub_1000FF5CC(v130, v131);
    sub_1000FF5CC(v36, v35);
LABEL_38:
    v130 = v36;
    v131 = v35;
    sub_1000EE9F4(v36, v35);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_39;
  }

  sub_1000EE9F4(v36, v35);
  sub_1000EE9F4(v36, v35);
  sub_1000FF5B8(v130, v131);
  v126 = sub_100121564(v130, v131, v36, v35);
  sub_1000EF870(v36, v35);
  sub_1000FF5CC(v130, v131);
  sub_1000FF5CC(v36, v35);
  sub_1000FF5CC(v130, v131);
  if ((v126 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_39:
  CKRecordKeyValueSetting.subscript.getter();
  v37 = (v1 + v129[10]);
  v39 = *v37;
  v38 = v37[1];
  if (v131 >> 60 == 15)
  {
    if (v38 >> 60 == 15)
    {
      sub_1000EE9F4(v39, v38);
      sub_1000FF5CC(v130, v131);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v38 >> 60 == 15)
  {
LABEL_43:
    sub_1000EE9F4(v39, v38);
    sub_1000FF5CC(v130, v131);
    sub_1000FF5CC(v39, v38);
LABEL_44:
    v130 = v39;
    v131 = v38;
    sub_1000EE9F4(v39, v38);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_45;
  }

  sub_1000EE9F4(v39, v38);
  sub_1000EE9F4(v39, v38);
  sub_1000FF5B8(v130, v131);
  v127 = sub_100121564(v130, v131, v39, v38);
  sub_1000EF870(v39, v38);
  sub_1000FF5CC(v130, v131);
  sub_1000FF5CC(v39, v38);
  sub_1000FF5CC(v130, v131);
  if ((v127 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  CKRecordKeyValueSetting.subscript.getter();
  v40 = (v1 + v129[15]);
  v42 = *v40;
  v41 = v40[1];
  if (!v131)
  {
    goto LABEL_50;
  }

  if (v130 != v42 || v131 != v41)
  {
    v43 = *v40;
    v44 = v40[1];
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
      goto LABEL_51;
    }

LABEL_50:
    v130 = v42;
    v131 = v41;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_51;
  }

LABEL_51:
  CKRecordKeyValueSetting.subscript.getter();
  v46 = (v1 + v129[16]);
  v48 = *v46;
  v47 = v46[1];
  if (!v131)
  {
    goto LABEL_56;
  }

  if (v130 == v48 && v131 == v47)
  {

    goto LABEL_57;
  }

  v49 = *v46;
  v50 = v46[1];
  v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v51 & 1) == 0)
  {
LABEL_56:
    v130 = v48;
    v131 = v47;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_57:
  CKRecordKeyValueSetting.subscript.getter();
  v52 = (v1 + v129[17]);
  v54 = *v52;
  v53 = v52[1];
  if (!v131)
  {
    goto LABEL_63;
  }

  if (v130 != v54 || v131 != v53)
  {
    v55 = *v52;
    v56 = v52[1];
    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v57)
    {
      goto LABEL_64;
    }

LABEL_63:
    v130 = v54;
    v131 = v53;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_64;
  }

LABEL_64:
  CKRecordKeyValueSetting.subscript.getter();
  v58 = (v1 + v129[18]);
  v60 = *v58;
  v59 = v58[1];
  if (!v131)
  {
    goto LABEL_70;
  }

  if (v130 == v60 && v131 == v59)
  {

    goto LABEL_71;
  }

  v61 = *v58;
  v62 = v58[1];
  v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v63 & 1) == 0)
  {
LABEL_70:
    v130 = v60;
    v131 = v59;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_71:
  CKRecordKeyValueSetting.subscript.getter();
  v64 = (v1 + v129[12]);
  v66 = *v64;
  v65 = v64[1];
  if (v131 >> 60 == 15)
  {
    if (v65 >> 60 == 15)
    {
      sub_1000EE9F4(v66, v65);
      sub_1000FF5CC(v130, v131);
      goto LABEL_77;
    }

    goto LABEL_75;
  }

  if (v65 >> 60 == 15)
  {
LABEL_75:
    sub_1000EE9F4(v66, v65);
    sub_1000FF5CC(v130, v131);
    sub_1000FF5CC(v66, v65);
LABEL_76:
    v130 = v66;
    v131 = v65;
    sub_1000EE9F4(v66, v65);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_77;
  }

  sub_1000EE9F4(v66, v65);
  sub_1000EE9F4(v66, v65);
  sub_1000FF5B8(v130, v131);
  v128 = sub_100121564(v130, v131, v66, v65);
  sub_1000EF870(v66, v65);
  sub_1000FF5CC(v130, v131);
  sub_1000FF5CC(v66, v65);
  sub_1000FF5CC(v130, v131);
  if ((v128 & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_77:
  CKRecordKeyValueSetting.subscript.getter();
  v67 = (v1 + v129[11]);
  v69 = *v67;
  v68 = v67[1];
  if (v131 >> 60 != 15)
  {
    if (v68 >> 60 != 15)
    {
      sub_1000EE9F4(v69, v68);
      sub_1000EE9F4(v69, v68);
      sub_1000FF5B8(v130, v131);
      v125 = sub_100121564(v130, v131, v69, v68);
      sub_1000EF870(v69, v68);
      sub_1000FF5CC(v130, v131);
      sub_1000FF5CC(v69, v68);
      sub_1000FF5CC(v130, v131);
      if (v125)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }

LABEL_81:
    sub_1000EE9F4(v69, v68);
    sub_1000FF5CC(v130, v131);
    sub_1000FF5CC(v69, v68);
LABEL_82:
    v130 = v69;
    v131 = v68;
    sub_1000EE9F4(v69, v68);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_83;
  }

  if (v68 >> 60 != 15)
  {
    goto LABEL_81;
  }

  sub_1000EE9F4(v69, v68);
  sub_1000FF5CC(v130, v131);
LABEL_83:
  CKRecordKeyValueSetting.subscript.getter();
  v70 = (v1 + v129[19]);
  v72 = *v70;
  v71 = v70[1];
  if (!v131)
  {
    goto LABEL_88;
  }

  if (v130 == v72 && v131 == v71)
  {

    goto LABEL_89;
  }

  v73 = *v70;
  v74 = v70[1];
  v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v75 & 1) == 0)
  {
LABEL_88:
    v130 = v72;
    v131 = v71;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_89:
  CKRecordKeyValueSetting.subscript.getter();
  v76 = (v1 + v129[20]);
  v78 = *v76;
  v77 = v76[1];
  if (!v131)
  {
    goto LABEL_94;
  }

  if (v130 != v78 || v131 != v77)
  {
    v79 = *v76;
    v80 = v76[1];
    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v81)
    {
      goto LABEL_95;
    }

LABEL_94:
    v130 = v78;
    v131 = v77;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_95;
  }

LABEL_95:
  CKRecordKeyValueSetting.subscript.getter();
  v82 = (v1 + v129[21]);
  v84 = *v82;
  v83 = v82[1];
  if (!v131)
  {
    goto LABEL_100;
  }

  if (v130 == v84 && v131 == v83)
  {

    goto LABEL_101;
  }

  v85 = *v82;
  v86 = v82[1];
  v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v87 & 1) == 0)
  {
LABEL_100:
    v130 = v84;
    v131 = v83;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_101:
  CKRecordKeyValueSetting.subscript.getter();
  v88 = (v1 + v129[22]);
  v90 = *v88;
  v89 = v88[1];
  if (!v131)
  {
    goto LABEL_107;
  }

  if (v130 != v90 || v131 != v89)
  {
    v91 = *v88;
    v92 = v88[1];
    v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v93)
    {
      goto LABEL_108;
    }

LABEL_107:
    v130 = v90;
    v131 = v89;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_108;
  }

LABEL_108:
  CKRecordKeyValueSetting.subscript.getter();
  v94 = (v1 + v129[23]);
  v96 = *v94;
  v95 = v94[1];
  if (!v131)
  {
    goto LABEL_113;
  }

  if (v130 == v96 && v131 == v95)
  {

    goto LABEL_114;
  }

  v97 = *v94;
  v98 = v94[1];
  v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v99 & 1) == 0)
  {
LABEL_113:
    v130 = v96;
    v131 = v95;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_114:
  CKRecordKeyValueSetting.subscript.getter();
  v100 = (v1 + v129[24]);
  v102 = *v100;
  v101 = v100[1];
  if (!v131)
  {
    goto LABEL_119;
  }

  if (v130 != v102 || v131 != v101)
  {
    v103 = *v100;
    v104 = v100[1];
    v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v105)
    {
      goto LABEL_120;
    }

LABEL_119:
    v130 = v102;
    v131 = v101;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_120;
  }

LABEL_120:
  CKRecordKeyValueSetting.subscript.getter();
  v106 = (v1 + v129[26]);
  v108 = *v106;
  v107 = v106[1];
  if (!v131)
  {
    goto LABEL_125;
  }

  if (v130 == v108 && v131 == v107)
  {

    goto LABEL_126;
  }

  v109 = *v106;
  v110 = v106[1];
  v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v111 & 1) == 0)
  {
LABEL_125:
    v130 = v108;
    v131 = v107;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_126:
  CKRecordKeyValueSetting.subscript.getter();
  v112 = (v1 + v129[27]);
  v114 = *v112;
  v113 = v112[1];
  if (!v131)
  {
    goto LABEL_131;
  }

  if (v130 != v114 || v131 != v113)
  {
    v115 = *v112;
    v116 = v112[1];
    v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v117)
    {
      goto LABEL_132;
    }

LABEL_131:
    v130 = v114;
    v131 = v113;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_132;
  }

LABEL_132:
  CKRecordKeyValueSetting.subscript.getter();
  v118 = (v1 + v129[28]);
  if (!v131)
  {
    goto LABEL_137;
  }

  if (v130 == *v118 && v131 == v118[1])
  {
    swift_unknownObjectRelease();
  }

  v120 = *v118;
  v121 = v118[1];
  v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v122 & 1) == 0)
  {
LABEL_137:

    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10011BD3C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v318 = *(v4 - 8);
  v319 = v4;
  v5 = *(v318 + 64);
  __chkstk_darwin(v4);
  v317 = &v316 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = type metadata accessor for MagicPairingSettingsRecord();
  v7 = *(*(v321 - 1) + 64);
  __chkstk_darwin(v321);
  v9 = &v316 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10011D740(a1))
  {
    static os_log_type_t.debug.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100226100;
    sub_1001216CC(v1, v9);
    v11 = sub_100116308();
    v13 = v12;
    sub_100121730(v9);
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000EE954();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)();

    v14 = [a1 accessoryHint];
    v320 = v2;
    if (!v14)
    {
LABEL_22:
      v35 = [a1 accessoryKey];
      if (!v35)
      {
        goto LABEL_35;
      }

      v36 = v35;
      v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = v2 + v321[9];
      v42 = *v40;
      v41 = *(v40 + 8);
      sub_1000EE9F4(*v40, v41);
      v43 = [a1 accessoryKey];
      if (v43)
      {
        v44 = v43;
        v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        if (v41 >> 60 == 15)
        {
          v2 = v320;
          if (v47 >> 60 != 15)
          {
            goto LABEL_33;
          }

LABEL_29:
          sub_1000EF870(v37, v39);
          sub_1000FF5CC(v42, v41);
          goto LABEL_35;
        }

        v2 = v320;
        if (v47 >> 60 != 15)
        {
          sub_1000EE9F4(v42, v41);
          sub_1000FF5B8(v45, v47);
          v48 = sub_100121564(v42, v41, v45, v47);
          sub_1000FF5CC(v45, v47);
          sub_1000EF870(v42, v41);
          sub_1000FF5CC(v45, v47);
          sub_1000FF5CC(v42, v41);
          if (v48)
          {
            sub_1000EF870(v37, v39);
            goto LABEL_35;
          }

LABEL_34:
          sub_1000EF870(*v40, *(v40 + 8));
          *v40 = v37;
          *(v40 + 8) = v39;
LABEL_35:
          v49 = [a1 buttonModes];
          if (!v49)
          {
            goto LABEL_44;
          }

          v50 = v49;
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          v54 = (v2 + v321[15]);
          v55 = *v54;
          v56 = v54[1];

          v57 = [a1 buttonModes];
          if (v57)
          {
            v58 = v57;
            v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v61 = v60;

            if (v55 == v59 && v56 == v61)
            {

              goto LABEL_44;
            }

            v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v62)
            {

              goto LABEL_44;
            }
          }

          else
          {
          }

          *v54 = v51;
          v54[1] = v53;
LABEL_44:
          v63 = [a1 color];
          if (!v63)
          {
            goto LABEL_53;
          }

          v64 = v63;
          v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v67 = v66;

          v68 = (v2 + v321[16]);
          v69 = *v68;
          v70 = v68[1];

          v71 = [a1 color];
          if (v71)
          {
            v72 = v71;
            v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v75 = v74;

            if (v69 == v73 && v70 == v75)
            {

              goto LABEL_53;
            }

            v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v76)
            {

              goto LABEL_53;
            }
          }

          else
          {
          }

          *v68 = v65;
          v68[1] = v67;
LABEL_53:
          v77 = [a1 deviceIDFeatureBitsV1];
          if (!v77)
          {
            goto LABEL_62;
          }

          v78 = v77;
          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v81 = v80;

          v82 = (v2 + v321[17]);
          v83 = *v82;
          v84 = v82[1];

          v85 = [a1 deviceIDFeatureBitsV1];
          if (v85)
          {
            v86 = v85;
            v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v89 = v88;

            if (v83 == v87 && v84 == v89)
            {

              goto LABEL_62;
            }

            v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v90)
            {

              goto LABEL_62;
            }
          }

          else
          {
          }

          *v82 = v79;
          v82[1] = v81;
LABEL_62:
          v91 = [a1 deviceIDFeatureBitsV2];
          if (!v91)
          {
            goto LABEL_71;
          }

          v92 = v91;
          v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v95 = v94;

          v96 = (v2 + v321[18]);
          v97 = *v96;
          v98 = v96[1];

          v99 = [a1 deviceIDFeatureBitsV2];
          if (v99)
          {
            v100 = v99;
            v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v103 = v102;

            if (v97 == v101 && v98 == v103)
            {

              goto LABEL_71;
            }

            v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v104)
            {

              goto LABEL_71;
            }
          }

          else
          {
          }

          *v96 = v93;
          v96[1] = v95;
LABEL_71:
          v105 = [a1 encryptionKey];
          if (!v105)
          {
            goto LABEL_84;
          }

          v106 = v105;
          v107 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v109 = v108;

          v110 = v2 + v321[12];
          v112 = *v110;
          v111 = *(v110 + 8);
          sub_1000EE9F4(*v110, v111);
          v113 = [a1 encryptionKey];
          if (v113)
          {
            v114 = v113;
            v115 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v117 = v116;

            if (v111 >> 60 == 15)
            {
              v2 = v320;
              if (v117 >> 60 != 15)
              {
                goto LABEL_82;
              }

LABEL_78:
              sub_1000EF870(v107, v109);
              sub_1000FF5CC(v112, v111);
              goto LABEL_84;
            }

            v2 = v320;
            if (v117 >> 60 != 15)
            {
              sub_1000EE9F4(v112, v111);
              sub_1000FF5B8(v115, v117);
              v118 = sub_100121564(v112, v111, v115, v117);
              sub_1000FF5CC(v115, v117);
              sub_1000EF870(v112, v111);
              sub_1000FF5CC(v115, v117);
              sub_1000FF5CC(v112, v111);
              if (v118)
              {
                sub_1000EF870(v107, v109);
                goto LABEL_84;
              }

LABEL_83:
              sub_1000EF870(*v110, *(v110 + 8));
              *v110 = v107;
              *(v110 + 8) = v109;
LABEL_84:
              v119 = [a1 irk];
              if (!v119)
              {
                goto LABEL_97;
              }

              v120 = v119;
              v121 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v123 = v122;

              v124 = v2 + v321[11];
              v126 = *v124;
              v125 = *(v124 + 8);
              sub_1000EE9F4(*v124, v125);
              v127 = [a1 irk];
              if (v127)
              {
                v128 = v127;
                v129 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v131 = v130;

                if (v125 >> 60 == 15)
                {
                  v2 = v320;
                  if (v131 >> 60 != 15)
                  {
                    goto LABEL_95;
                  }

LABEL_91:
                  sub_1000EF870(v121, v123);
                  sub_1000FF5CC(v126, v125);
                  goto LABEL_97;
                }

                v2 = v320;
                if (v131 >> 60 != 15)
                {
                  sub_1000EE9F4(v126, v125);
                  sub_1000FF5B8(v129, v131);
                  v132 = sub_100121564(v126, v125, v129, v131);
                  sub_1000FF5CC(v129, v131);
                  sub_1000EF870(v126, v125);
                  sub_1000FF5CC(v129, v131);
                  sub_1000FF5CC(v126, v125);
                  if (v132)
                  {
                    sub_1000EF870(v121, v123);
                    goto LABEL_97;
                  }

LABEL_96:
                  sub_1000EF870(*v124, *(v124 + 8));
                  *v124 = v121;
                  *(v124 + 8) = v123;
LABEL_97:
                  v133 = [a1 listeningServices];
                  if (!v133)
                  {
                    goto LABEL_106;
                  }

                  v134 = v133;
                  v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v137 = v136;

                  v138 = (v2 + v321[19]);
                  v139 = *v138;
                  v140 = v138[1];

                  v141 = [a1 listeningServices];
                  if (v141)
                  {
                    v142 = v141;
                    v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v145 = v144;

                    if (v139 == v143 && v140 == v145)
                    {

                      goto LABEL_106;
                    }

                    v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v146)
                    {

                      goto LABEL_106;
                    }
                  }

                  else
                  {
                  }

                  *v138 = v135;
                  v138[1] = v137;
LABEL_106:
                  v147 = [a1 listeningServicesV2];
                  if (!v147)
                  {
                    goto LABEL_115;
                  }

                  v148 = v147;
                  v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v151 = v150;

                  v152 = (v2 + v321[20]);
                  v153 = *v152;
                  v154 = v152[1];

                  v155 = [a1 listeningServicesV2];
                  if (v155)
                  {
                    v156 = v155;
                    v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v159 = v158;

                    if (v153 == v157 && v154 == v159)
                    {

                      goto LABEL_115;
                    }

                    v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v160)
                    {

                      goto LABEL_115;
                    }
                  }

                  else
                  {
                  }

                  *v152 = v149;
                  v152[1] = v151;
LABEL_115:
                  v161 = [a1 masterKey];
                  if (!v161)
                  {
                    goto LABEL_128;
                  }

                  v162 = v161;
                  v163 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v165 = v164;

                  v166 = v2 + v321[7];
                  v168 = *v166;
                  v167 = *(v166 + 8);
                  sub_1000EE9F4(*v166, v167);
                  v169 = [a1 masterKey];
                  if (v169)
                  {
                    v170 = v169;
                    v171 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                    v173 = v172;

                    if (v167 >> 60 == 15)
                    {
                      v2 = v320;
                      if (v173 >> 60 != 15)
                      {
                        goto LABEL_126;
                      }

LABEL_122:
                      sub_1000EF870(v163, v165);
                      sub_1000FF5CC(v168, v167);
                      goto LABEL_128;
                    }

                    v2 = v320;
                    if (v173 >> 60 != 15)
                    {
                      sub_1000EE9F4(v168, v167);
                      sub_1000FF5B8(v171, v173);
                      v174 = sub_100121564(v168, v167, v171, v173);
                      sub_1000FF5CC(v171, v173);
                      sub_1000EF870(v168, v167);
                      sub_1000FF5CC(v171, v173);
                      sub_1000FF5CC(v168, v167);
                      if (v174)
                      {
                        sub_1000EF870(v163, v165);
                        goto LABEL_128;
                      }

LABEL_127:
                      sub_1000EF870(*v166, *(v166 + 8));
                      *v166 = v163;
                      *(v166 + 8) = v165;
LABEL_128:
                      v175 = [a1 masterHint];
                      if (!v175)
                      {
                        goto LABEL_141;
                      }

                      v176 = v175;
                      v177 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                      v179 = v178;

                      v180 = v2 + v321[8];
                      v182 = *v180;
                      v181 = *(v180 + 8);
                      sub_1000EE9F4(*v180, v181);
                      v183 = [a1 masterHint];
                      if (v183)
                      {
                        v184 = v183;
                        v185 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                        v187 = v186;

                        if (v181 >> 60 == 15)
                        {
                          v2 = v320;
                          if (v187 >> 60 != 15)
                          {
                            goto LABEL_139;
                          }

LABEL_135:
                          sub_1000EF870(v177, v179);
                          sub_1000FF5CC(v182, v181);
                          goto LABEL_141;
                        }

                        v2 = v320;
                        if (v187 >> 60 != 15)
                        {
                          sub_1000EE9F4(v182, v181);
                          sub_1000FF5B8(v185, v187);
                          v188 = sub_100121564(v182, v181, v185, v187);
                          sub_1000FF5CC(v185, v187);
                          sub_1000EF870(v182, v181);
                          sub_1000FF5CC(v185, v187);
                          sub_1000FF5CC(v182, v181);
                          if (v188)
                          {
                            sub_1000EF870(v177, v179);
                            goto LABEL_141;
                          }

LABEL_140:
                          sub_1000EF870(*v180, *(v180 + 8));
                          *v180 = v177;
                          *(v180 + 8) = v179;
LABEL_141:
                          v189 = [a1 optimizedBatteryCharging];
                          if (!v189)
                          {
                            goto LABEL_150;
                          }

                          v190 = v189;
                          v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v193 = v192;

                          v194 = (v2 + v321[22]);
                          v195 = *v194;
                          v196 = v194[1];

                          v197 = [a1 optimizedBatteryCharging];
                          if (v197)
                          {
                            v198 = v197;
                            v199 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v201 = v200;

                            if (v195 == v199 && v196 == v201)
                            {

                              goto LABEL_150;
                            }

                            v202 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v202)
                            {

                              goto LABEL_150;
                            }
                          }

                          else
                          {
                          }

                          *v194 = v191;
                          v194[1] = v193;
LABEL_150:
                          v203 = [a1 optimizedBatteryFullChargeDeadline];
                          if (!v203)
                          {
                            goto LABEL_159;
                          }

                          v204 = v203;
                          v205 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v207 = v206;

                          v208 = (v2 + v321[23]);
                          v209 = *v208;
                          v210 = v208[1];

                          v211 = [a1 optimizedBatteryFullChargeDeadline];
                          if (v211)
                          {
                            v212 = v211;
                            v213 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v215 = v214;

                            if (v209 == v213 && v210 == v215)
                            {

                              goto LABEL_159;
                            }

                            v216 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v216)
                            {

                              goto LABEL_159;
                            }
                          }

                          else
                          {
                          }

                          *v208 = v205;
                          v208[1] = v207;
LABEL_159:
                          v217 = [a1 productID];
                          if (!v217)
                          {
                            goto LABEL_168;
                          }

                          v218 = v217;
                          v219 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v221 = v220;

                          v222 = (v2 + v321[13]);
                          v223 = *v222;
                          v224 = v222[1];

                          v225 = [a1 productID];
                          if (v225)
                          {
                            v226 = v225;
                            v227 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v229 = v228;

                            if (v223 == v227 && v224 == v229)
                            {

                              goto LABEL_168;
                            }

                            v230 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v230)
                            {

                              goto LABEL_168;
                            }
                          }

                          else
                          {
                          }

                          *v222 = v219;
                          v222[1] = v221;
LABEL_168:
                          v231 = [a1 ratchet];
                          if (!v231)
                          {
                            goto LABEL_177;
                          }

                          v232 = v231;
                          v233 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v235 = v234;

                          v236 = (v2 + v321[24]);
                          v237 = *v236;
                          v238 = v236[1];

                          v239 = [a1 ratchet];
                          if (v239)
                          {
                            v240 = v239;
                            v241 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v243 = v242;

                            if (v237 == v241 && v238 == v243)
                            {

                              goto LABEL_177;
                            }

                            v244 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v244)
                            {

                              goto LABEL_177;
                            }
                          }

                          else
                          {
                          }

                          *v236 = v233;
                          v236[1] = v235;
LABEL_177:
                          v245 = [a1 settingsMask];
                          if (!v245)
                          {
                            goto LABEL_186;
                          }

                          v246 = v245;
                          v247 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v249 = v248;

                          v250 = (v2 + v321[26]);
                          v251 = *v250;
                          v252 = v250[1];

                          v253 = [a1 settingsMask];
                          if (v253)
                          {
                            v254 = v253;
                            v255 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v257 = v256;

                            if (v251 == v255 && v252 == v257)
                            {

                              goto LABEL_186;
                            }

                            v258 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v258)
                            {

                              goto LABEL_186;
                            }
                          }

                          else
                          {
                          }

                          *v250 = v247;
                          v250[1] = v249;
LABEL_186:
                          v259 = [a1 spatialAudio];
                          if (!v259)
                          {
                            goto LABEL_195;
                          }

                          v260 = v259;
                          v261 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v263 = v262;

                          v264 = (v2 + v321[21]);
                          v265 = *v264;
                          v266 = v264[1];

                          v267 = [a1 spatialAudio];
                          if (v267)
                          {
                            v268 = v267;
                            v269 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v271 = v270;

                            if (v265 == v269 && v266 == v271)
                            {

                              goto LABEL_195;
                            }

                            v272 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v272)
                            {

                              goto LABEL_195;
                            }
                          }

                          else
                          {
                          }

                          *v264 = v261;
                          v264[1] = v263;
LABEL_195:
                          v273 = [a1 supportedServices];
                          if (!v273)
                          {
                            goto LABEL_204;
                          }

                          v274 = v273;
                          v275 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v277 = v276;

                          v278 = (v2 + v321[27]);
                          v279 = *v278;
                          v280 = v278[1];

                          v281 = [a1 supportedServices];
                          if (v281)
                          {
                            v282 = v281;
                            v283 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v285 = v284;

                            if (v279 == v283 && v280 == v285)
                            {

                              goto LABEL_204;
                            }

                            v286 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v286)
                            {

                              goto LABEL_204;
                            }
                          }

                          else
                          {
                          }

                          *v278 = v275;
                          v278[1] = v277;
LABEL_204:
                          v287 = [a1 vendorID];
                          if (!v287)
                          {
                            goto LABEL_213;
                          }

                          v288 = v287;
                          v289 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v291 = v290;

                          v292 = (v2 + v321[14]);
                          v293 = *v292;
                          v294 = v292[1];

                          v295 = [a1 vendorID];
                          if (v295)
                          {
                            v296 = v295;
                            v297 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v299 = v298;

                            if (v293 == v297 && v294 == v299)
                            {

                              goto LABEL_213;
                            }

                            v300 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v300)
                            {

                              goto LABEL_213;
                            }
                          }

                          else
                          {
                          }

                          *v292 = v289;
                          v292[1] = v291;
LABEL_213:
                          v301 = [a1 version];
                          if (v301)
                          {
                            v302 = v301;
                            v303 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v305 = v304;

                            v306 = (v2 + v321[28]);
                            v307 = *v306;
                            v308 = v306[1];

                            v309 = [a1 version];
                            if (v309)
                            {
                              v310 = v309;
                              v311 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                              v313 = v312;

                              if (v307 == v311 && v308 == v313)
                              {

                                goto LABEL_222;
                              }

                              v314 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v314)
                              {

                                goto LABEL_222;
                              }
                            }

                            else
                            {
                            }

                            *v306 = v303;
                            v306[1] = v305;
                          }

LABEL_222:
                          v315 = v317;
                          static Date.now.getter();
                          return (*(v318 + 40))(v2 + v321[30], v315, v319);
                        }
                      }

                      else
                      {
                        v2 = v320;
                        if (v181 >> 60 == 15)
                        {
                          goto LABEL_135;
                        }

                        v185 = 0;
                        v187 = 0xF000000000000000;
                      }

LABEL_139:
                      sub_1000FF5CC(v182, v181);
                      sub_1000FF5CC(v185, v187);
                      goto LABEL_140;
                    }
                  }

                  else
                  {
                    v2 = v320;
                    if (v167 >> 60 == 15)
                    {
                      goto LABEL_122;
                    }

                    v171 = 0;
                    v173 = 0xF000000000000000;
                  }

LABEL_126:
                  sub_1000FF5CC(v168, v167);
                  sub_1000FF5CC(v171, v173);
                  goto LABEL_127;
                }
              }

              else
              {
                v2 = v320;
                if (v125 >> 60 == 15)
                {
                  goto LABEL_91;
                }

                v129 = 0;
                v131 = 0xF000000000000000;
              }

LABEL_95:
              sub_1000FF5CC(v126, v125);
              sub_1000FF5CC(v129, v131);
              goto LABEL_96;
            }
          }

          else
          {
            v2 = v320;
            if (v111 >> 60 == 15)
            {
              goto LABEL_78;
            }

            v115 = 0;
            v117 = 0xF000000000000000;
          }

LABEL_82:
          sub_1000FF5CC(v112, v111);
          sub_1000FF5CC(v115, v117);
          goto LABEL_83;
        }
      }

      else
      {
        v2 = v320;
        if (v41 >> 60 == 15)
        {
          goto LABEL_29;
        }

        v45 = 0;
        v47 = 0xF000000000000000;
      }

LABEL_33:
      sub_1000FF5CC(v42, v41);
      sub_1000FF5CC(v45, v47);
      goto LABEL_34;
    }

    v15 = v14;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = v2 + v321[10];
    v21 = *v19;
    v20 = *(v19 + 8);
    sub_1000EE9F4(*v19, v20);
    v22 = [a1 accessoryHint];
    if (v22)
    {
      v23 = v22;
      v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      if (v20 >> 60 == 15)
      {
        v2 = v320;
        if (v26 >> 60 != 15)
        {
          goto LABEL_20;
        }

LABEL_16:
        sub_1000EF870(v16, v18);
        sub_1000FF5CC(v21, v20);
        goto LABEL_22;
      }

      v2 = v320;
      if (v26 >> 60 != 15)
      {
        sub_1000EE9F4(v21, v20);
        sub_1000FF5B8(v24, v26);
        v34 = sub_100121564(v21, v20, v24, v26);
        sub_1000FF5CC(v24, v26);
        sub_1000EF870(v21, v20);
        sub_1000FF5CC(v24, v26);
        sub_1000FF5CC(v21, v20);
        if (v34)
        {
          sub_1000EF870(v16, v18);
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v2 = v320;
      if (v20 >> 60 == 15)
      {
        goto LABEL_16;
      }

      v24 = 0;
      v26 = 0xF000000000000000;
    }

LABEL_20:
    sub_1000FF5CC(v21, v20);
    sub_1000FF5CC(v24, v26);
LABEL_21:
    sub_1000EF870(*v19, *(v19 + 8));
    *v19 = v16;
    *(v19 + 8) = v18;
    goto LABEL_22;
  }

  static os_log_type_t.info.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100226100;
  v28 = a1;
  v29 = [v28 description];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_1000EE954();
  *(v27 + 32) = v30;
  *(v27 + 40) = v32;
  os_log(_:dso:log:_:_:)();
}

id sub_10011D740(void *a1)
{
  if (!a1)
  {
    v13 = 0;
    return (v13 & 1);
  }

  v2 = a1;
  v3 = [v2 listeningServices];
  if (!v3)
  {
    v14 = 0;
    goto LABEL_32;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [v2 productID];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == 876163384 && v12 == 0xE400000000000000)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v16 = [v2 productID];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == 925905464 && v20 == 0xE400000000000000)
    {

LABEL_15:

      v14 = 0;
      goto LABEL_32;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v22 = type metadata accessor for MagicPairingSettingsRecord();
  v23 = (v1 + *(v22 + 76));
  v24 = *v23;
  v25 = v23[1];

  v26 = sub_10011EDEC(v24, v25);
  LOBYTE(v25) = v27;
  v28 = sub_10011EDEC(v5, v7);
  if (v25)
  {
    v30 = 0;
  }

  else
  {
    v30 = v26;
  }

  if (v29)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  v32 = (v31 ^ v30) & 0xFF8C;
  v14 = v32 != 0;
  v33 = [v2 listeningServicesV2];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_10011EDEC(v35, v37);
    v40 = v39;
    v41 = (v1 + *(v22 + 80));
    v42 = *v41;
    v43 = v41[1];

    v44 = sub_10011EDEC(v42, v43);
    if (v45)
    {
      v46 = 0;
    }

    else
    {
      v46 = v44;
    }

    if (v40)
    {
      v47 = 0;
    }

    else
    {
      v47 = v38;
    }

    v48 = v47 != v46;
    if (v32)
    {
      v14 = 1;
    }

    else
    {
      v14 = v48;
    }
  }

LABEL_32:
  v49 = [v2 productID];
  if (v49)
  {

    v50 = [v2 productID];
    if (!v50)
    {
      goto LABEL_191;
    }

    v51 = v50;
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 52));
    if (v52 == *v55 && v54 == v55[1])
    {
    }

    else
    {
      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v56 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v57 = [v2 vendorID];
  if (v57)
  {

    v58 = [v2 vendorID];
    if (!v58)
    {
      goto LABEL_191;
    }

    v59 = v58;
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    v63 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 56));
    if (v60 == *v63 && v62 == v63[1])
    {
    }

    else
    {
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v64 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v65 = [v2 masterKey];
  if (v65)
  {
    v66 = v65;
    v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    sub_1000EF870(v67, v69);
    v70 = [v2 masterKey];
    if (v70)
    {
      v71 = v70;
      v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;
    }

    else
    {
      v72 = 0;
      v74 = 0xF000000000000000;
    }

    v75 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 28));
    v76 = *v75;
    v77 = v75[1];
    sub_1000EE9F4(*v75, v77);
    if (v74 >> 60 == 15)
    {
      if (v77 >> 60 != 15)
      {
        goto LABEL_79;
      }

      sub_1000FF5CC(v72, v74);
    }

    else
    {
      if (v77 >> 60 == 15)
      {
        goto LABEL_79;
      }

      sub_1000EE9F4(v76, v77);
      sub_1000FF5B8(v72, v74);
      v78 = sub_100121564(v72, v74, v76, v77);
      sub_1000EF870(v76, v77);
      sub_1000FF5CC(v72, v74);
      sub_1000FF5CC(v76, v77);
      sub_1000FF5CC(v72, v74);
      if ((v78 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v79 = [v2 masterHint];
  if (v79)
  {
    v80 = v79;
    v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    sub_1000EF870(v81, v83);
    v84 = [v2 masterHint];
    if (v84)
    {
      v85 = v84;
      v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v86;
    }

    else
    {
      v72 = 0;
      v74 = 0xF000000000000000;
    }

    v87 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 32));
    v76 = *v87;
    v77 = v87[1];
    sub_1000EE9F4(*v87, v77);
    if (v74 >> 60 == 15)
    {
      if (v77 >> 60 != 15)
      {
        goto LABEL_79;
      }

      sub_1000FF5CC(v72, v74);
    }

    else
    {
      if (v77 >> 60 == 15)
      {
        goto LABEL_79;
      }

      sub_1000EE9F4(v76, v77);
      sub_1000FF5B8(v72, v74);
      v88 = sub_100121564(v72, v74, v76, v77);
      sub_1000EF870(v76, v77);
      sub_1000FF5CC(v72, v74);
      sub_1000FF5CC(v76, v77);
      sub_1000FF5CC(v72, v74);
      if ((v88 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v89 = [v2 accessoryKey];
  if (v89)
  {
    v90 = v89;
    v91 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;

    sub_1000EF870(v91, v93);
    v94 = [v2 accessoryKey];
    if (v94)
    {
      v95 = v94;
      v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v96;
    }

    else
    {
      v72 = 0;
      v74 = 0xF000000000000000;
    }

    v97 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 36));
    v76 = *v97;
    v77 = v97[1];
    sub_1000EE9F4(*v97, v77);
    if (v74 >> 60 == 15)
    {
      if (v77 >> 60 != 15)
      {
        goto LABEL_79;
      }

      sub_1000FF5CC(v72, v74);
    }

    else
    {
      if (v77 >> 60 == 15)
      {
        goto LABEL_79;
      }

      sub_1000EE9F4(v76, v77);
      sub_1000FF5B8(v72, v74);
      v98 = sub_100121564(v72, v74, v76, v77);
      sub_1000EF870(v76, v77);
      sub_1000FF5CC(v72, v74);
      sub_1000FF5CC(v76, v77);
      sub_1000FF5CC(v72, v74);
      if ((v98 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v99 = [v2 accessoryHint];
  if (v99)
  {
    v100 = v99;
    v101 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    sub_1000EF870(v101, v103);
    v104 = [v2 accessoryHint];
    if (v104)
    {
      v105 = v104;
      v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v106;
    }

    else
    {
      v72 = 0;
      v74 = 0xF000000000000000;
    }

    v107 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 40));
    v76 = *v107;
    v77 = v107[1];
    sub_1000EE9F4(*v107, v77);
    if (v74 >> 60 == 15)
    {
      if (v77 >> 60 != 15)
      {
        goto LABEL_79;
      }

      sub_1000FF5CC(v72, v74);
    }

    else
    {
      if (v77 >> 60 == 15)
      {
        goto LABEL_79;
      }

      sub_1000EE9F4(v76, v77);
      sub_1000FF5B8(v72, v74);
      v110 = sub_100121564(v72, v74, v76, v77);
      sub_1000EF870(v76, v77);
      sub_1000FF5CC(v72, v74);
      sub_1000FF5CC(v76, v77);
      sub_1000FF5CC(v72, v74);
      if ((v110 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v111 = [v2 buttonModes];
  if (v111)
  {

    v112 = [v2 buttonModes];
    if (!v112)
    {
      goto LABEL_191;
    }

    v113 = v112;
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v116 = v115;

    v117 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 60));
    if (v114 == *v117 && v116 == v117[1])
    {
    }

    else
    {
      v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v118 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v119 = [v2 color];
  if (v119)
  {

    v120 = [v2 color];
    if (!v120)
    {
      goto LABEL_191;
    }

    v121 = v120;
    v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v123;

    v125 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 64));
    if (v122 == *v125 && v124 == v125[1])
    {
    }

    else
    {
      v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v126 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v127 = [v2 deviceIDFeatureBitsV1];
  if (v127)
  {

    v128 = [v2 deviceIDFeatureBitsV1];
    if (!v128)
    {
      goto LABEL_191;
    }

    v129 = v128;
    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v131;

    v133 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 68));
    if (v130 == *v133 && v132 == v133[1])
    {
    }

    else
    {
      v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v134 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v135 = [v2 deviceIDFeatureBitsV2];
  if (v135)
  {

    v136 = [v2 deviceIDFeatureBitsV2];
    if (!v136)
    {
      goto LABEL_191;
    }

    v137 = v136;
    v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v140 = v139;

    v141 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 72));
    if (v138 == *v141 && v140 == v141[1])
    {
    }

    else
    {
      v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v142 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v143 = [v2 encryptionKey];
  if (v143)
  {
    v144 = v143;
    v145 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v147 = v146;

    sub_1000EF870(v145, v147);
    v148 = [v2 encryptionKey];
    if (v148)
    {
      v149 = v148;
      v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v150;
    }

    else
    {
      v72 = 0;
      v74 = 0xF000000000000000;
    }

    v151 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 48));
    v76 = *v151;
    v77 = v151[1];
    sub_1000EE9F4(*v151, v77);
    if (v74 >> 60 == 15)
    {
      if (v77 >> 60 != 15)
      {
        goto LABEL_79;
      }

      sub_1000FF5CC(v72, v74);
    }

    else
    {
      if (v77 >> 60 == 15)
      {
        goto LABEL_79;
      }

      sub_1000EE9F4(v76, v77);
      sub_1000FF5B8(v72, v74);
      v152 = sub_100121564(v72, v74, v76, v77);
      sub_1000EF870(v76, v77);
      sub_1000FF5CC(v72, v74);
      sub_1000FF5CC(v76, v77);
      sub_1000FF5CC(v72, v74);
      if ((v152 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v153 = [v2 irk];
  if (!v153)
  {
    goto LABEL_124;
  }

  v154 = v153;
  v155 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v157 = v156;

  sub_1000EF870(v155, v157);
  v158 = [v2 irk];
  if (v158)
  {
    v159 = v158;
    v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v160;
  }

  else
  {
    v72 = 0;
    v74 = 0xF000000000000000;
  }

  v161 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 44));
  v76 = *v161;
  v77 = v161[1];
  sub_1000EE9F4(*v161, v77);
  if (v74 >> 60 == 15)
  {
    if (v77 >> 60 == 15)
    {
      sub_1000FF5CC(v72, v74);
      goto LABEL_124;
    }

LABEL_79:

    sub_1000FF5CC(v72, v74);
    v108 = v76;
    v109 = v77;
    goto LABEL_80;
  }

  if (v77 >> 60 == 15)
  {
    goto LABEL_79;
  }

  sub_1000EE9F4(v76, v77);
  sub_1000FF5B8(v72, v74);
  v162 = sub_100121564(v72, v74, v76, v77);
  sub_1000EF870(v76, v77);
  sub_1000FF5CC(v72, v74);
  sub_1000FF5CC(v76, v77);
  sub_1000FF5CC(v72, v74);
  if ((v162 & 1) == 0)
  {
    goto LABEL_191;
  }

LABEL_124:
  v163 = [v2 listeningServices];
  if (v163 || (v163 = [v2 listeningServicesV2]) != 0)
  {

    if (v14)
    {
      goto LABEL_191;
    }
  }

  v164 = [v2 spatialAudio];
  if (v164)
  {

    v165 = [v2 spatialAudio];
    if (!v165)
    {
      goto LABEL_191;
    }

    v166 = v165;
    v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v169 = v168;

    v170 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 84));
    if (v167 == *v170 && v169 == v170[1])
    {
    }

    else
    {
      v171 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v171 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v172 = [v2 optimizedBatteryCharging];
  if (v172)
  {

    v173 = [v2 optimizedBatteryCharging];
    if (!v173)
    {
      goto LABEL_191;
    }

    v174 = v173;
    v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v177 = v176;

    v178 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 88));
    if (v175 == *v178 && v177 == v178[1])
    {
    }

    else
    {
      v179 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v179 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v180 = [v2 optimizedBatteryFullChargeDeadline];
  if (v180)
  {

    v181 = [v2 optimizedBatteryFullChargeDeadline];
    if (!v181)
    {
      goto LABEL_191;
    }

    v182 = v181;
    v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v185 = v184;

    v186 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 92));
    if (v183 == *v186 && v185 == v186[1])
    {
    }

    else
    {
      v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v187 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v188 = [v2 ratchet];
  if (!v188)
  {
    goto LABEL_162;
  }

  result = [v2 ratchet];
  if (!result)
  {
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  v190 = result;
  v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v193 = v192;

  v194 = sub_10011EDEC(v191, v193);
  if (v195)
  {
    v196 = 0;
  }

  else
  {
    v196 = v194;
  }

  v197 = type metadata accessor for MagicPairingSettingsRecord();
  v198 = (v1 + *(v197 + 96));
  v199 = *v198;
  v200 = v198[1];

  v201 = sub_10011EDEC(v199, v200);
  if (v202)
  {
    if (v196 < 1)
    {
      goto LABEL_162;
    }
  }

  else if (v201 >= v196)
  {
    goto LABEL_162;
  }

  v203 = [v2 encryptionKey];
  if (!v203)
  {
    v205 = 0;
    v212 = (v1 + *(v197 + 48));
    v210 = *v212;
    v209 = v212[1];
    v207 = 0xF000000000000000;
    goto LABEL_159;
  }

  v204 = v203;
  v205 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v207 = v206;

  v208 = (v1 + *(v197 + 48));
  v210 = *v208;
  v209 = v208[1];
  if (v207 >> 60 == 15)
  {
LABEL_159:
    if (v209 >> 60 != 15)
    {
LABEL_161:
      v213 = v209;
      sub_1000EE9F4(v210, v209);
      sub_1000FF5CC(v205, v207);
      sub_1000FF5CC(v210, v213);
      goto LABEL_162;
    }

    sub_1000EE9F4(v210, v209);

    v108 = v205;
    v109 = v207;
LABEL_80:
    sub_1000FF5CC(v108, v109);
LABEL_192:
    v13 = 1;
    return (v13 & 1);
  }

  v211 = v208[1];
  if (v209 >> 60 == 15)
  {
    goto LABEL_161;
  }

  sub_1000EE9F4(v210, v209);
  sub_1000EE9F4(v210, v211);
  sub_1000FF5B8(v205, v207);
  v253 = sub_100121564(v205, v207, v210, v211);
  sub_1000FF5CC(v210, v211);
  sub_1000EF870(v210, v211);
  sub_1000FF5CC(v205, v207);
  sub_1000FF5CC(v205, v207);
  if (v253)
  {
    goto LABEL_191;
  }

LABEL_162:
  v214 = [v2 settingsMask];
  if (!v214)
  {
    goto LABEL_168;
  }

  v215 = [v2 settingsMask];
  if (!v215)
  {
    goto LABEL_191;
  }

  v216 = v215;
  v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v219 = v218;

  v220 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 104));
  if (v217 == *v220 && v219 == v220[1])
  {

    goto LABEL_168;
  }

  v221 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v221 & 1) == 0)
  {
LABEL_191:

    goto LABEL_192;
  }

LABEL_168:
  v222 = [v2 supportedServices];
  if (!v222)
  {
    goto LABEL_176;
  }

  result = [v2 supportedServices];
  if (!result)
  {
    goto LABEL_195;
  }

  v223 = result;
  v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v226 = v225;

  v227 = HIBYTE(v226) & 0xF;
  if ((v226 & 0x2000000000000000) == 0)
  {
    v227 = v224 & 0xFFFFFFFFFFFFLL;
  }

  if (!v227)
  {
    goto LABEL_176;
  }

  result = [v2 supportedServices];
  if (!result)
  {
    goto LABEL_196;
  }

  v228 = result;
  v229 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v231 = v230;

  v232 = sub_10011EDEC(v229, v231);
  if ((v233 & 1) == 0 && !v232)
  {
    goto LABEL_176;
  }

  result = [v2 supportedServices];
  if (result)
  {
    v241 = result;
    v242 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v244 = v243;

    v245 = sub_10011EDEC(v242, v244);
    LOBYTE(v242) = v246;
    v247 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 108));
    v248 = *v247;
    v249 = v247[1];

    v250 = sub_10011EDEC(v248, v249);
    if (v242)
    {
      if ((v251 & 1) == 0)
      {
        goto LABEL_191;
      }
    }

    else if ((v251 & 1) != 0 || v245 != v250)
    {
      goto LABEL_191;
    }

LABEL_176:
    v234 = [v2 version];
    if (!v234)
    {
LABEL_181:

      v13 = 0;
      return (v13 & 1);
    }

    v235 = [v2 version];
    if (v235)
    {
      v236 = v235;
      v237 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v239 = v238;

      v240 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord() + 112));
      if (v237 != *v240 || v239 != v240[1])
      {
        v252 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v13 = v252 ^ 1;
        return (v13 & 1);
      }

      goto LABEL_181;
    }

    goto LABEL_191;
  }

LABEL_197:
  __break(1u);
  return result;
}

uint64_t sub_10011EAEC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_1001204B4(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10011EDEC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100120A38(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}