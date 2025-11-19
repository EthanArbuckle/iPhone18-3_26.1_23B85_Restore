uint64_t sub_100044B08()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.missedCall(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004810, v2, v1);
}

uint64_t sub_100044BC0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Fetching missed call status", v11, 2u);
  }

  (*(v5 + 8))(v8, v4);
  v12 = v2[20];
  sub_100005E78(v2 + 16, v2[19]);
  dispatch thunk of LaunchRecordReaderProtocol.reload()();
  v13 = v2[20];
  sub_100005E78(v2 + 16, v2[19]);
  v14 = dispatch thunk of LaunchRecordReaderProtocol.dates(forContactIdentifier:)();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v2;
  v15[4] = v14;
  v16 = sub_100005E30(&qword_100062700, &unk_10004D940);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();

  return Promise.init(startBlock:)();
}

void sub_100044DBC(void (*a1)(char **), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v87 = a2;
  v88 = a1;
  v7 = type metadata accessor for StatusType();
  v99 = *(v7 - 8);
  v100 = v7;
  v8 = *(v99 + 64);
  __chkstk_darwin(v7);
  v98 = (&v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100005E30(&qword_100062738, &qword_10004D970);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v82 - v12;
  v14 = sub_100005E30(&qword_100063E28, &qword_10004EF18);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v95 = &v82 - v16;
  v17 = type metadata accessor for MissedCallPersonStatus();
  *&v92 = *(v17 - 8);
  v18 = *(v92 + 64);
  __chkstk_darwin(v17);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Logger();
  v85 = *(v86 - 8);
  v21 = *(v85 + 64);
  v22 = __chkstk_darwin(v86);
  v101 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v82 - v24;
  v26 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v28 = [v26 predicateForContactsWithIdentifiers:isa];

  sub_1000077E8(a4 + 40, &v102);
  sub_100005E78(&v102, v104);
  v84 = v28;
  v29 = dispatch thunk of ContactFetcherProtocol.contacts(withPredicate:includeImages:)();
  v30 = v92;
  v100 = v20;
  v96 = v17;
  v83 = v25;
  sub_100003938(&v102);
  v31 = sub_100007728(_swiftEmptyArrayStorage);
  v32 = v29;
  if (v29 >> 62)
  {
    goto LABEL_29;
  }

  v33 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35 = v95;
  v34 = v96;
  if (!v33)
  {
LABEL_30:
    v70 = v31;

    v71 = v83;
    static PeopleLogger.daemon.getter();
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v102 = v75;
      *v74 = 136315138;

      sub_100005E30(&qword_100063A38, &qword_10004EA60);
      v76 = Dictionary.description.getter();
      v78 = v77;

      v79 = sub_10002580C(v76, v78, &v102);

      *(v74 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v72, v73, "Returning status for missedCall %s", v74, 0xCu);
      sub_100003938(v75);
    }

    (*(v85 + 8))(v71, v86);
    v80 = v88;
    v81 = v84;
    v102 = v70;
    v103 = 0;

    v80(&v102);
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_3:
  if (v33 >= 1)
  {
    v36 = 0;
    v98 = (v30 + 48);
    v99 = v32 & 0xC000000000000001;
    v93 = (v30 + 16);
    v94 = (v30 + 32);
    v89 = (v30 + 8);
    v92 = xmmword_10004D790;
    v91 = v13;
    v90 = v32;
    v97 = v33;
    while (1)
    {
      v101 = v31;
      if (v99)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v37 = *(v32 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = [v37 identifier];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      if (a5[2])
      {
        v43 = sub_100005EBC(v40, v42);
        v45 = v44;

        if (v45)
        {
          v46 = a5[7];
          v47 = type metadata accessor for Date();
          v48 = *(v47 - 8);
          (*(v48 + 16))(v13, v46 + *(v48 + 72) * v43, v47);
          (*(v48 + 56))(v13, 0, 1, v47);
          v34 = v96;
          goto LABEL_15;
        }
      }

      else
      {
      }

      v49 = type metadata accessor for Date();
      (*(*(v49 - 8) + 56))(v13, 1, 1, v49);
LABEL_15:
      sub_1000459B0(v38, v13, v35);
      sub_100007DB0(v13, &qword_100062738, &qword_10004D970);
      if ((*v98)(v35, 1, v34) == 1)
      {

        sub_100007DB0(v35, &qword_100063E28, &qword_10004EF18);
        v31 = v101;
      }

      else
      {
        v32 = a5;
        v50 = v100;
        (*v94)(v100, v35, v34);
        v51 = [v38 identifier];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v34;
        v54 = v53;

        sub_100005E30(&qword_100063260, &qword_10004E2B0);
        a5 = swift_allocObject();
        *(a5 + 1) = v92;
        a5[7] = v52;
        a5[8] = sub_100046B08(&qword_100063E30, 255, &type metadata accessor for MissedCallPersonStatus);
        v55 = sub_100007784(a5 + 4);
        (*v93)(v55, v50, v52);
        v31 = v101;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102 = v31;
        v13 = sub_100005EBC(v30, v54);
        v58 = *(v31 + 2);
        v59 = (v57 & 1) == 0;
        v60 = v58 + v59;
        if (__OFADD__(v58, v59))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          v33 = _CocoaArrayWrapper.endIndex.getter();
          v35 = v95;
          v34 = v96;
          if (!v33)
          {
            goto LABEL_30;
          }

          goto LABEL_3;
        }

        v61 = v57;
        if (*(v31 + 3) >= v60)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100006EE0();
          }
        }

        else
        {
          sub_100006460(v60, isUniquelyReferenced_nonNull_native);
          v62 = sub_100005EBC(v30, v54);
          if ((v61 & 1) != (v63 & 1))
          {
            goto LABEL_34;
          }

          v13 = v62;
        }

        v35 = v95;
        v31 = v102;
        if (v61)
        {
          v64 = *(v102 + 7);
          v65 = *(v64 + 8 * v13);
          *(v64 + 8 * v13) = a5;
        }

        else
        {
          *&v102[8 * (v13 >> 6) + 64] |= 1 << v13;
          v66 = (*(v31 + 6) + 16 * v13);
          *v66 = v30;
          v66[1] = v54;
          *(*(v31 + 7) + 8 * v13) = a5;
          v67 = *(v31 + 2);
          v68 = __OFADD__(v67, 1);
          v69 = v67 + 1;
          if (v68)
          {
            goto LABEL_28;
          }

          *(v31 + 2) = v69;
        }

        v34 = v96;
        (*v89)(v100, v96);
        a5 = v32;
        v13 = v91;
        v32 = v90;
      }

      if (v97 == ++v36)
      {
        goto LABEL_30;
      }
    }
  }

  __break(1u);
LABEL_34:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000459B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v128 = a2;
  v5 = sub_100005E30(&qword_100063DF0, &unk_10004EF00);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v126 = v112 - v7;
  v8 = type metadata accessor for CallServiceProvider();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v129 = v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v131 = *(v12 - 8);
  v132 = v12;
  v13 = *(v131 + 64);
  v14 = __chkstk_darwin(v12);
  v123 = v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = v112 - v17;
  __chkstk_darwin(v16);
  v130 = v112 - v19;
  v20 = sub_100005E30(&qword_100062738, &qword_10004D970);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v127 = v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = v112 - v25;
  __chkstk_darwin(v24);
  v28 = v112 - v27;
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v125 = v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v124 = v112 - v35;
  __chkstk_darwin(v34);
  v37 = v112 - v36;
  v122 = a1;
  v38 = CNContact.callHistoryHandles.getter();
  v39 = v38;
  if (v38 >> 62)
  {
LABEL_65:
    v40 = _CocoaArrayWrapper.endIndex.getter();
    if (!v40)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
LABEL_69:

      goto LABEL_70;
    }
  }

  v135 = v40;
  v133 = v37;
  v41 = sub_100046B50();
  v42 = v41;
  if (!(v41 >> 62))
  {
    result = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_68;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_68:

    goto LABEL_69;
  }

LABEL_5:
  v134 = v9;
  if ((v42 & 0xC000000000000001) != 0)
  {
    v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:

    v45 = [v44 date];

    if (v45)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v30 + 56))(v26, 0, 1, v29);
    }

    else
    {
      (*(v30 + 56))(v26, 1, 1, v29);
    }

    v46 = v133;
    sub_1000354F0(v26, v28);
    v9 = (v30 + 48);
    v47 = *(v30 + 48);
    if (v47(v28, 1, v29) == 1)
    {

      sub_100007DB0(v28, &qword_100062738, &qword_10004D970);
    }

    else
    {
      v118 = v47;
      v48 = *(v30 + 32);
      v115 = v30 + 32;
      v114 = v48;
      v48(v46, v28, v29);
      v49 = [v121 remoteParticipantHandles];
      if (v49)
      {
        v50 = v49;
        v112[1] = v30 + 48;
        v119 = v30;
        v116 = v29;
        v117 = a3;
        sub_100010734(0, &qword_100063DF8, CHHandle_ptr);
        sub_100046F98();
        v37 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = 0;
        v120 = sub_1000440A4(v37);

        v28 = 0;
        v30 = v39 & 0xC000000000000001;
        a3 = v39 & 0xFFFFFFFFFFFFFF8;
        v26 = _swiftEmptyArrayStorage;
        v113 = v8;
        do
        {
          if (v30)
          {
            v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v28 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_64;
            }

            v51 = *(v39 + 8 * v28 + 32);
          }

          v9 = v51;
          v8 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          v52 = [v51 value];
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v53;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_100022130(0, *(v26 + 2) + 1, 1, v26);
          }

          v29 = *(v26 + 2);
          v54 = *(v26 + 3);
          if (v29 >= v54 >> 1)
          {
            v26 = sub_100022130((v54 > 1), v29 + 1, 1, v26);
          }

          *(v26 + 2) = v29 + 1;
          v55 = &v26[16 * v29];
          *(v55 + 4) = v37;
          *(v55 + 5) = v18;
          ++v28;
          v9 = v134;
        }

        while (v8 != v135);

        v56 = sub_10001E3F0(v26);

        v57 = v120;
        v58 = *(v120 + 16);
        if (v58)
        {
          v59 = 0;
          v60 = v120 + 32;
          v61 = v56 + 56;
          while (1)
          {
            if (v59 >= *(v57 + 16))
            {
              goto LABEL_74;
            }

            v62 = (v60 + 16 * v59);
            v64 = *v62;
            v63 = v62[1];
            if (!*(v56 + 16))
            {
              break;
            }

            v65 = *(v56 + 40);
            Hasher.init(_seed:)();

            String.hash(into:)();
            v66 = Hasher._finalize()();
            v67 = -1 << *(v56 + 32);
            v68 = v66 & ~v67;
            if (((*(v61 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
            {
LABEL_39:

LABEL_40:

              v72 = v130;
              static PeopleLogger.daemon.getter();

              v73 = Logger.logObject.getter();
              v74 = static os_log_type_t.debug.getter();

              v75 = os_log_type_enabled(v73, v74);
              a3 = v117;
              v76 = v116;
              if (v75)
              {
                v77 = swift_slowAlloc();
                v78 = swift_slowAlloc();
                v136[0] = v78;
                *v77 = 136315138;
                v79 = sub_10002580C(v64, v63, v136);

                *(v77 + 4) = v79;
                _os_log_impl(&_mh_execute_header, v73, v74, "Not a 1 to 1 call with %s", v77, 0xCu);
                sub_100003938(v78);
              }

              else
              {
              }

              (*(v131 + 8))(v72, v132);
              (*(v119 + 8))(v133, v76);
              goto LABEL_70;
            }

            ++v59;
            v69 = ~v67;
            while (1)
            {
              v70 = (*(v56 + 48) + 16 * v68);
              v71 = *v70 == v64 && v70[1] == v63;
              if (v71 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v68 = (v68 + 1) & v69;
              if (((*(v61 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            v9 = v134;
            v57 = v120;
            if (v59 == v58)
            {
              goto LABEL_45;
            }
          }

          goto LABEL_40;
        }

LABEL_45:

        v83 = v127;
        sub_100047000(v128, v127);
        v84 = v116;
        if (v118(v83, 1, v116) == 1)
        {
          sub_100007DB0(v83, &qword_100062738, &qword_10004D970);
          a3 = v117;
          v85 = v129;
          v86 = v113;
        }

        else
        {
          v87 = v124;
          v114(v124, v83, v84);
          v88 = v133;
          v89 = static Date.< infix(_:_:)();
          v85 = v129;
          v86 = v113;
          if (v89)
          {
            v90 = v123;
            static PeopleLogger.daemon.getter();
            v91 = v122;
            v92 = Logger.logObject.getter();
            v93 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v92, v93))
            {
              v94 = swift_slowAlloc();
              v95 = swift_slowAlloc();
              v136[0] = v95;
              *v94 = 136315138;
              v96 = [v91 identifier];
              v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v99 = v98;

              v100 = sub_10002580C(v97, v99, v136);

              *(v94 + 4) = v100;
              _os_log_impl(&_mh_execute_header, v92, v93, "%s viewed since missed call", v94, 0xCu);
              sub_100003938(v95);

              (*(v131 + 8))(v90, v132);
              v101 = *(v119 + 8);
              v101(v124, v84);
            }

            else
            {

              (*(v131 + 8))(v90, v132);
              v101 = *(v119 + 8);
              v101(v87, v84);
            }

            v101(v88, v84);
            v110 = 1;
            a3 = v117;
            goto LABEL_71;
          }

          (*(v119 + 8))(v87, v84);
          a3 = v117;
          v9 = v134;
        }

        String.localized.getter();
        sub_100005E30(&qword_100063E08, &qword_10004EF10);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_10004D790;
        v103 = Date.relativeDateString()();
        *(v102 + 56) = &type metadata for String;
        *(v102 + 64) = sub_100047070();
        *(v102 + 32) = v103;
        String.init(format:_:)();

        v104 = [v121 serviceProvider];
        if (v104)
        {
          v105 = v104;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v106 = v126;
        CallServiceProvider.init(rawValue:)();
        v107 = v9[6];
        if (v107(v106, 1, v86) == 1)
        {
          (v9[13])(v85, enum case for CallServiceProvider.other(_:), v86);
          if (v107(v106, 1, v86) != 1)
          {
            sub_100007DB0(v106, &qword_100063DF0, &unk_10004EF00);
          }
        }

        else
        {
          (v9[4])(v85, v106, v86);
        }

        v108 = v119;
        v109 = v133;
        (*(v119 + 16))(v125, v133, v84);
        MissedCallPersonStatus.init(localizedString:serviceProvider:date:)();

        (*(v108 + 8))(v109, v84);
        v110 = 0;
        goto LABEL_71;
      }

      static PeopleLogger.daemon.getter();
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "Missed call but no remote handles", v82, 2u);
        v46 = v133;
      }

      (*(v131 + 8))(v18, v132);
      (*(v30 + 8))(v46, v29);
    }

LABEL_70:
    v110 = 1;
LABEL_71:
    v111 = type metadata accessor for MissedCallPersonStatus();
    return (*(*(v111 - 8) + 56))(a3, v110, 1, v111);
  }

  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(v42 + 32);
    v121 = v44;
    goto LABEL_8;
  }

  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_1000468D4()
{
  sub_100007E10((v0 + 2));
  v1 = v0[4];

  sub_100003938(v0 + 5);
  sub_100003938(v0 + 10);
  v2 = v0[15];

  sub_100003938(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100046958@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.missedCall(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000469CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return StatusSource.debugID.getter(a1, WitnessTable);
}

uint64_t sub_100046A68(uint64_t a1, uint64_t a2)
{
  result = sub_100046B08(&qword_100063DE0, a2, type metadata accessor for MissedCallStatusSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100046B08(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100046B50()
{
  v0 = type metadata accessor for Logger();
  v33 = *(v0 - 8);
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = [v4 predicateForCallsWithStatus:kCHCallStatusMissed];
  v6 = [v4 predicateForCallsWithStatusRead:0];
  v30 = sub_100010734(0, &qword_100063DF8, CHHandle_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = [v4 predicateForCallsWithAnyRemoteParticipantHandles:isa];

  sub_100005E30(&qword_100062C08, &unk_10004DDE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10004EDA0;
  *(v9 + 32) = v5;
  *(v9 + 40) = v6;
  *(v9 + 48) = v8;
  sub_100010734(0, &qword_100063E18, NSPredicate_ptr);
  v32 = v5;
  v10 = v6;
  v31 = v8;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = [objc_opt_self() andPredicateWithSubpredicates:v11];

  if (qword_100062400 != -1)
  {
    swift_once();
  }

  v13 = [qword_100065590 callsWithPredicate:v12 limit:0 offset:0 batchSize:0];
  sub_100010734(0, &qword_100063E20, CHRecentCall_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  static PeopleLogger.daemon.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v10;
    v18 = v17;
    v34 = swift_slowAlloc();
    *v18 = 136315394;
    v19 = Array.description.getter();
    v21 = sub_10002580C(v19, v20, &v34);
    v28 = v0;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = Array.description.getter();
    v25 = sub_10002580C(v23, v24, &v34);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "Calls fetched %s for %s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v33 + 8))(v3, v28);
  }

  else
  {

    (*(v33 + 8))(v3, v0);
  }

  return v14;
}

unint64_t sub_100046F98()
{
  result = qword_100063E00;
  if (!qword_100063E00)
  {
    sub_100010734(255, &qword_100063DF8, CHHandle_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063E00);
  }

  return result;
}

uint64_t sub_100047000(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100062738, &qword_10004D970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100047070()
{
  result = qword_100063E10;
  if (!qword_100063E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063E10);
  }

  return result;
}

uint64_t sub_1000470C4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_100047118(void *a1)
{
  v3 = type metadata accessor for Logger();
  v54 = *(v3 - 8);
  v4 = v54[8];
  v5 = __chkstk_darwin(v3);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v50 - v8;
  sub_100010734(0, &qword_100063E38, NSKeyedUnarchiver_ptr);
  sub_100010734(0, &qword_100063E40, INInteraction_ptr);
  v10 = [a1 interaction];
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  sub_10002C290(v11, v13);
  if (!v1)
  {
    v53 = v7;
    if (!v14)
    {
      return _swiftEmptyArrayStorage;
    }

    v52 = 0;
    static PeopleLogger.daemon.getter();
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = v16;
      v21 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v20;
      *v21 = v14;
      v22 = v20;
      _os_log_impl(&_mh_execute_header, v17, v18, "Got interaction from call intent %@", v19, 0xCu);
      sub_100007DB0(v21, &qword_100062758, &unk_10004E8A0);
      v16 = v20;
    }

    v23 = v54[1];
    v24 = v3;
    v23(v9, v3);
    v25 = [v16 intent];
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      static PeopleLogger.daemon.getter();
      v28 = v25;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      v54 = v28;

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = v16;
        v33 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v27;
        *v33 = v27;
        v34 = v54;
        _os_log_impl(&_mh_execute_header, v29, v30, "Got call intent %@", v31, 0xCu);
        sub_100007DB0(v33, &qword_100062758, &unk_10004E8A0);
        v16 = v32;

        v24 = v3;
      }

      v23(v53, v24);
      v35 = [v27 contacts];
      if (v35)
      {
        v36 = v35;
        sub_100010734(0, &qword_100063E48, INPerson_ptr);
        v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v37 >> 62)
        {
LABEL_34:
          v38 = _CocoaArrayWrapper.endIndex.getter();
          v53 = v16;
          if (v38)
          {
LABEL_12:
            v16 = 0;
            v7 = _swiftEmptyArrayStorage;
            do
            {
              v39 = v16;
              while (1)
              {
                if ((v37 & 0xC000000000000001) != 0)
                {
                  v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_33;
                  }

                  v40 = *(v37 + 8 * v39 + 32);
                }

                v41 = v40;
                v16 = (v39 + 1);
                if (__OFADD__(v39, 1))
                {
                  __break(1u);
LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

                v42 = [v40 contactIdentifier];
                if (v42)
                {
                  break;
                }

                ++v39;
                if (v16 == v38)
                {
                  goto LABEL_36;
                }
              }

              v43 = v42;
              v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v50 = v45;
              v51 = v44;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = sub_100022130(0, *(v7 + 2) + 1, 1, v7);
              }

              v47 = *(v7 + 2);
              v46 = *(v7 + 3);
              if (v47 >= v46 >> 1)
              {
                v7 = sub_100022130((v46 > 1), v47 + 1, 1, v7);
              }

              *(v7 + 2) = v47 + 1;
              v48 = &v7[16 * v47];
              v49 = v50;
              *(v48 + 4) = v51;
              *(v48 + 5) = v49;
            }

            while (v16 != v38);
            goto LABEL_36;
          }
        }

        else
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v53 = v16;
          if (v38)
          {
            goto LABEL_12;
          }
        }

        v7 = _swiftEmptyArrayStorage;
LABEL_36:

        return v7;
      }
    }

    else
    {
    }

    return _swiftEmptyArrayStorage;
  }

  return v7;
}

uint64_t sub_1000476C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100047700()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100007CBC;

  return sub_100044A4C();
}

char *sub_1000477AC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v32[3] = a2;
  v6 = sub_100005E30(&qword_100063F88, &qword_10004F090);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for RelevantIntent();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v31 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v28 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = v14;
  v29 = (v14 + 32);
  v30 = (v14 + 48);
  v17 = (a3 + 40);
  v18 = _swiftEmptyArrayStorage;
  v27 = a1;
  while (1)
  {
    v19 = *v17;
    v32[0] = *(v17 - 1);
    v32[1] = v19;

    a1(v32);
    if (v3)
    {
      break;
    }

    if ((*v30)(v9, 1, v10) == 1)
    {
      sub_100007DB0(v9, &qword_100063F88, &qword_10004F090);
    }

    else
    {
      v20 = v10;
      v21 = v28;
      v22 = *v29;
      (*v29)(v28, v9, v20);
      v22(v31, v21, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1000224E0(0, *(v18 + 2) + 1, 1, v18);
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        v18 = sub_1000224E0(v23 > 1, v24 + 1, 1, v18);
      }

      *(v18 + 2) = v24 + 1;
      v22(&v18[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v31, v20);
      v10 = v20;
      a1 = v27;
    }

    v17 += 2;
    if (!--v16)
    {
      return v18;
    }
  }

  return v18;
}

void sub_100047AA0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *v3;
  sub_100010734(0, &qword_100063FA0, INRelevantShortcut_ptr);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v8[4] = a2;
    v8[5] = a3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10001F854;
    v8[3] = &unk_10005F000;
    a2 = _Block_copy(v8);
  }

  [v6 setRelevantShortcuts:v7.super.isa completionHandler:a2];
  _Block_release(a2);
}

uint64_t sub_100047B9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100047C60, 0, 0);
}

uint64_t sub_100047C60()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = sub_1000477AC(sub_10004B0EC, v4, v3);
  v0[8] = v5;

  v6 = sub_100005E78((v2 + 216), *(v2 + 240));
  v7 = static PeopleConstants.appBundleID.getter();
  v9 = v8;
  v0[9] = v8;
  v10 = *v6;
  v11 = async function pointer to RelevantIntentManager.updateRelevantIntents(_:for:)[1];
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_100047D7C;

  return RelevantIntentManager.updateRelevantIntents(_:for:)(v5, v7, v9);
}

uint64_t sub_100047D7C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  v5[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100047EFC, 0, 0);
  }

  else
  {
    v6 = v5[7];

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_100047EFC()
{
  v1 = v0[11];
  v2 = v0[7];
  static PeopleLogger.daemon.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error updating single contact relevant intents: %@", v7, 0xCu);
    sub_100007DB0(v8, &qword_100062758, &unk_10004E8A0);
  }

  else
  {
    v10 = v0[11];
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

void sub_100048084(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a3;
  v59 = a4;
  v6 = type metadata accessor for RelevantContext();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005E30(&qword_100063F90, &qword_10004F098);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v51 = &v46 - v11;
  v12 = type metadata accessor for SelectPerson();
  v54 = *(v12 - 8);
  v55 = v12;
  v13 = *(v54 + 64);
  v14 = __chkstk_darwin(v12);
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  v53 = type metadata accessor for Date();
  v18 = *(v53 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v53);
  v50 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v46 - v22;
  v25 = *a1;
  v24 = a1[1];
  v58 = objc_autoreleasePoolPush();
  v26 = a2[6];
  sub_100005E78(a2 + 2, a2[5]);
  v27 = dispatch thunk of ContactFetcherProtocol.contact(for:includeImages:)();
  if (v27)
  {
    v28 = v27;
    v49 = v18;
    v29 = v23;
    Date.init()();
    SelectPerson.init()();
    v61 = v25;
    v62 = v24;
    v30 = a2[21];
    sub_100005E78(a2 + 17, a2[20]);

    v48 = v28;
    dispatch thunk of ContactFormatterProtocol.displayName(for:)();
    type metadata accessor for VerticalTextHelper();
    static VerticalTextHelper.shared.getter();
    v31 = dispatch thunk of VerticalTextHelper.makeIdentifier(for:)();
    v33 = v32;

    if (v33)
    {
      v60._countAndFlagsBits = 124;
      v60._object = 0xE100000000000000;
      v34._countAndFlagsBits = v31;
      v34._object = v33;
      String.append(_:)(v34);

      String.append(_:)(v60);
    }

    v35 = v51;
    PersonTypeAppEntity.init(id:displayString:)();
    v36 = type metadata accessor for PersonTypeAppEntity();
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    SelectPerson.person.setter();
    v47 = v17;
    v37 = v54;
    v38 = v55;
    (*(v54 + 16))(v52, v17, v55);
    v51 = static PeopleConstants.singleContactWidgetKind.getter();
    v46 = v39;
    v40 = v50;
    static Date.+ infix(_:_:)();
    static RelevantContext.date(from:to:)();
    v41 = *(v49 + 8);
    v42 = v53;
    v41(v40, v53);
    sub_10004B108(&qword_100063F98, &type metadata accessor for SelectPerson);
    v43 = v59;
    RelevantIntent.init<A>(_:widgetKind:relevance:)();

    (*(v37 + 8))(v47, v38);
    v41(v29, v42);
    v44 = type metadata accessor for RelevantIntent();
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  }

  else
  {
    v45 = type metadata accessor for RelevantIntent();
    (*(*(v45 - 8) + 56))(v59, 1, 1, v45);
  }

  objc_autoreleasePoolPop(v58);
}

void sub_100048598(void *a1@<X0>, objc_class *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v82 = a4;
  v76 = a3;
  v84 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005E30(&qword_100062738, &qword_10004D970);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v75 = &v72 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v79 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005E30(&qword_100063F70, &unk_10004F060);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v77 = &v72 - v19;
  v20 = type metadata accessor for INShortcut();
  v80 = *(v20 - 8);
  v81 = v20;
  v21 = *(v80 + 64);
  __chkstk_darwin(v20);
  v78 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[5];
  v24 = a1[6];
  *&v87 = a1;
  sub_100005E78(a1 + 2, v23);
  static PeopleConstants.maxContactsInMultipleWidget.getter();
  v25 = dispatch thunk of ContactFetcherProtocol.recommendedContacts(maxSuggestions:excludeContactIdentifiers:)();
  v26 = v25;
  if (v25 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v27 < static PeopleWidgetConfiguration.minContacts(forFamily:)())
  {
LABEL_15:

    static PeopleLogger.daemon.getter();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "WidgetSuggester: Not enough contact suggestions", v43, 2u);
    }

    (v6[1])(v9, v5);
    goto LABEL_18;
  }

  v28 = _swiftEmptyArrayStorage;
  v85 = v14;
  v86 = v13;
  if (v27)
  {
    v88 = _swiftEmptyArrayStorage;
    sub_10000D6D4(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    v73 = v9;
    v74 = v6;
    v83 = v5;
    v29 = 0;
    v28 = v88;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v26 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = [v31 identifier];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v88 = v28;
      v37 = v28[2];
      v36 = v28[3];
      if (v37 >= v36 >> 1)
      {
        sub_10000D6D4((v36 > 1), v37 + 1, 1);
        v28 = v88;
      }

      ++v29;
      v28[2] = v37 + 1;
      v38 = &v28[2 * v37];
      v38[4] = v33;
      v38[5] = v35;
    }

    while (v27 != v29);
    v14 = v85;
    v13 = v86;
    v5 = v83;
    v9 = v73;
    v6 = v74;
  }

  v39 = sub_10001E3F0(v28);

  v40 = sub_10000DCD4(v84, v39);

  if (v40)
  {
    goto LABEL_15;
  }

  v45 = [objc_allocWithZone(type metadata accessor for SelectPeopleIntent()) init];
  static PeopleConstants.appBundleID.getter();
  v46 = String._bridgeToObjectiveC()();

  [v45 _setLaunchId:v46];

  if (!v27)
  {

LABEL_29:
    type metadata accessor for PersonType();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v45 setPeople:isa];

    v58 = v77;
    INShortcut.init(intent:)();
    v60 = v80;
    v59 = v81;
    if ((*(v80 + 48))(v58, 1, v81) != 1)
    {
      v61 = v45;
      (*(v60 + 32))(v78, v58, v59);
      v62 = objc_allocWithZone(INRelevantShortcut);
      v63 = INShortcut._bridgeToObjectiveC()().super.isa;
      v64 = [v62 initWithShortcut:v63];

      static PeopleConstants.multipleContactsWidgetKind.getter();
      v65 = String._bridgeToObjectiveC()();

      [v64 setWidgetKind:v65];

      Date.init()();
      sub_100005E30(&qword_100062C08, &unk_10004DDE0);
      v66 = swift_allocObject();
      v87 = xmmword_10004EF30;
      *(v66 + 16) = xmmword_10004EF30;
      v67 = v75;
      static Date.+ infix(_:_:)();
      (*(v14 + 56))(v67, 0, 1, v13);
      v68.super.isa = Date._bridgeToObjectiveC()().super.isa;
      if ((*(v14 + 48))(v67, 1, v13) == 1)
      {
        v69 = 0;
      }

      else
      {
        v69 = Date._bridgeToObjectiveC()().super.isa;
        (*(v14 + 8))(v67, v13);
      }

      v70 = [objc_allocWithZone(INDateRelevanceProvider) initWithStartDate:v68.super.isa endDate:v69];

      *(v66 + 32) = v70;
      sub_100010734(0, &qword_100063F78, INRelevanceProvider_ptr);
      v71 = Array._bridgeToObjectiveC()().super.isa;

      [v64 setRelevanceProviders:v71];

      v44 = swift_allocObject();
      *(v44 + 1) = v87;
      v44[4] = v64;

      (*(v14 + 8))(v79, v13);
      (*(v80 + 8))(v78, v81);
      goto LABEL_19;
    }

    sub_100007DB0(v58, &qword_100063F70, &unk_10004F060);

LABEL_18:
    v44 = _swiftEmptyArrayStorage;
LABEL_19:
    *v82 = v44;
    return;
  }

  v74 = v45;
  v88 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v27 & 0x8000000000000000) == 0)
  {
    type metadata accessor for PersonType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v48 = 0;
    v83 = v26 & 0xC000000000000001;
    v84 = ObjCClassFromMetadata;
    do
    {
      if (v83)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v49 = *(v26 + 8 * v48 + 32);
      }

      v50 = v49;
      ++v48;
      v51 = [v49 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = *(v87 + 168);
      sub_100005E78((v87 + 136), *(v87 + 160));
      dispatch thunk of ContactFormatterProtocol.displayName(for:)();
      v53 = objc_allocWithZone(v84);
      v54 = String._bridgeToObjectiveC()();

      v55 = String._bridgeToObjectiveC()();

      [v53 initWithIdentifier:v54 displayString:v55];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v56 = v88[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 = v85;
      v13 = v86;
    }

    while (v27 != v48);

    v45 = v74;
    goto LABEL_29;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_100048ED4(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v4 = type metadata accessor for StatusType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetSuggester.Relevance();
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v12 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v35 - v14;
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  if ((sub_100049E5C() & 1) != 0 && ((*(v5 + 16))(v8, a1, v4), v18 = (*(v5 + 88))(v8, v4), v18 != enum case for StatusType.dndAvailability(_:)))
  {
    if (v18 == enum case for StatusType.motionState(_:) || v18 == enum case for StatusType.location(_:) || v18 == enum case for StatusType.askToBuyRequest(_:) || v18 == enum case for StatusType.screenTimeRequest(_:) || v18 == enum case for StatusType.childState(_:) || v18 == enum case for StatusType.unreadMessage(_:) || v18 == enum case for StatusType.readMessage(_:) || v18 == enum case for StatusType.missedCall(_:) || v18 == enum case for StatusType.calendar(_:))
    {
      v28 = [objc_opt_self() hours];
      sub_100010734(0, &qword_100062AF0, NSUnitDuration_ptr);
      Measurement.init(value:unit:)();
      sub_10004ABC4(v15, v17);
      sub_100005E78((v2 + 96), *(v2 + 120));
      type metadata accessor for WidgetConfigurationReader();
      sub_10000D0E8();
      sub_100005E30(&qword_100062918, &qword_10004F050);
      dispatch thunk of Promise.then<A>(_:)();

      sub_10004AC28(v17, v12);
      v29 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v30 = swift_allocObject();
      v31 = v37;
      *(v30 + 16) = v2;
      *(v30 + 24) = v31;
      sub_10004ABC4(v12, v30 + v29);

      dispatch thunk of Promise.then<A>(_:)();

      sub_10004AC28(v17, v12);
      v32 = swift_allocObject();
      *(v32 + 16) = v2;
      *(v32 + 24) = v31;
      sub_10004ABC4(v12, v32 + v29);

      sub_100005E30(&qword_100063F68, &qword_10004F058);
      dispatch thunk of Promise.then<A>(_:)();

      sub_1000077E8(v2 + 56, v38);
      v33 = swift_allocObject();
      sub_10000784C(v38, v33 + 16);
      *(v33 + 56) = v2;

      v34 = dispatch thunk of Promise.then<A>(_:)();

      sub_10004ADE0(v17);
      return v34;
    }

    else
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  else
  {
    sub_100005E30(&qword_100062750, &qword_10004D990);
    *&v38[0] = 0;
    BYTE8(v38[0]) = 0;
    return Promise.__allocating_init(with:)();
  }

  return result;
}

void sub_1000493F0(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v22 = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v7 containerBundleIdentifier];
      if (!v10)
      {
        static PeopleConstants.appBundleID.getter();
        a2 = v6;
LABEL_5:

        goto LABEL_6;
      }

      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = static PeopleConstants.appBundleID.getter();
      a2 = v16;
      if (!v14)
      {
        goto LABEL_5;
      }

      if (v12 == v15 && v14 == v16)
      {

LABEL_21:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v19 = v22[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        a2 = &v22;
        specialized ContiguousArray._endMutation()();
        goto LABEL_7;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_21;
      }

LABEL_6:

LABEL_7:
      ++v5;
      if (v9 == i)
      {
        v20 = v22;
        a2 = v21;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_28:
  *a2 = v20;
}

uint64_t sub_1000495D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WidgetSuggester.Relevance();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = *a1;
  if (*a1 >> 62)
  {
    if (v15 < 0)
    {
      v20 = *a1;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_100005E30(&qword_100063F80, &qword_10004F070);
    sub_10004AC28(v24, &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a3;
    sub_10004ABC4(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);

    return Promise.__allocating_init(_:)();
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_3:
  static PeopleLogger.daemon.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "WidgetSuggester: Not suggesting because user already has contact widgets", v18, 2u);
  }

  (*(v8 + 8))(v11, v7);
  sub_100005E30(&qword_100063F80, &qword_10004F070);
  v25 = 0;
  v26 = 0;
  return Promise.__allocating_init(with:)();
}

uint64_t sub_100049888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_100049938;

  return sub_100047B9C(a3, a4);
}

uint64_t sub_100049938()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return _swift_task_switch(sub_100049A34, 0, 0);
}

void sub_100049A58(_BYTE *a1@<X0>, void *a2@<X1>, objc_class *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*a1 != 1)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v10 = objc_autoreleasePoolPush();
  sub_100048598(a2, a3, a4, &v12);
  if (!v5)
  {
    objc_autoreleasePoolPop(v10);
    v11 = v12;
LABEL_5:
    *a5 = v11;
    return;
  }

  objc_autoreleasePoolPop(v10);
  __break(1u);
}

uint64_t sub_100049B00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*a1 >> 62)
  {
    if (v5 < 0)
    {
      v11 = *a1;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_1000077E8(a2, v12);
    v6 = swift_allocObject();
    sub_10000784C(v12, v6 + 16);
    *(v6 + 56) = v5;
    *(v6 + 64) = a3;
    v7 = sub_100005E30(&qword_100062750, &qword_10004D990);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();

    return Promise.init(startBlock:)();
  }

  sub_100005E30(&qword_100062750, &qword_10004D990);
  return Promise.__allocating_init(with:)();
}

void sub_100049C1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = objc_autoreleasePoolPush();
  v12 = a3[3];
  v13 = a3[4];
  sub_100005E78(a3, v12);
  v14 = swift_allocObject();
  v14[2] = sub_100014D78;
  v14[3] = v10;
  v14[4] = a5;
  v15 = *(v13 + 8);

  v15(a4, sub_10004AF08, v14, v12, v13);

  objc_autoreleasePoolPop(v11);
}

uint64_t sub_100049D4C(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, void *a4)
{
  if (a1)
  {
    swift_errorRetain();
    a2(a1, 1);
  }

  else
  {
    v7 = a4[26];
    sub_100005E78(a4 + 22, a4[25]);
    v8[3] = type metadata accessor for Date();
    sub_100007784(v8);
    Date.init()();
    static PeopleConstants.widgetSuggestionDateKey.getter();
    dispatch thunk of KeyValueStorageProtocol.setValue(_:forKey:)();

    sub_100007DB0(v8, &qword_100062E60, &qword_10004F030);
    return (a2)(0, 0);
  }
}

uint64_t sub_100049E5C()
{
  v1 = type metadata accessor for Logger();
  v76 = *(v1 - 8);
  v77 = v1;
  v2 = *(v76 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v65 = &v61 - v7;
  __chkstk_darwin(v6);
  v64 = &v61 - v8;
  v9 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  v11 = __chkstk_darwin(v9);
  v69 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v61 - v13;
  v14 = type metadata accessor for Calendar();
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = *(v66 + 64);
  __chkstk_darwin(v14);
  v75 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DateComponents();
  v73 = *(v17 - 8);
  v74 = v17;
  v18 = *(v73 + 64);
  __chkstk_darwin(v17);
  v72 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100005E30(&qword_100062738, &qword_10004D970);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v61 - v22;
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v61 - v30;
  v32 = v0[26];
  sub_100005E78(v0 + 22, v0[25]);
  static PeopleConstants.widgetSuggestionDateKey.getter();
  dispatch thunk of KeyValueStorageProtocol.value(forKey:)();

  if (!v79)
  {
    sub_100007DB0(v78, &qword_100062E60, &qword_10004F030);
    (*(v25 + 56))(v23, 1, 1, v24);
    goto LABEL_8;
  }

  v33 = swift_dynamicCast();
  (*(v25 + 56))(v23, v33 ^ 1u, 1, v24);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
LABEL_8:
    sub_100007DB0(v23, &qword_100062738, &qword_10004D970);
    static PeopleLogger.daemon.getter();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Last widget suggestion date not found, suggest widgets", v56, 2u);
    }

    (*(v76 + 8))(v5, v77);
    return 1;
  }

  (*(v25 + 32))(v31, v23, v24);
  static Calendar.current.getter();
  sub_100005E30(&qword_100063F40, &qword_10004F038);
  v34 = type metadata accessor for Calendar.Component();
  v35 = *(v34 - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10004D790;
  (*(v35 + 104))(v38 + v37, enum case for Calendar.Component.hour(_:), v34);
  sub_10004A7F4(v38);
  swift_setDeallocating();
  (*(v35 + 8))(v38 + v37, v34);
  swift_deallocClassInstance();
  Date.init()();
  v39 = v72;
  v62 = v31;
  v40 = v75;
  Calendar.dateComponents(_:from:to:)();

  v42 = v25 + 8;
  v41 = *(v25 + 8);
  v43 = v24;
  v63 = v42;
  v41(v29, v24);
  (*(v66 + 8))(v40, v67);
  DateComponents.hour.getter();
  v44 = [objc_opt_self() hours];
  sub_100010734(0, &qword_100062AF0, NSUnitDuration_ptr);
  v45 = v68;
  Measurement.init(value:unit:)();
  v46 = v69;
  static PeopleConstants.widgetSuggestionTTL.getter();
  sub_10004AB14();
  v47 = v71;
  LOBYTE(v38) = dispatch thunk of static Comparable.< infix(_:_:)();
  v48 = *(v70 + 8);
  v48(v46, v47);
  v48(v45, v47);
  if ((v38 & 1) == 0)
  {
    v57 = v64;
    static PeopleLogger.daemon.getter();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Last widget suggestion date is older 24 hours, suggest widgets", v60, 2u);
    }

    (*(v76 + 8))(v57, v77);
    (*(v73 + 8))(v39, v74);
    v41(v62, v43);
    return 1;
  }

  v49 = v65;
  static PeopleLogger.daemon.getter();
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "Last widget suggestion date is within 24 hours, do not suggest widgets", v52, 2u);
  }

  (*(v76 + 8))(v49, v77);
  (*(v73 + 8))(v39, v74);
  v41(v62, v43);
  return 0;
}

uint64_t sub_10004A770()
{
  sub_100003938(v0 + 2);
  sub_100003938(v0 + 7);
  sub_100003938(v0 + 12);
  sub_100003938(v0 + 17);
  sub_100003938(v0 + 22);
  sub_100003938(v0 + 27);

  return swift_deallocClassInstance();
}

void *sub_10004A7F4(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100005E30(&qword_100063F50, &unk_10004F040);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_10004B108(&qword_100063F58, &type metadata accessor for Calendar.Component);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_10004B108(&qword_100063F60, &type metadata accessor for Calendar.Component);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10004AB14()
{
  result = qword_100063F48;
  if (!qword_100063F48)
  {
    sub_100010594(&qword_100062A88, &qword_10004DBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063F48);
  }

  return result;
}

uint64_t type metadata accessor for WidgetSuggester.Relevance()
{
  result = qword_100064000;
  if (!qword_100064000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004ABC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetSuggester.Relevance();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004AC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetSuggester.Relevance();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004AD80()
{
  sub_100003938((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004ADE0(uint64_t a1)
{
  v2 = type metadata accessor for WidgetSuggester.Relevance();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004AE3C()
{
  sub_100003938(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10004AE90()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004AEC8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004AF14()
{
  v1 = *(type metadata accessor for WidgetSuggester.Relevance() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004AFFC(uint64_t a1)
{
  v4 = *(type metadata accessor for WidgetSuggester.Relevance() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007CBC;

  return sub_100049888(a1, v6, v7, v1 + v5);
}

uint64_t sub_10004B108(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004B150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004B17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10004B208(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10004B284()
{
  sub_100013A1C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

Swift::String __swiftcall Date.relativeDateString()()
{
  v0 = Date.relativeDateString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t dispatch thunk of Promise.then<A>(_:)()
{
  return dispatch thunk of Promise.then<A>(_:)();
}

{
  return dispatch thunk of Promise.then<A>(_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.trim()()
{
  v0 = String.trim()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.trimToNil()()
{
  v0 = String.trimToNil()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}