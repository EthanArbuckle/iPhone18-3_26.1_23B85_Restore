void sub_100043844(uint64_t a1, char a2, uint64_t a3, void *a4, NSObject *a5)
{
  if (a2)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100020D2C(v7, qword_100092EB0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_100049BC8(a1, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v12 = String.init<A>(describing:)();
      v14 = sub_100033140(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to fetch participants: %{public}s", v10, 0xCu);
      sub_1000208BC(v11);
    }

    v15 = [objc_opt_self() defaultCenter];
    if (qword_100090D58 != -1)
    {
      swift_once();
    }

    v16 = 0x40AC200000000000;
    v17 = 0;
    [v15 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    dispatch_group_leave(a5);
  }

  else
  {
    sub_100043A8C(a4, a5);
  }
}

uint64_t sub_100043A8C(void *a1, void *a2)
{
  v3 = v2;
  v30 = a2;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  v5 = *(v35 + 64);
  __chkstk_darwin(v32, v6);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v14 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  *(v13 + 16) = v14;
  [v14 setQualityOfService:25];
  sub_100020818(&qword_100091760, &qword_10006DFD8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10006DED0;
  *(v15 + 32) = a1;
  v16 = off_1000910E0;
  sub_100021848(0, &qword_100091840, CKModifyRecordsOperation_ptr);
  v17 = a1;
  v16(v15);
  v18 = swift_allocObject();
  v19 = v30;
  v18[2] = v30;
  v18[3] = v2;
  v18[4] = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10004C914;
  *(v20 + 24) = v18;
  v21 = *(v13 + 16);
  v22 = v17;
  v23 = v19;

  CKModifyRecordsOperation.perRecordSaveBlock.setter();
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = v3;
  *(v25 + 24) = v13;
  aBlock[4] = sub_10004C9AC;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_100087670;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100049490(&qword_1000916F8, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_1000495DC(&qword_100091708, &qword_100091700, qword_10006E1F0);
  v28 = v31;
  v27 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v35 + 8))(v28, v27);
  (*(v33 + 8))(v12, v34);
}

void sub_100043ED8(void *a1, void *a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v140 = a2;
  v9 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v139 = &v130 - v12;
  v13 = sub_100020818(&qword_100091720, &qword_10006DFB0);
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v136 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v20 = &v130 - v19;
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100020D2C(v21, qword_100092EB0);

  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v142 = a3;
  v137 = v20;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    *v27 = 136446466;
    *(v27 + 4) = sub_100033140(a3, a4, &v145);
    *(v27 + 12) = 2082;
    v144 = v23;
    sub_100021848(0, &qword_100091860, CKShareParticipant_ptr);
    v28 = v23;
    v29 = String.init<A>(describing:)();
    v31 = sub_100033140(v29, v30, &v145);

    *(v27 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Sending %{public}s to participant: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
  }

  v32 = [v23 userIdentity];
  v33 = [v32 lookupInfo];

  if (v33)
  {
    v34 = [v33 emailAddress];
    v143 = a4;
    if (v34 || (v34 = [v33 phoneNumber]) != 0)
    {
      v35 = a5;
      v36 = v34;
      v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = v143;

      v40 = v23;
      v133 = v22;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      v43 = os_log_type_enabled(v41, v42);
      v135 = v33;
      if (v43)
      {
        v44 = swift_slowAlloc();
        v134 = v38;
        v45 = v44;
        v145 = swift_slowAlloc();
        *v45 = 136446466;
        v46 = v142;
        *(v45 + 4) = sub_100033140(v142, v39, &v145);
        *(v45 + 12) = 2082;
        v144 = v40;
        sub_100021848(0, &qword_100091860, CKShareParticipant_ptr);
        v47 = v40;
        v48 = v40;
        v49 = String.init<A>(describing:)();
        v51 = sub_100033140(v49, v50, &v145);

        *(v45 + 14) = v51;
        v52 = v35;
        _os_log_impl(&_mh_execute_header, v41, v42, "Sending %{public}s to participant: %{public}s", v45, 0x16u);
        swift_arrayDestroy();

        v38 = v134;
      }

      else
      {
        v47 = v40;

        v46 = v142;
        v52 = v35;
      }

      v134 = String._bridgeToObjectiveC()();
      v53 = v143;
      if (v46 == 0xD000000000000030 && 0x8000000100070180 == v143 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v54 = v52;
        v55 = v47;
        v56 = [v47 invitationToken];
        if (v56)
        {
          v57 = v38;
          v58 = v56;
          v59 = [v56 sharingInvitationData];

          v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = v61;

          if (v140)
          {
            v63 = v55;
            v64 = [v140 URL];
            v132 = v54;
            if (v64)
            {
              v65 = v136;
              v66 = v64;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v67 = 0;
            }

            else
            {
              v67 = 1;
              v65 = v136;
            }

            v92 = type metadata accessor for URL();
            v93 = *(v92 - 8);
            (*(v93 + 56))(v65, v67, 1, v92);
            v94 = v137;
            sub_100029830(v65, v137, &qword_100091720, &qword_10006DFB0);
            if ((*(v93 + 48))(v94, 1, v92) == 1)
            {

              sub_100020D78(v60, v62);
              sub_100028FF4(v94, &qword_100091720, &qword_10006DFB0);
              v54 = v132;
              v55 = v63;
              goto LABEL_33;
            }

            v106 = v62;
            v107 = URL.absoluteString.getter();
            v109 = v108;
            (*(v93 + 8))(v94, v92);
            sub_100020818(&qword_100091868, &qword_10006E088);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10006D890;
            strcpy((inited + 32), "invitationData");
            *(inited + 47) = -18;
            *(inited + 48) = v60;
            v130 = v60;
            v131 = v106;
            *(inited + 56) = v106;
            *(inited + 72) = &type metadata for Data;
            *(inited + 80) = 0xD000000000000018;
            *(inited + 120) = &type metadata for String;
            *(inited + 88) = 0x8000000100070200;
            *(inited + 96) = v107;
            *(inited + 104) = v109;
            sub_100020CD8(v60, v106);
            v111 = sub_10004C660(inited);
            swift_setDeallocating();
            sub_100020818(&qword_100091828, &qword_10006E068);
            swift_arrayDestroy();
            sub_1000516A8(v111);

            v112 = objc_allocWithZone(IDSDictionaryInvitationContext);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            v114 = String._bridgeToObjectiveC()();
            v115 = [v112 initWithDictionary:isa schema:v114];

            v116 = v138[12];
            v117 = v138[13];
            v143 = sub_100020908(v138 + 9, v116);
            v118 = v139;
            static Date.distantFuture.getter();
            v119 = type metadata accessor for Date();
            (*(*(v119 - 8) + 56))(v118, 0, 1, v119);
            v120 = swift_allocObject();
            v120[2] = v141;
            v120[3] = v57;
            v121 = v134;
            v122 = v132;
            v120[4] = v132;
            v123 = *(v117 + 32);
            v124 = v115;
            v125 = v122;
            v123(v121, v118, v124, sub_10004E704, v120, v116, v117);

            sub_100020D78(v130, v131);
            v81 = v118;
            goto LABEL_40;
          }

          sub_100020D78(v60, v62);
        }

        else
        {
        }

LABEL_33:
        v95 = v55;
        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v144 = v95;
          v145 = v99;
          *v98 = 136446210;
          sub_100021848(0, &qword_100091860, CKShareParticipant_ptr);
          v100 = v95;
          v101 = String.init<A>(describing:)();
          v103 = sub_100033140(v101, v102, &v145);

          *(v98 + 4) = v103;
          _os_log_impl(&_mh_execute_header, v96, v97, "Failed to create share invitation for: %{public}s", v98, 0xCu);
          sub_1000208BC(v99);
        }

        v104 = [objc_opt_self() defaultCenter];
        if (qword_100090D58 != -1)
        {
          swift_once();
        }

        v145 = 0x40AC200000000000;
        v146 = 0;
        [v104 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

        swift_unknownObjectRelease();
        dispatch_group_leave(v54);

        v105 = &v147;
LABEL_38:

        return;
      }

      if ((v46 != 0xD000000000000037 || 0x80000001000701C0 != v53) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v145 = v129;
          *v128 = 136446210;
          *(v128 + 4) = sub_100033140(v46, v53, &v145);
          _os_log_impl(&_mh_execute_header, v126, v127, "Tried to send invitation using unknown schema: %{public}s", v128, 0xCu);
          sub_1000208BC(v129);
        }

        dispatch_group_leave(v52);
        v105 = &v148;
        goto LABEL_38;
      }

      sub_10004C790(_swiftEmptyArrayStorage);
      v68 = objc_allocWithZone(IDSDictionaryInvitationContext);
      v69 = Dictionary._bridgeToObjectiveC()().super.isa;

      v70 = String._bridgeToObjectiveC()();
      v71 = [v68 initWithDictionary:v69 schema:v70];

      v72 = v138[12];
      v73 = v138[13];
      sub_100020908(v138 + 9, v72);
      v74 = v134;
      v75 = v139;
      static Date.distantFuture.getter();
      v76 = type metadata accessor for Date();
      (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
      v77 = swift_allocObject();
      v77[2] = v141;
      v77[3] = v38;
      v77[4] = v52;
      v78 = *(v73 + 32);
      v79 = v52;
      v80 = v71;
      v78(v74, v75, v80, sub_10004E704, v77, v72, v73);

      v81 = v75;
LABEL_40:
      sub_100028FF4(v81, &qword_1000913D0, &qword_10006D9C0);
      return;
    }
  }

  v82 = v23;
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v144 = v82;
    v145 = v86;
    *v85 = 136446210;
    sub_100021848(0, &qword_100091860, CKShareParticipant_ptr);
    v87 = v82;
    v88 = String.init<A>(describing:)();
    v90 = sub_100033140(v88, v89, &v145);

    *(v85 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v83, v84, "Failed to create invitation for: %{public}s", v85, 0xCu);
    sub_1000208BC(v86);
  }

  v91 = [objc_opt_self() defaultCenter];
  if (qword_100090D58 != -1)
  {
    swift_once();
  }

  v145 = 0x40AC200000000000;
  v146 = 0;
  [v91 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  dispatch_group_leave(a5);
}

void sub_100044F04(uint64_t a1, void *a2, NSObject *a3)
{
  aBlock[0] = a1;
  v69 = a2;
  swift_errorRetain();
  sub_100020818(&qword_100091370, &qword_10006D390);
  type metadata accessor for CKError(0);
  v7 = v6;
  if (!swift_dynamicCast() || (v8 = v67) == 0)
  {
    sub_10004C434(a1, a3);
    return;
  }

  v68 = v67;
  v9 = sub_100049490(&unk_100091870, 255, type metadata accessor for CKError);
  v10 = (*(v9 + 48))(v7, v9);
  if (v10 != 14)
  {
    if (v10 == 26)
    {
      v20 = [a2 recordID];
      v12 = [v20 zoneID];

      if (qword_100090D18 == -1)
      {
LABEL_18:
        v21 = type metadata accessor for Logger();
        sub_100020D2C(v21, qword_100092EB0);
        v22 = v12;
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          aBlock[0] = v26;
          *v25 = 136446210;
          v27 = [v22 zoneName];
          v28 = v22;
          v29 = v8;
          v30 = v27;
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          v34 = sub_100033140(v31, v33, aBlock);

          *(v25 + 4) = v34;
          v8 = v29;
          v22 = v28;
          _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s was not found, attempting to re-save it.", v25, 0xCu);
          sub_1000208BC(v26);
        }

        v35 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v22];
        [v35 setCapabilities:8];
        v36 = swift_allocObject();
        *(v36 + 16) = a3;
        v37 = v65[3];
        aBlock[4] = sub_10004E78C;
        aBlock[5] = v36;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10004EBCC;
        aBlock[3] = &unk_100087710;
        v38 = _Block_copy(aBlock);
        v39 = a3;

        [v37 saveRecordZone:v35 completionHandler:v38];

        _Block_release(v38);

        return;
      }

LABEL_40:
      swift_once();
      goto LABEL_18;
    }

    if (v10 == 33)
    {
      v11 = off_100091188[0];
      sub_100021848(0, &unk_100091850, CKShare_ptr);
      v12 = &v69;
      v13 = v11();
      v14 = v13;
      if (v13 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
        if (v15)
        {
LABEL_8:
          v16 = 0;
          v8 = (v14 & 0xC000000000000001);
          while (1)
          {
            if (v8)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_39;
              }

              v17 = *(v14 + 8 * v16 + 32);
            }

            v18 = v17;
            v19 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            dispatch_group_enter(a3);
            v12 = v65;
            sub_100043ED8(v18, 0, 0xD000000000000037, 0x80000001000701C0, a3);

            ++v16;
            if (v19 == v15)
            {
              goto LABEL_42;
            }
          }

          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      else
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_8;
        }
      }

LABEL_42:

      dispatch_group_leave(a3);

      return;
    }

    goto LABEL_29;
  }

  v40 = related decl 'e' for CKErrorCode.serverRecord.getter();
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (!v41)
  {
LABEL_28:

LABEL_29:
    aBlock[0] = v67;
    sub_100049490(&qword_100090DF0, 255, type metadata accessor for CKError);
    v58 = v67;
    v59 = _getErrorEmbeddedNSError<A>(_:)();
    if (v59)
    {
      v60 = v59;
    }

    else
    {
      v60 = swift_allocError();
      *v61 = v58;
    }

    sub_10004C434(v60, a3);

    return;
  }

  v42 = v41;
  v43 = related decl 'e' for CKErrorCode.clientRecord.getter();
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (!v44)
  {

    v40 = v43;
    goto LABEL_28;
  }

  v45 = v44;
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100020D2C(v46, qword_100092EB0);
  v47 = v40;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v49))
  {
    buf = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock[0] = v64;
    *buf = 136446210;
    v50 = [v42 recordID];
    v62 = v49;
    v51 = [v50 zoneID];

    v52 = [v51 zoneName];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v8;
    v56 = v55;

    v57 = sub_100033140(v53, v56, aBlock);
    v8 = v54;

    *(buf + 4) = v57;
    _os_log_impl(&_mh_execute_header, v48, v62, "Updating share for: %{public}s", buf, 0xCu);
    sub_1000208BC(v64);
  }

  else
  {
  }

  if (sub_10004D184(v42, v45))
  {
    sub_100043A8C(v42, a3);
  }

  else
  {
    dispatch_group_leave(a3);
  }
}

uint64_t sub_1000456C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v10[3] = sub_100021848(0, &qword_100091840, CKModifyRecordsOperation_ptr);
  v10[4] = &off_1000869C0;
  v10[0] = *(a2 + 16);
  v4 = v10[0];
  v5 = *(a1 + 24);
  sub_100020F40(v10, v9);
  v6 = v4;
  sub_100020818(&qword_100091018, qword_10006D470);
  sub_100021848(0, &qword_100091848, CKDatabaseOperation_ptr);
  swift_dynamicCast();
  [v5 addOperation:v8];

  return sub_1000208BC(v10);
}

uint64_t sub_1000457B4(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  if (a3)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100020D2C(v8, qword_100092EB0);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    sub_100049B84(a2, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v13 = String.init<A>(describing:)();
      v15 = sub_100033140(v13, v14, &v23);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to fetch share metadata: %{public}s", v11, 0xCu);
      sub_1000208BC(v12);
    }

    v16 = a4[12];
    v17 = a4[13];
    sub_100020908(a4 + 9, v16);
    return (*(v17 + 48))(a5, sub_100059710, 0, v16, v17);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100020D2C(v19, qword_100092EB0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Successfully fetched share metadata", v22, 2u);
    }

    return sub_100045A48(a2, a5);
  }
}

uint64_t sub_100045A48(void *a1, void *a2)
{
  v3 = v2;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v28 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v28, v7);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  __chkstk_darwin(v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_100021848(0, &qword_100091758, CKAcceptSharesOperation_ptr);
  sub_100020818(&qword_100091760, &qword_10006DFD8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10006DED0;
  *(v15 + 32) = a1;
  v16 = a1;
  sub_1000216D8((v14 + 16));
  [*(v14 + 16) setQualityOfService:25];
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = a2;
  v18 = *(v14 + 16);

  v19 = a2;
  CKAcceptSharesOperation.acceptSharesResultBlock.setter();
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = v14;
  aBlock[4] = sub_100049B9C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_100087378;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100049490(&qword_1000916F8, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_1000495DC(&qword_100091708, &qword_100091700, qword_10006E1F0);
  v24 = v27;
  v23 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v31 + 8))(v24, v23);
  (*(v29 + 8))(v13, v30);
}

uint64_t sub_100045E44(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v14[3] = sub_100021848(0, a3, a4);
  v14[4] = &off_1000869C0;
  v14[0] = *(a2 + 16);
  v8 = v14[0];
  v9 = *(a1 + 16);
  sub_100020F40(v14, v13);
  v10 = v8;
  sub_100020818(&qword_100091018, qword_10006D470);
  sub_100021848(0, &qword_100091750, CKOperation_ptr);
  swift_dynamicCast();
  [v9 addOperation:v12];

  return sub_1000208BC(v14);
}

uint64_t sub_100045F38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100020D2C(v6, qword_100092EB0);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v11 = String.init<A>(describing:)();
      v13 = sub_100033140(v11, v12, &v25);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to save verification zone: %{public}s", v9, 0xCu);
      sub_1000208BC(v10);
    }

    v14 = a3[12];
    v15 = a3[13];
    sub_100020908(a3 + 9, v14);
    (*(v15 + 48))(a4, sub_100059710, 0, v14, v15);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100020D2C(v17, qword_100092EB0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Successfully saved verification zone", v20, 2u);
    }

    v21 = a3[12];
    v22 = a3[13];
    sub_100020908(a3 + 9, v21);
    v23 = [a4 context];
    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    (*(v22 + 40))(a4, v23, sub_10004EBD0, v24, v21, v22);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10004629C(uint64_t a1, char a2, void *a3, void *a4)
{
  if (a2)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100020D2C(v7, qword_100092EB0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_100049BC8(a1, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v12 = String.init<A>(describing:)();
      v14 = sub_100033140(v12, v13, &v26);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to accept share: %{public}s", v10, 0xCu);
      sub_1000208BC(v11);
    }

    v15 = a3[12];
    v16 = a3[13];
    sub_100020908(a3 + 9, v15);
    return (*(v16 + 48))(a4, sub_100059710, 0, v15, v16);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100020D2C(v18, qword_100092EB0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Successfully accepted share", v21, 2u);
    }

    v22 = a3[12];
    v23 = a3[13];
    sub_100020908(a3 + 9, v22);
    v24 = [a4 context];
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    (*(v23 + 40))(a4, v24, sub_100049BD4, v25, v22, v23);
    swift_unknownObjectRelease();
  }
}

char *sub_1000465E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100020818(&qword_1000918A0, &qword_10006E0D8);
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

size_t sub_100046714(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100020818(a5, a6);
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

char *sub_1000468F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100020818(&unk_100091880, &unk_10006E090);
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

void *sub_1000469FC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100046A1C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

size_t sub_100046A4C(size_t a1, int64_t a2, char a3)
{
  result = sub_100046C48(a1, a2, a3, *v3, &qword_100091668, &qword_10006DF78, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
  *v3 = result;
  return result;
}

size_t sub_100046A90(size_t a1, int64_t a2, char a3)
{
  result = sub_100046C48(a1, a2, a3, *v3, &qword_1000918A8, &qword_10006E0E0, &type metadata accessor for _DeviceActivityData.ApplicationActivity);
  *v3 = result;
  return result;
}

char *sub_100046AD4(char *a1, int64_t a2, char a3)
{
  result = sub_100046B38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100046AF4(size_t a1, int64_t a2, char a3)
{
  result = sub_100046C48(a1, a2, a3, *v3, &qword_100091780, &qword_10006DFF0, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
  *v3 = result;
  return result;
}

char *sub_100046B38(char *result, int64_t a2, char a3, char *a4)
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
    sub_100020818(&qword_100091898, &qword_10006E0D0);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_100046C48(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100020818(a5, a6);
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

uint64_t sub_100046E24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100020818(&qword_100091778, &qword_10006DFE8);
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

uint64_t sub_1000470CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100020818(&qword_100091890, &qword_10006E0C8);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_100047370()
{
  v1 = v0;
  sub_100020818(&qword_100091778, &qword_10006DFE8);
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

id sub_1000474E0()
{
  v1 = v0;
  sub_100020818(&qword_100091890, &qword_10006E0C8);
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

        result = v20;
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

void *sub_10004764C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v28 = a4;
  v33 = a2;
  v32 = a1;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v37 - 8);
  v8 = *(v38 + 64);
  __chkstk_darwin(v37, v9);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v31 - 8);
  v11 = *(v30 + 64);
  __chkstk_darwin(v31, v12);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v16);
  v35 = type metadata accessor for DispatchQoS();
  v34 = *(v35 - 8);
  v17 = *(v34 + 64);
  __chkstk_darwin(v35, v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[3] = sub_100021848(0, &unk_1000916E8, MODeviceActivitySettingsGroup_ptr);
  v43[4] = &off_100087038;
  v43[0] = a3;
  v42[3] = sub_100021848(0, &qword_1000915B0, IDSInvitationManager_ptr);
  v42[4] = &off_100087088;
  v42[0] = a4;
  a5[14] = [objc_allocWithZone(type metadata accessor for InvitationHandler()) init];
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100049490(&qword_100091698, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100020818(&qword_1000916A0, &qword_10006DF90);
  sub_1000495DC(&qword_1000916A8, &qword_1000916A0, &qword_10006DF90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v30 + 104))(v29, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  a5[15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v21 = v33;
  a5[2] = v32;
  a5[3] = v21;
  sub_100020F40(v43, (a5 + 4));
  sub_100020F40(v42, (a5 + 9));
  *(a5[14] + OBJC_IVAR____TtC18UsageTrackingAgent17InvitationHandler_delegate + 8) = &off_100087BE0;
  swift_unknownObjectWeakAssign();
  [v28 setDelegate:a5[14] queue:a5[15]];
  v22 = a5[15];
  sub_100020F40(v42, v41);
  v23 = swift_allocObject();
  sub_100028428(v41, v23 + 16);
  *(v23 + 56) = a5;
  aBlock[4] = sub_1000495B8;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_1000871E8;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v39 = &_swiftEmptyArrayStorage;
  sub_100049490(&qword_1000916F8, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_1000495DC(&qword_100091708, &qword_100091700, qword_10006E1F0);
  v25 = v36;
  v26 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v38 + 8))(v25, v26);
  (*(v34 + 8))(v20, v35);
  sub_1000208BC(v43);

  sub_1000208BC(v42);
  return a5;
}

uint64_t sub_100047C6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100047C78(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = result;
  }

  return result;
}

uint64_t sub_100047D34(unint64_t a1)
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

void sub_100047D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v4 = type metadata accessor for DeviceActivityDataStore.SyncStateType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CKSyncEngine.State.Serialization();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v10 + 16);
  v38 = v16;
  v15(v14, a2);
  v17 = CKSyncEngine.database.getter();
  v18 = [v17 scope];

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v37 = sub_100020D2C(v19, qword_100092EB0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v35 = v4;
    v23 = v22;
    v24 = swift_slowAlloc();
    v40 = v24;
    *v23 = 136446210;
    v25 = CKDatabaseScope.description.getter();
    v27 = sub_100033140(v25, v26, &v40);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Metadata was updated for engine with scope: %{public}s", v23, 0xCu);
    sub_1000208BC(v24);

    v4 = v35;
  }

  v28 = v39;
  if (v18 == 2)
  {
    v29 = &enum case for DeviceActivityDataStore.SyncStateType.private(_:);
    goto LABEL_9;
  }

  if (v18 == 3)
  {
    v29 = &enum case for DeviceActivityDataStore.SyncStateType.shared(_:);
LABEL_9:
    (*(v5 + 104))(v39, *v29, v4);
    v30 = *(*v36 + 184);
    sub_100049490(&qword_1000916D0, 255, &type metadata accessor for CKSyncEngine.State.Serialization);
    sub_100049490(&qword_1000916E0, 255, &type metadata accessor for CKSyncEngine.State.Serialization);
    v31 = v38;
    DeviceActivityDataStore.write<A>(_:type:)();
    (*(v5 + 8))(v28, v4);
    (*(v10 + 8))(v14, v31);
    return;
  }

  (*(v10 + 8))(v14, v38);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134349056;
    *(v34 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v32, v33, "Unrecognized database scope: %{public}ld", v34, 0xCu);
  }
}

char *sub_100048350(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void, uint64_t), char *a7)
{
  v135 = a6;
  v153 = a4;
  v146 = a2;
  v149 = a1;
  v148 = type metadata accessor for CKSyncEngine.Configuration();
  v152 = *(v148 - 8);
  v10 = *(v152 + 64);
  v12 = __chkstk_darwin(v148, v11);
  v147 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v136 = &v127 - v15;
  v145 = type metadata accessor for DeviceActivityDataStore.SyncStateType();
  v151 = *(v145 - 8);
  v16 = *(v151 + 64);
  __chkstk_darwin(v145, v17);
  v134 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100020818(&qword_100091678, &qword_10006DF88);
  v20 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v19 - 8, v21);
  v137 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22, v24);
  v144 = &v127 - v26;
  __chkstk_darwin(v25, v27);
  v150 = &v127 - v28;
  v142 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v141 = *(v142 - 8);
  v29 = *(v141 + 64);
  __chkstk_darwin(v142, v30);
  v139 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for OS_dispatch_queue.Attributes();
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32, v34);
  v138 = &v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8, v38);
  v143 = sub_100049490(&unk_100091680, v39, type metadata accessor for SyncCoordinator);
  v158[3] = sub_100021848(0, &qword_100091380, NSUserDefaults_ptr);
  v158[4] = &off_100086AB0;
  v140 = a3;
  v158[0] = a3;
  v40 = type metadata accessor for DeviceActivityDataLocations();
  v157[3] = v40;
  v157[4] = &protocol witness table for DeviceActivityDataLocations;
  v41 = sub_1000283C4(v157);
  (*(*(v40 - 8) + 32))(v41, a5, v40);
  *(a7 + 6) = 0;
  swift_unknownObjectWeakInit();
  v42 = *(*a7 + 200);
  v43 = objc_allocWithZone(NSBackgroundActivityScheduler);
  v44 = String._bridgeToObjectiveC()();
  v45 = [v43 initWithIdentifier:v44];

  *&a7[v42] = v45;
  *&a7[*(*a7 + 208)] = 0;
  v46 = *(*a7 + 216);
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v155[0] = &_swiftEmptyArrayStorage;
  sub_100049490(&qword_100091698, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100020818(&qword_1000916A0, &qword_10006DF90);
  sub_1000495DC(&qword_1000916A8, &qword_1000916A0, &qword_10006DF90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v141 + 104))(v139, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v142);
  *&a7[v46] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v47 = &a7[*(*a7 + 240)];
  *v47 = 0;
  *(v47 + 1) = 0;
  v48 = &a7[*(*a7 + 248)];
  *v48 = 0xD000000000000013;
  v48[1] = 0x8000000100070060;
  v49 = &a7[*(*a7 + 256)];
  v133 = v49;
  *v49 = 0xD000000000000012;
  v49[1] = 0x8000000100070080;
  v50 = &a7[*(*a7 + 264)];
  *v50 = 0xD000000000000014;
  *(v50 + 1) = 0x80000001000700A0;
  v51 = &a7[*(*a7 + 272)];
  *v51 = 0xD00000000000001DLL;
  *(v51 + 1) = 0x80000001000700C0;
  *(a7 + 2) = v149;
  *(a7 + 6) = v143;
  swift_unknownObjectWeakAssign();
  sub_100020F40(v158, (a7 + 56));
  v52 = *(*a7 + 184);
  v53 = type metadata accessor for DeviceActivityDataStore();
  v141 = *(v53 - 8);
  v54 = *(v141 + 16);
  v55 = v153;
  v142 = v53;
  v54(&a7[v52], v153);
  sub_100020F40(v157, &a7[*(*a7 + 192)]);
  v56 = objc_allocWithZone(CKContainerID);
  v57 = String._bridgeToObjectiveC()();
  v58 = [v56 initWithContainerIdentifier:v57 environment:1];

  v59 = [objc_allocWithZone(CKContainerOptions) init];
  [v59 setUseZoneWidePCS:1];
  v60 = objc_allocWithZone(CKContainer);
  v139 = v58;
  v138 = v59;
  v61 = [v60 initWithContainerID:v58 options:v59];
  *(a7 + 3) = v61;
  v62 = v61;
  v63 = [v62 privateCloudDatabase];
  v64 = objc_allocWithZone(IDSInvitationManager);
  v65 = String._bridgeToObjectiveC()();
  v66 = [v64 initWithServiceIdentifier:v65];

  sub_100020818(&unk_1000916B0, &qword_10006DF98);
  v67 = swift_allocObject();
  *(a7 + 4) = sub_10004764C(v62, v63, v135, v66, v67);
  v68 = [*(a7 + 3) privateCloudDatabase];
  v69 = v151;
  v70 = *(v151 + 104);
  v132 = v151 + 104;
  v135 = v70;
  v71 = v134;
  v72 = v145;
  v70(v134, enum case for DeviceActivityDataStore.SyncStateType.private(_:), v145);
  v73 = *v48;
  v74 = v48[1];

  v75 = v150;
  sub_10003E674(v71, v158, v73, v74, v55, v150);

  v76 = *(v69 + 8);
  v151 = v69 + 8;
  v131 = v76;
  v76(v71, v72);
  sub_1000297C4(v75, v144, &qword_100091678, &qword_10006DF88);
  v77 = v68;
  v127 = v146;
  v78 = v136;
  v146 = v77;
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  v130 = "e.alloy.usagetracking";
  CKSyncEngine.Configuration.apsMachServiceName.setter();
  CKSyncEngine.Configuration.useOpportunisticPushTopic.setter();
  v79 = v152;
  v129 = *(v152 + 16);
  v80 = v78;
  v81 = v148;
  v129(v147, v78, v148);
  v82 = type metadata accessor for CKSyncEngine();
  v83 = *(v82 + 48);
  v84 = *(v82 + 52);
  swift_allocObject();
  v85 = CKSyncEngine.init(_:)();
  v86 = *(v79 + 8);
  v152 = v79 + 8;
  v128 = v86;
  v86(v80, v81);
  *&a7[*(*a7 + 224)] = v85;
  v87 = [*(a7 + 3) sharedCloudDatabase];
  v88 = v145;
  v135(v71, enum case for DeviceActivityDataStore.SyncStateType.shared(_:), v145);
  v90 = *v133;
  v89 = v133[1];

  v91 = v137;
  sub_10003E674(v71, v158, v90, v89, v153, v137);
  v92 = v91;

  v131(v71, v88);
  sub_1000297C4(v91, v144, &qword_100091678, &qword_10006DF88);
  v93 = v127;
  v94 = v87;
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  CKSyncEngine.Configuration.apsMachServiceName.setter();
  CKSyncEngine.Configuration.useOpportunisticPushTopic.setter();
  v95 = v148;
  v129(v147, v80, v148);
  v96 = *(v82 + 48);
  v97 = *(v82 + 52);
  swift_allocObject();
  v98 = CKSyncEngine.init(_:)();
  v128(v80, v95);
  *&a7[*(*a7 + 232)] = v98;
  if ([swift_getObjCClassFromMetadata() isAuthorized])
  {
    v99 = &a7[*(*a7 + 272)];
    v100 = *v99;
    v101 = v99[1];
    v102 = String._bridgeToObjectiveC()();
    v103 = [v140 BOOLForKey:v102];

    if ((v103 & 1) == 0)
    {
      v104 = v92;
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v105 = type metadata accessor for Logger();
      sub_100020D2C(v105, qword_100092EB0);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&_mh_execute_header, v106, v107, "Performing one-time reset of local device identifier", v108, 2u);
      }

      v109 = static _SegmentInterval.allCases.getter();
      sub_1000379FC(v109);

      v110 = static _SegmentInterval.allCases.getter();
      DeviceActivityDataStore.deleteLocalData(deleteDeviceIdentifier:segmentIntervals:)(1, v110);
      if (v111)
      {

        swift_errorRetain();
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v155[0] = v115;
          *v114 = 136446210;
          v154 = v111;
          swift_errorRetain();
          sub_100020818(&qword_100091370, &qword_10006D390);
          v116 = String.init<A>(describing:)();
          v118 = sub_100033140(v116, v117, v155);

          *(v114 + 4) = v118;
          _os_log_impl(&_mh_execute_header, v112, v113, "Failed to reset local device identifier: %{public}s", v114, 0xCu);
          sub_1000208BC(v115);
        }

        else
        {
        }

        v92 = v104;
      }

      else
      {

        v156 = &type metadata for Bool;
        LOBYTE(v155[0]) = 1;
        v125 = *v99;
        v126 = v99[1];

        sub_100035A28(v155);

        sub_100028FF4(v155, &qword_100091360, &unk_10006D960);
      }
    }
  }

  else
  {
    v156 = &type metadata for Bool;
    LOBYTE(v155[0]) = 1;
    v119 = &a7[*(*a7 + 272)];
    v120 = *v119;
    v121 = v119[1];

    sub_100035A28(v155);

    sub_100028FF4(v155, &qword_100091360, &unk_10006D960);
  }

  v122 = [objc_opt_self() defaultCenter];
  v123 = qword_100090D58;

  if (v123 != -1)
  {
    swift_once();
  }

  [v122 addObserver:a7 selector:"retrySharingWithNotification:" name:qword_100092F10 object:0];

  (*(v141 + 8))(v153, v142);
  sub_100028FF4(v92, &qword_100091678, &qword_10006DF88);
  sub_100028FF4(v150, &qword_100091678, &qword_10006DF88);
  sub_1000208BC(v157);
  sub_1000208BC(v158);
  return a7;
}

uint64_t sub_100049490(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000494D8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100034A80(&qword_100091678, &qword_10006DF88);
    sub_100049490(a2, 255, &type metadata accessor for CKSyncEngine.State.Serialization);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100049578()
{
  sub_1000208BC((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000495C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000495DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100034A80(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100049638(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_100020818(&qword_1000918B0, &qword_10006E0E8);
    v12 = static _SetStorage.allocate(capacity:)();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_100049490(&qword_1000918B8, 255, &type metadata accessor for Calendar.Component);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_100049490(&unk_1000918C0, 255, &type metadata accessor for Calendar.Component);
          v27 = dispatch thunk of static Equatable.== infix(_:_:)();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100049960(uint64_t a1)
{
  v2 = sub_100020818(&unk_100091740, &unk_10006DFC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v22 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100020818(&qword_100091768, &qword_10006DFE0);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1000297C4(v11, v7, &unk_100091740, &unk_10006DFC8);
      v13 = *&v7[v10];
      result = sub_1000336F8(v7);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v9[6];
      v18 = type metadata accessor for URL();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, v7, v18);
      *(v9[7] + 8 * v16) = v13;
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

void sub_100049B84(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100049BC8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100049BF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100049C1C()
{
  v1 = *(*v0 + 208);
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_100049C3C()
{
  v1 = type metadata accessor for _DeviceActivityData.User();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DeviceActivityDataSource();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v0 + *(*v0 + 240));
  if (!v13[1])
  {
    v14 = *(*v0 + 184);
    v15 = type metadata accessor for DeviceActivityDataStore();
    v24[3] = v15;
    v24[4] = &protocol witness table for DeviceActivityDataStore;
    v16 = sub_1000283C4(v24);
    (*(*(v15 - 8) + 16))(v16, v0 + v14, v15);
    DeviceActivityDataSource.init(dataStoring:)();
    DeviceActivityDataSource.localUser.getter();
    (*(v8 + 8))(v12, v7);
    v17 = _DeviceActivityData.User.altDSID.getter();
    v19 = v18;
    (*(v2 + 8))(v6, v1);
    v20 = v13[1];
    *v13 = v17;
    v13[1] = v19;

    v21 = v13[1];
  }

  return *v13;
}

void *sub_100049EAC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100038720(a1);
}

void *sub_100049EB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100020818(&qword_1000917D8, &qword_10006E030);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10004A0A8()
{
  result = qword_1000917E8;
  if (!qword_1000917E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000917E8);
  }

  return result;
}

void sub_10004A0FC(uint64_t a1)
{
  v2 = type metadata accessor for CKSyncEngine.Event.AccountChange();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CKSyncEngine.Event.AccountChange.ChangeType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  CKSyncEngine.Event.AccountChange.changeType.getter();
  v14 = (*(v9 + 88))(v13, v8);
  if (v14 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signIn(_:))
  {
    (*(v9 + 96))(v13, v8);
    v15 = *v13;
    if (qword_100090D38 != -1)
    {
      swift_once();
    }

    v16 = v15;
    v17 = 0;
    v18 = v15;
LABEL_9:
    sub_10003DCEC(v17, v18);

    return;
  }

  if (v14 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signOut(_:))
  {
    (*(v9 + 96))(v13, v8);
    v19 = *v13;
    if (qword_100090D38 != -1)
    {
      swift_once();
    }

    v16 = v19;
    v17 = v19;
    v18 = 0;
    goto LABEL_9;
  }

  if (v14 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.switchAccounts(_:))
  {
    (*(v9 + 96))(v13, v8);
    v20 = *v13;
    v21 = *(v13 + 1);
    if (qword_100090D38 != -1)
    {
      swift_once();
    }

    v22 = v20;
    v23 = v21;
    sub_10003DCEC(v20, v21);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100020D2C(v24, qword_100092EB0);
    (*(v3 + 16))(v7, a1, v2);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v34 = v27;
      v35 = swift_slowAlloc();
      v36 = v35;
      *v27 = 136446210;
      sub_100049490(&qword_100091808, 255, &type metadata accessor for CKSyncEngine.Event.AccountChange);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v3 + 8))(v7, v2);
      v31 = sub_100033140(v28, v30, &v36);

      v32 = v34;
      *(v34 + 1) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Received unknown account change: %{public}s", v32, 0xCu);
      sub_1000208BC(v35);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    (*(v9 + 8))(v13, v8);
  }
}

void sub_10004A5C8()
{
  v0 = CKSyncEngine.database.getter();
  v1 = [v0 scope];

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100020D2C(v2, qword_100092EB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = CKDatabaseScope.description.getter();
    v9 = sub_100033140(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sync engine did fetch changes for %{public}s", v5, 0xCu);
    sub_1000208BC(v6);
  }

  if (v1 == 2)
  {
    v10 = [objc_opt_self() defaultCenter];
    v11 = v10;
    if (qword_100090D40 != -1)
    {
      swift_once();
      v10 = v11;
    }

    [v10 postNotificationName:qword_100092F00 object:{0, v11, v13}];
  }
}

uint64_t sub_10004A7D8(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for CKDatabase.DatabaseChange.Deletion();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = type metadata accessor for CKSyncEngine.Event.AccountChange();
  v2[18] = v12;
  v13 = *(v12 - 8);
  v2[19] = v13;
  v14 = *(v13 + 64) + 15;
  v2[20] = swift_task_alloc();
  v15 = type metadata accessor for CKSyncEngine.State.Serialization();
  v2[21] = v15;
  v16 = *(v15 - 8);
  v2[22] = v16;
  v17 = *(v16 + 64) + 15;
  v2[23] = swift_task_alloc();
  v18 = type metadata accessor for CKSyncEngine.Event.StateUpdate();
  v2[24] = v18;
  v19 = *(v18 - 8);
  v2[25] = v19;
  v20 = *(v19 + 64) + 15;
  v2[26] = swift_task_alloc();
  v21 = type metadata accessor for CKDatabase.RecordZoneChange.Deletion();
  v2[27] = v21;
  v22 = *(v21 - 8);
  v2[28] = v22;
  v23 = *(v22 + 64) + 15;
  v2[29] = swift_task_alloc();
  v24 = type metadata accessor for CKDatabase.RecordZoneChange.Modification();
  v2[30] = v24;
  v25 = *(v24 - 8);
  v2[31] = v25;
  v26 = *(v25 + 64) + 15;
  v2[32] = swift_task_alloc();
  v27 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v2[33] = v27;
  v28 = *(v27 - 8);
  v2[34] = v28;
  v29 = *(v28 + 64) + 15;
  v2[35] = swift_task_alloc();
  v30 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave();
  v2[36] = v30;
  v31 = *(v30 - 8);
  v2[37] = v31;
  v32 = *(v31 + 64) + 15;
  v2[38] = swift_task_alloc();
  v33 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges();
  v2[39] = v33;
  v34 = *(v33 - 8);
  v2[40] = v34;
  v35 = *(v34 + 64) + 15;
  v2[41] = swift_task_alloc();
  v36 = type metadata accessor for CKSyncEngine.Event();
  v2[42] = v36;
  v37 = *(v36 - 8);
  v2[43] = v37;
  v38 = *(v37 + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();

  return _swift_task_switch(sub_10004AC98, 0, 0);
}

uint64_t sub_10004AC98()
{
  v228 = v0;
  v1 = v0;
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v5 = *(v4 + 16);
  v5(v2, v0[7], v3);
  v6 = (*(v4 + 88))(v2, v3);
  v225 = v0;
  if (v6 == enum case for CKSyncEngine.Event.stateUpdate(_:))
  {
    v7 = v0[45];
    v9 = v0[25];
    v8 = v1[26];
    v10 = v1[24];
    (*(v1[43] + 96))(v1[45], v1[42]);
    (*(v9 + 32))(v8, v7, v10);
    if (qword_100090D38 != -1)
    {
      swift_once();
    }

    v12 = v1[25];
    v11 = v1[26];
    v14 = v1[23];
    v13 = v1[24];
    v15 = v1[21];
    v16 = v1[22];
    v17 = v1[8];
    v18 = qword_100092EF8;
    CKSyncEngine.Event.StateUpdate.stateSerialization.getter();
    v19 = v18;
    v1 = v225;
    sub_100047D98(v17, v14, v19);
    (*(v16 + 8))(v14, v15);
    goto LABEL_5;
  }

  if (v6 == enum case for CKSyncEngine.Event.accountChange(_:))
  {
    v20 = v0[45];
    v22 = v0[19];
    v21 = v1[20];
    v23 = v1[18];
    (*(v1[43] + 96))(v1[45], v1[42]);
    (*(v22 + 32))(v21, v20, v23);
    sub_10004A0FC(v21);
LABEL_8:
    (*(v22 + 8))(v21, v23);
    goto LABEL_49;
  }

  if (v6 == enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
  {
    v24 = v0[45];
    v26 = v0[13];
    v25 = v1[14];
    v27 = v1[12];
    (*(v1[43] + 96))(v1[45], v1[42]);
    (*(v26 + 32))(v25, v24, v27);
    v28 = CKSyncEngine.Event.FetchedDatabaseChanges.deletions.getter();
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = v1[10];
      v33 = *(v30 + 16);
      v31 = v30 + 16;
      v32 = v33;
      v34 = v28 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
      v35 = *(v31 + 56);
      do
      {
        v32(v1[11], v34, v1[9]);
        if (qword_100090D38 != -1)
        {
          swift_once();
        }

        v36 = v1[11];
        v37 = v1[9];
        v38 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
        (*(v31 - 8))(v36, v37);
        v1 = v225;
        sub_10003D574(v38);

        v34 += v35;
        --v29;
      }

      while (v29);
    }

    v55 = v1[13];
    v54 = v1[14];
    v56 = v1[12];
LABEL_48:
    (*(v55 + 8))(v54, v56);
    goto LABEL_49;
  }

  if (v6 == enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
  {
    v39 = v0[45];
    v41 = v0[34];
    v40 = v1[35];
    v42 = v1[33];
    (*(v1[43] + 96))(v1[45], v1[42]);
    (*(v41 + 32))(v40, v39, v42);
    v43 = CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter();
    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = v1[31];
      v48 = *(v45 + 16);
      v46 = v45 + 16;
      v47 = v48;
      v49 = v43 + ((*(v46 + 64) + 32) & ~*(v46 + 64));
      v50 = *(v46 + 56);
      do
      {
        v47(v1[32], v49, v1[30]);
        if (qword_100090D38 != -1)
        {
          swift_once();
        }

        v51 = v1[32];
        v52 = v1[30];
        v53 = CKDatabase.RecordZoneChange.Modification.record.getter();
        (*(v46 - 8))(v51, v52);
        v1 = v225;
        sub_10003B8D8(v53);

        v49 += v50;
        --v44;
      }

      while (v44);
    }

    v66 = v1[35];
    v67 = CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
    v68 = *(v67 + 16);
    if (v68)
    {
      v69 = v1[28];
      v71 = *(v69 + 16);
      v70 = v69 + 16;
      v212 = v71;
      v72 = v67 + ((*(v70 + 64) + 32) & ~*(v70 + 64));
      v211 = *(v70 + 56);
      v73 = (v70 - 8);
      for (i = v68 - 1; ; --i)
      {
        v212(v1[29], v72, v1[27]);
        if (qword_100090D38 != -1)
        {
          swift_once();
        }

        v74 = v1[29];
        v75 = v1[27];
        v76 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
        CKDatabase.RecordZoneChange.Deletion.recordType.getter();
        (*v73)(v74, v75);
        if (qword_100090D18 != -1)
        {
          swift_once();
        }

        v77 = type metadata accessor for Logger();
        sub_100020D2C(v77, qword_100092EB0);
        v78 = v76;
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v227 = v82;
          *v81 = 136446210;
          v83 = v78;
          v84 = [v83 description];
          v210 = v72;
          v85 = v70;
          v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v87 = v73;
          v89 = v88;

          v1 = v225;
          v90 = sub_100033140(v86, v89, &v227);
          v73 = v87;

          *(v81 + 4) = v90;
          v70 = v85;
          v72 = v210;
          _os_log_impl(&_mh_execute_header, v79, v80, "Record was deleted: %{public}s", v81, 0xCu);
          sub_1000208BC(v82);
        }

        else
        {
        }

        if (!i)
        {
          break;
        }

        v72 += v211;
      }
    }

    v55 = v1[34];
    v54 = v1[35];
    v56 = v1[33];
    goto LABEL_48;
  }

  if (v6 == enum case for CKSyncEngine.Event.sentDatabaseChanges(_:))
  {
    v57 = v0[45];
    v59 = v0[16];
    v58 = v1[17];
    v60 = v1[15];
    (*(v1[43] + 96))(v1[45], v1[42]);
    (*(v59 + 32))(v58, v57, v60);
    v61 = CKSyncEngine.Event.SentDatabaseChanges.savedZones.getter();
    v62 = v61;
    if (v61 >> 62)
    {
      v63 = _CocoaArrayWrapper.endIndex.getter();
      if (!v63)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v63)
      {
        goto LABEL_74;
      }
    }

    if (v63 < 1)
    {
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    for (j = 0; j != v63; ++j)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v65 = *(v62 + 8 * j + 32);
      }

      v1 = v65;
      if (qword_100090D38 != -1)
      {
        swift_once();
      }

      sub_10003CFAC(v1);
    }

LABEL_74:
    v130 = v225[17];

    v131 = CKSyncEngine.Event.SentDatabaseChanges.deletedZoneIDs.getter();
    v62 = v131;
    if (v131 >> 62)
    {
      v132 = _CocoaArrayWrapper.endIndex.getter();
      if (v132)
      {
LABEL_76:
        if (v132 >= 1)
        {
          v133 = 0;
          v134 = v62 & 0xC000000000000001;
          v215 = v62 & 0xC000000000000001;
          do
          {
            if (v134)
            {
              v137 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v137 = *(v62 + 8 * v133 + 32);
            }

            if (qword_100090D38 != -1)
            {
              v150 = v137;
              swift_once();
              v137 = v150;
            }

            v138 = qword_100092EF8;
            v221 = v137;
            v139 = [v137 zoneName];
            v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v142 = v141;

            if (qword_100090D18 != -1)
            {
              swift_once();
            }

            v143 = type metadata accessor for Logger();
            sub_100020D2C(v143, qword_100092EB0);

            v144 = Logger.logObject.getter();
            v145 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v144, v145))
            {
              v146 = v62;
              v147 = v132;
              v148 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              v227 = v149;
              *v148 = 136446210;
              *(v148 + 4) = sub_100033140(v140, v142, &v227);
              _os_log_impl(&_mh_execute_header, v144, v145, "Deleted %{public}s", v148, 0xCu);
              sub_1000208BC(v149);

              v132 = v147;
              v62 = v146;
              v134 = v215;
            }

            ++v133;
            v135 = v138[10];
            v136 = v138[11];
            sub_100020908(v138 + 7, v135);
            *(v225 + 1) = 0u;
            *(v225 + 2) = 0u;
            (*(v136 + 40))(v225 + 2, v140, v142, v135, v136);

            sub_100028FF4((v225 + 2), &qword_100091360, &unk_10006D960);
          }

          while (v132 != v133);
          goto LABEL_89;
        }

        goto LABEL_93;
      }
    }

    else
    {
      v132 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v132)
      {
        goto LABEL_76;
      }
    }

LABEL_89:

    if (qword_100090D38 != -1)
    {
      swift_once();
    }

    v1 = v225;
    v22 = v225[16];
    v21 = v225[17];
    v23 = v225[15];
LABEL_133:
    sub_10003EE80();
    goto LABEL_8;
  }

  if (v6 == enum case for CKSyncEngine.Event.sentRecordZoneChanges(_:))
  {
    v104 = v0[45];
    v106 = v0[40];
    v105 = v1[41];
    v107 = v1[39];
    (*(v1[43] + 96))(v1[45], v1[42]);
    (*(v106 + 32))(v105, v104, v107);
    v108 = CKSyncEngine.Event.SentRecordZoneChanges.savedRecords.getter();
    v62 = v108;
    if (!(v108 >> 62))
    {
      v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v109)
      {
        goto LABEL_95;
      }

LABEL_55:
      if (v109 < 1)
      {
        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      for (k = 0; k != v109; ++k)
      {
        if ((v62 & 0xC000000000000001) != 0)
        {
          v111 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v111 = *(v62 + 8 * k + 32);
        }

        v112 = v111;
        if (qword_100090D38 != -1)
        {
          swift_once();
        }

        sub_10003A4CC(v112);
      }

LABEL_95:
      v1 = v225;
      v151 = v225[41];

      v152 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
      v153 = *(v152 + 16);
      if (v153)
      {
        v154 = v225[37];
        v156 = *(v154 + 16);
        v155 = v154 + 16;
        v222 = v156;
        v157 = v152 + ((*(v155 + 64) + 32) & ~*(v155 + 64));
        v158 = *(v155 + 56);
        do
        {
          v222(v1[38], v157, v1[36]);
          if (qword_100090D38 != -1)
          {
            swift_once();
          }

          v159 = v1[38];
          v160 = v1[36];
          v161 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
          v162 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
          (*(v155 - 8))(v159, v160);
          v1 = v225;
          sub_10003ADE4(v161, v162);

          v157 += v158;
          --v153;
        }

        while (v153);
      }

      v163 = v1[41];
      v164 = CKSyncEngine.Event.SentRecordZoneChanges.deletedRecordIDs.getter();
      v165 = v164;
      if (v164 >> 62)
      {
        v166 = _CocoaArrayWrapper.endIndex.getter();
        if (v166)
        {
LABEL_102:
          v167 = v166 - 1;
          if (v166 >= 1)
          {
            v168 = 0;
            v169 = v165 & 0xC000000000000001;
            v170 = &OBJC_IVAR___USBudgetTracker__webDomainSubscription;
            v216 = v165 & 0xC000000000000001;
            if ((v165 & 0xC000000000000001) == 0)
            {
              goto LABEL_105;
            }

LABEL_104:
            for (m = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; m = *(v165 + 8 * v168 + 32))
            {
              v172 = m;
              if (*(v170 + 423) != -1)
              {
                swift_once();
              }

              if (qword_100090D18 != -1)
              {
                swift_once();
              }

              v173 = type metadata accessor for Logger();
              sub_100020D2C(v173, qword_100092EB0);
              v174 = v172;
              v175 = Logger.logObject.getter();
              v176 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v175, v176))
              {
                v177 = swift_slowAlloc();
                v178 = swift_slowAlloc();
                v227 = v178;
                *v177 = 136446210;
                v174 = v174;
                v179 = [v174 description];
                v180 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v223 = v168;
                v181 = v167;
                v182 = v165;
                v184 = v183;

                v1 = v225;
                v185 = sub_100033140(v180, v184, &v227);
                v165 = v182;
                v167 = v181;
                v168 = v223;

                *(v177 + 4) = v185;
                v169 = v216;
                _os_log_impl(&_mh_execute_header, v175, v176, "Deleted record: %{public}s", v177, 0xCu);
                sub_1000208BC(v178);

                v170 = &OBJC_IVAR___USBudgetTracker__webDomainSubscription;
              }

              if (v167 == v168)
              {
                break;
              }

              ++v168;
              if (v169)
              {
                goto LABEL_104;
              }

LABEL_105:
              ;
            }

            goto LABEL_116;
          }

          goto LABEL_137;
        }
      }

      else
      {
        v166 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v166)
        {
          goto LABEL_102;
        }
      }

LABEL_116:
      v186 = v1[41];

      v187 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
      v188 = v187;
      v189 = 0;
      v190 = v187 + 64;
      v191 = -1;
      v192 = -1 << *(v187 + 32);
      if (-v192 < 64)
      {
        v191 = ~(-1 << -v192);
      }

      v193 = v191 & *(v187 + 64);
      v194 = (63 - v192) >> 6;
      v213 = v187;
      while (v193)
      {
        v195 = v189;
LABEL_125:
        v196 = (v195 << 9) | (8 * __clz(__rbit64(v193)));
        v197 = *(*(v188 + 56) + v196);
        v198 = qword_100090D38;
        v224 = *(*(v188 + 48) + v196);
        v199 = v197;
        if (v198 != -1)
        {
          v209 = v199;
          swift_once();
          v199 = v209;
        }

        v200 = qword_100090D18;
        v201 = v199;
        if (v200 != -1)
        {
          swift_once();
        }

        v193 &= v193 - 1;
        v202 = type metadata accessor for Logger();
        sub_100020D2C(v202, qword_100092EB0);
        swift_errorRetain();
        v203 = Logger.logObject.getter();
        v204 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v203, v204))
        {
          v205 = swift_slowAlloc();
          v217 = swift_slowAlloc();
          v227 = v217;
          *v205 = 136446210;
          v225[6] = v201;
          swift_errorRetain();
          sub_100020818(&qword_100091370, &qword_10006D390);
          v206 = String.init<A>(describing:)();
          v208 = sub_100033140(v206, v207, &v227);

          *(v205 + 4) = v208;
          _os_log_impl(&_mh_execute_header, v203, v204, "Failed to delete record: %{public}s", v205, 0xCu);
          sub_1000208BC(v217);
          v1 = v225;

          v188 = v213;
        }

        v189 = v195;
      }

      while (1)
      {
        v195 = v189 + 1;
        if (__OFADD__(v189, 1))
        {
          __break(1u);
          goto LABEL_135;
        }

        if (v195 >= v194)
        {
          break;
        }

        v193 = *(v190 + 8 * v195);
        ++v189;
        if (v193)
        {
          goto LABEL_125;
        }
      }

      if (qword_100090D38 == -1)
      {
        goto LABEL_132;
      }

LABEL_135:
      swift_once();
LABEL_132:
      v22 = v1[40];
      v21 = v1[41];
      v23 = v1[39];
      goto LABEL_133;
    }

LABEL_94:
    v109 = _CocoaArrayWrapper.endIndex.getter();
    if (!v109)
    {
      goto LABEL_95;
    }

    goto LABEL_55;
  }

  if (v6 == enum case for CKSyncEngine.Event.didFetchChanges(_:))
  {
    if (qword_100090D38 == -1)
    {
LABEL_66:
      v11 = v1[45];
      v13 = v1[42];
      v12 = v1[43];
      v113 = v1[8];
      sub_10004A5C8();
LABEL_5:
      (*(v12 + 8))(v11, v13);
      goto LABEL_49;
    }

LABEL_138:
    swift_once();
    goto LABEL_66;
  }

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v114 = v0[44];
  v115 = v0[42];
  v116 = v0[7];
  v117 = type metadata accessor for Logger();
  sub_100020D2C(v117, qword_100092EB0);
  v5(v114, v116, v115);
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.debug.getter();
  v120 = os_log_type_enabled(v118, v119);
  v122 = v0[43];
  v121 = v0[44];
  v123 = v0[42];
  if (v120)
  {
    v124 = swift_slowAlloc();
    v220 = swift_slowAlloc();
    v227 = v220;
    *v124 = 136446210;
    sub_100049490(&unk_1000917F0, 255, &type metadata accessor for CKSyncEngine.Event);
    v125 = dispatch thunk of CustomStringConvertible.description.getter();
    v127 = v126;
    v128 = *(v122 + 8);
    v128(v121, v123);
    v129 = sub_100033140(v125, v127, &v227);

    *(v124 + 4) = v129;
    _os_log_impl(&_mh_execute_header, v118, v119, "Received event: %{public}s", v124, 0xCu);
    sub_1000208BC(v220);
  }

  else
  {

    v128 = *(v122 + 8);
    v128(v121, v123);
  }

  v1 = v225;
  v128(v225[45], v225[42]);
LABEL_49:
  v92 = v1[44];
  v91 = v1[45];
  v93 = v1[41];
  v94 = v1[38];
  v95 = v1[35];
  v96 = v1[32];
  v97 = v1;
  v98 = v1[29];
  v99 = v97[26];
  v100 = v97[23];
  v101 = v97[20];
  v214 = v97[17];
  v219 = v97[14];
  v226 = v97[11];

  v102 = v97[1];

  return v102();
}

uint64_t sub_10004C17C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004C1CC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10004C250(void *a1, char a2, id a3)
{
  if (a2)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100020D2C(v4, qword_100092EB0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_100049B84(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v8 = String.init<A>(describing:)();
      v10 = sub_100033140(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Failed to fetch participant: %{public}s", v6, 0xCu);
      sub_1000208BC(v7);
    }

    else
    {
    }
  }

  else
  {

    [a3 addParticipant:a1];
  }
}

void sub_10004C434(uint64_t a1, NSObject *a2)
{
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100020D2C(v3, qword_100092EB0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    swift_errorRetain();
    sub_100020818(&qword_100091370, &qword_10006D390);
    v8 = String.init<A>(describing:)();
    v10 = sub_100033140(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save share: %{public}s", v6, 0xCu);
    sub_1000208BC(v7);
  }

  v11 = [objc_opt_self() defaultCenter];
  if (qword_100090D58 != -1)
  {
    swift_once();
  }

  v12 = 0x40AC200000000000;
  v13 = 0;
  [v11 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  dispatch_group_leave(a2);
}

unint64_t sub_10004C660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100020818(&qword_100091820, &qword_10006E060);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000297C4(v4, &v13, &qword_100091828, &qword_10006E068);
      v5 = v13;
      v6 = v14;
      result = sub_100033790(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100034094(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_10004C790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100020818(&qword_100091830, &qword_10006E070);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000297C4(v4, v13, &qword_100091838, &unk_10006E078);
      result = sub_10003380C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100034094(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_10004C8CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004C92C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = a2;
  v8 = a3 & 1;
  return v4(a1, &v7);
}

uint64_t sub_10004C96C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10004C9B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_35:
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v28 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v27 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v9 = *(a1 + 8 * v6 + 32);
    }

    v10 = v9;
    v11 = [v9 userIdentity];
    v7 = [v11 lookupInfo];

    if (v7)
    {
      break;
    }

    v7 = v10;
LABEL_5:

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_34;
    }
  }

  v12 = [v7 emailAddress];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v14 == a2 && v16 == a3)
    {

      return v6;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {

      goto LABEL_31;
    }
  }

  v19 = [v7 phoneNumber];
  if (!v19)
  {

    goto LABEL_5;
  }

  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21 != a2 || v23 != a3)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      return v6;
    }

    goto LABEL_6;
  }

LABEL_31:

  return v6;
}

uint64_t sub_10004CC04(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v8 = sub_10004C9B4(*a1, a2, a3);
  v10 = v8;
  if (v3)
  {
    return v10;
  }

  v41 = a2;
  v42 = a3;
  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_59;
    }

    v13 = *(v7 + 8 * v11 + 32);
LABEL_16:
    v14 = v13;
    v15 = [v13 userIdentity];
    v16 = [v15 lookupInfo];

    if (!v16)
    {
      v16 = v14;
LABEL_32:

      goto LABEL_33;
    }

    v17 = [v16 emailAddress];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (v19 == v41 && v21 == v42)
      {

        goto LABEL_9;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {

LABEL_29:
        goto LABEL_9;
      }
    }

    v24 = [v16 phoneNumber];
    if (!v24)
    {

      goto LABEL_32;
    }

    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v26 == v41 && v28 == v42)
    {

      goto LABEL_29;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_9;
    }

LABEL_33:
    if (v10 != v11)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        v32 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10 >= v32)
        {
          goto LABEL_64;
        }

        if (v11 >= v32)
        {
          goto LABEL_65;
        }

        v33 = *(v7 + 32 + 8 * v11);
        v29 = *(v7 + 32 + 8 * v10);
        v30 = v33;
      }

      v34 = v30;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_100047D34(v7);
        v35 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v35) = 0;
      }

      v36 = v7 & 0xFFFFFFFFFFFFFF8;
      v37 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v34;

      if ((v7 & 0x8000000000000000) != 0 || v35)
      {
        v7 = sub_100047D34(v7);
        v36 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v11 & 0x8000000000000000) != 0)
        {
LABEL_56:
          __break(1u);
          return v10;
        }
      }

      else if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_56;
      }

      if (v11 >= *(v36 + 16))
      {
        goto LABEL_62;
      }

      v38 = v36 + 8 * v11;
      v39 = *(v38 + 32);
      *(v38 + 32) = v29;

      *a1 = v7;
    }

LABEL_8:
    v12 = __OFADD__(v10++, 1);
    if (v12)
    {
      goto LABEL_61;
    }

LABEL_9:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
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
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10004CF9C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_100021848(0, &qword_100091860, CKShareParticipant_ptr);
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

uint64_t sub_10004D0AC(uint64_t a1, uint64_t a2)
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

  sub_100047C78(result);

  return sub_10004CF9C(v4, v2, 0);
}

uint64_t sub_10004D184(void *a1, id a2)
{
  v140[1] = a2;
  v140[2] = a1;
  v2 = [a2 recordID];
  v3 = [v2 zoneID];

  v4 = [v3 zoneName];
  v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = off_100091188[0];
  v8 = sub_100021848(0, &unk_100091850, CKShare_ptr);
  v140[0] = v7();
  v122 = v8;
  v123 = v7;
  v9 = v7();
  v121 = v9;
  if (v9 >> 62)
  {
    goto LABEL_134;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = &off_10008E000;
  v129 = v6;
  if (!v11)
  {
    v130 = 0;
    goto LABEL_98;
  }

  v13 = 0;
  v130 = 0;
  v14 = v121 & 0xC000000000000001;
  v15 = v121 & 0xFFFFFFFFFFFFFF8;
  *&v10 = 136446210;
  v120 = v10;
  v124 = v11;
  do
  {
    while (1)
    {
      if (v14)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v15 + 16))
        {
          goto LABEL_132;
        }

        v16 = *(v121 + 32 + 8 * v13);
      }

      v17 = v16;
      if (__OFADD__(v13++, 1))
      {
        goto LABEL_131;
      }

      if ([v16 v12[427]] != 1)
      {
        break;
      }

      if (v13 == v11)
      {
        goto LABEL_98;
      }
    }

    v19 = [v17 userIdentity];
    v20 = [v19 lookupInfo];

    if (!v20)
    {
      goto LABEL_41;
    }

    v21 = [v20 emailAddress];
    if (!v21)
    {
      v21 = [v20 phoneNumber];
      if (!v21)
      {

LABEL_41:
        if (qword_100090D18 != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        sub_100020D2C(v47, qword_100092EB0);

        v48 = v17;
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          *v51 = 136446466;
          sub_100021848(0, &qword_100091860, CKShareParticipant_ptr);
          v52 = String.init<A>(describing:)();
          v54 = v13;
          v55 = sub_100033140(v52, v53, &v139);

          *(v51 + 4) = v55;
          v13 = v54;
          *(v51 + 12) = 2082;
          *(v51 + 14) = sub_100033140(v127, v6, &v139);
          _os_log_impl(&_mh_execute_header, v49, v50, "Removing %{public}s from %{public}s", v51, 0x16u);
          swift_arrayDestroy();

          v11 = v124;
        }

        else
        {
        }

        [a1 removeParticipant:v48];
LABEL_47:
        v130 = 1;
LABEL_48:
        v14 = v121 & 0xC000000000000001;
        goto LABEL_93;
      }
    }

    v126 = v20;
    v22 = v21;
    v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v134 = v23;

    v24 = (v123)(v122);
    v25 = v24;
    if (v24 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      v128 = v13;
      if (!v26)
      {
LABEL_86:

        if (qword_100090D18 != -1)
        {
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        sub_100020D2C(v85, qword_100092EB0);

        v6 = v129;

        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();

        v12 = &off_10008E000;
        v13 = v128;
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          *v88 = 136446466;
          v89 = sub_100033140(v132, v134, &v139);

          *(v88 + 4) = v89;
          *(v88 + 12) = 2082;
          *(v88 + 14) = sub_100033140(v127, v129, &v139);
          _os_log_impl(&_mh_execute_header, v86, v87, "Removing %{public}s from %{public}s", v88, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v11 = v124;
        v14 = v121 & 0xC000000000000001;
        [a1 removeParticipant:v17];

        goto LABEL_92;
      }
    }

    else
    {
      v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v128 = v13;
      if (!v26)
      {
        goto LABEL_86;
      }
    }

    v6 = 0;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_128;
        }

        v28 = *(v25 + 8 * v6 + 32);
      }

      v29 = v28;
      v30 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
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
        goto LABEL_133;
      }

      v31 = [v28 userIdentity];
      v27 = [v31 lookupInfo];

      if (!v27)
      {
        v27 = v29;
        goto LABEL_18;
      }

      v137 = v29;
      v32 = v17;
      v33 = [v27 emailAddress];
      if (v33)
      {
        break;
      }

LABEL_30:
      v40 = [v27 phoneNumber];
      if (v40)
      {
        v41 = v40;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        if (v132 == v42 && v134 == v44)
        {

LABEL_52:

          goto LABEL_54;
        }

        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v46)
        {
          goto LABEL_53;
        }

        v27 = v137;
      }

      else
      {
      }

      v17 = v32;
LABEL_18:

      ++v6;
      if (v30 == v26)
      {
        goto LABEL_86;
      }
    }

    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (v132 != v35 || v134 != v37)
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v39)
      {
        goto LABEL_52;
      }

      goto LABEL_30;
    }

LABEL_53:

LABEL_54:
    v56 = v32;

    v57 = sub_10004CC04(v140, v132, v134);

    v13 = v128;
    v6 = v129;
    v12 = &off_10008E000;
    if (v140[0] >> 62)
    {
      v58 = _CocoaArrayWrapper.endIndex.getter();
      if (v58 >= v57)
      {
        goto LABEL_56;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      v11 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_3;
    }

    v58 = *((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v58 < v57)
    {
      goto LABEL_133;
    }

LABEL_56:
    sub_10004D0AC(v57, v58);
    v59 = [v56 acceptanceStatus];
    if (v59 < 2)
    {
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_100020D2C(v65, qword_100092EB0);

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        *v68 = 136446466;
        v69 = sub_100033140(v132, v134, &v139);

        *(v68 + 4) = v69;
        *(v68 + 12) = 2082;
        *(v68 + 14) = sub_100033140(v127, v129, &v139);
        _os_log_impl(&_mh_execute_header, v66, v67, "Re-inviting %{public}s to %{public}s", v68, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v11 = v124;
      [a1 removeParticipant:v56];
      [a1 addParticipant:v137];

      goto LABEL_47;
    }

    if (v59 == 2)
    {
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_100020D2C(v70, qword_100092EB0);

      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        *v73 = 136446466;
        v74 = sub_100033140(v132, v134, &v139);

        *(v73 + 4) = v74;
        *(v73 + 12) = 2082;
        *(v73 + 14) = sub_100033140(v127, v129, &v139);
        _os_log_impl(&_mh_execute_header, v71, v72, "%{public}s is already sharing %{public}s", v73, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

LABEL_81:
      v84 = v126;
      goto LABEL_83;
    }

    if (v59 != 3)
    {

      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_100020D2C(v75, qword_100092EB0);
      v76 = v56;
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v139 = v80;
        *v79 = v120;
        [v76 acceptanceStatus];
        type metadata accessor for ParticipantAcceptanceStatus(0);
        v81 = String.init<A>(describing:)();
        v83 = sub_100033140(v81, v82, &v139);
        v13 = v128;

        *(v79 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v77, v78, "Unknown acceptance status: %{public}s", v79, 0xCu);
        sub_1000208BC(v80);

        goto LABEL_81;
      }

      v84 = v137;
LABEL_83:

      v11 = v124;
      goto LABEL_48;
    }

    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100020D2C(v60, qword_100092EB0);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *v63 = 136446466;
      v64 = sub_100033140(v132, v134, &v139);

      *(v63 + 4) = v64;
      *(v63 + 12) = 2082;
      *(v63 + 14) = sub_100033140(v127, v129, &v139);
      _os_log_impl(&_mh_execute_header, v61, v62, "Adding %{public}s to %{public}s", v63, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v11 = v124;
    v14 = v121 & 0xC000000000000001;
    [a1 addParticipant:v137];

LABEL_92:
    v130 = 1;
LABEL_93:
    v15 = v121 & 0xFFFFFFFFFFFFFF8;
  }

  while (v13 != v11);
LABEL_98:

  v90 = v140[0];
  v91 = v140[0] & 0xFFFFFFFFFFFFFF8;
  if (v140[0] >> 62)
  {
    v92 = _CocoaArrayWrapper.endIndex.getter();
    v93 = &off_10006C000;
    if (v92)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v92 = *((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v93 = &off_10006C000;
    if (v92)
    {
LABEL_100:
      v94 = v90 & 0xC000000000000001;
      v133 = *(v93 + 369);
      v135 = v90;
      v136 = v90 & 0xC000000000000001;
      v138 = v92;
      v95 = 0;
      if ((v90 & 0xC000000000000001) != 0)
      {
LABEL_126:
        v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_107;
      }

      while (1)
      {
        if (v95 >= *(v91 + 16))
        {
          goto LABEL_130;
        }

        v96 = *(v90 + 8 * v95 + 32);
LABEL_107:
        v97 = v96;
        v98 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          goto LABEL_129;
        }

        if ([v96 v12[427]] == 1)
        {
        }

        else
        {
          v99 = [v97 userIdentity];
          v100 = [v99 lookupInfo];

          if (v100)
          {
            v101 = [v100 emailAddress];
            if (v101 || (v101 = [v100 phoneNumber]) != 0)
            {
              v110 = v101;
              v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v112 = v111;

              if (qword_100090D18 != -1)
              {
                swift_once();
              }

              v113 = type metadata accessor for Logger();
              sub_100020D2C(v113, qword_100092EB0);

              v114 = Logger.logObject.getter();
              v115 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v114, v115))
              {
                v116 = swift_slowAlloc();
                v139 = swift_slowAlloc();
                *v116 = v133;
                v117 = v91;
                v118 = sub_100033140(v131, v112, &v139);

                *(v116 + 4) = v118;
                v91 = v117;
                v90 = v135;
                *(v116 + 12) = 2082;
                *(v116 + 14) = sub_100033140(v127, v129, &v139);
                _os_log_impl(&_mh_execute_header, v114, v115, "Adding %{public}s to %{public}s", v116, 0x16u);
                swift_arrayDestroy();
                v6 = v129;

                v12 = &off_10008E000;
              }

              else
              {
              }

              [a1 addParticipant:v97];
              v130 = 1;
              v94 = v136;
              v92 = v138;
              if (v98 == v138)
              {
                break;
              }

              v95 = v98;
              if (v136)
              {
                goto LABEL_126;
              }

              continue;
            }
          }

          if (qword_100090D18 != -1)
          {
            swift_once();
          }

          v102 = type metadata accessor for Logger();
          sub_100020D2C(v102, qword_100092EB0);

          v103 = v97;
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            *v106 = v133;
            *(v106 + 4) = sub_100033140(v127, v6, &v139);
            *(v106 + 12) = 2082;
            sub_100021848(0, &qword_100091860, CKShareParticipant_ptr);
            v107 = String.init<A>(describing:)();
            v109 = sub_100033140(v107, v108, &v139);
            v90 = v135;

            *(v106 + 14) = v109;
            v6 = v129;
            _os_log_impl(&_mh_execute_header, v104, v105, "Failed to share %{public}s with %{public}s", v106, 0x16u);
            swift_arrayDestroy();
            v12 = &off_10008E000;
          }

          else
          {
          }

          v94 = v136;
          v92 = v138;
        }

        ++v95;
        if (v98 == v92)
        {
          break;
        }

        if (v94)
        {
          goto LABEL_126;
        }
      }
    }
  }

  return v130 & 1;
}

void sub_10004E500(void *a1, char a2, NSObject *a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    sub_100044F04(a1, a5, a3);
  }

  else
  {
    sub_100021848(0, &qword_1000917B0, CKRecord_ptr);
    sub_100021848(0, &unk_100091850, CKShare_ptr);
    v6 = a1;
    swift_dynamicCast();
    v7 = off_100091188[0]();
    v8 = v7;
    if (v7 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = 0;
      v11 = v8 & 0xC000000000000001;
      while (1)
      {
        if (v11)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v12 = *(v8 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if ([v12 role] != 1)
        {
          dispatch_group_enter(a3);
          v15 = v17;
          v11 = v8 & 0xC000000000000001;
          sub_100043ED8(v13, v17, 0xD000000000000030, 0x8000000100070180, a3);
        }

        ++v10;
        if (v14 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:

    dispatch_group_leave(a3);
  }
}

uint64_t sub_10004E714()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004E754()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E794()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004E7D4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004E81C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100029CC0;

  return sub_10003F7B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10004E8E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004E91C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002C9DC;

  return sub_100032E48(a1, v5);
}

uint64_t sub_10004E9D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100029CC0;

  return sub_100032E48(a1, v5);
}

uint64_t sub_10004EA8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004EAD4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004EBD8(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    result = type metadata accessor for DeviceActivityDataStore();
    if (v5 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      v6 = *(a1 + 96);
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        v10 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_10004ED48(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_100050690, v5);
}

uint64_t sub_10004EDDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100020818(qword_1000919E0, &unk_10006DFA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6, v9);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10, v13);
  v15 = &v34 - v14;
  v16 = v2 + *(*v2 + 184);
  v17 = DeviceActivityDataStore.localZones.getter();
  v18 = *(v17 + 16);
  if (v18)
  {
    v34 = v3;
    v35 = a1;
    v36 = a2;
    v39 = _swiftEmptyArrayStorage;
    v38 = v6;
    v19 = v17;
    specialized ContiguousArray.reserveCapacity(_:)();
    sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
    v20 = *(v7 + 80);
    v37 = v19;
    v21 = v19 + ((v20 + 32) & ~v20);
    v22 = *(v7 + 72);
    do
    {
      sub_1000506A4(v21, v15);
      sub_1000506A4(v15, v12);
      v23 = *v12;
      v24 = v12[1];
      v25 = *(v38 + 48);
      v26._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26._object = v27;
      v28._countAndFlagsBits = v23;
      v28._object = v24;
      CKRecordZoneID.init(zoneName:ownerName:)(v28, v26);
      sub_100028FF4(v15, qword_1000919E0, &unk_10006DFA0);
      v29 = type metadata accessor for _SegmentInterval();
      (*(*(v29 - 8) + 8))(v12 + v25, v29);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v30 = v39[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v21 += v22;
      --v18;
    }

    while (v18);

    v31 = v39;
    a1 = v35;
    a2 = v36;
    v3 = v34;
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  v32 = *(v3 + *(*v3 + 160));
  sub_100051970(v31, a1, a2);
}

id sub_10004F1E0()
{
  result = [objc_allocWithZone(MOEffectiveSettingsStore) init];
  qword_1000918D0 = result;
  return result;
}

void sub_10004F214()
{
  Notification.object.getter();
  if (v7)
  {
    if (swift_dynamicCast())
    {
      sub_10004F360(v4, v5);
      return;
    }
  }

  else
  {
    sub_100028FF4(v6, &qword_100091360, &unk_10006D960);
  }

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100020D2C(v0, qword_100092EB0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to get retry urgency from notification", v3, 2u);
  }
}

uint64_t sub_10004F360(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_10004FF30();

    return sub_10004EDDC(0, 0);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100020D2C(v19, qword_100092EB0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v27 = v13;
      *v22 = 134349056;
      *(v22 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v20, v21, "Scheduling a background activity to retry sharing in %{public}f seconds", v22, 0xCu);
      v13 = v27;
    }

    sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
    v23 = static OS_dispatch_queue.main.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = v3;
    *(v24 + 24) = a1;
    aBlock[4] = sub_1000504CC;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10004EB74;
    aBlock[3] = &unk_100087958;
    v25 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000504F0();
    sub_100020818(&qword_100091700, qword_10006E1F0);
    sub_100050548();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v7 + 8))(v11, v6);
    return (*(v13 + 8))(v17, v12);
  }
}

uint64_t sub_10004F71C()
{
  v0 = type metadata accessor for Notification();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10004F214();

  return (*(v1 + 8))(v5, v0);
}

char *sub_10004F808()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(&v0[*(*v0 + 152)]);
  v2 = *&v0[*(*v0 + 160)];

  sub_1000352D4(&v0[*(*v0 + 168)]);
  sub_1000208BC(&v0[*(*v0 + 176)]);
  v3 = *(*v0 + 184);
  v4 = type metadata accessor for DeviceActivityDataStore();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  sub_1000208BC(&v0[*(*v0 + 192)]);

  v5 = *&v0[*(*v0 + 208)];
  swift_unknownObjectRelease();

  v6 = *(v1 + 96);
  v7 = *(*(v6 - 8) + 8);
  v7(&v0[*(*v0 + 224)], v6);
  v7(&v0[*(*v0 + 232)], v6);
  v8 = *&v0[*(*v0 + 240) + 8];

  v9 = *&v0[*(*v0 + 248) + 8];

  v10 = *&v0[*(*v0 + 256) + 8];

  v11 = *&v0[*(*v0 + 264) + 8];

  v12 = *&v0[*(*v0 + 272) + 8];

  return v0;
}

uint64_t sub_10004FAB8()
{
  sub_10004F808();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10004FB30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

void sub_10004FB60(uint64_t a1, double a2)
{
  v4 = *a1;
  v5 = *a1;
  v6 = (a1 + *(*a1 + 176));
  v7 = v6[3];
  v8 = v6[4];
  sub_100020908(v6, v7);
  v14 = &type metadata for Double;
  *v13 = a2;
  (*(v8 + 40))(v13, *(a1 + *(*a1 + 264)), *(a1 + *(*a1 + 264) + 8), v7, v8);
  sub_100028FF4(v13, &qword_100091360, &unk_10006D960);
  v9 = *(a1 + *(*a1 + 200));
  [v9 setInterval:a2];
  [v9 setQualityOfService:25];
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v4[10];
  *(v11 + 24) = v4[11];
  *(v11 + 32) = *(v5 + 6);
  *(v11 + 48) = v4[14];
  *(v11 + 56) = *(v5 + 15);
  *(v11 + 72) = v4[17];
  *(v11 + 80) = v10;
  v15 = sub_10005061C;
  v16 = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10004ED48;
  v14 = &unk_1000879D0;
  v12 = _Block_copy(v13);

  [v9 scheduleWithBlock:v12];
  _Block_release(v12);
}

uint64_t sub_10004FDD4(uint64_t a1, uint64_t a2)
{
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100020D2C(v4, qword_100092EB0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Running background activity to retry sharing", v7, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10004FF30();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10004EDDC(a1, a2);
  }

  return result;
}

uint64_t sub_10004FF30()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100020D2C(v14, qword_100092EB0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Invalidating background sharing activity", v17, 2u);
  }

  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100050714;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_100087A20;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000504F0();
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_100050548();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v3 + 8))(v7, v2);
  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_100050264(uint64_t a1)
{
  [*(a1 + *(*a1 + 200)) invalidate];
  v2 = (a1 + *(*a1 + 176));
  v3 = v2[3];
  v4 = v2[4];
  sub_100020908(v2, v3);
  memset(v6, 0, sizeof(v6));
  (*(v4 + 40))(v6, *(a1 + *(*a1 + 264)), *(a1 + *(*a1 + 264) + 8), v3, v4);
  return sub_100028FF4(v6, &qword_100091360, &unk_10006D960);
}

void sub_10005033C(uint64_t a1, unint64_t a2)
{
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100020D2C(v4, qword_100092EB0);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100033140(a1, a2, &v9);
    _os_log_impl(&_mh_execute_header, oslog, v5, "Finished sharing %{public}s", v6, 0xCu);
    sub_1000208BC(v7);
  }
}

uint64_t sub_100050494()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000504D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000504F0()
{
  result = qword_1000916F8;
  if (!qword_1000916F8)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000916F8);
  }

  return result;
}

unint64_t sub_100050548()
{
  result = qword_100091708;
  if (!qword_100091708)
  {
    sub_100034A80(&qword_100091700, qword_10006E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091708);
  }

  return result;
}

uint64_t sub_1000505AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000505E4()
{
  v1 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10005061C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 80);
  v11 = *(v2 + 72);
  v10 = *(v2 + 56);
  return sub_10004FDD4(a1, a2);
}

uint64_t sub_100050658()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000506A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100020818(qword_1000919E0, &unk_10006DFA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005071C(void *a1, Swift::OpaquePointer a2)
{
  v4 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v131 = *(v4 - 8);
  v5 = *(v131 + 64);
  __chkstk_darwin(v4, v6);
  v8 = (&v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = sub_100020818(qword_1000919E0, &unk_10006DFA0);
  v124 = *(v126 - 8);
  v9 = *(v124 + 64);
  v11 = __chkstk_darwin(v126, v10);
  v123 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v16 = (&v110 - v15);
  __chkstk_darwin(v14, v17);
  v122 = &v110 - v18;
  v19 = a1[2];
  if (![swift_getObjCClassFromMetadata() isAuthorized])
  {
    if (qword_100090D18 == -1)
    {
LABEL_5:
      v27 = type metadata accessor for Logger();
      sub_100020D2C(v27, qword_100092EB0);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Not uploading local data because Device Activity is not authorized.", v30, 2u);
      }

      v31 = *(a2._rawValue + 2);

      return v31(a2._rawValue, 0);
    }

LABEL_61:
    swift_once();
    goto LABEL_5;
  }

  v130 = v4;
  v20 = *(a1 + *(*a1 + 216));
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100049BDC;
  *(v21 + 24) = a1;
  aBlock[4] = sub_1000514E0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003EE58;
  aBlock[3] = &unk_100087A70;
  v22 = _Block_copy(aBlock);

  dispatch_sync(v20, v22);
  _Block_release(v22);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v23 = *(*a1 + 184);
  v24 = 0;
  v25 = DeviceActivityDataStore.localZones.getter();
  v128 = v8;
  rawValue = a2._rawValue;
  v120 = *(v25 + 16);
  v121 = a1;
  if (v120)
  {
    v33 = 0;
    v118 = *(v126 + 48);
    v119 = v23;
    v115 = *(a1 + *(*a1 + 224));
    v117 = (v25 + ((*(v124 + 80) + 32) & ~*(v124 + 80)));
    v34 = &_swiftEmptyDictionarySingleton;
    v114 = enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:);
    *&v26 = 134349314;
    v112 = v26;
    v113 = xmmword_10006D8A0;
    v127 = v16;
    v116 = v25;
    while (v33 < *(v25 + 16))
    {
      v125 = v34;
      v35 = *(v124 + 72);
      isa = v33;
      v36 = v122;
      sub_1000506A4(v117 + v35 * v33, v122);
      v37 = *(v36 + 1);
      v38 = v126;
      v39 = *(v126 + 48);
      *v16 = *v36;
      v16[1] = v37;
      v40 = type metadata accessor for _SegmentInterval();
      v41 = *(v40 - 8);
      (*(v41 + 32))(v16 + v39, &v36[v118], v40);
      v42 = v16;
      v43 = v123;
      sub_1000506A4(v42, v123);
      v45 = *v43;
      v44 = v43[1];
      (*(v41 + 8))(v43 + *(v38 + 48), v40);
      a2._rawValue = a1[10];
      v46 = a1[11];
      sub_100020908(a1 + 7, a2._rawValue);
      if (((*(v46 + 8))(v45, v44, a2, v46) & 1) == 0)
      {
        v47 = objc_allocWithZone(CKRecordZone);
        v48 = String._bridgeToObjectiveC()();
        v49 = [v47 initWithZoneName:v48];

        [v49 setCapabilities:8];
        CKSyncEngine.state.getter();
        sub_100020818(&qword_100091668, &qword_10006DF78);
        v50 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
        v51 = *(v50 - 8);
        v52 = *(v51 + 72);
        v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        a2._rawValue = swift_allocObject();
        *(a2._rawValue + 1) = v113;
        *(a2._rawValue + v53) = v49;
        v54 = v50;
        a1 = v121;
        (*(v51 + 104))(a2._rawValue + v53, v114, v54);
        v55 = v49;
        CKSyncEngine.State.add(pendingDatabaseChanges:)(a2);
      }

      v16 = v127;
      v56 = DeviceActivityDataStore.localRecordNames(forZoneName:segmentInterval:)();
      v34 = v125;
      if (*(v56 + 16))
      {
        if (qword_100090D18 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_100020D2C(v57, qword_100092EB0);

        v58 = Logger.logObject.getter();
        a2._rawValue = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v58, a2._rawValue))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          aBlock[0] = v60;
          *v59 = v112;
          *(v59 + 4) = *(v56 + 16);

          *(v59 + 12) = 2082;
          *(v59 + 14) = sub_100033140(v45, v44, aBlock);
          _os_log_impl(&_mh_execute_header, v58, a2._rawValue, "Uploading %{public}ld records for %{public}s.", v59, 0x16u);
          sub_1000208BC(v60);
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v34;
        v63 = sub_100033790(v45, v44);
        v64 = v34[2];
        v65 = (v62 & 1) == 0;
        v66 = v64 + v65;
        if (__OFADD__(v64, v65))
        {
          goto LABEL_58;
        }

        a2._rawValue = v62;
        if (v34[3] >= v66)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100047370();
          }
        }

        else
        {
          sub_100046E24(v66, isUniquelyReferenced_nonNull_native);
          v67 = sub_100033790(v45, v44);
          if ((a2._rawValue & 1) != (v68 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v63 = v67;
        }

        v16 = v127;
        v34 = aBlock[0];
        if (a2._rawValue)
        {
          v69 = *(aBlock[0] + 56);
          v70 = aBlock[0];
          v71 = *(v69 + 8 * v63);
          *(v69 + 8 * v63) = v56;

          v34 = v70;
        }

        else
        {
          *(aBlock[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
          v72 = (v34[6] + 16 * v63);
          *v72 = v45;
          v72[1] = v44;
          *(v34[7] + 8 * v63) = v56;
          v73 = v34[2];
          v74 = __OFADD__(v73, 1);
          v75 = v73 + 1;
          if (v74)
          {
            goto LABEL_59;
          }

          v34[2] = v75;
        }

        sub_100028FF4(v16, qword_1000919E0, &unk_10006DFA0);
        a1 = v121;
      }

      else
      {
        sub_100028FF4(v16, qword_1000919E0, &unk_10006DFA0);
      }

      v25 = v116;
      v33 = (isa + 1);
      if (v120 == isa + 1)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_57;
  }

  v34 = &_swiftEmptyDictionarySingleton;
LABEL_35:

  a2._rawValue = v34;
  v76 = *(a1 + *(*a1 + 224));
  CKSyncEngine.state.getter();
  v77 = CKSyncEngine.State.pendingRecordZoneChanges.getter();

  CKSyncEngine.state.getter();
  CKSyncEngine.State.remove(pendingRecordZoneChanges:)(v77);

  if (*(a2._rawValue + 2))
  {
    v116 = CKSyncEngine.state.getter();
    v78 = a2._rawValue + 64;
    v79 = 1 << *(a2._rawValue + 32);
    v80 = -1;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    v81 = v80 & *(a2._rawValue + 8);
    v82 = (v79 + 63) >> 6;
    v117 = CKCurrentUserDefaultName;
    LODWORD(v127) = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
    v83 = (v131 + 104);
    v126 = v131 + 32;

    v84 = 0;
    v85 = _swiftEmptyArrayStorage;
    v118 = v82;
    v119 = a2._rawValue + 64;
    v125 = a2._rawValue;
    while (v81)
    {
LABEL_45:
      v123 = v81;
      v124 = v24;
      v87 = __clz(__rbit64(v81)) | (v84 << 6);
      v88 = (*(a2._rawValue + 6) + 16 * v87);
      v89 = *v88;
      v90 = v88[1];
      v91 = *(*(a2._rawValue + 7) + 8 * v87);
      sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
      v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v94 = v93;
      swift_bridgeObjectRetain_n();

      v95._countAndFlagsBits = v89;
      v120 = v90;
      v95._object = v90;
      v96._countAndFlagsBits = v92;
      v96._object = v94;
      isa = CKRecordZoneID.init(zoneName:ownerName:)(v95, v96).super.isa;
      v97 = *(v91 + 16);
      v122 = v91;
      if (v97)
      {
        sub_100021848(0, &qword_100091770, CKRecordID_ptr);
        v98 = (v91 + 40);
        v99 = v128;
        v100 = v130;
        do
        {
          v101 = *(v98 - 1);
          v102 = *v98;

          v103 = isa;
          v104._countAndFlagsBits = v101;
          v104._object = v102;
          v105 = CKRecordID.init(recordName:zoneID:)(v104, v103).super.isa;
          *v99 = v105;
          (*v83)(v99, v127, v100);
          v106 = v105;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_1000466EC(0, v85[2] + 1, 1, v85);
          }

          v108 = v85[2];
          v107 = v85[3];
          if (v108 >= v107 >> 1)
          {
            v85 = sub_1000466EC(v107 > 1, v108 + 1, 1, v85);
          }

          v85[2] = v108 + 1;
          v100 = v130;
          v109 = v85 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v108;
          v99 = v128;
          (*(v131 + 32))(v109, v128, v130);
          v98 += 2;
          --v97;
        }

        while (v97);
      }

      v81 = (v123 - 1) & v123;

      v24 = v124;
      a2._rawValue = v125;
      v82 = v118;
      v78 = v119;
    }

    while (1)
    {
      v86 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        break;
      }

      if (v86 >= v82)
      {

        CKSyncEngine.State.add(pendingRecordZoneChanges:)(v85);

        goto LABEL_55;
      }

      v81 = *&v78[8 * v86];
      ++v84;
      if (v81)
      {
        v84 = v86;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  sub_10003EE80();
LABEL_55:
  rawValue[2](rawValue, 0);
}

uint64_t initializeBufferWithCopyOfBuffer for RetryUrgency(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RetryUrgency(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RetryUrgency(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100051550(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100051570(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1000515B8(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000516A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100020818(&qword_100091830, &qword_10006E070);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100020860(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100034094(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100034094(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100034094(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100034094(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100051970(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v53 = a2;
  v5 = *v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  __chkstk_darwin(v12, v14);
  v55 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = dispatch_group_create();
  v17 = *(*v3 + 216);
  v67 = v3;
  v18 = *(v3 + v17 + 24);
  v19 = *(v3 + v17 + 32);
  sub_100020908((v3 + v17), v18);
  v20 = (*(v19 + 8))(v18, v19);
  v59 = v7;
  v60 = v6;
  v57 = v11;
  v58 = v12;
  if (!v20 || (v21 = *(v20 + 16), result = , !v21))
  {
    if (a1 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (!v27)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_22;
      }
    }

    v66 = sub_100021848(0, &qword_100091770, CKRecordID_ptr);
    v28 = v5[18];
    v29 = v5[10];
    v65 = v5[11];
    result = swift_getAssociatedConformanceWitness();
    if (v27 >= 1)
    {
      v30 = 0;
      v63 = *(result + 56);
      v64 = result;
      v62 = CKRecordNameZoneWideShare;
      v61 = *(*v67 + 208);
      v31 = a1 & 0xC000000000000001;
      v32 = a1;
      do
      {
        if (v31)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v33 = *(a1 + 8 * v30 + 32);
        }

        v34 = v33;
        ++v30;
        dispatch_group_enter(v16);
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
        v38 = v34;
        v39._countAndFlagsBits = v35;
        v39._object = v37;
        isa = CKRecordID.init(recordName:zoneID:)(v39, v38).super.isa;
        v41 = swift_allocObject();
        *(v41 + 16) = v38;
        *(v41 + 24) = v16;
        v42 = v38;
        v43 = v16;
        v63(isa, sub_10004EACC, v41, v65, v64);

        a1 = v32;
      }

      while (v27 != v30);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (!(a1 >> 62))
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_5;
    }

LABEL_22:
    v44 = *(v67 + *(*v67 + 240));
    v45 = swift_allocObject();
    v46 = v53;
    v47 = v54;
    *(v45 + 16) = v53;
    *(v45 + 24) = v47;
    aBlock[4] = sub_10004EB14;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10004EB74;
    aBlock[3] = &unk_100087F28;
    v48 = _Block_copy(aBlock);
    sub_100029DB4(v46);
    v49 = v55;
    static DispatchQoS.unspecified.getter();
    v68 = _swiftEmptyArrayStorage;
    sub_1000504F0();
    sub_100020818(&qword_100091700, qword_10006E1F0);
    sub_100050548();
    v50 = v57;
    v51 = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v48);

    (*(v59 + 8))(v50, v51);
    (*(v56 + 8))(v49, v58);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v23 = result;
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_5:
  if (v23 >= 1)
  {
    v24 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(a1 + 8 * v24 + 32);
      }

      v26 = v25;
      ++v24;
      dispatch_group_enter(v16);
      sub_100051EF0(v26, v16);
    }

    while (v23 != v24);
    goto LABEL_22;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_100051EF0(void *a1, NSObject *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 120);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1, a2);
  v10 = &v21 - v9;
  v12 = (v2 + *(v11 + 216));
  v13 = v12[3];
  v14 = v12[4];
  sub_100020908(v12, v13);
  v15 = (*(v14 + 8))(v13, v14);
  if (v15)
  {
    if (*(v15 + 16))
    {
      v16 = v15;
      (*(*(v5 + 176) + 48))(a1, v6, *(v5 + 176));
      sub_1000532A8(v16, v10, a2);

      (*(v7 + 8))(v10, v6);
      return;
    }
  }

  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100020D2C(v17, qword_100092EB0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "No Apple IDs to share with", v20, 2u);
  }

  dispatch_group_leave(a2);
}

id sub_10005218C()
{
  sub_100021848(0, &qword_100091660, CKRecordZoneID_ptr);
  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0._object = v1;
  v2._countAndFlagsBits = 0x6163696669726556;
  v2._object = 0xEC0000006E6F6974;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v2, v0).super.isa;
  v4 = [objc_allocWithZone(CKRecordZone) initWithZoneID:isa];

  result = [v4 setCapabilities:8];
  qword_100092F08 = v4;
  return result;
}

NSString sub_100052240()
{
  result = String._bridgeToObjectiveC()();
  qword_100092F10 = result;
  return result;
}

uint64_t sub_10005227C(uint64_t a1, void *a2)
{
  v3 = v2;
  v126 = *v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v122 = *(v11 - 8);
  v12 = *(v122 + 64);
  __chkstk_darwin(v11, v13);
  v121 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100020818(&qword_100091720, &qword_10006DFB0);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v20 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v21);
  v23 = &v106 - v22;
  v24 = type metadata accessor for URL();
  v124 = *(v24 - 8);
  v125 = v24;
  v25 = *(v124 + 64);
  __chkstk_darwin(v24, v26);
  v123 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [a2 context];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = v29;
    v116 = v10;
    v117 = v11;
    v118 = v6;
    v119 = v5;
    v31 = [v29 schemaIdentifier];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (v32 == 0xD000000000000030 && 0x8000000100070180 == v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v120 = a2;

      v35 = [v30 dictionary];
      v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v36 + 16))
      {
        v37 = sub_100033790(0x6974617469766E69, 0xEE00617461446E6FLL);
        if (v38)
        {
          sub_100020860(*(v36 + 56) + 32 * v37, aBlock);

          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_28:
            v60 = v120;
            if (qword_100090D18 != -1)
            {
              swift_once();
            }

            v61 = type metadata accessor for Logger();
            sub_100020D2C(v61, qword_100092EB0);
            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              *v64 = 0;
              _os_log_impl(&_mh_execute_header, v62, v63, "Failed to extract share metadata from invitation. Declining the invitation.", v64, 2u);
            }

            sub_100058508(v60);
            return swift_unknownObjectRelease();
          }

          v114 = aBlock[6];
          v115 = aBlock[7];
          v39 = [v30 dictionary];
          v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v40 + 16))
          {
            v41 = sub_100033790(0xD000000000000018, 0x8000000100070200);
            if (v42)
            {
              sub_100020860(*(v40 + 56) + 32 * v41, aBlock);

              if (swift_dynamicCast())
              {
                URL.init(string:)();

                v44 = v124;
                v43 = v125;
                v45 = *(v124 + 48);
                if (v45(v23, 1, v125) != 1)
                {
                  v71 = v123;
                  (*(v44 + 32))(v123, v23, v43);
                  v111 = *(v44 + 16);
                  v110 = v44 + 16;
                  v111(v20, v71, v43);
                  (*(v44 + 56))(v20, 0, 1, v43);
                  sub_100020CD8(v114, v115);
                  v72.super.isa = Data._bridgeToObjectiveC()().super.isa;
                  v73 = v45(v20, 1, v43);
                  v113 = v28;
                  if (v73 == 1)
                  {
                    v74 = 0;
                  }

                  else
                  {
                    URL._bridgeToObjectiveC()(&v128);
                    v74 = v75;
                    (*(v44 + 8))(v20, v43);
                  }

                  v107 = [objc_allocWithZone(CKDeviceToDeviceShareInvitationToken) initWithSharingInvitationData:v72.super.isa shareURL:v74];

                  sub_100020D78(v114, v115);
                  v109 = v126[16];
                  v112 = swift_allocBox();
                  v108 = v76;
                  sub_100020818(&qword_100091730, &qword_10006DFB8);
                  v77 = *(v44 + 72);
                  v78 = (*(v44 + 80) + 32) & ~*(v44 + 80);
                  v79 = swift_allocObject();
                  v106 = xmmword_10006D8A0;
                  *(v79 + 16) = xmmword_10006D8A0;
                  v80 = v123;
                  v81 = v111;
                  v111((v79 + v78), v123, v43);
                  sub_100020818(&qword_100091738, &qword_10006DFC0);
                  v82 = v43;
                  v83 = (sub_100020818(&unk_100091740, &unk_10006DFC8) - 8);
                  v84 = *(*v83 + 72);
                  v85 = (*(*v83 + 80) + 32) & ~*(*v83 + 80);
                  v86 = swift_allocObject();
                  *(v86 + 16) = v106;
                  v87 = v86 + v85;
                  v88 = v83[14];
                  v89 = v80;
                  v81(v87, v80, v82);
                  v90 = v107;
                  *(v87 + v88) = v107;
                  v91 = v90;
                  v92 = sub_100049960(v86);
                  swift_setDeallocating();
                  sub_100028FF4(v87, &unk_100091740, &unk_10006DFC8);
                  swift_deallocClassInstance();
                  v93 = v126[23];
                  v94 = v109;
                  (*(v93 + 16))(v79, v92, v109, v93);
                  (*(*(v93 + 8) + 16))(25, v94);
                  v95 = swift_allocObject();
                  v96 = v120;
                  *(v95 + 16) = v3;
                  *(v95 + 24) = v96;
                  v97 = *(v93 + 32);

                  v98 = v96;
                  v97(sub_100059AE4, v95, v94, v93);
                  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
                  v99 = static OS_dispatch_queue.main.getter();
                  v100 = swift_allocObject();
                  v101 = v112;
                  *(v100 + 16) = v3;
                  *(v100 + 24) = v101;
                  aBlock[4] = sub_100059AF4;
                  aBlock[5] = v100;
                  aBlock[0] = _NSConcreteStackBlock;
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_10004EB74;
                  aBlock[3] = &unk_100087D20;
                  v102 = _Block_copy(aBlock);

                  v103 = v121;
                  static DispatchQoS.unspecified.getter();
                  aBlock[0] = _swiftEmptyArrayStorage;
                  sub_1000504F0();
                  sub_100020818(&qword_100091700, qword_10006E1F0);
                  sub_100050548();
                  v104 = v116;
                  v105 = v119;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  OS_dispatch_queue.async(group:qos:flags:execute:)();
                  _Block_release(v102);

                  swift_unknownObjectRelease();
                  sub_100020D78(v114, v115);
                  (*(v118 + 8))(v104, v105);
                  (*(v122 + 8))(v103, v117);
                  (*(v124 + 8))(v89, v125);
                }

                sub_100020D78(v114, v115);
                sub_100028FF4(v23, &qword_100091720, &qword_10006DFB0);
              }

              else
              {
                sub_100020D78(v114, v115);
              }

              goto LABEL_28;
            }
          }

          sub_100020D78(v114, v115);
        }
      }

      goto LABEL_28;
    }

    if (v32 == 0xD000000000000037 && 0x80000001000701C0 == v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v51 = *(*v3 + 208);
      if (qword_100090D50 != -1)
      {
        swift_once();
      }

      v52 = qword_100092F08;
      v53 = swift_allocObject();
      *(v53 + 16) = v3;
      *(v53 + 24) = a2;
      v54 = v126[18];
      v55 = v126[10];
      v56 = v126[11];
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v58 = *(AssociatedConformanceWitness + 48);

      v59 = a2;
      v58(v52, sub_100059ADC, v53, v56, AssociatedConformanceWitness);
    }

    else
    {
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_100020D2C(v65, qword_100092EB0);

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        aBlock[0] = v69;
        *v68 = 136446210;
        v70 = sub_100033140(v32, v34, aBlock);

        *(v68 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v66, v67, "Received invitation using unknown schema: %{public}s", v68, 0xCu);
        sub_1000208BC(v69);
      }

      else
      {
      }

      sub_100058508(a2);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100020D2C(v46, qword_100092EB0);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to extract context from invitation. Declining the invitation.", v49, 2u);
    }

    return sub_100058508(a2);
  }
}

uint64_t *sub_1000530FC()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 200));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 208));
  sub_1000208BC((v0 + *(*v0 + 216)));
  sub_1000208BC((v0 + *(*v0 + 224)));

  return v0;
}

uint64_t sub_100053238()
{
  sub_1000530FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000532A8(uint64_t a1, uint64_t a2, void *a3)
{
  v79 = a3;
  v88 = a2;
  v5 = *v3;
  v6 = *v3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = *(v85 + 64);
  __chkstk_darwin(v7, v9);
  v83 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v82 = *(v84 - 8);
  v11 = *(v82 + 64);
  v13 = __chkstk_darwin(v84, v12);
  v80 = v3;
  v81 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v5[15];
  v15 = *(v78 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v13, v17);
  v89 = &v63 - v18;
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100020D2C(v19, qword_100092EB0);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136446210;
    v24 = Set.description.getter();
    v26 = sub_100033140(v24, v25, aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "Fetching share participants with Apple IDs: %{public}s", v22, 0xCu);
    sub_1000208BC(v23);
  }

  v27 = sub_10003F534(a1);
  v28 = v6[12];
  v77 = swift_allocBox();
  v29 = v6[19];
  v30 = *(v29 + 32);
  v87 = v31;
  v30(v27, v28, v29);
  (*(*(v29 + 8) + 16))(25, v28);
  v75 = *(v15 + 16);
  v32 = v78;
  v75(v89, v88, v78);
  v33 = *(v15 + 80);
  v76 = (v33 + 144) & ~v33;
  v34 = v16 + v76;
  v65 = (v33 + 136) & ~v33;
  v35 = swift_allocObject();
  v36 = v6[10];
  *(v35 + 2) = v36;
  v37 = v6[11];
  *(v35 + 3) = v37;
  *(v35 + 4) = v28;
  v38 = v6[13];
  *(v35 + 5) = v38;
  v74 = v6[14];
  *(v35 + 6) = v74;
  *(v35 + 7) = v32;
  v39 = v6[16];
  *(v35 + 8) = v39;
  v40 = v6[17];
  *(v35 + 9) = v40;
  v41 = v6[18];
  *(v35 + 10) = v41;
  *(v35 + 11) = v29;
  v71 = (v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  *&v42 = v36;
  *(&v42 + 1) = v37;
  v73 = v42;
  *&v42 = v28;
  *(&v42 + 1) = v38;
  v70 = v42;
  *&v42 = v39;
  *(&v42 + 1) = v40;
  v72 = v42;
  *&v42 = v41;
  *(&v42 + 1) = v29;
  v69 = v42;
  v68 = v6[20];
  *(v35 + 12) = v68;
  v67 = v6[21];
  *(v35 + 13) = v67;
  v43 = v6[22];
  *(v35 + 14) = v43;
  v64 = v6[23];
  *(v35 + 15) = v64;
  v66 = v6[24];
  *(v35 + 16) = v66;
  v44 = *(v15 + 32);
  v45 = v89;
  v44(&v35[v65], v89, v32);
  (*(v29 + 48))(sub_100059B7C, v35, v28, v29);
  v75(v45, v88, v32);
  v46 = v71;
  v47 = swift_allocObject();
  v48 = v70;
  *(v47 + 16) = v73;
  *(v47 + 32) = v48;
  *(v47 + 48) = v74;
  *(v47 + 56) = v32;
  v49 = v69;
  *(v47 + 64) = v72;
  *(v47 + 80) = v49;
  *&v50 = v68;
  *(&v50 + 1) = v67;
  *&v49 = v43;
  *(&v49 + 1) = v64;
  *(v47 + 96) = v50;
  *(v47 + 112) = v49;
  v51 = v80;
  *(v47 + 128) = v66;
  *(v47 + 136) = v51;
  v44((v47 + v76), v89, v32);
  v52 = v79;
  *(v47 + v46) = v79;
  v53 = *(v29 + 72);

  v54 = v52;
  v53(sub_100059CD0, v47, v28, v29);
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v55 = static OS_dispatch_queue.main.getter();
  v56 = swift_allocObject();
  v57 = v77;
  *(v56 + 16) = v51;
  *(v56 + 24) = v57;
  aBlock[4] = sub_100059D40;
  aBlock[5] = v56;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_100087DC0;
  v58 = _Block_copy(aBlock);

  v59 = v81;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000504F0();
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_100050548();
  v60 = v83;
  v61 = v86;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v58);

  (*(v85 + 8))(v60, v61);
  (*(v82 + 8))(v59, v84);
}

void sub_100053A80(int a1, uint64_t a2, id a3, NSObject *a4)
{
  v6 = [a3 zoneName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!a2)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100020D2C(v18, qword_100092EB0);

    v11 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136446210;
      v22 = sub_100033140(v7, v9, &v23);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v11, v19, "Successfully stopped sharing %{public}s)", v20, 0xCu);
      sub_1000208BC(v21);
    }

    else
    {
    }

    goto LABEL_12;
  }

  swift_errorRetain();
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100020D2C(v10, qword_100092EB0);
  swift_errorRetain();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = sub_100033140(v7, v9, &v23);

    *(v13 + 4) = v14;
    *(v13 + 12) = 2082;
    swift_errorRetain();
    sub_100020818(&qword_100091370, &qword_10006D390);
    v15 = String.init<A>(describing:)();
    v17 = sub_100033140(v15, v16, &v23);

    *(v13 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to stop sharing %{public}s: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

LABEL_12:

    goto LABEL_13;
  }

LABEL_13:
  dispatch_group_leave(a4);
}

void sub_100053DD0(void (*a1)(uint64_t))
{
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100020D2C(v2, qword_100092EB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished resetting sharing permissions.", v5, 2u);
  }

  if (a1)
  {
    a1(1);
  }
}

void sub_100053ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(AssociatedTypeWitness, v20);
  v22 = &v38 - v21;
  sub_100034A80(&qword_100091370, &qword_10006D390);
  v23 = type metadata accessor for Result();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23, v25);
  v27 = (&v38 - v26);
  (*(v28 + 16))(&v38 - v26, a2, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v27;
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100020D2C(v30, qword_100092EB0);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v29;
      v39 = v34;
      *v33 = 136446210;
      swift_errorRetain();
      v35 = String.init<A>(describing:)();
      v37 = sub_100033140(v35, v36, &v39);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to fetch participant: %{public}s", v33, 0xCu);
      sub_1000208BC(v34);
    }

    else
    {
    }
  }

  else
  {
    (*(v18 + 32))(v22, v27, AssociatedTypeWitness);
    (*(a16 + 56))(v22, a9, a16);
    (*(v18 + 8))(v22, AssociatedTypeWitness);
  }
}

void sub_100054210(uint64_t a1, char a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  if (a2)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100020D2C(v7, qword_100092EB0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_100049BC8(a1, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v12 = String.init<A>(describing:)();
      v14 = sub_100033140(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to fetch participants: %{public}s", v10, 0xCu);
      sub_1000208BC(v11);
    }

    v15 = [objc_opt_self() defaultCenter];
    if (qword_100090D58 != -1)
    {
      swift_once();
    }

    v16 = 0x40AC200000000000;
    v17 = 0;
    [v15 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    dispatch_group_leave(a5);
  }

  else
  {
    sub_100054458(a4, a5);
  }
}

uint64_t sub_100054458(uint64_t a1, void *a2)
{
  v3 = v2;
  v57 = a2;
  v55 = *v2;
  v5 = v55;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v60 - 8);
  v6 = *(v63 + 64);
  __chkstk_darwin(v60, v7);
  v59 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = *(v61 + 64);
  v12 = __chkstk_darwin(v9, v11);
  v58 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v5[15];
  v50 = *(v14 - 8);
  v15 = v50;
  v54 = *(v50 + 64);
  __chkstk_darwin(v12, v16);
  v18 = &v49 - v17;
  v19 = v5[13];
  v56 = swift_allocBox();
  v20 = v5[20];
  v21 = *(v20 + 32);
  v53 = v22;
  v21(v19, v20);
  v23 = *(*(v20 + 8) + 16);
  v52 = v19;
  v23(25, v19);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = sub_100059A68(AssociatedTypeWitness, AssociatedTypeWitness);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = *(*(AssociatedTypeWitness - 8) + 72);
  v29 = *(*(AssociatedTypeWitness - 8) + 80);
  swift_allocObject();
  v49 = static Array._adoptStorage(_:count:)();
  v30 = *(v15 + 16);
  v30(v18, a1, v14);
  v31 = v18;
  v51 = v18;
  swift_dynamicCast();
  type metadata accessor for Array();
  v32 = v52;
  (*(v20 + 72))(v49, v52, v20);
  v30(v31, a1, v14);
  v33 = v50;
  v34 = (*(v50 + 80) + 152) & ~*(v50 + 80);
  v35 = swift_allocObject();
  v36 = v55;
  *(v35 + 16) = *(v55 + 80);
  *(v35 + 32) = v5[12];
  *(v35 + 40) = v32;
  *(v35 + 48) = v5[14];
  *(v35 + 56) = v14;
  *(v35 + 64) = v5[16];
  *(v35 + 72) = *(v36 + 136);
  *(v35 + 88) = v5[19];
  *(v35 + 96) = v20;
  *(v35 + 104) = v5[21];
  *(v35 + 112) = *(v36 + 176);
  v37 = v5[24];
  v38 = v57;
  *(v35 + 128) = v37;
  *(v35 + 136) = v38;
  *(v35 + 144) = v3;
  (*(v33 + 32))(v35 + v34, v51, v14);
  v39 = *(v20 + 48);
  v40 = v38;

  v39(sub_100059E0C, v35, v32, v20);
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v41 = static OS_dispatch_queue.main.getter();
  v42 = swift_allocObject();
  v43 = v56;
  *(v42 + 16) = v3;
  *(v42 + 24) = v43;
  aBlock[4] = sub_100059E48;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_100087E38;
  v44 = _Block_copy(aBlock);

  v45 = v58;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000504F0();
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_100050548();
  v47 = v59;
  v46 = v60;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);

  (*(v63 + 8))(v47, v46);
  (*(v61 + 8))(v45, v62);
}

uint64_t sub_100054ABC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 96);
  v3 = swift_projectBox();
  v4 = v1[25];
  swift_beginAccess();
  v7[3] = v2;
  v7[4] = *(v1[19] + 8);
  v5 = sub_1000283C4(v7);
  (*(*(v2 - 8) + 16))(v5, v3, v2);
  (*(v1[18] + 72))(v7, v1[10]);
  return sub_1000208BC(v7);
}

uint64_t sub_100054BE0(uint64_t a1, void (**a2)(char *, uint64_t *, uint64_t), NSObject *a3, void *a4, void (*a5)(char *, char *, uint64_t))
{
  v77 = a3;
  v82 = a2;
  v6 = *a4;
  v7 = *a4;
  v80 = a5;
  AssociatedConformanceWitness = v7;
  v8 = v6[15];
  v73 = type metadata accessor for Optional();
  v67 = *(v73 - 8);
  v9 = *(v67 + 64);
  __chkstk_darwin(v73, v10);
  v72 = &v61 - v11;
  v12 = v6[19];
  v78 = v6[12];
  v79 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness, v16);
  v75 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v18;
  v20 = __chkstk_darwin(v17, v19);
  v74 = &v61 - v21;
  v76 = v8;
  v66 = *(v8 - 8);
  v22 = *(v66 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v61 - v24;
  v26 = v6[20];
  v27 = v6[13];
  v28 = swift_getAssociatedTypeWitness();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32 = __chkstk_darwin(v28, v31);
  v34 = &v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v35);
  v37 = &v61 - v36;
  sub_100034A80(&qword_100091370, &qword_10006D390);
  v38 = type metadata accessor for Result();
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38, v40);
  v42 = (&v61 - v41);
  (*(v43 + 16))(&v61 - v41, v82, v38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100056924(*v42, v80, v77);
  }

  v71 = a4;
  (*(v29 + 32))(v37, v42, v28);
  v63 = v29;
  v45 = *(v29 + 16);
  v62 = v37;
  v45(v34, v37, v28);
  v64 = v28;
  v46 = v76;
  swift_dynamicCast();
  v47 = (*(*(AssociatedConformanceWitness + 176) + 32))(v46);
  v48 = Array.endIndex.getter();
  v50 = v74;
  v49 = v75;
  if (v48)
  {
    v51 = 0;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v79 = *(AssociatedConformanceWitness + 48);
    v80 = (AssociatedConformanceWitness + 48);
    v82 = (v14 + 16);
    v78 = (v14 + 32);
    v69 = (v66 + 56);
    v70 = (v66 + 16);
    v67 += 8;
    v68 = "cCoordinator.ShareDispatcher";
    v52 = (v14 + 8);
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v14 + 16))(v50, v47 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v51, AssociatedTypeWitness);
        v54 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v65 != 8)
        {
          __break(1u);
          return result;
        }

        v83 = result;
        (*v82)(v50, &v83, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v54 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      (*v78)(v49, v50, AssociatedTypeWitness);
      if (v79(AssociatedTypeWitness, AssociatedConformanceWitness) != 1)
      {
        v55 = v77;
        dispatch_group_enter(v77);
        v56 = v14;
        v57 = v72;
        v58 = v76;
        (*v70)(v72, v25, v76);
        v59 = v58;
        v49 = v75;
        (*v69)(v57, 0, 1, v59);
        sub_100055324(v49, v57, 0xD000000000000030, v68 | 0x8000000000000000, v55);
        v60 = v57;
        v14 = v56;
        v50 = v74;
        (*v67)(v60, v73);
      }

      (*v52)(v49, AssociatedTypeWitness);
      ++v51;
    }

    while (v54 != Array.endIndex.getter());
  }

  dispatch_group_leave(v77);
  (*(v63 + 8))(v62, v64);
  return (*(v66 + 8))(v25, v76);
}

void sub_100055324(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, NSObject *a5)
{
  v175 = a5;
  v184 = a3;
  v165 = a2;
  v161 = *v5;
  v8 = v161;
  v9 = sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v163 = &v160 - v12;
  v166 = *(v161 + 120);
  v169 = type metadata accessor for Optional();
  v164 = *(v169 - 8);
  v13 = *(v164 + 64);
  __chkstk_darwin(v169, v14);
  v170 = &v160 - v15;
  v16 = sub_100020818(&qword_100091720, &qword_10006DFB0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v160 = &v160 - v19;
  v20 = *(v8 + 152);
  v162 = v5;
  v21 = *(v8 + 96);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v174 = *(AssociatedTypeWitness - 1);
  v22 = *(v174 + 64);
  __chkstk_darwin(AssociatedTypeWitness, v23);
  v173 = &v160 - v24;
  v25 = swift_checkMetadataState();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v29 = __chkstk_darwin(v25, v28);
  v168 = &v160 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29, v31);
  v167 = &v160 - v33;
  v35 = __chkstk_darwin(v32, v34);
  v171 = &v160 - v36;
  v38 = __chkstk_darwin(v35, v37);
  v176 = &v160 - v39;
  __chkstk_darwin(v38, v40);
  v42 = &v160 - v41;
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  v44 = sub_100020D2C(v43, qword_100092EB0);
  v45 = v26[2];
  v45(v42, a1, v25);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  v48 = os_log_type_enabled(v46, v47);
  v179 = v45;
  v177 = a1;
  v181 = v26;
  v180 = v26 + 2;
  v172 = v44;
  if (v48)
  {
    v49 = v25;
    v50 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    *v50 = 136446466;
    *(v50 + 4) = sub_100033140(v184, a4, &v185);
    *(v50 + 12) = 2082;
    v45(v176, v42, v49);
    v51 = String.init<A>(describing:)();
    v52 = a4;
    v54 = v53;
    v178 = v26[1];
    v178(v42, v49);
    v55 = sub_100033140(v51, v54, &v185);
    a4 = v52;

    *(v50 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "Sending %{public}s to participant: %{public}s", v50, 0x16u);
    swift_arrayDestroy();

    v25 = v49;
    a1 = v177;
  }

  else
  {

    v178 = v26[1];
    v178(v42, v25);
  }

  v56 = v173;
  (*(AssociatedConformanceWitness + 32))(v25, AssociatedConformanceWitness);
  v57 = AssociatedTypeWitness;
  v58 = swift_getAssociatedConformanceWitness();
  v59 = (*(v58 + 8))(v57, v58);
  (*(v174 + 8))(v56, v57);
  AssociatedTypeWitness = v59;
  if (!v59)
  {
    goto LABEL_33;
  }

  v60 = [AssociatedTypeWitness emailAddress];
  if (v60)
  {
    v61 = v171;
    goto LABEL_10;
  }

  v60 = [AssociatedTypeWitness phoneNumber];
  v61 = v171;
  if (!v60)
  {

LABEL_33:
    v118 = v168;
    v119 = v179;
    v179(v168, a1, v25);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v185 = v123;
      *v122 = 136446210;
      v124 = v118;
      v119(v176, v118, v25);
      v125 = String.init<A>(describing:)();
      v126 = v25;
      v127 = v125;
      v129 = v128;
      v178(v124, v126);
      v130 = sub_100033140(v127, v129, &v185);

      *(v122 + 4) = v130;
      _os_log_impl(&_mh_execute_header, v120, v121, "Failed to create invitation for: %{public}s", v122, 0xCu);
      sub_1000208BC(v123);
    }

    else
    {

      v178(v118, v25);
    }

    v131 = [objc_opt_self() defaultCenter];
    if (qword_100090D58 != -1)
    {
      swift_once();
    }

    v185 = 0x40AC200000000000;
    v186 = 0;
    [v131 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    dispatch_group_leave(v175);
    return;
  }

LABEL_10:
  v62 = v60;
  v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v174 = v63;

  v64 = v179;
  v179(v61, a1, v25);

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    *v67 = 136446466;
    *(v67 + 4) = sub_100033140(v184, a4, &v185);
    *(v67 + 12) = 2082;
    v64(v176, v61, v25);
    v68 = String.init<A>(describing:)();
    v69 = a4;
    v71 = v70;
    v178(v61, v25);
    v72 = sub_100033140(v68, v71, &v185);
    a4 = v69;

    *(v67 + 14) = v72;
    _os_log_impl(&_mh_execute_header, v65, v66, "Sending %{public}s to participant: %{public}s", v67, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v178(v61, v25);
  }

  v73 = v170;
  v74 = v169;
  v171 = String._bridgeToObjectiveC()();
  if (v184 == 0xD000000000000030 && 0x8000000100070180 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v75 = (*(AssociatedConformanceWitness + 40))(v25);
    if (v75)
    {
      v76 = v75;
      v77 = [v75 sharingInvitationData];

      v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81 = v164;
      (*(v164 + 16))(v73, v165, v74);
      v82 = v166;
      v83 = *(v166 - 8);
      if ((*(v83 + 48))(v73, 1, v166) == 1)
      {

        sub_100020D78(v78, v80);
        (*(v81 + 8))(v73, v74);
      }

      else
      {
        AssociatedConformanceWitness = a4;
        v100 = v160;
        v101 = v82;
        (*(*(v161 + 176) + 40))(v82);
        v102 = v100;
        (*(v83 + 8))(v73, v101);
        v103 = type metadata accessor for URL();
        v104 = *(v103 - 8);
        if ((*(v104 + 48))(v102, 1, v103) != 1)
        {
          v132 = v80;
          v133 = v102;
          v134 = URL.absoluteString.getter();
          v136 = v135;
          (*(v104 + 8))(v133, v103);
          sub_100020818(&qword_100091868, &qword_10006E088);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10006D890;
          strcpy((inited + 32), "invitationData");
          *(inited + 47) = -18;
          *(inited + 48) = v78;
          v170 = v132;
          *(inited + 56) = v132;
          *(inited + 72) = &type metadata for Data;
          *(inited + 80) = 0xD000000000000018;
          *(inited + 120) = &type metadata for String;
          *(inited + 88) = 0x8000000100070200;
          *(inited + 96) = v134;
          *(inited + 104) = v136;
          sub_100020CD8(v78, v132);
          v138 = sub_10004C660(inited);
          swift_setDeallocating();
          sub_100020818(&qword_100091828, &qword_10006E068);
          swift_arrayDestroy();
          sub_1000516A8(v138);

          v139 = objc_allocWithZone(IDSDictionaryInvitationContext);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v141 = String._bridgeToObjectiveC()();
          v142 = [v139 initWithDictionary:isa schema:v141];
          v143 = v171;
          v144 = v142;

          v145 = (v162 + *(*v162 + 224));
          v146 = v145[3];
          v147 = v145[4];
          v184 = sub_100020908(v145, v146);
          v148 = v163;
          static Date.distantFuture.getter();
          v149 = type metadata accessor for Date();
          (*(*(v149 - 8) + 56))(v148, 0, 1, v149);
          v150 = swift_allocObject();
          v151 = v174;
          v150[2] = v173;
          v150[3] = v151;
          v152 = v175;
          v150[4] = v175;
          v153 = *(v147 + 32);
          v154 = v144;
          v155 = v152;
          v153(v143, v148, v154, sub_10005C92C, v150, v146, v147);

          sub_100020D78(v78, v170);
          sub_100028FF4(v148, &qword_1000913D0, &qword_10006D9C0);
          return;
        }

        sub_100020D78(v78, v80);
        sub_100028FF4(v102, &qword_100091720, &qword_10006DFB0);
      }
    }

    else
    {
    }

    v105 = v167;
    v106 = v179;
    v179(v167, v177, v25);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v185 = v110;
      *v109 = 136446210;
      v106(v176, v105, v25);
      v111 = String.init<A>(describing:)();
      v112 = v25;
      v113 = v111;
      v115 = v114;
      v178(v105, v112);
      v116 = sub_100033140(v113, v115, &v185);

      *(v109 + 4) = v116;
      _os_log_impl(&_mh_execute_header, v107, v108, "Failed to create share invitation for: %{public}s", v109, 0xCu);
      sub_1000208BC(v110);
    }

    else
    {

      v178(v105, v25);
    }

    v117 = [objc_opt_self() defaultCenter];
    if (qword_100090D58 != -1)
    {
      swift_once();
    }

    v185 = 0x40AC200000000000;
    v186 = 0;
    [v117 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    dispatch_group_leave(v175);
  }

  else if (v184 == 0xD000000000000037 && 0x80000001000701C0 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_10004C790(_swiftEmptyArrayStorage);
    v84 = objc_allocWithZone(IDSDictionaryInvitationContext);
    v85 = Dictionary._bridgeToObjectiveC()().super.isa;

    v86 = String._bridgeToObjectiveC()();
    v87 = [v84 initWithDictionary:v85 schema:v86];

    v88 = (v162 + *(*v162 + 224));
    v89 = v88[3];
    v90 = v88[4];
    sub_100020908(v88, v89);
    v91 = v171;
    v92 = v163;
    static Date.distantFuture.getter();
    v93 = type metadata accessor for Date();
    (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
    v94 = swift_allocObject();
    v95 = v174;
    v94[2] = v173;
    v94[3] = v95;
    v96 = v175;
    v94[4] = v175;
    v97 = *(v90 + 32);
    v98 = v96;
    v99 = v87;
    v97(v91, v92, v99, sub_10005A830, v94, v89, v90);

    sub_100028FF4(v92, &qword_1000913D0, &qword_10006D9C0);
  }

  else
  {

    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v185 = v159;
      *v158 = 136446210;
      *(v158 + 4) = sub_100033140(v184, a4, &v185);
      _os_log_impl(&_mh_execute_header, v156, v157, "Tried to send invitation using unknown schema: %{public}s", v158, 0xCu);
      sub_1000208BC(v159);
    }

    dispatch_group_leave(v175);
  }
}

void sub_100056924(uint64_t a1, void (*a2)(char *, char *, uint64_t), NSObject *a3)
{
  v189 = a3;
  v180 = a2;
  v4 = *v3;
  v5 = *v3;
  v183 = a1;
  v184 = v5;
  v6 = *(v4 + 14);
  v185 = *(v4 + 21);
  swift_getAssociatedTypeWitness();
  v176 = type metadata accessor for Optional();
  v7 = *(*(v176 - 8) + 64);
  v9 = __chkstk_darwin(v176, v8);
  v170 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9, v11);
  v175 = &v165 - v13;
  v14 = *(v4 + 15);
  v179 = *(v14 - 8);
  v15 = *(v179 + 64);
  v16 = __chkstk_darwin(v12, v14);
  v168 = &v165 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16, v18);
  v172 = &v165 - v20;
  __chkstk_darwin(v19, v21);
  v177 = &v165 - v22;
  v190 = v23;
  v187 = type metadata accessor for Optional();
  v178 = *(v187 - 1);
  v24 = *(v178 + 64);
  v26 = __chkstk_darwin(v187, v25);
  v169 = &v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26, v28);
  v174 = &v165 - v30;
  __chkstk_darwin(v29, v31);
  v33 = &v165 - v32;
  v34 = *(v4 + 19);
  v188 = v3;
  v35 = *(v4 + 12);
  v181 = v34;
  v182 = v35;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v186 = *(AssociatedTypeWitness - 8);
  v167 = *(v186 + 8);
  __chkstk_darwin(AssociatedTypeWitness, v37);
  v39 = &v165 - v38;
  v40 = type metadata accessor for Optional();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v44 = __chkstk_darwin(v40, v43);
  v46 = (&v165 - v45);
  v47 = *(v6 - 8);
  v48 = v47[8];
  v50 = __chkstk_darwin(v44, v49);
  v173 = &v165 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v50, v52);
  v171 = &v165 - v54;
  __chkstk_darwin(v53, v55);
  v57 = &v165 - v56;
  v191[0] = v183;
  v58 = v183;
  swift_errorRetain();
  sub_100020818(&qword_100091370, &qword_10006D390);
  v59 = swift_dynamicCast();
  v60 = v47[7];
  if (!v59)
  {
LABEL_15:
    v60(v46, 1, 1, v6);
    (*(v41 + 8))(v46, v40);
    v69 = *(v184 + 80);
    v70 = *(v184 + 88);
    v71 = *(v184 + 104);
    v162 = *(v184 + 192);
    v159 = *(v184 + 176);
    v156 = *(v184 + 160);
    v153 = *(v184 + 144);
    v150 = *(v184 + 128);
    sub_10004C434(v58, v189);
    return;
  }

  v60(v46, 0, 1, v6);
  v166 = v47;
  v61 = v47[4];
  v61(v57, v46, v6);
  v62 = *(v185 + 6);
  v183 = v57;
  v63 = v62(v6);
  v64 = v6;
  switch(v63)
  {
    case 14:
      v186 = v61;
      v97 = v185;
      v98 = v183;
      (*(v185 + 5))(v6, v185);
      v99 = v174;
      v100 = v190;
      v101 = swift_dynamicCast();
      v102 = v179;
      v103 = *(v179 + 56);
      if (v101)
      {
        v103(v99, 0, 1, v100);
        v180 = *(v102 + 32);
        v180(v177, v99, v100);
        v104 = *(v97 + 32);
        v165 = v64;
        v104(v64, v97);
        v99 = v169;
        v105 = v190;
        if (swift_dynamicCast())
        {
          v103(v99, 0, 1, v105);
          v180(v172, v99, v105);
          if (qword_100090D18 != -1)
          {
            swift_once();
          }

          v106 = type metadata accessor for Logger();
          sub_100020D2C(v106, qword_100092EB0);
          v107 = v179;
          v108 = v168;
          v109 = v177;
          (*(v179 + 16))(v168, v177, v105);
          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.debug.getter();
          v112 = os_log_type_enabled(v110, v111);
          v113 = v165;
          v114 = v184;
          if (v112)
          {
            v115 = v108;
            v116 = swift_slowAlloc();
            v187 = swift_slowAlloc();
            v191[0] = v187;
            *v116 = 136446210;
            v186 = v114[22];
            v117 = v115;
            v118 = (*(*(v186 + 1) + 8))(v105);
            v119 = [v118 zoneID];

            v120 = [v119 zoneName];
            v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v123 = v122;

            v124 = *(v107 + 8);
            v124(v117, v105);
            v125 = v121;
            v114 = v184;
            v126 = sub_100033140(v125, v123, v191);
            v109 = v177;

            *(v116 + 4) = v126;
            v113 = v165;
            _os_log_impl(&_mh_execute_header, v110, v111, "Updating share for: %{public}s", v116, 0xCu);
            sub_1000208BC(v187);

            v127 = v186;
          }

          else
          {

            v124 = *(v107 + 8);
            v124(v108, v105);
            v127 = v114[22];
          }

          v148 = v189;
          v149 = v166;
          if (sub_10005A850(v109, v172, v114[10], v114[11], v182, v114[13], v113, v105, v114[16], v114[17], v114[18], v181, v114[20], v185, v127, v114[23], v114[24]))
          {
            sub_100054458(v109, v148);
          }

          else
          {
            dispatch_group_leave(v148);
          }

          v124(v172, v105);
          v124(v109, v105);
          (v149[1])(v183, v113);
          return;
        }

        (*(v102 + 8))(v177, v105);
        v64 = v165;
      }

      v138 = v166;
      v103(v99, 1, 1, v190);
      (*(v178 + 8))(v99, v187);
      v139 = v171;
      (v138[2])(v171, v98, v64);
      v140 = *(v97 + 8);
      v141 = _getErrorEmbeddedNSError<A>(_:)();
      v142 = v184;
      if (v141)
      {
        v143 = v141;
        (v138[1])(v139, v64);
      }

      else
      {
        v143 = swift_allocError();
        v186(v144, v139, v64);
      }

      v145 = *(v142 + 80);
      v146 = *(v142 + 88);
      v147 = *(v142 + 104);
      v164 = *(v142 + 192);
      v161 = *(v142 + 176);
      v158 = *(v142 + 160);
      v155 = *(v142 + 144);
      v152 = *(v142 + 128);
      sub_10004C434(v143, v189);

      (v138[1])(v98, v64);
      return;
    case 26:
      v72 = v184;
      v73 = (*(*(*(v184 + 176) + 8) + 8))(v190);
      v74 = [v73 zoneID];

      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_100020D2C(v75, qword_100092EB0);
      v76 = v74;
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      v79 = os_log_type_enabled(v77, v78);
      v165 = v6;
      if (v79)
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v191[0] = v81;
        *v80 = 136446210;
        v82 = [v76 zoneName];
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;

        v86 = sub_100033140(v83, v85, v191);

        *(v80 + 4) = v86;
        v72 = v184;
        _os_log_impl(&_mh_execute_header, v77, v78, "%{public}s was not found, attempting to re-save it.", v80, 0xCu);
        sub_1000208BC(v81);
      }

      v87 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v76];
      [v87 setCapabilities:8];
      v88 = *(*v188 + 26);
      v89 = swift_allocObject();
      v90 = v189;
      *(v89 + 16) = v189;
      v91 = v72[18];
      v92 = v72[10];
      v93 = v72[11];
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v95 = *(AssociatedConformanceWitness + 48);
      v96 = v90;
      v95(v87, sub_10004E78C, v89, v93, AssociatedConformanceWitness);

      goto LABEL_30;
    case 33:
      v165 = v6;
      v58 = (*(*(v184 + 176) + 32))(v190);
      if (Array.endIndex.getter())
      {
        v40 = 0;
        v184 = "Invitation.share";
        v185 = v186 + 16;
        v41 = v179 + 56;
        v65 = (v178 + 8);
        v46 = (v186 + 8);
        do
        {
          IsNativeType = Array._hoistableIsNativeTypeChecked()();
          Array._checkSubscript(_:wasNativeTypeChecked:)();
          if (IsNativeType)
          {
            (*(v186 + 2))(v39, v58 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 9) * v40, AssociatedTypeWitness);
            v6 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_14;
            }
          }

          else
          {
            v68 = _ArrayBuffer._getElementSlowPath(_:)();
            if (v167 != 8)
            {
              __break(1u);
              return;
            }

            v191[0] = v68;
            (*v185)(v39, v191, AssociatedTypeWitness);
            swift_unknownObjectRelease();
            v6 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
LABEL_14:
              __break(1u);
              goto LABEL_15;
            }
          }

          v67 = v189;
          dispatch_group_enter(v189);
          (*v41)(v33, 1, 1, v190);
          sub_100055324(v39, v33, 0xD000000000000037, v184 | 0x8000000000000000, v67);
          (*v65)(v33, v187);
          (*v46)(v39, AssociatedTypeWitness);
          ++v40;
        }

        while (v6 != Array.endIndex.getter());
      }

      dispatch_group_leave(v189);
LABEL_30:
      (v166[1])(v183, v165);
      return;
  }

  v128 = v166;
  v129 = v173;
  v130 = v183;
  (v166[2])(v173, v183, v6);
  v131 = *(v185 + 1);
  v132 = _getErrorEmbeddedNSError<A>(_:)();
  if (v132)
  {
    v133 = v132;
    (v128[1])(v129, v6);
  }

  else
  {
    v133 = swift_allocError();
    v61(v134, v129, v6);
  }

  v135 = *(v184 + 80);
  v136 = *(v184 + 88);
  v137 = *(v184 + 104);
  v163 = *(v184 + 192);
  v160 = *(v184 + 176);
  v157 = *(v184 + 160);
  v154 = *(v184 + 144);
  v151 = *(v184 + 128);
  sub_10004C434(v133, v189);

  (v128[1])(v130, v6);
}

uint64_t sub_100057A4C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 104);
  v3 = swift_projectBox();
  v4 = v1[26];
  swift_beginAccess();
  v11[3] = v2;
  v11[4] = *(v1[20] + 8);
  v5 = sub_1000283C4(v11);
  (*(*(v2 - 8) + 16))(v5, v3, v2);
  v6 = v1[18];
  v7 = v1[10];
  v8 = v1[11];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v11, v8, AssociatedConformanceWitness);
  return sub_1000208BC(v11);
}

void sub_100057BA4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (!a2)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100020D2C(v12, qword_100092EB0);
    v5 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, v13, "Successfully saved authorization zone", v14, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100020D2C(v4, qword_100092EB0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    swift_errorRetain();
    sub_100020818(&qword_100091370, &qword_10006D390);
    v9 = String.init<A>(describing:)();
    v11 = sub_100033140(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to save authorization zone: %{public}s", v7, 0xCu);
    sub_1000208BC(v8);

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  v15 = [objc_opt_self() defaultCenter];
  if (qword_100090D58 != -1)
  {
    swift_once();
  }

  v16 = 0x40AC200000000000;
  v17 = 0;
  [v15 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  dispatch_group_leave(a3);
}

uint64_t sub_100057EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(AssociatedTypeWitness, v7);
  v9 = &v30 - v8;
  v10 = *(AssociatedConformanceWitness + 32);
  swift_checkMetadataState();
  v10();
  v11 = swift_getAssociatedConformanceWitness();
  v12 = (*(v11 + 8))(AssociatedTypeWitness, v11);
  (*(v5 + 8))(v9, AssociatedTypeWitness);
  if (!v12)
  {
    v28 = 0;
    return v28 & 1;
  }

  v13 = [v12 emailAddress];
  v15 = v30;
  v14 = v31;
  if (v13)
  {
    v16 = v13;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v17 == v15 && v19 == v14)
    {

LABEL_19:
      v28 = 1;
      return v28 & 1;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
LABEL_18:

      goto LABEL_19;
    }
  }

  v22 = [v12 phoneNumber];
  if (!v22)
  {

    v28 = 0;
    return v28 & 1;
  }

  v23 = v22;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (v24 == v15 && v26 == v14)
  {

    goto LABEL_18;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v28 & 1;
}

void sub_100058170(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100020D2C(v8, qword_100092EB0);
    swift_errorRetain();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v11 = 136446466;
      *(v11 + 4) = sub_100033140(a3, a4, &v21);
      *(v11 + 12) = 2082;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v12 = String.init<A>(describing:)();
      v14 = sub_100033140(v12, v13, &v21);

      *(v11 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to send invitation to %{public}s: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    v15 = [objc_opt_self() defaultCenter];
    if (qword_100090D58 != -1)
    {
      swift_once();
    }

    v21 = 0x40AC200000000000;
    v22 = 0;
    [v15 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100020D2C(v16, qword_100092EB0);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_100033140(a3, a4, &v21);
      _os_log_impl(&_mh_execute_header, v17, v18, "Successfully sent invitation to %{public}s", v19, 0xCu);
      sub_1000208BC(v20);
    }
  }

  dispatch_group_leave(a5);
}

uint64_t sub_100058508(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 224));
  v4 = v3[3];
  v5 = v3[4];
  sub_100020908(v3, v4);
  return (*(v5 + 48))(a1, sub_100059710, 0, v4, v5);
}

uint64_t sub_100058590(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100020D2C(v7, qword_100092EB0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    sub_10004EB94(a2, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v12 = String.init<A>(describing:)();
      v14 = sub_100033140(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to fetch share metadata: %{public}s", v10, 0xCu);
      sub_1000208BC(v11);
    }

    return sub_100058508(a5);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100020D2C(v16, qword_100092EB0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Successfully fetched share metadata", v19, 2u);
    }

    return sub_1000587E4(a2, a5);
  }
}

uint64_t sub_1000587E4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v32, v8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = *(v33 + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + 136);
  v30 = swift_allocBox();
  sub_100020818(&qword_100091760, &qword_10006DFD8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10006DED0;
  *(v16 + 32) = a1;
  v17 = *(v6 + 192);
  v18 = v17[2];
  v19 = a1;
  v18(v16, v15, v17);
  (*(v17[1] + 16))(25, v15);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = a2;
  v21 = v17[4];

  v22 = a2;
  v21(sub_100059A3C, v20, v15, v17);
  sub_100021848(0, &qword_100091690, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  v25 = v30;
  *(v24 + 16) = v3;
  *(v24 + 24) = v25;
  aBlock[4] = sub_100059A48;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004EB74;
  aBlock[3] = &unk_100087C58;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000504F0();
  sub_100020818(&qword_100091700, qword_10006E1F0);
  sub_100050548();
  v28 = v31;
  v27 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v35 + 8))(v28, v27);
  (*(v33 + 8))(v14, v34);
}

uint64_t sub_100058BC4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 128);
  v3 = swift_projectBox();
  v4 = v1[25];
  swift_beginAccess();
  v7[3] = v2;
  v7[4] = *(v1[23] + 8);
  v5 = sub_1000283C4(v7);
  (*(*(v2 - 8) + 16))(v5, v3, v2);
  (*(v1[18] + 72))(v7, v1[10]);
  return sub_1000208BC(v7);
}

uint64_t sub_100058CE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100020D2C(v5, qword_100092EB0);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v10 = String.init<A>(describing:)();
      v12 = sub_100033140(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to save verification zone: %{public}s", v8, 0xCu);
      sub_1000208BC(v9);
    }

    sub_100058508(a4);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100020D2C(v14, qword_100092EB0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Successfully saved verification zone", v17, 2u);
    }

    return sub_100058F58(a4);
  }
}

uint64_t sub_100058F58(void *a1)
{
  v3 = (v1 + *(*v1 + 224));
  v4 = v3[3];
  v5 = v3[4];
  sub_100020908(v3, v4);
  v6 = [a1 context];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  (*(v5 + 40))(a1, v6, sub_100049BD4, v7, v4, v5);
  swift_unknownObjectRelease();
}

uint64_t sub_100059048(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100020D2C(v6, qword_100092EB0);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_100049BC8(a1, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v11 = String.init<A>(describing:)();
      v13 = sub_100033140(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to accept share: %{public}s", v9, 0xCu);
      sub_1000208BC(v10);
    }

    return sub_100058508(a4);
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100020D2C(v15, qword_100092EB0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfully accepted share", v18, 2u);
    }

    return sub_100058F58(a4);
  }
}

uint64_t sub_1000592A4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  v3 = swift_projectBox();
  v4 = v1[25];
  swift_beginAccess();
  v7[3] = v2;
  v7[4] = *(v1[24] + 8);
  v5 = sub_1000283C4(v7);
  (*(*(v2 - 8) + 16))(v5, v3, v2);
  (*(v1[18] + 72))(v7, v1[10]);
  return sub_1000208BC(v7);
}

void sub_1000593C8(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100020D2C(v2, qword_100092EB0);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v23 = v6;
      *v5 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v7 = String.init<A>(describing:)();
      v9 = sub_100033140(v7, v8, &v23);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to accept invitation: %{public}s", v5, 0xCu);
      sub_1000208BC(v6);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100020D2C(v11, qword_100092EB0);
    v12 = a2;
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136446210;
      v16 = v12;
      v17 = [v16 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = sub_100033140(v18, v20, &v23);

      *(v14 + 4) = v21;
      _os_log_impl(&_mh_execute_header, oslog, v13, "Successfully accepted invitation %{public}s", v14, 0xCu);
      sub_1000208BC(v15);
    }

    else
    {
    }
  }
}

void sub_100059710(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100020D2C(v1, qword_100092EB0);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136446210;
      swift_errorRetain();
      sub_100020818(&qword_100091370, &qword_10006D390);
      v6 = String.init<A>(describing:)();
      v8 = sub_100033140(v6, v7, &v13);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to decline invitation: %{public}s", v4, 0xCu);
      sub_1000208BC(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100090D18 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100020D2C(v9, qword_100092EB0);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Successfully declined invitation", v11, 2u);
    }
  }
}

uint64_t sub_100059A50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100059A68(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100020818(&qword_100091760, &qword_10006DFD8);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage(0, a2);
  }
}

uint64_t sub_100059AFC()
{
  v1 = *(*(v0 + 56) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 136) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100059C00()
{
  v1 = *(v0 + 56);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 144) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 136);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100059D48()
{
  v1 = *(v0 + 56);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 152) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 144);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100059E50(uint64_t a1, void *a2)
{
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100020D2C(v3, qword_100092EB0);
  v4 = a2;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = v4;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100033140(v10, v12, &v15);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Sender canceled invitation %{public}s", v6, 0xCu);
    sub_1000208BC(v7);
  }
}

void sub_100059FE8(int a1, id a2)
{
  [a2 context];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 schemaIdentifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = v5 == 0xD000000000000030 && 0x8000000100070180 == v7;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100020D2C(v9, qword_100092EB0);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Receiver accepted share invitation", v12, 2u);
      }

      goto LABEL_11;
    }

    v24 = v5 == 0xD000000000000037 && 0x80000001000701C0 == v7;
    if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100020D2C(v25, qword_100092EB0);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Receiver accepted verification invitation", v28, 2u);
      }

      v29 = [objc_opt_self() defaultCenter];
      if (qword_100090D58 != -1)
      {
        swift_once();
      }

      v36 = 0;
      v37 = 1;
      [v29 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100020D2C(v30, qword_100092EB0);

      v10 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v10, v31))
      {

LABEL_11:

        swift_unknownObjectRelease();
        return;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v32 = 136446210;
      v34 = sub_100033140(v5, v7, &v36);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v10, v31, "Receiver accepted invitation with unknown schema: %{public}s", v32, 0xCu);
      sub_1000208BC(v33);
    }

    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRelease();
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100020D2C(v13, qword_100092EB0);
  v14 = a2;
  oslog = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    v18 = v14;
    v19 = [v18 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_100033140(v20, v22, &v36);

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, oslog, v15, "Failed to extract context from accepted invitation %{public}s", v16, 0xCu);
    sub_1000208BC(v17);
  }

  else
  {
  }
}

uint64_t sub_10005A600(uint64_t a1, void *a2)
{
  if (qword_100090D18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100020D2C(v3, qword_100092EB0);
  v4 = a2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    v9 = v4;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_100033140(v11, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Receiver declined invitation %{public}s", v7, 0xCu);
    sub_1000208BC(v8);
  }

  v15 = [objc_opt_self() defaultCenter];
  if (qword_100090D58 != -1)
  {
    swift_once();
  }

  v17 = 0x40AC200000000000;
  v18 = 0;
  [v15 postNotificationName:qword_100092F10 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

  return swift_unknownObjectRelease();
}

uint64_t sub_10005A850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v237 = a7;
  v251 = a6;
  v248 = a4;
  v247 = a3;
  v264 = a1;
  v262 = 0;
  v20 = a15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v226 = type metadata accessor for Optional();
  v279 = *(v226 - 8);
  v22 = *(v279 + 64);
  __chkstk_darwin(v226, v23);
  v235 = &v219 - v24;
  v246 = a12;
  v249 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v271 = swift_getAssociatedTypeWitness();
  v223 = *(v271 - 8);
  v26 = *(v223 + 64);
  v28 = __chkstk_darwin(v271, v27);
  v259 = &v219 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28, v30);
  v260 = &v219 - v32;
  v33 = *(AssociatedTypeWitness - 8);
  v34 = *(v33 + 64);
  v36 = __chkstk_darwin(v31, v35);
  v228 = &v219 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v36, v38);
  v265 = &v219 - v40;
  v42 = __chkstk_darwin(v39, v41);
  v280 = &v219 - v43;
  v45 = __chkstk_darwin(v42, v44);
  v229 = &v219 - v46;
  v48 = __chkstk_darwin(v45, v47);
  v230 = &v219 - v49;
  v51 = __chkstk_darwin(v48, v50);
  v222 = &v219 - v52;
  v54 = __chkstk_darwin(v51, v53);
  v232 = &v219 - v55;
  v57 = __chkstk_darwin(v54, v56);
  v255 = &v219 - v58;
  v220 = v59;
  __chkstk_darwin(v57, v60);
  *&v261 = &v219 - v61;
  v62 = (*(*(a15 + 8) + 8))(a8);
  v63 = [v62 zoneID];

  v64 = [v63 zoneName];
  v256 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v272 = v65;

  v66 = *(a15 + 32);
  v236 = a2;
  v67 = v66(a8, a15);
  v283 = v67;
  v234 = a15 + 32;
  v233 = v66;
  v68 = v66(a8, a15);
  v69 = Array.endIndex.getter();
  v71 = &off_10006C000;
  v266 = a8;
  v267 = a15;
  v275 = AssociatedConformanceWitness;
  v273 = v33;
  if (!v69)
  {

    LODWORD(v263) = 0;
    v72 = AssociatedConformanceWitness;
    v74 = v33;
    v177 = v67;
    goto LABEL_64;
  }

  LODWORD(v263) = 0;
  v269 = *(AssociatedConformanceWitness + 48);
  v277 = (v33 + 16);
  v250 = a17;
  v244 = a16;
  v274 = (v33 + 32);
  v253 = AssociatedConformanceWitness + 32;
  v252 = (v223 + 8);
  v231 = (v33 + 48);
  v243 = a14;
  v242 = a13;
  v270 = AssociatedConformanceWitness + 48;
  v225 = AssociatedConformanceWitness + 24;
  v268 = (v33 + 8);
  v221 = a15 + 56;
  v241 = a11;
  v245 = a15 + 64;
  v224 = (v279 + 8);
  v240 = a10;
  v239 = a9;
  *&v70 = 136446466;
  v227 = v70;
  *&v70 = 136446210;
  v219 = v70;
  v72 = AssociatedConformanceWitness;
  v73 = 0;
  v74 = v33;
  v75 = v255;
  v76 = v261;
  v254 = v68;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v79 = v68 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v73;
      v276 = *(v74 + 16);
      result = v276(v76, v79, AssociatedTypeWitness);
      v81 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      goto LABEL_8;
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v220 != 8)
    {
      goto LABEL_94;
    }

    v282 = result;
    v276 = *v277;
    v276(v76, &v282, AssociatedTypeWitness);
    result = swift_unknownObjectRelease();
    v81 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

LABEL_8:
    v278 = v81;
    v279 = v73;
    v82 = *v274;
    (*v274)(v75, v76, AssociatedTypeWitness);
    if (v269(AssociatedTypeWitness, v72) != 1)
    {
      v83 = v260;
      (*(v72 + 32))(AssociatedTypeWitness, v72);
      v84 = v271;
      v85 = swift_getAssociatedConformanceWitness();
      v86 = (*(v85 + 8))(v84, v85);
      (*v252)(v83, v84);
      if (v86)
      {
        v87 = [v86 emailAddress];
        if (v87)
        {
          v88 = v20;
          v257 = v86;
          v89 = v251;
          v90 = v250;
LABEL_14:
          v91 = v87;
          v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v94 = v93;

          v95 = v233(a8, v88);
          v258 = &v219;
          v282 = v95;
          __chkstk_darwin(v95, v96);
          v97 = v248;
          *(&v219 - 18) = v247;
          *(&v219 - 17) = v97;
          *(&v219 - 16) = v249;
          *(&v219 - 15) = v89;
          v98 = v237;
          *(&v219 - 14) = v237;
          *(&v219 - 13) = a8;
          v99 = v240;
          *(&v219 - 12) = v239;
          *(&v219 - 11) = v99;
          v100 = v246;
          *(&v219 - 10) = v241;
          *(&v219 - 9) = v100;
          v101 = v243;
          *(&v219 - 8) = v242;
          *(&v219 - 7) = v101;
          v102 = v244;
          *(&v219 - 6) = v103;
          *(&v219 - 5) = v102;
          *(&v219 - 4) = v90;
          *(&v219 - 3) = v92;
          *(&v219 - 2) = v94;
          type metadata accessor for Array();
          swift_getWitnessTable();
          v104 = v235;
          v105 = v262;
          Sequence.first(where:)();

          v106 = (*v231)(v104, 1, AssociatedTypeWitness);
          v238 = v92;
          if (v106 == 1)
          {
            v262 = v105;
            (*v224)(v104, v226);
            v76 = v261;
            if (qword_100090D18 != -1)
            {
              swift_once();
            }

            v107 = type metadata accessor for Logger();
            sub_100020D2C(v107, qword_100092EB0);

            v108 = v272;

            v109 = Logger.logObject.getter();
            v110 = static os_log_type_t.default.getter();

            v111 = os_log_type_enabled(v109, v110);
            v20 = v267;
            v74 = v273;
            if (v111)
            {
              v112 = swift_slowAlloc();
              v282 = swift_slowAlloc();
              *v112 = v227;
              v113 = sub_100033140(v238, v94, &v282);

              *(v112 + 4) = v113;
              *(v112 + 12) = 2082;
              *(v112 + 14) = sub_100033140(v256, v108, &v282);
              _os_log_impl(&_mh_execute_header, v109, v110, "Removing %{public}s from %{public}s", v112, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            a8 = v266;
            v72 = v275;
            v75 = v255;
            v68 = v254;
            v77 = v279;
            (*(v20 + 64))(v255, v266, v20);

            (*v268)(v75, AssociatedTypeWitness);
            LODWORD(v263) = 1;
            goto LABEL_5;
          }

          v114 = (v82)(v232, v104, AssociatedTypeWitness);
          __chkstk_darwin(v114, v115);
          v116 = v248;
          *(&v219 - 18) = v247;
          *(&v219 - 17) = v116;
          v117 = v251;
          *(&v219 - 16) = v249;
          *(&v219 - 15) = v117;
          v118 = v266;
          *(&v219 - 14) = v98;
          *(&v219 - 13) = v118;
          v119 = v240;
          *(&v219 - 12) = v239;
          *(&v219 - 11) = v119;
          v120 = v246;
          *(&v219 - 10) = v241;
          *(&v219 - 9) = v120;
          v121 = v243;
          *(&v219 - 8) = v242;
          *(&v219 - 7) = v121;
          v122 = v244;
          *(&v219 - 6) = v267;
          *(&v219 - 5) = v122;
          *(&v219 - 4) = v250;
          *(&v219 - 3) = v92;
          v123 = v94;
          *(&v219 - 2) = v94;
          swift_getWitnessTable();
          swift_getWitnessTable();
          RangeReplaceableCollection<>.removeAll(where:)();
          v72 = v275;
          v124 = *(v275 + 24);
          v75 = v255;
          v125 = v124(AssociatedTypeWitness, v275);
          v262 = v105;
          if (v125 < 2)
          {
            v74 = v273;
            if (qword_100090D18 != -1)
            {
              swift_once();
            }

            v134 = type metadata accessor for Logger();
            sub_100020D2C(v134, qword_100092EB0);

            v135 = v272;

            v136 = Logger.logObject.getter();
            v137 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v136, v137))
            {
              v138 = swift_slowAlloc();
              v282 = swift_slowAlloc();
              *v138 = v227;
              v139 = v136;
              v140 = sub_100033140(v238, v123, &v282);

              *(v138 + 4) = v140;
              *(v138 + 12) = 2082;
              *(v138 + 14) = sub_100033140(v256, v135, &v282);
              _os_log_impl(&_mh_execute_header, v139, v137, "Re-inviting %{public}s to %{public}s", v138, 0x16u);
              swift_arrayDestroy();
              v75 = v255;
            }

            else
            {
            }

            a8 = v266;
            v20 = v267;
            v76 = v261;
            (*(v267 + 64))(v75, v266, v267);
            v161 = v232;
            (*(v20 + 56))(v232, a8, v20);

            v162 = *v268;
            (*v268)(v161, AssociatedTypeWitness);
            v162(v75, AssociatedTypeWitness);
            LODWORD(v263) = 1;
            v72 = v275;
            goto LABEL_41;
          }

          v74 = v273;
          v126 = v222;
          if (v125 != 2)
          {
            if (v125 == 3)
            {
              if (qword_100090D18 != -1)
              {
                swift_once();
              }

              v127 = type metadata accessor for Logger();
              sub_100020D2C(v127, qword_100092EB0);

              v128 = v272;

              v129 = Logger.logObject.getter();
              v130 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v129, v130))
              {
                v131 = swift_slowAlloc();
                v282 = swift_slowAlloc();
                *v131 = v227;
                v132 = v129;
                v133 = sub_100033140(v238, v123, &v282);

                *(v131 + 4) = v133;
                *(v131 + 12) = 2082;
                *(v131 + 14) = sub_100033140(v256, v128, &v282);
                _os_log_impl(&_mh_execute_header, v132, v130, "Adding %{public}s to %{public}s", v131, 0x16u);
                swift_arrayDestroy();
                v75 = v255;
              }

              else
              {
              }

              a8 = v266;
              v20 = v267;
              v72 = v275;
              v76 = v261;
              v174 = v232;
              (*(v267 + 56))(v232, v266, v267);

              v175 = *v268;
              (*v268)(v174, AssociatedTypeWitness);
              v175(v75, AssociatedTypeWitness);
              LODWORD(v263) = 1;
              goto LABEL_41;
            }

            if (qword_100090D18 != -1)
            {
              swift_once();
            }

            v163 = type metadata accessor for Logger();
            sub_100020D2C(v163, qword_100092EB0);
            v276(v126, v75, AssociatedTypeWitness);
            v164 = Logger.logObject.getter();
            v165 = static os_log_type_t.error.getter();
            v166 = os_log_type_enabled(v164, v165);
            v20 = v267;
            if (v166)
            {
              v167 = swift_slowAlloc();
              v168 = swift_slowAlloc();
              v282 = v168;
              *v167 = v219;
              LODWORD(v276) = v165;
              v281 = v124(AssociatedTypeWitness, v275);
              type metadata accessor for ParticipantAcceptanceStatus(0);
              v169 = String.init<A>(describing:)();
              v171 = v170;
              v172 = *v268;
              (*v268)(v126, AssociatedTypeWitness);
              v173 = sub_100033140(v169, v171, &v282);
              v75 = v255;

              *(v167 + 4) = v173;
              _os_log_impl(&_mh_execute_header, v164, v276, "Unknown acceptance status: %{public}s", v167, 0xCu);
              sub_1000208BC(v168);

              v72 = v275;
            }

            else
            {

              v172 = *v268;
              (*v268)(v126, AssociatedTypeWitness);
            }

            v172(v232, AssociatedTypeWitness);
            v172(v75, AssociatedTypeWitness);
            a8 = v266;
            v74 = v273;
LABEL_40:
            v76 = v261;
LABEL_41:
            v68 = v254;
            goto LABEL_4;
          }

          if (qword_100090D18 != -1)
          {
            swift_once();
          }

          v154 = type metadata accessor for Logger();
          sub_100020D2C(v154, qword_100092EB0);

          v155 = v272;

          v156 = Logger.logObject.getter();
          v157 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v156, v157))
          {
            v158 = swift_slowAlloc();
            v282 = swift_slowAlloc();
            *v158 = v227;
            v159 = v156;
            v160 = sub_100033140(v238, v123, &v282);

            *(v158 + 4) = v160;
            *(v158 + 12) = 2082;
            *(v158 + 14) = sub_100033140(v256, v155, &v282);
            _os_log_impl(&_mh_execute_header, v159, v157, "%{public}s is already sharing %{public}s", v158, 0x16u);
            swift_arrayDestroy();
            v75 = v255;
          }

          else
          {
          }

          v176 = *v268;
          (*v268)(v232, AssociatedTypeWitness);
          v176(v75, AssociatedTypeWitness);
          a8 = v266;
          v20 = v267;
LABEL_39:
          v72 = v275;
          goto LABEL_40;
        }

        v87 = [v86 phoneNumber];
        v89 = v251;
        v90 = v250;
        if (v87)
        {
          v88 = v20;
          v257 = v86;
          goto LABEL_14;
        }
      }

      if (qword_100090D18 != -1)
      {
        swift_once();
      }

      v141 = type metadata accessor for Logger();
      sub_100020D2C(v141, qword_100092EB0);
      v142 = v230;
      v143 = v276;
      v276(v230, v75, AssociatedTypeWitness);
      v144 = v272;

      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v263 = swift_slowAlloc();
        v282 = v263;
        *v147 = v227;
        v143(v229, v142, AssociatedTypeWitness);
        v148 = String.init<A>(describing:)();
        v150 = v149;
        v151 = *v268;
        (*v268)(v142, AssociatedTypeWitness);
        v152 = sub_100033140(v148, v150, &v282);

        *(v147 + 4) = v152;
        v75 = v255;
        *(v147 + 12) = 2082;
        *(v147 + 14) = sub_100033140(v256, v144, &v282);
        _os_log_impl(&_mh_execute_header, v145, v146, "Removing %{public}s from %{public}s", v147, 0x16u);
        swift_arrayDestroy();

        a8 = v266;
      }

      else
      {

        v151 = *v268;
        (*v268)(v142, AssociatedTypeWitness);
      }

      v74 = v273;
      v153 = v267;
      (*(v267 + 64))(v75, a8, v267);
      v151(v75, AssociatedTypeWitness);
      v20 = v153;
      LODWORD(v263) = 1;
      goto LABEL_39;
    }

    (*v268)(v75, AssociatedTypeWitness);
LABEL_4:
    v77 = v279;
LABEL_5:
    v73 = v77 + 1;
    if (v278 == Array.endIndex.getter())
    {

      v177 = v283;
      v71 = &off_10006C000;
LABEL_64:
      v178 = Array.endIndex.getter();
      v180 = v265;
      if (!v178)
      {
LABEL_91:

        return v263 & 1;
      }

      v181 = 0;
      v182 = *(v72 + 48);
      v183 = (v74 + 16);
      v276 = (v74 + 32);
      v277 = v182;
      v278 = v72 + 48;
      v268 = (v223 + 8);
      v269 = (v72 + 32);
      v262 = v20 + 56;
      v274 = (v74 + 8);
      *&v179 = *(v71 + 369);
      v261 = v179;
      v270 = v177;
      v279 = v74 + 16;
      while (1)
      {
        v185 = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (v185)
        {
          v186 = *(v74 + 16);
          result = (v186)(v280, v177 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v181, AssociatedTypeWitness);
          v187 = v181 + 1;
          if (__OFADD__(v181, 1))
          {
            goto LABEL_93;
          }
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v220 != 8)
          {
            goto LABEL_95;
          }

          v282 = result;
          v186 = *v183;
          (*v183)(v280, &v282, AssociatedTypeWitness);
          result = swift_unknownObjectRelease();
          v187 = v181 + 1;
          if (__OFADD__(v181, 1))
          {
            goto LABEL_93;
          }
        }

        (*v276)(v180, v280, AssociatedTypeWitness);
        if (v277(AssociatedTypeWitness, v72) == 1)
        {
          (*v274)(v180, AssociatedTypeWitness);
        }

        else
        {
          v188 = v259;
          (*(v72 + 32))(AssociatedTypeWitness, v72);
          v189 = v271;
          v190 = swift_getAssociatedConformanceWitness();
          v191 = (*(v190 + 8))(v189, v190);
          (*v268)(v188, v189);
          if (!v191)
          {
            goto LABEL_81;
          }

          v192 = [v191 emailAddress];
          if (!v192)
          {
            v192 = [v191 phoneNumber];
            if (!v192)
            {

LABEL_81:
              if (qword_100090D18 != -1)
              {
                swift_once();
              }

              v204 = type metadata accessor for Logger();
              sub_100020D2C(v204, qword_100092EB0);
              v205 = v228;
              v186(v228, v265, AssociatedTypeWitness);
              v206 = v272;

              v207 = Logger.logObject.getter();
              v208 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v207, v208))
              {
                v209 = swift_slowAlloc();
                LODWORD(v258) = v208;
                v210 = v205;
                v211 = v209;
                v260 = swift_slowAlloc();
                v282 = v260;
                *v211 = v261;
                *(v211 + 4) = sub_100033140(v256, v206, &v282);
                *(v211 + 12) = 2082;
                v186(v229, v210, AssociatedTypeWitness);
                v212 = String.init<A>(describing:)();
                v214 = v213;
                v215 = *v274;
                (*v274)(v210, AssociatedTypeWitness);
                v216 = sub_100033140(v212, v214, &v282);

                *(v211 + 14) = v216;
                _os_log_impl(&_mh_execute_header, v207, v258, "Failed to share %{public}s with %{public}s", v211, 0x16u);
                swift_arrayDestroy();

                v180 = v265;
                v215(v265, AssociatedTypeWitness);
                v20 = v267;
                v72 = v275;
                v74 = v273;
              }

              else
              {

                v217 = *v274;
                (*v274)(v205, AssociatedTypeWitness);
                v218 = v265;
                v217(v265, AssociatedTypeWitness);
                v72 = v275;
                v74 = v273;
                v180 = v218;
              }

              v177 = v270;
              goto LABEL_67;
            }
          }

          v193 = v192;
          v194 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v196 = v195;

          if (qword_100090D18 != -1)
          {
            swift_once();
          }

          v197 = type metadata accessor for Logger();
          sub_100020D2C(v197, qword_100092EB0);
          v198 = v272;

          v199 = Logger.logObject.getter();
          v200 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v199, v200))
          {
            v201 = swift_slowAlloc();
            v263 = v191;
            v202 = v201;
            v282 = swift_slowAlloc();
            *v202 = v261;
            v203 = sub_100033140(v194, v196, &v282);

            *(v202 + 4) = v203;
            *(v202 + 12) = 2082;
            *(v202 + 14) = sub_100033140(v256, v198, &v282);
            _os_log_impl(&_mh_execute_header, v199, v200, "Adding %{public}s to %{public}s", v202, 0x16u);
            swift_arrayDestroy();
            v20 = v267;

            v191 = v263;
          }

          else
          {
          }

          v74 = v273;
          v177 = v270;
          v180 = v265;
          (*(v20 + 56))(v265, v266, v20);

          (*v274)(v180, AssociatedTypeWitness);
          LODWORD(v263) = 1;
          v72 = v275;
        }

LABEL_67:
        ++v181;
        v184 = v187 == Array.endIndex.getter();
        v183 = v279;
        if (v184)
        {
          goto LABEL_91;
        }
      }
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}