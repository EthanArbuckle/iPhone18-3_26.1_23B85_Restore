uint64_t sub_1002756D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005814(&qword_1003D9270, &qword_10033ECF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v96 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v105 = (&v93 - v9);
  __chkstk_darwin(v8);
  v11 = &v93 - v10;
  v12 = type metadata accessor for UUID();
  v101 = *(v12 - 8);
  v102 = v12;
  v13 = *(v101 + 64);
  __chkstk_darwin(v12);
  v100 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustodianRecord();
  v98 = *(v15 - 8);
  isa = v98[8].isa;
  v17 = __chkstk_darwin(v15);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v93 - v20;
  v22 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v95 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v104 = &v93 - v27;
  __chkstk_darwin(v26);
  v99 = (&v93 - v28);
  v29 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v33 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v93 - v34;
  v36 = sub_1002E1D08(*(a1 + *(v15 + 44)), *(a1 + *(v15 + 44) + 8));
  if (v36)
  {
    v94 = a2;
    v97 = v15;
    v37 = v21;
    v38 = v19;
    v39 = a1;
    v40 = v11;
    v41 = v36;
    v42 = [v36 creationDate];

    if (v42)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = type metadata accessor for Date();
      (*(*(v43 - 8) + 56))(v33, 0, 1, v43);
    }

    else
    {
      v43 = type metadata accessor for Date();
      (*(*(v43 - 8) + 56))(v33, 1, 1, v43);
    }

    sub_1000C52F8(v33, v35);
    type metadata accessor for Date();
    v45 = *(v43 - 8);
    v46 = (*(v45 + 48))(v35, 1, v43);
    v11 = v40;
    a1 = v39;
    v19 = v38;
    v21 = v37;
    v15 = v97;
    if (v46 != 1)
    {
      return (*(v45 + 32))(v94, v35, v43);
    }
  }

  else
  {
    v44 = type metadata accessor for Date();
    (*(*(v44 - 8) + 56))(v35, 1, 1, v44);
  }

  sub_100008D3C(v35, &qword_1003DA110, &qword_10033F230);
  if (*(v103 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v47 = type metadata accessor for CustodianshipInfoRecord();
    v48 = *(v47 - 8);
    (*(v48 + 56))(v11, 1, 1, v47);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100008D04(v49, qword_1003FAAB8);
    sub_10028338C(a1, v19, type metadata accessor for CustodianRecord);
    v50 = v105;
    sub_100012D04(v11, v105, &qword_1003D9270, &qword_10033ECF0);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v102;
    v55 = v100;
    if (v53)
    {
      v98 = v51;
      LODWORD(v103) = v52;
      v104 = v11;
      v56 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v107 = v99;
      *v56 = 136315394;
      v57 = v48;
      v58 = v101;
      v97 = *(v101 + 16);
      v97(v55, v19, v54);
      sub_1002833F4(v19, type metadata accessor for CustodianRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      v101 = *(v58 + 8);
      (v101)(v55, v54);
      v62 = sub_10021145C(v59, v61, &v107);

      *(v56 + 4) = v62;
      *(v56 + 12) = 2080;
      v63 = v96;
      sub_100012D04(v105, v96, &qword_1003D9270, &qword_10033ECF0);
      if ((*(v57 + 48))(v63, 1, v47) == 1)
      {
        sub_100008D3C(v63, &qword_1003D9270, &qword_10033ECF0);
        v64 = 0xE100000000000000;
        v65 = 45;
      }

      else
      {
        v97(v55, &v63[*(v47 + 20)], v54);
        sub_1002833F4(v63, type metadata accessor for CustodianshipInfoRecord);
        v65 = UUID.uuidString.getter();
        v64 = v84;
        (v101)(v55, v54);
      }

      v85 = v98;
      sub_100008D3C(v105, &qword_1003D9270, &qword_10033ECF0);
      v86 = sub_10021145C(v65, v64, &v107);

      *(v56 + 14) = v86;
      _os_log_impl(&_mh_execute_header, v85, v103, "No creation date found in CustodianshipInfoRecord, recordID: %s, custodianID: %s", v56, 0x16u);
      swift_arrayDestroy();

      v11 = v104;
    }

    else
    {
      sub_1002833F4(v19, type metadata accessor for CustodianRecord);

      sub_100008D3C(v50, &qword_1003D9270, &qword_10033ECF0);
    }

    type metadata accessor for AACustodianError(0);
    v106 = -7103;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v87 = &qword_1003D9270;
    v88 = &qword_10033ECF0;
    v89 = v11;
  }

  else
  {
    v66 = v99;
    sub_10028338C(a1, v99, type metadata accessor for CustodianRecord);
    (v98[7].isa)(v66, 0, 1, v15);
    v67 = v101;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100008D04(v68, qword_1003FAAB8);
    sub_10028338C(a1, v21, type metadata accessor for CustodianRecord);
    v69 = v104;
    sub_100012D04(v66, v104, &unk_1003DF000, &unk_10033EC50);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v70, v71))
    {
      LODWORD(v103) = v71;
      v105 = v70;
      v72 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v107 = v97;
      *v72 = 136315394;
      v73 = v100;
      v74 = v102;
      v96 = *(v67 + 16);
      (v96)(v100, v21, v102);
      sub_1002833F4(v21, type metadata accessor for CustodianRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      v78 = *(v67 + 8);
      v78(v73, v74);
      v79 = sub_10021145C(v75, v77, &v107);

      *(v72 + 4) = v79;
      *(v72 + 12) = 2080;
      v80 = v95;
      sub_100012D04(v104, v95, &unk_1003DF000, &unk_10033EC50);
      if ((v98[6].isa)(v80, 1, v15) == 1)
      {
        sub_100008D3C(v80, &unk_1003DF000, &unk_10033EC50);
        v81 = 0xE100000000000000;
        v82 = 45;
      }

      else
      {
        (v96)(v73, v80 + *(v15 + 20), v74);
        sub_1002833F4(v80, type metadata accessor for CustodianRecord);
        v82 = UUID.uuidString.getter();
        v81 = v90;
        v78(v73, v74);
      }

      sub_100008D3C(v104, &unk_1003DF000, &unk_10033EC50);
      v91 = sub_10021145C(v82, v81, &v107);

      *(v72 + 14) = v91;
      v92 = v105;
      _os_log_impl(&_mh_execute_header, v105, v103, "No creation date found in CustodianRecord, recordID: %s, custodianID: %s", v72, 0x16u);
      swift_arrayDestroy();

      v66 = v99;
    }

    else
    {
      sub_1002833F4(v21, type metadata accessor for CustodianRecord);

      sub_100008D3C(v69, &unk_1003DF000, &unk_10033EC50);
    }

    type metadata accessor for AACustodianError(0);
    v106 = -7098;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100282F14(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v87 = &unk_1003DF000;
    v88 = &unk_10033EC50;
    v89 = v66;
  }

  return sub_100008D3C(v89, v87, v88);
}

uint64_t sub_100276484(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003E4F18, &qword_100347EE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v40 - v6;
  v8 = sub_100005814(&qword_1003E4F20, &qword_100347EE8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAAB8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Inferring record setup version...", v16, 2u);
  }

  if (*(v2 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v17 = 0xE100000000000000;
    v18 = 45;
  }

  else
  {
    v19 = a1 + *(type metadata accessor for CustodianRecord() + 20);
    v18 = UUID.uuidString.getter();
    v17 = v20;
  }

  v21 = (a1 + *(type metadata accessor for CustodianRecord() + 52));
  v22 = v21[1];
  if (v22)
  {
    v41 = v9;
    v23 = *v21;
    Regex.init(_regexString:version:)();
    Regex.firstMatch(in:)();
    v29 = sub_100005814(&qword_1003E4F28, qword_100347EF0);
    if ((*(*(v29 - 8) + 48))(v7, 1, v29) == 1)
    {
      sub_100008D3C(v7, &qword_1003E4F18, &qword_100347EE0);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v32 = 136315394;
        *(v32 + 4) = sub_10021145C(v23, v22, &v42);
        *(v32 + 12) = 2080;
        v33 = sub_10021145C(v18, v17, &v42);

        *(v32 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v30, v31, "CustodianRecord.keyCreatedOnBuild %s has old format, confirmed pre-LuckCheer, custodianID: %s", v32, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v41 + 8))(v12, v8);
      return 1;
    }

    else
    {
      sub_100008D3C(v7, &qword_1003E4F18, &qword_100347EE0);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v38 = 136315394;
        *(v38 + 4) = sub_10021145C(v23, v22, &v42);
        *(v38 + 12) = 2080;
        v39 = sub_10021145C(v18, v17, &v42);

        *(v38 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v36, v37, "CustodianRecord.keyCreatedOnBuild %s has new format, confirmed LuckCheer+, custodianID: %s", v38, 0x16u);
        v34 = 2;
        swift_arrayDestroy();

        (*(v41 + 8))(v12, v8);
      }

      else
      {

        (*(v41 + 8))(v12, v8);
        return 2;
      }
    }
  }

  else
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136315138;
      v28 = sub_10021145C(v18, v17, &v42);

      *(v26 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "CustodianRecord has no keyCreatedOnBuild, defaulting to unknown setup version, custodianID: %s", v26, 0xCu);
      sub_10000839C(v27);
    }

    else
    {
    }

    return 0;
  }

  return v34;
}

uint64_t sub_100276B54(uint64_t a1, int a2)
{
  v4 = v3;
  v5 = v2;
  v77 = a2;
  v82 = a1;
  v6 = type metadata accessor for Date();
  v83 = *(v6 - 8);
  v7 = v83[8];
  v8 = __chkstk_darwin(v6);
  v79 = (v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v78 = (v69 - v11);
  v12 = __chkstk_darwin(v10);
  v80 = v69 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v69 - v15;
  __chkstk_darwin(v14);
  v18 = v69 - v17;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100008D04(v19, qword_1003FAAB8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v81 = v20;
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Determining record setup age...", v23, 2u);
    v4 = v3;
    v20 = v81;
  }

  v24 = sub_1002A217C();
  if (v25)
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v5 = 2;
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No recent period configured, assuming setup is recent", v28, 2u);
    }

    else
    {

      return 2;
    }

    return v5;
  }

  v29 = v24;
  if (*(v5 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user) == 1)
  {
    v30 = type metadata accessor for CustodianshipInfoRecord();
    v31 = v82;
    v32 = v82 + *(v30 + 20);
    v33 = UUID.uuidString.getter();
    v34 = v31;
    v76 = v33;
    v36 = v35;
  }

  else
  {
    v36 = 0xE100000000000000;
    v76 = 45;
    v34 = v82;
  }

  sub_100274924(v34, v18);
  if (v4)
  {

    return v5;
  }

  static Date.now.getter();
  v73 = v29;
  v37 = v36;
  Date.addingTimeInterval(_:)();
  v74 = static Date.< infix(_:_:)();
  v81 = v20;
  v38 = v83[2];
  v38(v78, v16, v6);
  v38(v79, v18, v6);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v75 = v37;

  v72 = v40;
  v41 = os_log_type_enabled(v39, v40);
  v82 = 0;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v85 = v71;
    *v42 = 136316162;
    v69[1] = sub_100282F14(&qword_1003DB608, &type metadata accessor for Date);
    v70 = v39;
    v43 = v78;
    v69[0] = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v46 = v83[1];
    v46(v43, v6);
    v47 = sub_10021145C(v69[0], v45, &v85);

    *(v42 + 4) = v47;
    v78 = v5;
    *(v42 + 12) = 2080;
    v48 = v79;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    v79 = v46;
    v46(v48, v6);
    v52 = sub_10021145C(v49, v51, &v85);

    *(v42 + 14) = v52;
    *(v42 + 22) = 2048;
    *(v42 + 24) = v73;
    *(v42 + 32) = 1024;
    LOBYTE(v52) = v74;
    *(v42 + 34) = v74 & 1;
    *(v42 + 38) = 2080;
    v53 = v75;
    *(v42 + 40) = sub_10021145C(v76, v75, &v85);
    v54 = v70;
    _os_log_impl(&_mh_execute_header, v70, v72, "Date.now: %s, record created on: %s, recent period: %f, is in recent period: %{BOOL}d, custodianID: %s", v42, 0x30u);
    swift_arrayDestroy();

    if ((v52 & 1) == 0)
    {
LABEL_16:
      v5 = sub_1002A2248(v77) & 1;
      goto LABEL_19;
    }
  }

  else
  {

    v55 = v83[1];
    v55(v79, v6);
    v79 = v55;
    v55(v78, v6);
    v53 = v75;
    if ((v74 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = 2;
LABEL_19:

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v78 = v56;
    v59 = v58;
    v60 = swift_slowAlloc();
    v81 = v18;
    v85 = v60;
    *v59 = 136315394;
    v84 = v5;
    v61 = String.init<A>(describing:)();
    v63 = sub_10021145C(v61, v62, &v85);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    v64 = sub_10021145C(v76, v53, &v85);

    *(v59 + 14) = v64;
    v65 = v78;
    _os_log_impl(&_mh_execute_header, v78, v57, "Record setup age: %s, custodianID: %s", v59, 0x16u);
    swift_arrayDestroy();

    v66 = v79;
    (v79)(v80, v6);
    v66(v16, v6);
    v66(v81, v6);
  }

  else
  {

    v67 = v79;
    (v79)(v80, v6);
    v67(v16, v6);
    v67(v18, v6);
  }

  return v5;
}

uint64_t sub_100277330(uint64_t a1, int a2)
{
  v4 = v3;
  v5 = v2;
  v75 = a2;
  v7 = type metadata accessor for Date();
  v80 = *(v7 - 8);
  v8 = v80[8];
  v9 = __chkstk_darwin(v7);
  v77 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v76 = &v66 - v12;
  v13 = __chkstk_darwin(v11);
  v78 = &v66 - v14;
  v15 = __chkstk_darwin(v13);
  v79 = &v66 - v16;
  __chkstk_darwin(v15);
  v18 = &v66 - v17;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v81 = sub_100008D04(v19, qword_1003FAAB8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Determining record setup age...", v22, 2u);
    v4 = v3;
  }

  v23 = sub_1002A217C();
  if (v24)
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = 2;
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "No recent period configured, assuming setup is recent", v28, 2u);
    }

    else
    {

      return 2;
    }

    return v27;
  }

  v29 = v23;
  if (*(v5 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v27 = 0xE100000000000000;
    v30 = 45;
  }

  else
  {
    v31 = a1 + *(type metadata accessor for CustodianRecord() + 20);
    v30 = UUID.uuidString.getter();
    v27 = v32;
  }

  sub_1002756D4(a1, v18);
  if (v4)
  {

    return v27;
  }

  v71 = v30;
  v72 = v5;
  v73 = 0;
  v69 = v29;
  v33 = v79;
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v70 = static Date.< infix(_:_:)();
  v34 = v80[2];
  v35 = v76;
  v34(v76, v33, v7);
  v36 = v77;
  v34(v77, v18, v7);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v74 = v27;
  if (v39)
  {
    v40 = v35;
    v41 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v83 = v68;
    *v41 = 136316162;
    v66 = sub_100282F14(&qword_1003DB608, &type metadata accessor for Date);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v67 = v38;
    v45 = v80[1];
    v45(v40, v7);
    v46 = sub_10021145C(v42, v44, &v83);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    v47 = v77;
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    v77 = v45;
    v45(v47, v7);
    v51 = sub_10021145C(v48, v50, &v83);

    *(v41 + 14) = v51;
    *(v41 + 22) = 2048;
    *(v41 + 24) = v69;
    *(v41 + 32) = 1024;
    v52 = v70;
    *(v41 + 34) = v70 & 1;
    *(v41 + 38) = 2080;
    *(v41 + 40) = sub_10021145C(v71, v74, &v83);
    _os_log_impl(&_mh_execute_header, v37, v67, "Date.now: %s, record created on: %s, recent period: %f, is in recent period: %{BOOL}d, custodianID: %s", v41, 0x30u);
    swift_arrayDestroy();

    if ((v52 & 1) == 0)
    {
LABEL_16:
      v27 = sub_1002A2248(v75) & 1;
      goto LABEL_19;
    }
  }

  else
  {

    v53 = v80[1];
    v53(v36, v7);
    v77 = v53;
    v53(v35, v7);
    if ((v70 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v27 = 2;
LABEL_19:
  v54 = v74;

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v81 = v18;
    v83 = v58;
    *v57 = 136315394;
    v82 = v27;
    v59 = String.init<A>(describing:)();
    v61 = sub_10021145C(v59, v60, &v83);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2080;
    v62 = sub_10021145C(v71, v54, &v83);

    *(v57 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v55, v56, "Record setup age: %s, custodianID: %s", v57, 0x16u);
    swift_arrayDestroy();

    v63 = v77;
    (v77)(v78, v7);
    v63(v79, v7);
    v63(v81, v7);
  }

  else
  {

    v64 = v77;
    (v77)(v78, v7);
    v64(v79, v7);
    v64(v18, v7);
  }

  return v27;
}

uint64_t sub_100277AEC(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecord();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v11 - v8);
  sub_100012D04(a1, v11 - v8, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100283458(v9, v5, type metadata accessor for CustodianRecord);
    sub_100005814(&unk_1003D9200, &unk_10033EC90);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100277C64(uint64_t a1)
{
  v2 = type metadata accessor for CustodianshipInfoRecord();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v11 - v8);
  sub_100012D04(a1, v11 - v8, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    sub_100005814(&unk_1003D9260, &unk_10033ECE0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100283458(v9, v5, type metadata accessor for CustodianshipInfoRecord);
    sub_100005814(&unk_1003D9260, &unk_10033ECE0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100277DDC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a3;
  v63 = a2;
  v64 = a6;
  v61 = a5;
  v62 = a4;
  v7 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  __chkstk_darwin(v7);
  v10 = &v54 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for CustodianshipInfoRecord();
  v56 = *(v60 - 8);
  v16 = *(v56 + 64);
  v17 = __chkstk_darwin(v60);
  v57 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v67 = &v54 - v19;
  __chkstk_darwin(v18);
  v21 = &v54 - v20;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAAE8);
  sub_10028338C(a1, v21, type metadata accessor for CustodianshipInfoRecord);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v54 = v10;
    v26 = v25;
    v27 = swift_slowAlloc();
    v55 = a1;
    v68[0] = v27;
    *v26 = 136315394;
    (*(v12 + 16))(v15, v21, v11);
    sub_1002833F4(v21, type metadata accessor for CustodianshipInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v12 + 8))(v15, v11);
    v31 = sub_10021145C(v28, v30, v68);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v68);
    _os_log_impl(&_mh_execute_header, v23, v24, "Storage Controller: Saving record with modify block recordID: %s, type: %s...", v26, 0x16u);
    swift_arrayDestroy();
    a1 = v55;

    v10 = v54;
  }

  else
  {
    sub_1002833F4(v21, type metadata accessor for CustodianshipInfoRecord);
  }

  v33 = v58;
  v32 = v59;
  (*(v58 + 16))(v10, v66 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v59);
  Dependency.wrappedValue.getter();
  (*(v33 + 8))(v10, v32);
  v59 = sub_1000080F8(v68, v68[3]);
  v34 = v65;
  v35 = v63;
  v63(a1);
  v36 = v57;
  sub_10028338C(a1, v57, type metadata accessor for CustodianshipInfoRecord);
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = (v16 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_100283458(v36, v41 + v37, type metadata accessor for CustodianshipInfoRecord);
  *(v41 + v38) = v66;
  v42 = (v41 + v39);
  v43 = v64;
  *v42 = v61;
  v42[1] = v43;
  *(v41 + v40) = v62;
  v44 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v44 = v35;
  v44[1] = v34;
  v45 = *v59;
  v46 = qword_1003D7EB0;

  if (v46 != -1)
  {
    swift_once();
  }

  if (*(v67 + *(v60 + 36)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v47 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v47 = &qword_1003FA9C0;
  }

  v48 = *v47;
  v49 = v47[1];

  v50 = sub_1002E2BC4(v48, v49);

  v51 = [v50 privateCloudDatabase];

  v52 = v67;
  sub_100175368(v67, v51, sub_100282D38, v41);

  sub_1002833F4(v52, type metadata accessor for CustodianshipInfoRecord);
  return sub_10000839C(v68);
}

uint64_t sub_1002784C8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a3;
  v63 = a2;
  v64 = a6;
  v61 = a5;
  v62 = a4;
  v7 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  __chkstk_darwin(v7);
  v10 = &v54 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for CustodianRecord();
  v56 = *(v60 - 8);
  v16 = *(v56 + 64);
  v17 = __chkstk_darwin(v60);
  v57 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v67 = &v54 - v19;
  __chkstk_darwin(v18);
  v21 = &v54 - v20;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAAE8);
  sub_10028338C(a1, v21, type metadata accessor for CustodianRecord);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v54 = v10;
    v26 = v25;
    v27 = swift_slowAlloc();
    v55 = a1;
    v68[0] = v27;
    *v26 = 136315394;
    (*(v12 + 16))(v15, v21, v11);
    sub_1002833F4(v21, type metadata accessor for CustodianRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v12 + 8))(v15, v11);
    v31 = sub_10021145C(v28, v30, v68);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v68);
    _os_log_impl(&_mh_execute_header, v23, v24, "Storage Controller: Saving record with modify block recordID: %s, type: %s...", v26, 0x16u);
    swift_arrayDestroy();
    a1 = v55;

    v10 = v54;
  }

  else
  {
    sub_1002833F4(v21, type metadata accessor for CustodianRecord);
  }

  v33 = v58;
  v32 = v59;
  (*(v58 + 16))(v10, v66 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v59);
  Dependency.wrappedValue.getter();
  (*(v33 + 8))(v10, v32);
  v59 = sub_1000080F8(v68, v68[3]);
  v34 = v65;
  v35 = v63;
  v63(a1);
  v36 = v57;
  sub_10028338C(a1, v57, type metadata accessor for CustodianRecord);
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = (v16 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_100283458(v36, v41 + v37, type metadata accessor for CustodianRecord);
  *(v41 + v38) = v66;
  v42 = (v41 + v39);
  v43 = v64;
  *v42 = v61;
  v42[1] = v43;
  *(v41 + v40) = v62;
  v44 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v44 = v35;
  v44[1] = v34;
  v45 = *v59;
  v46 = qword_1003D7EB0;

  if (v46 != -1)
  {
    swift_once();
  }

  if (*(v67 + *(v60 + 48)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v47 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v47 = &qword_1003FA9C0;
  }

  v48 = *v47;
  v49 = v47[1];

  v50 = sub_1002E2BC4(v48, v49);

  v51 = [v50 privateCloudDatabase];

  v52 = v67;
  sub_100174A80(v67, v51, sub_1002836A8, v41);

  sub_1002833F4(v52, type metadata accessor for CustodianRecord);
  return sub_10000839C(v68);
}

uint64_t sub_100278BBC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a6;
  v64 = a3;
  v60 = a5;
  v61 = a4;
  v62 = a2;
  v7 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  __chkstk_darwin(v7);
  v10 = &v54 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for BeneficiaryInfoRecord();
  v56 = *(v65 - 8);
  v16 = *(v56 + 64);
  v17 = __chkstk_darwin(v65);
  v57 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v67 = &v54 - v19;
  __chkstk_darwin(v18);
  v21 = &v54 - v20;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAAE8);
  sub_10028338C(a1, v21, type metadata accessor for BeneficiaryInfoRecord);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v54 = v10;
    v26 = v25;
    v27 = swift_slowAlloc();
    v55 = a1;
    v68[0] = v27;
    *v26 = 136315394;
    (*(v12 + 16))(v15, &v21[*(v65 + 32)], v11);
    sub_1002833F4(v21, type metadata accessor for BeneficiaryInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v12 + 8))(v15, v11);
    v31 = sub_10021145C(v28, v30, v68);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v68);
    _os_log_impl(&_mh_execute_header, v23, v24, "Storage Controller: Saving record with modify block recordID: %s, type: %s...", v26, 0x16u);
    swift_arrayDestroy();
    a1 = v55;

    v10 = v54;
  }

  else
  {
    sub_1002833F4(v21, type metadata accessor for BeneficiaryInfoRecord);
  }

  v33 = v58;
  v32 = v59;
  (*(v58 + 16))(v10, v66 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v59);
  Dependency.wrappedValue.getter();
  (*(v33 + 8))(v10, v32);
  v59 = sub_1000080F8(v68, v68[3]);
  v34 = v64;
  v35 = v62;
  v62(a1);
  v36 = v57;
  sub_10028338C(a1, v57, type metadata accessor for BeneficiaryInfoRecord);
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = (v16 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_100283458(v36, v41 + v37, type metadata accessor for BeneficiaryInfoRecord);
  *(v41 + v38) = v66;
  v42 = (v41 + v39);
  v43 = v63;
  *v42 = v60;
  v42[1] = v43;
  *(v41 + v40) = v61;
  v44 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v44 = v35;
  v44[1] = v34;
  v45 = *v59;
  v46 = qword_1003D7EB0;

  if (v46 != -1)
  {
    swift_once();
  }

  if (*(v67 + *(v65 + 40)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v47 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v47 = &qword_1003FA9F0;
  }

  v48 = *v47;
  v49 = v47[1];

  v50 = sub_1002E2BC4(v48, v49);

  v51 = [v50 privateCloudDatabase];

  v52 = v67;
  sub_100175958(v67, v51, sub_100282F60, v41);

  sub_1002833F4(v52, type metadata accessor for BeneficiaryInfoRecord);
  return sub_10000839C(v68);
}

uint64_t sub_1002792B4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a6;
  v64 = a3;
  v60 = a5;
  v61 = a4;
  v62 = a2;
  v7 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  __chkstk_darwin(v7);
  v10 = &v54 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for InheritanceInvitationRecord();
  v56 = *(v65 - 8);
  v16 = *(v56 + 64);
  v17 = __chkstk_darwin(v65);
  v57 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v67 = &v54 - v19;
  __chkstk_darwin(v18);
  v21 = &v54 - v20;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAAE8);
  sub_10028338C(a1, v21, type metadata accessor for InheritanceInvitationRecord);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v54 = v10;
    v26 = v25;
    v27 = swift_slowAlloc();
    v55 = a1;
    v68[0] = v27;
    *v26 = 136315394;
    (*(v12 + 16))(v15, &v21[*(v65 + 36)], v11);
    sub_1002833F4(v21, type metadata accessor for InheritanceInvitationRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v12 + 8))(v15, v11);
    v31 = sub_10021145C(v28, v30, v68);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v68);
    _os_log_impl(&_mh_execute_header, v23, v24, "Storage Controller: Saving record with modify block recordID: %s, type: %s...", v26, 0x16u);
    swift_arrayDestroy();
    a1 = v55;

    v10 = v54;
  }

  else
  {
    sub_1002833F4(v21, type metadata accessor for InheritanceInvitationRecord);
  }

  v33 = v58;
  v32 = v59;
  (*(v58 + 16))(v10, v66 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v59);
  Dependency.wrappedValue.getter();
  (*(v33 + 8))(v10, v32);
  v59 = sub_1000080F8(v68, v68[3]);
  v34 = v64;
  v35 = v62;
  v62(a1);
  v36 = v57;
  sub_10028338C(a1, v57, type metadata accessor for InheritanceInvitationRecord);
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = (v16 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_100283458(v36, v41 + v37, type metadata accessor for InheritanceInvitationRecord);
  *(v41 + v38) = v66;
  v42 = (v41 + v39);
  v43 = v63;
  *v42 = v60;
  v42[1] = v43;
  *(v41 + v40) = v61;
  v44 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v44 = v35;
  v44[1] = v34;
  v45 = *v59;
  v46 = qword_1003D7EB0;

  if (v46 != -1)
  {
    swift_once();
  }

  if (*(v67 + *(v65 + 44)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v47 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v47 = &qword_1003FA9F0;
  }

  v48 = *v47;
  v49 = v47[1];

  v50 = sub_1002E2BC4(v48, v49);

  v51 = [v50 privateCloudDatabase];

  v52 = v67;
  sub_100175C50(v67, v51, sub_1002834C0, v41);

  sub_1002833F4(v52, type metadata accessor for InheritanceInvitationRecord);
  return sub_10000839C(v68);
}

uint64_t sub_1002799AC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a6;
  v64 = a3;
  v60 = a5;
  v61 = a4;
  v62 = a2;
  v7 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  __chkstk_darwin(v7);
  v10 = &v54 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for BenefactorInfoRecord();
  v56 = *(v65 - 8);
  v16 = *(v56 + 64);
  v17 = __chkstk_darwin(v65);
  v57 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v67 = &v54 - v19;
  __chkstk_darwin(v18);
  v21 = &v54 - v20;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAAE8);
  sub_10028338C(a1, v21, type metadata accessor for BenefactorInfoRecord);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v54 = v10;
    v26 = v25;
    v27 = swift_slowAlloc();
    v55 = a1;
    v68[0] = v27;
    *v26 = 136315394;
    (*(v12 + 16))(v15, &v21[*(v65 + 28)], v11);
    sub_1002833F4(v21, type metadata accessor for BenefactorInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v12 + 8))(v15, v11);
    v31 = sub_10021145C(v28, v30, v68);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v68);
    _os_log_impl(&_mh_execute_header, v23, v24, "Storage Controller: Saving record with modify block recordID: %s, type: %s...", v26, 0x16u);
    swift_arrayDestroy();
    a1 = v55;

    v10 = v54;
  }

  else
  {
    sub_1002833F4(v21, type metadata accessor for BenefactorInfoRecord);
  }

  v33 = v58;
  v32 = v59;
  (*(v58 + 16))(v10, v66 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v59);
  Dependency.wrappedValue.getter();
  (*(v33 + 8))(v10, v32);
  v59 = sub_1000080F8(v68, v68[3]);
  v34 = v64;
  v35 = v62;
  v62(a1);
  v36 = v57;
  sub_10028338C(a1, v57, type metadata accessor for BenefactorInfoRecord);
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = (v16 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_100283458(v36, v41 + v37, type metadata accessor for BenefactorInfoRecord);
  *(v41 + v38) = v66;
  v42 = (v41 + v39);
  v43 = v63;
  *v42 = v60;
  v42[1] = v43;
  *(v41 + v40) = v61;
  v44 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v44 = v35;
  v44[1] = v34;
  v45 = *v59;
  v46 = qword_1003D7EB0;

  if (v46 != -1)
  {
    swift_once();
  }

  if (*(v67 + *(v65 + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v47 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v47 = &qword_1003FA9F0;
  }

  v48 = *v47;
  v49 = v47[1];

  v50 = sub_1002E2BC4(v48, v49);

  v51 = [v50 privateCloudDatabase];

  v52 = v67;
  sub_100175F48(v67, v51, sub_1002831C8, v41);

  sub_1002833F4(v52, type metadata accessor for BenefactorInfoRecord);
  return sub_10000839C(v68);
}

uint64_t sub_10027A0A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v152 = a8;
  v151 = a7;
  v164 = a6;
  v165 = a3;
  v167 = a4;
  v168 = a5;
  v169 = a2;
  v150 = type metadata accessor for DispatchWorkItemFlags();
  v149 = *(v150 - 8);
  v9 = *(v149 + 64);
  __chkstk_darwin(v150);
  v147 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for DispatchQoS();
  v146 = *(v148 - 8);
  v11 = *(v146 + 64);
  __chkstk_darwin(v148);
  v145 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for DispatchTime();
  v144 = *(v155 - 8);
  v13 = *(v144 + 64);
  v14 = __chkstk_darwin(v155);
  v142 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v143 = &v134 - v16;
  v141 = type metadata accessor for DispatchQoS.QoSClass();
  v140 = *(v141 - 8);
  v17 = *(v140 + 64);
  __chkstk_darwin(v141);
  v139 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&qword_1003D9270, &qword_10033ECF0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v160 = &v134 - v21;
  v166 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v158 = *(v166 - 8);
  v22 = *(v158 + 64);
  __chkstk_darwin(v166);
  v24 = &v134 - v23;
  v163 = type metadata accessor for UUID();
  v162 = *(v163 - 1);
  v25 = *(v162 + 64);
  __chkstk_darwin(v163);
  v161 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for CustodianshipInfoRecord();
  v154 = *(v159 - 8);
  v27 = *(v154 + 64);
  v28 = __chkstk_darwin(v159);
  v153 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v28);
  v138 = &v134 - v30;
  v31 = __chkstk_darwin(v29);
  v136 = &v134 - v32;
  v33 = __chkstk_darwin(v31);
  v137 = &v134 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v134 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v134 - v39;
  __chkstk_darwin(v38);
  v42 = &v134 - v41;
  v43 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43);
  v157 = (&v134 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45);
  v48 = (&v134 - v47);
  sub_100012D04(a1, &v134 - v47, &unk_1003DA0E0, &unk_10033F1D0);
  v156 = v43;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v166 = *v48;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100008D04(v49, qword_1003FAAE8);
    sub_10028338C(v169, v37, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      aBlock[0] = v158;
      *v52 = 136315650;
      v53 = v162;
      v54 = v161;
      v55 = v163;
      (*(v162 + 16))(v161, v37, v163);
      sub_1002833F4(v37, type metadata accessor for CustodianshipInfoRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      (*(v53 + 8))(v54, v55);
      v59 = sub_10021145C(v56, v58, aBlock);

      *(v52 + 4) = v59;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, aBlock);
      *(v52 + 22) = 2112;
      swift_errorRetain();
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 24) = v60;
      v61 = v135;
      *v135 = v60;
      _os_log_impl(&_mh_execute_header, v50, v51, "Storage Controller: Failed to save record with modification to cloud, recordID: %s, type: %s, error: %@", v52, 0x20u);
      sub_100008D3C(v61, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_1002833F4(v37, type metadata accessor for CustodianshipInfoRecord);
    }

    v73 = v160;
    v74 = v159;
    if (v164 <= 2 && (swift_getErrorValue(), (v75 = sub_1002DE99C(v176)) != 0))
    {
      v76 = v75;
      type metadata accessor for CKError(0);
      v175 = 14;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100282F14(&qword_1003DA8D0, type metadata accessor for CKError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v77 = aBlock[0];
      v175 = aBlock[0];
      _BridgedStoredNSError.code.getter();

      v78 = sub_1002DF114(v174, v76);
      if (v78)
      {

        v79 = sub_1002DEE74(v76);
        v80 = v153;
        if (v79)
        {
          v81 = *(v169 + *(v74 + 36));
          v82 = v79;
          sub_1000F80E0(v82, v81, v73);
          (*(v154 + 56))(v73, 0, 1, v74);
          v108 = v137;
          sub_100283458(v73, v137, type metadata accessor for CustodianshipInfoRecord);
          v109 = v136;
          sub_10028338C(v108, v136, type metadata accessor for CustodianshipInfoRecord);
          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = v109;
            v113 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            aBlock[0] = v169;
            *v113 = 136315394;
            v114 = v162;
            v115 = v76;
            v116 = v161;
            v117 = v163;
            (*(v162 + 16))(v161, v112, v163);
            sub_1002833F4(v112, type metadata accessor for CustodianshipInfoRecord);
            sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
            v118 = dispatch thunk of CustomStringConvertible.description.getter();
            v120 = v119;
            v121 = v116;
            v76 = v115;
            (*(v114 + 8))(v121, v117);
            v122 = sub_10021145C(v118, v120, aBlock);

            *(v113 + 4) = v122;
            *(v113 + 12) = 2080;
            *(v113 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, aBlock);
            _os_log_impl(&_mh_execute_header, v110, v111, "Storage Controller: Trying to resave after conflict resolution serverRecordID: %s, type: %s", v113, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
            sub_1002833F4(v109, type metadata accessor for CustodianshipInfoRecord);
          }

          v123 = v137;
          sub_100277DDC(v137, v151, v152, v164 + 1, v167, v168);

          return sub_1002833F4(v123, type metadata accessor for CustodianshipInfoRecord);
        }
      }

      else
      {
        v80 = v153;
      }

      if (sub_1002DF0EC(v76) || sub_1002DF0F4(v76) || sub_1002DF0FC(v76) || sub_1002DF104(v76) || sub_1002DF10C(v76))
      {
        sub_1002DEFEC();
        sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
        v88 = v140;
        v89 = v139;
        v90 = v141;
        (*(v140 + 104))(v139, enum case for DispatchQoS.QoSClass.default(_:), v141);
        v162 = static OS_dispatch_queue.global(qos:)();
        (*(v88 + 8))(v89, v90);
        v91 = v142;
        static DispatchTime.now()();
        v161 = v76;
        v92 = v143;
        + infix(_:_:)();
        v163 = *(v144 + 8);
        (v163)(v91, v155);
        v93 = v138;
        sub_10028338C(v169, v138, type metadata accessor for CustodianshipInfoRecord);
        v94 = (*(v154 + 80) + 16) & ~*(v154 + 80);
        v95 = (v27 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
        v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
        v97 = (v96 + 23) & 0xFFFFFFFFFFFFFFF8;
        v98 = swift_allocObject();
        sub_100283458(v93, v98 + v94, type metadata accessor for CustodianshipInfoRecord);
        *(v98 + v95) = v165;
        v99 = (v98 + v96);
        v100 = v152;
        *v99 = v151;
        v99[1] = v100;
        *(v98 + v97) = v164;
        v101 = (v98 + ((v97 + 15) & 0xFFFFFFFFFFFFFFF8));
        v102 = v168;
        *v101 = v167;
        v101[1] = v102;
        v172 = sub_100282ED0;
        v173 = v98;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        v171 = &unk_1003B1AB8;
        v103 = _Block_copy(aBlock);

        v104 = v145;
        static DispatchQoS.unspecified.getter();
        v175 = _swiftEmptyArrayStorage;
        sub_100282F14(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000383E4();
        v105 = v147;
        v106 = v150;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v107 = v162;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v103);

        (*(v149 + 8))(v105, v106);
        (*(v146 + 8))(v104, v148);
        (v163)(v92, v155);
      }

      sub_10028338C(v169, v80, type metadata accessor for CustodianshipInfoRecord);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v126 = 136315394;
        v127 = v162;
        v128 = v161;
        v129 = v163;
        (*(v162 + 16))(v161, v80, v163);
        sub_1002833F4(v80, type metadata accessor for CustodianshipInfoRecord);
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
        v130 = dispatch thunk of CustomStringConvertible.description.getter();
        v132 = v131;
        (*(v127 + 8))(v128, v129);
        v133 = sub_10021145C(v130, v132, aBlock);

        *(v126 + 4) = v133;
        *(v126 + 12) = 2080;
        *(v126 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, aBlock);
        _os_log_impl(&_mh_execute_header, v124, v125, "Storage Controller: No resolution so return error recordID: %s, type: %s", v126, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_1002833F4(v80, type metadata accessor for CustodianshipInfoRecord);
      }

      v83 = v157;
      *v157 = v166;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v167(v83);
    }

    else
    {
      v83 = v157;
      *v157 = v166;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v167(v83);
    }

    return sub_100008D3C(v83, &unk_1003DA0E0, &unk_10033F1D0);
  }

  sub_100283458(v48, v42, type metadata accessor for CustodianshipInfoRecord);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100008D04(v62, qword_1003FAAE8);
  sub_10028338C(v169, v40, type metadata accessor for CustodianshipInfoRecord);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    aBlock[0] = v169;
    *v65 = 136315394;
    v66 = v162;
    v67 = v161;
    v68 = v163;
    (*(v162 + 16))(v161, v40, v163);
    sub_1002833F4(v40, type metadata accessor for CustodianshipInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    (*(v66 + 8))(v67, v68);
    v72 = sub_10021145C(v69, v71, aBlock);

    *(v65 + 4) = v72;
    *(v65 + 12) = 2080;
    *(v65 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, aBlock);
    _os_log_impl(&_mh_execute_header, v63, v64, "Storage Controller: Successfully saved record with modification to cloud, recordID: %s, type: %s", v65, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1002833F4(v40, type metadata accessor for CustodianshipInfoRecord);
  }

  v85 = v158;
  v86 = v166;
  (*(v158 + 16))(v24, v165 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v166);
  Dependency.wrappedValue.getter();
  (*(v85 + 8))(v24, v86);
  v87 = *sub_1000080F8(aBlock, v171);
  sub_10017EB20(v42, 0, 2, v167, v168);
  sub_1002833F4(v42, type metadata accessor for CustodianshipInfoRecord);
  return sub_10000839C(aBlock);
}

uint64_t sub_10027B738(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v156 = a8;
  v155 = a7;
  v167 = a6;
  v168 = a3;
  v170 = a4;
  v171 = a5;
  v172 = a2;
  v154 = type metadata accessor for DispatchWorkItemFlags();
  v153 = *(v154 - 8);
  v9 = *(v153 + 64);
  __chkstk_darwin(v154);
  v151 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for DispatchQoS();
  v150 = *(v152 - 8);
  v11 = *(v150 + 64);
  __chkstk_darwin(v152);
  v149 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for DispatchTime();
  v161 = *(v158 - 8);
  v13 = *(v161 + 64);
  v14 = __chkstk_darwin(v158);
  v147 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v148 = &v137 - v16;
  v146 = type metadata accessor for DispatchQoS.QoSClass();
  v145 = *(v146 - 8);
  v17 = *(v145 + 64);
  __chkstk_darwin(v146);
  v144 = &v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v142 = &v137 - v21;
  v169 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v162 = *(v169 - 8);
  v22 = *(v162 + 64);
  __chkstk_darwin(v169);
  v24 = &v137 - v23;
  v166 = type metadata accessor for UUID();
  v165 = *(v166 - 1);
  v25 = v165[8];
  __chkstk_darwin(v166);
  v164 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for CustodianRecord();
  v157 = *(v163 - 8);
  v27 = *(v157 + 64);
  v28 = __chkstk_darwin(v163);
  v139 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v28);
  v143 = &v137 - v30;
  v31 = __chkstk_darwin(v29);
  v140 = &v137 - v32;
  v33 = __chkstk_darwin(v31);
  v141 = &v137 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v137 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v137 - v39;
  __chkstk_darwin(v38);
  v42 = &v137 - v41;
  v43 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43);
  v160 = (&v137 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45);
  v48 = (&v137 - v47);
  sub_100012D04(a1, &v137 - v47, &unk_1003DA200, &unk_10033FA80);
  v159 = v43;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v169 = *v48;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100008D04(v49, qword_1003FAAE8);
    sub_10028338C(v172, v37, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      aBlock[0] = v162;
      *v52 = 136315650;
      v53 = v165;
      v54 = v164;
      v55 = v166;
      (v165[2])(v164, v37, v166);
      sub_1002833F4(v37, type metadata accessor for CustodianRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v56 = v51;
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      (v53[1])(v54, v55);
      v60 = sub_10021145C(v57, v59, aBlock);

      *(v52 + 4) = v60;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, aBlock);
      *(v52 + 22) = 2112;
      swift_errorRetain();
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 24) = v61;
      v62 = v138;
      *v138 = v61;
      _os_log_impl(&_mh_execute_header, v50, v56, "Storage Controller: Failed to save record with modification to cloud, recordID: %s, type: %s, error: %@", v52, 0x20u);
      sub_100008D3C(v62, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_1002833F4(v37, type metadata accessor for CustodianRecord);
    }

    v74 = v163;
    if (v167 <= 2 && (swift_getErrorValue(), (v75 = sub_1002DE99C(v179)) != 0))
    {
      v76 = v75;
      type metadata accessor for CKError(0);
      v178 = 14;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100282F14(&qword_1003DA8D0, type metadata accessor for CKError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v77 = aBlock[0];
      v178 = aBlock[0];
      _BridgedStoredNSError.code.getter();

      v78 = sub_1002DF114(v177, v76);
      if (v78)
      {

        v79 = sub_1002DEE74(v76);
        v80 = v161;
        if (v79)
        {
          v81 = *(v172 + *(v74 + 48));
          v82 = v79;
          v83 = v142;
          sub_1000EF6D0(v82, v81, v142);
          (*(v157 + 56))(v83, 0, 1, v74);
          v110 = v83;
          v111 = v141;
          sub_100283458(v110, v141, type metadata accessor for CustodianRecord);
          v112 = v140;
          sub_10028338C(v111, v140, type metadata accessor for CustodianRecord);
          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            v172 = swift_slowAlloc();
            aBlock[0] = v172;
            *v115 = 136315394;
            v116 = v165;
            v117 = v76;
            v118 = v164;
            v119 = v166;
            (v165[2])(v164, v112, v166);
            sub_1002833F4(v112, type metadata accessor for CustodianRecord);
            sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
            v120 = dispatch thunk of CustomStringConvertible.description.getter();
            v122 = v121;
            v123 = v118;
            v76 = v117;
            (v116[1])(v123, v119);
            v124 = sub_10021145C(v120, v122, aBlock);

            *(v115 + 4) = v124;
            *(v115 + 12) = 2080;
            *(v115 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, aBlock);
            _os_log_impl(&_mh_execute_header, v113, v114, "Storage Controller: Trying to resave after conflict resolution serverRecordID: %s, type: %s", v115, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
            sub_1002833F4(v112, type metadata accessor for CustodianRecord);
          }

          v125 = v141;
          sub_1002784C8(v141, v155, v156, v167 + 1, v170, v171);

          return sub_1002833F4(v125, type metadata accessor for CustodianRecord);
        }
      }

      else
      {
        v80 = v161;
      }

      if (sub_1002DF0EC(v76) || sub_1002DF0F4(v76) || sub_1002DF0FC(v76) || sub_1002DF104(v76) || sub_1002DF10C(v76))
      {
        sub_1002DEFEC();
        sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
        v84 = v145;
        v85 = v144;
        v86 = v146;
        (*(v145 + 104))(v144, enum case for DispatchQoS.QoSClass.default(_:), v146);
        v87 = static OS_dispatch_queue.global(qos:)();
        (*(v84 + 8))(v85, v86);
        v88 = v147;
        static DispatchTime.now()();
        v89 = v148;
        + infix(_:_:)();
        v90 = *(v80 + 8);
        v161 = v80 + 8;
        v166 = v90;
        v165 = v76;
        (v90)(v88, v158);
        v91 = v143;
        sub_10028338C(v172, v143, type metadata accessor for CustodianRecord);
        v92 = (*(v157 + 80) + 16) & ~*(v157 + 80);
        v93 = (v27 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
        v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
        v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
        v96 = swift_allocObject();
        sub_100283458(v91, v96 + v92, type metadata accessor for CustodianRecord);
        *(v96 + v93) = v168;
        v97 = (v96 + v94);
        v98 = v156;
        *v97 = v155;
        v97[1] = v98;
        *(v96 + v95) = v167;
        v99 = (v96 + ((v95 + 15) & 0xFFFFFFFFFFFFFFF8));
        v100 = v171;
        *v99 = v170;
        v99[1] = v100;
        v175 = sub_1002839D0;
        v176 = v96;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        v174 = &unk_1003B1C98;
        v101 = _Block_copy(aBlock);

        v102 = v149;
        static DispatchQoS.unspecified.getter();
        v178 = _swiftEmptyArrayStorage;
        sub_100282F14(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000383E4();
        v103 = v151;
        v104 = v154;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v101);

        (*(v153 + 8))(v103, v104);
        (*(v150 + 8))(v102, v152);
        (v166)(v89, v158);
      }

      v126 = v139;
      sub_10028338C(v172, v139, type metadata accessor for CustodianRecord);
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v129 = 136315394;
        v130 = v165;
        v131 = v164;
        v132 = v166;
        (v165[2])(v164, v126, v166);
        sub_1002833F4(v126, type metadata accessor for CustodianRecord);
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
        v133 = dispatch thunk of CustomStringConvertible.description.getter();
        v135 = v134;
        (v130[1])(v131, v132);
        v136 = sub_10021145C(v133, v135, aBlock);

        *(v129 + 4) = v136;
        *(v129 + 12) = 2080;
        *(v129 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, aBlock);
        _os_log_impl(&_mh_execute_header, v127, v128, "Storage Controller: No resolution so return error recordID: %s, type: %s", v129, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_1002833F4(v126, type metadata accessor for CustodianRecord);
      }

      v106 = v160;
      *v160 = v169;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v170(v106);
    }

    else
    {
      v106 = v160;
      *v160 = v169;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v170(v106);
    }

    return sub_100008D3C(v106, &unk_1003DA200, &unk_10033FA80);
  }

  sub_100283458(v48, v42, type metadata accessor for CustodianRecord);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_100008D04(v63, qword_1003FAAE8);
  sub_10028338C(v172, v40, type metadata accessor for CustodianRecord);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    aBlock[0] = v172;
    *v66 = 136315394;
    v67 = v165;
    v68 = v164;
    v69 = v166;
    (v165[2])(v164, v40, v166);
    sub_1002833F4(v40, type metadata accessor for CustodianRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v71;
    (v67[1])(v68, v69);
    v73 = sub_10021145C(v70, v72, aBlock);

    *(v66 + 4) = v73;
    *(v66 + 12) = 2080;
    *(v66 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, aBlock);
    _os_log_impl(&_mh_execute_header, v64, v65, "Storage Controller: Successfully saved record with modification to cloud, recordID: %s, type: %s", v66, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1002833F4(v40, type metadata accessor for CustodianRecord);
  }

  v107 = v162;
  v108 = v169;
  (*(v162 + 16))(v24, v168 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v169);
  Dependency.wrappedValue.getter();
  (*(v107 + 8))(v24, v108);
  v109 = *sub_1000080F8(aBlock, v174);
  sub_10017DF74(v42, 0, 2, v170, v171);
  sub_1002833F4(v42, type metadata accessor for CustodianRecord);
  return sub_10000839C(aBlock);
}

uint64_t sub_10027CDE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v152 = a8;
  v151 = a7;
  v164 = a6;
  v165 = a3;
  v168 = a4;
  v169 = a5;
  v170 = a2;
  v167 = a1;
  v150 = type metadata accessor for DispatchWorkItemFlags();
  v149 = *(v150 - 8);
  v8 = *(v149 + 64);
  __chkstk_darwin(v150);
  v147 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for DispatchQoS();
  v146 = *(v148 - 8);
  v10 = *(v146 + 64);
  __chkstk_darwin(v148);
  v145 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for DispatchTime();
  v144 = *(v154 - 8);
  v12 = *(v144 + 64);
  v13 = __chkstk_darwin(v154);
  v143 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v136 - v15;
  v142 = type metadata accessor for DispatchQoS.QoSClass();
  v141 = *(v142 - 8);
  v17 = *(v141 + 64);
  __chkstk_darwin(v142);
  v140 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&unk_1003E4F30, &unk_1003444E0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v159 = &v136 - v21;
  v158 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v157 = *(v158 - 8);
  v22 = *(v157 + 64);
  __chkstk_darwin(v158);
  v24 = &v136 - v23;
  v163 = type metadata accessor for UUID();
  v162 = *(v163 - 8);
  v25 = v162[8];
  __chkstk_darwin(v163);
  v161 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for BeneficiaryInfoRecord();
  v153 = *(v166 - 8);
  v27 = *(v153 + 64);
  v28 = __chkstk_darwin(v166);
  v160 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v28);
  v139 = &v136 - v30;
  v31 = __chkstk_darwin(v29);
  v137 = &v136 - v32;
  v33 = __chkstk_darwin(v31);
  v138 = &v136 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v136 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v136 - v39;
  __chkstk_darwin(v38);
  v42 = &v136 - v41;
  v43 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43);
  v156 = (&v136 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45);
  v48 = (&v136 - v47);
  sub_100012D04(v167, &v136 - v47, &unk_1003E10A0, &unk_100344480);
  v155 = v43;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v158 = v16;
    v167 = *v48;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100008D04(v49, qword_1003FAAE8);
    sub_10028338C(v170, v37, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      aBlock[0] = v157;
      *v52 = 136315650;
      v53 = v162;
      v54 = v161;
      v55 = v163;
      (v162[2])(v161, &v37[*(v166 + 32)], v163);
      sub_1002833F4(v37, type metadata accessor for BeneficiaryInfoRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      (v53[1])(v54, v55);
      v59 = sub_10021145C(v56, v58, aBlock);

      *(v52 + 4) = v59;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, aBlock);
      *(v52 + 22) = 2112;
      swift_errorRetain();
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 24) = v60;
      v61 = v136;
      *v136 = v60;
      _os_log_impl(&_mh_execute_header, v50, v51, "Storage Controller: Failed to save record with modification to cloud, recordID: %s, type: %s, error: %@", v52, 0x20u);
      sub_100008D3C(v61, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_1002833F4(v37, type metadata accessor for BeneficiaryInfoRecord);
    }

    v73 = v160;
    v74 = v159;
    if (v164 <= 2 && (swift_getErrorValue(), (v75 = sub_1002DE99C(v176)) != 0))
    {
      v76 = v75;
      v77 = sub_1002DECC8(v75);
      v78 = v166;
      if (v77)
      {
        v79 = sub_1002DEE74(v76);
        if (v79)
        {
          v80 = *(v170 + *(v78 + 40));
          v81 = v79;
          sub_1001E4CD8(v81, v80, v74);
          (*(v153 + 56))(v74, 0, 1, v78);
          v107 = v138;
          sub_100283458(v74, v138, type metadata accessor for BeneficiaryInfoRecord);
          v108 = v137;
          sub_10028338C(v107, v137, type metadata accessor for BeneficiaryInfoRecord);
          v109 = Logger.logObject.getter();
          v110 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = v108;
            v112 = swift_slowAlloc();
            v170 = swift_slowAlloc();
            aBlock[0] = v170;
            *v112 = 136315394;
            v113 = v162;
            v114 = v111 + *(v78 + 32);
            v115 = v76;
            v116 = v161;
            v117 = v163;
            (v162[2])(v161, v114, v163);
            sub_1002833F4(v111, type metadata accessor for BeneficiaryInfoRecord);
            sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
            v118 = dispatch thunk of CustomStringConvertible.description.getter();
            v120 = v119;
            v121 = v116;
            v76 = v115;
            (v113[1])(v121, v117);
            v122 = sub_10021145C(v118, v120, aBlock);

            *(v112 + 4) = v122;
            *(v112 + 12) = 2080;
            *(v112 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, aBlock);
            _os_log_impl(&_mh_execute_header, v109, v110, "Storage Controller: Trying to resave after conflict resolution serverRecordID: %s, type: %s", v112, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
            sub_1002833F4(v108, type metadata accessor for BeneficiaryInfoRecord);
          }

          v123 = v138;
          sub_100278BBC(v138, v151, v152, v164 + 1, v168, v169);

          return sub_1002833F4(v123, type metadata accessor for BeneficiaryInfoRecord);
        }
      }

      if (sub_1002DF0EC(v76) || sub_1002DF0F4(v76) || sub_1002DF0FC(v76) || sub_1002DF104(v76) || sub_1002DF10C(v76))
      {
        sub_1002DEFEC();
        sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
        v82 = v141;
        v83 = v140;
        v84 = v142;
        (*(v141 + 104))(v140, enum case for DispatchQoS.QoSClass.default(_:), v142);
        v163 = static OS_dispatch_queue.global(qos:)();
        (*(v82 + 8))(v83, v84);
        v85 = v143;
        static DispatchTime.now()();
        v162 = v76;
        v86 = v158;
        + infix(_:_:)();
        v166 = *(v144 + 8);
        (v166)(v85, v154);
        v87 = v139;
        sub_10028338C(v170, v139, type metadata accessor for BeneficiaryInfoRecord);
        v88 = (*(v153 + 80) + 16) & ~*(v153 + 80);
        v89 = (v27 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
        v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
        v91 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
        v92 = swift_allocObject();
        sub_100283458(v87, v92 + v88, type metadata accessor for BeneficiaryInfoRecord);
        *(v92 + v89) = v165;
        v93 = (v92 + v90);
        v94 = v152;
        *v93 = v151;
        v93[1] = v94;
        *(v92 + v91) = v164;
        v95 = (v92 + ((v91 + 15) & 0xFFFFFFFFFFFFFFF8));
        v96 = v169;
        *v95 = v168;
        v95[1] = v96;
        v174 = sub_100283198;
        v175 = v92;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        v173 = &unk_1003B1B30;
        v97 = _Block_copy(aBlock);

        v98 = v145;
        static DispatchQoS.unspecified.getter();
        v171 = _swiftEmptyArrayStorage;
        sub_100282F14(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000383E4();
        v99 = v147;
        v100 = v150;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v101 = v163;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v97);

        (*(v149 + 8))(v99, v100);
        (*(v146 + 8))(v98, v148);
        (v166)(v86, v154);
      }

      sub_10028338C(v170, v73, type metadata accessor for BeneficiaryInfoRecord);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v126 = 136315394;
        v127 = v162;
        v128 = v73 + *(v78 + 32);
        v129 = v161;
        v130 = v73;
        v131 = v163;
        (v162[2])(v161, v128, v163);
        sub_1002833F4(v130, type metadata accessor for BeneficiaryInfoRecord);
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
        v132 = dispatch thunk of CustomStringConvertible.description.getter();
        v134 = v133;
        (v127[1])(v129, v131);
        v135 = sub_10021145C(v132, v134, aBlock);

        *(v126 + 4) = v135;
        *(v126 + 12) = 2080;
        *(v126 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, aBlock);
        _os_log_impl(&_mh_execute_header, v124, v125, "Storage Controller: No resolution so return error recordID: %s, type: %s", v126, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_1002833F4(v73, type metadata accessor for BeneficiaryInfoRecord);
      }

      v103 = v156;
      *v156 = v167;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v168(v103);
    }

    else
    {
      v103 = v156;
      *v156 = v167;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v168(v103);
    }

    return sub_100008D3C(v103, &unk_1003E10A0, &unk_100344480);
  }

  sub_100283458(v48, v42, type metadata accessor for BeneficiaryInfoRecord);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100008D04(v62, qword_1003FAAE8);
  sub_10028338C(v170, v40, type metadata accessor for BeneficiaryInfoRecord);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    aBlock[0] = v170;
    *v65 = 136315394;
    v66 = v162;
    v67 = v161;
    v68 = v163;
    (v162[2])(v161, &v40[*(v166 + 32)], v163);
    sub_1002833F4(v40, type metadata accessor for BeneficiaryInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    (v66[1])(v67, v68);
    v72 = sub_10021145C(v69, v71, aBlock);

    *(v65 + 4) = v72;
    *(v65 + 12) = 2080;
    *(v65 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, aBlock);
    _os_log_impl(&_mh_execute_header, v63, v64, "Storage Controller: Successfully saved record with modification to cloud, recordID: %s, type: %s", v65, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1002833F4(v40, type metadata accessor for BeneficiaryInfoRecord);
  }

  v104 = v157;
  v105 = v158;
  (*(v157 + 16))(v24, v165 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v158);
  Dependency.wrappedValue.getter();
  (*(v104 + 8))(v24, v105);
  v106 = *sub_1000080F8(aBlock, v173);
  sub_10017F6CC(v42, 0, 2, v168, v169);
  sub_1002833F4(v42, type metadata accessor for BeneficiaryInfoRecord);
  return sub_10000839C(aBlock);
}

uint64_t sub_10027E3D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v152 = a8;
  v151 = a7;
  v164 = a6;
  v165 = a3;
  v168 = a4;
  v169 = a5;
  v170 = a2;
  v167 = a1;
  v150 = type metadata accessor for DispatchWorkItemFlags();
  v149 = *(v150 - 8);
  v8 = *(v149 + 64);
  __chkstk_darwin(v150);
  v147 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for DispatchQoS();
  v146 = *(v148 - 8);
  v10 = *(v146 + 64);
  __chkstk_darwin(v148);
  v145 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for DispatchTime();
  v144 = *(v154 - 8);
  v12 = *(v144 + 64);
  v13 = __chkstk_darwin(v154);
  v143 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v136 - v15;
  v142 = type metadata accessor for DispatchQoS.QoSClass();
  v141 = *(v142 - 8);
  v17 = *(v141 + 64);
  __chkstk_darwin(v142);
  v140 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&qword_1003E4F40, &unk_1003446D0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v159 = &v136 - v21;
  v158 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v157 = *(v158 - 8);
  v22 = *(v157 + 64);
  __chkstk_darwin(v158);
  v24 = &v136 - v23;
  v163 = type metadata accessor for UUID();
  v162 = *(v163 - 8);
  v25 = v162[8];
  __chkstk_darwin(v163);
  v161 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for InheritanceInvitationRecord();
  v153 = *(v166 - 8);
  v27 = *(v153 + 64);
  v28 = __chkstk_darwin(v166);
  v160 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v28);
  v139 = &v136 - v30;
  v31 = __chkstk_darwin(v29);
  v137 = &v136 - v32;
  v33 = __chkstk_darwin(v31);
  v138 = &v136 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v136 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v136 - v39;
  __chkstk_darwin(v38);
  v42 = &v136 - v41;
  v43 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43);
  v156 = (&v136 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45);
  v48 = (&v136 - v47);
  sub_100012D04(v167, &v136 - v47, &qword_1003E1290, &unk_1003444C0);
  v155 = v43;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v158 = v16;
    v167 = *v48;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100008D04(v49, qword_1003FAAE8);
    sub_10028338C(v170, v37, type metadata accessor for InheritanceInvitationRecord);
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      aBlock[0] = v157;
      *v52 = 136315650;
      v53 = v162;
      v54 = v161;
      v55 = v163;
      (v162[2])(v161, &v37[*(v166 + 36)], v163);
      sub_1002833F4(v37, type metadata accessor for InheritanceInvitationRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      (v53[1])(v54, v55);
      v59 = sub_10021145C(v56, v58, aBlock);

      *(v52 + 4) = v59;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, aBlock);
      *(v52 + 22) = 2112;
      swift_errorRetain();
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 24) = v60;
      v61 = v136;
      *v136 = v60;
      _os_log_impl(&_mh_execute_header, v50, v51, "Storage Controller: Failed to save record with modification to cloud, recordID: %s, type: %s, error: %@", v52, 0x20u);
      sub_100008D3C(v61, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_1002833F4(v37, type metadata accessor for InheritanceInvitationRecord);
    }

    v73 = v160;
    v74 = v159;
    if (v164 <= 2 && (swift_getErrorValue(), (v75 = sub_1002DE99C(v176)) != 0))
    {
      v76 = v75;
      v77 = sub_1002DECC8(v75);
      v78 = v166;
      if (v77)
      {
        v79 = sub_1002DEE74(v76);
        if (v79)
        {
          v80 = *(v170 + *(v78 + 44));
          v81 = v79;
          sub_1001EDB14(v81, v80, v74);
          (*(v153 + 56))(v74, 0, 1, v78);
          v107 = v138;
          sub_100283458(v74, v138, type metadata accessor for InheritanceInvitationRecord);
          v108 = v137;
          sub_10028338C(v107, v137, type metadata accessor for InheritanceInvitationRecord);
          v109 = Logger.logObject.getter();
          v110 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = v108;
            v112 = swift_slowAlloc();
            v170 = swift_slowAlloc();
            aBlock[0] = v170;
            *v112 = 136315394;
            v113 = v162;
            v114 = v111 + *(v78 + 36);
            v115 = v76;
            v116 = v161;
            v117 = v163;
            (v162[2])(v161, v114, v163);
            sub_1002833F4(v111, type metadata accessor for InheritanceInvitationRecord);
            sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
            v118 = dispatch thunk of CustomStringConvertible.description.getter();
            v120 = v119;
            v121 = v116;
            v76 = v115;
            (v113[1])(v121, v117);
            v122 = sub_10021145C(v118, v120, aBlock);

            *(v112 + 4) = v122;
            *(v112 + 12) = 2080;
            *(v112 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, aBlock);
            _os_log_impl(&_mh_execute_header, v109, v110, "Storage Controller: Trying to resave after conflict resolution serverRecordID: %s, type: %s", v112, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
            sub_1002833F4(v108, type metadata accessor for InheritanceInvitationRecord);
          }

          v123 = v138;
          sub_1002792B4(v138, v151, v152, v164 + 1, v168, v169);

          return sub_1002833F4(v123, type metadata accessor for InheritanceInvitationRecord);
        }
      }

      if (sub_1002DF0EC(v76) || sub_1002DF0F4(v76) || sub_1002DF0FC(v76) || sub_1002DF104(v76) || sub_1002DF10C(v76))
      {
        sub_1002DEFEC();
        sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
        v82 = v141;
        v83 = v140;
        v84 = v142;
        (*(v141 + 104))(v140, enum case for DispatchQoS.QoSClass.default(_:), v142);
        v163 = static OS_dispatch_queue.global(qos:)();
        (*(v82 + 8))(v83, v84);
        v85 = v143;
        static DispatchTime.now()();
        v162 = v76;
        v86 = v158;
        + infix(_:_:)();
        v166 = *(v144 + 8);
        (v166)(v85, v154);
        v87 = v139;
        sub_10028338C(v170, v139, type metadata accessor for InheritanceInvitationRecord);
        v88 = (*(v153 + 80) + 16) & ~*(v153 + 80);
        v89 = (v27 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
        v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
        v91 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
        v92 = swift_allocObject();
        sub_100283458(v87, v92 + v88, type metadata accessor for InheritanceInvitationRecord);
        *(v92 + v89) = v165;
        v93 = (v92 + v90);
        v94 = v152;
        *v93 = v151;
        v93[1] = v94;
        *(v92 + v91) = v164;
        v95 = (v92 + ((v91 + 15) & 0xFFFFFFFFFFFFFFF8));
        v96 = v169;
        *v95 = v168;
        v95[1] = v96;
        v174 = sub_100283678;
        v175 = v92;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        v173 = &unk_1003B1C20;
        v97 = _Block_copy(aBlock);

        v98 = v145;
        static DispatchQoS.unspecified.getter();
        v171 = _swiftEmptyArrayStorage;
        sub_100282F14(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000383E4();
        v99 = v147;
        v100 = v150;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v101 = v163;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v97);

        (*(v149 + 8))(v99, v100);
        (*(v146 + 8))(v98, v148);
        (v166)(v86, v154);
      }

      sub_10028338C(v170, v73, type metadata accessor for InheritanceInvitationRecord);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v126 = 136315394;
        v127 = v162;
        v128 = v73 + *(v78 + 36);
        v129 = v161;
        v130 = v73;
        v131 = v163;
        (v162[2])(v161, v128, v163);
        sub_1002833F4(v130, type metadata accessor for InheritanceInvitationRecord);
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
        v132 = dispatch thunk of CustomStringConvertible.description.getter();
        v134 = v133;
        (v127[1])(v129, v131);
        v135 = sub_10021145C(v132, v134, aBlock);

        *(v126 + 4) = v135;
        *(v126 + 12) = 2080;
        *(v126 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, aBlock);
        _os_log_impl(&_mh_execute_header, v124, v125, "Storage Controller: No resolution so return error recordID: %s, type: %s", v126, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_1002833F4(v73, type metadata accessor for InheritanceInvitationRecord);
      }

      v103 = v156;
      *v156 = v167;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v168(v103);
    }

    else
    {
      v103 = v156;
      *v156 = v167;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v168(v103);
    }

    return sub_100008D3C(v103, &qword_1003E1290, &unk_1003444C0);
  }

  sub_100283458(v48, v42, type metadata accessor for InheritanceInvitationRecord);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100008D04(v62, qword_1003FAAE8);
  sub_10028338C(v170, v40, type metadata accessor for InheritanceInvitationRecord);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    aBlock[0] = v170;
    *v65 = 136315394;
    v66 = v162;
    v67 = v161;
    v68 = v163;
    (v162[2])(v161, &v40[*(v166 + 36)], v163);
    sub_1002833F4(v40, type metadata accessor for InheritanceInvitationRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    (v66[1])(v67, v68);
    v72 = sub_10021145C(v69, v71, aBlock);

    *(v65 + 4) = v72;
    *(v65 + 12) = 2080;
    *(v65 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, aBlock);
    _os_log_impl(&_mh_execute_header, v63, v64, "Storage Controller: Successfully saved record with modification to cloud, recordID: %s, type: %s", v65, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1002833F4(v40, type metadata accessor for InheritanceInvitationRecord);
  }

  v104 = v157;
  v105 = v158;
  (*(v157 + 16))(v24, v165 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v158);
  Dependency.wrappedValue.getter();
  (*(v104 + 8))(v24, v105);
  v106 = *sub_1000080F8(aBlock, v173);
  sub_10017FAB0(v42, 0, 2, v168, v169);
  sub_1002833F4(v42, type metadata accessor for InheritanceInvitationRecord);
  return sub_10000839C(aBlock);
}

uint64_t sub_10027F9C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v152 = a8;
  v151 = a7;
  v164 = a6;
  v165 = a3;
  v168 = a4;
  v169 = a5;
  v170 = a2;
  v167 = a1;
  v150 = type metadata accessor for DispatchWorkItemFlags();
  v149 = *(v150 - 8);
  v8 = *(v149 + 64);
  __chkstk_darwin(v150);
  v147 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for DispatchQoS();
  v146 = *(v148 - 8);
  v10 = *(v146 + 64);
  __chkstk_darwin(v148);
  v145 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for DispatchTime();
  v144 = *(v154 - 8);
  v12 = *(v144 + 64);
  v13 = __chkstk_darwin(v154);
  v143 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v136 - v15;
  v142 = type metadata accessor for DispatchQoS.QoSClass();
  v141 = *(v142 - 8);
  v17 = *(v141 + 64);
  __chkstk_darwin(v142);
  v140 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&unk_1003E1DE0, &qword_1003444D8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v159 = &v136 - v21;
  v158 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v157 = *(v158 - 8);
  v22 = *(v157 + 64);
  __chkstk_darwin(v158);
  v24 = &v136 - v23;
  v163 = type metadata accessor for UUID();
  v162 = *(v163 - 8);
  v25 = v162[8];
  __chkstk_darwin(v163);
  v161 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for BenefactorInfoRecord();
  v153 = *(v166 - 8);
  v27 = *(v153 + 64);
  v28 = __chkstk_darwin(v166);
  v160 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v28);
  v139 = &v136 - v30;
  v31 = __chkstk_darwin(v29);
  v137 = &v136 - v32;
  v33 = __chkstk_darwin(v31);
  v138 = &v136 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v136 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v136 - v39;
  __chkstk_darwin(v38);
  v42 = &v136 - v41;
  v43 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43);
  v156 = (&v136 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45);
  v48 = (&v136 - v47);
  sub_100012D04(v167, &v136 - v47, &unk_1003E1DD0, &qword_1003444D0);
  v155 = v43;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v158 = v16;
    v167 = *v48;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100008D04(v49, qword_1003FAAE8);
    sub_10028338C(v170, v37, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      aBlock[0] = v157;
      *v52 = 136315650;
      v53 = v162;
      v54 = v161;
      v55 = v163;
      (v162[2])(v161, &v37[*(v166 + 28)], v163);
      sub_1002833F4(v37, type metadata accessor for BenefactorInfoRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      (v53[1])(v54, v55);
      v59 = sub_10021145C(v56, v58, aBlock);

      *(v52 + 4) = v59;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, aBlock);
      *(v52 + 22) = 2112;
      swift_errorRetain();
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 24) = v60;
      v61 = v136;
      *v136 = v60;
      _os_log_impl(&_mh_execute_header, v50, v51, "Storage Controller: Failed to save record with modification to cloud, recordID: %s, type: %s, error: %@", v52, 0x20u);
      sub_100008D3C(v61, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_1002833F4(v37, type metadata accessor for BenefactorInfoRecord);
    }

    v73 = v160;
    v74 = v159;
    if (v164 <= 2 && (swift_getErrorValue(), (v75 = sub_1002DE99C(v176)) != 0))
    {
      v76 = v75;
      v77 = sub_1002DECC8(v75);
      v78 = v166;
      if (v77)
      {
        v79 = sub_1002DEE74(v76);
        if (v79)
        {
          v80 = *(v170 + *(v78 + 36));
          v81 = v79;
          sub_1001E17B0(v81, v80, v74);
          (*(v153 + 56))(v74, 0, 1, v78);
          v107 = v138;
          sub_100283458(v74, v138, type metadata accessor for BenefactorInfoRecord);
          v108 = v137;
          sub_10028338C(v107, v137, type metadata accessor for BenefactorInfoRecord);
          v109 = Logger.logObject.getter();
          v110 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = v108;
            v112 = swift_slowAlloc();
            v170 = swift_slowAlloc();
            aBlock[0] = v170;
            *v112 = 136315394;
            v113 = v162;
            v114 = v111 + *(v78 + 28);
            v115 = v76;
            v116 = v161;
            v117 = v163;
            (v162[2])(v161, v114, v163);
            sub_1002833F4(v111, type metadata accessor for BenefactorInfoRecord);
            sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
            v118 = dispatch thunk of CustomStringConvertible.description.getter();
            v120 = v119;
            v121 = v116;
            v76 = v115;
            (v113[1])(v121, v117);
            v122 = sub_10021145C(v118, v120, aBlock);

            *(v112 + 4) = v122;
            *(v112 + 12) = 2080;
            *(v112 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, aBlock);
            _os_log_impl(&_mh_execute_header, v109, v110, "Storage Controller: Trying to resave after conflict resolution serverRecordID: %s, type: %s", v112, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
            sub_1002833F4(v108, type metadata accessor for BenefactorInfoRecord);
          }

          v123 = v138;
          sub_1002799AC(v138, v151, v152, v164 + 1, v168, v169);

          return sub_1002833F4(v123, type metadata accessor for BenefactorInfoRecord);
        }
      }

      if (sub_1002DF0EC(v76) || sub_1002DF0F4(v76) || sub_1002DF0FC(v76) || sub_1002DF104(v76) || sub_1002DF10C(v76))
      {
        sub_1002DEFEC();
        sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
        v82 = v141;
        v83 = v140;
        v84 = v142;
        (*(v141 + 104))(v140, enum case for DispatchQoS.QoSClass.default(_:), v142);
        v163 = static OS_dispatch_queue.global(qos:)();
        (*(v82 + 8))(v83, v84);
        v85 = v143;
        static DispatchTime.now()();
        v162 = v76;
        v86 = v158;
        + infix(_:_:)();
        v166 = *(v144 + 8);
        (v166)(v85, v154);
        v87 = v139;
        sub_10028338C(v170, v139, type metadata accessor for BenefactorInfoRecord);
        v88 = (*(v153 + 80) + 16) & ~*(v153 + 80);
        v89 = (v27 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
        v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
        v91 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
        v92 = swift_allocObject();
        sub_100283458(v87, v92 + v88, type metadata accessor for BenefactorInfoRecord);
        *(v92 + v89) = v165;
        v93 = (v92 + v90);
        v94 = v152;
        *v93 = v151;
        v93[1] = v94;
        *(v92 + v91) = v164;
        v95 = (v92 + ((v91 + 15) & 0xFFFFFFFFFFFFFFF8));
        v96 = v169;
        *v95 = v168;
        v95[1] = v96;
        v174 = sub_100283360;
        v175 = v92;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        v173 = &unk_1003B1BA8;
        v97 = _Block_copy(aBlock);

        v98 = v145;
        static DispatchQoS.unspecified.getter();
        v171 = _swiftEmptyArrayStorage;
        sub_100282F14(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000383E4();
        v99 = v147;
        v100 = v150;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v101 = v163;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v97);

        (*(v149 + 8))(v99, v100);
        (*(v146 + 8))(v98, v148);
        (v166)(v86, v154);
      }

      sub_10028338C(v170, v73, type metadata accessor for BenefactorInfoRecord);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v126 = 136315394;
        v127 = v162;
        v128 = v73 + *(v78 + 28);
        v129 = v161;
        v130 = v73;
        v131 = v163;
        (v162[2])(v161, v128, v163);
        sub_1002833F4(v130, type metadata accessor for BenefactorInfoRecord);
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
        v132 = dispatch thunk of CustomStringConvertible.description.getter();
        v134 = v133;
        (v127[1])(v129, v131);
        v135 = sub_10021145C(v132, v134, aBlock);

        *(v126 + 4) = v135;
        *(v126 + 12) = 2080;
        *(v126 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, aBlock);
        _os_log_impl(&_mh_execute_header, v124, v125, "Storage Controller: No resolution so return error recordID: %s, type: %s", v126, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_1002833F4(v73, type metadata accessor for BenefactorInfoRecord);
      }

      v103 = v156;
      *v156 = v167;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v168(v103);
    }

    else
    {
      v103 = v156;
      *v156 = v167;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v168(v103);
    }

    return sub_100008D3C(v103, &unk_1003E1DD0, &qword_1003444D0);
  }

  sub_100283458(v48, v42, type metadata accessor for BenefactorInfoRecord);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100008D04(v62, qword_1003FAAE8);
  sub_10028338C(v170, v40, type metadata accessor for BenefactorInfoRecord);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    aBlock[0] = v170;
    *v65 = 136315394;
    v66 = v162;
    v67 = v161;
    v68 = v163;
    (v162[2])(v161, &v40[*(v166 + 28)], v163);
    sub_1002833F4(v40, type metadata accessor for BenefactorInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    (v66[1])(v67, v68);
    v72 = sub_10021145C(v69, v71, aBlock);

    *(v65 + 4) = v72;
    *(v65 + 12) = 2080;
    *(v65 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, aBlock);
    _os_log_impl(&_mh_execute_header, v63, v64, "Storage Controller: Successfully saved record with modification to cloud, recordID: %s, type: %s", v65, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1002833F4(v40, type metadata accessor for BenefactorInfoRecord);
  }

  v104 = v157;
  v105 = v158;
  (*(v157 + 16))(v24, v165 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v158);
  Dependency.wrappedValue.getter();
  (*(v104 + 8))(v24, v105);
  v106 = *sub_1000080F8(aBlock, v173);
  sub_10017FE94(v42, 0, 2, v168, v169);
  sub_1002833F4(v42, type metadata accessor for BenefactorInfoRecord);
  return sub_10000839C(aBlock);
}

void sub_100280FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a2;
  v35 = a5;
  v32 = a3;
  v33 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustodianshipInfoRecord();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAE8);
  sub_10028338C(a1, v18, type metadata accessor for CustodianshipInfoRecord);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31 = a7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v30 = a6;
    v36 = v24;
    *v23 = 136315394;
    (*(v11 + 16))(v14, v18, v10);
    sub_1002833F4(v18, type metadata accessor for CustodianshipInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v11 + 8))(v14, v10);
    v28 = sub_10021145C(v25, v27, &v36);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, &v36);
    _os_log_impl(&_mh_execute_header, v20, v21, "Storage Controller: Trying to resave after a delay following a recoverable/transient error, recordID: %s, type: %s", v23, 0x16u);
    swift_arrayDestroy();
    a6 = v30;

    a7 = v31;
  }

  else
  {
    sub_1002833F4(v18, type metadata accessor for CustodianshipInfoRecord);
  }

  if (__OFADD__(v35, 1))
  {
    __break(1u);
  }

  else
  {
    sub_100277DDC(a1, v32, v33, v35 + 1, a6, a7);
  }
}

void sub_100281324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a2;
  v35 = a5;
  v32 = a3;
  v33 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustodianRecord();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAE8);
  sub_10028338C(a1, v18, type metadata accessor for CustodianRecord);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31 = a7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v30 = a6;
    v36 = v24;
    *v23 = 136315394;
    (*(v11 + 16))(v14, v18, v10);
    sub_1002833F4(v18, type metadata accessor for CustodianRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v11 + 8))(v14, v10);
    v28 = sub_10021145C(v25, v27, &v36);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, &v36);
    _os_log_impl(&_mh_execute_header, v20, v21, "Storage Controller: Trying to resave after a delay following a recoverable/transient error, recordID: %s, type: %s", v23, 0x16u);
    swift_arrayDestroy();
    a6 = v30;

    a7 = v31;
  }

  else
  {
    sub_1002833F4(v18, type metadata accessor for CustodianRecord);
  }

  if (__OFADD__(v35, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1002784C8(a1, v32, v33, v35 + 1, a6, a7);
  }
}

uint64_t sub_10028169C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a2;
  v35 = a5;
  v32 = a3;
  v33 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BeneficiaryInfoRecord();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAE8);
  v36 = a1;
  sub_10028338C(a1, v18, type metadata accessor for BeneficiaryInfoRecord);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31 = a7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v30 = a6;
    v37 = v24;
    *v23 = 136315394;
    (*(v11 + 16))(v14, &v18[*(v15 + 32)], v10);
    sub_1002833F4(v18, type metadata accessor for BeneficiaryInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v11 + 8))(v14, v10);
    v28 = sub_10021145C(v25, v27, &v37);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, &v37);
    _os_log_impl(&_mh_execute_header, v20, v21, "Storage Controller: Trying to resave after a delay following a recoverable/transient error, recordID: %s, type: %s", v23, 0x16u);
    swift_arrayDestroy();
    a6 = v30;

    a7 = v31;
  }

  else
  {
    sub_1002833F4(v18, type metadata accessor for BeneficiaryInfoRecord);
  }

  result = v36;
  if (!__OFADD__(v35, 1))
  {
    return sub_100278BBC(v36, v32, v33, v35 + 1, a6, a7);
  }

  __break(1u);
  return result;
}

uint64_t sub_100281A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a2;
  v35 = a5;
  v32 = a3;
  v33 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InheritanceInvitationRecord();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAE8);
  v36 = a1;
  sub_10028338C(a1, v18, type metadata accessor for InheritanceInvitationRecord);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31 = a7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v30 = a6;
    v37 = v24;
    *v23 = 136315394;
    (*(v11 + 16))(v14, &v18[*(v15 + 36)], v10);
    sub_1002833F4(v18, type metadata accessor for InheritanceInvitationRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v11 + 8))(v14, v10);
    v28 = sub_10021145C(v25, v27, &v37);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, &v37);
    _os_log_impl(&_mh_execute_header, v20, v21, "Storage Controller: Trying to resave after a delay following a recoverable/transient error, recordID: %s, type: %s", v23, 0x16u);
    swift_arrayDestroy();
    a6 = v30;

    a7 = v31;
  }

  else
  {
    sub_1002833F4(v18, type metadata accessor for InheritanceInvitationRecord);
  }

  result = v36;
  if (!__OFADD__(v35, 1))
  {
    return sub_1002792B4(v36, v32, v33, v35 + 1, a6, a7);
  }

  __break(1u);
  return result;
}

uint64_t sub_100281D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a2;
  v35 = a5;
  v32 = a3;
  v33 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BenefactorInfoRecord();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAE8);
  v36 = a1;
  sub_10028338C(a1, v18, type metadata accessor for BenefactorInfoRecord);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31 = a7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v30 = a6;
    v37 = v24;
    *v23 = 136315394;
    (*(v11 + 16))(v14, &v18[*(v15 + 28)], v10);
    sub_1002833F4(v18, type metadata accessor for BenefactorInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v11 + 8))(v14, v10);
    v28 = sub_10021145C(v25, v27, &v37);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, &v37);
    _os_log_impl(&_mh_execute_header, v20, v21, "Storage Controller: Trying to resave after a delay following a recoverable/transient error, recordID: %s, type: %s", v23, 0x16u);
    swift_arrayDestroy();
    a6 = v30;

    a7 = v31;
  }

  else
  {
    sub_1002833F4(v18, type metadata accessor for BenefactorInfoRecord);
  }

  result = v36;
  if (!__OFADD__(v35, 1))
  {
    return sub_1002799AC(v36, v32, v33, v35 + 1, a6, a7);
  }

  __break(1u);
  return result;
}

uint64_t sub_100282110(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_100005814(&unk_1003D9260, &unk_10033ECE0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  v15 = *a2;
  (*(v11 + 16))(&v19 - v13, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  sub_100277DDC(a3, a4, a5, 0, sub_100282CB8, v17);
}

unint64_t sub_100282280()
{
  result = qword_1003E4F08;
  if (!qword_1003E4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E4F08);
  }

  return result;
}

uint64_t sub_1002822D4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CustodianshipInfoRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAAB8);
  sub_10028338C(a1, v7, type metadata accessor for CustodianshipInfoRecord);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = *(v4 + 20);
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
    v17 = sub_10021145C(v14, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Custodian invitation is not accepted, custodianID: %s", v11, 0xCu);
    sub_10000839C(v12);
  }

  else
  {

    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
  }

  if (a2)
  {
    return 4294967233;
  }

  else
  {
    return 65;
  }
}

uint64_t sub_10028253C(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = type metadata accessor for CustodianshipInfoRecord();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v27[-v9];
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAB8);
  sub_10028338C(a1, v10, type metadata accessor for CustodianshipInfoRecord);
  sub_10028338C(a1, v8, type metadata accessor for CustodianshipInfoRecord);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v2;
    v2 = v14;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v2 = 134218242;
    v16 = *&v10[*(v4 + 28)];
    sub_1002833F4(v10, type metadata accessor for CustodianshipInfoRecord);
    *(v2 + 4) = v16;
    *(v2 + 12) = 2080;
    v17 = *(v4 + 20);
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_1002833F4(v8, type metadata accessor for CustodianshipInfoRecord);
    v21 = sub_10021145C(v18, v20, &v29);

    *(v2 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Custodian invitation is other status: %ld for record with custodianID: %s", v2, 0x16u);
    sub_10000839C(v15);

    LOBYTE(v2) = v28;
  }

  else
  {
    sub_1002833F4(v10, type metadata accessor for CustodianshipInfoRecord);

    sub_1002833F4(v8, type metadata accessor for CustodianshipInfoRecord);
  }

  v22 = *(a1 + *(v4 + 28));
  if (v22 == 5)
  {
    v23 = (v2 & 1) == 0;
    v24 = 73;
    v25 = -55;
  }

  else
  {
    v23 = (v2 & 1) == 0;
    if (v22 == 3)
    {
      v24 = 72;
      v25 = -56;
    }

    else
    {
      v24 = 74;
      v25 = -54;
    }
  }

  if (v23)
  {
    return v24;
  }

  else
  {
    return v25;
  }
}

uint64_t sub_100282854()
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100008D04(v0, qword_1003FAAB8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Inferring record setup version...", v3, 2u);
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Record is not CustodianRecord, defaulting to unknown setup version", v6, 2u);
  }

  return 0;
}

uint64_t sub_10028299C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000082A8;

  return sub_1002725DC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100282A70()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[7], v4);
  v6 = *(v0 + v2 + v1[8] + 8);

  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100282B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CustodianshipInfoRecord() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100273C40(a1, v6, a2);
}

uint64_t sub_100282C24()
{
  v1 = sub_100005814(&unk_1003D9260, &unk_10033ECE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100282CB8(uint64_t a1)
{
  v2 = *(*(sub_100005814(&unk_1003D9260, &unk_10033ECE0) - 8) + 80);

  return sub_100277C64(a1);
}

uint64_t sub_100282D64()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v8(v6 + v1[7], v7);
  v9 = *(v6 + v1[8] + 8);

  sub_100012324(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v10 = *(v0 + v3);

  v11 = *(v0 + v4 + 8);

  v12 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_100282EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100282F14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100282F8C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v7 = *(v0 + v2 + v1[5] + 8);

  v8 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  v10 = (v19 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v1[12] + 8);

  v14 = *(v3 + v1[14] + 8);

  v15 = *(v0 + v10);

  v16 = *(v0 + v11 + 8);

  v17 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16);
}

uint64_t sub_1002831F4()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = *(v6 + v1[7] + 8);

  v8(v6 + v1[9], v7);
  sub_100012324(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v10 = *(v0 + v3);

  v11 = *(v0 + v4 + 8);

  v12 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_10028338C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002833F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100283458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002834EC()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = *(v6 + v1[7] + 8);

  v10 = *(v6 + v1[8] + 8);

  v11 = *(v6 + v1[9] + 8);

  v8(v6 + v1[11], v7);
  sub_100012324(*(v6 + v1[12]), *(v6 + v1[12] + 8));
  v12 = *(v0 + v3);

  v13 = *(v0 + v4 + 8);

  v14 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_1002836D4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v7);
  v11 = *(v3 + v9);
  v12 = *(v3 + v8);
  v13 = *(v3 + v8 + 8);
  v14 = (v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  return a3(a1, v3 + v6, v10, v12, v13, v11, v15, v16);
}

uint64_t sub_1002837B4()
{
  v1 = type metadata accessor for CustodianRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);
  v8 = *(v0 + v2 + v1[6] + 8);

  v9 = *(v0 + v2 + v1[7] + 8);

  v10 = *(v0 + v2 + v1[8] + 8);

  v11 = (v0 + v2 + v1[10]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100012324(*v11, v12);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));
  v13 = *(v4 + v1[13] + 8);

  v14 = *(v4 + v1[14] + 8);

  v15 = v1[16];
  if (!(*(v6 + 48))(v4 + v15, 1, v5))
  {
    v7(v4 + v15, v5);
  }

  v16 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (((v17 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v16);

  v20 = *(v0 + v17 + 8);

  v21 = *(v0 + v18 + 8);

  return _swift_deallocObject(v0, v18 + 16);
}

uint64_t sub_1002839FC(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v5);
  v9 = *(v2 + v6);
  v10 = *(v2 + v6 + 8);
  v11 = *(v2 + v7);
  v12 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return a2(v2 + v4, v8, v9, v10, v11, v13, v14);
}

uint64_t sub_100283B2C()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - v5 + 8;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAAB8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v14);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s - CDP not enabled, posting a CDP repair CFU.", v10, 0xCu);
    sub_10000839C(v11);
  }

  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpFollowUpHandler, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  sub_100260F04(1u, 0);
  return sub_10000839C(v14);
}

uint64_t sub_100283EC8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100283F94, 0, 0);
}

uint64_t sub_100283F94()
{
  v23 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Checking device escrow record state.", v4, 0xCu);
    sub_10000839C(v5);
  }

  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 80);
  (*(v7 + 16))(v6, *(v0 + 72) + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpController, v8);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v6, v8);
  v9 = *sub_1000080F8((v0 + 16), *(v0 + 40));
  v10 = sub_10013C498();
  sub_10000839C((v0 + 16));
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, v22);
    *(v13 + 12) = 2080;
    *(v0 + 56) = v10;
    type metadata accessor for CDPEscrowRecordViabilityState(0);
    v14 = String.init<A>(describing:)();
    v16 = sub_10021145C(v14, v15, v22);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s - Checked device escrow record state and got: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v17 = *(v0 + 64);
  v18 = sub_100284E1C(v10, v17);
  sub_100284AFC(v18, v17);
  if (sub_10013DA94(v10))
  {
    swift_willThrow();
    v18 = sub_100286E94(*(v0 + 64));
  }

  v19 = *(v0 + 96);

  v20 = *(v0 + 8);

  return v20(v18);
}

uint64_t sub_100284370(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10028443C, 0, 0);
}

uint64_t sub_10028443C()
{
  v12 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Checking device escrow record state.", v4, 0xCu);
    sub_10000839C(v5);
  }

  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
  (*(v7 + 16))(v6, v0[9] + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpController, v8);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v6, v8);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_100284650;

  return sub_10013EB90();
}

uint64_t sub_100284650(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_100284924;
  }

  else
  {
    v5 = sub_100284764;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100284764()
{
  v15 = v0;
  v1 = v0[13];
  sub_10000839C(v0 + 2);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[15];
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v14);
    *(v5 + 12) = 2080;
    v0[7] = v4;
    type metadata accessor for CDPEscrowRecordViabilityState(0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10021145C(v6, v7, &v14);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Checked device escrow record state and got: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[8];
  v10 = sub_100284E1C(v0[15], v9);
  sub_100284AFC(v10, v9);
  v11 = v0[12];

  v12 = v0[1];

  return v12(v10);
}

uint64_t sub_100284924()
{
  v15 = v0;
  v1 = v0[16];
  v2 = v0[13];
  sub_10000839C(v0 + 2);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v14);
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - Escrow record check failed, returning .unknown. Error: %@", v7, 0x16u);
    sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v9);
  }

  else
  {
  }

  v11 = v0[12];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_100284AFC(uint64_t a1, void *a2)
{
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14[-1] - v7;
  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  v10 = String._bridgeToObjectiveC()();
  [a2 setAccountProperty:isa forKey:v10];

  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__accountStore, v4);
  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  v11 = *sub_1000080F8(v14, v14[3]);
  sub_10015BC80(a2);
  return sub_10000839C(v14);
}

uint64_t sub_100284E1C(uint64_t result, void *a2)
{
  if (result <= 3)
  {
    if (result <= 1)
    {
      if (!result)
      {
        return result;
      }

      if (result == 1)
      {
        sub_100286358(a2);
        return 1;
      }

      return 0;
    }

    if (result != 2)
    {
      return result;
    }

LABEL_20:
    v8 = result;
    sub_100285008(a2, 0);
    return v8;
  }

  if (result > 5)
  {
    if (result == 6)
    {
LABEL_6:
      v2 = result;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100008D04(v3, qword_1003FAAB8);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v9 = v7;
        *v6 = 136315138;
        *(v6 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v9);
        _os_log_impl(&_mh_execute_header, v4, v5, "%s - Return secure terms needed state without handling", v6, 0xCu);
        sub_10000839C(v7);
      }

      return v2;
    }

    if (result != 7)
    {
      if (result == 8)
      {
        goto LABEL_6;
      }

      return 0;
    }

    goto LABEL_20;
  }

  if (result == 4)
  {
    sub_100285008(a2, 1);
    return 4;
  }

  return result;
}

void sub_100285008(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34[-v9];
  v11 = sub_100005814(&qword_1003E3B30, qword_100346D00);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34[-v14];
  (*(v12 + 16))(&v34[-v14], v3 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__deviceState, v11);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v15, v11);
  v16 = [objc_allocWithZone(AKDevice) init];
  LODWORD(v11) = [v16 isProtectedWithPasscode];

  sub_10000839C(&v39);
  if (v11)
  {
    v17 = String._bridgeToObjectiveC()();
    v18 = [a1 accountPropertyForKey:v17];

    if (v18)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    v39 = v37;
    v40 = v38;
    if (*(&v38 + 1))
    {
      sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v24 = v36;
        sub_1002855F8(v36);
        if (v24)
        {
          v25 = v24;
          sub_100285F4C(a1, v4 & 1, v25);

LABEL_21:
          (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__accountStore, v6);
          Dependency.wrappedValue.getter();
          (*(v7 + 8))(v10, v6);
          v33 = *sub_1000080F8(&v39, *(&v40 + 1));
          sub_10015BC80(a1);

          sub_10000839C(&v39);
          return;
        }

LABEL_16:
        if (qword_1003D7F48 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100008D04(v26, qword_1003FAAB8);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v35 = v4;
          v4 = v29;
          v30 = swift_slowAlloc();
          *&v39 = v30;
          *v4 = 136315138;
          *(v4 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v39);
          _os_log_impl(&_mh_execute_header, v27, v28, "%s - unrecoverable escrow record and failure count is missing... default to 1", v4, 0xCu);
          sub_10000839C(v30);

          LOBYTE(v4) = v35;
        }

        isa = Int._bridgeToObjectiveC()().super.super.isa;
        v32 = String._bridgeToObjectiveC()();
        [a1 setAccountProperty:isa forKey:v32];

        sub_100285B44(v4 & 1);
        v25 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      sub_100008D3C(&v39, &qword_1003D87C8, qword_100344800);
    }

    sub_1002855F8(0);
    goto LABEL_16;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAB8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v39 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v39);
    _os_log_impl(&_mh_execute_header, v20, v21, "    %s - No passcode. Not sending iCSC Loss event or posting any CFUs.", v22, 0xCu);
    sub_10000839C(v23);
  }
}

void sub_1002855F8(void *a1)
{
  v2 = v1;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  if (a1 && (sub_100016034(0, &qword_1003D8D68, NSNumber_ptr), isa = NSNumber.init(integerLiteral:)(0).super.super.isa, v10 = a1, v11 = static NSObject.== infix(_:_:)(), isa, v10, (v11 & 1) == 0))
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAB8);
    v33 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v35);
      _os_log_impl(&_mh_execute_header, v33, v28, "%s - Not posting iCSC Loss Detected event. Previous known state should be viable", v29, 0xCu);
      sub_10000839C(v30);
    }

    else
    {
      v31 = v33;
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v35);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s - Posting iCSC Loss Detected event because escrow record state transitioned from viable to unviable", v15, 0xCu);
      sub_10000839C(v16);
    }

    v17 = kAAAnalyticsiCSCLossDetectedEvent;
    (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__accountStore, v4);
    v18 = v17;
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v8, v4);
    v19 = [*(*sub_1000080F8(v35 v35[3]) + 16)];
    if (!v19 || (v20 = v19, v21 = [v19 aa_altDSID], v20, !v21))
    {
      v21 = 0;
    }

    v22 = [objc_opt_self() analyticsEventWithName:v18 altDSID:v21 flowID:0];

    sub_10000839C(v35);
    if (v22)
    {
      type metadata accessor for AAError(0);
      v34 = -4419;
      v23 = v22;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100287E08(&qword_1003D8370, type metadata accessor for AAError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v24 = v35[0];
      v25 = _convertErrorToNSError(_:)();

      [v23 updateTaskResultWithError:v25];
    }

    v26 = [objc_opt_self() reporter];
    if (v22)
    {
      [v26 sendEvent:v22];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100285B44(char a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  if (a1)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_100008D04(v10, qword_1003FAAB8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = v11;
    v15 = v14;
    v22 = swift_slowAlloc();
    v25[0] = v22;
    *v15 = 136315394;
    *(v15 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v25);
    *(v15 + 12) = 2080;
    LOBYTE(v24) = v9;
    v16 = String.init<A>(describing:)();
    v18 = v2;
    v19 = sub_10021145C(v16, v17, v25);

    *(v15 + 14) = v19;
    v2 = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s - device has passcode, posting %s CFU to verify passcode", v15, 0x16u);
    swift_arrayDestroy();
  }

  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpFollowUpHandler, v4);
  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  sub_100260F04(v9, 0);
  return sub_10000839C(v25);
}

void sub_100285F4C(void *a1, char a2, void *a3)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAB8);
  v7 = a3;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v26);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "    %s - unrecoverable escrow record, number of previous     failures: %@", v10, 0x16u);
    sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v12);
  }

  v14 = [v7 integerValue];
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v17 = String._bridgeToObjectiveC()();
    [a1 setAccountProperty:isa forKey:v17];

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v26);
      *(v20 + 12) = 2048;
      *(v20 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v18, v19, "    %s - unrecoverable escrow record,     incremented failure count to: %ld", v20, 0x16u);
      sub_10000839C(v21);
    }

    if (v15 >= 1)
    {
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v26);
        _os_log_impl(&_mh_execute_header, v22, v23, "%s - unrecoverable escrow record detected more than once, proceeding to verify passcode scenario", v24, 0xCu);
        sub_10000839C(v25);
      }

      sub_100285B44(a2 & 1);
    }
  }
}

void sub_100286358(void *a1)
{
  v2 = v1;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23[-1] - v7;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAAB8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = &unk_10033E000;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v23);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s - escrow record is available", v13, 0xCu);
    sub_10000839C(v14);
    v12 = &unk_10033E000;
  }

  sub_1002866E0();
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v16 = String._bridgeToObjectiveC()();
  [a1 setAccountProperty:isa forKey:v16];

  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__accountStore, v4);
  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  v17 = *sub_1000080F8(v23, v23[3]);
  sub_10015BC80(a1);
  sub_10000839C(v23);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23[0] = v21;
    *v20 = v12[201];
    *(v20 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v23);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s - escrow record is available - resetting previous failures to ZERO", v20, 0xCu);
    sub_10000839C(v21);
  }
}

uint64_t sub_1002866E0()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - v5 + 8;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAAB8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v14);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s - device has passcode and escrow record, clearing CFU to verify passcode", v10, 0xCu);
    sub_10000839C(v11);
  }

  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpFollowUpHandler, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  sub_100260DB8();
  return sub_10000839C(v14);
}

uint64_t sub_100286A74()
{
  v1 = OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpController;
  v2 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpFollowUpHandler;
  v4 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__accountStore;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__featureFlagStateProvider;
  v8 = sub_100005814(&qword_1003E4948, &qword_100347B50);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__deviceState;
  v10 = sub_100005814(&qword_1003E3B30, qword_100346D00);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EscrowRecordViabilityProvider()
{
  result = qword_1003E5038;
  if (!qword_1003E5038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100286CA0()
{
  sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003E5048, &qword_1003DF5B0, &qword_100343688);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_10000DAB8(319, &unk_1003E46A8, &qword_1003E03E0, &qword_100343DC0);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_10000DAB8(319, &unk_1003E3980, &qword_1003DF600, &unk_1003436A0);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_100286E94(void *a1)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAB8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v18[0] = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v18);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "    %s - escrow record check failed with error     %@", v5, 0x16u);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v7);
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = [a1 accountPropertyForKey:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v11 = v19;
      if ([v19 integerValue] > 0)
      {
        type metadata accessor for AAError(0);
        sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10033EB30;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v13;
        v14 = _convertErrorToNSError(_:)();
        *(inited + 72) = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
        *(inited + 48) = v14;
        sub_100308978(inited);
        swift_setDeallocating();
        sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
        sub_100287E08(&qword_1003D8370, type metadata accessor for AAError);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_100008D3C(v18, &qword_1003D87C8, qword_100344800);
  }

  return 1;
}

uint64_t sub_100287260(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = sub_100005814(&qword_1003E4948, &qword_100347B50);
  v2[29] = v3;
  v4 = *(v3 - 8);
  v2[30] = v4;
  v5 = *(v4 + 64) + 15;
  v2[31] = swift_task_alloc();
  v6 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v2[32] = v6;
  v7 = *(v6 - 8);
  v2[33] = v7;
  v8 = *(v7 + 64) + 15;
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_1002873C0, 0, 0);
}

uint64_t sub_1002873C0()
{
  v48 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[28];
  v5 = OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpController;
  v6 = *(v2 + 16);
  v6(v1, v4 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpController, v3);
  Dependency.wrappedValue.getter();
  v7 = *(v2 + 8);
  v7(v1, v3);
  v8 = [objc_allocWithZone(ACAccountStore) init];
  v9 = [v8 aa_primaryAppleAccount];

  if (!v9 || (v10 = [v9 aa_personID], v9, !v10))
  {
    sub_10000839C(v0 + 2);
    goto LABEL_10;
  }

  v11 = [objc_opt_self() isICDPEnabledForDSID:v10];

  sub_10000839C(v0 + 2);
  if ((v11 & 1) == 0)
  {
LABEL_10:
    v27 = v0 + 22;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAAB8);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v47);
      _os_log_impl(&_mh_execute_header, v29, v30, "%s - CDP is not enabled or has never been enabled for this account, bailing from health check...", v31, 0xCu);
      sub_10000839C(v32);
    }

    type metadata accessor for AAError(0);
    v0[23] = -16;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100287E08(&qword_1003D8370, type metadata accessor for AAError);
    goto LABEL_15;
  }

  v12 = v0[34];
  v13 = v0[32];
  v6(v12, v4 + v5, v13);
  Dependency.wrappedValue.getter();
  v7(v12, v13);
  v14 = *(*sub_1000080F8(v0 + 7, v0[10]) + 24);
  v0[24] = 0;
  v15 = [v14 isManateeAvailable:v0 + 24];
  v16 = v0[24];
  if (v15)
  {
    v18 = v0[30];
    v17 = v0[31];
    v20 = v0[28];
    v19 = v0[29];
    v21 = v16;
    sub_10000839C(v0 + 7);
    (*(v18 + 16))(v17, v20 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__featureFlagStateProvider, v19);
    Dependency.wrappedValue.getter();
    (*(v18 + 8))(v17, v19);
    v0[20] = &type metadata for AAFeatureFlags;
    v0[21] = sub_10015B62C();
    *(v0 + 136) = 6;
    v22 = isFeatureEnabled(_:)();
    sub_10000839C(v0 + 12);
    sub_10000839C(v0 + 17);
    if (v22)
    {
      v23 = swift_task_alloc();
      v0[35] = v23;
      *v23 = v0;
      v23[1] = sub_100287AD8;
      v24 = v0[27];
      v25 = v0[28];

      return sub_100284370(v24);
    }

    else
    {
      v44 = swift_task_alloc();
      v0[36] = v44;
      *v44 = v0;
      v44[1] = sub_100287C70;
      v45 = v0[27];
      v46 = v0[28];

      return sub_100283EC8(v45);
    }
  }

  v27 = v0 + 25;
  v37 = v16;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  sub_10000839C(v0 + 7);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100008D04(v38, qword_1003FAAB8);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v47);
    _os_log_impl(&_mh_execute_header, v39, v40, "%s - Manatee is not available, proceeding to post CDP repair.", v41, 0xCu);
    sub_10000839C(v42);
  }

  v43 = v0[28];
  sub_100283B2C();
  type metadata accessor for AASignInError(0);
  v0[26] = -8008;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100287E08(&qword_1003D8338, type metadata accessor for AASignInError);
LABEL_15:
  _BridgedStoredNSError.init(_:userInfo:)();
  v33 = *v27;
  swift_willThrow();
  v34 = v0[34];
  v35 = v0[31];

  v36 = v0[1];

  return v36();
}

uint64_t sub_100287AD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v11 = *v2;

  v6 = *(v4 + 272);
  v7 = *(v4 + 248);

  v9 = *(v11 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t sub_100287C70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v11 = *v2;

  v6 = *(v4 + 272);
  v7 = *(v4 + 248);

  v9 = *(v11 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t sub_100287E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100287E6C(uint64_t a1)
{
  sub_100005814(&qword_1003DF650, &unk_1003480B0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA880, &unk_10033F5F0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A40, &unk_10033F180);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A20, &unk_10033F170);
  Dependency.init(dependencyId:config:)();
  v3 = OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider_queue;
  v4 = [objc_allocWithZone(NSOperationQueue) init];
  *(v1 + v3) = v4;
  *(v1 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider_healthChecks) = a1;
  [v4 setMaxConcurrentOperationCount:1];
  return v1;
}

void sub_100288010(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v26 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    (*(v8 + 16))(v11, Strong + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__accountStore, v7);
    Dependency.wrappedValue.getter();
    (*(v8 + 8))(v11, v7);
    v14 = [*(*sub_1000080F8(v26 v26[3]) + 16)];
    if (v14)
    {

      sub_10000839C(v26);
      UUID.init()();
      v15 = UUID.uuidString.getter();
      v17 = v16;
      (*(v3 + 8))(v6, v2);

      sub_10028AE34(1, v15, v17, v13, v13, a1);
    }

    else
    {
      sub_10000839C(v26);
      sub_10030FF34();
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100008D04(v22, qword_1003FAAB8);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "No account signed in. Skipping Health Checks.", v25, 2u);
      }
    }
  }

  else
  {
    sub_10030FF34();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAB8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Lost reference to self. Aborting XPC activity Health Checks", v21, 2u);
    }
  }
}

BOOL sub_1002883FC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100005814(&qword_1003E5498, &unk_1003480D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = sub_100005814(&unk_1003DBB90, &qword_10033FC38);
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  __chkstk_darwin(v13);
  v16 = &v38 - v15;
  if (*(a2 + 16))
  {
    LODWORD(v42) = a1;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAB8);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = v12;
      v21 = v20;
      v22 = swift_slowAlloc();
      v38 = v8;
      v40 = a4;
      v23 = v22;
      *&v48[0] = v22;
      *v21 = 136315138;
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v24 = Dictionary.description.getter();
      v26 = a3;
      v27 = v9;
      v28 = sub_10021145C(v24, v25, v48);

      *(v21 + 4) = v28;
      v9 = v27;
      a3 = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "Overall Health Check failed: %s", v21, 0xCu);
      sub_10000839C(v23);
      a4 = v40;
      v8 = v38;

      v12 = v39;
    }

    if ((v42 & 1) != 0 && [objc_opt_self() isHealthCheckTTREnabled])
    {
      v39 = v12;
      v42 = a3;
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v29 = swift_allocObject();
      v40 = a4;
      v30 = v29;
      *(v29 + 16) = xmmword_1003431D0;
      sub_10028B40C();
      v30[4].super.super.isa = NSNumber.init(integerLiteral:)(1518603).super.super.isa;
      *&v45 = 0xD0000000000000AFLL;
      *(&v45 + 1) = 0x8000000100332BA0;
      *&v46 = 0xD000000000000025;
      *(&v46 + 1) = 0x8000000100332CE0;
      *v47 = 0xD000000000000086;
      *&v47[8] = 0x8000000100332C50;
      *&v47[16] = v30;
      v47[24] = 0;
      v48[0] = v45;
      v48[1] = v46;
      v49[0] = *v47;
      *(v49 + 9) = *&v47[9];
      v31 = v41;
      (*(v41 + 16))(v16, v42 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__ttrRequester, v13);
      Dependency.wrappedValue.getter();
      (*(v31 + 8))(v16, v13);
      v32 = *sub_1000080F8(v44, v44[3]);
      v33 = sub_1002DCB74(v48);
      sub_10028B458(&v45);
      v34 = v39;
      (*(v9 + 16))(v39, v32 + OBJC_IVAR____TtC13appleaccountd27TapToRadarRequestController__helper, v8);
      Dependency.wrappedValue.getter();
      (*(v9 + 8))(v34, v8);
      v35 = aBlock[0];
      aBlock[4] = sub_1002889A0;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020E828;
      aBlock[3] = &unk_1003B1DA0;
      v36 = _Block_copy(aBlock);

      [v35 silentTapToRadarWithRequest:v33 completion:v36];
      _Block_release(v36);

      sub_10000839C(v44);
    }
  }

  return sub_10030FF34();
}

void sub_1002889A0(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Health Check TTR launched successfully.", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Unable to launch TTR: %@", v3, 0xCu);
    sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);

LABEL_10:

    return;
  }
}

uint64_t sub_100288BE8(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAAB8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = a4;
    v17 = a7;
    v18 = swift_slowAlloc();
    v26 = v18;
    *v16 = 136315394;
    if (a2)
    {
      v19 = 0x656C756465686353;
    }

    else
    {
      v19 = 0x6E616D6544206E4FLL;
    }

    v20 = a1;
    v21 = a5;
    v22 = a6;
    v23 = sub_10021145C(v19, 0xE900000000000064, &v26);

    *(v16 + 4) = v23;
    a6 = v22;
    a5 = v21;
    *(v16 + 12) = 1024;
    *(v16 + 14) = v20 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "Completed pulling all cloud data before %s Health Checks: %{BOOL}d", v16, 0x12u);
    sub_10000839C(v18);
    a7 = v17;
    a4 = v25;
  }

  return sub_100288DCC(a2 & 1, a4, a5, a6, a7);
}

uint64_t sub_100288DCC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v50 = a4;
  v47 = a2;
  v52 = a1;
  v9 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v47 - v12;
  v14 = dispatch_group_create();
  v51 = swift_allocObject();
  *(v51 + 16) = &_swiftEmptyDictionarySingleton;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  (*(v10 + 16))(v13, v6 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__analyticsAccountModel, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  v16 = sub_1000080F8(v59, v59[3]);
  v17 = *v16;
  v18 = *(*v16 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel_dispatchQueue);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10028B50C;
  *(v19 + 24) = v17;
  v57 = sub_100071DCC;
  v58 = v19;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v55 = sub_10030F718;
  v56 = &unk_1003B1E40;
  v20 = _Block_copy(&aBlock);

  dispatch_sync(v18, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    sub_10000839C(v59);
    if (qword_1003D7F48 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v21 = type metadata accessor for Logger();
  sub_100008D04(v21, qword_1003FAAB8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  v24 = os_log_type_enabled(v22, v23);
  v48 = v14;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&aBlock = v26;
    *v25 = 136315138;
    if (v52)
    {
      v27 = 0x656C756465686353;
    }

    else
    {
      v27 = 0x6E616D6544206E4FLL;
    }

    v28 = sub_10021145C(v27, 0xE900000000000064, &aBlock);

    *(v25 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "Starting %s Health Checks.", v25, 0xCu);
    sub_10000839C(v26);
  }

  v29 = v51;
  v30 = *(v6 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider_healthChecks);
  v31 = *(v30 + 16);
  v32 = &OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__featureFlagStateProvider;
  v49 = v6;
  if (v31)
  {
    v51 = a5;
    v33 = *(v6 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider_queue);
    v34 = v30 + 32;
    v35 = v52 & 1;
    v36 = v47;
    do
    {
      sub_100040738(v34, &aBlock);
      v37 = swift_allocObject();
      *(v37 + 16) = v35;
      sub_10003E950(&aBlock, v37 + 24);
      *(v37 + 64) = v36;
      *(v37 + 72) = a3;
      *(v37 + 80) = v29;
      *(v37 + 88) = v15;
      v38 = type metadata accessor for AsyncOperation();
      v39 = objc_allocWithZone(v38);
      v39[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
      v40 = &v39[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
      *v40 = sub_10028B574;
      v40[1] = v37;
      v53.receiver = v39;
      v53.super_class = v38;

      v41 = objc_msgSendSuper2(&v53, "init");
      [v33 addOperation:v41];

      v34 += 40;
      --v31;
    }

    while (v31);
    a5 = v51;
    v32 = &OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__featureFlagStateProvider;
  }

  else
  {
    v35 = v52 & 1;
  }

  v42 = v49;
  v43 = *(v49 + v32[76]);
  v44 = swift_allocObject();
  *(v44 + 16) = v35;
  *(v44 + 24) = v29;
  *(v44 + 32) = v42;
  *(v44 + 40) = v50;
  *(v44 + 48) = a5;
  *(v44 + 56) = v15;
  v57 = sub_10028B5D8;
  v58 = v44;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v55 = sub_100031EF0;
  v56 = &unk_1003B1EB8;
  v45 = _Block_copy(&aBlock);

  [v43 addBarrierBlock:v45];
  _Block_release(v45);
}

uint64_t sub_1002893B0(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAB8);
  sub_100040738(a4, &v38);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  v35 = a3;
  if (os_log_type_enabled(v16, v17))
  {
    v34 = a6;
    v18 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v18 = 136315394;
    if (a3)
    {
      v19 = 0x656C756465686353;
    }

    else
    {
      v19 = 0x6E616D6544206E4FLL;
    }

    v20 = sub_10021145C(v19, 0xE900000000000064, &v37);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2080;
    sub_1000080F8(&v38, v39);
    swift_getDynamicType();
    v21 = _typeName(_:qualified:)();
    v22 = a7;
    v23 = a2;
    v24 = a8;
    v25 = a1;
    v27 = v26;
    sub_10000839C(&v38);
    v28 = sub_10021145C(v21, v27, &v37);
    a1 = v25;
    a8 = v24;
    a2 = v23;
    a7 = v22;

    *(v18 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "Starting %s Health Check - %s", v18, 0x16u);
    swift_arrayDestroy();

    a6 = v34;
  }

  else
  {

    sub_10000839C(&v38);
  }

  v29 = a4[3];
  v30 = a4[4];
  sub_1000080F8(a4, v29);
  sub_100040738(a4, &v38);
  v31 = swift_allocObject();
  *(v31 + 16) = v35 & 1;
  sub_10003E950(&v38, v31 + 24);
  *(v31 + 64) = a7;
  *(v31 + 72) = a8;
  *(v31 + 80) = a1;
  *(v31 + 88) = a2;
  v32 = *(v30 + 16);

  v32(a5, a6, sub_10028B63C, v31, v29, v30);
}

uint64_t sub_1002896B4(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v49 = a5;
    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    sub_100040738(a3, v51);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v48 = a6;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v15 = 136315650;
      if (a2)
      {
        v17 = 0x656C756465686353;
      }

      else
      {
        v17 = 0x6E616D6544206E4FLL;
      }

      v18 = sub_10021145C(v17, 0xE900000000000064, v50);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      sub_1000080F8(v51, v52);
      swift_getDynamicType();
      v19 = _typeName(_:qualified:)();
      v21 = v20;
      sub_10000839C(v51);
      v22 = sub_10021145C(v19, v21, v50);

      *(v15 + 14) = v22;
      *(v15 + 22) = 2112;
      v23 = _convertErrorToNSError(_:)();
      *(v15 + 24) = v23;
      *v16 = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s %s Health Check failed with error %@", v15, 0x20u);
      sub_100008D3C(v16, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      a6 = v48;
    }

    else
    {

      sub_10000839C(v51);
    }

    sub_1000080F8(a3, a3[3]);
    DynamicType = swift_getDynamicType();
    v35 = a3[4];
    v51[0] = DynamicType;
    v51[1] = v35;
    sub_100005814(&unk_1003E62A0, qword_100347AD8);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    v39 = _convertErrorToNSError(_:)();
    v40 = [v39 aa_partialErrorsByName];

    if (v40)
    {
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v41 + 16))
      {

        sub_10028A5B4(v41, (a4 + 16), v36, v38);

        swift_bridgeObjectRelease_n();
LABEL_23:
        swift_beginAccess();
        if (*(v49 + 16))
        {
          v44 = 1;
        }

        else
        {
          v45 = a3[3];
          v46 = a3[4];
          sub_1000080F8(a3, v45);
          v44 = (*(v46 + 24))(v45, v46);
        }

        swift_beginAccess();
        *(v49 + 16) = v44 & 1;
        return a6();
      }
    }

    swift_beginAccess();
    swift_errorRetain();
    v42 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_1002CEFC4(a1, v36, v38, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v50[0];
    swift_endAccess();
    goto LABEL_23;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100008D04(v24, qword_1003FAAB8);
  sub_100040738(a3, v51);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v27 = 136315394;
    if (a2)
    {
      v28 = 0x656C756465686353;
    }

    else
    {
      v28 = 0x6E616D6544206E4FLL;
    }

    v29 = sub_10021145C(v28, 0xE900000000000064, v50);

    *(v27 + 4) = v29;
    *(v27 + 12) = 2080;
    sub_1000080F8(v51, v52);
    swift_getDynamicType();
    v30 = _typeName(_:qualified:)();
    v32 = v31;
    sub_10000839C(v51);
    v33 = sub_10021145C(v30, v32, v50);

    *(v27 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s %s Health Check completed.", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000839C(v51);
  }

  return a6();
}

uint64_t sub_100289D08(char a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v39 = a5;
  v10 = sub_100005814(&qword_1003DA130, qword_1003480E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAB8);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  v37 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v11;
    v19 = v18;
    v34 = swift_slowAlloc();
    v40[0] = v34;
    *v19 = 136315394;
    if (a1)
    {
      v20 = 0x656C756465686353;
    }

    else
    {
      v20 = 0x6E616D6544206E4FLL;
    }

    v21 = sub_10021145C(v20, 0xE900000000000064, v40);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2080;
    swift_beginAccess();
    v22 = *(a2 + 16);

    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v23 = Dictionary.description.getter();
    v35 = a4;
    v25 = v24;

    v26 = sub_10021145C(v23, v25, v40);
    a4 = v35;

    *(v19 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v37, "Overall %s Health Checks finished with errors: %s", v19, 0x16u);
    swift_arrayDestroy();

    v11 = v36;
  }

  (*(v11 + 16))(v14, a3 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__trustedContactsPreflightScheduler, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v14, v10);
  v27 = v41;
  v28 = v42;
  sub_1000080F8(v40, v41);
  (*(*(v28 + 8) + 8))(v27);
  sub_10000839C(v40);
  v29 = v38;
  swift_beginAccess();
  v30 = *(v29 + 16);
  swift_beginAccess();
  v31 = *(a2 + 16);

  a4(v30, v31);
}

uint64_t sub_10028A0B8()
{
  v1 = OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__ttrRequester;
  v2 = sub_100005814(&unk_1003DBB90, &qword_10033FC38);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__storageController;
  v4 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__analyticsAccountModel;
  v6 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__accountStore;
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__syncManager;
  v10 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__trustedContactsPreflightScheduler;
  v12 = sub_100005814(&qword_1003DA130, qword_1003480E0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider_healthChecks);

  v14 = *(*v0 + 48);
  v15 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HealthCheckActivityProvider()
{
  result = qword_1003E5290;
  if (!qword_1003E5290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028A350()
{
  sub_10000DAB8(319, &unk_1003DB6E0, &qword_1003DF650, &unk_1003480B0);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &qword_1003DB280, &unk_1003DA880, &unk_10033F5F0);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_10000DAB8(319, &qword_1003D9A38, &qword_1003D9A40, &unk_10033F180);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_10000DAB8(319, &qword_1003D9A18, &qword_1003D9A20, &unk_10033F170);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10028A5B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v39 = v9;
  v40 = v5;
  v41 = a2;
  while (v8)
  {
LABEL_11:
    v14 = __clz(__rbit64(v8)) | (v10 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(a1 + 56) + 8 * v14);

    swift_errorRetain();

    v19._countAndFlagsBits = 58;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = v16;
    v20._object = v17;
    String.append(_:)(v20);
    swift_getErrorValue();
    v21 = sub_1002DEA80(v46);
    swift_beginAccess();
    v22 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *a2;
    v45 = *a2;
    *a2 = 0x8000000000000000;
    v26 = sub_1003084DC(a3, a4);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_24;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v33 = v45;
        if (v25)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1002CFE94();
        v33 = v45;
        if (v30)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1002CC470(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_1003084DC(a3, a4);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_26;
      }

      v26 = v31;
      v33 = v45;
      if (v30)
      {
LABEL_4:
        v11 = v33[7];
        v12 = *(v11 + 8 * v26);
        *(v11 + 8 * v26) = v21;

        goto LABEL_5;
      }
    }

    v33[(v26 >> 6) + 8] |= 1 << v26;
    v34 = (v33[6] + 16 * v26);
    *v34 = a3;
    v34[1] = a4;
    *(v33[7] + 8 * v26) = v21;
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_25;
    }

    v33[2] = v37;
LABEL_5:
    v8 &= v8 - 1;
    a2 = v41;
    *v41 = v33;
    swift_endAccess();

    v9 = v39;
    v5 = v40;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
    }

    v8 = *(v5 + 8 * v13);
    ++v10;
    if (v8)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10028A86C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id), uint64_t a6)
{
  v38 = a2;
  v39 = a3;
  v40 = a1;
  v9 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  v14 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  (*(v15 + 16))(v18, a4 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__accountStore, v14);

  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v18, v14);
  v20 = [*(*sub_1000080F8(v42 v43) + 16)];
  if (v20)
  {

    sub_10000839C(v42);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAB8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v40;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42[0] = v27;
      *v26 = 136315138;
      if (v25)
      {
        v28 = 0x656C756465686353;
      }

      else
      {
        v28 = 0x6E616D6544206E4FLL;
      }

      v29 = sub_10021145C(v28, 0xE900000000000064, v42);

      *(v26 + 4) = v29;
      v25 = v40;
      _os_log_impl(&_mh_execute_header, v22, v23, "Starting to pull all cloud data before %s Health Checks", v26, 0xCu);
      sub_10000839C(v27);
    }

    (*(v10 + 16))(v13, a4 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__syncManager, v9);
    Dependency.wrappedValue.getter();
    (*(v10 + 8))(v13, v9);
    v30 = sub_1000080F8(v42, v43);
    v31 = swift_allocObject();
    *(v31 + 16) = v25 & 1;
    v32 = v38;
    v33 = v39;
    *(v31 + 24) = a4;
    *(v31 + 32) = v32;
    *(v31 + 40) = v33;
    *(v31 + 48) = sub_10028ADCC;
    *(v31 + 56) = v19;
    v34 = *v30;

    sub_1002E93B4(3, 256, sub_10028AE30, v31);

    sub_10000839C(v42);
  }

  else
  {
    sub_10000839C(v42);
    sub_100005814(&qword_1003E4610, &qword_100347AD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = 0x72456E496E676953;
    *(inited + 40) = 0xEB00000000726F72;
    type metadata accessor for AASignInError(0);
    v41 = -8014;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10028ADD4();
    _BridgedStoredNSError.init(_:userInfo:)();
    *(inited + 48) = v42[0];
    v37 = sub_100308AA8(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003E4618, qword_100349CF0);
    sub_10028CED4(v37, a5);
  }
}

uint64_t sub_10028AD94()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

unint64_t sub_10028ADD4()
{
  result = qword_1003D8338;
  if (!qword_1003D8338)
  {
    type metadata accessor for AASignInError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8338);
  }

  return result;
}

uint64_t sub_10028AE34(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a2;
  v39 = a3;
  v40 = a1;
  v9 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  v14 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  (*(v15 + 16))(v18, a4 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__accountStore, v14);

  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v18, v14);
  v20 = [*(*sub_1000080F8(v42 v43) + 16)];
  if (v20)
  {

    sub_10000839C(v42);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAB8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v40;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42[0] = v27;
      *v26 = 136315138;
      if (v25)
      {
        v28 = 0x656C756465686353;
      }

      else
      {
        v28 = 0x6E616D6544206E4FLL;
      }

      v29 = sub_10021145C(v28, 0xE900000000000064, v42);

      *(v26 + 4) = v29;
      v25 = v40;
      _os_log_impl(&_mh_execute_header, v22, v23, "Starting to pull all cloud data before %s Health Checks", v26, 0xCu);
      sub_10000839C(v27);
    }

    (*(v10 + 16))(v13, a4 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__syncManager, v9);
    Dependency.wrappedValue.getter();
    (*(v10 + 8))(v13, v9);
    v30 = sub_1000080F8(v42, v43);
    v31 = swift_allocObject();
    *(v31 + 16) = v25 & 1;
    v32 = v38;
    v33 = v39;
    *(v31 + 24) = a4;
    *(v31 + 32) = v32;
    *(v31 + 40) = v33;
    *(v31 + 48) = sub_10028B3A8;
    *(v31 + 56) = v19;
    v34 = *v30;

    sub_1002E93B4(3, 256, sub_10028B664, v31);

    sub_10000839C(v42);
  }

  else
  {
    sub_10000839C(v42);
    sub_100005814(&qword_1003E4610, &qword_100347AD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = 0x72456E496E676953;
    *(inited + 40) = 0xEB00000000726F72;
    type metadata accessor for AASignInError(0);
    v41 = -8014;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10028ADD4();
    _BridgedStoredNSError.init(_:userInfo:)();
    *(inited + 48) = v42[0];
    v37 = sub_100308AA8(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003E4618, qword_100349CF0);
    sub_1002883FC(0, v37, a5, a6);
  }
}

uint64_t sub_10028B368()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10028B3B0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64);
}

unint64_t sub_10028B40C()
{
  result = qword_1003D8D68;
  if (!qword_1003D8D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003D8D68);
  }

  return result;
}

uint64_t sub_10028B4AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10028B4C4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10028B524()
{
  sub_10000839C(v0 + 3);
  v1 = v0[9];

  v2 = v0[10];

  v3 = v0[11];

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_10028B588()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10028B5EC()
{
  sub_10000839C(v0 + 3);
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[11];

  return _swift_deallocObject(v0, 96);
}

void sub_10028B690(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

double sub_10028B6C8()
{
  v0 = objc_opt_self();
  if ([v0 isCustomHealthCheckIntervalEnabled])
  {
    v1 = [v0 customHealthCheckIntervalMinutes];
    if (v1 <= 0)
    {
      v2 = 10;
    }

    else
    {
      v2 = v1;
    }

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAAB8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v4, v5, "Using Health Check interval - Custom %ld mins", v6, 0xCu);
    }

    return v2 * 60.0;
  }

  else if ([objc_opt_self() isInternalBuild])
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Using Health Check interval - One Day", v11, 2u);
    }

    return 86400.0;
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAB8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Using Health Check interval - One Week", v16, 2u);
    }

    return 604800.0;
  }
}

double sub_10028B98C()
{
  v0 = [objc_opt_self() customHealthCheckReachabilityIntervalMinutes];
  if (!v0)
  {
    return 2419200.0;
  }

  if (qword_1003D7F48 != -1)
  {
    v7 = v0;
    swift_once();
    v0 = v7;
  }

  v1 = v0;
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAB8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Using Custom Health Check reachability interval - %f", v5, 0xCu);
  }

  return v1;
}

void *sub_10028BAB8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100305D7C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100005814(&unk_1003E55C0, &qword_100348180);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10028BBC0(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100305F30(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10028BCB4(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003062A8(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10028BDB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10028C7AC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10028C84C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_10028BEA8()
{
  v0 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  v35 = *(v0 - 8);
  v36 = v0;
  v1 = *(v35 + 64);
  __chkstk_darwin(v0);
  v3 = &v35 - v2;
  sub_100005814(&qword_1003E4A70, qword_100347BC8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10033E5C0;
  v5 = type metadata accessor for OwnerSetupReadinessHealthCheck();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A30, &unk_10033F040);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACC0, &unk_10033EFF0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  *(v8 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck____lazy_storage___metadataController) = 0;
  v9 = type metadata accessor for ReadinessCheckGracePeriodEvaluator();
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v8 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck_gracePeriodEvaluator) = sub_1002A206C(0, &v39);
  *(v4 + 56) = v5;
  *(v4 + 64) = &off_1003B1F80;
  *(v4 + 32) = v8;
  v12 = type metadata accessor for CustodianSetupReadinessHealthCheck();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  *(v15 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck____lazy_storage___metadataController) = 0;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v16 = *(v9 + 48);
  v17 = *(v9 + 52);
  swift_allocObject();
  *(v15 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck_gracePeriodEvaluator) = sub_1002A206C(1, &v39);
  *(v4 + 96) = v12;
  *(v4 + 104) = &off_1003B19D0;
  *(v4 + 72) = v15;
  v18 = sub_10028C9CC();
  *&v39 = v4;
  sub_10028BAB8(v18);
  v19 = v39;
  v20 = type metadata accessor for HealthCheckActivityProvider();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_100287E6C(v19);
  v24 = v35;
  v23 = v36;
  (*(v35 + 16))(v3, v37 + OBJC_IVAR____TtC13appleaccountd29TrustedContactHealthScheduler__xpcActivityScheduler, v36);
  Dependency.wrappedValue.getter();
  (*(v24 + 8))(v3, v23);
  v25 = *sub_1000080F8(v38, v38[3]);
  v26 = static String._fromUTF8Repairing(_:)();
  v28 = v27;
  v29 = sub_10028B6C8();
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v29 < 9.22337204e18)
  {
    LOWORD(v39) = 257;
    *(&v39 + 1) = v29 / 2;
    *&v40 = *(&v39 + 1);
    *(&v40 + 1) = v29;
    v41 = 8;
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = sub_100313A50(&v39, v26, v28, sub_10028D6A0, v30);

    v32 = *(v25 + 16);
    *(v25 + 16) = v31;

    v33 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for OSTransaction();
    swift_allocObject();
    v34 = sub_10030F0FC("com.apple.appleaccountd.trustedContacts.healthCheck", 51, 2);
    sub_10031352C(v34, v33);

    sub_10000839C(v38);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_10028C4A4()
{
  v1 = OBJC_IVAR____TtC13appleaccountd29TrustedContactHealthScheduler__xpcActivityScheduler;
  v2 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrustedContactHealthScheduler()
{
  result = qword_1003E54D0;
  if (!qword_1003E54D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028C5A0()
{
  sub_100260880();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10028C654(void (*a1)(id), uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028C9CC();
  v10 = type metadata accessor for HealthCheckActivityProvider();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_100287E6C(v9);
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v5 + 8))(v8, v4);

  sub_10028A86C(0, v14, v16, v13, a1, a2);
}

uint64_t sub_10028C7AC(uint64_t a1)
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

uint64_t sub_10028C84C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10028D6F4();
          for (i = 0; i != v6; ++i)
          {
            sub_100005814(&qword_1003E55E0, &unk_100348188);
            v9 = sub_1001F921C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10028D6A8();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10028C9CC()
{
  sub_100005814(&qword_1003E4A70, qword_100347BC8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100348120;
  v1 = type metadata accessor for TrustedContactsAwarenessSync();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  Dependency.init(dependencyId:config:)();
  *(v0 + 56) = v1;
  *(v0 + 64) = &off_1003B24A8;
  *(v0 + 32) = v4;
  v5 = type metadata accessor for CustodianOwnerHealthCheck();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_100097FE4();
  *(v0 + 96) = v5;
  *(v0 + 104) = &off_1003A7098;
  *(v0 + 72) = v8;
  v9 = type metadata accessor for CustodianHealthCheck();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E55D0, &unk_100340CC0);
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  *(v0 + 136) = v9;
  *(v0 + 144) = &off_1003A63F0;
  *(v0 + 112) = v12;
  v13 = type metadata accessor for CustodianIncompleteInvitationHealthCheck();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACC0, &unk_10033EFF0);
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  *(v0 + 176) = v13;
  *(v0 + 184) = &off_1003B1960;
  *(v0 + 152) = v16;
  v17 = type metadata accessor for BenefactorAccessKeyHealthCheck();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  type metadata accessor for InheritanceRequestManager();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  *(v0 + 216) = v17;
  *(v0 + 224) = &off_1003AB9A0;
  *(v0 + 192) = v20;
  v21 = type metadata accessor for BeneficiaryHealthCheck();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_1001A616C();
  *(v0 + 256) = v21;
  *(v0 + 264) = &off_1003ACC98;
  *(v0 + 232) = v24;
  v25 = type metadata accessor for BenefactorHealthCheck();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  *(v0 + 296) = v25;
  *(v0 + 304) = &off_1003ABB78;
  *(v0 + 272) = v28;
  v29 = type metadata accessor for CloudDataProtectionHealthCheck();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003DF670, &qword_1003436C8);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  *(v0 + 336) = v29;
  *(v0 + 344) = &off_1003B1918;
  *(v0 + 312) = v32;
  return v0;
}

void sub_10028CED4(uint64_t a1, void (*a2)(id))
{
  if (*(a1 + 16))
  {
    type metadata accessor for AAError(0);
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v5;
    *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
    *(inited + 48) = a1;

    sub_100308978(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    v7 = v18;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = _convertErrorToNSError(_:)();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Overall on-demand health check failed: %@", v10, 0xCu);
      sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);
    }

    v13 = v7;
    a2(v7);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAB8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Overall on-demand health check completed.", v17, 2u);
    }

    a2(0);
  }
}

uint64_t sub_10028D1E8(void (*a1)(id), uint64_t a2)
{
  v33 = a2;
  v34 = a1;
  v2 = type metadata accessor for UUID();
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005814(&qword_1003E4A70, qword_100347BC8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10033E5C0;
  v7 = type metadata accessor for OwnerSetupReadinessHealthCheck();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A30, &unk_10033F040);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACC0, &unk_10033EFF0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  *(v10 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck____lazy_storage___metadataController) = 0;
  v11 = type metadata accessor for ReadinessCheckGracePeriodEvaluator();
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v10 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck_gracePeriodEvaluator) = sub_1002A206C(0, &v35);
  *(v6 + 56) = v7;
  *(v6 + 64) = &off_1003B1F80;
  *(v6 + 32) = v10;
  v14 = type metadata accessor for CustodianSetupReadinessHealthCheck();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  *(v17 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck____lazy_storage___metadataController) = 0;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v18 = *(v11 + 48);
  v19 = *(v11 + 52);
  swift_allocObject();
  *(v17 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck_gracePeriodEvaluator) = sub_1002A206C(1, &v35);
  *(v6 + 96) = v14;
  *(v6 + 104) = &off_1003B19D0;
  *(v6 + 72) = v17;
  v20 = sub_10028C9CC();
  *&v35 = v6;
  sub_10028BAB8(v20);
  v21 = v35;
  v22 = type metadata accessor for HealthCheckActivityProvider();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_100287E6C(v21);
  UUID.init()();
  v26 = UUID.uuidString.getter();
  v28 = v27;
  (*(v31 + 8))(v5, v32);
  v29 = v33;

  sub_10028A86C(0, v26, v28, v25, v34, v29);
}

uint64_t sub_10028D668()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

unint64_t sub_10028D6A8()
{
  result = qword_1003E3168;
  if (!qword_1003E3168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E3168);
  }

  return result;
}

unint64_t sub_10028D6F4()
{
  result = qword_1003E55E8;
  if (!qword_1003E55E8)
  {
    sub_100008CBC(&qword_1003E55E0, &unk_100348188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E55E8);
  }

  return result;
}

uint64_t sub_10028D75C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck____lazy_storage___metadataController;
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck____lazy_storage___metadataController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck____lazy_storage___metadataController);
  }

  else
  {
    v3 = v0;
    v4 = type metadata accessor for CustodianMetadataController(0);
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v2 = swift_allocObject();
    sub_100005814(&unk_1003D98F0, &qword_10033E9C0);
    Dependency.init(dependencyId:config:)();
    v7 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_encoder;
    v8 = type metadata accessor for JSONEncoder();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    *(v2 + v7) = JSONEncoder.init()();
    v11 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_decoder;
    v12 = type metadata accessor for JSONDecoder();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    *(v2 + v11) = JSONDecoder.init()();
    v15 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10028D860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10028D888, 0, 0);
}

uint64_t sub_10028D888()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100266BCC;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_10031565C();
}

uint64_t sub_10028D95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[18] = a2;
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v4[24] = v8;
  v9 = *(v8 - 8);
  v4[25] = v9;
  v10 = *(v9 + 64) + 15;
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_10028DA94, 0, 0);
}

uint64_t sub_10028DA94()
{
  v54 = v0;
  v1 = *(*(v0 + 144) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck_gracePeriodEvaluator);
  if (*(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v2 = 0xD000000000000022;
  }

  else
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v3 = "ownerSetupGracePeriodInSeconds";
  }

  else
  {
    v3 = "ck";
  }

  sub_1002A25A0(v2, v3 | 0x8000000000000000);
  v5 = v4;

  if (v5)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "🔔 Owner setup readiness health check feature is not enabled", v9, 2u);
    }

    v10 = *(v0 + 208);
    v11 = *(v0 + 184);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAB8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "🔔 Owner setup readiness health check feature is enabled. Continuing to owner setup readiness check", v16, 2u);
    }

    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v19 = *(v0 + 192);
    v20 = *(v0 + 144);

    (*(v18 + 16))(v17, v20 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__accountStore, v19);
    Dependency.wrappedValue.getter();
    (*(v18 + 8))(v17, v19);
    v21 = [*(*sub_1000080F8((v0 + 16) *(v0 + 40)) + 16)];
    if (v21 && (v22 = v21, v23 = [v21 aa_altDSID], v22, v23))
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    *(v0 + 216) = v26;
    v28 = *(v0 + 176);
    v27 = *(v0 + 184);
    v29 = *(v0 + 168);
    v30 = *(v0 + 144);
    sub_10000839C((v0 + 16));
    *(v0 + 264) = 0;
    (*(v28 + 16))(v27, v30 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v29);
    Dependency.wrappedValue.getter();
    (*(v28 + 8))(v27, v29);
    *(v0 + 224) = *(v0 + 128);
    v31 = kAAAnalyticsEventSetupFailSafeHealthCheckRun;
    v32 = *(v0 + 160);
    v33 = kAAAnalyticsEventSetupFailSafeHealthCheckRun;

    if (v26)
    {

      v34 = String._bridgeToObjectiveC()();

      v35 = *(v0 + 160);
    }

    else
    {
      v34 = 0;
    }

    v36 = *(v0 + 152);
    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();

    v39 = [v37 analyticsEventWithName:v31 altDSID:v34 flowID:v38];
    *(v0 + 232) = v39;

    if (v39)
    {
      v40 = objc_allocWithZone(NSNumber);
      v41 = v39;
      v42 = [v40 initWithInteger:12];
      sub_100016034(0, &qword_1003D9250, NSString_ptr);
      v43 = NSString.init(stringLiteral:)();
      [v41 setObject:v42 forKeyedSubscript:v43];
    }

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    *(v0 + 240) = sub_100008D04(v13, qword_1003FAA40);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v53 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_10021145C(0xD000000000000022, 0x8000000100332E00, &v53);
      _os_log_impl(&_mh_execute_header, v44, v45, "Performing: %s...", v46, 0xCu);
      sub_10000839C(v47);
    }

    sub_100257274(v31);
    v48 = swift_task_alloc();
    *(v0 + 248) = v48;
    *v48 = v0;
    v48[1] = sub_10028E374;
    v49 = *(v0 + 152);
    v50 = *(v0 + 160);
    v51 = *(v0 + 144);

    return sub_10028E94C(v48, v51, v49, v50, v0 + 264, v24, v26);
  }
}

uint64_t sub_10028E374()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_10028E488;
  }

  else
  {
    v3 = sub_10028E764;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10028E488()
{
  v26 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_10021145C(0xD000000000000022, 0x8000000100332E00, &v25);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "❌ %s - failed with error: %@", v5, 0x16u);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v7);
  }

  v9 = *(v0 + 232);
  swift_getErrorValue();
  v10 = *(v0 + 56);
  v11 = *(v0 + 72);
  sub_1002DEA80(*(v0 + 64));
  if (v9)
  {
    v12 = *(v0 + 232);
    v13 = v12;
    swift_errorRetain();
    v14 = _convertErrorToNSError(_:)();
    [v13 updateTaskResultWithError:v14];

    swift_beginAccess();
    v15 = 0;
    v16 = *(v0 + 232);
    if (v12 && *(v0 + 264))
    {
      v17 = *(v0 + 224);
      swift_getObjectType();
      v18 = v16;
      sub_100246FA8(v16);
      v16 = *(v0 + 232);
      v15 = v16;
    }
  }

  else
  {
    swift_errorRetain();
    swift_beginAccess();
    v15 = 0;
    v16 = *(v0 + 232);
  }

  v20 = *(v0 + 216);
  v19 = *(v0 + 224);
  v21 = *(v0 + 208);
  v22 = *(v0 + 184);
  swift_willThrow();

  swift_unknownObjectRelease();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10028E764()
{
  v18 = v0;
  v1 = *(v0 + 240);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0xD000000000000022, 0x8000000100332E00, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "✅ %s - successfully completed!", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = *(v0 + 232);
  if (v6)
  {
    [v6 updateTaskResultWithError:0];
    swift_beginAccess();
    if (*(v0 + 264))
    {
      v8 = *(v0 + 224);
      v7 = *(v0 + 232);
      swift_getObjectType();
      v9 = v7;
      sub_100246FA8(v7);

      goto LABEL_9;
    }
  }

  else
  {
    swift_beginAccess();
    if (*(v0 + 264))
    {
      v10 = *(v0 + 224);
      goto LABEL_9;
    }
  }

  v11 = *(v0 + 224);

LABEL_9:
  swift_unknownObjectRelease();
  v12 = *(v0 + 216);

  v13 = *(v0 + 208);
  v14 = *(v0 + 184);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10028E94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v8 = *(type metadata accessor for CustodianRecord() - 8);
  v7[25] = v8;
  v9 = *(v8 + 64) + 15;
  v7[26] = swift_task_alloc();
  v10 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v7[27] = v10;
  v11 = *(v10 - 8);
  v7[28] = v11;
  v12 = *(v11 + 64) + 15;
  v7[29] = swift_task_alloc();
  v13 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v7[30] = v13;
  v14 = *(v13 - 8);
  v7[31] = v14;
  v15 = *(v14 + 64) + 15;
  v7[32] = swift_task_alloc();

  return _swift_task_switch(sub_10028EAE0, 0, 0);
}

uint64_t sub_10028EAE0()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v5 = v0[20];
  v4 = v0[21];
  (*(v2 + 16))(v1, v0[19] + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__idmsConfirmationHandler, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[18] = *sub_1000080F8(v0 + 2, v0[5]);
  v6 = swift_task_alloc();
  v0[33] = v6;
  v6[2] = v0 + 18;
  v6[3] = v5;
  v6[4] = v4;
  v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  v0[34] = v8;
  *v8 = v0;
  v8[1] = sub_10028EC50;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD000000000000024, 0x8000000100332E30, sub_10029C1EC, v6, &type metadata for () + 8);
}

uint64_t sub_10028EC50()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_10028F020;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_10028ED6C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10028ED6C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[19];
  sub_10000839C(v0 + 2);
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__custodianStorage, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8(v0 + 7, v0[10]);
  v5 = type metadata accessor for CustodianStorageController();
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_10028EF0C;

  return (sub_1000308CC)(v5, &off_1003A4C78);
}

uint64_t sub_10028EF0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 288);
  v7 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v5 = sub_10028F53C;
  }

  else
  {
    v5 = sub_10028F0B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10028F020()
{
  v1 = v0[33];

  sub_10000839C(v0 + 2);
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[26];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10028F0B4()
{
  v1 = v0[37];
  v2 = v0[22];
  sub_10000839C(v0 + 7);
  v3 = *(v1 + 16);
  v0[39] = v3;
  swift_beginAccess();
  result = swift_beginAccess();
  if (v3)
  {
    v5 = v0[25];
    v0[40] = 0;
    v6 = v0[37];
    if (*(v6 + 16))
    {
      sub_10029D880(v6 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v0[26], type metadata accessor for CustodianRecord);
      v7 = swift_task_alloc();
      v0[41] = v7;
      *v7 = v0;
      v7[1] = sub_10028F248;
      v8 = v0[26];
      v9 = v0[23];
      v10 = v0[24];
      v11 = v0[20];
      v12 = v0[21];
      v13 = v0[19];

      return sub_10028F64C(v8, v11, v12, v9, v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v14 = v0[37];
    v15 = v0[32];
    v16 = v0[29];
    v17 = v0[26];

    v18 = v0[1];

    return v18();
  }

  return result;
}

uint64_t sub_10028F248(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v10 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v6 = *(v4 + 296);
    sub_10029DADC(*(v4 + 208), type metadata accessor for CustodianRecord);

    v7 = sub_10028F5C8;
  }

  else
  {
    v8 = *(v4 + 208);
    *(v4 + 344) = a1 & 1;
    sub_10029DADC(v8, type metadata accessor for CustodianRecord);
    v7 = sub_10028F3B4;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_10028F3B4()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320) + 1;
  **(v0 + 176) = (*(v0 + 344) | **(v0 + 176)) & 1;
  if (v2 == v1)
  {
    v3 = *(v0 + 296);
    v4 = *(v0 + 256);
    v5 = *(v0 + 232);
    v6 = *(v0 + 208);

    v7 = *(v0 + 8);

    v7();
  }

  else
  {
    v8 = *(v0 + 320) + 1;
    *(v0 + 320) = v8;
    v9 = *(v0 + 296);
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_10029D880(v9 + ((*(*(v0 + 200) + 80) + 32) & ~*(*(v0 + 200) + 80)) + *(*(v0 + 200) + 72) * v8, *(v0 + 208), type metadata accessor for CustodianRecord);
      v10 = swift_task_alloc();
      *(v0 + 328) = v10;
      *v10 = v0;
      v10[1] = sub_10028F248;
      v11 = *(v0 + 208);
      v12 = *(v0 + 184);
      v13 = *(v0 + 192);
      v14 = *(v0 + 160);
      v15 = *(v0 + 168);
      v16 = *(v0 + 152);

      sub_10028F64C(v11, v14, v15, v12, v13);
    }
  }
}

uint64_t sub_10028F53C()
{
  sub_10000839C(v0 + 7);
  v1 = v0[38];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[26];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10028F5C8()
{
  v1 = v0[42];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[26];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10028F64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  v7 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v6[23] = v7;
  v8 = *(v7 - 8);
  v6[24] = v8;
  v9 = *(v8 + 64) + 15;
  v6[25] = swift_task_alloc();
  v10 = type metadata accessor for CustodianRecord();
  v6[26] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v12 = sub_100005814(&qword_1003D8D40, &qword_10033E9E0);
  v6[28] = v12;
  v13 = *(v12 - 8);
  v6[29] = v13;
  v14 = *(v13 + 64) + 15;
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_10028F7B8, 0, 0);
}

uint64_t sub_10028F7B8()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 176);
  v6 = *(v0 + 136);
  v7 = sub_10028D75C();
  *(v0 + 248) = v7;
  v8 = *(v4 + 20);
  *(v0 + 336) = v8;
  v9 = sub_100015A98(0, v6 + v8, 0x6465527075746573, 0xEF6574617453736ELL, 0);
  v11 = v10;
  *(v0 + 256) = v10;
  (*(v2 + 16))(v1, v7 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v12 = *sub_1000080F8((v0 + 16), *(v0 + 40));
  v13 = swift_task_alloc();
  *(v0 + 264) = v13;
  *v13 = v0;
  v13[1] = sub_10028F928;

  return sub_100013C50(v0 + 56, v9, v11);
}

uint64_t sub_10028F928()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 256);

  if (v0)
  {
    v6 = sub_100290428;
  }

  else
  {
    v6 = sub_10028FA5C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10028FA5C()
{
  v92 = v0;
  sub_100005814(&qword_1003D87C8, qword_100344800);
  sub_100016034(0, &qword_1003E4F00, NSData_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 112) = 0;
  }

  sub_10000839C((v0 + 16));
  v1 = *(v0 + 112);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  if (v1)
  {
    v4 = *(v0 + 112);
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = *(v3 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_decoder);
    sub_100015D6C(v5, v6);
    sub_100282280();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v2)
    {

      sub_100012324(v5, v7);

      sub_100012324(v5, v7);
      v9 = 240;
    }

    else
    {
      sub_100012324(v5, v7);

      sub_100012324(v5, v7);
      v9 = *(v0 + 340);
    }

    v11 = *(v0 + 248);

    v2 = 0;
    if (v9 <= 0xEF && (v9 & 0xC0) != 0x40)
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 216);
      v13 = *(v0 + 136);
      v14 = type metadata accessor for Logger();
      sub_100008D04(v14, qword_1003FAAB8);
      sub_10029D880(v13, v12, type metadata accessor for CustodianRecord);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 216);
      if (v17)
      {
        v19 = *(v0 + 208);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v91[0] = v21;
        *v20 = 136315138;
        v22 = *(v19 + 20);
        type metadata accessor for UUID();
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        sub_10029DADC(v18, type metadata accessor for CustodianRecord);
        v26 = sub_10021145C(v23, v25, v91);

        *(v20 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v15, v16, "Owner setup readiness check was performed previously for custodianID: %s", v20, 0xCu);
        sub_10000839C(v21);
      }

      else
      {

        sub_10029DADC(v18, type metadata accessor for CustodianRecord);
      }

      v88 = *(v0 + 240);
      v89 = *(v0 + 216);
      v90 = *(v0 + 200);

      v87 = *(v0 + 8);
LABEL_35:

      return v87(0);
    }
  }

  else
  {
    v10 = *(v0 + 248);
  }

  v27 = *(v0 + 336);
  v29 = *(v0 + 192);
  v28 = *(v0 + 200);
  v30 = *(v0 + 184);
  v31 = *(v0 + 168);
  v32 = *(v0 + 136);
  (*(v29 + 16))(v28, *(v0 + 176) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v30);
  Dependency.wrappedValue.getter();
  (*(v29 + 8))(v28, v30);
  *(v0 + 280) = *(v0 + 120);
  v33 = kAAAnalyticsEventSetupFailSafe;
  _StringGuts.grow(_:)(21);

  v91[0] = 0xD000000000000013;
  v91[1] = 0x8000000100332A20;
  type metadata accessor for UUID();
  sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
  v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v34);

  *(v0 + 288) = 0xD000000000000013;
  *(v0 + 296) = 0x8000000100332A20;
  if (v31)
  {
    v35 = *(v0 + 160);
    v36 = *(v0 + 168);
    v37 = *(v0 + 152);
    v38 = v33;

    v39 = String._bridgeToObjectiveC()();

    v40 = *(v0 + 152);
  }

  else
  {
    v41 = *(v0 + 152);
    v42 = v33;

    v39 = 0;
  }

  v43 = *(v0 + 144);
  v44 = objc_opt_self();
  v45 = String._bridgeToObjectiveC()();

  v46 = [v44 analyticsEventWithName:v33 altDSID:v39 flowID:v45];
  *(v0 + 304) = v46;

  if (v46)
  {
    v47 = objc_allocWithZone(NSNumber);
    v48 = v46;
    v49 = [v47 initWithInteger:12];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v50 = NSString.init(stringLiteral:)();
    [v48 setObject:v49 forKeyedSubscript:v50];
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  *(v0 + 312) = sub_100008D04(v51, qword_1003FAA40);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v91[0] = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_10021145C(0xD000000000000013, 0x8000000100332A20, v91);
    _os_log_impl(&_mh_execute_header, v52, v53, "Performing: %s...", v54, 0xCu);
    sub_10000839C(v55);
  }

  sub_100257274(v33);
  if (v2)
  {
    v56 = *(v0 + 312);
    v57 = *(v0 + 296);

    swift_errorRetain();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v61 = *(v0 + 288);
      v60 = *(v0 + 296);
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v91[0] = v64;
      *v62 = 136315394;
      *(v62 + 4) = sub_10021145C(v61, v60, v91);
      *(v62 + 12) = 2112;
      swift_errorRetain();
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 14) = v65;
      *v63 = v65;
      _os_log_impl(&_mh_execute_header, v58, v59, "❌ %s - failed with error: %@", v62, 0x16u);
      sub_100008D3C(v63, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v64);
    }

    v66 = *(v0 + 304);
    swift_getErrorValue();
    v67 = *(v0 + 88);
    v68 = *(v0 + 104);
    sub_1002DEA80(*(v0 + 96));
    if (v66)
    {
      v69 = *(v0 + 304);
      v70 = *(v0 + 280);
      v71 = v69;
      swift_errorRetain();
      v72 = _convertErrorToNSError(_:)();
      [v71 updateTaskResultWithError:v72];

      swift_getObjectType();
      sub_100246FA8(v69);
    }

    else
    {
      swift_errorRetain();
    }

    v81 = *(v0 + 296);
    v82 = *(v0 + 304);
    v83 = *(v0 + 280);
    v84 = *(v0 + 240);
    v85 = *(v0 + 216);
    v86 = *(v0 + 200);
    swift_willThrow();

    swift_unknownObjectRelease();

    v87 = *(v0 + 8);
    goto LABEL_35;
  }

  v73 = swift_task_alloc();
  *(v0 + 320) = v73;
  *v73 = v0;
  v73[1] = sub_100290AE0;
  v75 = *(v0 + 168);
  v74 = *(v0 + 176);
  v76 = *(v0 + 152);
  v77 = *(v0 + 160);
  v78 = *(v0 + 136);
  v79 = *(v0 + 144);

  return sub_100291054(v73, v78, v74, v79, v76, v77, v75);
}

uint64_t sub_100290428()
{
  v41 = v0;
  v1 = *(v0 + 272);
  sub_10000839C((v0 + 16));

  v2 = *(v0 + 248);

  v3 = *(v0 + 336);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v8 = *(v0 + 136);
  (*(v5 + 16))(v4, *(v0 + 176) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v6);
  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v4, v6);
  *(v0 + 280) = *(v0 + 120);
  v9 = kAAAnalyticsEventSetupFailSafe;
  _StringGuts.grow(_:)(21);

  v40[0] = 0xD000000000000013;
  v40[1] = 0x8000000100332A20;
  type metadata accessor for UUID();
  sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  *(v0 + 288) = 0xD000000000000013;
  *(v0 + 296) = 0x8000000100332A20;
  if (v7)
  {
    v11 = *(v0 + 160);
    v12 = *(v0 + 168);
    v13 = *(v0 + 152);
    v14 = v9;

    v15 = String._bridgeToObjectiveC()();

    v16 = *(v0 + 152);
  }

  else
  {
    v17 = *(v0 + 152);
    v18 = v9;

    v15 = 0;
  }

  v19 = *(v0 + 144);
  v20 = objc_opt_self();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 analyticsEventWithName:v9 altDSID:v15 flowID:v21];
  *(v0 + 304) = v22;

  if (v22)
  {
    v23 = objc_allocWithZone(NSNumber);
    v24 = v22;
    v25 = [v23 initWithInteger:12];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v26 = NSString.init(stringLiteral:)();
    [v24 setObject:v25 forKeyedSubscript:v26];
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  *(v0 + 312) = sub_100008D04(v27, qword_1003FAA40);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_10021145C(0xD000000000000013, 0x8000000100332A20, v40);
    _os_log_impl(&_mh_execute_header, v28, v29, "Performing: %s...", v30, 0xCu);
    sub_10000839C(v31);
  }

  sub_100257274(v9);
  v32 = swift_task_alloc();
  *(v0 + 320) = v32;
  *v32 = v0;
  v32[1] = sub_100290AE0;
  v34 = *(v0 + 168);
  v33 = *(v0 + 176);
  v35 = *(v0 + 152);
  v36 = *(v0 + 160);
  v37 = *(v0 + 136);
  v38 = *(v0 + 144);

  return sub_100291054(v32, v37, v33, v38, v35, v36, v34);
}

uint64_t sub_100290AE0()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_100290BF4;
  }

  else
  {
    v3 = sub_100290E94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100290BF4()
{
  v28 = v0;
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[37];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[36];
    v6 = v0[37];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_10021145C(v7, v6, &v27);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "❌ %s - failed with error: %@", v8, 0x16u);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v10);
  }

  v12 = v0[38];
  swift_getErrorValue();
  v13 = v0[11];
  v14 = v0[13];
  sub_1002DEA80(v0[12]);
  if (v12)
  {
    v15 = v0[38];
    v16 = v0[35];
    v17 = v15;
    swift_errorRetain();
    v18 = _convertErrorToNSError(_:)();
    [v17 updateTaskResultWithError:v18];

    swift_getObjectType();
    sub_100246FA8(v15);
  }

  else
  {
    swift_errorRetain();
  }

  v19 = v0[37];
  v20 = v0[38];
  v21 = v0[35];
  v22 = v0[30];
  v23 = v0[27];
  v24 = v0[25];
  swift_willThrow();

  swift_unknownObjectRelease();

  v25 = v0[1];

  return v25(0);
}

uint64_t sub_100290E94()
{
  v19 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10021145C(v6, v5, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "✅ %s - successfully completed!", v7, 0xCu);
    sub_10000839C(v8);
  }

  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  v11 = *(v0 + 280);
  if (v10)
  {
    [*(v0 + 304) updateTaskResultWithError:0];
    swift_getObjectType();
    v12 = v10;
    sub_100246FA8(v10);
  }

  swift_unknownObjectRelease();
  v13 = *(v0 + 240);
  v14 = *(v0 + 216);
  v15 = *(v0 + 200);

  v16 = *(v0 + 8);

  return v16(1);
}

uint64_t sub_100291054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[16] = a2;
  v7[17] = a3;
  v8 = sub_100005814(&qword_1003D8D40, &qword_10033E9E0);
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v10 = *(v9 + 64) + 15;
  v7[24] = swift_task_alloc();
  v11 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v7[25] = v11;
  v12 = *(v11 - 8);
  v7[26] = v12;
  v13 = *(v12 + 64) + 15;
  v7[27] = swift_task_alloc();
  v14 = type metadata accessor for CustodianRecord();
  v7[28] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();

  return _swift_task_switch(sub_100291208, 0, 0);
}

uint64_t sub_100291208()
{
  v25 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[16];
  v3 = type metadata accessor for Logger();
  v0[36] = sub_100008D04(v3, qword_1003FAAB8);
  sub_10029D880(v2, v1, type metadata accessor for CustodianRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[35];
  if (v6)
  {
    v8 = v0[28];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    v11 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
    v15 = sub_10021145C(v12, v14, &v24);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Owner determining readiness state for custodianID: %s", v9, 0xCu);
    sub_10000839C(v10);
  }

  else
  {

    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
  }

  v16 = swift_task_alloc();
  v0[37] = v16;
  *v16 = v0;
  v16[1] = sub_100291498;
  v17 = v0[20];
  v18 = v0[21];
  v19 = v0[18];
  v20 = v0[19];
  v21 = v0[16];
  v22 = v0[17];

  return sub_100293AB4(v21, v19, v20, v17, v18);
}

uint64_t sub_100291498(char a1)
{
  v3 = *(*v2 + 296);
  v4 = *v2;
  *(v4 + 405) = a1;
  *(v4 + 304) = v1;

  if (v1)
  {
    v6 = *(v4 + 272);
    v5 = *(v4 + 280);
    v8 = *(v4 + 256);
    v7 = *(v4 + 264);
    v10 = *(v4 + 240);
    v9 = *(v4 + 248);
    v11 = *(v4 + 232);
    v12 = *(v4 + 216);
    v13 = *(v4 + 192);

    v14 = *(v4 + 8);

    return v14();
  }

  else
  {

    return _swift_task_switch(sub_10029165C, 0, 0);
  }
}

uint64_t sub_10029165C()
{
  v167 = v0;
  v1 = *(v0 + 405);
  v2 = v1 >> 6;
  v3 = *(v0 + 288);
  v4 = *(v0 + 128);
  if (v1 >> 6 <= 1)
  {
    if (!v2)
    {
      sub_10029D880(v4, *(v0 + 272), type metadata accessor for CustodianRecord);

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      v7 = os_log_type_enabled(v5, v6);
      v8 = *(v0 + 272);
      if (v7)
      {
        v9 = *(v0 + 224);
        if (v1)
        {
          v10 = 0x6465747065636361;
        }

        else
        {
          v10 = 0x64656E696C636564;
        }

        v11 = swift_slowAlloc();
        v166[0] = swift_slowAlloc();
        *v11 = 136315394;
        v12 = sub_10021145C(v10, 0xE800000000000000, v166);

        *(v11 + 4) = v12;
        *(v11 + 12) = 2080;
        v13 = *(v9 + 20);
        type metadata accessor for UUID();
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = v15;
        sub_10029DADC(v8, type metadata accessor for CustodianRecord);
        v17 = sub_10021145C(v14, v16, v166);

        *(v11 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v5, v6, "✅ Owner setup is in completed state: %s for custodianID: %s", v11, 0x16u);
        swift_arrayDestroy();

        if ((v1 & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_17;
      }

      sub_10029DADC(v8, type metadata accessor for CustodianRecord);
      if (v1)
      {
LABEL_17:
        v55 = kAAAnalyticsEventSetupFailSafeReady;
        if (*(v0 + 168))
        {
          v56 = *(v0 + 160);
          v57 = kAAAnalyticsEventSetupFailSafeReady;
          v58 = String._bridgeToObjectiveC()();
        }

        else
        {
          v113 = kAAAnalyticsEventSetupFailSafeReady;
          v58 = 0;
        }

        v115 = *(v0 + 144);
        v114 = *(v0 + 152);
        v116 = objc_opt_self();
        v117 = String._bridgeToObjectiveC()();
        v118 = [v116 analyticsEventWithName:v55 altDSID:v58 flowID:v117];
        v18 = v118;

        if (v18)
        {

          v119 = objc_allocWithZone(NSNumber);
          v120 = v18;
          v121 = [v119 initWithInteger:12];
          sub_100016034(0, &qword_1003D9250, NSString_ptr);
          v122 = NSString.init(stringLiteral:)();
          [v120 setObject:v121 forKeyedSubscript:v122];

          [v120 updateTaskResultWithError:0];
        }

        v124 = *(v0 + 208);
        v123 = *(v0 + 216);
        v125 = *(v0 + 200);
        (*(v124 + 16))(v123, *(v0 + 136) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v125);
        Dependency.wrappedValue.getter();
        (*(v124 + 8))(v123, v125);
        v126 = *(v0 + 120);
        swift_getObjectType();
        sub_100246FA8(v118);
        swift_unknownObjectRelease();
        goto LABEL_42;
      }

LABEL_43:
      v127 = *(v0 + 224);
      v129 = *(v0 + 184);
      v128 = *(v0 + 192);
      v130 = *(v0 + 176);
      v132 = *(v0 + 128);
      v131 = *(v0 + 136);
      v133 = sub_10028D75C();
      *(v0 + 336) = v133;
      v134 = *(v127 + 20);
      *(v0 + 400) = v134;
      v135 = sub_100015A98(0, v132 + v134, 0x6465527075746573, 0xEF6574617453736ELL, 0);
      v137 = v136;
      *(v0 + 344) = v136;
      (*(v129 + 16))(v128, v133 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store, v130);
      Dependency.wrappedValue.getter();
      (*(v129 + 8))(v128, v130);
      v138 = *sub_1000080F8((v0 + 16), *(v0 + 40));
      v139 = swift_task_alloc();
      *(v0 + 352) = v139;
      *v139 = v0;
      v139[1] = sub_10029298C;

      return sub_100013C50(v0 + 56, v135, v137);
    }

    sub_10029D880(v4, *(v0 + 264), type metadata accessor for CustodianRecord);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 264);
      v33 = *(v0 + 224);
      v34 = *(v0 + 405) & 0x3F;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v166[0] = v36;
      *v35 = 134218242;
      *(v35 + 4) = v34;
      *(v35 + 12) = 2080;
      v37 = *(v33 + 20);
      type metadata accessor for UUID();
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_10029DADC(v32, type metadata accessor for CustodianRecord);
      v41 = sub_10021145C(v38, v40, v166);

      *(v35 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "🟡 Owner setup is in pending state: %ld for custodianID: %s", v35, 0x16u);
      sub_10000839C(v36);
    }

    else
    {
      v60 = *(v0 + 264);

      sub_10029DADC(v60, type metadata accessor for CustodianRecord);
    }

    v61 = kAAAnalyticsEventSetupFailSafePending;
    if (*(v0 + 168))
    {
      v62 = *(v0 + 160);
      v63 = kAAAnalyticsEventSetupFailSafePending;
      v64 = String._bridgeToObjectiveC()();
    }

    else
    {
      v81 = kAAAnalyticsEventSetupFailSafePending;
      v64 = 0;
    }

    v83 = *(v0 + 144);
    v82 = *(v0 + 152);
    v84 = objc_opt_self();
    v85 = String._bridgeToObjectiveC()();
    v86 = [v84 analyticsEventWithName:v61 altDSID:v64 flowID:v85];

    if (v86)
    {
      v87 = *(v0 + 405);

      v88 = objc_allocWithZone(NSNumber);
      v89 = v86;
      v90 = [v88 initWithInteger:12];
      sub_100016034(0, &qword_1003D9250, NSString_ptr);
      v91 = NSString.init(stringLiteral:)();
      [v89 setObject:v90 forKeyedSubscript:v91];

      v92 = v89;
      if (sub_1000C00B4(0, 3, v87))
      {
        v93 = _convertErrorToNSError(_:)();
      }

      else
      {
        v93 = 0;
      }

      [v92 updateTaskResultWithError:v93];
    }

    v100 = *(v0 + 208);
    v99 = *(v0 + 216);
    v101 = *(v0 + 200);
    (*(v100 + 16))(v99, *(v0 + 136) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v101);
    Dependency.wrappedValue.getter();
    (*(v100 + 8))(v99, v101);
    v102 = *(v0 + 112);
    swift_getObjectType();
    sub_100246FA8(v86);
    swift_unknownObjectRelease();

    v104 = *(v0 + 272);
    v103 = *(v0 + 280);
    v106 = *(v0 + 256);
    v105 = *(v0 + 264);
    v108 = *(v0 + 240);
    v107 = *(v0 + 248);
    v109 = *(v0 + 232);
    v110 = *(v0 + 216);
    v111 = *(v0 + 192);

    v80 = *(v0 + 8);
    goto LABEL_35;
  }

  if (v2 == 2)
  {
    sub_10029D880(v4, *(v0 + 256), type metadata accessor for CustodianRecord);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 256);
      v21 = *(v0 + 224);
      v22 = *(v0 + 405) & 0x3F;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v166[0] = v24;
      *v23 = 134218242;
      *(v23 + 4) = v22;
      *(v23 + 12) = 2080;
      v25 = *(v21 + 20);
      type metadata accessor for UUID();
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_10029DADC(v20, type metadata accessor for CustodianRecord);
      v29 = sub_10021145C(v26, v28, v166);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "❌ Owner setup is in torn-down-by-other state: %ld for custodianID: %s", v23, 0x16u);
      sub_10000839C(v24);

LABEL_42:

      goto LABEL_43;
    }

    v59 = *(v0 + 256);

    sub_10029DADC(v59, type metadata accessor for CustodianRecord);
    goto LABEL_43;
  }

  v42 = v1 & 0x3F;
  sub_10029D880(v4, *(v0 + 248), type metadata accessor for CustodianRecord);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v0 + 248);
  if (v45)
  {
    v47 = *(v0 + 224);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v166[0] = v49;
    *v48 = 134218242;
    *(v48 + 4) = v42;
    *(v48 + 12) = 2080;
    v50 = *(v47 + 20);
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    sub_10029DADC(v46, type metadata accessor for CustodianRecord);
    v54 = sub_10021145C(v51, v53, v166);

    *(v48 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v43, v44, "❌ Owner setup is in failed state: %ld for custodianID: %s", v48, 0x16u);
    sub_10000839C(v49);
  }

  else
  {

    sub_10029DADC(v46, type metadata accessor for CustodianRecord);
  }

  v65 = *(v0 + 304);
  v66 = *(v0 + 128);
  v67 = *(*(v0 + 136) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck_gracePeriodEvaluator);
  v68 = sub_100276484(v66);
  v69 = v68;
  v70 = sub_100277330(v66, v68);
  if (v65)
  {
    v72 = *(v0 + 272);
    v71 = *(v0 + 280);
    v74 = *(v0 + 256);
    v73 = *(v0 + 264);
    v76 = *(v0 + 240);
    v75 = *(v0 + 248);
    v77 = *(v0 + 232);
    v78 = *(v0 + 216);
    v79 = *(v0 + 192);

    v80 = *(v0 + 8);
LABEL_35:

    return v80();
  }

  v94 = v70;
  v95 = kAAAnalyticsEventSetupFailSafeGracePeriodExpired;
  if (*(v0 + 168))
  {
    v96 = *(v0 + 160);
    v97 = kAAAnalyticsEventSetupFailSafeGracePeriodExpired;
    v98 = String._bridgeToObjectiveC()();
  }

  else
  {
    v140 = kAAAnalyticsEventSetupFailSafeGracePeriodExpired;
    v98 = 0;
  }

  v142 = *(v0 + 144);
  v141 = *(v0 + 152);
  v143 = objc_opt_self();
  v144 = String._bridgeToObjectiveC()();
  v145 = [v143 analyticsEventWithName:v95 altDSID:v98 flowID:v144];
  *(v0 + 312) = v145;
  v146 = v145;

  if (v146)
  {
    v147 = *(v0 + 405);

    v148 = objc_allocWithZone(NSNumber);
    v149 = v146;
    v150 = [v148 initWithInteger:12];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v151 = NSString.init(stringLiteral:)();
    [v149 setObject:v150 forKeyedSubscript:v151];

    v152 = v69 | (v94 << 8);
    v153 = v149;
    if (sub_1000C00B4(0, v152, v147))
    {
      v154 = _convertErrorToNSError(_:)();
    }

    else
    {
      v154 = 0;
    }

    [v153 updateTaskResultWithError:v154];
  }

  else
  {
    v152 = v69 | (v94 << 8);
  }

  v156 = *(v0 + 208);
  v155 = *(v0 + 216);
  v157 = *(v0 + 200);
  (*(v156 + 16))(v155, *(v0 + 136) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v157);
  Dependency.wrappedValue.getter();
  (*(v156 + 8))(v155, v157);
  v158 = *(v0 + 88);
  swift_getObjectType();
  sub_100246FA8(v146);
  swift_unknownObjectRelease();
  v159 = swift_task_alloc();
  *(v0 + 320) = v159;
  *v159 = v0;
  v159[1] = sub_10029263C;
  v160 = *(v0 + 160);
  v161 = *(v0 + 168);
  v162 = *(v0 + 144);
  v163 = *(v0 + 152);
  v164 = *(v0 + 128);
  v165 = *(v0 + 136);

  return sub_1002948CC(v164, v42, v152, v162, v163, v160, v161);
}

uint64_t sub_10029263C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v7 = sub_1002938EC;
  }

  else
  {
    *(v4 + 406) = a1 & 1;
    v7 = sub_100292768;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100292768()
{
  v1 = *(v0 + 406);

  if (v1 == 1)
  {
    v2 = *(v0 + 224);
    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v0 + 176);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = sub_10028D75C();
    *(v0 + 336) = v8;
    v9 = *(v2 + 20);
    *(v0 + 400) = v9;
    v10 = sub_100015A98(0, v7 + v9, 0x6465527075746573, 0xEF6574617453736ELL, 0);
    v12 = v11;
    *(v0 + 344) = v11;
    (*(v4 + 16))(v3, v8 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store, v5);
    Dependency.wrappedValue.getter();
    (*(v4 + 8))(v3, v5);
    v13 = *sub_1000080F8((v0 + 16), *(v0 + 40));
    v14 = swift_task_alloc();
    *(v0 + 352) = v14;
    *v14 = v0;
    v14[1] = sub_10029298C;

    return sub_100013C50(v0 + 56, v10, v12);
  }

  else
  {
    v17 = *(v0 + 272);
    v16 = *(v0 + 280);
    v19 = *(v0 + 256);
    v18 = *(v0 + 264);
    v21 = *(v0 + 240);
    v20 = *(v0 + 248);
    v22 = *(v0 + 232);
    v23 = *(v0 + 216);
    v24 = *(v0 + 192);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_10029298C()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 344);

  if (v0)
  {
    v6 = sub_100293278;
  }

  else
  {
    v6 = sub_100292AC0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100292AC0()
{
  v78 = v0;
  sub_100005814(&qword_1003D87C8, qword_100344800);
  sub_100016034(0, &qword_1003E4F00, NSData_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 96) = 0;
  }

  sub_10000839C((v0 + 16));
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 360);
    v3 = *(v0 + 336);
    v4 = *(v0 + 96);
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = *(v3 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_decoder);
    sub_100015D6C(v5, v6);
    sub_100282280();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v2)
    {

      sub_100012324(v5, v7);

      sub_100012324(v5, v7);
      v9 = 240;
    }

    else
    {
      sub_100012324(v5, v7);

      sub_100012324(v5, v7);
      v9 = *(v0 + 404);
    }

    v11 = *(v0 + 336);

    if (v9 <= 0xEF && (v9 & 0xC0) != 0x40)
    {
      v12 = *(v0 + 288);
      sub_10029D880(*(v0 + 128), *(v0 + 240), type metadata accessor for CustodianRecord);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 240);
      if (v15)
      {
        v17 = *(v0 + 224);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v77[0] = v19;
        *v18 = 136315138;
        v20 = *(v17 + 20);
        type metadata accessor for UUID();
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;
        sub_10029DADC(v16, type metadata accessor for CustodianRecord);
        v24 = sub_10021145C(v21, v23, v77);

        *(v18 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v13, v14, "Owner setup readiness check was concurrently performed on another device for custodianID: %s", v18, 0xCu);
        sub_10000839C(v19);
      }

      else
      {

        sub_10029DADC(v16, type metadata accessor for CustodianRecord);
      }

      v68 = *(v0 + 272);
      v67 = *(v0 + 280);
      v70 = *(v0 + 256);
      v69 = *(v0 + 264);
      v72 = *(v0 + 240);
      v71 = *(v0 + 248);
      v73 = *(v0 + 232);
      v74 = *(v0 + 216);
      v75 = *(v0 + 192);

      v76 = *(v0 + 8);

      return v76();
    }
  }

  else
  {
    v10 = *(v0 + 336);
  }

  v25 = kAAAnalyticsEventCustodianSetupSuccess;
  if (*(v0 + 168))
  {
    v26 = *(v0 + 160);
    v27 = kAAAnalyticsEventCustodianSetupSuccess;
    v28 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = kAAAnalyticsEventCustodianSetupSuccess;
    v28 = 0;
  }

  v31 = *(v0 + 144);
  v30 = *(v0 + 152);
  v32 = objc_opt_self();
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 analyticsEventWithName:v25 altDSID:v28 flowID:v33];
  *(v0 + 368) = v34;
  v35 = v34;

  if (v35)
  {
    v36 = *(v0 + 405);

    v37 = objc_allocWithZone(NSNumber);
    v38 = v35;
    v39 = [v37 initWithInteger:12];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v40 = NSString.init(stringLiteral:)();
    [v38 setObject:v39 forKeyedSubscript:v40];

    v41 = v38;
    if (sub_1000C00B4(0, 3, v36))
    {
      v42 = _convertErrorToNSError(_:)();
    }

    else
    {
      v42 = 0;
    }

    [v41 updateTaskResultWithError:v42];
  }

  v43 = *(v0 + 288);
  v44 = *(v0 + 232);
  v46 = *(v0 + 208);
  v45 = *(v0 + 216);
  v47 = *(v0 + 200);
  v48 = *(v0 + 128);
  (*(v46 + 16))(v45, *(v0 + 136) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v47);
  Dependency.wrappedValue.getter();
  (*(v46 + 8))(v45, v47);
  v49 = *(v0 + 104);
  swift_getObjectType();
  sub_100246FA8(v34);
  swift_unknownObjectRelease();
  sub_10029D880(v48, v44, type metadata accessor for CustodianRecord);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  v52 = os_log_type_enabled(v50, v51);
  v53 = *(v0 + 232);
  if (v52)
  {
    v54 = *(v0 + 224);
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v77[0] = v56;
    *v55 = 136315138;
    v57 = *(v54 + 20);
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    sub_10029DADC(v53, type metadata accessor for CustodianRecord);
    v61 = sub_10021145C(v58, v60, v77);

    *(v55 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v50, v51, "Owner storing that setup readiness check was performed for custodianID: %s", v55, 0xCu);
    sub_10000839C(v56);
  }

  else
  {

    sub_10029DADC(v53, type metadata accessor for CustodianRecord);
  }

  v62 = *(v0 + 400);
  v63 = *(v0 + 128);
  *(v0 + 376) = *(*(v0 + 136) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck____lazy_storage___metadataController);

  v64 = swift_task_alloc();
  *(v0 + 384) = v64;
  *v64 = v0;
  v64[1] = sub_1002936F8;
  v65 = *(v0 + 405);

  return sub_100014ED8(v65, 0, v63 + v62);
}

uint64_t sub_100293278()
{
  v46 = v0;
  v1 = *(v0 + 360);
  sub_10000839C((v0 + 16));

  v2 = *(v0 + 336);

  v3 = kAAAnalyticsEventCustodianSetupSuccess;
  if (*(v0 + 168))
  {
    v4 = *(v0 + 160);
    v5 = kAAAnalyticsEventCustodianSetupSuccess;
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = kAAAnalyticsEventCustodianSetupSuccess;
    v6 = 0;
  }

  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 analyticsEventWithName:v3 altDSID:v6 flowID:v11];
  *(v0 + 368) = v12;
  v13 = v12;

  if (v13)
  {
    v14 = *(v0 + 405);

    v15 = objc_allocWithZone(NSNumber);
    v16 = v13;
    v17 = [v15 initWithInteger:12];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v18 = NSString.init(stringLiteral:)();
    [v16 setObject:v17 forKeyedSubscript:v18];

    v19 = v16;
    if (sub_1000C00B4(0, 3, v14))
    {
      v20 = _convertErrorToNSError(_:)();
    }

    else
    {
      v20 = 0;
    }

    [v19 updateTaskResultWithError:v20];
  }

  v21 = *(v0 + 288);
  v22 = *(v0 + 232);
  v24 = *(v0 + 208);
  v23 = *(v0 + 216);
  v25 = *(v0 + 200);
  v26 = *(v0 + 128);
  (*(v24 + 16))(v23, *(v0 + 136) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v25);
  Dependency.wrappedValue.getter();
  (*(v24 + 8))(v23, v25);
  v27 = *(v0 + 104);
  swift_getObjectType();
  sub_100246FA8(v12);
  swift_unknownObjectRelease();
  sub_10029D880(v26, v22, type metadata accessor for CustodianRecord);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 232);
  if (v30)
  {
    v32 = *(v0 + 224);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v45 = v34;
    *v33 = 136315138;
    v35 = *(v32 + 20);
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    sub_10029DADC(v31, type metadata accessor for CustodianRecord);
    v39 = sub_10021145C(v36, v38, &v45);

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "Owner storing that setup readiness check was performed for custodianID: %s", v33, 0xCu);
    sub_10000839C(v34);
  }

  else
  {

    sub_10029DADC(v31, type metadata accessor for CustodianRecord);
  }

  v40 = *(v0 + 400);
  v41 = *(v0 + 128);
  *(v0 + 376) = *(*(v0 + 136) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck____lazy_storage___metadataController);

  v42 = swift_task_alloc();
  *(v0 + 384) = v42;
  *v42 = v0;
  v42[1] = sub_1002936F8;
  v43 = *(v0 + 405);

  return sub_100014ED8(v43, 0, v41 + v40);
}