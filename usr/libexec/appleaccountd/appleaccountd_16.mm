void sub_1001CAE18(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAB18);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v22 = v6;
      *v5 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v7 = String.init<A>(describing:)();
      v9 = sub_10021145C(v7, v8, &v22);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error migrating other records : %s", v5, 0xCu);
      sub_10000839C(v6);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = *(Strong + 104);

      os_unfair_lock_lock(v11);
    }

    swift_beginAccess();
    v12 = swift_weakLoadStrong();
    if (v12)
    {
      v13 = v12;
      swift_beginAccess();
      v14 = *(v13 + 120);
      swift_errorRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v13 + 120) = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_1003062A8(0, v14[2] + 1, 1, v14);
        *(v13 + 120) = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_1003062A8((v16 > 1), v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      v14[v17 + 4] = a1;
      *(v13 + 120) = v14;
      swift_endAccess();
    }

    swift_beginAccess();
    v18 = swift_weakLoadStrong();
    if (v18)
    {
      v19 = *(v18 + 104);

      os_unfair_lock_unlock(v19);
    }
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    v21 = *(v20 + 96);

    dispatch_group_leave(v21);
  }
}

void sub_1001CB118(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v91 = a5;
  v95 = a3;
  v96 = a4;
  v89 = a2;
  v6 = type metadata accessor for InheritanceInvitationRecord();
  v7 = *(*(v6 - 1) + 64);
  v8 = __chkstk_darwin(v6);
  v90 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v88 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v88 - v14;
  v16 = __chkstk_darwin(v13);
  v92 = (&v88 - v17);
  __chkstk_darwin(v16);
  v19 = &v88 - v18;
  v20 = type metadata accessor for UUID();
  v93 = *(v20 - 8);
  v94 = v20;
  v21 = *(v93 + 64);
  __chkstk_darwin(v20);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = (&v88 - v26);
  sub_100012D04(a1, &v88 - v26, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    v98[0] = *v27;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for InheritanceError(0);
    if (swift_dynamicCast())
    {
      v29 = v99;
      v97 = 3;
      v98[0] = v99;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001CC2A0(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v30 = v99;
      v97 = v99;
      v31 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v31)
      {
        if (qword_1003D7F68 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_100008D04(v32, qword_1003FAB18);
        v33 = v93;
        v34 = v94;
        (*(v93 + 16))(v23, v89, v94);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v98[0] = v92;
          *v37 = 136315138;
          sub_1001CC2A0(&qword_1003D9150, &type metadata accessor for UUID);
          v38 = dispatch thunk of CustomStringConvertible.description.getter();
          v40 = v39;
          (*(v33 + 8))(v23, v34);
          v41 = sub_10021145C(v38, v40, v98);

          *(v37 + 4) = v41;
          _os_log_impl(&_mh_execute_header, v35, v36, "There is no InheritanceInvitationRecord for beneficiaryID - %s.", v37, 0xCu);
          sub_10000839C(v92);
        }

        else
        {

          (*(v33 + 8))(v23, v34);
        }

        v95(0);

        return;
      }
    }

    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_100008D04(v76, qword_1003FAB18);
    swift_errorRetain();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v98[0] = v80;
      *v79 = 136315138;
      v99 = v28;
      swift_errorRetain();
      v81 = String.init<A>(describing:)();
      v83 = sub_10021145C(v81, v82, v98);

      *(v79 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v77, v78, "Error fetching InheritanceInvitationRecord. Aborting migration - %s", v79, 0xCu);
      sub_10000839C(v80);
    }

    swift_errorRetain();
    v95(v28);
  }

  else
  {
    sub_1001CC454(v27, v19, type metadata accessor for InheritanceInvitationRecord);
    v42 = v19;
    if (v19[v6[11]])
    {
      if (qword_1003D7F68 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100008D04(v43, qword_1003FAB18);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "InheritanceInvitationRecord is already in Manatee.", v46, 2u);
      }

      v95(0);
      v47 = v19;
    }

    else
    {
      sub_1001CC4BC(v19, v15, type metadata accessor for InheritanceInvitationRecord);
      v48 = &v12[v6[6]];
      *v48 = 0;
      *(v48 + 1) = 0;
      v49 = &v12[v6[7]];
      *v49 = 0;
      *(v49 + 1) = 0;
      v50 = v94;
      v51 = *(v93 + 16);
      v51(v12, v15, v94);
      v51(&v12[v6[9]], &v15[v6[9]], v50);
      v52 = v6[10];
      v53 = *&v15[v52];
      v54 = *&v15[v52 + 8];
      v55 = &v12[v52];
      *v55 = v53;
      v55[1] = v54;
      v56 = v6[5];
      v57 = *&v15[v56];
      v58 = *&v15[v56 + 8];
      v59 = &v12[v56];
      *v59 = v57;
      *(v59 + 1) = v58;
      v60 = &v15[v6[6]];
      v61 = *(v60 + 1);
      if (v61)
      {
        *v48 = *v60;
        *(v48 + 1) = v61;
      }

      v62 = &v15[v6[7]];
      v63 = *(v62 + 1);
      if (v63)
      {
        *v49 = *v62;
        *(v49 + 1) = v63;
      }

      v64 = *&v15[v6[8]];
      sub_100015D6C(v53, v54);

      sub_1001CC524(v15, type metadata accessor for InheritanceInvitationRecord);
      *&v12[v6[8]] = v64;
      v12[v6[11]] = 1;
      v65 = v92;
      sub_1001CC454(v12, v92, type metadata accessor for InheritanceInvitationRecord);
      if (qword_1003D7F68 != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      sub_100008D04(v66, qword_1003FAB18);
      v67 = v90;
      sub_1001CC4BC(v65, v90, type metadata accessor for InheritanceInvitationRecord);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v98[0] = v71;
        *v70 = 136315138;
        v72 = sub_1001EEBA0();
        v74 = v73;
        sub_1001CC524(v67, type metadata accessor for InheritanceInvitationRecord);
        v75 = sub_10021145C(v72, v74, v98);

        *(v70 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v68, v69, "Created new InheritanceHealthRecord - %s", v70, 0xCu);
        sub_10000839C(v71);
      }

      else
      {

        sub_1001CC524(v67, type metadata accessor for InheritanceInvitationRecord);
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        sub_100040738(Strong + 56, v98);

        v85 = sub_1000080F8(v98, v98[3]);
        v86 = swift_allocObject();
        *(v86 + 16) = v95;
        *(v86 + 24) = v96;
        v87 = *v85;

        sub_100215214(v65, sub_1001CC5BC, v86);

        sub_1001CC524(v65, type metadata accessor for InheritanceInvitationRecord);
        sub_1001CC524(v42, type metadata accessor for InheritanceInvitationRecord);
        sub_10000839C(v98);
        return;
      }

      sub_1001CC524(v65, type metadata accessor for InheritanceInvitationRecord);
      v47 = v42;
    }

    sub_1001CC524(v47, type metadata accessor for InheritanceInvitationRecord);
  }
}

uint64_t sub_1001CBC18(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v10 - v6);
  sub_100012D04(a1, &v10 - v6, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    swift_errorRetain();
    a2(v8);
  }

  else
  {
    a2(0);
    return sub_100008D3C(v7, &qword_1003E1290, &unk_1003444C0);
  }
}

uint64_t sub_1001CBD50(uint64_t a1, uint64_t a2, void (*a3)(uint64_t a1))
{
  v39 = a2;
  v5 = sub_100005814(&unk_1003E1298, &unk_100344700);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  v14 = type metadata accessor for BeneficiaryInfoRecord();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + *(v16 + 48));
  v20 = qword_1003D7F68;

  if (v19 == 1)
  {
    if (v20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAB18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "BeneficiaryInfoRecord is already in Manatee.", v24, 2u);
    }

    sub_1001CC4BC(a1, v13, type metadata accessor for BeneficiaryInfoRecord);
    swift_storeEnumTagMultiPayload();
    sub_1001CA784(v13, a3);
    sub_100008D3C(v13, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    if (v20 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAB18);
    v38 = a1;
    sub_1001CC4BC(a1, v18, type metadata accessor for BeneficiaryInfoRecord);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = a3;
      v30 = v29;
      v40[0] = v29;
      *v28 = 136315138;
      type metadata accessor for UUID();
      sub_1001CC2A0(&qword_1003D9150, &type metadata accessor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_1001CC524(v18, type metadata accessor for BeneficiaryInfoRecord);
      v34 = sub_10021145C(v31, v33, v40);

      *(v28 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Migrating BeneficiaryInfoRecord with beneficiaryID %s...", v28, 0xCu);
      sub_10000839C(v30);
      a3 = v37;
    }

    else
    {

      sub_1001CC524(v18, type metadata accessor for BeneficiaryInfoRecord);
    }

    (*(v6 + 16))(v9, v39 + OBJC_IVAR____TtC13appleaccountd26BeneficiaryManateeMigrator__accessKeyRepairHandler, v5);
    Dependency.wrappedValue.getter();
    (*(v6 + 8))(v9, v5);
    v35 = *sub_1000080F8(v40, v40[3]);
    sub_100195F94(v38, 1, sub_1001CC2E8, a3);
    sub_10000839C(v40);
  }
}

uint64_t sub_1001CC240()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001CC288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001CC2A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001CC2F8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

void sub_1001CC3A8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  sub_1001CB118(a1, v1 + v4, v9, v10, v8);
}

uint64_t sub_1001CC454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CC4BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CC524(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001CC584()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001CC5E4(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_1001CC638(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (!a1)
  {
    return sub_1001CC868(a3, a4, a5);
  }

  swift_errorRetain();
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAA0);
  swift_errorRetain();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_10021145C(a6, a7, &v19);
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "Not Accepting CKShare from sender %s due to %@", v14, 0x16u);
    sub_100083380(v15);

    sub_10000839C(v16);
  }

  if (a4)
  {
    swift_errorRetain();
    a4(a1);
  }
}

uint64_t sub_1001CC868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for InheritanceAccessKeyMessage();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Accepting BeneficiaryInfoRecord Share...", v15, 2u);
  }

  v16 = sub_1000080F8((v4 + 16), *(v4 + 40));
  v17 = swift_allocObject();
  swift_weakInit();
  sub_1001CE0C4(a1, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceAccessKeyMessage);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  sub_1001CE298(v11, v20 + v18, type metadata accessor for InheritanceAccessKeyMessage);
  *(v20 + v19) = v17;
  v21 = *v16;
  sub_100083AA0(a2);

  sub_1001F5D58(a1, sub_1001CE300, v20);
}

uint64_t sub_1001CCAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v32 = a5;
  v33 = a3;
  v30 = a4;
  v31 = a2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAAA0);
  (*(v9 + 16))(v12, a1, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 136315138;
    sub_1001CE044(&qword_1003D9150, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v9 + 8))(v12, v8);
    v22 = sub_10021145C(v19, v21, &v34);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Checking for existing BenefactorInfoRecord with beneficiaryID - %s", v17, 0xCu);
    sub_10000839C(v18);

    a1 = v29;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v23 = sub_1000080F8((v6 + 56), *(v6 + 80));
  v24 = swift_allocObject();
  v25 = v31;
  v24[2] = v30;
  v26 = v33;
  v24[3] = v32;
  v24[4] = v25;
  v24[5] = v26;
  v27 = *v23;

  sub_10021B0E8(a1, sub_1001CDFC8, v24);
}

uint64_t sub_1001CCDDC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v71 = a4;
  v72 = a2;
  v8 = type metadata accessor for BenefactorInfoRecord();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v69 - v14;
  __chkstk_darwin(v13);
  v17 = v69 - v16;
  v18 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (v69 - v20);
  sub_1001CDFD4(a1, v69 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v75 = *v21;
    v22 = v75;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for InheritanceError(0);
    if (swift_dynamicCast())
    {
      v23 = v74;
      v75 = v74;
      v73 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001CE044(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v24 = v74;
      v73 = v74;
      v25 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v25)
      {
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100008D04(v26, qword_1003FAAA0);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "No existing BenefactorInfoRecord found.", v29, 2u);
        }

LABEL_38:
        swift_errorRetain();
        v72(v22);
      }
    }

    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100008D04(v61, qword_1003FAAA0);
    swift_errorRetain();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v74 = v22;
      v75 = v65;
      *v64 = 136315138;
      swift_errorRetain();
      v66 = String.init<A>(describing:)();
      v68 = sub_10021145C(v66, v67, &v75);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "Failed to fetch BenefactorInfoRecord: %s", v64, 0xCu);
      sub_10000839C(v65);
    }

    goto LABEL_38;
  }

  v70 = v8;
  sub_1001CE298(v21, v17, type metadata accessor for BenefactorInfoRecord);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100008D04(v30, qword_1003FAAA0);
  sub_1001CE0C4(v17, v15, type metadata accessor for BenefactorInfoRecord);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  v34 = os_log_type_enabled(v32, v33);
  v69[1] = a3;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v69[0] = v31;
    v36 = v35;
    v37 = swift_slowAlloc();
    v75 = v37;
    *v36 = 136315138;
    v38 = sub_1001E2E64();
    v40 = v39;
    sub_1001CE3F4(v15, type metadata accessor for BenefactorInfoRecord);
    v41 = sub_10021145C(v38, v40, &v75);

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "Found an existing BenefactorInfoRecord - %s", v36, 0xCu);
    sub_10000839C(v37);
  }

  else
  {

    sub_1001CE3F4(v15, type metadata accessor for BenefactorInfoRecord);
  }

  v42 = v70;
  sub_1001CE0C4(v17, v12, type metadata accessor for BenefactorInfoRecord);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v45 = 136315394;
    v46 = &v12[*(v42 + 20)];
    v47 = *v46;
    v48 = v46[1];

    sub_1001CE3F4(v12, type metadata accessor for BenefactorInfoRecord);
    v49 = sub_10021145C(v47, v48, &v75);
    v42 = v70;

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    v50 = v71;
    *(v45 + 14) = sub_10021145C(v71, a5, &v75);
    _os_log_impl(&_mh_execute_header, v43, v44, "Comparing handles from BenefactorInfoRecord: %s and IDS message: %s are same and not empty.", v45, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001CE3F4(v12, type metadata accessor for BenefactorInfoRecord);
    v50 = v71;
  }

  v51 = &v17[*(v42 + 20)];
  v52 = *v51;
  v53 = *(v51 + 1);
  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v54)
  {
    goto LABEL_28;
  }

  v55 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v55 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (v55 && (v52 == v50 && v53 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && *&v17[*(v42 + 24)] == 2)
  {
    v72(0);
  }

  else
  {
LABEL_28:
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "⛔️ Cannot proceed. Beneficiary handle does not match incoming message from: handle", v58, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v74 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001CE044(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v59 = v75;
    v72(v75);
  }

  return sub_1001CE3F4(v17, type metadata accessor for BenefactorInfoRecord);
}

uint64_t sub_1001CD708(uint64_t result, void (*a2)(uint64_t), uint64_t a3, _BYTE *a4)
{
  if (result)
  {
    v6 = result;
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAAA0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v12 = String.init<A>(describing:)();
      v14 = sub_10021145C(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error Accepting BeneficiaryInfoRecord Share : %s", v10, 0xCu);
      sub_10000839C(v11);
    }

    if (a2)
    {
      swift_errorRetain();
      a2(v6);
    }
  }

  else if (*a4 == 2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v16 = type metadata accessor for InheritanceAccessKeyMessage();
      sub_1001CD940(&a4[*(v16 + 20)], a2, a3);
    }
  }

  else if (a2)
  {
    return (a2)(0);
  }

  return result;
}

uint64_t sub_1001CD940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAAA0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Notifying Beneficiary about AccessKey change...", v11, 2u);
  }

  v12 = sub_1000080F8((v4 + 56), *(v4 + 80));
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  v15 = *v12;
  sub_100083AA0(a2);

  sub_10021B0E8(a1, sub_1001CE3E8, v14);
}

uint64_t sub_1001CDAE0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v42 = a3;
  v5 = type metadata accessor for TrustedContactUserNotification();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for BenefactorInfoRecord();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  v16 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v41 - v18);
  sub_1001CDFD4(a1, &v41 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAA0);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v44[0] = v25;
      *v24 = 136315138;
      v43[0] = v20;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v26 = String.init<A>(describing:)();
      v28 = sub_10021145C(v26, v27, v44);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error fetching Benefactor : %s", v24, 0xCu);
      sub_10000839C(v25);
    }

    if (a2)
    {
      swift_errorRetain();
      (a2)(v20);
    }
  }

  else
  {
    sub_1001CE298(v19, v15, type metadata accessor for BenefactorInfoRecord);
    sub_1001CE0C4(v15, v13, type metadata accessor for BenefactorInfoRecord);
    v30 = objc_allocWithZone(AABenefactorInfo);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v32 = &v13[*(v9 + 20)];
    v33 = *v32;
    v34 = *(v32 + 1);
    v35 = String._bridgeToObjectiveC()();
    v36 = [v30 initWithBeneficiaryID:isa handle:v35 status:*&v13[*(v9 + 24)]];

    sub_1001CE3F4(v13, type metadata accessor for BenefactorInfoRecord);
    *v8 = v36;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_100040738(Strong + 96, v43);
      v38 = v36;

      v39 = sub_1000080F8(v43, v43[3]);
      sub_1002CA150(v44);
      v40 = *v39;
      sub_1002D2E28(v44, a2, v42);
      sub_1000C5460(v44);

      sub_1001CE3F4(v8, type metadata accessor for TrustedContactUserNotification);
      sub_1001CE3F4(v15, type metadata accessor for BenefactorInfoRecord);
      return sub_10000839C(v43);
    }

    else
    {
      sub_1001CE3F4(v8, type metadata accessor for TrustedContactUserNotification);
      return sub_1001CE3F4(v15, type metadata accessor for BenefactorInfoRecord);
    }
  }
}

uint64_t sub_1001CDF88()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001CDFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CE044(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001CE08C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001CE0C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CE12C()
{
  v1 = type metadata accessor for InheritanceAccessKeyMessage();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  if (*(v0 + 16))
  {
    v4 = *(v0 + 24);
  }

  v5 = (v2 + 32) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v5;
  v8 = *(v1 + 20);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  v10 = v7 + *(v1 + 24);
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = type metadata accessor for CloudShareInfo();
  v13 = *(v10 + *(v12 + 20) + 8);

  v14 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_1001CE298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CE300(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceAccessKeyMessage() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_1001CD708(a1, v6, v7, (v1 + v4));
}

uint64_t sub_1001CE3A0()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001CE3F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001CE454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v86 = a6;
  v87 = a7;
  v88 = a4;
  v89 = a3;
  v83 = type metadata accessor for InheritanceInvitationResponseMessage();
  v11 = *(*(v83 - 8) + 64);
  v12 = __chkstk_darwin(v83);
  v84 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v80 - v14;
  v16 = type metadata accessor for InheritanceInvitationMessage();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v80 - v23;
  v25 = *(v21 + 16);
  v85 = v7;
  v25(&v80 - v23, v7 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler__accountStore, v20);
  Dependency.wrappedValue.getter();
  (*(v21 + 8))(v24, v20);
  v26 = sub_1000080F8(v91, v91[3]);
  v27 = *v26;
  v28 = [*(*v26 + 16) aa_primaryAppleAccount];
  if (!v28)
  {
    goto LABEL_5;
  }

  v29 = *(v27 + 16);
  v30 = v28;
  v31 = a1;
  v32 = [v28 aa_altDSID];
  v33 = [v29 aa_authKitAccountForAltDSID:v32];

  a1 = v31;
  if (!v33)
  {
    goto LABEL_5;
  }

  v34 = [*(v27 + 24) canBeBeneficiaryForAccount:v33];

  if (v34)
  {
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = swift_allocObject();
    v37 = v86;
    v38 = v87;
    v36[2] = v86;
    v36[3] = v38;
    v39 = v88;
    v36[4] = v35;
    v36[5] = v39;
    v36[6] = a5;
    sub_100083AA0(v37);

    sub_1001CF4C0(v31, a2, v89, sub_1001D1CB8, v36);
  }

  else
  {
LABEL_5:
    v81 = a2;
    v82 = a5;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAAA0);
    sub_1001D1F10(a1, v19, type metadata accessor for InheritanceInvitationMessage);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v80 = a1;
      v45 = v44;
      v90 = v44;
      *v43 = 136315138;
      v46 = *(v16 + 20);
      type metadata accessor for UUID();
      sub_1001CE044(&qword_1003D9150, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_1001D1F78(v19, type metadata accessor for InheritanceInvitationMessage);
      v50 = sub_10021145C(v47, v49, &v90);

      *(v43 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v41, v42, "User is not eligible to be a beneficiary, replying rejected for beneficiaryID: %s", v43, 0xCu);
      sub_10000839C(v45);
      a1 = v80;
    }

    else
    {

      sub_1001D1F78(v19, type metadata accessor for InheritanceInvitationMessage);
    }

    v51 = sub_1000080F8((v85 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_messenger), *(v85 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_messenger + 24));
    v52 = *(v16 + 20);
    v53 = swift_allocObject();
    v55 = v86;
    v54 = v87;
    *(v53 + 16) = v86;
    *(v53 + 24) = v54;
    v56 = *v51;
    v57 = v83;
    v58 = *(v83 + 20);
    v59 = type metadata accessor for UUID();
    (*(*(v59 - 8) + 16))(&v15[v58], a1 + v52, v59);
    *v15 = 0;
    v15[*(v57 + 24)] = 0;
    v60 = v84;
    sub_1001D1F10(v15, v84, type metadata accessor for InheritanceInvitationResponseMessage);
    sub_100083AA0(v55);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v90 = v64;
      *v63 = 136315138;
      v65 = sub_1001DB654();
      v66 = v60;
      v68 = v67;
      sub_1001D1F78(v66, type metadata accessor for InheritanceInvitationResponseMessage);
      v69 = sub_10021145C(v65, v68, &v90);

      *(v63 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v61, v62, "Created invitation response message - %s.\nResponding to invitation...", v63, 0xCu);
      sub_10000839C(v64);
    }

    else
    {

      sub_1001D1F78(v60, type metadata accessor for InheritanceInvitationResponseMessage);
    }

    v70 = v89;
    v71 = v82;
    v72 = sub_1000080F8((v56 + 16), *(v56 + 40));
    if (_swiftEmptyArrayStorage >> 62)
    {
      v77 = v72;
      v78 = _CocoaArrayWrapper.endIndex.getter();
      v74 = v81;
      if (v78)
      {
        sub_10013446C(_swiftEmptyArrayStorage);
        v73 = v79;
      }

      else
      {
        v73 = &_swiftEmptySetSingleton;
      }

      v72 = v77;
    }

    else
    {
      v73 = &_swiftEmptySetSingleton;
      v74 = v81;
    }

    v75 = *v72;

    sub_1002B4B0C(v15, v74, v70, v88, v71, v73, v75, sub_1001D1C2C, v53);

    sub_1001D1F78(v15, type metadata accessor for InheritanceInvitationResponseMessage);
  }

  return sub_10000839C(v91);
}

uint64_t sub_1001CEC18(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v86 = a4;
  v88 = a3;
  v10 = type metadata accessor for InheritanceInvitationResponseMessage();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v85 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v87 = &v80 - v14;
  v15 = type metadata accessor for BenefactorInfoRecord();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v80 - v20;
  v22 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v80 - v24);
  sub_1001CDFD4(a1, &v80 - v24);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001D1EA8(v25, v21, type metadata accessor for BenefactorInfoRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    v37 = sub_100008D04(v36, qword_1003FAAA0);
    sub_1001D1F10(v21, v19, type metadata accessor for BenefactorInfoRecord);
    v84 = v37;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    v40 = os_log_type_enabled(v38, v39);
    v82 = a5;
    v83 = a6;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v81 = a2;
      v42 = v41;
      v43 = swift_slowAlloc();
      v90[0] = v43;
      *v42 = 136315138;
      v44 = sub_1001E2E64();
      v46 = v45;
      sub_1001D1F78(v19, type metadata accessor for BenefactorInfoRecord);
      v47 = sub_10021145C(v44, v46, v90);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v38, v39, "Saved Benefactor to storage - %s", v42, 0xCu);
      sub_10000839C(v43);

      a2 = v81;
    }

    else
    {

      sub_1001D1F78(v19, type metadata accessor for BenefactorInfoRecord);
    }

    if (*&v21[*(v15 + 24)] == 2)
    {
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Status is accepted. Responding to invitation.", v50, 2u);
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        sub_100040738(Strong + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_messenger, v90);

        v52 = sub_1000080F8(v90, v90[3]);
        v53 = &v21[*(v15 + 20)];
        v54 = *v53;
        v86 = v53[1];
        v55 = swift_allocObject();
        v56 = v88;
        *(v55 + 16) = a2;
        *(v55 + 24) = v56;
        v57 = *v52;
        v58 = *(v10 + 20);
        v59 = type metadata accessor for UUID();
        v60 = v87;
        (*(*(v59 - 8) + 16))(&v87[v58], v21, v59);
        *v60 = 0;
        v60[*(v10 + 24)] = 1;
        v61 = v85;
        sub_1001D1F10(v60, v85, type metadata accessor for InheritanceInvitationResponseMessage);
        sub_100083AA0(a2);
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v88 = v57;
          v89 = v65;
          v66 = v65;
          *v64 = 136315138;
          v67 = sub_1001DB654();
          v68 = v54;
          v70 = v69;
          sub_1001D1F78(v61, type metadata accessor for InheritanceInvitationResponseMessage);
          v71 = sub_10021145C(v67, v70, &v89);
          v54 = v68;

          *(v64 + 4) = v71;
          _os_log_impl(&_mh_execute_header, v62, v63, "Created invitation response message - %s.\nResponding to invitation...", v64, 0xCu);
          sub_10000839C(v66);
          v57 = v88;
        }

        else
        {

          sub_1001D1F78(v61, type metadata accessor for InheritanceInvitationResponseMessage);
        }

        v73 = v82;
        v72 = v83;
        v74 = sub_1000080F8((v57 + 16), *(v57 + 40));
        if (_swiftEmptyArrayStorage >> 62)
        {
          v78 = v74;
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_10013446C(_swiftEmptyArrayStorage);
            v75 = v79;
          }

          else
          {
            v75 = &_swiftEmptySetSingleton;
          }

          v74 = v78;
        }

        else
        {
          v75 = &_swiftEmptySetSingleton;
        }

        v76 = *v74;

        v77 = v87;
        sub_1002B4B0C(v87, v54, v86, v73, v72, v75, v76, sub_1001D25D8, v55);

        sub_1001D1F78(v77, type metadata accessor for InheritanceInvitationResponseMessage);
        sub_1001D1F78(v21, type metadata accessor for BenefactorInfoRecord);
        return sub_10000839C(v90);
      }
    }

    else if (a2)
    {
      a2(0);
    }

    return sub_1001D1F78(v21, type metadata accessor for BenefactorInfoRecord);
  }

  v26 = *v25;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100008D04(v27, qword_1003FAAA0);
  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v90[0] = v31;
    *v30 = 136315138;
    v90[5] = v26;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v32 = String.init<A>(describing:)();
    v34 = sub_10021145C(v32, v33, v90);

    *(v30 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v29, "Unable to persist BenefactorInfoRecord: %s", v30, 0xCu);
    sub_10000839C(v31);
  }

  if (a2)
  {
    swift_errorRetain();
    a2(v26);
  }
}

uint64_t sub_1001CF4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v45 = a3;
  v46 = a5;
  v43 = a2;
  v44 = a4;
  v8 = type metadata accessor for InheritanceInvitationMessage();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  v10 = __chkstk_darwin(v8);
  v11 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAA0);
  sub_1001D1F10(a1, v13, type metadata accessor for InheritanceInvitationMessage);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = v5;
    v19 = v18;
    v47 = v18;
    *v17 = 136315138;
    v20 = *(v8 + 20);
    type metadata accessor for UUID();
    v41 = a1;
    sub_1001CE044(&qword_1003D9150, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_1001D1F78(v13, type metadata accessor for InheritanceInvitationMessage);
    v24 = sub_10021145C(v21, v23, &v47);

    *(v17 + 4) = v24;
    a1 = v41;
    _os_log_impl(&_mh_execute_header, v15, v16, "Checking for existing BenefactorInfoRecord with beneficiaryID - %s", v17, 0xCu);
    sub_10000839C(v19);
    v6 = v40;
  }

  else
  {

    sub_1001D1F78(v13, type metadata accessor for InheritanceInvitationMessage);
  }

  v25 = sub_1000080F8((v6 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController), *(v6 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController + 24));
  v26 = *(v8 + 20);
  v27 = swift_allocObject();
  swift_weakInit();
  sub_1001D1F10(a1, v11, type metadata accessor for InheritanceInvitationMessage);
  v28 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v29 = (v9 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = a1;
  v32 = swift_allocObject();
  *(v32 + 16) = v27;
  sub_1001D1EA8(v11, v32 + v28, type metadata accessor for InheritanceInvitationMessage);
  v33 = (v32 + v29);
  v34 = v44;
  v36 = v45;
  v35 = v46;
  *v33 = v43;
  v33[1] = v36;
  v37 = (v32 + v30);
  *v37 = v34;
  v37[1] = v35;
  v38 = *v25;

  sub_10021B0E8(v31 + v26, sub_1001D1DF4, v32);
}

uint64_t sub_1001CF8A8()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController));
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_messenger));
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_familyManager));
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_messageUtil));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InheritanceInvitationHandler()
{
  result = qword_1003E1CC0;
  if (!qword_1003E1CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CF9E4()
{
  sub_1001CFA84();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001CFA84()
{
  if (!qword_1003DA6C0[0])
  {
    sub_100008CBC(&unk_1003DA2A0, &unk_10033BDA0);
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, qword_1003DA6C0);
    }
  }
}

void sub_1001CFAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v65 = a6;
  v66 = a7;
  v63 = a3;
  v64 = a4;
  v10 = type metadata accessor for BenefactorInfoRecord();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v61 - v15;
  v17 = type metadata accessor for InheritanceInvitationMessage();
  v62 = *(v17 - 8);
  v18 = *(v62 + 64);
  __chkstk_darwin(v17 - 8);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v24 = (v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = (v61 - v25);
  sub_1001CDFD4(a1, v61 - v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    v67[0] = *v26;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for InheritanceError(0);
    if (swift_dynamicCast())
    {
      v61[0] = a5;
      v61[1] = a2;
      v28 = v69;
      v67[0] = v69;
      v68 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001CE044(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v29 = v69;
      v68 = v69;
      v30 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v30)
      {
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_100008D04(v31, qword_1003FAAA0);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "No existing record found.", v34, 2u);
        }

        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v36 = sub_1000080F8((Strong + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController), *(Strong + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController + 24));
          v37 = swift_allocObject();
          swift_weakInit();
          sub_1001D1F10(v63, v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceInvitationMessage);
          v38 = (*(v62 + 80) + 56) & ~*(v62 + 80);
          v39 = swift_allocObject();
          v40 = v65;
          v41 = v66;
          v39[2] = v37;
          v39[3] = v40;
          v42 = v64;
          v39[4] = v41;
          v39[5] = v42;
          v39[6] = v61[0];
          sub_1001D1EA8(v19, v39 + v38, type metadata accessor for InheritanceInvitationMessage);
          v43 = *v36;

          sub_10021E8F0(sub_1001D20E8, v39);
        }

        else
        {
        }

        return;
      }
    }

    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100008D04(v53, qword_1003FAAA0);
    swift_errorRetain();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v67[0] = v57;
      *v56 = 136315138;
      v69 = v27;
      swift_errorRetain();
      v58 = String.init<A>(describing:)();
      v60 = sub_10021145C(v58, v59, v67);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed to fetch BenefactorInfoRecord: %s", v56, 0xCu);
      sub_10000839C(v57);
    }

    *v24 = v27;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v65(v24);

    sub_100008D3C(v24, &unk_1003E1DD0, &qword_1003444D0);
  }

  else
  {
    sub_1001D1EA8(v26, v16, type metadata accessor for BenefactorInfoRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100008D04(v44, qword_1003FAAA0);
    sub_1001D1F10(v16, v14, type metadata accessor for BenefactorInfoRecord);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v67[0] = v48;
      *v47 = 136315138;
      v49 = sub_1001E2E64();
      v51 = v50;
      sub_1001D1F78(v14, type metadata accessor for BenefactorInfoRecord);
      v52 = sub_10021145C(v49, v51, v67);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Found an existing BenefactorInfoRecord - %s", v47, 0xCu);
      sub_10000839C(v48);
    }

    else
    {

      sub_1001D1F78(v14, type metadata accessor for BenefactorInfoRecord);
    }

    sub_1001D1F10(v16, v24, type metadata accessor for BenefactorInfoRecord);
    swift_storeEnumTagMultiPayload();
    v65(v24);
    sub_100008D3C(v24, &unk_1003E1DD0, &qword_1003444D0);
    sub_1001D1F78(v16, type metadata accessor for BenefactorInfoRecord);
  }
}

uint64_t sub_1001D0328(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), void (*a5)(uint64_t *), uint64_t a6, unint64_t a7, uint64_t a8)
{
  v41 = a6;
  v42 = a7;
  v43 = a1;
  v12 = type metadata accessor for InheritanceInvitationMessage();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v39 - v17);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for InheritanceError(0);
    v44 = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001CE044(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v18 = v45;
    swift_storeEnumTagMultiPayload();
    a4(v18);
    return sub_100008D3C(v18, &unk_1003E1DD0, &qword_1003444D0);
  }

  v20 = Strong;
  v39 = v15;
  v40 = a5;
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAA0);
    v22 = v43;
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    sub_1000A6B60(v22, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44 = v22;
      v45 = v26;
      *v25 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v27 = String.init<A>(describing:)();
      v29 = sub_10021145C(v27, v28, &v45);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to fetch checkManateeStorageAvailability: %s", v25, 0xCu);
      sub_10000839C(v26);
    }

    *v18 = v22;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a4(v18);

    return sub_100008D3C(v18, &unk_1003E1DD0, &qword_1003444D0);
  }

  sub_1001D1F10(a8, &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceInvitationMessage);
  v31 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v32 = (v31 + v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v20;
  sub_1001D1EA8(&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v31, type metadata accessor for InheritanceInvitationMessage);
  v34 = v33 + ((v31 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v36 = v41;
  v35 = v42;
  *v34 = v41;
  *(v34 + 8) = v35;
  *(v34 + 16) = v43 & 1;
  v37 = (v33 + v32);
  v38 = v40;
  *v37 = a4;
  v37[1] = v38;

  sub_1001D0C74(v36, v35, sub_1001D22A0, v33);
}

uint64_t sub_1001D0790(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v64 = a2;
  v65 = a8;
  v63 = a7;
  v56 = a3;
  v57 = a4;
  v11 = type metadata accessor for BenefactorInfoRecord();
  v60 = *(v11 - 1);
  v12 = *(v60 + 64);
  v13 = __chkstk_darwin(v11);
  v62 = &v54[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v59 = &v54[-v16];
  v17 = __chkstk_darwin(v15);
  v58 = &v54[-v18];
  v61 = v19;
  __chkstk_darwin(v17);
  v21 = &v54[-v20];
  v55 = a1;
  if (a6 & a1)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  v23 = *(type metadata accessor for InheritanceInvitationMessage() + 20);
  v24 = v11[7];
  v25 = type metadata accessor for UUID();
  v26 = *(*(v25 - 8) + 16);
  v26(&v21[v24], v56 + v23, v25);
  v26(v21, &v21[v24], v25);
  v27 = &v21[v11[5]];
  *v27 = v57;
  v27[1] = a5;
  *&v21[v11[6]] = v22;
  *&v21[v11[8]] = xmmword_10033F8D0;
  v28 = v11[9];
  LODWORD(v57) = a6;
  v21[v28] = a6;
  v29 = qword_1003D7F40;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100008D04(v30, qword_1003FAAA0);
  v31 = v58;
  sub_1001D1F10(v21, v58, type metadata accessor for BenefactorInfoRecord);
  v32 = v59;
  sub_1001D1F10(v21, v59, type metadata accessor for BenefactorInfoRecord);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v66 = v36;
    *v35 = 136315906;
    v37 = sub_1001E2E64();
    v38 = v31;
    v40 = v39;
    sub_1001D1F78(v38, type metadata accessor for BenefactorInfoRecord);
    v41 = sub_10021145C(v37, v40, &v66);
    v42 = v32;
    v43 = v41;

    *(v35 + 4) = v43;
    *(v35 + 12) = 1024;
    *(v35 + 14) = v57 & 1;
    *(v35 + 18) = 1024;
    *(v35 + 20) = v55 & 1;
    *(v35 + 24) = 2048;
    v44 = *(v42 + v11[6]);
    sub_1001D1F78(v42, type metadata accessor for BenefactorInfoRecord);
    *(v35 + 26) = v44;
    _os_log_impl(&_mh_execute_header, v33, v34, "Saving BenefactorInfoRecord %s in manatee? %{BOOL}d autoAccept? %{BOOL}d with status %ld", v35, 0x22u);
    sub_10000839C(v36);
  }

  else
  {
    sub_1001D1F78(v32, type metadata accessor for BenefactorInfoRecord);

    sub_1001D1F78(v31, type metadata accessor for BenefactorInfoRecord);
  }

  v45 = v64;
  v46 = sub_1000080F8((v64 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController), *(v64 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController + 24));
  v47 = v62;
  sub_1001D1F10(v21, v62, type metadata accessor for BenefactorInfoRecord);
  v48 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v49 = (v61 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v65;
  *(v50 + 16) = v63;
  *(v50 + 24) = v51;
  sub_1001D1EA8(v47, v50 + v48, type metadata accessor for BenefactorInfoRecord);
  *(v50 + v49) = v45;
  v52 = *v46;

  sub_10021BA80(v21, sub_1001D2500, v50);

  return sub_1001D1F78(v21, type metadata accessor for BenefactorInfoRecord);
}

uint64_t sub_1001D0C74(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if ([objc_opt_self() isLCInviteAcceptanceEnabled])
  {
    v48 = a3;
    v47 = v4;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAAA0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "LCInvite: Feature flag is enabled.", v12, 2u);
    }

    v13 = type metadata accessor for ContactsHelper();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    sub_100005814(&unk_1003D9820, &unk_10033EFD0);
    Dependency.init(dependencyId:config:)();
    v17 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
    Dependency.wrappedValue.getter();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v49[0] contactForHandle:v18];

    swift_unknownObjectRelease();
    if (v19)
    {
      v20 = objc_allocWithZone(AALocalContactInfo);
      v21 = v19;
      v22 = String._bridgeToObjectiveC()();
      v23 = [v20 initWithHandle:v22 contact:v21];

      swift_setDeallocating();
      (*(*(v17 - 8) + 8))(v16 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v17);
      v24 = *(*v16 + 48);
      v25 = *(*v16 + 52);
      swift_deallocClassInstance();
      if (v23)
      {

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v49[0] = v29;
          *v28 = 136315138;
          *(v28 + 4) = sub_10021145C(a1, a2, v49);
          v30 = "Handle:%s found in Contacts. Auto Accepting.";
LABEL_19:
          _os_log_impl(&_mh_execute_header, v26, v27, v30, v28, 0xCu);
          sub_10000839C(v29);

          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    else
    {
      swift_setDeallocating();
      (*(*(v17 - 8) + 8))(v16 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v17);
      v36 = *(*v16 + 48);
      v37 = *(*v16 + 52);
      swift_deallocClassInstance();
    }

    v38 = sub_1002B64E0(a1, a2);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    v39 = os_log_type_enabled(v26, v27);
    if (v38)
    {
      if (v39)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v49[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_10021145C(a1, a2, v49);
        v30 = "Handle:%s is a Known Sender to IDS. Auto Accepting.";
        goto LABEL_19;
      }

LABEL_20:

      return v48(1);
    }

    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_10021145C(a1, a2, v49);
      _os_log_impl(&_mh_execute_header, v26, v27, "Checking if handle:%s is a family member.", v40, 0xCu);
      sub_10000839C(v41);
    }

    v42 = swift_allocObject();
    *(v42 + 16) = v48;
    *(v42 + 24) = a4;
    sub_100040738(v47 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_familyManager, v49);
    v43 = v50;
    v44 = v51;
    sub_1000080F8(v49, v50);
    v45 = swift_allocObject();
    *(v45 + 16) = sub_1001D2390;
    *(v45 + 24) = v42;
    v46 = *(v44 + 8);

    v46(a1, a2, sub_1001D23B8, v45, v43, v44);

    return sub_10000839C(v49);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAAA0);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "LCInvite: Feature flag not enabled. Auto accepting.", v34, 2u);
    }

    return a3(1);
  }
}

uint64_t sub_1001D1340(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA88);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (!os_log_type_enabled(v6, v7))
    {
      LOBYTE(a1) = 0;
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to fetch family circle: %@", v8, 0xCu);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

    LOBYTE(a1) = 0;
    goto LABEL_10;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAA88);
  v6 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v6, v12, "Family circle fetch successful.", v13, 2u);
LABEL_10:
  }

LABEL_12:

  return a3(a1 & 1);
}

uint64_t sub_1001D1550(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a5;
  v59 = a4;
  v8 = sub_100005814(&unk_1003E1DE0, &qword_1003444D8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v50 - v10;
  v12 = type metadata accessor for BenefactorInfoRecord();
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  v19 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v23 = (&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v25 = (&v50 - v24);
  sub_1001CDFD4(a1, &v50 - v24);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001D1EA8(v25, v18, type metadata accessor for BenefactorInfoRecord);
    sub_1001D1F10(v18, v23, type metadata accessor for BenefactorInfoRecord);
    swift_storeEnumTagMultiPayload();
    a2(v23);
    sub_100008D3C(v23, &unk_1003E1DD0, &qword_1003444D0);
    return sub_1001D1F78(v18, type metadata accessor for BenefactorInfoRecord);
  }

  v26 = *v25;
  swift_getErrorValue();
  if ((sub_1002DED90(v61[7]) & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_getErrorValue();
  v27 = sub_1002DE99C(v61[3]);
  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = v27;
  if (!sub_1002DECC8(v27))
  {

LABEL_18:
    *v23 = v26;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v23);

    return sub_100008D3C(v23, &unk_1003E1DD0, &qword_1003444D0);
  }

  v56 = v28;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_100008D04(v29, qword_1003FAAA0);
  swift_errorRetain();
  v55 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  LODWORD(v54) = v32;
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v53 = v33;
    v52 = swift_slowAlloc();
    v60 = v26;
    v61[0] = v52;
    *v33 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v34 = String.init<A>(describing:)();
    v51 = v31;
    v36 = sub_10021145C(v34, v35, v61);

    v37 = v53;
    *(v53 + 4) = v36;
    v31 = v51;
    _os_log_impl(&_mh_execute_header, v51, v54, "Conflict while saving BenefactorInfoRecord : %s", v37, 0xCu);
    sub_10000839C(v52);
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  v40 = os_log_type_enabled(v38, v39);
  v54 = a2;
  if (v40)
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Trying to grab Server Record from returned Error", v41, 2u);
    a2 = v54;
  }

  v42 = v56;
  v43 = sub_1002DEE74(v56);
  if (v43)
  {
    v44 = *(v59 + *(v12 + 36));
    v53 = v43;
    sub_1001E17B0(v53, v44, v11);
    (*(v57 + 56))(v11, 0, 1, v12);
    sub_1001D1EA8(v11, v16, type metadata accessor for BenefactorInfoRecord);
    sub_1001D1F10(v16, v23, type metadata accessor for BenefactorInfoRecord);
    swift_storeEnumTagMultiPayload();
    v54(v23);

    sub_100008D3C(v23, &unk_1003E1DD0, &qword_1003444D0);
    return sub_1001D1F78(v16, type metadata accessor for BenefactorInfoRecord);
  }

  else
  {
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Trying to fetch BenefactorInfoRecord from Server", v47, 2u);
      a2 = v54;
    }

    v48 = *sub_1000080F8((v58 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController), *(v58 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController + 24));
    sub_100219E78(v59, a2, a3);
  }
}

uint64_t sub_1001D1C30()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001D1C68()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1001D1CC8()
{
  v1 = (type metadata accessor for InheritanceInvitationMessage() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v2;
  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = *(v6 + v1[8] + 8);

  v10 = *(v0 + v3 + 8);

  v11 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

void sub_1001D1DF4(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationMessage() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);

  sub_1001CFAE8(a1, v7, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_1001D1EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D1F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D1F78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D1FD8()
{
  v1 = (type metadata accessor for InheritanceInvitationMessage() - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 2);

  v5 = *(v0 + 4);

  v6 = *(v0 + 6);

  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(&v0[v2 + v7], v8);
  v9 = *&v0[v2 + 8 + v1[8]];

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001D20E8(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for InheritanceInvitationMessage() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_1001D0328(a1, a2 & 1, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1001D2174()
{
  v1 = (type metadata accessor for InheritanceInvitationMessage() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = v0 + v2;
  v8 = v1[7];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  v10 = *(v7 + v1[8] + 8);

  v11 = *(v0 + v4 + 8);

  v12 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_1001D22A0(int a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationMessage() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = (v1 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_1001D0790(a1, v6, v1 + v4, v8, v9, v10, v12, v13);
}

uint64_t sub_1001D2358()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001D2390()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1001D23C4()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 24);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = *(v5 + v1[7] + 8);

  v7(v5 + v1[9], v6);
  sub_100012324(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v9 = *(v0 + v3);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_1001D2500(uint64_t a1)
{
  v3 = *(type metadata accessor for BenefactorInfoRecord() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_1001D1550(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_1001D25A0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_1001D25DC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = a7;
  v74 = a8;
  v72 = a6;
  v75 = a4;
  v76 = a3;
  v11 = type metadata accessor for InheritanceInvitationResponseMessage();
  v71 = *(v11 - 8);
  v12 = *(v71 + 64);
  __chkstk_darwin(v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InheritanceInvitationRecord();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v69 - v20);
  sub_1001D31F8(a1, &v69 - v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001D32D0(v21, v17, type metadata accessor for InheritanceInvitationRecord);
    if (*(a2 + *(v11 + 24)) == 1)
    {
      if (*&v17[*(v14 + 32)] == 1)
      {
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_100008D04(v31, qword_1003FAAA0);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "The invitation was accepted.", v34, 2u);
        }

        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          sub_100040738(Strong + 56, v77);

          v36 = v79;
          v70 = v78;
          v69 = sub_1000080F8(v77, v78);
          sub_1001D3268(a2, &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
          v37 = (*(v71 + 80) + 32) & ~*(v71 + 80);
          v38 = (v12 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
          v39 = swift_allocObject();
          v40 = v72;
          *(v39 + 16) = a5;
          *(v39 + 24) = v40;
          sub_1001D32D0(v13, v39 + v37, type metadata accessor for InheritanceInvitationResponseMessage);
          v41 = (v39 + v38);
          v42 = v74;
          *v41 = v73;
          v41[1] = v42;
          v43 = (v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8));
          v44 = v75;
          v45 = v76;
          *v43 = v76;
          v43[1] = v44;
          v46 = *(v36 + 8);

          sub_100083AA0(v45);
          v47 = sub_1001D34D8;
          v48 = a2;
LABEL_23:
          v46(v48, v17, v47, v39, v70, v36);

          sub_1001D3360(v17);
          return sub_10000839C(v77);
        }
      }

      else
      {
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v63 = type metadata accessor for Logger();
        sub_100008D04(v63, qword_1003FAAA0);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.info.getter();
        v66 = os_log_type_enabled(v64, v65);
        v67 = v76;
        if (v66)
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&_mh_execute_header, v64, v65, "LCInvite: The invitation was not pending. Must have been accepted or declined already. Returning without accepting.", v68, 2u);
        }

        if (v67)
        {
          v67(0);
        }
      }
    }

    else
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_100008D04(v49, qword_1003FAAA0);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "The invitation was declined.", v52, 2u);
      }

      swift_beginAccess();
      v53 = swift_weakLoadStrong();
      if (v53)
      {
        sub_100040738(v53 + 96, v77);

        v36 = v79;
        v70 = v78;
        v69 = sub_1000080F8(v77, v78);
        sub_1001D3268(a2, &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
        v54 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v55 = (v12 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
        v39 = swift_allocObject();
        v56 = v72;
        *(v39 + 16) = a5;
        *(v39 + 24) = v56;
        sub_1001D32D0(v13, v39 + v54, type metadata accessor for InheritanceInvitationResponseMessage);
        v57 = (v39 + v55);
        v58 = a2;
        v59 = v74;
        *v57 = v73;
        v57[1] = v59;
        v60 = (v39 + ((v55 + 23) & 0xFFFFFFFFFFFFFFF8));
        v61 = v75;
        v62 = v76;
        *v60 = v76;
        v60[1] = v61;
        v46 = *(v36 + 8);

        sub_100083AA0(v62);
        v47 = sub_1001D3338;
        v48 = v58;
        goto LABEL_23;
      }
    }

    return sub_1001D3360(v17);
  }

  v22 = *v21;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAAA0);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = _convertErrorToNSError(_:)();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, v24, v25, "Error processing invitation %@", v26, 0xCu);
    sub_100083380(v27);
  }

  v29 = v76;
  if (v76)
  {
    swift_errorRetain();
    v29(v22);
  }
}

uint64_t sub_1001D2D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, const char *a9, uint64_t a10, uint64_t a11)
{
  v54 = a5;
  v55 = a6;
  v56 = a4;
  v15 = type metadata accessor for InheritanceInvitationResponseMessage();
  v16 = *(v15 - 8);
  v51 = v15;
  v52 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v53 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAA0);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v50 = v17;
    v21 = a3;
    v22 = a7;
    v23 = a8;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    *(v24 + 4) = v26;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, a9, v24, 0xCu);
    sub_100083380(v25);

    a8 = v23;
    a7 = v22;
    a3 = v21;
    v17 = v50;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    if (a1)
    {
      swift_getErrorValue();
      v29 = v58;
      swift_errorRetain();
      if ((sub_1002DED90(v29) & 1) != 0 && (swift_getErrorValue(), (v30 = sub_1002DE99C(v57)) != 0))
      {
        v31 = v30;
        v32 = sub_1002DECC8(v30);

        if (v32 && a3 <= 1)
        {
          swift_beginAccess();
          result = swift_weakLoadStrong();
          if (result)
          {
            v50 = a11;
            v48 = a3 + 1;
            v51 = *(v51 + 20);
            v33 = *(result + 40);
            v49 = result;
            v47 = sub_1000080F8((result + 16), v33);
            v34 = swift_allocObject();
            swift_weakInit();
            v35 = v53;
            sub_1001D3268(v56, v53);
            v36 = a8;
            v37 = (*(v52 + 80) + 16) & ~*(v52 + 80);
            v38 = (v17 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
            v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
            v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
            v41 = swift_allocObject();
            sub_1001D32D0(v35, v41 + v37, type metadata accessor for InheritanceInvitationResponseMessage);
            v42 = (v41 + v38);
            *v42 = a7;
            v42[1] = v36;
            *(v41 + v39) = v34;
            *(v41 + v40) = v48;
            v43 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
            v44 = v55;
            *v43 = v54;
            v43[1] = v44;
            v45 = *v47;
            sub_100083AA0(a7);

            sub_100214780(v56 + v51, v50, v41);
          }

          return result;
        }
      }

      else
      {
      }
    }
  }

  if (a7)
  {
    return a7(a1);
  }

  return result;
}

uint64_t sub_1001D31F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D3268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceInvitationResponseMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D32D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D3360(uint64_t a1)
{
  v2 = type metadata accessor for InheritanceInvitationRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001D33BC()
{
  v1 = (type metadata accessor for InheritanceInvitationResponseMessage() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v1[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6 + v2, v7);
  v8 = *(v0 + v3 + 8);

  if (*(v0 + v4))
  {
    v9 = *(v0 + v4 + 8);
  }

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1001D3500(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for InheritanceInvitationResponseMessage() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001D2D84(a1, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + v11), *(v4 + v11 + 8), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), a2, a3, a4);
}

uint64_t sub_1001D35D4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001D3614()
{
  v1 = type metadata accessor for InheritanceInvitationResponseMessage();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + *(v1 + 20);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);
  if (*(v0 + v4))
  {
    v7 = *(v0 + v4 + 8);
  }

  v8 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v8);

  v11 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16);
}

uint64_t sub_1001D373C(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationResponseMessage() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1 + v5;
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *v8;
  v12 = *(v8 + 8);
  v13 = (v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return sub_1001D25DC(a1, v1 + v4, v11, v12, v9, v10, v14, v15);
}

uint64_t sub_1001D3810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for InheritanceInvitationRecord();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;
  sub_1001D72C4(a2, v12, type metadata accessor for InheritanceInvitationRecord);
  *&v12[*(v9 + 40)] = 2;
  v15 = *sub_1000080F8((v4 + 16), *(v4 + 40));

  sub_100215214(v12, sub_1001D4F00, v14);

  sub_1001D71FC(v12, type metadata accessor for InheritanceInvitationRecord);
}

uint64_t sub_1001D396C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v38 = a3;
  v39 = a4;
  v5 = type metadata accessor for InheritanceInvitationRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v9 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v12 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v38 - v14);
  sub_100012D04(a1, &v38 - v14, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAA0);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = _convertErrorToNSError(_:)();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error updating Inheritance invitation %@", v20, 0xCu);
      sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v38(v16);
  }

  else
  {
    sub_1001D725C(v15, v11, type metadata accessor for InheritanceInvitationRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAA0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Inheritance invitation updated!", v27, 2u);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      v30 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      sub_1001D72C4(v11, v9, type metadata accessor for InheritanceInvitationRecord);
      v31 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v32 = (v7 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      sub_1001D725C(v9, v34 + v31, type metadata accessor for InheritanceInvitationRecord);
      v35 = (v34 + v32);
      v36 = v39;
      *v35 = v38;
      v35[1] = v36;
      *(v34 + v33) = v30;
      v37 = *sub_1000080F8((v29 + 16), *(v29 + 40));

      sub_100217018(v11, sub_1001D6B80, v34);

      sub_1001D71FC(v11, type metadata accessor for InheritanceInvitationRecord);
    }

    else
    {
      return sub_1001D71FC(v11, type metadata accessor for InheritanceInvitationRecord);
    }
  }
}

uint64_t sub_1001D3E68(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v76 = a3;
  v77 = a4;
  v74 = type metadata accessor for BeneficiaryInfoRecord();
  v72 = *(v74 - 8);
  v7 = *(v72 + 64);
  v8 = __chkstk_darwin(v74);
  v73 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v71 = &v70 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v70 - v12;
  __chkstk_darwin(v11);
  v15 = &v70 - v14;
  v16 = type metadata accessor for InheritanceInvitationRecord();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v70 - v22);
  sub_100012D04(a1, &v70 - v22, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001D725C(v23, v15, type metadata accessor for BeneficiaryInfoRecord);
    v34 = v15;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAAA0);
    sub_1001D72C4(v15, v13, type metadata accessor for BeneficiaryInfoRecord);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v75;
    if (v38)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v70 = v34;
      v42 = v41;
      v78[0] = v41;
      *v40 = 136315138;
      v43 = sub_1001E6794();
      v45 = v44;
      sub_1001D71FC(v13, type metadata accessor for BeneficiaryInfoRecord);
      v46 = sub_10021145C(v43, v45, v78);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "Successfully fetched Beneficiary - %s", v40, 0xCu);
      sub_10000839C(v42);
      v34 = v70;
    }

    else
    {

      sub_1001D71FC(v13, type metadata accessor for BeneficiaryInfoRecord);
    }

    v48 = (v34 + *(v74 + 20));
    v49 = v48[1];
    if (v49)
    {
      v50 = *v48;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v74 = type metadata accessor for BeneficiaryInfoRecord;
        v51 = v73;
        sub_1001D72C4(v34, v73, type metadata accessor for BeneficiaryInfoRecord);
        v52 = (*(v72 + 80) + 40) & ~*(v72 + 80);
        v53 = v34;
        v54 = (v7 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
        v55 = swift_allocObject();
        v56 = v77;
        v55[2] = v76;
        v55[3] = v56;
        v55[4] = v39;
        sub_1001D725C(v51, v55 + v52, type metadata accessor for BeneficiaryInfoRecord);
        v57 = (v55 + v54);
        *v57 = v50;
        v57[1] = v49;

        sub_1001D4BAC(v53, v50, v49, sub_1001D6E1C, v55);

        v58 = v53;
        v59 = v74;
        return sub_1001D71FC(v58, v59);
      }
    }

    else
    {
      v60 = v71;
      sub_1001D72C4(v34, v71, type metadata accessor for BeneficiaryInfoRecord);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v78[0] = v64;
        *v63 = 136315138;
        v65 = sub_1001E6794();
        v67 = v66;
        sub_1001D71FC(v60, type metadata accessor for BeneficiaryInfoRecord);
        v68 = sub_10021145C(v65, v67, v78);

        *(v63 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v61, v62, "Cannot proceed. Beneficiary handle is nil - %s", v63, 0xCu);
        sub_10000839C(v64);
      }

      else
      {

        sub_1001D71FC(v60, type metadata accessor for BeneficiaryInfoRecord);
      }

      type metadata accessor for InheritanceError(0);
      v78[3] = 2;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001A19EC(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v69 = v78[0];
      v76(v78[0]);
    }

    v59 = type metadata accessor for BeneficiaryInfoRecord;
    v58 = v34;
    return sub_1001D71FC(v58, v59);
  }

  v24 = *v23;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100008D04(v25, qword_1003FAAA0);
  sub_1001D72C4(a2, v19, type metadata accessor for InheritanceInvitationRecord);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v78[0] = v29;
    *v28 = 136315138;
    type metadata accessor for UUID();
    sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    sub_1001D71FC(v19, type metadata accessor for InheritanceInvitationRecord);
    v33 = sub_10021145C(v30, v32, v78);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "Failed to fetch Beneficiary Record with beneficiaryID - %s", v28, 0xCu);
    sub_10000839C(v29);
  }

  else
  {

    sub_1001D71FC(v19, type metadata accessor for InheritanceInvitationRecord);
  }

  swift_errorRetain();
  v76(v24);
}

uint64_t sub_1001D4710(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAAA0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to share Beneficiary Record.", v13, 2u);
    }

    swift_errorRetain();
    a2(a1);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAA0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Successfully shared BeneficiaryRecord. Creating Health Record...", v21, 2u);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = a2;
      *(v22 + 24) = a3;
      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      v24[2] = sub_1001D718C;
      v24[3] = v22;
      v24[4] = v23;
      v24[5] = a6;
      v24[6] = a7;

      sub_1001D5B40(a5, sub_1001D71E4, v24);
    }
  }

  return result;
}

uint64_t sub_1001D4A2C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAAA0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      v10 = v9;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v7 + 4) = v9;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Finished sharing health record. Error: %@", v7, 0xCu);
    sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
  }

  return a2(a1);
}

uint64_t sub_1001D4BAC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a5;
  v28 = a2;
  v10 = type metadata accessor for BeneficiaryInfoRecord();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAAA0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Sharing Cloud Record...", v16, 2u);
  }

  v17 = sub_1000080F8((v6 + 96), *(v6 + 120));
  v18 = swift_allocObject();
  swift_weakInit();
  sub_1001D72C4(a1, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryInfoRecord);
  v19 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v20 = swift_allocObject();
  v21 = a1;
  v22 = v28;
  v20[2] = v18;
  v20[3] = v22;
  v20[4] = a3;
  sub_1001D725C(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for BeneficiaryInfoRecord);
  v23 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v27;
  *v23 = a4;
  v23[1] = v24;
  v25 = *v17;

  sub_100083AA0(a4);
  sub_1001F58C8(v21, v22, a3, sub_1001D70AC, v20);
}

uint64_t sub_1001D4E88()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001D4EC0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001D4F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v78 = a7;
  v79 = a6;
  v77 = a5;
  v73 = a3;
  v74 = a4;
  v75 = a2;
  v8 = type metadata accessor for BeneficiaryInfoRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InheritanceAccessKeyMessage();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v76 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v72 - v16;
  v18 = type metadata accessor for CloudShareInfo();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v72 - v23;
  v25 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (v72 - v27);
  sub_100012D04(a1, v72 - v27, &unk_1003E1070, &unk_100344CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAA0);
    sub_1001D72C4(v77, v11, type metadata accessor for BeneficiaryInfoRecord);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v81[0] = v34;
      *v33 = 136315138;
      type metadata accessor for UUID();
      sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_1001D71FC(v11, type metadata accessor for BeneficiaryInfoRecord);
      v38 = sub_10021145C(v35, v37, v81);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to share accessKey for beneficiaryID - %s", v33, 0xCu);
      sub_10000839C(v34);

      v39 = v79;
      if (!v79)
      {
      }
    }

    else
    {

      sub_1001D71FC(v11, type metadata accessor for BeneficiaryInfoRecord);
      v39 = v79;
      if (!v79)
      {
      }
    }

    swift_errorRetain();
    v39(v29);
  }

  sub_1001D725C(v28, v24, type metadata accessor for CloudShareInfo);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = sub_100008D04(v40, qword_1003FAAA0);
  sub_1001D72C4(v24, v22, type metadata accessor for CloudShareInfo);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v72[1] = v41;
    v46 = v45;
    v81[0] = v45;
    *v44 = 136315138;
    type metadata accessor for URL();
    sub_1001A19EC(&qword_1003DD590, &type metadata accessor for URL);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    sub_1001D71FC(v22, type metadata accessor for CloudShareInfo);
    v50 = sub_10021145C(v47, v49, v81);

    *(v44 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v42, v43, "Successfully shared record with URL - %s", v44, 0xCu);
    sub_10000839C(v46);
  }

  else
  {

    sub_1001D71FC(v22, type metadata accessor for CloudShareInfo);
  }

  v52 = v79;
  v53 = v76;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1001D71FC(v24, type metadata accessor for CloudShareInfo);
  }

  sub_100040738(Strong + 56, v81);

  v55 = *sub_1000080F8(v81, v81[3]);
  v56 = *(v12 + 20);
  v57 = type metadata accessor for UUID();
  (*(*(v57 - 8) + 16))(&v17[v56], v77, v57);
  sub_1001D72C4(v24, &v17[*(v12 + 24)], type metadata accessor for CloudShareInfo);
  *v17 = 1;
  sub_1001D72C4(v17, v53, type metadata accessor for InheritanceAccessKeyMessage);
  sub_100083AA0(v52);
  sub_100083AA0(v52);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v80 = v61;
    *v60 = 136315138;
    v62 = sub_1001D9780();
    v63 = v53;
    v65 = v64;
    sub_1001D71FC(v63, type metadata accessor for InheritanceAccessKeyMessage);
    v66 = sub_10021145C(v62, v65, &v80);

    *(v60 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v58, v59, "Created share accessKey message - %s.\nSending....", v60, 0xCu);
    sub_10000839C(v61);

    v52 = v79;
  }

  else
  {

    sub_1001D71FC(v53, type metadata accessor for InheritanceAccessKeyMessage);
  }

  v67 = sub_1000080F8((v55 + 16), *(v55 + 40));
  if (_swiftEmptyArrayStorage >> 62)
  {
    v70 = v67;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_10013446C(_swiftEmptyArrayStorage);
      v68 = v71;
    }

    else
    {
      v68 = &_swiftEmptySetSingleton;
    }

    v67 = v70;
  }

  else
  {
    v68 = &_swiftEmptySetSingleton;
  }

  v69 = *v67;
  sub_100083AA0(v52);
  sub_1002B5198(v17, v73, v74, 0, 0, v68, v69, v52);
  sub_100083B0C(v52);

  sub_1001D71FC(v17, type metadata accessor for InheritanceAccessKeyMessage);
  sub_100083B0C(v52);
  sub_100083B0C(v52);
  sub_1001D71FC(v24, type metadata accessor for CloudShareInfo);
  return sub_10000839C(v81);
}

uint64_t sub_1001D5818(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v36 = a3;
  v8 = type metadata accessor for InheritanceHealthRecord();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v11 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v30 - v16);
  sub_100012D04(a1, &v30 - v16, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (a2)
    {
      v19 = *v17;
      swift_errorRetain();
      a2(v18);
    }
  }

  else
  {
    sub_1001D725C(v17, v13, type metadata accessor for InheritanceHealthRecord);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      v23 = swift_allocObject();
      v24 = v36;
      *(v23 + 16) = a2;
      *(v23 + 24) = v24;
      v31 = sub_1000080F8((v22 + 96), *(v22 + 120));
      v32 = type metadata accessor for InheritanceHealthRecord;
      sub_1001D72C4(v13, v11, type metadata accessor for InheritanceHealthRecord);
      v25 = (*(v33 + 80) + 48) & ~*(v33 + 80);
      v26 = swift_allocObject();
      v27 = v34;
      v28 = v35;
      v26[2] = v34;
      v26[3] = v28;
      v26[4] = sub_1001D25A0;
      v26[5] = v23;
      sub_1001D725C(v11, v26 + v25, type metadata accessor for InheritanceHealthRecord);
      v29 = *v31;
      sub_100083AA0(a2);

      sub_1001F6770(v13, v27, v28, sub_1001D74E0, v26);

      sub_1001D71FC(v13, v32);
    }

    else
    {
      return sub_1001D71FC(v13, type metadata accessor for InheritanceHealthRecord);
    }
  }
}

uint64_t sub_1001D5B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for InheritanceHealthRecord();
  v9 = *(*(v8 - 1) + 64);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for BeneficiaryInfoRecord();
  v12 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAA0);
  sub_1001D72C4(a1, v14, type metadata accessor for BeneficiaryInfoRecord);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v37 = a2;
    v21 = v20;
    v40 = v20;
    *v19 = 136315138;
    type metadata accessor for UUID();
    v36 = a1;
    v22 = v3;
    sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_1001D71FC(v14, type metadata accessor for BeneficiaryInfoRecord);
    v26 = sub_10021145C(v23, v25, &v40);
    v4 = v22;
    a1 = v36;

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Creating Inheritance Health Record for beneficiaryID - %s", v19, 0xCu);
    sub_10000839C(v21);
    a2 = v37;

    a3 = v38;
  }

  else
  {

    sub_1001D71FC(v14, type metadata accessor for BeneficiaryInfoRecord);
  }

  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 16))(v11, a1, v27);
  v28 = &v11[v8[5]];
  Date.init(timeIntervalSince1970:)();
  v29 = &v11[v8[7]];
  UUID.init()();
  v30 = *(a1 + *(v39 + 40));
  *&v11[v8[6]] = xmmword_10033F8D0;
  *&v11[v8[8]] = xmmword_10033F8D0;
  v11[v8[9]] = v30;
  v31 = sub_1000080F8((v4 + 16), *(v4 + 40));
  v32 = swift_allocObject();
  *(v32 + 16) = a2;
  *(v32 + 24) = a3;
  v33 = *v31;

  sub_10021DAF0(v11, sub_1001D71F4, v32);

  return sub_1001D71FC(v11, type metadata accessor for InheritanceHealthRecord);
}

uint64_t sub_1001D5F14(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v39 = a2;
  v5 = type metadata accessor for InheritanceHealthRecord();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = (&v38 - v17);
  sub_100012D04(a1, &v38 - v17, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAA0);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40 = v19;
      v41 = v24;
      *v23 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v25 = String.init<A>(describing:)();
      v27 = sub_10021145C(v25, v26, &v41);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error saving health Record: - %s", v23, 0xCu);
      sub_10000839C(v24);
    }

    *v16 = v19;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v39(v16);

    return sub_100008D3C(v16, &unk_1003E10C0, &qword_100346A70);
  }

  else
  {
    v38 = a3;
    sub_1001D725C(v18, v11, type metadata accessor for InheritanceHealthRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAA0);
    sub_1001D72C4(v11, v9, type metadata accessor for InheritanceHealthRecord);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41 = v33;
      *v32 = 136315138;
      type metadata accessor for UUID();
      sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_1001D71FC(v9, type metadata accessor for InheritanceHealthRecord);
      v37 = sub_10021145C(v34, v36, &v41);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Successfully created health record for beneficiaryID - %s", v32, 0xCu);
      sub_10000839C(v33);
    }

    else
    {

      sub_1001D71FC(v9, type metadata accessor for InheritanceHealthRecord);
    }

    sub_1001D72C4(v11, v16, type metadata accessor for InheritanceHealthRecord);
    swift_storeEnumTagMultiPayload();
    v39(v16);
    sub_100008D3C(v16, &unk_1003E10C0, &qword_100346A70);
    return sub_1001D71FC(v11, type metadata accessor for InheritanceHealthRecord);
  }
}

uint64_t sub_1001D6450(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v43[1] = a5;
  v44 = a4;
  v43[0] = a2;
  v9 = type metadata accessor for InheritanceHealthRecord();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CloudShareInfo();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v43 - v18;
  v20 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (v43 - v22);
  sub_100012D04(a1, v43 - v22, &unk_1003E1070, &unk_100344CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAA0);
    sub_1001D72C4(a6, v12, type metadata accessor for InheritanceHealthRecord);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45 = v29;
      *v28 = 136315138;
      type metadata accessor for UUID();
      sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_1001D71FC(v12, type metadata accessor for InheritanceHealthRecord);
      v33 = sub_10021145C(v30, v32, &v45);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to share health record for beneficiaryID - %s", v28, 0xCu);
      sub_10000839C(v29);
    }

    else
    {

      sub_1001D71FC(v12, type metadata accessor for InheritanceHealthRecord);
    }

    swift_errorRetain();
    v44(v24);
  }

  else
  {
    sub_1001D725C(v23, v19, type metadata accessor for CloudShareInfo);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAAA0);
    sub_1001D72C4(v19, v17, type metadata accessor for CloudShareInfo);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v37 = 136315394;
      *(v37 + 4) = sub_10021145C(v43[0], a3, &v45);
      *(v37 + 12) = 2080;
      type metadata accessor for URL();
      sub_1001A19EC(&qword_1003DD590, &type metadata accessor for URL);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_1001D71FC(v17, type metadata accessor for CloudShareInfo);
      v41 = sub_10021145C(v38, v40, &v45);

      *(v37 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Successfully shared health record with %s. URL - %s", v37, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001D71FC(v17, type metadata accessor for CloudShareInfo);
    }

    v44(0);
    return sub_1001D71FC(v19, type metadata accessor for CloudShareInfo);
  }
}

uint64_t sub_1001D6A10()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = *(v5 + v1[7] + 8);

  v9 = *(v5 + v1[8] + 8);

  v10 = *(v5 + v1[9] + 8);

  v7(v5 + v1[11], v6);
  sub_100012324(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  v11 = *(v0 + v3 + 8);

  v12 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1001D6B80(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  return sub_1001D3E68(a1, v1 + v4, v9, v10, v8);
}

uint64_t sub_1001D6C2C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 24);

  v4 = *(v0 + 32);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2, v6);
  v9 = *(v0 + v2 + v1[5] + 8);

  v10 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v8(v0 + v2 + v1[8], v6);
  sub_100012324(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v11 = v1[11];
  if (!(*(v7 + 48))(v0 + v2 + v11, 1, v6))
  {
    v8(v5 + v11, v6);
  }

  v12 = (v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v5 + v1[12] + 8);

  v14 = *(v5 + v1[14] + 8);

  v15 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16);
}

uint64_t sub_1001D6E1C(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1001D4710(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_1001D6EC4()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v6, v7);
  v10 = *(v6 + v1[5] + 8);

  v11 = *(v6 + v1[6] + 8);

  sub_100012324(*(v6 + v1[7]), *(v6 + v1[7] + 8));
  v9(v6 + v1[8], v7);
  sub_100012324(*(v6 + v1[9]), *(v6 + v1[9] + 8));
  v12 = v1[11];
  if (!(*(v8 + 48))(v6 + v12, 1, v7))
  {
    v9(v6 + v12, v7);
  }

  v13 = *(v6 + v1[12] + 8);

  v14 = *(v6 + v1[14] + 8);

  if (*(v0 + v3))
  {
    v15 = *(v0 + v3 + 8);
  }

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1001D70AC(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_1001D4F0C(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_1001D7154()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001D7194()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1001D71FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D725C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D72C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D732C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001D736C()
{
  v1 = (type metadata accessor for InheritanceHealthRecord() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 40);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v2, v7);
  v9 = v1[7];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v0 + v2 + v9, v10);
  sub_100012324(*(v6 + v1[8]), *(v6 + v1[8] + 8));
  v8(v0 + v2 + v1[9], v7);
  sub_100012324(*(v6 + v1[10]), *(v6 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001D74E0(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceHealthRecord() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1001D6450(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001D755C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v29 = a3;
  v30 = a4;
  v26 = a1;
  v5 = type metadata accessor for InheritanceInvitationRecord();
  v6 = v5 - 8;
  v27 = *(v5 - 8);
  v7 = *(v27 + 64);
  v8 = __chkstk_darwin(v5);
  v28 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v23 = &v23 - v9;
  v11 = type metadata accessor for InheritanceInvitationResponseMessage();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  swift_weakInit();
  sub_1001D7DF4(v26, v14, type metadata accessor for InheritanceInvitationResponseMessage);
  sub_1001D7DF4(a2, v10, type metadata accessor for InheritanceInvitationRecord);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = (v13 + *(v27 + 80) + v16) & ~*(v27 + 80);
  v18 = swift_allocObject();
  v19 = v30;
  *(v18 + 16) = v29;
  *(v18 + 24) = v19;
  sub_1001D803C(v14, v18 + v16, type metadata accessor for InheritanceInvitationResponseMessage);
  sub_1001D803C(v23, v18 + v17, type metadata accessor for InheritanceInvitationRecord);
  *(v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v20 = v28;
  sub_1001D7DF4(v24, v28, type metadata accessor for InheritanceInvitationRecord);
  *(v20 + *(v6 + 40)) = 1;
  v21 = *sub_1000080F8((v25 + 16), *(v25 + 40));

  sub_100215214(v20, sub_1001D80A4, v18);

  sub_1001D8248(v20, type metadata accessor for InheritanceInvitationRecord);
}

uint64_t sub_1001D782C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for TrustedContactUserNotification();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v44 - v16);
  sub_1001D31F8(a1, &v44 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAA0);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v47[0] = v23;
      *v22 = 136315138;
      v46[0] = v18;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v24 = String.init<A>(describing:)();
      v26 = sub_10021145C(v24, v25, v47);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to update invitation with error : %s", v22, 0xCu);
      sub_10000839C(v23);
    }

    swift_errorRetain();
    a2(v18);
  }

  else
  {
    v45 = a2;
    sub_1001D81A8(v17);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAAA0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Not cleaning up LC access keys and CK records of beneficiary on the organizer device. Older devices would still attempt to remove the keys", v31, 2u);
    }

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Posting CFU...", v34, 2u);
    }

    v35 = &v13[*(sub_100005814(&qword_1003E2030, qword_100344D60) + 48)];
    v36 = *(type metadata accessor for InheritanceInvitationResponseMessage() + 20);
    v37 = type metadata accessor for UUID();
    (*(*(v37 - 8) + 16))(v13, a4 + v36, v37);
    v38 = (a5 + *(type metadata accessor for InheritanceInvitationRecord() + 20));
    v39 = v38[1];
    *v35 = *v38;
    *(v35 + 1) = v39;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_100040738(Strong + 96, v46);

      v41 = sub_1000080F8(v46, v46[3]);
      sub_1002CA150(v47);
      v42 = swift_allocObject();
      *(v42 + 16) = v45;
      *(v42 + 24) = a3;
      v43 = *v41;

      sub_1002D2E28(v47, sub_1000D8510, v42);

      sub_1000C5460(v47);
      sub_1001D8248(v13, type metadata accessor for TrustedContactUserNotification);
      return sub_10000839C(v46);
    }

    else
    {

      return sub_1001D8248(v13, type metadata accessor for TrustedContactUserNotification);
    }
  }
}

uint64_t sub_1001D7DBC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001D7DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D7E5C()
{
  v1 = (type metadata accessor for InheritanceInvitationResponseMessage() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for InheritanceInvitationRecord() - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = (*(*v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  v8 = v0 + v1[7];
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 8);
  v10(v8 + v2, v9);
  v10(v0 + v5, v9);
  v11 = *(v0 + v5 + v4[7] + 8);

  v12 = *(v0 + v5 + v4[8] + 8);

  v13 = *(v0 + v5 + v4[9] + 8);

  v10(v0 + v5 + v4[11], v9);
  sub_100012324(*(v0 + v5 + v4[12]), *(v0 + v5 + v4[12] + 8));
  v14 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_1001D803C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D80A4(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationResponseMessage() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for InheritanceInvitationRecord() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001D782C(a1, v8, v9, v1 + v4, v1 + v7);
}

uint64_t sub_1001D81A8(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001D8210()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001D8248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001D82A8(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E20D0, &qword_100344E38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001D8D28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[15] = *v3;
  v13[14] = 0;
  sub_1001D8D7C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(type metadata accessor for BeneficiaryRemovedMessage() + 20);
    v13[13] = 1;
    type metadata accessor for UUID();
    sub_1001D8E24(&unk_1003DDA80, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001D8478@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = type metadata accessor for UUID();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100005814(&qword_1003E20E0, &qword_100344E40);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for BeneficiaryRemovedMessage();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001D8D28();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = v13;
    v23 = v10;
    v16 = v26;
    v17 = v27;
    v30 = 0;
    sub_1001D8DD0();
    v18 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v15;
    *v15 = v31;
    v29 = 1;
    sub_1001D8E24(&unk_1003DD720, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v9, v18);
    v19 = v22;
    (*(v24 + 32))(&v22[*(v23 + 20)], v6, v17);
    sub_1001D8E6C(v19, v25);
  }

  return sub_10000839C(a1);
}

uint64_t sub_1001D8780()
{
  if (*v0)
  {
    result = 0x69636966656E6562;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_1001D87C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001D88A4(uint64_t a1)
{
  v2 = sub_1001D8D28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D88E0(uint64_t a1)
{
  v2 = sub_1001D8D28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D894C()
{
  _StringGuts.grow(_:)(23);
  v0 = type metadata accessor for BeneficiaryRemovedMessage();
  sub_100005814(&qword_1003E2038, qword_100344D98);
  v1 = String.init<A>(describing:)();

  v2._object = 0x8000000100330AB0;
  v2._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v2);
  v3 = *(v0 + 20);
  type metadata accessor for UUID();
  sub_1001D8E24(&qword_1003D9150, &type metadata accessor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  return v1;
}

uint64_t type metadata accessor for BeneficiaryRemovedMessage()
{
  result = qword_1003E2098;
  if (!qword_1003E2098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D8AD0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1001D8B88(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001D8C28()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001D8CA4(uint64_t a1)
{
  *(a1 + 8) = sub_1001D8E24(&qword_1003E2450, type metadata accessor for BeneficiaryRemovedMessage);
  result = sub_1001D8E24(&qword_1003E6960, type metadata accessor for BeneficiaryRemovedMessage);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001D8D28()
{
  result = qword_1003E20D8;
  if (!qword_1003E20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E20D8);
  }

  return result;
}

unint64_t sub_1001D8D7C()
{
  result = qword_1003E24C0;
  if (!qword_1003E24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E24C0);
  }

  return result;
}

unint64_t sub_1001D8DD0()
{
  result = qword_1003E24B0;
  if (!qword_1003E24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E24B0);
  }

  return result;
}

uint64_t sub_1001D8E24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001D8E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeneficiaryRemovedMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001D8EE4()
{
  result = qword_1003E20E8;
  if (!qword_1003E20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E20E8);
  }

  return result;
}

unint64_t sub_1001D8F3C()
{
  result = qword_1003E20F0;
  if (!qword_1003E20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E20F0);
  }

  return result;
}

unint64_t sub_1001D8F94()
{
  result = qword_1003E20F8;
  if (!qword_1003E20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E20F8);
  }

  return result;
}

uint64_t sub_1001D8FE8(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E21B0, &qword_100345028);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001D9C6C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = *v3;
  v15[14] = 0;
  sub_1001D8D7C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for InheritanceAccessKeyMessage();
    v12 = *(v11 + 20);
    v15[13] = 1;
    type metadata accessor for UUID();
    sub_1001D9CC0(&unk_1003DDA80, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v11 + 24);
    v15[12] = 2;
    type metadata accessor for CloudShareInfo();
    sub_1001D9CC0(&qword_1003E21C0, type metadata accessor for CloudShareInfo);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001D9230@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for CloudShareInfo();
  v3 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100005814(&qword_1003E21C8, &qword_100345030);
  v29 = *(v33 - 8);
  v9 = *(v29 + 64);
  __chkstk_darwin(v33);
  v11 = &v25 - v10;
  v12 = type metadata accessor for InheritanceAccessKeyMessage();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001D9C6C();
  v32 = v11;
  v17 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_10000839C(a1);
  }

  v18 = v15;
  v34 = a1;
  v20 = v29;
  v19 = v30;
  v21 = v31;
  v37 = 0;
  sub_1001D8DD0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v18;
  *v18 = v38;
  v36 = 1;
  sub_1001D9CC0(&unk_1003DD720, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = *(v19 + 32);
  v23 = v26;
  v25 = *(v12 + 20);
  v22(&v26[v25], v8, v5);
  v35 = 2;
  sub_1001D9CC0(&qword_1003E21D0, type metadata accessor for CloudShareInfo);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 8))(v32, v33);
  sub_1001D9D08(v21, v23 + *(v12 + 24));
  sub_1001D9D6C(v23, v27);
  sub_10000839C(v34);
  return sub_1001D9DD0(v23);
}

uint64_t sub_1001D964C()
{
  v1 = 0x69636966656E6562;
  if (*v0 != 1)
  {
    v1 = 0x666E496572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1001D96B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001D9F44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D96D8(uint64_t a1)
{
  v2 = sub_1001D9C6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D9714(uint64_t a1)
{
  v2 = sub_1001D9C6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D9780()
{
  _StringGuts.grow(_:)(23);
  v0 = type metadata accessor for InheritanceAccessKeyMessage();
  sub_100005814(&qword_1003E2100, qword_100344F88);
  v1 = String.init<A>(describing:)();

  v2._object = 0x8000000100330AB0;
  v2._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v2);
  v3 = *(v0 + 20);
  type metadata accessor for UUID();
  sub_1001D9CC0(&qword_1003D9150, &type metadata accessor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  return v1;
}

uint64_t type metadata accessor for InheritanceAccessKeyMessage()
{
  result = qword_1003E2160;
  if (!qword_1003E2160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D9904(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 20)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CloudShareInfo();
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 24)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_1001D9A34(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CloudShareInfo();
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1001D9B54()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CloudShareInfo();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001D9BE8(uint64_t a1)
{
  *(a1 + 8) = sub_1001D9CC0(&qword_1003E21A0, type metadata accessor for InheritanceAccessKeyMessage);
  result = sub_1001D9CC0(&qword_1003E21A8, type metadata accessor for InheritanceAccessKeyMessage);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001D9C6C()
{
  result = qword_1003E21B8;
  if (!qword_1003E21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E21B8);
  }

  return result;
}

uint64_t sub_1001D9CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001D9D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudShareInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D9D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceAccessKeyMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D9DD0(uint64_t a1)
{
  v2 = type metadata accessor for InheritanceAccessKeyMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001D9E40()
{
  result = qword_1003E21D8;
  if (!qword_1003E21D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E21D8);
  }

  return result;
}

unint64_t sub_1001D9E98()
{
  result = qword_1003E21E0;
  if (!qword_1003E21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E21E0);
  }

  return result;
}

unint64_t sub_1001D9EF0()
{
  result = qword_1003E21E8;
  if (!qword_1003E21E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E21E8);
  }

  return result;
}

uint64_t sub_1001D9F44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E496572616873 && a2 == 0xE90000000000006FLL)
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

uint64_t sub_1001DA06C(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E2290, &qword_100345220);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001DABC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17[15] = *v3;
  v17[14] = 0;
  sub_1001D8D7C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for InheritanceInvitationMessage();
    v12 = *(v11 + 20);
    v17[13] = 1;
    type metadata accessor for UUID();
    sub_1001DAC18(&unk_1003DDA80, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = &v3[*(v11 + 24)];
    v14 = *v13;
    v15 = v13[1];
    v17[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001DA270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v33 = type metadata accessor for UUID();
  v31 = *(v33 - 8);
  v4 = *(v31 + 64);
  __chkstk_darwin(v33);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100005814(&qword_1003E22A0, &qword_100345228);
  v32 = *(v34 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v34);
  v9 = &v27 - v8;
  v10 = type metadata accessor for InheritanceInvitationMessage();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001DABC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000839C(a1);
  }

  v29 = a1;
  v15 = v13;
  v16 = v32;
  v17 = v33;
  v37 = 0;
  sub_1001D8DD0();
  v18 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v15;
  *v15 = v38;
  v36 = 1;
  sub_1001DAC18(&unk_1003DD720, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = *(v31 + 32);
  v27 = *(v10 + 20);
  v19(&v28[v27], v6, v17);
  v35 = 2;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v21;
  (*(v16 + 8))(v9, v18);
  v23 = *(v10 + 24);
  v24 = v28;
  v25 = &v28[v23];
  *v25 = v20;
  v25[1] = v22;
  sub_1001DAC60(v24, v30);
  sub_10000839C(v29);
  return sub_1001DACC4(v24);
}

uint64_t sub_1001DA634()
{
  v1 = 0x69636966656E6562;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1001DA698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001DAE38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001DA6C0(uint64_t a1)
{
  v2 = sub_1001DABC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001DA6FC(uint64_t a1)
{
  v2 = sub_1001DABC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001DA768()
{
  v1 = v0;
  _StringGuts.grow(_:)(46);
  v2 = type metadata accessor for InheritanceInvitationMessage();
  sub_100005814(&qword_1003E21F0, qword_100345178);
  v3 = String.init<A>(describing:)();

  v4._object = 0x8000000100330AB0;
  v4._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v4);
  v5 = *(v2 + 20);
  type metadata accessor for UUID();
  sub_1001DAC18(&qword_1003D9150, &type metadata accessor for UUID);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0xD000000000000015;
  v7._object = 0x8000000100330AD0;
  String.append(_:)(v7);
  String.append(_:)(*(v1 + *(v2 + 24)));
  return v3;
}

uint64_t type metadata accessor for InheritanceInvitationMessage()
{
  result = qword_1003E2250;
  if (!qword_1003E2250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001DA924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1001DA9FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001DAABC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001DAB40(uint64_t a1)
{
  *(a1 + 8) = sub_1001DAC18(&unk_1003E2430, type metadata accessor for InheritanceInvitationMessage);
  result = sub_1001DAC18(&unk_1003E6950, type metadata accessor for InheritanceInvitationMessage);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001DABC4()
{
  result = qword_1003E2298;
  if (!qword_1003E2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2298);
  }

  return result;
}

uint64_t sub_1001DAC18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001DAC60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceInvitationMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DACC4(uint64_t a1)
{
  v2 = type metadata accessor for InheritanceInvitationMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001DAD34()
{
  result = qword_1003E22A8;
  if (!qword_1003E22A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E22A8);
  }

  return result;
}

unint64_t sub_1001DAD8C()
{
  result = qword_1003E22B0;
  if (!qword_1003E22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E22B0);
  }

  return result;
}

unint64_t sub_1001DADE4()
{
  result = qword_1003E22B8;
  if (!qword_1003E22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E22B8);
  }

  return result;
}

uint64_t sub_1001DAE38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100330AF0 == a2)
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

uint64_t sub_1001DAF60(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E2368, &qword_100345428);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001DBAE8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = *v3;
  v15[14] = 0;
  sub_1001D8D7C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for InheritanceInvitationResponseMessage();
    v12 = *(v11 + 20);
    v15[13] = 1;
    type metadata accessor for UUID();
    sub_1001DBB3C(&unk_1003DDA80, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[*(v11 + 24)];
    v15[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001DB160@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = type metadata accessor for UUID();
  v28 = *(v30 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100005814(&qword_1003E2378, &qword_100345430);
  v29 = *(v31 - 8);
  v7 = *(v29 + 64);
  __chkstk_darwin(v31);
  v9 = &v24 - v8;
  v10 = type metadata accessor for InheritanceInvitationResponseMessage();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001DBAE8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000839C(a1);
  }

  v26 = a1;
  v15 = v13;
  v16 = v29;
  v17 = v30;
  v34 = 0;
  sub_1001D8DD0();
  v18 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v15;
  *v15 = v35;
  v33 = 1;
  sub_1001DBB3C(&unk_1003DD720, &type metadata accessor for UUID);
  v19 = v6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = *(v28 + 32);
  v21 = v25;
  v24 = *(v10 + 20);
  v20(&v25[v24], v19, v17);
  v32 = 2;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v16 + 8))(v9, v18);
  *(v21 + *(v10 + 24)) = v22 & 1;
  sub_1001D3268(v21, v27);
  sub_10000839C(v26);
  return sub_1001DBB84(v21);
}

uint64_t sub_1001DB524()
{
  v1 = 0x69636966656E6562;
  if (*v0 != 1)
  {
    v1 = 0x6465747065636361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1001DB584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001DBCF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001DB5AC(uint64_t a1)
{
  v2 = sub_1001DBAE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001DB5E8(uint64_t a1)
{
  v2 = sub_1001DBAE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for InheritanceInvitationResponseMessage()
{
  result = qword_1003E2320;
  if (!qword_1003E2320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001DB840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001DB924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1001DB9E0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001DBA64(uint64_t a1)
{
  *(a1 + 8) = sub_1001DBB3C(&unk_1003E2440, type metadata accessor for InheritanceInvitationResponseMessage);
  result = sub_1001DBB3C(&qword_1003E2360, type metadata accessor for InheritanceInvitationResponseMessage);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001DBAE8()
{
  result = qword_1003E2370;
  if (!qword_1003E2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2370);
  }

  return result;
}

uint64_t sub_1001DBB3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001DBB84(uint64_t a1)
{
  v2 = type metadata accessor for InheritanceInvitationResponseMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001DBBF4()
{
  result = qword_1003E2380;
  if (!qword_1003E2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2380);
  }

  return result;
}

unint64_t sub_1001DBC4C()
{
  result = qword_1003E2388;
  if (!qword_1003E2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2388);
  }

  return result;
}

unint64_t sub_1001DBCA4()
{
  result = qword_1003E2390;
  if (!qword_1003E2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2390);
  }

  return result;
}

uint64_t sub_1001DBCF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69636966656E6562 && a2 == 0xED00004449797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000)
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

Swift::Int sub_1001DBE3C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1003456A0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1001DBEC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1003456A0[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1001DBF10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DC06C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001DC018()
{
  result = qword_1003E2398;
  if (!qword_1003E2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2398);
  }

  return result;
}

uint64_t sub_1001DC06C(uint64_t a1)
{
  if (a1 <= 102)
  {
    if (a1 == 101)
    {
      return 0;
    }

    if (a1 == 102)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 200:
        return 4;
      case 104:
        return 3;
      case 103:
        return 2;
    }
  }

  return 5;
}

unint64_t sub_1001DC0CC()
{
  result = qword_1003E23A0;
  if (!qword_1003E23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E23A0);
  }

  return result;
}

uint64_t sub_1001DC120@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CustodianRecoveryKeys();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JSONDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001DFC8C(&qword_1003E2460, type metadata accessor for CustodianRecoveryKeys);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_1001DFC24(v6, a1, type metadata accessor for CustodianRecoveryKeys);
  return (*(v3 + 56))(a1, 0, 1, v2);
}

uint64_t sub_1001DC3DC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BeneficiaryRemovedMessage();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JSONDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001DFC8C(&qword_1003E2450, type metadata accessor for BeneficiaryRemovedMessage);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_1001DFC24(v6, a1, type metadata accessor for BeneficiaryRemovedMessage);
  return (*(v3 + 56))(a1, 0, 1, v2);
}

uint64_t sub_1001DC698@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for InheritanceAccessKeyMessage();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JSONDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001DFC8C(&qword_1003E21A0, type metadata accessor for InheritanceAccessKeyMessage);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_1001DFC24(v6, a1, type metadata accessor for InheritanceAccessKeyMessage);
  return (*(v3 + 56))(a1, 0, 1, v2);
}

uint64_t sub_1001DC954@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for InheritanceInvitationResponseMessage();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JSONDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001DFC8C(&unk_1003E2440, type metadata accessor for InheritanceInvitationResponseMessage);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_1001DFC24(v6, a1, type metadata accessor for InheritanceInvitationResponseMessage);
  return (*(v3 + 56))(a1, 0, 1, v2);
}

uint64_t sub_1001DCC10@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for InheritanceInvitationMessage();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for JSONDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001DFC8C(&unk_1003E2430, type metadata accessor for InheritanceInvitationMessage);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_1001DFC24(v6, a1, type metadata accessor for InheritanceInvitationMessage);
  return (*(v3 + 56))(a1, 0, 1, v2);
}

uint64_t sub_1001DCECC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for InheritanceAccessKeyMessage() + 24);
  v5 = (v4 + *(type metadata accessor for CloudShareInfo() + 20));
  if (v2 == *v5 && v3 == v5[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

id sub_1001DD088()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InheritanceMessageProcessor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001DD150(void *a1, char a2)
{
  v4 = sub_100005814(&qword_1003E24B8, &qword_100345800);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  v9 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001DFED8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = a2;
  sub_1001D8D7C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1001DD298(uint64_t a1)
{
  v2 = sub_1001DFED8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001DD2D4(uint64_t a1)
{
  v2 = sub_1001DFED8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001DD310@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DFD68(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001DD3E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v9 = type metadata accessor for JSONDecoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  a4(0);
  sub_1001DFC8C(a5, a6);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  return v13;
}

uint64_t sub_1001DD700()
{
  v0 = type metadata accessor for JSONDecoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001DFBD0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  return v4;
}

void sub_1001DD8C8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = v6;
  v259 = a5;
  v260 = a6;
  v276 = a3;
  v277 = a1;
  v10 = sub_100005814(&qword_1003E2408, &qword_100345740);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v269 = &v243 - v12;
  v13 = type metadata accessor for BeneficiaryRemovedMessage();
  v267 = *(v13 - 8);
  v14 = *(v267 + 64);
  v15 = __chkstk_darwin(v13);
  v257 = &v243 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v258 = &v243 - v17;
  v18 = sub_100005814(&qword_1003E2410, &qword_100345748);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v266 = &v243 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v265 = &v243 - v22;
  v275 = type metadata accessor for InheritanceAccessKeyMessage();
  v23 = *(v275 - 1);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v275);
  v247 = &v243 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v28 = &v243 - v27;
  v29 = __chkstk_darwin(v26);
  v254 = &v243 - v30;
  v31 = __chkstk_darwin(v29);
  v274 = &v243 - v32;
  v33 = __chkstk_darwin(v31);
  v246 = &v243 - v34;
  v35 = __chkstk_darwin(v33);
  v250 = &v243 - v36;
  v37 = __chkstk_darwin(v35);
  v248 = &v243 - v38;
  v39 = __chkstk_darwin(v37);
  v253 = &v243 - v40;
  __chkstk_darwin(v39);
  v273 = &v243 - v41;
  v42 = sub_100005814(&qword_1003E2418, &qword_100345750);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v264 = &v243 - v44;
  v268 = type metadata accessor for InheritanceInvitationResponseMessage();
  v270 = *(v268 - 8);
  v45 = *(v270 + 64);
  v46 = __chkstk_darwin(v268);
  v256 = &v243 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v252 = &v243 - v49;
  v255 = v50;
  __chkstk_darwin(v48);
  v272 = &v243 - v51;
  v52 = sub_100005814(&unk_1003E2420, &unk_100345758);
  v53 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52 - 8);
  v263 = &v243 - v54;
  v55 = type metadata accessor for InheritanceInvitationMessage();
  v261 = *(v55 - 8);
  v262 = v55;
  v56 = *(v261 + 64);
  v57 = __chkstk_darwin(v55);
  v251 = &v243 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v271 = &v243 - v59;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  v61 = sub_100008D04(v60, qword_1003FAAA0);

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.info.getter();

  v64 = os_log_type_enabled(v62, v63);
  v249 = v28;
  if (v64)
  {
    v65 = a4;
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v245 = a2;
    v68 = v24;
    v69 = v13;
    v70 = v23;
    v71 = v7;
    v72 = v67;
    v278 = v67;
    *v66 = 136315138;
    *(v66 + 4) = sub_10021145C(v276, v65, &v278);
    _os_log_impl(&_mh_execute_header, v62, v63, "Inheritance message processor will process message from %s.", v66, 0xCu);
    sub_10000839C(v72);
    v7 = v71;
    v23 = v70;
    v13 = v69;
    v24 = v68;

    a4 = v65;
  }

  v73 = [*(*sub_1000080F8((&v7->isa + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_accountStore) *(&v7[3].isa + OBJC:"aa_primaryAppleAccount" IVAR:? :? :? :? TtC13appleaccountd27InheritanceMessageProcessor:?accountStore)) + 16)];
  if (!v73)
  {
    v277 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v277, v81))
    {
LABEL_33:
      v91 = v277;

      return;
    }

    v82 = swift_slowAlloc();
    *v82 = 0;
    v83 = "Not logged in to AppleAccount, unable to process message.";
LABEL_32:
    _os_log_impl(&_mh_execute_header, v277, v81, v83, v82, 2u);

    goto LABEL_33;
  }

  v278 = 0;
  v74 = sub_1001DD700();

  if (v74 > 2u)
  {
    if (v74 == 3)
    {
      v278 = 0;
      v88 = v269;
      sub_1001DC3DC(v269);

      if ((*(v267 + 48))(v88, 1, v13) == 1)
      {
        sub_100008D3C(v88, &qword_1003E2408, &qword_100345740);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          v80 = "Unable to decode Beneficiary Removed message";
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      v106 = v7;
      v107 = v258;
      sub_1001DFC24(v88, v258, type metadata accessor for BeneficiaryRemovedMessage);
      v108 = v257;
      sub_1001DFB08(v107, v257, type metadata accessor for BeneficiaryRemovedMessage);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = v13;
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v278 = v113;
        *v112 = 136315138;
        v114 = sub_1001D894C();
        v115 = v108;
        v117 = v116;
        sub_1001DFB70(v115, type metadata accessor for BeneficiaryRemovedMessage);
        v118 = sub_10021145C(v114, v117, &v278);

        *(v112 + 4) = v118;
        _os_log_impl(&_mh_execute_header, v109, v110, "Received Beneficiary Removed Message - %s", v112, 0xCu);
        sub_10000839C(v113);

        v13 = v111;
      }

      else
      {

        sub_1001DFB70(v108, type metadata accessor for BeneficiaryRemovedMessage);
      }

      v168 = sub_1000080F8((&v106->isa + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_beneficiaryRemovedMessageHandler), *(&v106[3].isa + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_beneficiaryRemovedMessageHandler));
      v169 = sub_1000080F8((*v168 + 16), *(*v168 + 40));
      v170 = *(v13 + 20);
      v171 = swift_allocObject();
      *(v171 + 16) = 0;
      *(v171 + 24) = 0;
      v172 = *v169;
      v173 = swift_allocObject();
      *(v173 + 16) = sub_1001DF700;
      *(v173 + 24) = v171;

      sub_1001F037C(v107 + v170, sub_1001DF740, v173);

      v174 = type metadata accessor for BeneficiaryRemovedMessage;
      v175 = v107;
      goto LABEL_76;
    }

    if (v74 == 4)
    {
      v278 = 0;
      v84 = v263;
      sub_1001DCC10(v263);

      if ((*(v261 + 48))(v84, 1, v262) == 1)
      {
        sub_100008D3C(v84, &unk_1003E2420, &unk_100345758);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          v80 = "Unable to decode Inheritance invitation!";
          goto LABEL_28;
        }

LABEL_29:

        return;
      }

      v131 = v84;
      v132 = v271;
      sub_1001DFC24(v131, v271, type metadata accessor for InheritanceInvitationMessage);
      v133 = v132;
      v134 = v251;
      sub_1001DFB08(v133, v251, type metadata accessor for InheritanceInvitationMessage);
      v135 = Logger.logObject.getter();
      v136 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = v7;
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v278 = v139;
        *v138 = 136315138;
        v140 = sub_1001DA768();
        v142 = v141;
        sub_1001DFB70(v134, type metadata accessor for InheritanceInvitationMessage);
        v143 = sub_10021145C(v140, v142, &v278);

        *(v138 + 4) = v143;
        _os_log_impl(&_mh_execute_header, v135, v136, "Received Inheritance invitation message - %s", v138, 0xCu);
        sub_10000839C(v139);

        v7 = v137;
      }

      else
      {

        sub_1001DFB70(v134, type metadata accessor for InheritanceInvitationMessage);
      }

      v188 = *sub_1000080F8((&v7->isa + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_invitationHandler), *(&v7[3].isa + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_invitationHandler));
      v189 = v271;
      sub_1001CE454(v271, v276, a4, v259, v260, 0, 0);
      v174 = type metadata accessor for InheritanceInvitationMessage;
      v175 = v189;
      goto LABEL_76;
    }

    v277 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v277, v81))
    {
      goto LABEL_33;
    }

    v82 = swift_slowAlloc();
    *v82 = 0;
    v83 = "Failed to decode data, unable to process message";
    goto LABEL_32;
  }

  if (v74)
  {
    if (v74 == 1)
    {
      v278 = 0;
      v75 = v265;
      sub_1001DC698(v265);

      v76 = v275;
      if ((*(v23 + 48))(v75, 1, v275) == 1)
      {
        sub_100008D3C(v75, &qword_1003E2410, &qword_100345748);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          v80 = "Unable to decode Inheritance Access Key message";
LABEL_28:
          _os_log_impl(&_mh_execute_header, v77, v78, v80, v79, 2u);

          goto LABEL_29;
        }

        goto LABEL_29;
      }

      v277 = v7;
      v119 = v273;
      sub_1001DFC24(v75, v273, type metadata accessor for InheritanceAccessKeyMessage);
      v120 = v253;
      sub_1001DFB08(v119, v253, type metadata accessor for InheritanceAccessKeyMessage);
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.info.getter();
      v123 = os_log_type_enabled(v121, v122);
      v244 = v23;
      if (v123)
      {
        v124 = swift_slowAlloc();
        v125 = v61;
        v126 = swift_slowAlloc();
        v278 = v126;
        *v124 = 136315138;
        v127 = sub_1001D9780();
        v129 = v128;
        sub_1001DFB70(v120, type metadata accessor for InheritanceAccessKeyMessage);
        v130 = sub_10021145C(v127, v129, &v278);
        v119 = v273;

        *(v124 + 4) = v130;
        _os_log_impl(&_mh_execute_header, v121, v122, "Received Access Key Message - %s", v124, 0xCu);
        sub_10000839C(v126);
        v61 = v125;

        v76 = v275;
      }

      else
      {

        sub_1001DFB70(v120, type metadata accessor for InheritanceAccessKeyMessage);
      }

      v176 = v248;
      sub_1001DFB08(v119, v248, type metadata accessor for InheritanceAccessKeyMessage);
      v177 = Logger.logObject.getter();
      v178 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v272 = v61;
        v181 = v180;
        v278 = v180;
        *v179 = 136315138;
        v182 = *(v76 + 6);
        type metadata accessor for URL();
        sub_1001DFC8C(&qword_1003DD590, &type metadata accessor for URL);
        v183 = dispatch thunk of CustomStringConvertible.description.getter();
        v185 = v184;
        sub_1001DFB70(v176, type metadata accessor for InheritanceAccessKeyMessage);
        v186 = sub_10021145C(v183, v185, &v278);
        v119 = v273;

        *(v179 + 4) = v186;
        _os_log_impl(&_mh_execute_header, v177, v178, "Share URL - %s", v179, 0xCu);
        sub_10000839C(v181);
      }

      else
      {

        v187 = sub_1001DFB70(v176, type metadata accessor for InheritanceAccessKeyMessage);
      }

      v202 = v277;
      v203 = v244;
      if (qword_1003D7EF0 != -1)
      {
        v187 = swift_once();
      }

      __chkstk_darwin(v187);
      *(&v243 - 2) = v119;
      if (sub_1002D9820(sub_1001E0048, (&v243 - 4), v204))
      {
        v205 = *sub_1000080F8((v202 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_accessKeyMessageHandler), *(v202 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_accessKeyMessageHandler + 24));
        v206 = *(v76 + 5);
        v207 = v250;
        sub_1001DFB08(v119, v250, type metadata accessor for InheritanceAccessKeyMessage);
        v208 = (*(v203 + 80) + 24) & ~*(v203 + 80);
        v209 = v24 + v208 + 7;
        v210 = v119;
        v211 = v209 & 0xFFFFFFFFFFFFFFF8;
        v212 = ((v209 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
        v213 = swift_allocObject();
        *(v213 + 16) = v205;
        sub_1001DFC24(v207, v213 + v208, type metadata accessor for InheritanceAccessKeyMessage);
        v214 = (v213 + v211);
        v215 = (v213 + v212);
        *v214 = 0;
        v214[1] = 0;
        v216 = v276;
        *v215 = v276;
        v215[1] = a4;

        v217 = sub_1001E0064;
LABEL_68:
        sub_1001CCAC4(v210 + v206, v216, a4, v217, v213);

        v175 = v210;
        v174 = type metadata accessor for InheritanceAccessKeyMessage;
LABEL_76:
        sub_1001DFB70(v175, v174);
        return;
      }

      v229 = v246;
      sub_1001DFB08(v119, v246, type metadata accessor for InheritanceAccessKeyMessage);
      v230 = Logger.logObject.getter();
      v231 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v230, v231))
      {
        v232 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        v278 = v233;
        *v232 = 136315138;
        v234 = *(v76 + 6);
        v235 = (v229 + v234 + *(type metadata accessor for CloudShareInfo() + 20));
        v236 = *v235;
        v237 = v235[1];

        sub_1001DFB70(v229, type metadata accessor for InheritanceAccessKeyMessage);
        v238 = sub_10021145C(v236, v237, &v278);
        v119 = v273;
LABEL_73:

        *(v232 + 4) = v238;
        _os_log_impl(&_mh_execute_header, v230, v231, "Invalid container ID received %s", v232, 0xCu);
        sub_10000839C(v233);

LABEL_75:
        v174 = type metadata accessor for InheritanceAccessKeyMessage;
        v175 = v119;
        goto LABEL_76;
      }
    }

    else
    {
      v278 = 0;
      v89 = v266;
      sub_1001DC698(v266);

      v90 = v275;
      if ((*(v23 + 48))(v89, 1, v275) == 1)
      {
        sub_100008D3C(v89, &qword_1003E2410, &qword_100345748);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          v80 = "Unable to decode Update Inheritance Access Key message";
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      v277 = v7;
      v119 = v274;
      sub_1001DFC24(v89, v274, type metadata accessor for InheritanceAccessKeyMessage);
      v144 = v254;
      sub_1001DFB08(v119, v254, type metadata accessor for InheritanceAccessKeyMessage);
      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.info.getter();
      v147 = os_log_type_enabled(v145, v146);
      v244 = v23;
      if (v147)
      {
        v148 = swift_slowAlloc();
        v149 = v61;
        v150 = swift_slowAlloc();
        v278 = v150;
        *v148 = 136315138;
        v151 = sub_1001D9780();
        v153 = v152;
        sub_1001DFB70(v144, type metadata accessor for InheritanceAccessKeyMessage);
        v154 = sub_10021145C(v151, v153, &v278);
        v119 = v274;

        *(v148 + 4) = v154;
        _os_log_impl(&_mh_execute_header, v145, v146, "Received Access Key Changed Message - %s", v148, 0xCu);
        sub_10000839C(v150);
        v61 = v149;

        v90 = v275;
      }

      else
      {

        sub_1001DFB70(v144, type metadata accessor for InheritanceAccessKeyMessage);
      }

      v190 = v249;
      sub_1001DFB08(v119, v249, type metadata accessor for InheritanceAccessKeyMessage);
      v191 = Logger.logObject.getter();
      v192 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v191, v192))
      {
        v193 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        v272 = v61;
        v195 = v194;
        v278 = v194;
        *v193 = 136315138;
        v196 = *(v90 + 6);
        type metadata accessor for URL();
        sub_1001DFC8C(&qword_1003DD590, &type metadata accessor for URL);
        v197 = dispatch thunk of CustomStringConvertible.description.getter();
        v199 = v198;
        sub_1001DFB70(v190, type metadata accessor for InheritanceAccessKeyMessage);
        v200 = sub_10021145C(v197, v199, &v278);
        v119 = v274;

        *(v193 + 4) = v200;
        _os_log_impl(&_mh_execute_header, v191, v192, "Share URL - %s", v193, 0xCu);
        sub_10000839C(v195);
      }

      else
      {

        v201 = sub_1001DFB70(v190, type metadata accessor for InheritanceAccessKeyMessage);
      }

      v218 = v277;
      v219 = v244;
      if (qword_1003D7EF0 != -1)
      {
        v201 = swift_once();
      }

      __chkstk_darwin(v201);
      *(&v243 - 2) = v119;
      if (sub_1002D9820(sub_1001DF748, (&v243 - 4), v220))
      {
        v221 = *sub_1000080F8((v218 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_accessKeyMessageHandler), *(v218 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_accessKeyMessageHandler + 24));
        v206 = *(v90 + 5);
        v222 = v250;
        sub_1001DFB08(v119, v250, type metadata accessor for InheritanceAccessKeyMessage);
        v223 = (*(v219 + 80) + 24) & ~*(v219 + 80);
        v224 = v24 + v223 + 7;
        v210 = v119;
        v225 = v224 & 0xFFFFFFFFFFFFFFF8;
        v226 = ((v224 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
        v213 = swift_allocObject();
        *(v213 + 16) = v221;
        sub_1001DFC24(v222, v213 + v223, type metadata accessor for InheritanceAccessKeyMessage);
        v227 = (v213 + v225);
        v228 = (v213 + v226);
        *v227 = 0;
        v227[1] = 0;
        v216 = v276;
        *v228 = v276;
        v228[1] = a4;

        v217 = sub_1001DF768;
        goto LABEL_68;
      }

      v229 = v247;
      sub_1001DFB08(v119, v247, type metadata accessor for InheritanceAccessKeyMessage);
      v230 = Logger.logObject.getter();
      v231 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v230, v231))
      {
        v232 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        v278 = v233;
        *v232 = 136315138;
        v239 = *(v90 + 6);
        v240 = (v229 + v239 + *(type metadata accessor for CloudShareInfo() + 20));
        v241 = *v240;
        v242 = v240[1];

        sub_1001DFB70(v229, type metadata accessor for InheritanceAccessKeyMessage);
        v238 = sub_10021145C(v241, v242, &v278);
        v119 = v274;
        goto LABEL_73;
      }
    }

    sub_1001DFB70(v229, type metadata accessor for InheritanceAccessKeyMessage);
    goto LABEL_75;
  }

  v278 = 0;
  v85 = v264;
  sub_1001DC954(v264);

  v86 = v270;
  v87 = v268;
  if ((*(v270 + 48))(v85, 1, v268) == 1)
  {
    sub_100008D3C(v85, &qword_1003E2418, &qword_100345750);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      v80 = "Unable to decode Inheritance invitation response";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v92 = v85;
  v93 = v272;
  sub_1001DFC24(v92, v272, type metadata accessor for InheritanceInvitationResponseMessage);
  v94 = v252;
  sub_1001DFB08(v93, v252, type metadata accessor for InheritanceInvitationResponseMessage);
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.info.getter();
  v97 = os_log_type_enabled(v95, v96);
  v243 = a4;
  if (v97)
  {
    v98 = swift_slowAlloc();
    v99 = v7;
    v100 = swift_slowAlloc();
    v278 = v100;
    *v98 = 136315138;
    v101 = sub_1001DB654();
    v102 = v94;
    v104 = v103;
    sub_1001DFB70(v102, type metadata accessor for InheritanceInvitationResponseMessage);
    v105 = sub_10021145C(v101, v104, &v278);

    *(v98 + 4) = v105;
    _os_log_impl(&_mh_execute_header, v95, v96, "Received Inheritance invitation response message - %s", v98, 0xCu);
    sub_10000839C(v100);
    v7 = v99;
  }

  else
  {

    sub_1001DFB70(v94, type metadata accessor for InheritanceInvitationResponseMessage);
  }

  v155 = *sub_1000080F8((&v7->isa + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_invitationResponseHandler), *(&v7[3].isa + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_invitationResponseHandler));
  v277 = *(v87 + 20);
  v275 = sub_1000080F8((v155 + 16), *(v155 + 40));
  v156 = swift_allocObject();
  swift_weakInit();
  v157 = v272;
  v158 = v256;
  sub_1001DFB08(v272, v256, type metadata accessor for InheritanceInvitationResponseMessage);
  v159 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v160 = (v255 + v159 + 7) & 0xFFFFFFFFFFFFFFF8;
  v161 = (v160 + 23) & 0xFFFFFFFFFFFFFFF8;
  v162 = (v161 + 15) & 0xFFFFFFFFFFFFFFF8;
  v163 = swift_allocObject();
  sub_1001DFC24(v158, v163 + v159, type metadata accessor for InheritanceInvitationResponseMessage);
  v164 = (v163 + v160);
  *v164 = 0;
  v164[1] = 0;
  *(v163 + v161) = v156;
  *(v163 + v162) = 0;
  v165 = (v163 + ((v162 + 15) & 0xFFFFFFFFFFFFFFF8));
  v166 = v243;
  *v165 = v276;
  v165[1] = v166;
  v167 = *v275;

  sub_100214780(v157 + v277, sub_1001D373C, v163);

  sub_1001DFB70(v157, type metadata accessor for InheritanceInvitationResponseMessage);
}

uint64_t sub_1001DF6C0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001DF708()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001DF770()
{
  v1 = (type metadata accessor for InheritanceAccessKeyMessage() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v5 + v1[8];
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = type metadata accessor for CloudShareInfo();
  v11 = *(v8 + *(v10 + 20) + 8);

  if (*(v0 + v3))
  {
    v12 = *(v0 + v3 + 8);
  }

  v13 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16);
}

uint64_t sub_1001DF8F4(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceAccessKeyMessage() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);

  return sub_1001CC638(a1, v7, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_1001DF9A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001DF9E0()
{
  v1 = type metadata accessor for InheritanceInvitationResponseMessage();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + *(v1 + 20);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);
  if (*(v0 + v4))
  {
    v7 = *(v0 + v4 + 8);
  }

  v8 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v8);

  v11 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16);
}

uint64_t sub_1001DFB08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001DFB70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001DFBD0()
{
  result = qword_1003E2458;
  if (!qword_1003E2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2458);
  }

  return result;
}

uint64_t sub_1001DFC24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001DFC8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001DFCE4(uint64_t a1)
{
  *(a1 + 8) = sub_1001DFBD0();
  result = sub_1001DFD14();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001DFD14()
{
  result = qword_1003E2498;
  if (!qword_1003E2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2498);
  }

  return result;
}

void *sub_1001DFD68(uint64_t *a1)
{
  v3 = sub_100005814(&qword_1003E24A0, &qword_1003457F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_1000080F8(a1, a1[3]);
  sub_1001DFED8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000839C(a1);
  }

  else
  {
    sub_1001D8DD0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    sub_10000839C(a1);
  }

  return v9;
}

unint64_t sub_1001DFED8()
{
  result = qword_1003E24A8;
  if (!qword_1003E24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E24A8);
  }

  return result;
}

unint64_t sub_1001DFF40()
{
  result = qword_1003E24C8;
  if (!qword_1003E24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E24C8);
  }

  return result;
}

unint64_t sub_1001DFF98()
{
  result = qword_1003E24D0;
  if (!qword_1003E24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E24D0);
  }

  return result;
}

unint64_t sub_1001DFFF0()
{
  result = qword_1003E24D8;
  if (!qword_1003E24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E24D8);
  }

  return result;
}

uint64_t sub_1001E0068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v42 = a4;
  v11 = type metadata accessor for InheritanceInvitationMessage();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  v19 = *(v12 + 28);
  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 16))(&v18[v19], a1, v20);
  *v18 = 4;
  v21 = &v18[*(v12 + 32)];
  *v21 = a2;
  v21[1] = a3;
  v22 = qword_1003D7F40;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAAA0);
  sub_1001E16E8(v18, v16, type metadata accessor for InheritanceInvitationMessage);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v43 = v27;
    *v26 = 136315138;
    v28 = sub_1001DA768();
    v41 = a5;
    v29 = v6;
    v30 = a1;
    v32 = v31;
    sub_1001E1750(v16, type metadata accessor for InheritanceInvitationMessage);
    v33 = sub_10021145C(v28, v32, &v43);
    a1 = v30;
    v6 = v29;
    a5 = v41;

    *(v26 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "Created invitation message - %s.\nSending...", v26, 0xCu);
    sub_10000839C(v27);
  }

  else
  {

    sub_1001E1750(v16, type metadata accessor for InheritanceInvitationMessage);
  }

  v34 = sub_1000080F8((v6 + 16), *(v6 + 40));
  v35 = (a1 + *(type metadata accessor for InheritanceInvitationRecord() + 20));
  v36 = *v35;
  v37 = v35[1];
  v38 = *v34;

  sub_1002B5858(v18, v36, v37, 0, 0, &_swiftEmptySetSingleton, v38, v42, a5);

  return sub_1001E1750(v18, type metadata accessor for InheritanceInvitationMessage);
}

uint64_t sub_1001E039C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAAA0);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v5, v6))
    {

      return a2(a1);
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v9 = String.init<A>(describing:)();
    v11 = sub_10021145C(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error sending IDS Message for Inheritance Invitation: %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAA0);
    v5 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, v13, "Sent IDS Message for Inheritance Invitation successfully.", v14, 2u);
    }
  }

  return a2(a1);
}

void sub_1001E061C(uint64_t a1, void (*a2)(uint64_t))
{
  if (!a1)
  {
LABEL_6:
    if (!a2)
    {
      return;
    }

    goto LABEL_7;
  }

  swift_errorRetain();
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAAA0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v9 = String.init<A>(describing:)();
    v11 = sub_10021145C(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error sending IDS Message for Share Access Key: %s", v7, 0xCu);
    sub_10000839C(v8);

    goto LABEL_6;
  }

  if (!a2)
  {
    return;
  }

LABEL_7:
  a2(a1);
  sub_100083B0C(a2);
}

uint64_t sub_1001E07FC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, const char *a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAAA0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v12 = String.init<A>(describing:)();
      v14 = sub_10021145C(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, a4, v10, 0xCu);
      sub_10000839C(v11);
    }

    else
    {
    }
  }

  return a2(a1);
}

uint64_t sub_1001E09EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v12 = a2;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAA0);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v30 = a3;
    v31 = a4;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33 = v29;
      *v16 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v17 = String.init<A>(describing:)();
      v19 = a7;
      v20 = a5;
      v21 = a6;
      v22 = sub_10021145C(v17, v18, &v33);

      *(v16 + 4) = v22;
      a6 = v21;
      a5 = v20;
      a7 = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error sending IDS Message for Beneficiary Removed: %s", v16, 0xCu);
      sub_10000839C(v29);
    }

    else
    {
    }

    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error while sending beneficiary removed IDS message %@", v25, 0xCu);
      sub_100083380(v26);
    }

    else
    {
    }

    a4 = v31;
    v12 = a2;
    a3 = v30;
  }

  sub_100209344(a3, a4, a5, v12, a6, a7);
}

void sub_1001E0CD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t), uint64_t a10)
{
  v98 = a7;
  v95 = a2;
  v96 = a3;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v91 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BeneficiaryRemovedMessage();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v90 - v25;
  v27 = *(v24 + 28);
  v92 = v16;
  v93 = v15;
  (*(v16 + 16))(&v90 + v27 - v25, a1, v15);
  *v26 = 3;
  v28 = qword_1003D7F40;
  v29 = a5;
  v94 = a6;

  v99 = a10;

  if (v28 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100008D04(v30, qword_1003FAAA0);
  v100 = v26;
  sub_1001E16E8(v26, v23, type metadata accessor for BeneficiaryRemovedMessage);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v97 = v30;
    v34 = v29;
    v35 = a8;
    v36 = v33;
    v37 = swift_slowAlloc();
    v101 = v37;
    *v36 = 136315138;
    v38 = sub_1001D894C();
    v40 = v39;
    sub_1001E1750(v23, type metadata accessor for BeneficiaryRemovedMessage);
    v41 = sub_10021145C(v38, v40, &v101);

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v31, v32, "Created beneficiary removed message - %s.\nSending....", v36, 0xCu);
    sub_10000839C(v37);

    a8 = v35;
    v29 = v34;
    v30 = v97;
  }

  else
  {

    sub_1001E1750(v23, type metadata accessor for BeneficiaryRemovedMessage);
  }

  v97 = a9;
  v42 = sub_1000080F8((a4 + 16), *(a4 + 40));
  v43 = v99;
  if (_swiftEmptyArrayStorage >> 62)
  {
    v88 = v42;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_10013446C(_swiftEmptyArrayStorage);
      v44 = v89;
    }

    else
    {
      v44 = &_swiftEmptySetSingleton;
    }

    v42 = v88;
  }

  else
  {
    v44 = &_swiftEmptySetSingleton;
  }

  v45 = *v42;
  v46 = v29;
  v47 = v94;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v48 = v46;
  v49 = v47;
  v50 = v48;
  v51 = v49;
  v52 = v50;
  v53 = v51;
  v54 = sub_1000E9F18();
  if ((v55 & 1) == 0)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v96 = v44;
    sub_100008D04(v30, qword_1003FAA40);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Destination is valid!", v65, 2u);
    }

    v66 = sub_1002B41BC(v100);
    if (v67 >> 60 == 15)
    {
      v68 = [objc_allocWithZone(NSError) initWithDomain:AAMessagingErrorDomain code:4 userInfo:0];
      swift_willThrow();
    }

    else
    {
      v95 = a8;
      v69 = *(v45 + 16);
      v70 = v66;
      v71 = v67;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1003431D0;
      *(v73 + 32) = v54;
      sub_100016034(0, &unk_1003E6930, AAMessagingDestination_ptr);
      v74 = v54;
      v75 = Array._bridgeToObjectiveC()().super.isa;

      sub_100016034(0, &qword_1003DEC20, AAMessagingCapability_ptr);
      sub_1001E1680();
      v76 = Set._bridgeToObjectiveC()().super.isa;
      v101 = 0;
      v77 = [v69 sendMessage:isa destinations:v75 sendFromHandleUri:0 responseIdentifier:0 fireAndForget:0 requiredCapabilities:v76 lackingCapabilities:0 error:&v101];

      v78 = v101;
      if (v77)
      {
        v79 = v91;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v78;
        sub_100015D58(v70, v71);

        (*(v92 + 8))(v79, v93);
        v81 = v52;
        v82 = v53;
        v83 = v95;

        v84 = v99;

        sub_100209344(v82, v98, v83, v81, v97, v84);

        sub_10005A40C(v54, 0);
        goto LABEL_24;
      }

      v85 = v101;
      v68 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100015D58(v70, v71);
      a8 = v95;
      v43 = v99;
    }

    v86 = v52;
    v87 = v53;

    swift_errorRetain();
    sub_1001E09EC(v68, v86, v87, v98, a8, v97, v43);

    sub_10005A40C(v54, 0);

    goto LABEL_24;
  }

  swift_errorRetain();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  sub_100008D04(v30, qword_1003FAA40);
  swift_errorRetain();
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();
  sub_10005A40C(v54, 1);
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 138412290;
    v60 = _convertErrorToNSError(_:)();
    *(v58 + 4) = v60;
    *v59 = v60;
    _os_log_impl(&_mh_execute_header, v56, v57, "error building destination: %@", v58, 0xCu);
    sub_100083380(v59);
  }

  v61 = v52;
  v62 = v53;

  sub_100135D08(v54, 1);
  sub_1001E09EC(v54, v61, v62, v98, a8, v97, v43);

  sub_10005A40C(v54, 1);
  sub_10005A40C(v54, 1);

LABEL_24:

  swift_bridgeObjectRelease_n();
  sub_1001E1750(v100, type metadata accessor for BeneficiaryRemovedMessage);
}

unint64_t sub_1001E1680()
{
  result = qword_1003E6940;
  if (!qword_1003E6940)
  {
    sub_100016034(255, &qword_1003DEC20, AAMessagingCapability_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E6940);
  }

  return result;
}

uint64_t sub_1001E16E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E1750(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1001E17B0(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v77 = a3;
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v70 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v70 - v17;
  if (CKRecord.recordType.getter() == 0xD00000000000001FLL && 0x80000001003303D0 == v18)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
LABEL_7:
      type metadata accessor for InheritanceError(0);
      v82 = 2;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001E3138(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return;
    }
  }

  v75 = v16;
  v20 = [a1 recordID];
  v21 = [v20 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v22 = v12;
  v23 = *(v12 + 48);
  if (v23(v10, 1, v11) == 1)
  {
    sub_100008D3C(v10, &qword_1003D8B60, &unk_10033F210);
    goto LABEL_7;
  }

  v74 = v22;
  v24 = *(v22 + 32);
  v76 = v11;
  v72 = v24;
  (v24)(v79, v10);
  v25 = [a1 encryptedValuesByKey];
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 objectForKeyedSubscript:v26];

  if (!v27)
  {
    goto LABEL_12;
  }

  v73 = v25;
  v82 = v27;
  sub_100005814(&unk_1003E2770, &qword_100341F50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  UUID.init(uuidString:)();

  v28 = v76;
  if (v23(v8, 1, v76) != 1)
  {
    v38 = v72;
    v72(v75, v8, v28);
    v39 = String._bridgeToObjectiveC()();
    v40 = [v73 objectForKeyedSubscript:v39];

    v41 = v74;
    if (v40 && (v82 = v40, (swift_dynamicCast() & 1) != 0))
    {
      v42 = v80;
      v71 = v81;
      v43 = String._bridgeToObjectiveC()();
      v44 = [v73 objectForKeyedSubscript:v43];

      if (v44)
      {
        v80 = v44;
        type metadata accessor for Status(0);
        if (swift_dynamicCast())
        {
          v74 = v82;
          v45 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
          [a1 encodeSystemFieldsWithCoder:v45];
          [v45 finishEncoding];
          v46 = [v45 encodedData];
          v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v48 = v42;
          v50 = v49;
          swift_unknownObjectRelease();

          v51 = type metadata accessor for BenefactorInfoRecord();
          v52 = v77;
          v53 = (v77 + v51[8]);
          *v53 = v47;
          v53[1] = v50;
          v54 = v76;
          v38(v52 + v51[7], v79, v76);
          v38(v52, v75, v54);
          v55 = (v52 + v51[5]);
          v56 = v71;
          *v55 = v48;
          v55[1] = v56;
          *(v52 + v51[6]) = v74;
          *(v52 + v51[9]) = v78 & 1;
          return;
        }
      }

      v62 = v76;
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_100008D04(v67, qword_1003FAAA0);
      v58 = a1;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v59, v60))
      {
        goto LABEL_31;
      }

      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      *(v63 + 4) = v58;
      *v64 = v58;
      v68 = v58;
      v66 = "Missing TrustedContactStatus - %@";
    }

    else
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_100008D04(v57, qword_1003FAAA0);
      v58 = a1;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      v61 = os_log_type_enabled(v59, v60);
      v62 = v76;
      if (!v61)
      {
        goto LABEL_31;
      }

      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      *(v63 + 4) = v58;
      *v64 = v58;
      v65 = v58;
      v66 = "Missing Inheritance Handle - %@";
    }

    _os_log_impl(&_mh_execute_header, v59, v60, v66, v63, 0xCu);
    sub_100008D3C(v64, &unk_1003D9140, &qword_10033E640);

LABEL_31:

    type metadata accessor for InheritanceError(0);
    v82 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001E3138(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    v69 = *(v41 + 8);
    v69(v75, v62);
    v69(v79, v62);
    return;
  }

  sub_100008D3C(v8, &qword_1003D8B60, &unk_10033F210);
LABEL_12:
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100008D04(v29, qword_1003FAAA0);
  v30 = a1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v76;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v30;
    *v36 = v30;
    v37 = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "Missing Inheritance beneficiaryID - %@", v35, 0xCu);
    sub_100008D3C(v36, &unk_1003D9140, &qword_10033E640);
  }

  type metadata accessor for InheritanceError(0);
  v82 = 2;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1001E3138(&qword_1003D8040, type metadata accessor for InheritanceError);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  swift_unknownObjectRelease();
  (*(v74 + 8))(v79, v34);
}

unint64_t sub_1001E2234()
{
  v1 = *v0;
  v2 = 0x69636966656E6562;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x737574617473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C646E6168;
  if (v1 != 1)
  {
    v5 = 0x444964726F636572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001E22F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001E34E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001E2320(uint64_t a1)
{
  v2 = sub_1001E30E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E235C(uint64_t a1)
{
  v2 = sub_1001E30E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E2398@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v35 = type metadata accessor for UUID();
  v32 = *(v35 - 8);
  v3 = *(v32 + 64);
  v4 = __chkstk_darwin(v35);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v30 - v7;
  v9 = sub_100005814(&qword_1003E25C8, &qword_100345A40);
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  __chkstk_darwin(v9);
  v12 = v30 - v11;
  v13 = type metadata accessor for BenefactorInfoRecord();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001E30E4();
  v36 = v12;
  v18 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_10000839C(a1);
  }

  v37 = v6;
  v19 = v16;
  LOBYTE(v38) = 0;
  v20 = sub_1001E3138(&unk_1003DD720, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30[2] = v20;
  v21 = *(v32 + 32);
  v21(v19, v8, v35);
  LOBYTE(v38) = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v13;
  v24 = (v19 + *(v13 + 20));
  *v24 = v22;
  v24[1] = v25;
  LOBYTE(v38) = 5;
  v30[1] = 0;
  *(v19 + *(v13 + 24)) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v38) = 2;
  v26 = v37;
  v27 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21(v19 + v23[7], v26, v27);
  v39 = 3;
  sub_1000EE61C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v19 + v23[8]) = v38;
  LOBYTE(v38) = 4;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v33 + 8))(v36, v34);
  *(v19 + v23[9]) = v28 & 1;
  sub_1001C84F8(v19, v31);
  sub_10000839C(a1);
  return sub_1001C855C(v19);
}

uint64_t sub_1001E28E0(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E25D8, &qword_100345A48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001E30E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = 0;
  type metadata accessor for UUID();
  sub_1001E3138(&unk_1003DDA80, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for BenefactorInfoRecord();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + v11[6]);
    LOBYTE(v21) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v11[7];
    LOBYTE(v21) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = (v3 + v11[8]);
    v18 = v17[1];
    v21 = *v17;
    v22 = v18;
    v23 = 3;
    sub_100015D6C(v21, v18);
    sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v21, v22);
    v19 = *(v3 + v11[9]);
    LOBYTE(v21) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001E2B8C(id *a1)
{
  [*a1 encryptedValuesByKey];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v2 = UUID.uuidString.getter();
  if (!v16)
  {

    goto LABEL_7;
  }

  if (v15 != v2 || v16 != v3)
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      goto LABEL_8;
    }

LABEL_7:
    v15 = UUID.uuidString.getter();
    v16 = v5;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_8;
  }

LABEL_8:
  CKRecordKeyValueSetting.subscript.getter();
  v6 = type metadata accessor for BenefactorInfoRecord();
  v7 = (v1 + *(v6 + 20));
  v9 = *v7;
  v8 = v7[1];
  if (!v16)
  {
    goto LABEL_14;
  }

  if (v15 == v9 && v16 == v8)
  {

    goto LABEL_16;
  }

  v11 = *v7;
  v12 = v7[1];
  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v13 & 1) == 0)
  {
LABEL_14:
    v15 = v9;
    LOBYTE(v16) = v8;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_16:
  CKRecordKeyValueSetting.subscript.getter();
  if ((v16 & 1) != 0 || v15 != *(v1 + *(v6 + 24)))
  {
    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1001E2E64()
{
  _StringGuts.grow(_:)(36);
  v1 = type metadata accessor for BenefactorInfoRecord();
  sub_100005814(&unk_1003E25E0, &qword_100345A50);
  v2 = String.init<A>(describing:)();

  v3._object = 0x8000000100330C00;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  type metadata accessor for UUID();
  sub_1001E3138(&qword_1003D9150, &type metadata accessor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x656C646E61680A2CLL;
  v5._object = 0xEB00000000202D20;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + *(v1 + 20)));
  return v2;
}

uint64_t sub_1001E2FBC(uint64_t a1)
{
  *(a1 + 8) = sub_1001E3138(&unk_1003E25B0, type metadata accessor for BenefactorInfoRecord);
  result = sub_1001E3138(&unk_1003E0E80, type metadata accessor for BenefactorInfoRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for BenefactorInfoRecord()
{
  result = qword_1003E2648;
  if (!qword_1003E2648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E308C(uint64_t a1)
{
  result = sub_1001E3138(&qword_1003E25C0, type metadata accessor for BenefactorInfoRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001E30E4()
{
  result = qword_1003E25D0;
  if (!qword_1003E25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E25D0);
  }

  return result;
}

uint64_t sub_1001E3138(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001E31A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001E3278(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1001E3334()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Status(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1001E33DC()
{
  result = qword_1003E2690;
  if (!qword_1003E2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2690);
  }

  return result;
}

unint64_t sub_1001E3434()
{
  result = qword_1003E2698;
  if (!qword_1003E2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2698);
  }

  return result;
}

unint64_t sub_1001E348C()
{
  result = qword_1003E26A0;
  if (!qword_1003E26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E26A0);
  }

  return result;
}

uint64_t sub_1001E34E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69636966656E6562 && a2 == 0xED00004449797261;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444964726F636572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010032E7F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010032E810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id sub_1001E36E8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v35 - v8;
  v10.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v11 = type metadata accessor for BeneficiaryInfoRecord();
  v12 = (a1 + v11[6]);
  v13 = *v12;
  v14 = v12[1];
  v15 = String._bridgeToObjectiveC()();
  v16 = (a1 + v11[5]);
  if (v16[1])
  {
    v17 = *v16;
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  sub_1000F2504(a1 + v11[11], v9);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v9, v2);
  }

  v20 = (a1 + v11[12]);
  if (v20[1])
  {
    v21 = *v20;
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  v37 = v2;
  v23 = v11[14];
  v24 = a1 + v11[13];
  if (*(v24 + 8))
  {
    v25 = 0;
  }

  else
  {
    v25 = *v24;
  }

  if (*(a1 + v23 + 8))
  {
    v26 = *(a1 + v23);
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBeneficiaryID:v10.super.isa benefactorAltDSID:v15 handle:v18 otPeerID:isa repairDate:v22 repairCount:v25 recordBuildVersion:v27];

  v29 = (a1 + v11[7]);
  v30 = *v29;
  v31 = v29[1];
  sub_100015D6C(*v29, v31);
  sub_1001E92AC(v30, v31, &v38);
  if (v40)
  {
    v42 = v38;
    v43 = v39;
    v44 = v40;
    v45 = v41;
    sub_1001E6A48();
    v32 = v36;
    (*(v3 + 16))(v36, a1, v37);
    v33 = sub_1001E9490(v32, &v42);
    [v28 setAccessKey:v33];
    sub_100008D3C(&v38, &unk_1003E1660, &qword_100344608);
  }

  sub_1001BCA80(a1);
  return v28;
}

uint64_t sub_1001E3A24@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BeneficiaryInfoRecord();
  v7 = v6[11];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = (a3 + v6[12]);
  *v9 = 0;
  v9[1] = 0;
  v10 = a3 + v6[13];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a3 + v6[14]);
  *v11 = 0;
  v11[1] = 0;
  v12 = [a1 accessKey];
  if (v12)
  {
    v13 = v12;
    sub_1001E960C(v13, &v42);
    if (v43)
    {
      v14 = [a1 beneficiaryID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = type metadata accessor for JSONEncoder();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      sub_1001A23F4();
      v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v20 = v19;

      v21 = (a3 + v6[7]);
      *v21 = v18;
      v21[1] = v20;
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = v22;
        swift_unknownObjectRetain();
        v24 = [v23 handle];
        if (v24)
        {
          v25 = v24;
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          v26 = 0;
          v28 = 0;
        }

        v30 = (a3 + v6[5]);
        *v30 = v26;
        v30[1] = v28;
      }

      else
      {
        v29 = (a3 + v6[5]);
        *v29 = 0;
        v29[1] = 0;
      }

      v31 = [a1 benefactorAltDSID];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = (a3 + v6[6]);
      *v35 = v32;
      v35[1] = v34;
      v36 = a3 + v6[8];
      UUID.init()();

      sub_100008D3C(&v42, &unk_1003E1660, &qword_100344608);
      result = swift_unknownObjectRelease();
      *(a3 + v6[9]) = xmmword_10033F8D0;
      *(a3 + v6[10]) = a2 & 1;
      return result;
    }
  }

  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100008D04(v38, qword_1003FAAA0);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "The beneficiary does not have accessKey created yet. Cannot proceed to create a BeneficiaryInfoRecord", v41, 2u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_1001E3E34(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x656C646E6168;
    v7 = 0x654B737365636361;
    v8 = 0xD000000000000011;
    if (a1 != 3)
    {
      v8 = 0x444964726F636572;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x69636966656E6562;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6144726961706572;
    v2 = 0x6F43726961706572;
    if (a1 != 9)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    v4 = 0xD000000000000013;
    if (a1 != 6)
    {
      v4 = 0x444972656550746FLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1001E3FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001E6FE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001E3FF4(uint64_t a1)
{
  v2 = sub_1001E6A94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E4030(uint64_t a1)
{
  v2 = sub_1001E6A94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E406C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v54 = v49 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v55 = v49 - v12;
  v13 = sub_100005814(&qword_1003E26F8, &qword_100345C60);
  v56 = *(v13 - 8);
  v57 = v13;
  v14 = *(v56 + 64);
  __chkstk_darwin(v13);
  v16 = v49 - v15;
  v17 = type metadata accessor for BeneficiaryInfoRecord();
  v18 = *(*(v17 - 8) + 64);
  v20 = *(__chkstk_darwin(v17) + 44);
  v21 = *(v7 + 56);
  v60 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v20;
  v21(&v60[v20], 1, 1, v6);
  v22 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001E6A94();
  v58 = v16;
  v23 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_10000839C(a1);
    sub_100008D3C(&v60[v61], &qword_1003D8B60, &unk_10033F210);
  }

  else
  {
    v50 = v11;
    v51 = v17;
    v52 = v7;
    v59 = a1;
    LOBYTE(v62) = 1;
    v24 = sub_1001E6AE8(&unk_1003DD720, &type metadata accessor for UUID);
    v25 = v55;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = *(v52 + 32);
    v27 = v60;
    v26(v60, v25, v6);
    LOBYTE(v62) = 0;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49[1] = v24;
    v29 = v51;
    v30 = &v27[v51[5]];
    *v30 = v28;
    v30[1] = v31;
    v63 = 2;
    sub_1000EE61C();
    v55 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v27[v29[7]] = v62;
    LOBYTE(v62) = 3;
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v33 = &v27[v29[6]];
    *v33 = v32;
    v33[1] = v34;
    LOBYTE(v62) = 4;
    v35 = v50;
    v49[0] = v6;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26(&v27[v29[8]], v35, v49[0]);
    v63 = 5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v27[v29[9]] = v62;
    LOBYTE(v62) = 6;
    v27[v29[10]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v62) = 7;
    v36 = v54;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000F244C(v36, &v27[v61]);
    LOBYTE(v62) = 8;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = &v27[v51[12]];
    *v38 = v37;
    v38[1] = v39;
    LOBYTE(v62) = 9;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = &v60[v51[13]];
    *v41 = v40;
    v41[8] = v42 & 1;
    LOBYTE(v62) = 10;
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = v44;
    v46 = v60;
    v47 = &v60[v51[14]];
    (*(v56 + 8))(v58, v57);
    *v47 = v43;
    v47[1] = v45;
    sub_100168334(v46, v53);
    sub_10000839C(v59);
    return sub_1001BCA80(v46);
  }
}

uint64_t sub_1001E48F0(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E2708, &unk_100345C68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_1001E6A94();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v40) = 1;
  type metadata accessor for UUID();
  sub_1001E6AE8(&unk_1003DDA80, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for BeneficiaryInfoRecord();
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v40) = 0;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + *(v11 + 28));
    v16 = *v15;
    v17 = v15[1];
    v39 = v11;
    v40 = v16;
    v41 = v17;
    v42 = 2;
    sub_100015D6C(v16, v17);
    v18 = sub_1000EE774();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v38 = v18;
    sub_100012324(v40, v41);
    v19 = v39;
    v20 = (v3 + v39[6]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v40) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = v19[8];
    LOBYTE(v40) = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = (v3 + v19[9]);
    v26 = v25[1];
    v40 = *v25;
    v41 = v26;
    v42 = 5;
    sub_100015D6C(v40, v26);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v40, v41);
    v27 = *(v3 + v19[10]);
    LOBYTE(v40) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = v19[11];
    LOBYTE(v40) = 7;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29 = (v3 + v19[12]);
    v30 = *v29;
    v31 = v29[1];
    LOBYTE(v40) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = (v3 + v19[13]);
    v33 = *v32;
    v34 = *(v32 + 8);
    LOBYTE(v40) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v35 = (v3 + v19[14]);
    v36 = *v35;
    v37 = v35[1];
    LOBYTE(v40) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001E4CD8@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v129 = a2;
  v5 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v125 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v117 - v10;
  __chkstk_darwin(v9);
  v13 = &v117 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v124 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v130 = &v117 - v20;
  __chkstk_darwin(v19);
  v132 = &v117 - v21;
  v22 = type metadata accessor for BeneficiaryInfoRecord();
  v133 = v22[11];
  v134 = v15;
  v23 = *(v15 + 56);
  v135 = v14;
  v123 = v23;
  v23(a3 + v133, 1, 1, v14);
  v24 = (a3 + v22[12]);
  *v24 = 0;
  v24[1] = 0;
  v127 = v24;
  v25 = a3 + v22[13];
  *v25 = 0;
  v128 = v25;
  *(v25 + 8) = 1;
  v26 = (a3 + v22[14]);
  *v26 = 0;
  v26[1] = 0;
  v126 = v26;
  v136 = a1;
  if (CKRecord.recordType.getter() == 0xD000000000000020 && 0x8000000100330350 == v27)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      type metadata accessor for InheritanceError(0);
      v139 = 2;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001E6AE8(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      return sub_100008D3C(a3 + v133, &qword_1003D8B60, &unk_10033F210);
    }
  }

  v131 = a3;
  v29 = v136;
  v30 = [v136 recordID];
  v31 = [v30 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v33 = v134;
  v32 = v135;
  v34 = *(v134 + 48);
  if (v34(v13, 1, v135) == 1)
  {
    sub_100008D3C(v13, &qword_1003D8B60, &unk_10033F210);
    type metadata accessor for InheritanceError(0);
    v139 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001E6AE8(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    a3 = v131;
    return sub_100008D3C(a3 + v133, &qword_1003D8B60, &unk_10033F210);
  }

  v35 = *(v33 + 32);
  v121 = v33 + 32;
  v122 = v34;
  v120 = v35;
  v35(v132, v13, v32);
  v36 = [v29 encryptedValuesByKey];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 objectForKeyedSubscript:v37];

  if (!v38 || (v139 = v38, sub_100005814(&unk_1003E2770, &qword_100341F50), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100008D04(v40, qword_1003FAAA0);
    v41 = v136;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    v44 = os_log_type_enabled(v42, v43);
    a3 = v131;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v41;
      *v46 = v41;
      v47 = v41;
      _os_log_impl(&_mh_execute_header, v42, v43, "Missing Inheritance beneficiaryID - %@", v45, 0xCu);
      sub_100008D3C(v46, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v139 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001E6AE8(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v134 + 8))(v132, v135);
    return sub_100008D3C(a3 + v133, &qword_1003D8B60, &unk_10033F210);
  }

  UUID.init(uuidString:)();

  v39 = v135;
  if (v122(v11, 1, v135) == 1)
  {
    sub_100008D3C(v11, &qword_1003D8B60, &unk_10033F210);
    goto LABEL_11;
  }

  v120(v130, v11, v39);
  v49 = String._bridgeToObjectiveC()();
  v119 = v36;
  v50 = [v36 objectForKeyedSubscript:v49];

  if (!v50 || (v139 = v50, (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100008D04(v59, qword_1003FAAA0);
    v60 = v136;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    v63 = os_log_type_enabled(v61, v62);
    a3 = v131;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      *(v64 + 4) = v60;
      *v65 = v60;
      v66 = v60;
      _os_log_impl(&_mh_execute_header, v61, v62, "Missing Inheritance accessKey - %@", v64, 0xCu);
      sub_100008D3C(v65, &unk_1003D9140, &qword_10033E640);
    }

    type metadata accessor for InheritanceError(0);
    v139 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001E6AE8(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_36;
  }

  v51 = v137;
  v52 = v138;
  v53 = String._bridgeToObjectiveC()();
  v54 = [v119 objectForKeyedSubscript:v53];

  if (!v54 || (v139 = v54, (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100008D04(v67, qword_1003FAAA0);
    v60 = v136;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    v70 = os_log_type_enabled(v68, v69);
    a3 = v131;
    if (v70)
    {
      v71 = swift_slowAlloc();
      v72 = v51;
      v73 = swift_slowAlloc();
      *v71 = 138412290;
      *(v71 + 4) = v60;
      *v73 = v60;
      v74 = v60;
      _os_log_impl(&_mh_execute_header, v68, v69, "Missing benefactorAltDSID - %@", v71, 0xCu);
      sub_100008D3C(v73, &unk_1003D9140, &qword_10033E640);
      v51 = v72;
    }

    type metadata accessor for InheritanceError(0);
    v139 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001E6AE8(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    sub_100012324(v51, v52);
LABEL_36:

    swift_unknownObjectRelease();
    v75 = v135;
    v76 = *(v134 + 8);
    v76(v130, v135);
    v76(v132, v75);
    return sub_100008D3C(a3 + v133, &qword_1003D8B60, &unk_10033F210);
  }

  v118 = v137;
  v117 = v138;
  v55 = String._bridgeToObjectiveC()();
  v56 = [v119 objectForKeyedSubscript:v55];

  if (v56)
  {
    v139 = v56;
    if (swift_dynamicCast())
    {
      v57 = v125;
      UUID.init(uuidString:)();

      v58 = v135;
      if (v122(v57, 1, v135) == 1)
      {
        sub_100008D3C(v57, &qword_1003D8B60, &unk_10033F210);
      }

      else
      {
        v77 = v120;
        v120(v124, v57, v58);
        v78 = v58;
        v79 = v131;
        v80 = v133;
        sub_100008D3C(v131 + v133, &qword_1003D8B60, &unk_10033F210);
        v77(v79 + v80, v124, v78);
        v123(v79 + v80, 0, 1, v78);
      }
    }
  }

  v81 = String._bridgeToObjectiveC()();
  v82 = [v119 objectForKeyedSubscript:v81];

  if (v82)
  {
    v139 = v82;
    if (swift_dynamicCast())
    {
      v83 = v138;
      v84 = v126;
      *v126 = v137;
      v84[1] = v83;
    }
  }

  v126 = v51;
  v85 = String._bridgeToObjectiveC()();
  v86 = [v119 objectForKeyedSubscript:v85];

  v87 = v131;
  v88 = v136;
  if (v86)
  {
    v139 = v86;
    if (swift_dynamicCast())
    {
      v89 = v138;
      v90 = v127;
      *v127 = v137;
      v90[1] = v89;
    }
  }

  v133 = v52;
  v91 = String._bridgeToObjectiveC()();
  v92 = [v119 objectForKeyedSubscript:v91];

  if (v92)
  {
    v137 = v92;
    if (swift_dynamicCast())
    {
      v93 = v128;
      *v128 = v139;
      *(v93 + 8) = 0;
    }
  }

  v94 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v88 encodeSystemFieldsWithCoder:v94];
  [v94 finishEncoding];
  v95 = [v94 encodedData];
  v96 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v97;

  v99 = (v87 + v22[9]);
  *v99 = v96;
  v99[1] = v98;
  v101 = v134;
  v100 = v135;
  v102 = *(v134 + 16);
  v103 = v132;
  v102(v87 + v22[8], v132, v135);
  v104 = v130;
  v102(v87, v130, v100);
  v105 = String._bridgeToObjectiveC()();
  v106 = [v119 objectForKeyedSubscript:v105];

  swift_unknownObjectRelease();
  v107 = *(v101 + 8);
  v107(v104, v100);
  result = (v107)(v103, v100);
  if (v106)
  {
    v139 = v106;
    result = swift_dynamicCast();
    v108 = v137;
    v109 = v138;
    if (!result)
    {
      v108 = 0;
      v109 = 0;
    }
  }

  else
  {
    v108 = 0;
    v109 = 0;
  }

  v110 = v133;
  v111 = v126;
  v112 = v131;
  v113 = (v131 + v22[5]);
  *v113 = v108;
  v113[1] = v109;
  v114 = (v112 + v22[7]);
  *v114 = v111;
  v114[1] = v110;
  v115 = (v112 + v22[6]);
  v116 = v117;
  *v115 = v118;
  v115[1] = v116;
  *(v112 + v22[10]) = v129 & 1;
  return result;
}

uint64_t sub_1001E5D58(id *a1)
{
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = &v66 - v8;
  [*a1 encryptedValuesByKey];
  ObjectType = swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v10 = v72;
  v70 = v1;
  v11 = UUID.uuidString.getter();
  v67 = v7;
  if (!*(&v10 + 1))
  {

    v13 = v70;
LABEL_6:
    v15 = UUID.uuidString.getter();
    *(&v73 + 1) = &type metadata for String;
    v74 = &protocol witness table for String;
    *&v72 = v15;
    *(&v72 + 1) = v16;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_7;
  }

  if (v10 == __PAIR128__(v12, v11))
  {

    v13 = v70;
    goto LABEL_7;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v13 = v70;
  if ((v14 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  CKRecordKeyValueSetting.subscript.getter();
  v17 = v72;
  v71 = type metadata accessor for BeneficiaryInfoRecord();
  v18 = (v13 + v71[5]);
  v20 = *v18;
  v19 = v18[1];
  if (*(&v17 + 1))
  {
    if (!v19)
    {

      v74 = 0;
      v72 = 0u;
      v73 = 0u;
LABEL_16:

      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_17;
    }

    if (v17 == __PAIR128__(v19, v20))
    {

      goto LABEL_17;
    }

    v21 = *v18;
    v22 = v18[1];
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
LABEL_15:
      *(&v73 + 1) = &type metadata for String;
      v74 = &protocol witness table for String;
      *&v72 = v20;
      *(&v72 + 1) = v19;
      goto LABEL_16;
    }
  }

  else if (v19)
  {
    goto LABEL_15;
  }

LABEL_17:
  CKRecordKeyValueSetting.subscript.getter();
  v24 = v72;
  v25 = v13 + v71[7];
  v26 = *v25;
  v27 = *(v25 + 8);
  if (*(&v72 + 1) >> 60 != 15)
  {
    if (v27 >> 60 != 15)
    {
      sub_100015D6C(*v25, *(v25 + 8));
      sub_100015D6C(v26, v27);
      sub_100052704(v24, *(&v24 + 1));
      LODWORD(v68) = sub_10018F69C(v24, *(&v24 + 1), v26, v27);
      sub_100012324(v26, v27);
      sub_100015D58(v24, *(&v24 + 1));
      sub_100015D58(v26, v27);
      sub_100015D58(v24, *(&v24 + 1));
      if (v68)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_21:
    sub_100015D6C(*v25, *(v25 + 8));
    sub_100015D58(v24, *(&v24 + 1));
    sub_100015D58(v26, v27);
LABEL_22:
    v28 = *v25;
    v29 = *(v25 + 8);
    *(&v73 + 1) = &type metadata for Data;
    v74 = &protocol witness table for Data;
    *&v72 = v28;
    *(&v72 + 1) = v29;
    sub_100015D6C(v28, v29);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_23;
  }

  if (v27 >> 60 != 15)
  {
    goto LABEL_21;
  }

  sub_100015D6C(*v25, *(v25 + 8));
  sub_100015D58(v24, *(&v24 + 1));
LABEL_23:
  CKRecordKeyValueSetting.subscript.getter();
  v30 = (v13 + v71[6]);
  v32 = *v30;
  v31 = v30[1];
  if (!*(&v72 + 1))
  {
    goto LABEL_27;
  }

  if (v72 == __PAIR128__(v31, v32))
  {

    goto LABEL_28;
  }

  v33 = *v30;
  v34 = v30[1];
  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v35 & 1) == 0)
  {
LABEL_27:
    *(&v73 + 1) = &type metadata for String;
    v74 = &protocol witness table for String;
    *&v72 = v32;
    *(&v72 + 1) = v31;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_28:
  v68 = ObjectType;
  CKRecordKeyValueSetting.subscript.getter();
  v36 = v72;
  v37 = v71[11];
  v38 = v69;
  sub_1000F2504(v70 + v37, v69);
  v39 = type metadata accessor for UUID();
  v40 = *(v39 - 8);
  v41 = *(v40 + 48);
  if (v41(v38, 1, v39) == 1)
  {
    sub_100008D3C(v38, &qword_1003D8B60, &unk_10033F210);
    if (!*(&v36 + 1))
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

  v66 = v36;
  v42 = UUID.uuidString.getter();
  v44 = v43;
  (*(v40 + 8))(v38, v39);
  if (!*(&v36 + 1))
  {
    if (!v44)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

  if (!v44)
  {
LABEL_40:

LABEL_41:
    v45 = v67;
    sub_1000F2504(v70 + v37, v67);
    if (v41(v45, 1, v39) == 1)
    {
      sub_100008D3C(v45, &qword_1003D8B60, &unk_10033F210);
      v72 = 0u;
      v73 = 0u;
      v74 = 0;
    }

    else
    {
      v46 = UUID.uuidString.getter();
      *(&v73 + 1) = &type metadata for String;
      v74 = &protocol witness table for String;
      *&v72 = v46;
      *(&v72 + 1) = v47;
      (*(v40 + 8))(v45, v39);
    }

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_46;
  }

  if (v66 == v42 && *(&v36 + 1) == v36)
  {

    goto LABEL_46;
  }

  v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v65 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_46:
  CKRecordKeyValueSetting.subscript.getter();
  v48 = v70;
  v49 = (v70 + v71[14]);
  v51 = *v49;
  v50 = v49[1];
  if (*(&v72 + 1))
  {
    if (!v50)
    {

      v74 = 0;
      v72 = 0u;
      v73 = 0u;
LABEL_55:

      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_56;
    }

    if (v72 == __PAIR128__(v50, v51))
    {

      goto LABEL_56;
    }

    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v52 & 1) == 0)
    {
LABEL_54:
      *(&v73 + 1) = &type metadata for String;
      v74 = &protocol witness table for String;
      *&v72 = v51;
      *(&v72 + 1) = v50;
      goto LABEL_55;
    }
  }

  else if (v50)
  {
    goto LABEL_54;
  }

LABEL_56:
  CKRecordKeyValueSetting.subscript.getter();
  v53 = (v48 + v71[12]);
  v55 = *v53;
  v54 = v53[1];
  if (*(&v72 + 1))
  {
    if (!v54)
    {

      v55 = 0;
      v56 = 0;
      v57 = 0;
      *&v73 = 0;
LABEL_65:
      *&v72 = v55;
      *(&v72 + 1) = v54;
      *(&v73 + 1) = v56;
      v74 = v57;

      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_66;
    }

    if (v72 == __PAIR128__(v54, v55))
    {

      goto LABEL_66;
    }

    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v58 & 1) == 0)
    {
LABEL_64:
      v57 = &protocol witness table for String;
      v56 = &type metadata for String;
      goto LABEL_65;
    }
  }

  else if (v54)
  {
    goto LABEL_64;
  }

LABEL_66:
  CKRecordKeyValueSetting.subscript.getter();
  v59 = (v48 + v71[13]);
  v60 = *v59;
  v61 = *(v59 + 8);
  if (BYTE8(v72))
  {
    if (v61)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_72;
  }

  if (v61)
  {
    v60 = 0;
    v62 = 0;
    v63 = 0;
    *(&v72 + 1) = 0;
    *&v73 = 0;
LABEL_73:
    *&v72 = v60;
    *(&v73 + 1) = v62;
    v74 = v63;
    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  if (v72 != v60)
  {
LABEL_72:
    v63 = &protocol witness table for UInt;
    v62 = &type metadata for UInt;
    goto LABEL_73;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1001E6794()
{
  _StringGuts.grow(_:)(36);
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  sub_100005814(&unk_1003E26E0, &unk_100345C50);
  v2 = String.init<A>(describing:)();

  v3._object = 0x8000000100330C00;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  type metadata accessor for UUID();
  sub_1001E6AE8(&qword_1003D9150, &type metadata accessor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x656C646E61680A2CLL;
  v5._object = 0xEB00000000202D20;
  String.append(_:)(v5);
  v6 = (v0 + *(v1 + 20));
  v9 = *v6;
  v10 = v6[1];

  sub_100005814(&qword_1003E26F0, &qword_10034B4C0);
  v7._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v7);

  return v2;
}

uint64_t sub_1001E6920(uint64_t a1)
{
  *(a1 + 8) = sub_1001E6AE8(&unk_1003E26B0, type metadata accessor for BeneficiaryInfoRecord);
  result = sub_1001E6AE8(&qword_1003E0E68, type metadata accessor for BeneficiaryInfoRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for BeneficiaryInfoRecord()
{
  result = qword_1003E27D8;
  if (!qword_1003E27D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E69F0(uint64_t a1)
{
  result = sub_1001E6AE8(&unk_1003E26C0, type metadata accessor for BeneficiaryInfoRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001E6A48()
{
  result = qword_1003E26D0;
  if (!qword_1003E26D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E26D0);
  }

  return result;
}

unint64_t sub_1001E6A94()
{
  result = qword_1003E2700;
  if (!qword_1003E2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E2700);
  }

  return result;
}

uint64_t sub_1001E6AE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001E6B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1001E6C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}