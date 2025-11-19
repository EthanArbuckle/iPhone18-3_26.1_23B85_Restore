uint64_t sub_100172664()
{
  v1 = OBJC_IVAR____TtC13appleaccountd21BenefactorHealthCheck__inheritanceStorage;
  v2 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd21BenefactorHealthCheck__storageController;
  v4 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BenefactorHealthCheck()
{
  result = qword_1003E0D80;
  if (!qword_1003E0D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001727AC()
{
  sub_10000DAB8(319, &qword_1003E1160, &unk_1003E01A0, &qword_1003443F0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1001728D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v61 = a6;
  v62 = a5;
  v64 = a3;
  v65 = a4;
  v63 = a2;
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  __chkstk_darwin(v7);
  v10 = &v55 - v9;
  v11 = type metadata accessor for InheritanceHealthRecord();
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v60 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v55 - v14;
  v16 = type metadata accessor for BenefactorInfoRecord();
  v55 = *(v16 - 8);
  v17 = *(v55 + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v56 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  v21 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v55 - v23);
  sub_100012D04(a1, &v55 - v23, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAB8);
    v27 = v20;
    sub_100194C44(v63, v20, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v30 = 136315650;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v30 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v66);
      *(v30 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_100195024(v27, type metadata accessor for BenefactorInfoRecord);
      v34 = sub_10021145C(v31, v33, v66);

      *(v30 + 14) = v34;
      *(v30 + 22) = 2080;
      v66[5] = v25;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v35 = String.init<A>(describing:)();
      v37 = sub_10021145C(v35, v36, v66);

      *(v30 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s - failed to fetch InheritanceHealthRecord for %s. Error :- %s", v30, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100195024(v20, type metadata accessor for BenefactorInfoRecord);
    }

    swift_errorRetain();
    v64(v25);
  }

  else
  {
    v38 = v24;
    v39 = v15;
    sub_100194EC4(v38, v15, type metadata accessor for InheritanceHealthRecord);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v42 = v57;
      v41 = v58;
      (*(v57 + 16))(v10, Strong + OBJC_IVAR____TtC13appleaccountd21BenefactorHealthCheck__inheritanceStorage, v58);
      Dependency.wrappedValue.getter();

      (*(v42 + 8))(v10, v41);
      v58 = sub_1000080F8(v66, v66[3]);
      v43 = v63;
      v44 = v56;
      sub_100194C44(v63, v56, type metadata accessor for BenefactorInfoRecord);
      v45 = v60;
      sub_100194C44(v39, v60, type metadata accessor for InheritanceHealthRecord);
      v46 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v47 = (v17 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = v39;
      v48 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
      v49 = (*(v59 + 80) + v48 + 8) & ~*(v59 + 80);
      v50 = swift_allocObject();
      sub_100194EC4(v44, v50 + v46, type metadata accessor for BenefactorInfoRecord);
      v51 = (v50 + v47);
      v52 = v65;
      *v51 = v64;
      v51[1] = v52;
      *(v50 + v48) = v62;
      sub_100194EC4(v45, v50 + v49, type metadata accessor for InheritanceHealthRecord);
      *(v50 + ((v12 + v49 + 7) & 0xFFFFFFFFFFFFFFF8)) = v61;
      v53 = *v58;

      sub_100217018(v43, sub_100190474, v50);

      sub_100195024(v57, type metadata accessor for InheritanceHealthRecord);
      return sub_10000839C(v66);
    }

    else
    {
      return sub_100195024(v15, type metadata accessor for InheritanceHealthRecord);
    }
  }
}

uint64_t sub_10017303C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a3;
  v35 = a4;
  v9 = type metadata accessor for BeneficiaryInfoRecord();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BenefactorInfoRecord();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v34 - v19);
  sub_100012D04(a1, &v34 - v19, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    sub_100194C44(a2, v16, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v25 = 136315650;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v25 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v37);
      *(v25 + 12) = 2080;
      type metadata accessor for UUID();
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_100195024(v16, type metadata accessor for BenefactorInfoRecord);
      v29 = sub_10021145C(v26, v28, v37);

      *(v25 + 14) = v29;
      *(v25 + 22) = 2080;
      v36 = v21;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v30 = String.init<A>(describing:)();
      v32 = sub_10021145C(v30, v31, v37);

      *(v25 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s - failed to fetch BeneficiaryInfoRecord for %s. Error :- %s", v25, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100195024(v16, type metadata accessor for BenefactorInfoRecord);
    }

    swift_errorRetain();
    v34(v21);
  }

  else
  {
    sub_100194EC4(v20, v12, type metadata accessor for BeneficiaryInfoRecord);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1001734C8(a6, v12, v34, v35);
    }

    return sub_100195024(v12, type metadata accessor for BeneficiaryInfoRecord);
  }
}

uint64_t sub_1001734C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v122 = a3;
  v123 = a4;
  v110 = a2;
  v6 = *v4;
  v120 = v4;
  v121 = v6;
  v119 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v118 = *(v119 - 8);
  v7 = *(v118 + 64);
  __chkstk_darwin(v119);
  v117 = &v103 - v8;
  v9 = type metadata accessor for UUID();
  v105 = *(v9 - 8);
  v10 = *(v105 + 64);
  __chkstk_darwin(v9);
  v104 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Date();
  v112 = *(v113 - 8);
  v12 = *(v112 + 64);
  __chkstk_darwin(v113);
  v111 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SHA256();
  v107 = *(v14 - 8);
  v15 = *(v107 + 64);
  __chkstk_darwin(v14);
  v17 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for SHA256Digest();
  v108 = *(v109 - 8);
  v18 = *(v108 + 64);
  __chkstk_darwin(v109);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for InheritanceHealthRecord();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v116 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v103 - v25;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_100008D04(v27, qword_1003FAAB8);
  v114 = a1;
  sub_100194C44(a1, v26, type metadata accessor for InheritanceHealthRecord);
  v124 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  v31 = os_log_type_enabled(v29, v30);
  v115 = v21;
  v106 = v9;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v125[0] = swift_slowAlloc();
    *v32 = 136315394;
    if (qword_1003D7E18 != -1)
    {
      swift_once();
    }

    *(v32 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v125);
    *(v32 + 12) = 2080;
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    sub_100195024(v26, type metadata accessor for InheritanceHealthRecord);
    v36 = sub_10021145C(v33, v35, v125);

    *(v32 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s - verifying benefactor health record for beneficiaryID - %s", v32, 0x16u);
    swift_arrayDestroy();

    v21 = v115;
  }

  else
  {

    sub_100195024(v26, type metadata accessor for InheritanceHealthRecord);
  }

  v37 = (v110 + *(type metadata accessor for BeneficiaryInfoRecord() + 28));
  v38 = *v37;
  v39 = v37[1];
  sub_100195084(&unk_1003DA8A0, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100015D6C(v38, v39);
  sub_10018F16C(v38, v39);
  sub_100012324(v38, v39);
  dispatch thunk of HashFunction.finalize()();
  (*(v107 + 8))(v17, v14);
  sub_100195084(&qword_1003DE938, &type metadata accessor for SHA256Digest);
  v40 = v109;
  v41 = Digest.makeIterator()();
  v43 = sub_10018F47C(v41, v42);

  v44 = sub_10018F97C(v43);
  v46 = v45;

  (*(v108 + 8))(v20, v40);
  v47 = swift_allocBox();
  v49 = v48;
  sub_100194C44(v114, v48, type metadata accessor for InheritanceHealthRecord);
  v50 = v111;
  Date.init()();
  (*(v112 + 40))(v49 + *(v21 + 20), v50, v113);
  v51 = (v49 + *(v21 + 24));
  v52 = *v51;
  v53 = v51[1];
  sub_100015D6C(*v51, v53);
  v54 = sub_10018F69C(v44, v46, v52, v53);
  sub_100012324(v52, v53);
  if (v54)
  {
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v125[0] = v58;
      *v57 = 136315138;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v57 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v125);
      _os_log_impl(&_mh_execute_header, v55, v56, "%s - verified accessKeyHash matches with healthRecord. We're good.", v57, 0xCu);
      sub_10000839C(v58);
    }

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v124 = v46;
      v114 = v44;
      v61 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v125[0] = v115;
      *v61 = 136315394;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v61 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v125);
      *(v61 + 12) = 2080;
      swift_beginAccess();
      v62 = v105;
      v63 = v104;
      v64 = v106;
      (*(v105 + 16))(v104, v49, v106);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      (*(v62 + 8))(v63, v64);
      v68 = sub_10021145C(v65, v67, v125);

      *(v61 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "%s - benefactor Record %s is healthy!", v61, 0x16u);
      swift_arrayDestroy();

      v44 = v114;
      v46 = v124;
    }

    else
    {
    }
  }

  else
  {

    sub_100015D6C(v44, v46);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.info.getter();

    sub_100012324(v44, v46);
    LODWORD(v113) = v70;
    if (os_log_type_enabled(v69, v70))
    {
      v114 = v44;
      v71 = swift_slowAlloc();
      v125[0] = swift_slowAlloc();
      *v71 = 136315650;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v71 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v125);
      *(v71 + 12) = 2080;
      swift_beginAccess();
      v72 = (v49 + *(v21 + 24));
      v73 = *v72;
      v74 = v72[1];
      sub_100015D6C(*v72, v74);
      v75 = Data.description.getter();
      v77 = v76;
      sub_100012324(v73, v74);
      v78 = sub_10021145C(v75, v77, v125);

      *(v71 + 14) = v78;
      *(v71 + 22) = 2080;
      v44 = v114;
      sub_100015D6C(v114, v46);
      v79 = Data.description.getter();
      v81 = v80;
      sub_100012324(v44, v46);
      v82 = sub_10021145C(v79, v81, v125);

      *(v71 + 24) = v82;
      _os_log_impl(&_mh_execute_header, v69, v113, "%s - accessKey hash did not match! Previous hash: %s New Hash: %s", v71, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v125[0] = v86;
      *v85 = 136315138;
      v87 = v115;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v85 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v125);
      _os_log_impl(&_mh_execute_header, v83, v84, "%s - updating health record access key hash so owner knows we have the new hash.", v85, 0xCu);
      sub_10000839C(v86);
    }

    else
    {

      v87 = v115;
    }

    swift_beginAccess();
    v88 = (v49 + *(v87 + 24));
    v89 = *v88;
    v90 = v88[1];
    *v88 = v44;
    v88[1] = v46;
    sub_100015D6C(v44, v46);
    sub_100012324(v89, v90);
  }

  v91 = v118;
  v92 = v119;
  v93 = v117;
  (*(v118 + 16))(v117, v120 + OBJC_IVAR____TtC13appleaccountd21BenefactorHealthCheck__storageController, v119);
  Dependency.wrappedValue.getter();
  (*(v91 + 8))(v93, v92);
  v94 = sub_1000080F8(v125, v125[3]);
  swift_beginAccess();
  v95 = v49;
  v96 = v116;
  sub_100194C44(v95, v116, type metadata accessor for InheritanceHealthRecord);
  v97 = swift_allocObject();
  v98 = v122;
  v99 = v123;
  v97[2] = v47;
  v97[3] = v98;
  v100 = v121;
  v97[4] = v99;
  v97[5] = v100;
  v101 = *v94;

  sub_10018D8C0(v96, sub_1001905DC, v97);

  sub_100012324(v44, v46);
  sub_100195024(v96, type metadata accessor for InheritanceHealthRecord);
  sub_10000839C(v125);
}

uint64_t sub_100174424(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v40 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v38 - v13);
  sub_100012D04(a1, &v38 - v13, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = a3;
    v15 = *v14;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAB8);

    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v19 = 136315650;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v19 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, &v42);
      *(v19 + 12) = 2080;
      type metadata accessor for InheritanceHealthRecord();
      v20 = swift_projectBox();
      swift_beginAccess();
      (*(v7 + 16))(v10, v20, v6);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v7 + 8))(v10, v6);
      v24 = sub_10021145C(v21, v23, &v42);

      *(v19 + 14) = v24;
      *(v19 + 22) = 2080;
      v41 = v15;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v25 = String.init<A>(describing:)();
      v27 = sub_10021145C(v25, v26, &v42);

      *(v19 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s - error updating InheritanceHealthRecord %s: %s", v19, 0x20u);
      swift_arrayDestroy();
    }

    swift_errorRetain();
    v39(v15);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAB8);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v39 = a3;
      v32 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v32 = 136315394;
      if (qword_1003D7E18 != -1)
      {
        swift_once();
      }

      *(v32 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, &v42);
      *(v32 + 12) = 2080;
      type metadata accessor for InheritanceHealthRecord();
      v33 = swift_projectBox();
      swift_beginAccess();
      (*(v7 + 16))(v10, v33, v6);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v7 + 8))(v10, v6);
      v37 = sub_10021145C(v34, v36, &v42);

      *(v32 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s - inheritanceHealthRecord %s was updated.", v32, 0x16u);
      swift_arrayDestroy();

      v39(0);
    }

    else
    {

      a3(0);
    }

    return sub_100008D3C(v14, &unk_1003E10C0, &qword_100346A70);
  }
}

void sub_100174A80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for CustodianRecord();
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 52)), *(a1 + *(v8 + 52) + 8));
  if (!v13)
  {
    v13 = sub_10017D094();
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1000F0774(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for CustodianRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_100194A04;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003AC430;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100174D78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for CustodianRecoveryInfoRecord();
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 44)), *(a1 + *(v8 + 44) + 8));
  if (!v13)
  {
    v13 = sub_10017DBB8(a1);
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1000F3E8C(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecoveryInfoRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for CustodianRecoveryInfoRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_1001952C4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003AC548;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100175070(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for CustodianHealthRecord();
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 40)), *(a1 + *(v8 + 40) + 8));
  if (!v13)
  {
    v13 = sub_10017D624(a1);
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1000ECC30(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianHealthRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for CustodianHealthRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_10019569C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003AC610;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100175368(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for CustodianshipInfoRecord();
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 40)), *(a1 + *(v8 + 40) + 8));
  if (!v13)
  {
    v13 = sub_10017D800(a1);
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1000F8C14(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipInfoRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for CustodianshipInfoRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_100192AB4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003ABE68;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100175660(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for InheritanceHealthRecord();
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 40)), *(a1 + *(v8 + 40) + 8));
  if (!v13)
  {
    v13 = sub_10017D9DC(a1);
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1001EAE54(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceHealthRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for InheritanceHealthRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_1001909B4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003ABD50;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100175958(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for BeneficiaryInfoRecord();
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 44)), *(a1 + *(v8 + 44) + 8));
  if (!v13)
  {
    v13 = sub_10017D448(a1);
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1001E5D58(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryInfoRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for BeneficiaryInfoRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_100194098;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003AC278;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100175C50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for InheritanceInvitationRecord();
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 48)), *(a1 + *(v8 + 48) + 8));
  if (!v13)
  {
    v13 = sub_10017DD94(a1);
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1001EE71C(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceInvitationRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for InheritanceInvitationRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_1001944D0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003AC340;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100175F48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v28 = a4;
  v26 = a3;
  v7 = type metadata accessor for BenefactorInfoRecord();
  v8 = v7 - 8;
  v25 = *(v7 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v7);
  v10 = [objc_allocWithZone(CKModifyRecordsOperation) init];
  sub_1002DE8D4();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  v12 = objc_autoreleasePoolPush();
  v13 = sub_1002E1D08(*(a1 + *(v8 + 40)), *(a1 + *(v8 + 40) + 8));
  if (!v13)
  {
    v13 = sub_10017D26C(a1);
  }

  aBlock[0] = v13;
  v14 = v13;
  sub_1001E2B8C(aBlock);
  objc_autoreleasePoolPop(v12);
  *(v11 + 32) = v14;
  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRecordsToSave:isa];

  sub_100194C44(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BenefactorInfoRecord);
  v16 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v18[2] = v5;
  sub_100194EC4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for BenefactorInfoRecord);
  v19 = v26;
  v20 = v27;
  *(v18 + v17) = v27;
  v21 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v28;
  *v21 = v19;
  v21[1] = v22;
  aBlock[4] = sub_100193C58;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100179734;
  aBlock[3] = &unk_1003AC1B0;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  [v10 setModifyRecordsCompletionBlock:v23];
  _Block_release(v23);
  [v24 addOperation:v10];
}

void sub_100176240(unint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, NSObject *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v61 = a8;
  v62 = a7;
  v57 = a6;
  v58 = a4;
  v60 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v54 - v17;
  v19 = type metadata accessor for CustodianRecord();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (&v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = &v54 - v25;
  v27 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27);
  v59 = (&v54 - v30);
  if (a3)
  {
    v64[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v31 = v63;
      sub_100179758(v63, v60, v57, v62, v61);
    }

    else
    {
      v36 = v59;
      *v59 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v62(v36);
      sub_100008D3C(v36, &unk_1003DA200, &unk_10033FA80);
    }

    return;
  }

  v57 = v24;
  v58 = v14;
  if (!a1)
  {
    return;
  }

  v32 = v29;
  if (a1 >> 62)
  {
    v52 = v29;
    v53 = _CocoaArrayWrapper.endIndex.getter();
    v32 = v52;
    if (!v53)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v56 = v32;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v33 = *(a1 + 32);
  }

  v34 = v60[*(v19 + 48)];
  v35 = v33;
  sub_1000EF6D0(v35, v34, v18);
  v24 = v10;
  v55 = v35;
  (*(v20 + 56))(v18, 0, 1, v19);
  sub_100194EC4(v18, v26, type metadata accessor for CustodianRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v37 = type metadata accessor for Logger();
  sub_100008D04(v37, qword_1003FAA58);
  v38 = v57;
  sub_100194C44(v60, v57, type metadata accessor for CustodianRecord);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v58;
  if (v41)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v60 = v26;
    v64[0] = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v64);
    *(v43 + 12) = 2080;
    (*(v11 + 16))(v42, v38, v24);
    sub_100195024(v38, type metadata accessor for CustodianRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    (*(v11 + 8))(v42, v24);
    v48 = sub_10021145C(v45, v47, v64);

    *(v43 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s %s saved successfully", v43, 0x16u);
    swift_arrayDestroy();
    v26 = v60;
  }

  else
  {
    sub_100195024(v38, type metadata accessor for CustodianRecord);
  }

  v49 = v62;
  v50 = v55;
  v51 = v59;
  sub_100194C44(v26, v59, type metadata accessor for CustodianRecord);
  swift_storeEnumTagMultiPayload();
  v49(v51);

  sub_100008D3C(v51, &unk_1003DA200, &unk_10033FA80);
  sub_100195024(v26, type metadata accessor for CustodianRecord);
}

void sub_1001768D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v62 = a8;
  v63 = a7;
  v58 = a6;
  v59 = a4;
  v61 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v55 - v17;
  v19 = type metadata accessor for CustodianRecoveryInfoRecord();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (&v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = &v55 - v25;
  v27 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27);
  v60 = (&v55 - v30);
  if (a3)
  {
    v65[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v31 = v64;
      sub_100179CE4(v64, v61, v58, v63, v62);
    }

    else
    {
      v37 = v60;
      *v60 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v63(v37);
      sub_100008D3C(v37, &unk_1003DB610, &unk_10033FA90);
    }

    return;
  }

  v58 = v24;
  v59 = v11;
  if (!a1)
  {
    return;
  }

  v32 = v10;
  v33 = v29;
  if (a1 >> 62)
  {
    v53 = v29;
    v54 = _CocoaArrayWrapper.endIndex.getter();
    v33 = v53;
    if (!v54)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v57 = v33;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v34 = *(a1 + 32);
  }

  v35 = v61[*(v19 + 40)];
  v36 = v34;
  sub_1000F3020(v36, v35, v18);
  v24 = v32;
  v56 = v36;
  (*(v20 + 56))(v18, 0, 1, v19);
  sub_100194EC4(v18, v26, type metadata accessor for CustodianRecoveryInfoRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v38 = type metadata accessor for Logger();
  sub_100008D04(v38, qword_1003FAA58);
  v39 = v58;
  sub_100194C44(v61, v58, type metadata accessor for CustodianRecoveryInfoRecord);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v59;
  if (v42)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61 = v26;
    v65[0] = v45;
    *v44 = 136315394;
    *(v44 + 4) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v65);
    *(v44 + 12) = 2080;
    (*(v43 + 16))(v14, v39, v24);
    sub_100195024(v39, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    (*(v43 + 8))(v14, v24);
    v49 = sub_10021145C(v46, v48, v65);

    *(v44 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s %s saved successfully", v44, 0x16u);
    swift_arrayDestroy();
    v26 = v61;
  }

  else
  {
    sub_100195024(v39, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v50 = v63;
  v51 = v56;
  v52 = v60;
  sub_100194C44(v26, v60, type metadata accessor for CustodianRecoveryInfoRecord);
  swift_storeEnumTagMultiPayload();
  v50(v52);

  sub_100008D3C(v52, &unk_1003DB610, &unk_10033FA90);
  sub_100195024(v26, type metadata accessor for CustodianRecoveryInfoRecord);
}

void sub_100176F6C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v62 = a8;
  v63 = a7;
  v58 = a6;
  v59 = a4;
  v61 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v55 - v17;
  v19 = type metadata accessor for CustodianHealthRecord();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (&v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = &v55 - v25;
  v27 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27);
  v60 = (&v55 - v30);
  if (a3)
  {
    v65[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v31 = v64;
      sub_10017A270(v64, v61, v58, v63, v62);
    }

    else
    {
      v37 = v60;
      *v60 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v63(v37);
      sub_100008D3C(v37, &qword_1003D91E8, &qword_100346AC0);
    }

    return;
  }

  v58 = v24;
  v59 = v11;
  if (!a1)
  {
    return;
  }

  v32 = v10;
  v33 = v29;
  if (a1 >> 62)
  {
    v53 = v29;
    v54 = _CocoaArrayWrapper.endIndex.getter();
    v33 = v53;
    if (!v54)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v57 = v33;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v34 = *(a1 + 32);
  }

  v35 = v61[*(v19 + 36)];
  v36 = v34;
  sub_1000EC0A4(v36, v35, v18);
  v24 = v32;
  v56 = v36;
  (*(v20 + 56))(v18, 0, 1, v19);
  sub_100194EC4(v18, v26, type metadata accessor for CustodianHealthRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v38 = type metadata accessor for Logger();
  sub_100008D04(v38, qword_1003FAA58);
  v39 = v58;
  sub_100194C44(v61, v58, type metadata accessor for CustodianHealthRecord);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v59;
  if (v42)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61 = v26;
    v65[0] = v45;
    *v44 = 136315394;
    *(v44 + 4) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v65);
    *(v44 + 12) = 2080;
    (*(v43 + 16))(v14, v39, v24);
    sub_100195024(v39, type metadata accessor for CustodianHealthRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    (*(v43 + 8))(v14, v24);
    v49 = sub_10021145C(v46, v48, v65);

    *(v44 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s %s saved successfully", v44, 0x16u);
    swift_arrayDestroy();
    v26 = v61;
  }

  else
  {
    sub_100195024(v39, type metadata accessor for CustodianHealthRecord);
  }

  v50 = v63;
  v51 = v56;
  v52 = v60;
  sub_100194C44(v26, v60, type metadata accessor for CustodianHealthRecord);
  swift_storeEnumTagMultiPayload();
  v50(v52);

  sub_100008D3C(v52, &qword_1003D91E8, &qword_100346AC0);
  sub_100195024(v26, type metadata accessor for CustodianHealthRecord);
}

void sub_100177600(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v62 = a8;
  v63 = a7;
  v58 = a6;
  v59 = a4;
  v61 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&qword_1003D9270, &qword_10033ECF0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v55 - v17;
  v19 = type metadata accessor for CustodianshipInfoRecord();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (&v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = &v55 - v25;
  v27 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27);
  v60 = (&v55 - v30);
  if (a3)
  {
    v65[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v31 = v64;
      sub_10017A7FC(v64, v61, v58, v63, v62);
    }

    else
    {
      v37 = v60;
      *v60 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v63(v37);
      sub_100008D3C(v37, &unk_1003DA0E0, &unk_10033F1D0);
    }

    return;
  }

  v58 = v24;
  v59 = v11;
  if (!a1)
  {
    return;
  }

  v32 = v10;
  v33 = v29;
  if (a1 >> 62)
  {
    v53 = v29;
    v54 = _CocoaArrayWrapper.endIndex.getter();
    v33 = v53;
    if (!v54)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v57 = v33;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v34 = *(a1 + 32);
  }

  v35 = v61[*(v19 + 36)];
  v36 = v34;
  sub_1000F80E0(v36, v35, v18);
  v24 = v32;
  v56 = v36;
  (*(v20 + 56))(v18, 0, 1, v19);
  sub_100194EC4(v18, v26, type metadata accessor for CustodianshipInfoRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v38 = type metadata accessor for Logger();
  sub_100008D04(v38, qword_1003FAA58);
  v39 = v58;
  sub_100194C44(v61, v58, type metadata accessor for CustodianshipInfoRecord);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v59;
  if (v42)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v61 = v26;
    v65[0] = v45;
    *v44 = 136315394;
    *(v44 + 4) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, v65);
    *(v44 + 12) = 2080;
    (*(v43 + 16))(v14, v39, v24);
    sub_100195024(v39, type metadata accessor for CustodianshipInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    (*(v43 + 8))(v14, v24);
    v49 = sub_10021145C(v46, v48, v65);

    *(v44 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s %s saved successfully", v44, 0x16u);
    swift_arrayDestroy();
    v26 = v61;
  }

  else
  {
    sub_100195024(v39, type metadata accessor for CustodianshipInfoRecord);
  }

  v50 = v63;
  v51 = v56;
  v52 = v60;
  sub_100194C44(v26, v60, type metadata accessor for CustodianshipInfoRecord);
  swift_storeEnumTagMultiPayload();
  v50(v52);

  sub_100008D3C(v52, &unk_1003DA0E0, &unk_10033F1D0);
  sub_100195024(v26, type metadata accessor for CustodianshipInfoRecord);
}

void sub_100177C94(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v62 = a8;
  v63 = a7;
  v58 = a6;
  v59 = a4;
  v61 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&qword_1003E0E20, &qword_100344490);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v56 - v17;
  v19 = type metadata accessor for InheritanceHealthRecord();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = v56 - v25;
  v27 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27);
  v60 = (v56 - v30);
  if (a3)
  {
    v65[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v31 = v64;
      sub_10017AD88(v64, v61, v58, v63, v62);
    }

    else
    {
      v36 = v60;
      *v60 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v63(v36);
      sub_100008D3C(v36, &unk_1003E10C0, &qword_100346A70);
    }

    return;
  }

  v58 = v24;
  v59 = v20;
  v57 = v11;
  if (!a1)
  {
    return;
  }

  v32 = v29;
  v33 = v19;
  if (a1 >> 62)
  {
    v54 = v29;
    v55 = _CocoaArrayWrapper.endIndex.getter();
    v32 = v54;
    if (!v55)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v56[1] = v32;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = v10;
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v19 = v10;
    v34 = *(a1 + 32);
  }

  a1 = v61;
  v35 = *(v61 + *(v33 + 36));
  v10 = v34;
  sub_1001EA130(v10, v35, v18);
  (*(v59 + 7))(v18, 0, 1, v33);
  v59 = v26;
  sub_100194EC4(v18, v26, type metadata accessor for InheritanceHealthRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v37 = type metadata accessor for Logger();
  sub_100008D04(v37, qword_1003FAA58);
  v38 = v58;
  sub_100194C44(a1, v58, type metadata accessor for InheritanceHealthRecord);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = v38;
    v42 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v42 = 136315394;
    *(v42 + 4) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v65);
    *(v42 + 12) = 2080;
    v43 = *(v33 + 28);
    v44 = v57;
    (*(v57 + 16))(v14, v41 + v43, v19);
    sub_100195024(v41, type metadata accessor for InheritanceHealthRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v14;
    v47 = v45;
    v49 = v48;
    (*(v44 + 8))(v46, v19);
    v50 = sub_10021145C(v47, v49, v65);

    *(v42 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s %s saved successfully", v42, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v38, type metadata accessor for InheritanceHealthRecord);
  }

  v51 = v63;
  v52 = v59;
  v53 = v60;
  sub_100194C44(v59, v60, type metadata accessor for InheritanceHealthRecord);
  swift_storeEnumTagMultiPayload();
  v51(v53);

  sub_100008D3C(v53, &unk_1003E10C0, &qword_100346A70);
  sub_100195024(v52, type metadata accessor for InheritanceHealthRecord);
}

void sub_10017833C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v62 = a8;
  v63 = a7;
  v58 = a6;
  v59 = a4;
  v61 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&unk_1003E4F30, &unk_1003444E0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v56 - v17;
  v19 = type metadata accessor for BeneficiaryInfoRecord();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = v56 - v25;
  v27 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27);
  v60 = (v56 - v30);
  if (a3)
  {
    v65[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v31 = v64;
      sub_10017B2AC(v64, v61, v58, v63, v62);
    }

    else
    {
      v36 = v60;
      *v60 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v63(v36);
      sub_100008D3C(v36, &unk_1003E10A0, &unk_100344480);
    }

    return;
  }

  v58 = v24;
  v59 = v20;
  v57 = v11;
  if (!a1)
  {
    return;
  }

  v32 = v29;
  v33 = v19;
  if (a1 >> 62)
  {
    v54 = v29;
    v55 = _CocoaArrayWrapper.endIndex.getter();
    v32 = v54;
    if (!v55)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v56[1] = v32;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = v10;
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v19 = v10;
    v34 = *(a1 + 32);
  }

  a1 = v61;
  v35 = *(v61 + *(v33 + 40));
  v10 = v34;
  sub_1001E4CD8(v10, v35, v18);
  (*(v59 + 7))(v18, 0, 1, v33);
  v59 = v26;
  sub_100194EC4(v18, v26, type metadata accessor for BeneficiaryInfoRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v37 = type metadata accessor for Logger();
  sub_100008D04(v37, qword_1003FAA58);
  v38 = v58;
  sub_100194C44(a1, v58, type metadata accessor for BeneficiaryInfoRecord);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = v38;
    v42 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v42 = 136315394;
    *(v42 + 4) = sub_10021145C(0xD000000000000015, 0x8000000100330410, v65);
    *(v42 + 12) = 2080;
    v43 = *(v33 + 32);
    v44 = v57;
    (*(v57 + 16))(v14, v41 + v43, v19);
    sub_100195024(v41, type metadata accessor for BeneficiaryInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v14;
    v47 = v45;
    v49 = v48;
    (*(v44 + 8))(v46, v19);
    v50 = sub_10021145C(v47, v49, v65);

    *(v42 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s %s saved successfully", v42, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v38, type metadata accessor for BeneficiaryInfoRecord);
  }

  v51 = v63;
  v52 = v59;
  v53 = v60;
  sub_100194C44(v59, v60, type metadata accessor for BeneficiaryInfoRecord);
  swift_storeEnumTagMultiPayload();
  v51(v53);

  sub_100008D3C(v53, &unk_1003E10A0, &unk_100344480);
  sub_100195024(v52, type metadata accessor for BeneficiaryInfoRecord);
}

void sub_1001789E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v62 = a8;
  v63 = a7;
  v58 = a6;
  v59 = a4;
  v61 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&qword_1003E4F40, &unk_1003446D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v56 - v17;
  v19 = type metadata accessor for InheritanceInvitationRecord();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = v56 - v25;
  v27 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27);
  v60 = (v56 - v30);
  if (a3)
  {
    v65[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v31 = v64;
      sub_10017B7D0(v64, v61, v58, v63, v62);
    }

    else
    {
      v36 = v60;
      *v60 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v63(v36);
      sub_100008D3C(v36, &qword_1003E1290, &unk_1003444C0);
    }

    return;
  }

  v58 = v24;
  v59 = v20;
  v57 = v11;
  if (!a1)
  {
    return;
  }

  v32 = v29;
  v33 = v19;
  if (a1 >> 62)
  {
    v54 = v29;
    v55 = _CocoaArrayWrapper.endIndex.getter();
    v32 = v54;
    if (!v55)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v56[1] = v32;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = v10;
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v19 = v10;
    v34 = *(a1 + 32);
  }

  a1 = v61;
  v35 = *(v61 + *(v33 + 44));
  v10 = v34;
  sub_1001EDB14(v10, v35, v18);
  (*(v59 + 7))(v18, 0, 1, v33);
  v59 = v26;
  sub_100194EC4(v18, v26, type metadata accessor for InheritanceInvitationRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v37 = type metadata accessor for Logger();
  sub_100008D04(v37, qword_1003FAA58);
  v38 = v58;
  sub_100194C44(a1, v58, type metadata accessor for InheritanceInvitationRecord);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = v38;
    v42 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v42 = 136315394;
    *(v42 + 4) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, v65);
    *(v42 + 12) = 2080;
    v43 = *(v33 + 36);
    v44 = v57;
    (*(v57 + 16))(v14, v41 + v43, v19);
    sub_100195024(v41, type metadata accessor for InheritanceInvitationRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v14;
    v47 = v45;
    v49 = v48;
    (*(v44 + 8))(v46, v19);
    v50 = sub_10021145C(v47, v49, v65);

    *(v42 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s %s saved successfully", v42, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v38, type metadata accessor for InheritanceInvitationRecord);
  }

  v51 = v63;
  v52 = v59;
  v53 = v60;
  sub_100194C44(v59, v60, type metadata accessor for InheritanceInvitationRecord);
  swift_storeEnumTagMultiPayload();
  v51(v53);

  sub_100008D3C(v53, &qword_1003E1290, &unk_1003444C0);
  sub_100195024(v52, type metadata accessor for InheritanceInvitationRecord);
}

void sub_10017908C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v62 = a8;
  v63 = a7;
  v58 = a6;
  v59 = a4;
  v61 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&unk_1003E1DE0, &qword_1003444D8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v56 - v17;
  v19 = type metadata accessor for BenefactorInfoRecord();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = v56 - v25;
  v27 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27);
  v60 = (v56 - v30);
  if (a3)
  {
    v65[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v31 = v64;
      sub_10017BCF4(v64, v61, v58, v63, v62);
    }

    else
    {
      v36 = v60;
      *v60 = a3;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v63(v36);
      sub_100008D3C(v36, &unk_1003E1DD0, &qword_1003444D0);
    }

    return;
  }

  v58 = v24;
  v59 = v20;
  v57 = v11;
  if (!a1)
  {
    return;
  }

  v32 = v29;
  v33 = v19;
  if (a1 >> 62)
  {
    v54 = v29;
    v55 = _CocoaArrayWrapper.endIndex.getter();
    v32 = v54;
    if (!v55)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v56[1] = v32;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v19 = v10;
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v19 = v10;
    v34 = *(a1 + 32);
  }

  a1 = v61;
  v35 = *(v61 + *(v33 + 36));
  v10 = v34;
  sub_1001E17B0(v10, v35, v18);
  (*(v59 + 7))(v18, 0, 1, v33);
  v59 = v26;
  sub_100194EC4(v18, v26, type metadata accessor for BenefactorInfoRecord);
  if (qword_1003D7F28 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v37 = type metadata accessor for Logger();
  sub_100008D04(v37, qword_1003FAA58);
  v38 = v58;
  sub_100194C44(a1, v58, type metadata accessor for BenefactorInfoRecord);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = v38;
    v42 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v42 = 136315394;
    *(v42 + 4) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, v65);
    *(v42 + 12) = 2080;
    v43 = *(v33 + 28);
    v44 = v57;
    (*(v57 + 16))(v14, v41 + v43, v19);
    sub_100195024(v41, type metadata accessor for BenefactorInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v14;
    v47 = v45;
    v49 = v48;
    (*(v44 + 8))(v46, v19);
    v50 = sub_10021145C(v47, v49, v65);

    *(v42 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v39, v40, "%s %s saved successfully", v42, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v38, type metadata accessor for BenefactorInfoRecord);
  }

  v51 = v63;
  v52 = v59;
  v53 = v60;
  sub_100194C44(v59, v60, type metadata accessor for BenefactorInfoRecord);
  swift_storeEnumTagMultiPayload();
  v51(v53);

  sub_100008D3C(v53, &unk_1003E1DD0, &qword_1003444D0);
  sub_100195024(v52, type metadata accessor for BenefactorInfoRecord);
}

uint64_t sub_100179758(void *a1, uint64_t a2, NSObject *a3, void (*a4)(void *), uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v43 = a3;
  v7 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = type metadata accessor for CustodianRecord();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  __chkstk_darwin(v11 - 8);
  type metadata accessor for CKError(0);
  v49 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v13 = v50;
  v49 = v50;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v48, a1);
  if (v14)
  {
    goto LABEL_3;
  }

  v41 = v7;
  v42 = v10;
  v49 = 28;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v15 = v50;
  v49 = v50;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v48, a1);
  if (v14)
  {
LABEL_3:

    sub_100194C44(a2, &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecord);
    v16 = (*(v44 + 80) + 40) & ~*(v44 + 80);
    v17 = swift_allocObject();
    v18 = v47;
    v17[2] = v46;
    v17[3] = v18;
    v17[4] = v45;
    sub_100194EC4(&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for CustodianRecord);

    sub_100190C00(a2, sub_100194C18, v17);
  }

  else
  {
    v20 = a1;
    v49 = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    _BridgedStoredNSError.init(_:userInfo:)();
    v21 = v50;
    v49 = v50;
    _BridgedStoredNSError.code.getter();

    v22 = sub_1002DF114(v48, v20);
    if (v22)
    {

      v23 = v42;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100008D04(v24, qword_1003FAA58);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v43;
      if (v27)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Conflicted record. Need to resolve the conflict before saving.", v29, 2u);
      }

      sub_1002E45AC(v20, v28);
      *v23 = v20;
      swift_storeEnumTagMultiPayload();
      v30 = v20;
    }

    else
    {
      v23 = v42;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100008D04(v31, qword_1003FAA58);
      v32 = v20;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v50 = v36;
        *v35 = 136315138;
        v37 = related decl 'e' for CKErrorCode.description.getter();
        v39 = sub_10021145C(v37, v38, &v50);

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v33, v34, "Unknown error while saving the record %s.", v35, 0xCu);
        sub_10000839C(v36);
      }

      *v23 = v32;
      swift_storeEnumTagMultiPayload();
      v40 = v32;
    }

    v46(v23);
    return sub_100008D3C(v23, &unk_1003DA200, &unk_10033FA80);
  }
}

uint64_t sub_100179CE4(void *a1, uint64_t a2, NSObject *a3, void (*a4)(void *), uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v43 = a3;
  v7 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = type metadata accessor for CustodianRecoveryInfoRecord();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  __chkstk_darwin(v11 - 8);
  type metadata accessor for CKError(0);
  v49 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v13 = v50;
  v49 = v50;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v48, a1);
  if (v14)
  {
    goto LABEL_3;
  }

  v41 = v7;
  v42 = v10;
  v49 = 28;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v15 = v50;
  v49 = v50;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v48, a1);
  if (v14)
  {
LABEL_3:

    sub_100194C44(a2, &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecoveryInfoRecord);
    v16 = (*(v44 + 80) + 40) & ~*(v44 + 80);
    v17 = swift_allocObject();
    v18 = v47;
    v17[2] = v46;
    v17[3] = v18;
    v17[4] = v45;
    sub_100194EC4(&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for CustodianRecoveryInfoRecord);

    sub_100190F64(a2, sub_1001954C8, v17);
  }

  else
  {
    v20 = a1;
    v49 = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    _BridgedStoredNSError.init(_:userInfo:)();
    v21 = v50;
    v49 = v50;
    _BridgedStoredNSError.code.getter();

    v22 = sub_1002DF114(v48, v20);
    if (v22)
    {

      v23 = v42;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100008D04(v24, qword_1003FAA58);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v43;
      if (v27)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Conflicted record. Need to resolve the conflict before saving.", v29, 2u);
      }

      sub_1002E45AC(v20, v28);
      *v23 = v20;
      swift_storeEnumTagMultiPayload();
      v30 = v20;
    }

    else
    {
      v23 = v42;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100008D04(v31, qword_1003FAA58);
      v32 = v20;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v50 = v36;
        *v35 = 136315138;
        v37 = related decl 'e' for CKErrorCode.description.getter();
        v39 = sub_10021145C(v37, v38, &v50);

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v33, v34, "Unknown error while saving the record %s.", v35, 0xCu);
        sub_10000839C(v36);
      }

      *v23 = v32;
      swift_storeEnumTagMultiPayload();
      v40 = v32;
    }

    v46(v23);
    return sub_100008D3C(v23, &unk_1003DB610, &unk_10033FA90);
  }
}

uint64_t sub_10017A270(void *a1, uint64_t a2, NSObject *a3, void (*a4)(void *), uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v43 = a3;
  v7 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = type metadata accessor for CustodianHealthRecord();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  __chkstk_darwin(v11 - 8);
  type metadata accessor for CKError(0);
  v49 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v13 = v50;
  v49 = v50;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v48, a1);
  if (v14)
  {
    goto LABEL_3;
  }

  v41 = v7;
  v42 = v10;
  v49 = 28;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v15 = v50;
  v49 = v50;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v48, a1);
  if (v14)
  {
LABEL_3:

    sub_100194C44(a2, &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianHealthRecord);
    v16 = (*(v44 + 80) + 40) & ~*(v44 + 80);
    v17 = swift_allocObject();
    v18 = v47;
    v17[2] = v46;
    v17[3] = v18;
    v17[4] = v45;
    sub_100194EC4(&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for CustodianHealthRecord);

    sub_1001912C8(a2, sub_100195930, v17);
  }

  else
  {
    v20 = a1;
    v49 = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    _BridgedStoredNSError.init(_:userInfo:)();
    v21 = v50;
    v49 = v50;
    _BridgedStoredNSError.code.getter();

    v22 = sub_1002DF114(v48, v20);
    if (v22)
    {

      v23 = v42;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100008D04(v24, qword_1003FAA58);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v43;
      if (v27)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Conflicted record. Need to resolve the conflict before saving.", v29, 2u);
      }

      sub_1002E45AC(v20, v28);
      *v23 = v20;
      swift_storeEnumTagMultiPayload();
      v30 = v20;
    }

    else
    {
      v23 = v42;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100008D04(v31, qword_1003FAA58);
      v32 = v20;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v50 = v36;
        *v35 = 136315138;
        v37 = related decl 'e' for CKErrorCode.description.getter();
        v39 = sub_10021145C(v37, v38, &v50);

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v33, v34, "Unknown error while saving the record %s.", v35, 0xCu);
        sub_10000839C(v36);
      }

      *v23 = v32;
      swift_storeEnumTagMultiPayload();
      v40 = v32;
    }

    v46(v23);
    return sub_100008D3C(v23, &qword_1003D91E8, &qword_100346AC0);
  }
}

uint64_t sub_10017A7FC(void *a1, uint64_t a2, NSObject *a3, void (*a4)(void *), uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v43 = a3;
  v7 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = type metadata accessor for CustodianshipInfoRecord();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  __chkstk_darwin(v11 - 8);
  type metadata accessor for CKError(0);
  v49 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v13 = v50;
  v49 = v50;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v48, a1);
  if (v14)
  {
    goto LABEL_3;
  }

  v41 = v7;
  v42 = v10;
  v49 = 28;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v15 = v50;
  v49 = v50;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v48, a1);
  if (v14)
  {
LABEL_3:

    sub_100194C44(a2, &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipInfoRecord);
    v16 = (*(v44 + 80) + 40) & ~*(v44 + 80);
    v17 = swift_allocObject();
    v18 = v47;
    v17[2] = v46;
    v17[3] = v18;
    v17[4] = v45;
    sub_100194EC4(&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for CustodianshipInfoRecord);

    sub_10019162C(a2, sub_100192C18, v17);
  }

  else
  {
    v20 = a1;
    v49 = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    _BridgedStoredNSError.init(_:userInfo:)();
    v21 = v50;
    v49 = v50;
    _BridgedStoredNSError.code.getter();

    v22 = sub_1002DF114(v48, v20);
    if (v22)
    {

      v23 = v42;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100008D04(v24, qword_1003FAA58);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v43;
      if (v27)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Conflicted record. Need to resolve the conflict before saving.", v29, 2u);
      }

      sub_1002E45AC(v20, v28);
      *v23 = v20;
      swift_storeEnumTagMultiPayload();
      v30 = v20;
    }

    else
    {
      v23 = v42;
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100008D04(v31, qword_1003FAA58);
      v32 = v20;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v50 = v36;
        *v35 = 136315138;
        v37 = related decl 'e' for CKErrorCode.description.getter();
        v39 = sub_10021145C(v37, v38, &v50);

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v33, v34, "Unknown error while saving the record %s.", v35, 0xCu);
        sub_10000839C(v36);
      }

      *v23 = v32;
      swift_storeEnumTagMultiPayload();
      v40 = v32;
    }

    v46(v23);
    return sub_100008D3C(v23, &unk_1003DA0E0, &unk_10033F1D0);
  }
}

uint64_t sub_10017AD88(void *a1, uint64_t a2, NSObject *a3, void (*a4)(void *), uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v39 = a3;
  v7 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v38 - v9;
  v11 = type metadata accessor for InheritanceHealthRecord();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v11 - 8);
  type metadata accessor for CKError(0);
  v45 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v13 = v46;
  v45 = v46;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v44, a1);
  if (v14)
  {
    goto LABEL_3;
  }

  v38[1] = v7;
  v45 = 28;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v15 = v46;
  v45 = v46;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v44, a1);
  if (v14)
  {
LABEL_3:

    sub_100194C44(a2, v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceHealthRecord);
    v16 = (*(v40 + 80) + 40) & ~*(v40 + 80);
    v17 = swift_allocObject();
    v18 = v43;
    v17[2] = v42;
    v17[3] = v18;
    v17[4] = v41;
    sub_100194EC4(v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for InheritanceHealthRecord);

    sub_100191990(a2, sub_100190B54, v17);
  }

  else
  {
    v20 = v10;
    if (sub_1002DECC8(a1))
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100008D04(v21, qword_1003FAA58);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      v24 = os_log_type_enabled(v22, v23);
      v25 = v39;
      if (v24)
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Conflicted record. Need to resolve the conflict before saving.", v26, 2u);
      }

      sub_1002E45AC(a1, v25);
      *v20 = a1;
      swift_storeEnumTagMultiPayload();
      v27 = a1;
    }

    else
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100008D04(v28, qword_1003FAA58);
      v29 = a1;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v46 = v33;
        *v32 = 136315138;
        v34 = related decl 'e' for CKErrorCode.description.getter();
        v36 = sub_10021145C(v34, v35, &v46);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v30, v31, "Unknown error while saving the record %s.", v32, 0xCu);
        sub_10000839C(v33);
      }

      *v20 = v29;
      swift_storeEnumTagMultiPayload();
      v37 = v29;
    }

    v42(v20);
    return sub_100008D3C(v20, &unk_1003E10C0, &qword_100346A70);
  }
}

uint64_t sub_10017B2AC(void *a1, uint64_t a2, NSObject *a3, void (*a4)(void *), uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v39 = a3;
  v7 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v38 - v9;
  v11 = type metadata accessor for BeneficiaryInfoRecord();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v11 - 8);
  type metadata accessor for CKError(0);
  v45 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v13 = v46;
  v45 = v46;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v44, a1);
  if (v14)
  {
    goto LABEL_3;
  }

  v38[1] = v7;
  v45 = 28;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v15 = v46;
  v45 = v46;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v44, a1);
  if (v14)
  {
LABEL_3:

    sub_100194C44(a2, v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryInfoRecord);
    v16 = (*(v40 + 80) + 40) & ~*(v40 + 80);
    v17 = swift_allocObject();
    v18 = v43;
    v17[2] = v42;
    v17[3] = v18;
    v17[4] = v41;
    sub_100194EC4(v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for BeneficiaryInfoRecord);

    sub_100191EB0(a2, sub_10019429C, v17);
  }

  else
  {
    v20 = v10;
    if (sub_1002DECC8(a1))
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100008D04(v21, qword_1003FAA58);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      v24 = os_log_type_enabled(v22, v23);
      v25 = v39;
      if (v24)
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Conflicted record. Need to resolve the conflict before saving.", v26, 2u);
      }

      sub_1002E45AC(a1, v25);
      *v20 = a1;
      swift_storeEnumTagMultiPayload();
      v27 = a1;
    }

    else
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100008D04(v28, qword_1003FAA58);
      v29 = a1;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v46 = v33;
        *v32 = 136315138;
        v34 = related decl 'e' for CKErrorCode.description.getter();
        v36 = sub_10021145C(v34, v35, &v46);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v30, v31, "Unknown error while saving the record %s.", v32, 0xCu);
        sub_10000839C(v33);
      }

      *v20 = v29;
      swift_storeEnumTagMultiPayload();
      v37 = v29;
    }

    v42(v20);
    return sub_100008D3C(v20, &unk_1003E10A0, &unk_100344480);
  }
}

uint64_t sub_10017B7D0(void *a1, uint64_t a2, NSObject *a3, void (*a4)(void *), uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v39 = a3;
  v7 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v38 - v9;
  v11 = type metadata accessor for InheritanceInvitationRecord();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v11 - 8);
  type metadata accessor for CKError(0);
  v45 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v13 = v46;
  v45 = v46;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v44, a1);
  if (v14)
  {
    goto LABEL_3;
  }

  v38[1] = v7;
  v45 = 28;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v15 = v46;
  v45 = v46;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v44, a1);
  if (v14)
  {
LABEL_3:

    sub_100194C44(a2, v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceInvitationRecord);
    v16 = (*(v40 + 80) + 40) & ~*(v40 + 80);
    v17 = swift_allocObject();
    v18 = v43;
    v17[2] = v42;
    v17[3] = v18;
    v17[4] = v41;
    sub_100194EC4(v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for InheritanceInvitationRecord);

    sub_100192210(a2, sub_100194654, v17);
  }

  else
  {
    v20 = v10;
    if (sub_1002DECC8(a1))
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100008D04(v21, qword_1003FAA58);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      v24 = os_log_type_enabled(v22, v23);
      v25 = v39;
      if (v24)
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Conflicted record. Need to resolve the conflict before saving.", v26, 2u);
      }

      sub_1002E45AC(a1, v25);
      *v20 = a1;
      swift_storeEnumTagMultiPayload();
      v27 = a1;
    }

    else
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100008D04(v28, qword_1003FAA58);
      v29 = a1;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v46 = v33;
        *v32 = 136315138;
        v34 = related decl 'e' for CKErrorCode.description.getter();
        v36 = sub_10021145C(v34, v35, &v46);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v30, v31, "Unknown error while saving the record %s.", v32, 0xCu);
        sub_10000839C(v33);
      }

      *v20 = v29;
      swift_storeEnumTagMultiPayload();
      v37 = v29;
    }

    v42(v20);
    return sub_100008D3C(v20, &qword_1003E1290, &unk_1003444C0);
  }
}

uint64_t sub_10017BCF4(void *a1, uint64_t a2, NSObject *a3, void (*a4)(void *), uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v39 = a3;
  v7 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v38 - v9;
  v11 = type metadata accessor for BenefactorInfoRecord();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v11 - 8);
  type metadata accessor for CKError(0);
  v45 = 26;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100195084(&qword_1003DA8D0, type metadata accessor for CKError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v13 = v46;
  v45 = v46;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v44, a1);
  if (v14)
  {
    goto LABEL_3;
  }

  v38[1] = v7;
  v45 = 28;
  sub_100212324(_swiftEmptyArrayStorage);
  _BridgedStoredNSError.init(_:userInfo:)();
  v15 = v46;
  v45 = v46;
  _BridgedStoredNSError.code.getter();

  v14 = sub_1002DF114(v44, a1);
  if (v14)
  {
LABEL_3:

    sub_100194C44(a2, v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BenefactorInfoRecord);
    v16 = (*(v40 + 80) + 40) & ~*(v40 + 80);
    v17 = swift_allocObject();
    v18 = v43;
    v17[2] = v42;
    v17[3] = v18;
    v17[4] = v41;
    sub_100194EC4(v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for BenefactorInfoRecord);

    sub_100192574(a2, sub_100193DBC, v17);
  }

  else
  {
    v20 = v10;
    if (sub_1002DECC8(a1))
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100008D04(v21, qword_1003FAA58);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      v24 = os_log_type_enabled(v22, v23);
      v25 = v39;
      if (v24)
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Conflicted record. Need to resolve the conflict before saving.", v26, 2u);
      }

      sub_1002E45AC(a1, v25);
      *v20 = a1;
      swift_storeEnumTagMultiPayload();
      v27 = a1;
    }

    else
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100008D04(v28, qword_1003FAA58);
      v29 = a1;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v46 = v33;
        *v32 = 136315138;
        v34 = related decl 'e' for CKErrorCode.description.getter();
        v36 = sub_10021145C(v34, v35, &v46);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v30, v31, "Unknown error while saving the record %s.", v32, 0xCu);
        sub_10000839C(v33);
      }

      *v20 = v29;
      swift_storeEnumTagMultiPayload();
      v37 = v29;
    }

    v42(v20);
    return sub_100008D3C(v20, &unk_1003E1DD0, &qword_1003444D0);
  }
}

void sub_10017C218(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v18 - v11);
  if (a1)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v12);
    sub_100008D3C(v12, &unk_1003DA200, &unk_10033FA80);
  }

  else
  {
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(a5 + *(type metadata accessor for CustodianRecord() + 48)) == 1)
    {
      if (qword_1003D7EC0 != -1)
      {
        swift_once();
      }

      v13 = &qword_1003FA9D0;
    }

    else
    {
      if (qword_1003D7EB8 != -1)
      {
        swift_once();
      }

      v13 = &qword_1003FA9C0;
    }

    v14 = *v13;
    v15 = v13[1];

    v16 = sub_1002E2BC4(v14, v15);

    v19 = [v16 privateCloudDatabase];

    sub_100174A80(a5, v19, a2, a3);
    v17 = v19;
  }
}

void sub_10017C450(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v18 - v11);
  if (a1)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v12);
    sub_100008D3C(v12, &unk_1003DB610, &unk_10033FA90);
  }

  else
  {
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(a5 + *(type metadata accessor for CustodianRecoveryInfoRecord() + 40)) == 1)
    {
      if (qword_1003D7EC0 != -1)
      {
        swift_once();
      }

      v13 = &qword_1003FA9D0;
    }

    else
    {
      if (qword_1003D7EB8 != -1)
      {
        swift_once();
      }

      v13 = &qword_1003FA9C0;
    }

    v14 = *v13;
    v15 = v13[1];

    v16 = sub_1002E2BC4(v14, v15);

    v19 = [v16 privateCloudDatabase];

    sub_100174D78(a5, v19, a2, a3);
    v17 = v19;
  }
}

void sub_10017C688(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), void (*a9)(uint64_t, id, void (*)(void), uint64_t))
{
  v16 = sub_100005814(a6, a7);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v25 - v18);
  if (a1)
  {
    *v19 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v19);
    sub_100008D3C(v19, a6, a7);
  }

  else
  {
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(a5 + *(a8(0) + 36)) == 1)
    {
      if (qword_1003D7EC0 != -1)
      {
        swift_once();
      }

      v20 = &qword_1003FA9D0;
    }

    else
    {
      if (qword_1003D7EB8 != -1)
      {
        swift_once();
      }

      v20 = &qword_1003FA9C0;
    }

    v21 = *v20;
    v22 = v20[1];

    v23 = sub_1002E2BC4(v21, v22);

    v26 = [v23 privateCloudDatabase];

    a9(a5, v26, a2, a3);
    v24 = v26;
  }
}

void sub_10017C8D4(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v18 - v11);
  if (a1)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v12);
    sub_100008D3C(v12, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(a5 + *(type metadata accessor for BeneficiaryInfoRecord() + 40)) == 1)
    {
      if (qword_1003D7ED8 != -1)
      {
        swift_once();
      }

      v13 = &qword_1003FAA00;
    }

    else
    {
      if (qword_1003D7ED0 != -1)
      {
        swift_once();
      }

      v13 = &qword_1003FA9F0;
    }

    v14 = *v13;
    v15 = v13[1];

    v16 = sub_1002E2BC4(v14, v15);

    v19 = [v16 privateCloudDatabase];

    sub_100175958(a5, v19, a2, a3);
    v17 = v19;
  }
}

void sub_10017CB0C(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v18 - v11);
  if (a1)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v12);
    sub_100008D3C(v12, &qword_1003E1290, &unk_1003444C0);
  }

  else
  {
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(a5 + *(type metadata accessor for InheritanceInvitationRecord() + 44)) == 1)
    {
      if (qword_1003D7ED8 != -1)
      {
        swift_once();
      }

      v13 = &qword_1003FAA00;
    }

    else
    {
      if (qword_1003D7ED0 != -1)
      {
        swift_once();
      }

      v13 = &qword_1003FA9F0;
    }

    v14 = *v13;
    v15 = v13[1];

    v16 = sub_1002E2BC4(v14, v15);

    v19 = [v16 privateCloudDatabase];

    sub_100175C50(a5, v19, a2, a3);
    v17 = v19;
  }
}

void sub_10017CD44(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), void (*a9)(uint64_t, id, void (*)(void), uint64_t))
{
  v16 = sub_100005814(a6, a7);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v25 - v18);
  if (a1)
  {
    *v19 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v19);
    sub_100008D3C(v19, a6, a7);
  }

  else
  {
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(a5 + *(a8(0) + 36)) == 1)
    {
      if (qword_1003D7ED8 != -1)
      {
        swift_once();
      }

      v20 = &qword_1003FAA00;
    }

    else
    {
      if (qword_1003D7ED0 != -1)
      {
        swift_once();
      }

      v20 = &qword_1003FA9F0;
    }

    v21 = *v20;
    v22 = v20[1];

    v23 = sub_1002E2BC4(v21, v22);

    v26 = [v23 privateCloudDatabase];

    a9(a5, v26, a2, a3);
    v24 = v26;
  }
}

uint64_t sub_10017CFB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, unint64_t *a7, uint64_t *a8)
{
  v12 = a2;
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  if (a2)
  {
    sub_100016034(0, a5, a6);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_100016034(0, a7, a8);
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v15 = a4;
  v14(v12, a3, a4);
}

Class sub_10017D094()
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1002E2EE0(0xD000000000000011, 0x8000000100330430);
  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v1 = UUID.uuidString.getter();
  v3 = v2;
  v4 = v0;
  v5._countAndFlagsBits = v1;
  v5._object = v3;
  v6.super.isa = CKRecordID.init(recordName:zoneID:)(v5, v4).super.isa;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAA58);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to unarchive record -- creating new one", v10, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v11._countAndFlagsBits = 0x6169646F74737543;
  v11._object = 0xEF64726F6365526ELL;
  isa = CKRecord.init(recordType:recordID:)(v11, v6).super.isa;

  return isa;
}

Class sub_10017D26C(uint64_t a1)
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v2 = UUID.uuidString.getter();
  v4 = sub_1002E2EE0(v2, v3);

  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v5 = a1 + *(type metadata accessor for BenefactorInfoRecord() + 28);
  v6 = UUID.uuidString.getter();
  v8 = v7;
  v9 = v4;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  v11.super.isa = CKRecordID.init(recordName:zoneID:)(v10, v9).super.isa;
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
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to unarchive record -- creating new one", v15, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v16._object = 0x80000001003303D0;
  v16._countAndFlagsBits = 0xD00000000000001FLL;
  isa = CKRecord.init(recordType:recordID:)(v16, v11).super.isa;

  return isa;
}

Class sub_10017D448(uint64_t a1)
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v2 = UUID.uuidString.getter();
  v4 = sub_1002E2EE0(v2, v3);

  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v5 = a1 + *(type metadata accessor for BeneficiaryInfoRecord() + 32);
  v6 = UUID.uuidString.getter();
  v8 = v7;
  v9 = v4;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  v11.super.isa = CKRecordID.init(recordName:zoneID:)(v10, v9).super.isa;
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
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to unarchive record -- creating new one", v15, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v16._object = 0x8000000100330350;
  v16._countAndFlagsBits = 0xD000000000000020;
  isa = CKRecord.init(recordType:recordID:)(v16, v11).super.isa;

  return isa;
}

Class sub_10017D624(uint64_t a1)
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v2 = a1 + *(type metadata accessor for CustodianHealthRecord() + 20);
  v3 = UUID.uuidString.getter();
  v5 = sub_1002E2EE0(v3, v4);

  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v6 = UUID.uuidString.getter();
  v8 = v7;
  v9 = v5;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  v11.super.isa = CKRecordID.init(recordName:zoneID:)(v10, v9).super.isa;
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
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to unarchive record -- creating new one", v15, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v16._object = 0x800000010032CDD0;
  v16._countAndFlagsBits = 0xD000000000000015;
  isa = CKRecord.init(recordType:recordID:)(v16, v11).super.isa;

  return isa;
}

Class sub_10017D800(uint64_t a1)
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v2 = a1 + *(type metadata accessor for CustodianshipInfoRecord() + 20);
  v3 = UUID.uuidString.getter();
  v5 = sub_1002E2EE0(v3, v4);

  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v6 = UUID.uuidString.getter();
  v8 = v7;
  v9 = v5;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  v11.super.isa = CKRecordID.init(recordName:zoneID:)(v10, v9).super.isa;
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
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to unarchive record -- creating new one", v15, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v16._object = 0x800000010032CE50;
  v16._countAndFlagsBits = 0xD000000000000017;
  isa = CKRecord.init(recordType:recordID:)(v16, v11).super.isa;

  return isa;
}

Class sub_10017D9DC(uint64_t a1)
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v2 = UUID.uuidString.getter();
  v4 = sub_1002E2EE0(v2, v3);

  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v5 = a1 + *(type metadata accessor for InheritanceHealthRecord() + 28);
  v6 = UUID.uuidString.getter();
  v8 = v7;
  v9 = v4;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  v11.super.isa = CKRecordID.init(recordName:zoneID:)(v10, v9).super.isa;
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
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to unarchive record -- creating new one", v15, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v16._object = 0x8000000100330300;
  v16._countAndFlagsBits = 0xD000000000000017;
  isa = CKRecord.init(recordType:recordID:)(v16, v11).super.isa;

  return isa;
}

Class sub_10017DBB8(uint64_t a1)
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v2 = a1 + *(type metadata accessor for CustodianRecoveryInfoRecord() + 20);
  v3 = UUID.uuidString.getter();
  v5 = sub_1002E2EE0(v3, v4);

  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v6 = UUID.uuidString.getter();
  v8 = v7;
  v9 = v5;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  v11.super.isa = CKRecordID.init(recordName:zoneID:)(v10, v9).super.isa;
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
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to unarchive record -- creating new one", v15, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v16._object = 0x800000010032CEE0;
  v16._countAndFlagsBits = 0xD00000000000001BLL;
  isa = CKRecord.init(recordType:recordID:)(v16, v11).super.isa;

  return isa;
}

Class sub_10017DD94(uint64_t a1)
{
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1002E2EE0(0xD000000000000011, 0x8000000100330430);
  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v3 = a1 + *(type metadata accessor for InheritanceInvitationRecord() + 36);
  v4 = UUID.uuidString.getter();
  v6 = v5;
  v7 = v2;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9.super.isa = CKRecordID.init(recordName:zoneID:)(v8, v7).super.isa;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA58);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to unarchive record -- creating new one", v13, 2u);
  }

  sub_100016034(0, &qword_1003E0E18, CKRecord_ptr);
  v14._countAndFlagsBits = 0xD00000000000001BLL;
  v14._object = 0x8000000100330380;
  isa = CKRecord.init(recordType:recordID:)(v14, v9).super.isa;

  return isa;
}

uint64_t sub_10017DF74(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v28 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustodianRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v5 + 32);
  sub_100194C44(a1, v18, type metadata accessor for CustodianRecord);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100194EC4(v18, v21 + v19, type metadata accessor for CustodianRecord);
  *(v21 + v20) = v5;
  v22 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = v28;
  *(v22 + 8) = v29;
  v23 = (v21 + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  aBlock[4] = sub_100193040;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003ABF80;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v35 + 8))(v10, v7);
  (*(v33 + 8))(v14, v34);
}

uint64_t sub_10017E358(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v28 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustodianRecoveryInfoRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v5 + 32);
  sub_100194C44(a1, v18, type metadata accessor for CustodianRecoveryInfoRecord);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100194EC4(v18, v21 + v19, type metadata accessor for CustodianRecoveryInfoRecord);
  *(v21 + v20) = v5;
  v22 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = v28;
  *(v22 + 8) = v29;
  v23 = (v21 + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  aBlock[4] = sub_10019325C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003ABFD0;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v35 + 8))(v10, v7);
  (*(v33 + 8))(v14, v34);
}

uint64_t sub_10017E73C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v28 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustodianHealthRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v5 + 32);
  sub_100194C44(a1, v18, type metadata accessor for CustodianHealthRecord);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100194EC4(v18, v21 + v19, type metadata accessor for CustodianHealthRecord);
  *(v21 + v20) = v5;
  v22 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = v28;
  *(v22 + 8) = v29;
  v23 = (v21 + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  aBlock[4] = sub_100193428;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AC020;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v35 + 8))(v10, v7);
  (*(v33 + 8))(v14, v34);
}

uint64_t sub_10017EB20(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v28 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustodianshipInfoRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v5 + 32);
  sub_100194C44(a1, v18, type metadata accessor for CustodianshipInfoRecord);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100194EC4(v18, v21 + v19, type metadata accessor for CustodianshipInfoRecord);
  *(v21 + v20) = v5;
  v22 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = v28;
  *(v22 + 8) = v29;
  v23 = (v21 + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  aBlock[4] = sub_100192E14;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003ABF30;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v35 + 8))(v10, v7);
  (*(v33 + 8))(v14, v34);
}

uint64_t sub_10017EF04(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v28 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustodianRecoverySessionRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v5 + 32);
  sub_100194C44(a1, v18, type metadata accessor for CustodianRecoverySessionRecord);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100194EC4(v18, v21 + v19, type metadata accessor for CustodianRecoverySessionRecord);
  *(v21 + v20) = v5;
  v22 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = v28;
  *(v22 + 8) = v29;
  v23 = (v21 + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  aBlock[4] = sub_100194F2C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AC4F8;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v35 + 8))(v10, v7);
  (*(v33 + 8))(v14, v34);
}

uint64_t sub_10017F2E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v28 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InheritanceHealthRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v5 + 32);
  sub_100194C44(a1, v18, type metadata accessor for InheritanceHealthRecord);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100194EC4(v18, v21 + v19, type metadata accessor for InheritanceHealthRecord);
  *(v21 + v20) = v5;
  v22 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = v28;
  *(v22 + 8) = v29;
  v23 = (v21 + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  aBlock[4] = sub_100191E84;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003ABE18;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v35 + 8))(v10, v7);
  (*(v33 + 8))(v14, v34);
}

uint64_t sub_10017F6CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v28 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BeneficiaryInfoRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v5 + 32);
  sub_100194C44(a1, v18, type metadata accessor for BeneficiaryInfoRecord);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100194EC4(v18, v21 + v19, type metadata accessor for BeneficiaryInfoRecord);
  *(v21 + v20) = v5;
  v22 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = v28;
  *(v22 + 8) = v29;
  v23 = (v21 + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  aBlock[4] = sub_1001937E0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AC0C0;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v35 + 8))(v10, v7);
  (*(v33 + 8))(v14, v34);
}

uint64_t sub_10017FAB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v28 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InheritanceInvitationRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v5 + 32);
  sub_100194C44(a1, v18, type metadata accessor for InheritanceInvitationRecord);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100194EC4(v18, v21 + v19, type metadata accessor for InheritanceInvitationRecord);
  *(v21 + v20) = v5;
  v22 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = v28;
  *(v22 + 8) = v29;
  v23 = (v21 + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  aBlock[4] = sub_1001935C4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AC070;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v35 + 8))(v10, v7);
  (*(v33 + 8))(v14, v34);
}

uint64_t sub_10017FE94(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v28 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BenefactorInfoRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v5 + 32);
  sub_100194C44(a1, v18, type metadata accessor for BenefactorInfoRecord);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100194EC4(v18, v21 + v19, type metadata accessor for BenefactorInfoRecord);
  *(v21 + v20) = v5;
  v22 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = v28;
  *(v22 + 8) = v29;
  v23 = (v21 + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  aBlock[4] = sub_100193AD4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AC160;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v35 + 8))(v10, v7);
  (*(v33 + 8))(v14, v34);
}

uint64_t sub_100180278(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v28 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BeneficiaryManifestRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v5 + 32);
  sub_100194C44(a1, v18, type metadata accessor for BeneficiaryManifestRecord);
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100194EC4(v18, v21 + v19, type metadata accessor for BeneficiaryManifestRecord);
  *(v21 + v20) = v5;
  v22 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = v28;
  *(v22 + 8) = v29;
  v23 = (v21 + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  aBlock[4] = sub_100193958;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AC110;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100195084(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000D10EC(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v35 + 8))(v10, v7);
  (*(v33 + 8))(v14, v34);
}

uint64_t sub_10018065C(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void (*a5)(os_log_t *), uint64_t a6)
{
  v183 = a6;
  v184 = a5;
  v175 = a4;
  v174 = a3;
  v180 = a2;
  v193 = a1;
  v181 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v6 = *(*(v181 - 8) + 64);
  __chkstk_darwin(v181);
  v182 = (&v161 - v7);
  v188 = type metadata accessor for URL();
  v191 = *(v188 - 1);
  v8 = *(v191 + 64);
  v9 = __chkstk_darwin(v188);
  v173 = (&v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v187 = &v161 - v12;
  v13 = __chkstk_darwin(v11);
  v190 = &v161 - v14;
  __chkstk_darwin(v13);
  v16 = &v161 - v15;
  v17 = type metadata accessor for UUID();
  v186 = *(v17 - 8);
  v18 = *(v186 + 64);
  __chkstk_darwin(v17);
  v185 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for CustodianRecord();
  v20 = *(v179[-1].isa + 8);
  v21 = __chkstk_darwin(v179);
  v192 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = (&v161 - v24);
  v26 = __chkstk_darwin(v23);
  v170 = &v161 - v27;
  v28 = __chkstk_darwin(v26);
  v169 = &v161 - v29;
  v30 = __chkstk_darwin(v28);
  v172 = &v161 - v31;
  v32 = __chkstk_darwin(v30);
  v171 = &v161 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v161 - v35;
  __chkstk_darwin(v34);
  v38 = &v161 - v37;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = sub_100008D04(v39, qword_1003FAAE8);
  v41 = v193;
  sub_100194C44(v193, v38, type metadata accessor for CustodianRecord);
  sub_100194C44(v41, v36, type metadata accessor for CustodianRecord);
  v189 = v40;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  v44 = os_log_type_enabled(v42, v43);
  v178 = v16;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v176 = v25;
    v46 = v45;
    v168 = swift_slowAlloc();
    v195[0] = v168;
    *v46 = 136315394;
    v167 = v42;
    v47 = v186;
    v48 = v185;
    (*(v186 + 16))(v185, v38, v17);
    v165 = type metadata accessor for CustodianRecord;
    sub_100195024(v38, type metadata accessor for CustodianRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    LODWORD(v166) = v43;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    (*(v47 + 8))(v48, v17);
    v52 = sub_10021145C(v49, v51, v195);

    *(v46 + 4) = v52;
    *(v46 + 12) = 2080;
    type metadata accessor for LocalCache();
    v177 = v17;
    v53 = v187;
    sub_100307F40();
    v54 = v190;
    URL.appendingPathComponent(_:isDirectory:)();
    v55 = v54;
    v56 = *(v191 + 8);
    v57 = v53;
    v58 = v188;
    v56(v57, v188);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v56(v55, v58);
    sub_100195024(v36, v165);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    v62 = v58;
    v17 = v177;
    v56(v16, v62);
    v63 = sub_10021145C(v59, v61, v195);

    *(v46 + 14) = v63;
    v64 = v167;
    _os_log_impl(&_mh_execute_header, v167, v166, "Local Cache: Saving record: %s at path: %s", v46, 0x16u);
    swift_arrayDestroy();

    v25 = v176;
  }

  else
  {
    sub_100195024(v36, type metadata accessor for CustodianRecord);
    sub_100195024(v38, type metadata accessor for CustodianRecord);
  }

  v65 = v180;
  v66 = v180[2];
  sub_100195084(&qword_1003DD6F8, type metadata accessor for CustodianRecord);

  v67 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v69 = v68;

  v70 = v65[5];

  v71 = objc_autoreleasePoolPush();
  sub_10030348C(v67, v69, &v194, v195);
  v167 = 0;
  v168 = v67;
  v176 = v25;
  objc_autoreleasePoolPop(v71);

  v179 = v195[0];
  v180 = v195[1];
  v99 = v193;
  v100 = v171;
  sub_100194C44(v193, v171, type metadata accessor for CustodianRecord);
  v101 = v172;
  sub_100194C44(v99, v172, type metadata accessor for CustodianRecord);
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.default.getter();
  v104 = os_log_type_enabled(v102, v103);
  v177 = v17;
  if (v104)
  {
    v105 = swift_slowAlloc();
    LODWORD(v165) = v103;
    v106 = v105;
    v166 = swift_slowAlloc();
    v195[0] = v166;
    *v106 = 136315394;
    v108 = v185;
    v107 = v186;
    (*(v186 + 16))(v185, v100, v17);
    v163 = type metadata accessor for CustodianRecord;
    sub_100195024(v100, type metadata accessor for CustodianRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v164 = v102;
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v111 = v110;
    (*(v107 + 8))(v108, v17);
    v112 = sub_10021145C(v109, v111, v195);

    v162 = v106;
    *(v106 + 4) = v112;
    *(v106 + 12) = 2080;
    type metadata accessor for LocalCache();
    v113 = v187;
    sub_100307F40();
    v114 = v190;
    URL.appendingPathComponent(_:isDirectory:)();
    v171 = v69;
    v115 = *(v191 + 8);
    v116 = v113;
    v117 = v188;
    v115(v116, v188);
    UUID.uuidString.getter();
    v118 = v178;
    URL.appendingPathComponent(_:)();

    v115(v114, v117);
    sub_100195024(v101, v163);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v119 = dispatch thunk of CustomStringConvertible.description.getter();
    v121 = v120;
    v115(v118, v117);
    v69 = v171;
    v122 = sub_10021145C(v119, v121, v195);

    v123 = v162;
    *(v162 + 14) = v122;
    v124 = v164;
    _os_log_impl(&_mh_execute_header, v164, v165, "Local Cache: Successfully encrypted record %s, %s", v123, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v101, type metadata accessor for CustodianRecord);
    sub_100195024(v100, type metadata accessor for CustodianRecord);

    v117 = v188;
    v118 = v178;
    v114 = v190;
  }

  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v125 = v114;
  v126 = *(v191 + 8);
  v126(v125, v117);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v118, 0);
  v126(v118, v117);
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v126(v125, v117);
  UUID.uuidString.getter();
  v127 = v173;
  URL.appendingPathComponent(_:)();
  v128 = v127;

  v126(v118, v117);
  v130 = v179;
  v129 = v180;
  v131 = v127;
  v132 = v167;
  sub_10030A77C(v179, v180, v131, v174, v175);
  if (v132)
  {
    v126(v128, v117);
    sub_100012324(v130, v129);
    sub_100012324(v168, v69);
    v133 = v177;
    v134 = v176;
    v72 = v193;
    sub_100194C44(v193, v176, type metadata accessor for CustodianRecord);
    sub_100194C44(v72, v192, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v195[0] = v193;
      *v75 = 136315650;
      v76 = v186;
      v77 = *(v186 + 16);
      LODWORD(v180) = v74;
      v78 = v134;
      v79 = v185;
      v77(v185, v78, v133);
      v179 = v73;
      v176 = type metadata accessor for CustodianRecord;
      sub_100195024(v78, type metadata accessor for CustodianRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      (*(v76 + 8))(v79, v133);
      v83 = sub_10021145C(v80, v82, v195);

      *(v75 + 4) = v83;
      *(v75 + 12) = 2080;
      type metadata accessor for LocalCache();
      v84 = v187;
      sub_100307F40();
      v85 = v190;
      URL.appendingPathComponent(_:isDirectory:)();
      v86 = v192;
      v87 = *(v191 + 8);
      v88 = v188;
      v87(v84, v188);
      UUID.uuidString.getter();
      v89 = v178;
      URL.appendingPathComponent(_:)();

      v87(v85, v88);
      sub_100195024(v86, v176);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v91;
      v87(v89, v88);
      v93 = sub_10021145C(v90, v92, v195);

      *(v75 + 14) = v93;
      *(v75 + 22) = 2112;
      v94 = _convertErrorToNSError(_:)();
      *(v75 + 24) = v94;
      v95 = v189;
      v189->isa = v94;
      v96 = v179;
      _os_log_impl(&_mh_execute_header, v179, v180, "Local Cache: Error adding record %s with URL %s to local disk: %@", v75, 0x20u);
      sub_100008D3C(v95, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v192, type metadata accessor for CustodianRecord);
      sub_100195024(v134, type metadata accessor for CustodianRecord);
    }

    v97 = v182;
    *v182 = v132;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v184(v97);
  }

  else
  {
    v171 = v69;
    v126(v128, v117);
    v135 = v193;
    v136 = v169;
    sub_100194C44(v193, v169, type metadata accessor for CustodianRecord);
    v137 = v170;
    sub_100194C44(v135, v170, type metadata accessor for CustodianRecord);
    v138 = v117;
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v195[0] = v192;
      *v141 = 136315394;
      v142 = v186;
      v143 = *(v186 + 16);
      LODWORD(v191) = v140;
      v144 = v185;
      v145 = v177;
      v143(v185, v136, v177);
      v188 = type metadata accessor for CustodianRecord;
      sub_100195024(v136, type metadata accessor for CustodianRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v146 = dispatch thunk of CustomStringConvertible.description.getter();
      v189 = v139;
      v147 = v146;
      v149 = v148;
      (*(v142 + 8))(v144, v145);
      v150 = sub_10021145C(v147, v149, v195);

      *(v141 + 4) = v150;
      *(v141 + 12) = 2080;
      v151 = v187;
      sub_100307F40();
      v152 = v190;
      URL.appendingPathComponent(_:isDirectory:)();
      v126(v151, v138);
      v153 = v170;
      UUID.uuidString.getter();
      v154 = v178;
      URL.appendingPathComponent(_:)();

      v126(v152, v138);
      sub_100195024(v153, v188);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v155 = dispatch thunk of CustomStringConvertible.description.getter();
      v157 = v156;
      v126(v154, v138);
      v158 = sub_10021145C(v155, v157, v195);
      v130 = v179;

      *(v141 + 14) = v158;
      v159 = v189;
      _os_log_impl(&_mh_execute_header, v189, v191, "Local Cache: Successfully saved record to local disk %s, %s", v141, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v137, type metadata accessor for CustodianRecord);
      sub_100195024(v136, type metadata accessor for CustodianRecord);
    }

    v160 = v168;
    v97 = v182;
    sub_100194C44(v193, v182, type metadata accessor for CustodianRecord);
    swift_storeEnumTagMultiPayload();
    v184(v97);
    sub_100012324(v160, v171);
    sub_100012324(v130, v180);
  }

  return sub_100008D3C(v97, &unk_1003DA200, &unk_10033FA80);
}

uint64_t sub_100181B74(uint64_t a1, uint64_t *a2, uint64_t (*a3)(), int a4, void (*a5)(void *), uint64_t a6)
{
  v190 = a6;
  v191 = a5;
  LODWORD(v183) = a4;
  v182 = a3;
  v187 = a2;
  v199 = a1;
  v188 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  v6 = *(*(v188 - 8) + 64);
  __chkstk_darwin(v188);
  v189 = (&v169 - v7);
  v198 = type metadata accessor for URL();
  v196 = *(v198 - 8);
  v8 = *(v196 + 8);
  v9 = __chkstk_darwin(v198);
  v181 = (&v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v195 = &v169 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v169 - v14;
  __chkstk_darwin(v13);
  v17 = &v169 - v16;
  v18 = type metadata accessor for UUID();
  v194 = *(v18 - 8);
  v19 = *(v194 + 64);
  __chkstk_darwin(v18);
  v193 = &v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for CustodianRecoveryInfoRecord();
  v21 = *(*(v186 - 8) + 64);
  v22 = __chkstk_darwin(v186);
  v24 = (&v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v22);
  v27 = &v169 - v26;
  v28 = __chkstk_darwin(v25);
  v178 = &v169 - v29;
  v30 = __chkstk_darwin(v28);
  v177 = &v169 - v31;
  v32 = __chkstk_darwin(v30);
  v180 = &v169 - v33;
  v34 = __chkstk_darwin(v32);
  v179 = &v169 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v169 - v37;
  __chkstk_darwin(v36);
  v40 = &v169 - v39;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_100008D04(v41, qword_1003FAAE8);
  v43 = v199;
  sub_100194C44(v199, v40, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100194C44(v43, v38, type metadata accessor for CustodianRecoveryInfoRecord);
  v197 = v42;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v185 = v17;
  v192 = v24;
  if (v46)
  {
    v47 = v15;
    v48 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v201[0] = v175;
    *v48 = 136315394;
    v49 = v194;
    v50 = *(v194 + 16);
    LODWORD(v174) = v45;
    v51 = v193;
    v50(v193, v40, v18);
    v173 = type metadata accessor for CustodianRecoveryInfoRecord;
    sub_100195024(v40, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v176 = v27;
    v53 = v52;
    v55 = v54;
    (*(v49 + 8))(v51, v18);
    v56 = sub_10021145C(v53, v55, v201);

    *(v48 + 4) = v56;
    *(v48 + 12) = 2080;
    type metadata accessor for LocalCache();
    v184 = v18;
    v57 = v195;
    sub_100307F40();
    URL.appendingPathComponent(_:isDirectory:)();
    v58 = v47;
    v59 = *(v196 + 1);
    v60 = v57;
    v61 = v198;
    v59(v60, v198);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v59(v58, v61);
    sub_100195024(v38, v173);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    v65 = v61;
    v18 = v184;
    v59(v17, v65);
    v24 = v192;
    v66 = v58;
    v27 = v176;
    v67 = sub_10021145C(v62, v64, v201);

    *(v48 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v44, v174, "Local Cache: Saving record: %s at path: %s", v48, 0x16u);
    swift_arrayDestroy();

    v15 = v66;
  }

  else
  {
    sub_100195024(v38, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100195024(v40, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v68 = v187;
  v69 = v187[2];
  sub_100195084(&qword_1003DD858, type metadata accessor for CustodianRecoveryInfoRecord);

  v70 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v72 = v71;

  v73 = v68[5];

  v74 = objc_autoreleasePoolPush();
  sub_10030348C(v70, v72, &v200, v201);
  v174 = 0;
  v175 = v70;
  v176 = v72;
  objc_autoreleasePoolPop(v74);

  v186 = v201[0];
  v187 = v201[1];
  v100 = v199;
  v101 = v179;
  sub_100194C44(v199, v179, type metadata accessor for CustodianRecoveryInfoRecord);
  v102 = v180;
  sub_100194C44(v100, v180, type metadata accessor for CustodianRecoveryInfoRecord);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  v105 = os_log_type_enabled(v103, v104);
  v184 = v18;
  if (v105)
  {
    v106 = swift_slowAlloc();
    v173 = v106;
    v172 = swift_slowAlloc();
    v201[0] = v172;
    *v106 = 136315394;
    v108 = v193;
    v107 = v194;
    (*(v194 + 16))(v193, v101, v18);
    v169 = type metadata accessor for CustodianRecoveryInfoRecord;
    sub_100195024(v101, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v171 = v103;
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v170 = v104;
    v110 = v109;
    v112 = v111;
    (*(v107 + 8))(v108, v18);
    v113 = sub_10021145C(v110, v112, v201);

    v114 = v173;
    *(v173 + 4) = v113;
    *(v114 + 6) = 2080;
    type metadata accessor for LocalCache();
    v115 = v195;
    sub_100307F40();
    v179 = 0x800000010032CEE0;
    URL.appendingPathComponent(_:isDirectory:)();
    v116 = v15;
    v117 = v102;
    v118 = v196;
    v119 = *(v196 + 1);
    v120 = v115;
    v121 = v198;
    v119(v120, v198);
    UUID.uuidString.getter();
    v122 = v185;
    URL.appendingPathComponent(_:)();

    v119(v116, v121);
    sub_100195024(v117, v169);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v123 = dispatch thunk of CustomStringConvertible.description.getter();
    v125 = v124;
    v119(v122, v121);
    v24 = v192;
    v15 = v116;
    v126 = v179;
    v127 = sub_10021145C(v123, v125, v201);

    v128 = v173;
    *(v173 + 14) = v127;
    v129 = v171;
    _os_log_impl(&_mh_execute_header, v171, v170, "Local Cache: Successfully encrypted record %s, %s", v128, 0x16u);
    swift_arrayDestroy();

    v130 = v118;
  }

  else
  {
    sub_100195024(v102, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100195024(v101, type metadata accessor for CustodianRecoveryInfoRecord);

    v126 = 0x800000010032CEE0;
    v121 = v198;
    v122 = v185;
    v130 = v196;
  }

  v179 = v126;
  v131 = type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v132 = *(v130 + 1);
  v132(v15, v121);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v122, 0);
  v132(v122, v121);
  v173 = v131;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v132(v15, v121);
  UUID.uuidString.getter();
  v133 = v181;
  URL.appendingPathComponent(_:)();
  v134 = v133;

  v135 = v122;
  v136 = v132;
  v180 = v130 + 8;
  v132(v135, v121);
  v138 = v186;
  v137 = v187;
  v139 = v133;
  v140 = v174;
  sub_10030A77C(v186, v187, v139, v182, v183);
  if (v140)
  {
    v136(v134, v121);
    sub_100012324(v138, v137);
    sub_100012324(v175, v176);
    v141 = v184;
    v75 = v199;
    sub_100194C44(v199, v27, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100194C44(v75, v24, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_errorRetain();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v201[0] = v199;
      *v78 = 136315650;
      v80 = v193;
      v79 = v194;
      (*(v194 + 16))(v193, v27, v141);
      v187 = v76;
      v183 = type metadata accessor for CustodianRecoveryInfoRecord;
      sub_100195024(v27, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      LODWORD(v186) = v77;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      (*(v79 + 8))(v80, v141);
      v84 = sub_10021145C(v81, v83, v201);

      *(v78 + 4) = v84;
      *(v78 + 12) = 2080;
      type metadata accessor for LocalCache();
      v85 = v195;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v86 = v15;
      v87 = *(v196 + 1);
      v88 = v198;
      v87(v85, v198);
      v89 = v192;
      UUID.uuidString.getter();
      v90 = v185;
      URL.appendingPathComponent(_:)();

      v87(v86, v88);
      sub_100195024(v89, v183);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      v87(v90, v88);
      v94 = sub_10021145C(v91, v93, v201);

      *(v78 + 14) = v94;
      *(v78 + 22) = 2112;
      v95 = _convertErrorToNSError(_:)();
      *(v78 + 24) = v95;
      v96 = v197;
      *v197 = v95;
      v97 = v187;
      _os_log_impl(&_mh_execute_header, v187, v186, "Local Cache: Error adding record %s with URL %s to local disk: %@", v78, 0x20u);
      sub_100008D3C(v96, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v24, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_100195024(v27, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v98 = v189;
    *v189 = v140;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v191(v98);
  }

  else
  {
    v196 = v15;
    v142 = v136;
    v136(v134, v121);
    v143 = v199;
    v144 = v177;
    sub_100194C44(v199, v177, type metadata accessor for CustodianRecoveryInfoRecord);
    v145 = v178;
    sub_100194C44(v143, v178, type metadata accessor for CustodianRecoveryInfoRecord);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v201[0] = v197;
      *v148 = 136315394;
      v149 = v194;
      v150 = *(v194 + 16);
      v192 = v146;
      v151 = v193;
      LODWORD(v183) = v147;
      v152 = v184;
      v150(v193, v144, v184);
      v182 = type metadata accessor for CustodianRecoveryInfoRecord;
      sub_100195024(v144, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v153 = v145;
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v155;
      (*(v149 + 8))(v151, v152);
      v138 = v186;
      v157 = sub_10021145C(v154, v156, v201);

      *(v148 + 4) = v157;
      *(v148 + 12) = 2080;
      v158 = v195;
      sub_100307F40();
      v159 = v196;
      URL.appendingPathComponent(_:isDirectory:)();
      v160 = v198;
      v142(v158, v198);
      UUID.uuidString.getter();
      v161 = v185;
      URL.appendingPathComponent(_:)();

      v142(v159, v160);
      sub_100195024(v153, v182);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v162 = dispatch thunk of CustomStringConvertible.description.getter();
      v164 = v163;
      v142(v161, v160);
      v165 = sub_10021145C(v162, v164, v201);

      *(v148 + 14) = v165;
      v166 = v192;
      _os_log_impl(&_mh_execute_header, v192, v183, "Local Cache: Successfully saved record to local disk %s, %s", v148, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v145, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_100195024(v144, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v167 = v176;
    v168 = v175;
    v98 = v189;
    sub_100194C44(v199, v189, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_storeEnumTagMultiPayload();
    v191(v98);
    sub_100012324(v168, v167);
    sub_100012324(v138, v187);
  }

  return sub_100008D3C(v98, &unk_1003DB610, &unk_10033FA90);
}

uint64_t sub_100183064(uint64_t a1, uint64_t *a2, uint64_t (*a3)(), int a4, void (*a5)(void *), uint64_t a6)
{
  v190 = a6;
  v191 = a5;
  LODWORD(v183) = a4;
  v182 = a3;
  v187 = a2;
  v199 = a1;
  v188 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  v6 = *(*(v188 - 8) + 64);
  __chkstk_darwin(v188);
  v189 = (&v169 - v7);
  v198 = type metadata accessor for URL();
  v196 = *(v198 - 8);
  v8 = *(v196 + 8);
  v9 = __chkstk_darwin(v198);
  v181 = (&v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v195 = &v169 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v169 - v14;
  __chkstk_darwin(v13);
  v17 = &v169 - v16;
  v18 = type metadata accessor for UUID();
  v194 = *(v18 - 8);
  v19 = *(v194 + 64);
  __chkstk_darwin(v18);
  v193 = &v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for CustodianHealthRecord();
  v21 = *(*(v186 - 8) + 64);
  v22 = __chkstk_darwin(v186);
  v24 = (&v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v22);
  v27 = &v169 - v26;
  v28 = __chkstk_darwin(v25);
  v178 = &v169 - v29;
  v30 = __chkstk_darwin(v28);
  v177 = &v169 - v31;
  v32 = __chkstk_darwin(v30);
  v180 = &v169 - v33;
  v34 = __chkstk_darwin(v32);
  v179 = &v169 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v169 - v37;
  __chkstk_darwin(v36);
  v40 = &v169 - v39;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_100008D04(v41, qword_1003FAAE8);
  v43 = v199;
  sub_100194C44(v199, v40, type metadata accessor for CustodianHealthRecord);
  sub_100194C44(v43, v38, type metadata accessor for CustodianHealthRecord);
  v197 = v42;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v185 = v17;
  v192 = v24;
  if (v46)
  {
    v47 = v15;
    v48 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v201[0] = v175;
    *v48 = 136315394;
    v49 = v194;
    v50 = *(v194 + 16);
    LODWORD(v174) = v45;
    v51 = v193;
    v50(v193, v40, v18);
    v173 = type metadata accessor for CustodianHealthRecord;
    sub_100195024(v40, type metadata accessor for CustodianHealthRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v176 = v27;
    v53 = v52;
    v55 = v54;
    (*(v49 + 8))(v51, v18);
    v56 = sub_10021145C(v53, v55, v201);

    *(v48 + 4) = v56;
    *(v48 + 12) = 2080;
    type metadata accessor for LocalCache();
    v184 = v18;
    v57 = v195;
    sub_100307F40();
    URL.appendingPathComponent(_:isDirectory:)();
    v58 = v47;
    v59 = *(v196 + 1);
    v60 = v57;
    v61 = v198;
    v59(v60, v198);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v59(v58, v61);
    sub_100195024(v38, v173);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    v65 = v61;
    v18 = v184;
    v59(v17, v65);
    v24 = v192;
    v66 = v58;
    v27 = v176;
    v67 = sub_10021145C(v62, v64, v201);

    *(v48 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v44, v174, "Local Cache: Saving record: %s at path: %s", v48, 0x16u);
    swift_arrayDestroy();

    v15 = v66;
  }

  else
  {
    sub_100195024(v38, type metadata accessor for CustodianHealthRecord);
    sub_100195024(v40, type metadata accessor for CustodianHealthRecord);
  }

  v68 = v187;
  v69 = v187[2];
  sub_100195084(&qword_1003DD5A8, type metadata accessor for CustodianHealthRecord);

  v70 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v72 = v71;

  v73 = v68[5];

  v74 = objc_autoreleasePoolPush();
  sub_10030348C(v70, v72, &v200, v201);
  v174 = 0;
  v175 = v70;
  v176 = v72;
  objc_autoreleasePoolPop(v74);

  v186 = v201[0];
  v187 = v201[1];
  v100 = v199;
  v101 = v179;
  sub_100194C44(v199, v179, type metadata accessor for CustodianHealthRecord);
  v102 = v180;
  sub_100194C44(v100, v180, type metadata accessor for CustodianHealthRecord);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  v105 = os_log_type_enabled(v103, v104);
  v184 = v18;
  if (v105)
  {
    v106 = swift_slowAlloc();
    v173 = v106;
    v172 = swift_slowAlloc();
    v201[0] = v172;
    *v106 = 136315394;
    v108 = v193;
    v107 = v194;
    (*(v194 + 16))(v193, v101, v18);
    v169 = type metadata accessor for CustodianHealthRecord;
    sub_100195024(v101, type metadata accessor for CustodianHealthRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v171 = v103;
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v170 = v104;
    v110 = v109;
    v112 = v111;
    (*(v107 + 8))(v108, v18);
    v113 = sub_10021145C(v110, v112, v201);

    v114 = v173;
    *(v173 + 4) = v113;
    *(v114 + 6) = 2080;
    type metadata accessor for LocalCache();
    v115 = v195;
    sub_100307F40();
    v179 = 0x800000010032CDD0;
    URL.appendingPathComponent(_:isDirectory:)();
    v116 = v15;
    v117 = v102;
    v118 = v196;
    v119 = *(v196 + 1);
    v120 = v115;
    v121 = v198;
    v119(v120, v198);
    UUID.uuidString.getter();
    v122 = v185;
    URL.appendingPathComponent(_:)();

    v119(v116, v121);
    sub_100195024(v117, v169);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v123 = dispatch thunk of CustomStringConvertible.description.getter();
    v125 = v124;
    v119(v122, v121);
    v24 = v192;
    v15 = v116;
    v126 = v179;
    v127 = sub_10021145C(v123, v125, v201);

    v128 = v173;
    *(v173 + 14) = v127;
    v129 = v171;
    _os_log_impl(&_mh_execute_header, v171, v170, "Local Cache: Successfully encrypted record %s, %s", v128, 0x16u);
    swift_arrayDestroy();

    v130 = v118;
  }

  else
  {
    sub_100195024(v102, type metadata accessor for CustodianHealthRecord);
    sub_100195024(v101, type metadata accessor for CustodianHealthRecord);

    v126 = 0x800000010032CDD0;
    v121 = v198;
    v122 = v185;
    v130 = v196;
  }

  v179 = v126;
  v131 = type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v132 = *(v130 + 1);
  v132(v15, v121);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v122, 0);
  v132(v122, v121);
  v173 = v131;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v132(v15, v121);
  UUID.uuidString.getter();
  v133 = v181;
  URL.appendingPathComponent(_:)();
  v134 = v133;

  v135 = v122;
  v136 = v132;
  v180 = v130 + 8;
  v132(v135, v121);
  v138 = v186;
  v137 = v187;
  v139 = v133;
  v140 = v174;
  sub_10030A77C(v186, v187, v139, v182, v183);
  if (v140)
  {
    v136(v134, v121);
    sub_100012324(v138, v137);
    sub_100012324(v175, v176);
    v141 = v184;
    v75 = v199;
    sub_100194C44(v199, v27, type metadata accessor for CustodianHealthRecord);
    sub_100194C44(v75, v24, type metadata accessor for CustodianHealthRecord);
    swift_errorRetain();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v201[0] = v199;
      *v78 = 136315650;
      v80 = v193;
      v79 = v194;
      (*(v194 + 16))(v193, v27, v141);
      v187 = v76;
      v183 = type metadata accessor for CustodianHealthRecord;
      sub_100195024(v27, type metadata accessor for CustodianHealthRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      LODWORD(v186) = v77;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      (*(v79 + 8))(v80, v141);
      v84 = sub_10021145C(v81, v83, v201);

      *(v78 + 4) = v84;
      *(v78 + 12) = 2080;
      type metadata accessor for LocalCache();
      v85 = v195;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v86 = v15;
      v87 = *(v196 + 1);
      v88 = v198;
      v87(v85, v198);
      v89 = v192;
      UUID.uuidString.getter();
      v90 = v185;
      URL.appendingPathComponent(_:)();

      v87(v86, v88);
      sub_100195024(v89, v183);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      v87(v90, v88);
      v94 = sub_10021145C(v91, v93, v201);

      *(v78 + 14) = v94;
      *(v78 + 22) = 2112;
      v95 = _convertErrorToNSError(_:)();
      *(v78 + 24) = v95;
      v96 = v197;
      *v197 = v95;
      v97 = v187;
      _os_log_impl(&_mh_execute_header, v187, v186, "Local Cache: Error adding record %s with URL %s to local disk: %@", v78, 0x20u);
      sub_100008D3C(v96, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v24, type metadata accessor for CustodianHealthRecord);
      sub_100195024(v27, type metadata accessor for CustodianHealthRecord);
    }

    v98 = v189;
    *v189 = v140;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v191(v98);
  }

  else
  {
    v196 = v15;
    v142 = v136;
    v136(v134, v121);
    v143 = v199;
    v144 = v177;
    sub_100194C44(v199, v177, type metadata accessor for CustodianHealthRecord);
    v145 = v178;
    sub_100194C44(v143, v178, type metadata accessor for CustodianHealthRecord);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v201[0] = v197;
      *v148 = 136315394;
      v149 = v194;
      v150 = *(v194 + 16);
      v192 = v146;
      v151 = v193;
      LODWORD(v183) = v147;
      v152 = v184;
      v150(v193, v144, v184);
      v182 = type metadata accessor for CustodianHealthRecord;
      sub_100195024(v144, type metadata accessor for CustodianHealthRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v153 = v145;
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v155;
      (*(v149 + 8))(v151, v152);
      v138 = v186;
      v157 = sub_10021145C(v154, v156, v201);

      *(v148 + 4) = v157;
      *(v148 + 12) = 2080;
      v158 = v195;
      sub_100307F40();
      v159 = v196;
      URL.appendingPathComponent(_:isDirectory:)();
      v160 = v198;
      v142(v158, v198);
      UUID.uuidString.getter();
      v161 = v185;
      URL.appendingPathComponent(_:)();

      v142(v159, v160);
      sub_100195024(v153, v182);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v162 = dispatch thunk of CustomStringConvertible.description.getter();
      v164 = v163;
      v142(v161, v160);
      v165 = sub_10021145C(v162, v164, v201);

      *(v148 + 14) = v165;
      v166 = v192;
      _os_log_impl(&_mh_execute_header, v192, v183, "Local Cache: Successfully saved record to local disk %s, %s", v148, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v145, type metadata accessor for CustodianHealthRecord);
      sub_100195024(v144, type metadata accessor for CustodianHealthRecord);
    }

    v167 = v176;
    v168 = v175;
    v98 = v189;
    sub_100194C44(v199, v189, type metadata accessor for CustodianHealthRecord);
    swift_storeEnumTagMultiPayload();
    v191(v98);
    sub_100012324(v168, v167);
    sub_100012324(v138, v187);
  }

  return sub_100008D3C(v98, &qword_1003D91E8, &qword_100346AC0);
}

uint64_t sub_100184554(uint64_t a1, uint64_t *a2, uint64_t (*a3)(), int a4, void (*a5)(void *), uint64_t a6)
{
  v190 = a6;
  v191 = a5;
  LODWORD(v183) = a4;
  v182 = a3;
  v187 = a2;
  v199 = a1;
  v188 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v6 = *(*(v188 - 8) + 64);
  __chkstk_darwin(v188);
  v189 = (&v169 - v7);
  v198 = type metadata accessor for URL();
  v196 = *(v198 - 8);
  v8 = *(v196 + 8);
  v9 = __chkstk_darwin(v198);
  v181 = (&v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v195 = &v169 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v169 - v14;
  __chkstk_darwin(v13);
  v17 = &v169 - v16;
  v18 = type metadata accessor for UUID();
  v194 = *(v18 - 8);
  v19 = *(v194 + 64);
  __chkstk_darwin(v18);
  v193 = &v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for CustodianshipInfoRecord();
  v21 = *(*(v186 - 8) + 64);
  v22 = __chkstk_darwin(v186);
  v24 = (&v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v22);
  v27 = &v169 - v26;
  v28 = __chkstk_darwin(v25);
  v178 = &v169 - v29;
  v30 = __chkstk_darwin(v28);
  v177 = &v169 - v31;
  v32 = __chkstk_darwin(v30);
  v180 = &v169 - v33;
  v34 = __chkstk_darwin(v32);
  v179 = &v169 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v169 - v37;
  __chkstk_darwin(v36);
  v40 = &v169 - v39;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_100008D04(v41, qword_1003FAAE8);
  v43 = v199;
  sub_100194C44(v199, v40, type metadata accessor for CustodianshipInfoRecord);
  sub_100194C44(v43, v38, type metadata accessor for CustodianshipInfoRecord);
  v197 = v42;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v185 = v17;
  v192 = v24;
  if (v46)
  {
    v47 = v15;
    v48 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v201[0] = v175;
    *v48 = 136315394;
    v49 = v194;
    v50 = *(v194 + 16);
    LODWORD(v174) = v45;
    v51 = v193;
    v50(v193, v40, v18);
    v173 = type metadata accessor for CustodianshipInfoRecord;
    sub_100195024(v40, type metadata accessor for CustodianshipInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v176 = v27;
    v53 = v52;
    v55 = v54;
    (*(v49 + 8))(v51, v18);
    v56 = sub_10021145C(v53, v55, v201);

    *(v48 + 4) = v56;
    *(v48 + 12) = 2080;
    type metadata accessor for LocalCache();
    v184 = v18;
    v57 = v195;
    sub_100307F40();
    URL.appendingPathComponent(_:isDirectory:)();
    v58 = v47;
    v59 = *(v196 + 1);
    v60 = v57;
    v61 = v198;
    v59(v60, v198);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v59(v58, v61);
    sub_100195024(v38, v173);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    v65 = v61;
    v18 = v184;
    v59(v17, v65);
    v24 = v192;
    v66 = v58;
    v27 = v176;
    v67 = sub_10021145C(v62, v64, v201);

    *(v48 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v44, v174, "Local Cache: Saving record: %s at path: %s", v48, 0x16u);
    swift_arrayDestroy();

    v15 = v66;
  }

  else
  {
    sub_100195024(v38, type metadata accessor for CustodianshipInfoRecord);
    sub_100195024(v40, type metadata accessor for CustodianshipInfoRecord);
  }

  v68 = v187;
  v69 = v187[2];
  sub_100195084(&qword_1003DDA48, type metadata accessor for CustodianshipInfoRecord);

  v70 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v72 = v71;

  v73 = v68[5];

  v74 = objc_autoreleasePoolPush();
  sub_10030348C(v70, v72, &v200, v201);
  v174 = 0;
  v175 = v70;
  v176 = v72;
  objc_autoreleasePoolPop(v74);

  v186 = v201[0];
  v187 = v201[1];
  v100 = v199;
  v101 = v179;
  sub_100194C44(v199, v179, type metadata accessor for CustodianshipInfoRecord);
  v102 = v180;
  sub_100194C44(v100, v180, type metadata accessor for CustodianshipInfoRecord);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  v105 = os_log_type_enabled(v103, v104);
  v184 = v18;
  if (v105)
  {
    v106 = swift_slowAlloc();
    v173 = v106;
    v172 = swift_slowAlloc();
    v201[0] = v172;
    *v106 = 136315394;
    v108 = v193;
    v107 = v194;
    (*(v194 + 16))(v193, v101, v18);
    v169 = type metadata accessor for CustodianshipInfoRecord;
    sub_100195024(v101, type metadata accessor for CustodianshipInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v171 = v103;
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v170 = v104;
    v110 = v109;
    v112 = v111;
    (*(v107 + 8))(v108, v18);
    v113 = sub_10021145C(v110, v112, v201);

    v114 = v173;
    *(v173 + 4) = v113;
    *(v114 + 6) = 2080;
    type metadata accessor for LocalCache();
    v115 = v195;
    sub_100307F40();
    v179 = 0x800000010032CE50;
    URL.appendingPathComponent(_:isDirectory:)();
    v116 = v15;
    v117 = v102;
    v118 = v196;
    v119 = *(v196 + 1);
    v120 = v115;
    v121 = v198;
    v119(v120, v198);
    UUID.uuidString.getter();
    v122 = v185;
    URL.appendingPathComponent(_:)();

    v119(v116, v121);
    sub_100195024(v117, v169);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v123 = dispatch thunk of CustomStringConvertible.description.getter();
    v125 = v124;
    v119(v122, v121);
    v24 = v192;
    v15 = v116;
    v126 = v179;
    v127 = sub_10021145C(v123, v125, v201);

    v128 = v173;
    *(v173 + 14) = v127;
    v129 = v171;
    _os_log_impl(&_mh_execute_header, v171, v170, "Local Cache: Successfully encrypted record %s, %s", v128, 0x16u);
    swift_arrayDestroy();

    v130 = v118;
  }

  else
  {
    sub_100195024(v102, type metadata accessor for CustodianshipInfoRecord);
    sub_100195024(v101, type metadata accessor for CustodianshipInfoRecord);

    v126 = 0x800000010032CE50;
    v121 = v198;
    v122 = v185;
    v130 = v196;
  }

  v179 = v126;
  v131 = type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v132 = *(v130 + 1);
  v132(v15, v121);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v122, 0);
  v132(v122, v121);
  v173 = v131;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v132(v15, v121);
  UUID.uuidString.getter();
  v133 = v181;
  URL.appendingPathComponent(_:)();
  v134 = v133;

  v135 = v122;
  v136 = v132;
  v180 = v130 + 8;
  v132(v135, v121);
  v138 = v186;
  v137 = v187;
  v139 = v133;
  v140 = v174;
  sub_10030A77C(v186, v187, v139, v182, v183);
  if (v140)
  {
    v136(v134, v121);
    sub_100012324(v138, v137);
    sub_100012324(v175, v176);
    v141 = v184;
    v75 = v199;
    sub_100194C44(v199, v27, type metadata accessor for CustodianshipInfoRecord);
    sub_100194C44(v75, v24, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v201[0] = v199;
      *v78 = 136315650;
      v80 = v193;
      v79 = v194;
      (*(v194 + 16))(v193, v27, v141);
      v187 = v76;
      v183 = type metadata accessor for CustodianshipInfoRecord;
      sub_100195024(v27, type metadata accessor for CustodianshipInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      LODWORD(v186) = v77;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      (*(v79 + 8))(v80, v141);
      v84 = sub_10021145C(v81, v83, v201);

      *(v78 + 4) = v84;
      *(v78 + 12) = 2080;
      type metadata accessor for LocalCache();
      v85 = v195;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v86 = v15;
      v87 = *(v196 + 1);
      v88 = v198;
      v87(v85, v198);
      v89 = v192;
      UUID.uuidString.getter();
      v90 = v185;
      URL.appendingPathComponent(_:)();

      v87(v86, v88);
      sub_100195024(v89, v183);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      v87(v90, v88);
      v94 = sub_10021145C(v91, v93, v201);

      *(v78 + 14) = v94;
      *(v78 + 22) = 2112;
      v95 = _convertErrorToNSError(_:)();
      *(v78 + 24) = v95;
      v96 = v197;
      *v197 = v95;
      v97 = v187;
      _os_log_impl(&_mh_execute_header, v187, v186, "Local Cache: Error adding record %s with URL %s to local disk: %@", v78, 0x20u);
      sub_100008D3C(v96, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v24, type metadata accessor for CustodianshipInfoRecord);
      sub_100195024(v27, type metadata accessor for CustodianshipInfoRecord);
    }

    v98 = v189;
    *v189 = v140;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v191(v98);
  }

  else
  {
    v196 = v15;
    v142 = v136;
    v136(v134, v121);
    v143 = v199;
    v144 = v177;
    sub_100194C44(v199, v177, type metadata accessor for CustodianshipInfoRecord);
    v145 = v178;
    sub_100194C44(v143, v178, type metadata accessor for CustodianshipInfoRecord);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v201[0] = v197;
      *v148 = 136315394;
      v149 = v194;
      v150 = *(v194 + 16);
      v192 = v146;
      v151 = v193;
      LODWORD(v183) = v147;
      v152 = v184;
      v150(v193, v144, v184);
      v182 = type metadata accessor for CustodianshipInfoRecord;
      sub_100195024(v144, type metadata accessor for CustodianshipInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v153 = v145;
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v155;
      (*(v149 + 8))(v151, v152);
      v138 = v186;
      v157 = sub_10021145C(v154, v156, v201);

      *(v148 + 4) = v157;
      *(v148 + 12) = 2080;
      v158 = v195;
      sub_100307F40();
      v159 = v196;
      URL.appendingPathComponent(_:isDirectory:)();
      v160 = v198;
      v142(v158, v198);
      UUID.uuidString.getter();
      v161 = v185;
      URL.appendingPathComponent(_:)();

      v142(v159, v160);
      sub_100195024(v153, v182);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v162 = dispatch thunk of CustomStringConvertible.description.getter();
      v164 = v163;
      v142(v161, v160);
      v165 = sub_10021145C(v162, v164, v201);

      *(v148 + 14) = v165;
      v166 = v192;
      _os_log_impl(&_mh_execute_header, v192, v183, "Local Cache: Successfully saved record to local disk %s, %s", v148, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v145, type metadata accessor for CustodianshipInfoRecord);
      sub_100195024(v144, type metadata accessor for CustodianshipInfoRecord);
    }

    v167 = v176;
    v168 = v175;
    v98 = v189;
    sub_100194C44(v199, v189, type metadata accessor for CustodianshipInfoRecord);
    swift_storeEnumTagMultiPayload();
    v191(v98);
    sub_100012324(v168, v167);
    sub_100012324(v138, v187);
  }

  return sub_100008D3C(v98, &unk_1003DA0E0, &unk_10033F1D0);
}

uint64_t sub_100185A44(uint64_t a1, uint64_t *a2, uint64_t (*a3)(), int a4, void (*a5)(void *), uint64_t a6)
{
  v190 = a6;
  v191 = a5;
  LODWORD(v183) = a4;
  v182 = a3;
  v187 = a2;
  v199 = a1;
  v188 = sub_100005814(&qword_1003DA0F0, qword_100342AC0);
  v6 = *(*(v188 - 8) + 64);
  __chkstk_darwin(v188);
  v189 = (&v169 - v7);
  v198 = type metadata accessor for URL();
  v196 = *(v198 - 8);
  v8 = *(v196 + 8);
  v9 = __chkstk_darwin(v198);
  v181 = (&v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v195 = &v169 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v169 - v14;
  __chkstk_darwin(v13);
  v17 = &v169 - v16;
  v18 = type metadata accessor for UUID();
  v194 = *(v18 - 8);
  v19 = *(v194 + 64);
  __chkstk_darwin(v18);
  v193 = &v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for CustodianRecoverySessionRecord();
  v21 = *(*(v186 - 8) + 64);
  v22 = __chkstk_darwin(v186);
  v24 = (&v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v22);
  v27 = &v169 - v26;
  v28 = __chkstk_darwin(v25);
  v178 = &v169 - v29;
  v30 = __chkstk_darwin(v28);
  v177 = &v169 - v31;
  v32 = __chkstk_darwin(v30);
  v180 = &v169 - v33;
  v34 = __chkstk_darwin(v32);
  v179 = &v169 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v169 - v37;
  __chkstk_darwin(v36);
  v40 = &v169 - v39;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_100008D04(v41, qword_1003FAAE8);
  v43 = v199;
  sub_100194C44(v199, v40, type metadata accessor for CustodianRecoverySessionRecord);
  sub_100194C44(v43, v38, type metadata accessor for CustodianRecoverySessionRecord);
  v197 = v42;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v185 = v17;
  v192 = v24;
  if (v46)
  {
    v47 = v15;
    v48 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v201[0] = v175;
    *v48 = 136315394;
    v49 = v194;
    v50 = *(v194 + 16);
    LODWORD(v174) = v45;
    v51 = v193;
    v50(v193, v40, v18);
    v173 = type metadata accessor for CustodianRecoverySessionRecord;
    sub_100195024(v40, type metadata accessor for CustodianRecoverySessionRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v176 = v27;
    v53 = v52;
    v55 = v54;
    (*(v49 + 8))(v51, v18);
    v56 = sub_10021145C(v53, v55, v201);

    *(v48 + 4) = v56;
    *(v48 + 12) = 2080;
    type metadata accessor for LocalCache();
    v184 = v18;
    v57 = v195;
    sub_100307F40();
    URL.appendingPathComponent(_:isDirectory:)();
    v58 = v47;
    v59 = *(v196 + 1);
    v60 = v57;
    v61 = v198;
    v59(v60, v198);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v59(v58, v61);
    sub_100195024(v38, v173);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    v65 = v61;
    v18 = v184;
    v59(v17, v65);
    v24 = v192;
    v66 = v58;
    v27 = v176;
    v67 = sub_10021145C(v62, v64, v201);

    *(v48 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v44, v174, "Local Cache: Saving record: %s at path: %s", v48, 0x16u);
    swift_arrayDestroy();

    v15 = v66;
  }

  else
  {
    sub_100195024(v38, type metadata accessor for CustodianRecoverySessionRecord);
    sub_100195024(v40, type metadata accessor for CustodianRecoverySessionRecord);
  }

  v68 = v187;
  v69 = v187[2];
  sub_100195084(&qword_1003DD960, type metadata accessor for CustodianRecoverySessionRecord);

  v70 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v72 = v71;

  v73 = v68[5];

  v74 = objc_autoreleasePoolPush();
  sub_10030348C(v70, v72, &v200, v201);
  v174 = 0;
  v175 = v70;
  v176 = v72;
  objc_autoreleasePoolPop(v74);

  v186 = v201[0];
  v187 = v201[1];
  v100 = v199;
  v101 = v179;
  sub_100194C44(v199, v179, type metadata accessor for CustodianRecoverySessionRecord);
  v102 = v180;
  sub_100194C44(v100, v180, type metadata accessor for CustodianRecoverySessionRecord);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  v105 = os_log_type_enabled(v103, v104);
  v184 = v18;
  if (v105)
  {
    v106 = swift_slowAlloc();
    v173 = v106;
    v172 = swift_slowAlloc();
    v201[0] = v172;
    *v106 = 136315394;
    v108 = v193;
    v107 = v194;
    (*(v194 + 16))(v193, v101, v18);
    v169 = type metadata accessor for CustodianRecoverySessionRecord;
    sub_100195024(v101, type metadata accessor for CustodianRecoverySessionRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v171 = v103;
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v170 = v104;
    v110 = v109;
    v112 = v111;
    (*(v107 + 8))(v108, v18);
    v113 = sub_10021145C(v110, v112, v201);

    v114 = v173;
    *(v173 + 4) = v113;
    *(v114 + 6) = 2080;
    type metadata accessor for LocalCache();
    v115 = v195;
    sub_100307F40();
    v179 = 0x800000010032CDB0;
    URL.appendingPathComponent(_:isDirectory:)();
    v116 = v15;
    v117 = v102;
    v118 = v196;
    v119 = *(v196 + 1);
    v120 = v115;
    v121 = v198;
    v119(v120, v198);
    UUID.uuidString.getter();
    v122 = v185;
    URL.appendingPathComponent(_:)();

    v119(v116, v121);
    sub_100195024(v117, v169);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v123 = dispatch thunk of CustomStringConvertible.description.getter();
    v125 = v124;
    v119(v122, v121);
    v24 = v192;
    v15 = v116;
    v126 = v179;
    v127 = sub_10021145C(v123, v125, v201);

    v128 = v173;
    *(v173 + 14) = v127;
    v129 = v171;
    _os_log_impl(&_mh_execute_header, v171, v170, "Local Cache: Successfully encrypted record %s, %s", v128, 0x16u);
    swift_arrayDestroy();

    v130 = v118;
  }

  else
  {
    sub_100195024(v102, type metadata accessor for CustodianRecoverySessionRecord);
    sub_100195024(v101, type metadata accessor for CustodianRecoverySessionRecord);

    v126 = 0x800000010032CDB0;
    v121 = v198;
    v122 = v185;
    v130 = v196;
  }

  v179 = v126;
  v131 = type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v132 = *(v130 + 1);
  v132(v15, v121);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v122, 0);
  v132(v122, v121);
  v173 = v131;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v132(v15, v121);
  UUID.uuidString.getter();
  v133 = v181;
  URL.appendingPathComponent(_:)();
  v134 = v133;

  v135 = v122;
  v136 = v132;
  v180 = v130 + 8;
  v132(v135, v121);
  v138 = v186;
  v137 = v187;
  v139 = v133;
  v140 = v174;
  sub_10030A77C(v186, v187, v139, v182, v183);
  if (v140)
  {
    v136(v134, v121);
    sub_100012324(v138, v137);
    sub_100012324(v175, v176);
    v141 = v184;
    v75 = v199;
    sub_100194C44(v199, v27, type metadata accessor for CustodianRecoverySessionRecord);
    sub_100194C44(v75, v24, type metadata accessor for CustodianRecoverySessionRecord);
    swift_errorRetain();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v201[0] = v199;
      *v78 = 136315650;
      v80 = v193;
      v79 = v194;
      (*(v194 + 16))(v193, v27, v141);
      v187 = v76;
      v183 = type metadata accessor for CustodianRecoverySessionRecord;
      sub_100195024(v27, type metadata accessor for CustodianRecoverySessionRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      LODWORD(v186) = v77;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      (*(v79 + 8))(v80, v141);
      v84 = sub_10021145C(v81, v83, v201);

      *(v78 + 4) = v84;
      *(v78 + 12) = 2080;
      type metadata accessor for LocalCache();
      v85 = v195;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v86 = v15;
      v87 = *(v196 + 1);
      v88 = v198;
      v87(v85, v198);
      v89 = v192;
      UUID.uuidString.getter();
      v90 = v185;
      URL.appendingPathComponent(_:)();

      v87(v86, v88);
      sub_100195024(v89, v183);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v92;
      v87(v90, v88);
      v94 = sub_10021145C(v91, v93, v201);

      *(v78 + 14) = v94;
      *(v78 + 22) = 2112;
      v95 = _convertErrorToNSError(_:)();
      *(v78 + 24) = v95;
      v96 = v197;
      *v197 = v95;
      v97 = v187;
      _os_log_impl(&_mh_execute_header, v187, v186, "Local Cache: Error adding record %s with URL %s to local disk: %@", v78, 0x20u);
      sub_100008D3C(v96, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v24, type metadata accessor for CustodianRecoverySessionRecord);
      sub_100195024(v27, type metadata accessor for CustodianRecoverySessionRecord);
    }

    v98 = v189;
    *v189 = v140;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v191(v98);
  }

  else
  {
    v196 = v15;
    v142 = v136;
    v136(v134, v121);
    v143 = v199;
    v144 = v177;
    sub_100194C44(v199, v177, type metadata accessor for CustodianRecoverySessionRecord);
    v145 = v178;
    sub_100194C44(v143, v178, type metadata accessor for CustodianRecoverySessionRecord);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v201[0] = v197;
      *v148 = 136315394;
      v149 = v194;
      v150 = *(v194 + 16);
      v192 = v146;
      v151 = v193;
      LODWORD(v183) = v147;
      v152 = v184;
      v150(v193, v144, v184);
      v182 = type metadata accessor for CustodianRecoverySessionRecord;
      sub_100195024(v144, type metadata accessor for CustodianRecoverySessionRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v153 = v145;
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v155;
      (*(v149 + 8))(v151, v152);
      v138 = v186;
      v157 = sub_10021145C(v154, v156, v201);

      *(v148 + 4) = v157;
      *(v148 + 12) = 2080;
      v158 = v195;
      sub_100307F40();
      v159 = v196;
      URL.appendingPathComponent(_:isDirectory:)();
      v160 = v198;
      v142(v158, v198);
      UUID.uuidString.getter();
      v161 = v185;
      URL.appendingPathComponent(_:)();

      v142(v159, v160);
      sub_100195024(v153, v182);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v162 = dispatch thunk of CustomStringConvertible.description.getter();
      v164 = v163;
      v142(v161, v160);
      v165 = sub_10021145C(v162, v164, v201);

      *(v148 + 14) = v165;
      v166 = v192;
      _os_log_impl(&_mh_execute_header, v192, v183, "Local Cache: Successfully saved record to local disk %s, %s", v148, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v145, type metadata accessor for CustodianRecoverySessionRecord);
      sub_100195024(v144, type metadata accessor for CustodianRecoverySessionRecord);
    }

    v167 = v176;
    v168 = v175;
    v98 = v189;
    sub_100194C44(v199, v189, type metadata accessor for CustodianRecoverySessionRecord);
    swift_storeEnumTagMultiPayload();
    v191(v98);
    sub_100012324(v168, v167);
    sub_100012324(v138, v187);
  }

  return sub_100008D3C(v98, &qword_1003DA0F0, qword_100342AC0);
}

uint64_t sub_100186F34(uint64_t a1, uint64_t *a2, uint64_t (*a3)(), int a4, void (*a5)(void *), uint64_t a6)
{
  v196 = a6;
  v197 = a5;
  LODWORD(v188) = a4;
  v187 = a3;
  v193 = a2;
  v207 = a1;
  v194 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v6 = *(*(v194 - 8) + 64);
  __chkstk_darwin(v194);
  v195 = (&v175 - v7);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v186 = (&v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v201 = &v175 - v14;
  v15 = __chkstk_darwin(v13);
  v204 = &v175 - v16;
  __chkstk_darwin(v15);
  v18 = &v175 - v17;
  v200 = type metadata accessor for UUID();
  v206 = *(v200 - 8);
  v19 = *(v206 + 64);
  __chkstk_darwin(v200);
  v199 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for InheritanceHealthRecord();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v202 = &v175 - v27;
  v28 = __chkstk_darwin(v26);
  v184 = &v175 - v29;
  v30 = __chkstk_darwin(v28);
  v183 = &v175 - v31;
  v32 = __chkstk_darwin(v30);
  v189 = &v175 - v33;
  v34 = __chkstk_darwin(v32);
  v185 = (&v175 - v35);
  v36 = __chkstk_darwin(v34);
  v38 = &v175 - v37;
  __chkstk_darwin(v36);
  v40 = &v175 - v39;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_100008D04(v41, qword_1003FAAE8);
  v43 = v207;
  sub_100194C44(v207, v40, type metadata accessor for InheritanceHealthRecord);
  sub_100194C44(v43, v38, type metadata accessor for InheritanceHealthRecord);
  v203 = v42;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v191 = v18;
  v190 = v9;
  v198 = v25;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v205 = v21;
    v48 = v47;
    v192 = swift_slowAlloc();
    v209[0] = v192;
    *v48 = 136315394;
    v49 = *(v206 + 16);
    v50 = &v40[*(v205 + 28)];
    LODWORD(v182) = v45;
    v51 = v199;
    v52 = v200;
    v49(v199, v50, v200);
    v181 = type metadata accessor for InheritanceHealthRecord;
    sub_100195024(v40, type metadata accessor for InheritanceHealthRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    (*(v206 + 8))(v51, v52);
    v56 = sub_10021145C(v53, v55, v209);

    *(v48 + 4) = v56;
    *(v48 + 12) = 2080;
    type metadata accessor for LocalCache();
    v57 = v201;
    sub_100307F40();
    v58 = v204;
    URL.appendingPathComponent(_:isDirectory:)();
    v59 = v9;
    v60 = v58;
    v61 = v59[1];
    v61(v57, v8);
    v62 = &v38[*(v205 + 28)];
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v61(v60, v8);
    sub_100195024(v38, v181);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    v61(v18, v8);
    v25 = v198;
    v66 = sub_10021145C(v63, v65, v209);

    *(v48 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v44, v182, "Local Cache: Saving record: %s at path: %s", v48, 0x16u);
    swift_arrayDestroy();

    v21 = v205;
  }

  else
  {
    sub_100195024(v38, type metadata accessor for InheritanceHealthRecord);
    sub_100195024(v40, type metadata accessor for InheritanceHealthRecord);
  }

  v67 = v193;
  v68 = v193[2];
  sub_100195084(&qword_1003E0E38, type metadata accessor for InheritanceHealthRecord);

  v69 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v192 = v70;
  v71 = v69;

  v72 = v67[5];

  v73 = objc_autoreleasePoolPush();
  sub_10030348C(v71, v192, &v208, v209);
  v180 = 0;
  v181 = v71;
  objc_autoreleasePoolPop(v73);

  v182 = v209[0];
  v193 = v209[1];
  v103 = v207;
  v104 = v185;
  sub_100194C44(v207, v185, type metadata accessor for InheritanceHealthRecord);
  v105 = v189;
  sub_100194C44(v103, v189, type metadata accessor for InheritanceHealthRecord);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();
  v108 = os_log_type_enabled(v106, v107);
  v205 = v21;
  if (v108)
  {
    v109 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v209[0] = v179;
    *v109 = 136315394;
    v110 = v206;
    v111 = *(v206 + 16);
    v112 = v104 + *(v21 + 28);
    v113 = v199;
    v178 = v107;
    v114 = v200;
    v111(v199, v112, v200);
    v177 = type metadata accessor for InheritanceHealthRecord;
    sub_100195024(v104, type metadata accessor for InheritanceHealthRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v185 = v106;
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v116;
    (*(v110 + 8))(v113, v114);
    v118 = sub_10021145C(v115, v117, v209);

    v176 = v109;
    *(v109 + 4) = v118;
    *(v109 + 12) = 2080;
    type metadata accessor for LocalCache();
    v119 = v201;
    sub_100307F40();
    v120 = v204;
    URL.appendingPathComponent(_:isDirectory:)();
    v121 = v190;
    v122 = *(v190 + 1);
    v122(v119, v8);
    v123 = v189;
    v124 = v189 + *(v21 + 28);
    UUID.uuidString.getter();
    v125 = v191;
    URL.appendingPathComponent(_:)();

    v122(v120, v8);
    sub_100195024(v123, v177);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v126 = dispatch thunk of CustomStringConvertible.description.getter();
    v128 = v127;
    v122(v125, v8);
    v25 = v198;
    v129 = sub_10021145C(v126, v128, v209);

    v130 = v176;
    *(v176 + 14) = v129;
    v131 = v185;
    _os_log_impl(&_mh_execute_header, v185, v178, "Local Cache: Successfully encrypted record %s, %s", v130, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v105, type metadata accessor for InheritanceHealthRecord);
    sub_100195024(v104, type metadata accessor for InheritanceHealthRecord);

    v125 = v191;
    v121 = v190;
  }

  v132 = type metadata accessor for LocalCache();
  v133 = v204;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v134 = v121[1];
  v134(v133, v8);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v125, 0);
  v134(v125, v8);
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v134(v133, v8);
  v135 = v207 + *(v205 + 28);
  UUID.uuidString.getter();
  v136 = v186;
  URL.appendingPathComponent(_:)();
  v137 = v134;

  v134(v125, v8);
  v138 = v182;
  v139 = v193;
  v140 = v180;
  sub_10030A77C(v182, v193, v136, v187, v188);
  if (v140)
  {
    v137(v136, v8);
    sub_100012324(v138, v139);
    sub_100012324(v181, v192);
    v141 = v205;
    v142 = v202;
    v74 = v207;
    sub_100194C44(v207, v202, type metadata accessor for InheritanceHealthRecord);
    sub_100194C44(v74, v25, type metadata accessor for InheritanceHealthRecord);
    swift_errorRetain();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      v209[0] = v207;
      *v77 = 136315650;
      v78 = v206;
      v79 = *(v206 + 16);
      v80 = v142 + *(v141 + 28);
      v81 = v199;
      LODWORD(v202) = v76;
      v82 = v200;
      v79(v199, v80, v200);
      v192 = type metadata accessor for InheritanceHealthRecord;
      sub_100195024(v142, type metadata accessor for InheritanceHealthRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v193 = v75;
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v141;
      v85 = v8;
      v87 = v86;
      (*(v78 + 8))(v81, v82);
      v88 = sub_10021145C(v83, v87, v209);

      *(v77 + 4) = v88;
      *(v77 + 12) = 2080;
      type metadata accessor for LocalCache();
      v89 = v201;
      sub_100307F40();
      v90 = v204;
      URL.appendingPathComponent(_:isDirectory:)();
      v91 = *(v190 + 1);
      v91(v89, v85);
      v92 = *(v84 + 28);
      v93 = v198;
      UUID.uuidString.getter();
      v94 = v191;
      URL.appendingPathComponent(_:)();

      v91(v90, v85);
      sub_100195024(v93, v192);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      v91(v94, v85);
      v98 = sub_10021145C(v95, v97, v209);

      *(v77 + 14) = v98;
      *(v77 + 22) = 2112;
      v99 = _convertErrorToNSError(_:)();
      *(v77 + 24) = v99;
      v100 = v203;
      *v203 = v99;
      v75 = v193;
      _os_log_impl(&_mh_execute_header, v193, v202, "Local Cache: Error adding record %s with URL %s to local disk: %@", v77, 0x20u);
      sub_100008D3C(v100, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v25, type metadata accessor for InheritanceHealthRecord);
      sub_100195024(v142, type metadata accessor for InheritanceHealthRecord);
    }

    v101 = v195;
    *v195 = v140;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v197(v101);
  }

  else
  {
    v198 = v132;
    v202 = 0x8000000100330300;
    v190 = v137;
    v137(v136, v8);
    v143 = v207;
    v144 = v183;
    sub_100194C44(v207, v183, type metadata accessor for InheritanceHealthRecord);
    v145 = v184;
    sub_100194C44(v143, v184, type metadata accessor for InheritanceHealthRecord);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v209[0] = v203;
      *v148 = 136315394;
      LODWORD(v189) = v147;
      v149 = v205;
      v150 = v206;
      v151 = *(v206 + 16);
      v152 = v144 + *(v205 + 28);
      v188 = v146;
      v153 = v199;
      v154 = v200;
      v151(v199, v152, v200);
      v187 = type metadata accessor for InheritanceHealthRecord;
      sub_100195024(v144, type metadata accessor for InheritanceHealthRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v155 = v145;
      v156 = dispatch thunk of CustomStringConvertible.description.getter();
      v157 = v204;
      v158 = v150;
      v159 = v8;
      v161 = v160;
      (*(v158 + 8))(v153, v154);
      v162 = sub_10021145C(v156, v161, v209);

      *(v148 + 4) = v162;
      *(v148 + 12) = 2080;
      v163 = v148;
      v164 = v201;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v165 = v190;
      v190(v164, v159);
      v166 = v155 + *(v149 + 28);
      UUID.uuidString.getter();
      v167 = v191;
      URL.appendingPathComponent(_:)();

      v165(v157, v159);
      sub_100195024(v155, v187);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v168 = dispatch thunk of CustomStringConvertible.description.getter();
      v170 = v169;
      v171 = v167;
      v138 = v182;
      v165(v171, v159);
      v172 = sub_10021145C(v168, v170, v209);

      *(v163 + 14) = v172;
      v173 = v188;
      _os_log_impl(&_mh_execute_header, v188, v189, "Local Cache: Successfully saved record to local disk %s, %s", v163, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v145, type metadata accessor for InheritanceHealthRecord);
      sub_100195024(v144, type metadata accessor for InheritanceHealthRecord);
    }

    v174 = v181;
    v101 = v195;
    sub_100194C44(v207, v195, type metadata accessor for InheritanceHealthRecord);
    swift_storeEnumTagMultiPayload();
    v197(v101);
    sub_100012324(v174, v192);
    sub_100012324(v138, v193);
  }

  return sub_100008D3C(v101, &unk_1003E10C0, &qword_100346A70);
}

uint64_t sub_100188450(uint64_t a1, uint64_t *a2, uint64_t (*a3)(), int a4, void (*a5)(void *), uint64_t a6)
{
  v196 = a6;
  v197 = a5;
  LODWORD(v188) = a4;
  v187 = a3;
  v193 = a2;
  v207 = a1;
  v194 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v6 = *(*(v194 - 8) + 64);
  __chkstk_darwin(v194);
  v195 = (&v175 - v7);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v186 = (&v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v201 = &v175 - v14;
  v15 = __chkstk_darwin(v13);
  v204 = &v175 - v16;
  __chkstk_darwin(v15);
  v18 = &v175 - v17;
  v200 = type metadata accessor for UUID();
  v206 = *(v200 - 8);
  v19 = *(v206 + 64);
  __chkstk_darwin(v200);
  v199 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for BeneficiaryInfoRecord();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v202 = &v175 - v27;
  v28 = __chkstk_darwin(v26);
  v184 = &v175 - v29;
  v30 = __chkstk_darwin(v28);
  v183 = &v175 - v31;
  v32 = __chkstk_darwin(v30);
  v189 = &v175 - v33;
  v34 = __chkstk_darwin(v32);
  v185 = (&v175 - v35);
  v36 = __chkstk_darwin(v34);
  v38 = &v175 - v37;
  __chkstk_darwin(v36);
  v40 = &v175 - v39;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_100008D04(v41, qword_1003FAAE8);
  v43 = v207;
  sub_100194C44(v207, v40, type metadata accessor for BeneficiaryInfoRecord);
  sub_100194C44(v43, v38, type metadata accessor for BeneficiaryInfoRecord);
  v203 = v42;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v191 = v18;
  v190 = v9;
  v198 = v25;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v205 = v21;
    v48 = v47;
    v192 = swift_slowAlloc();
    v209[0] = v192;
    *v48 = 136315394;
    v49 = *(v206 + 16);
    v50 = &v40[*(v205 + 32)];
    LODWORD(v182) = v45;
    v51 = v199;
    v52 = v200;
    v49(v199, v50, v200);
    v181 = type metadata accessor for BeneficiaryInfoRecord;
    sub_100195024(v40, type metadata accessor for BeneficiaryInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    (*(v206 + 8))(v51, v52);
    v56 = sub_10021145C(v53, v55, v209);

    *(v48 + 4) = v56;
    *(v48 + 12) = 2080;
    type metadata accessor for LocalCache();
    v57 = v201;
    sub_100307F40();
    v58 = v204;
    URL.appendingPathComponent(_:isDirectory:)();
    v59 = v9;
    v60 = v58;
    v61 = v59[1];
    v61(v57, v8);
    v62 = &v38[*(v205 + 32)];
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v61(v60, v8);
    sub_100195024(v38, v181);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    v61(v18, v8);
    v25 = v198;
    v66 = sub_10021145C(v63, v65, v209);

    *(v48 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v44, v182, "Local Cache: Saving record: %s at path: %s", v48, 0x16u);
    swift_arrayDestroy();

    v21 = v205;
  }

  else
  {
    sub_100195024(v38, type metadata accessor for BeneficiaryInfoRecord);
    sub_100195024(v40, type metadata accessor for BeneficiaryInfoRecord);
  }

  v67 = v193;
  v68 = v193[2];
  sub_100195084(&qword_1003E0E68, type metadata accessor for BeneficiaryInfoRecord);

  v69 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v192 = v70;
  v71 = v69;

  v72 = v67[5];

  v73 = objc_autoreleasePoolPush();
  sub_10030348C(v71, v192, &v208, v209);
  v180 = 0;
  v181 = v71;
  objc_autoreleasePoolPop(v73);

  v182 = v209[0];
  v193 = v209[1];
  v103 = v207;
  v104 = v185;
  sub_100194C44(v207, v185, type metadata accessor for BeneficiaryInfoRecord);
  v105 = v189;
  sub_100194C44(v103, v189, type metadata accessor for BeneficiaryInfoRecord);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();
  v108 = os_log_type_enabled(v106, v107);
  v205 = v21;
  if (v108)
  {
    v109 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v209[0] = v179;
    *v109 = 136315394;
    v110 = v206;
    v111 = *(v206 + 16);
    v112 = v104 + *(v21 + 32);
    v113 = v199;
    v178 = v107;
    v114 = v200;
    v111(v199, v112, v200);
    v177 = type metadata accessor for BeneficiaryInfoRecord;
    sub_100195024(v104, type metadata accessor for BeneficiaryInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v185 = v106;
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v116;
    (*(v110 + 8))(v113, v114);
    v118 = sub_10021145C(v115, v117, v209);

    v176 = v109;
    *(v109 + 4) = v118;
    *(v109 + 12) = 2080;
    type metadata accessor for LocalCache();
    v119 = v201;
    sub_100307F40();
    v120 = v204;
    URL.appendingPathComponent(_:isDirectory:)();
    v121 = v190;
    v122 = *(v190 + 1);
    v122(v119, v8);
    v123 = v189;
    v124 = v189 + *(v21 + 32);
    UUID.uuidString.getter();
    v125 = v191;
    URL.appendingPathComponent(_:)();

    v122(v120, v8);
    sub_100195024(v123, v177);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v126 = dispatch thunk of CustomStringConvertible.description.getter();
    v128 = v127;
    v122(v125, v8);
    v25 = v198;
    v129 = sub_10021145C(v126, v128, v209);

    v130 = v176;
    *(v176 + 14) = v129;
    v131 = v185;
    _os_log_impl(&_mh_execute_header, v185, v178, "Local Cache: Successfully encrypted record %s, %s", v130, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v105, type metadata accessor for BeneficiaryInfoRecord);
    sub_100195024(v104, type metadata accessor for BeneficiaryInfoRecord);

    v125 = v191;
    v121 = v190;
  }

  v132 = type metadata accessor for LocalCache();
  v133 = v204;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v134 = v121[1];
  v134(v133, v8);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v125, 0);
  v134(v125, v8);
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v134(v133, v8);
  v135 = v207 + *(v205 + 32);
  UUID.uuidString.getter();
  v136 = v186;
  URL.appendingPathComponent(_:)();
  v137 = v134;

  v134(v125, v8);
  v138 = v182;
  v139 = v193;
  v140 = v180;
  sub_10030A77C(v182, v193, v136, v187, v188);
  if (v140)
  {
    v137(v136, v8);
    sub_100012324(v138, v139);
    sub_100012324(v181, v192);
    v141 = v205;
    v142 = v202;
    v74 = v207;
    sub_100194C44(v207, v202, type metadata accessor for BeneficiaryInfoRecord);
    sub_100194C44(v74, v25, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      v209[0] = v207;
      *v77 = 136315650;
      v78 = v206;
      v79 = *(v206 + 16);
      v80 = v142 + *(v141 + 32);
      v81 = v199;
      LODWORD(v202) = v76;
      v82 = v200;
      v79(v199, v80, v200);
      v192 = type metadata accessor for BeneficiaryInfoRecord;
      sub_100195024(v142, type metadata accessor for BeneficiaryInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v193 = v75;
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v141;
      v85 = v8;
      v87 = v86;
      (*(v78 + 8))(v81, v82);
      v88 = sub_10021145C(v83, v87, v209);

      *(v77 + 4) = v88;
      *(v77 + 12) = 2080;
      type metadata accessor for LocalCache();
      v89 = v201;
      sub_100307F40();
      v90 = v204;
      URL.appendingPathComponent(_:isDirectory:)();
      v91 = *(v190 + 1);
      v91(v89, v85);
      v92 = *(v84 + 32);
      v93 = v198;
      UUID.uuidString.getter();
      v94 = v191;
      URL.appendingPathComponent(_:)();

      v91(v90, v85);
      sub_100195024(v93, v192);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      v91(v94, v85);
      v98 = sub_10021145C(v95, v97, v209);

      *(v77 + 14) = v98;
      *(v77 + 22) = 2112;
      v99 = _convertErrorToNSError(_:)();
      *(v77 + 24) = v99;
      v100 = v203;
      *v203 = v99;
      v75 = v193;
      _os_log_impl(&_mh_execute_header, v193, v202, "Local Cache: Error adding record %s with URL %s to local disk: %@", v77, 0x20u);
      sub_100008D3C(v100, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v25, type metadata accessor for BeneficiaryInfoRecord);
      sub_100195024(v142, type metadata accessor for BeneficiaryInfoRecord);
    }

    v101 = v195;
    *v195 = v140;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v197(v101);
  }

  else
  {
    v198 = v132;
    v202 = 0x8000000100330350;
    v190 = v137;
    v137(v136, v8);
    v143 = v207;
    v144 = v183;
    sub_100194C44(v207, v183, type metadata accessor for BeneficiaryInfoRecord);
    v145 = v184;
    sub_100194C44(v143, v184, type metadata accessor for BeneficiaryInfoRecord);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v209[0] = v203;
      *v148 = 136315394;
      LODWORD(v189) = v147;
      v149 = v205;
      v150 = v206;
      v151 = *(v206 + 16);
      v152 = v144 + *(v205 + 32);
      v188 = v146;
      v153 = v199;
      v154 = v200;
      v151(v199, v152, v200);
      v187 = type metadata accessor for BeneficiaryInfoRecord;
      sub_100195024(v144, type metadata accessor for BeneficiaryInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v155 = v145;
      v156 = dispatch thunk of CustomStringConvertible.description.getter();
      v157 = v204;
      v158 = v150;
      v159 = v8;
      v161 = v160;
      (*(v158 + 8))(v153, v154);
      v162 = sub_10021145C(v156, v161, v209);

      *(v148 + 4) = v162;
      *(v148 + 12) = 2080;
      v163 = v148;
      v164 = v201;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v165 = v190;
      v190(v164, v159);
      v166 = v155 + *(v149 + 32);
      UUID.uuidString.getter();
      v167 = v191;
      URL.appendingPathComponent(_:)();

      v165(v157, v159);
      sub_100195024(v155, v187);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v168 = dispatch thunk of CustomStringConvertible.description.getter();
      v170 = v169;
      v171 = v167;
      v138 = v182;
      v165(v171, v159);
      v172 = sub_10021145C(v168, v170, v209);

      *(v163 + 14) = v172;
      v173 = v188;
      _os_log_impl(&_mh_execute_header, v188, v189, "Local Cache: Successfully saved record to local disk %s, %s", v163, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v145, type metadata accessor for BeneficiaryInfoRecord);
      sub_100195024(v144, type metadata accessor for BeneficiaryInfoRecord);
    }

    v174 = v181;
    v101 = v195;
    sub_100194C44(v207, v195, type metadata accessor for BeneficiaryInfoRecord);
    swift_storeEnumTagMultiPayload();
    v197(v101);
    sub_100012324(v174, v192);
    sub_100012324(v138, v193);
  }

  return sub_100008D3C(v101, &unk_1003E10A0, &unk_100344480);
}

uint64_t sub_10018996C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(), int a4, void (*a5)(void *), uint64_t a6)
{
  v196 = a6;
  v197 = a5;
  LODWORD(v188) = a4;
  v187 = a3;
  v193 = a2;
  v207 = a1;
  v194 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v6 = *(*(v194 - 8) + 64);
  __chkstk_darwin(v194);
  v195 = (&v175 - v7);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v186 = (&v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v201 = &v175 - v14;
  v15 = __chkstk_darwin(v13);
  v204 = &v175 - v16;
  __chkstk_darwin(v15);
  v18 = &v175 - v17;
  v200 = type metadata accessor for UUID();
  v206 = *(v200 - 8);
  v19 = *(v206 + 64);
  __chkstk_darwin(v200);
  v199 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for InheritanceInvitationRecord();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v202 = &v175 - v27;
  v28 = __chkstk_darwin(v26);
  v184 = &v175 - v29;
  v30 = __chkstk_darwin(v28);
  v183 = &v175 - v31;
  v32 = __chkstk_darwin(v30);
  v189 = &v175 - v33;
  v34 = __chkstk_darwin(v32);
  v185 = (&v175 - v35);
  v36 = __chkstk_darwin(v34);
  v38 = &v175 - v37;
  __chkstk_darwin(v36);
  v40 = &v175 - v39;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_100008D04(v41, qword_1003FAAE8);
  v43 = v207;
  sub_100194C44(v207, v40, type metadata accessor for InheritanceInvitationRecord);
  sub_100194C44(v43, v38, type metadata accessor for InheritanceInvitationRecord);
  v203 = v42;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v191 = v18;
  v190 = v9;
  v198 = v25;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v205 = v21;
    v48 = v47;
    v192 = swift_slowAlloc();
    v209[0] = v192;
    *v48 = 136315394;
    v49 = *(v206 + 16);
    v50 = &v40[*(v205 + 36)];
    LODWORD(v182) = v45;
    v51 = v199;
    v52 = v200;
    v49(v199, v50, v200);
    v181 = type metadata accessor for InheritanceInvitationRecord;
    sub_100195024(v40, type metadata accessor for InheritanceInvitationRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    (*(v206 + 8))(v51, v52);
    v56 = sub_10021145C(v53, v55, v209);

    *(v48 + 4) = v56;
    *(v48 + 12) = 2080;
    type metadata accessor for LocalCache();
    v57 = v201;
    sub_100307F40();
    v58 = v204;
    URL.appendingPathComponent(_:isDirectory:)();
    v59 = v9;
    v60 = v58;
    v61 = v59[1];
    v61(v57, v8);
    v62 = &v38[*(v205 + 36)];
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v61(v60, v8);
    sub_100195024(v38, v181);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    v61(v18, v8);
    v25 = v198;
    v66 = sub_10021145C(v63, v65, v209);

    *(v48 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v44, v182, "Local Cache: Saving record: %s at path: %s", v48, 0x16u);
    swift_arrayDestroy();

    v21 = v205;
  }

  else
  {
    sub_100195024(v38, type metadata accessor for InheritanceInvitationRecord);
    sub_100195024(v40, type metadata accessor for InheritanceInvitationRecord);
  }

  v67 = v193;
  v68 = v193[2];
  sub_100195084(&qword_1003E0E60, type metadata accessor for InheritanceInvitationRecord);

  v69 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v192 = v70;
  v71 = v69;

  v72 = v67[5];

  v73 = objc_autoreleasePoolPush();
  sub_10030348C(v71, v192, &v208, v209);
  v180 = 0;
  v181 = v71;
  objc_autoreleasePoolPop(v73);

  v182 = v209[0];
  v193 = v209[1];
  v103 = v207;
  v104 = v185;
  sub_100194C44(v207, v185, type metadata accessor for InheritanceInvitationRecord);
  v105 = v189;
  sub_100194C44(v103, v189, type metadata accessor for InheritanceInvitationRecord);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();
  v108 = os_log_type_enabled(v106, v107);
  v205 = v21;
  if (v108)
  {
    v109 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v209[0] = v179;
    *v109 = 136315394;
    v110 = v206;
    v111 = *(v206 + 16);
    v112 = v104 + *(v21 + 36);
    v113 = v199;
    v178 = v107;
    v114 = v200;
    v111(v199, v112, v200);
    v177 = type metadata accessor for InheritanceInvitationRecord;
    sub_100195024(v104, type metadata accessor for InheritanceInvitationRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v185 = v106;
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v116;
    (*(v110 + 8))(v113, v114);
    v118 = sub_10021145C(v115, v117, v209);

    v176 = v109;
    *(v109 + 4) = v118;
    *(v109 + 12) = 2080;
    type metadata accessor for LocalCache();
    v119 = v201;
    sub_100307F40();
    v120 = v204;
    URL.appendingPathComponent(_:isDirectory:)();
    v121 = v190;
    v122 = *(v190 + 1);
    v122(v119, v8);
    v123 = v189;
    v124 = v189 + *(v21 + 36);
    UUID.uuidString.getter();
    v125 = v191;
    URL.appendingPathComponent(_:)();

    v122(v120, v8);
    sub_100195024(v123, v177);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v126 = dispatch thunk of CustomStringConvertible.description.getter();
    v128 = v127;
    v122(v125, v8);
    v25 = v198;
    v129 = sub_10021145C(v126, v128, v209);

    v130 = v176;
    *(v176 + 14) = v129;
    v131 = v185;
    _os_log_impl(&_mh_execute_header, v185, v178, "Local Cache: Successfully encrypted record %s, %s", v130, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v105, type metadata accessor for InheritanceInvitationRecord);
    sub_100195024(v104, type metadata accessor for InheritanceInvitationRecord);

    v125 = v191;
    v121 = v190;
  }

  v132 = type metadata accessor for LocalCache();
  v133 = v204;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v134 = v121[1];
  v134(v133, v8);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v125, 0);
  v134(v125, v8);
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v134(v133, v8);
  v135 = v207 + *(v205 + 36);
  UUID.uuidString.getter();
  v136 = v186;
  URL.appendingPathComponent(_:)();
  v137 = v134;

  v134(v125, v8);
  v138 = v182;
  v139 = v193;
  v140 = v180;
  sub_10030A77C(v182, v193, v136, v187, v188);
  if (v140)
  {
    v137(v136, v8);
    sub_100012324(v138, v139);
    sub_100012324(v181, v192);
    v141 = v205;
    v142 = v202;
    v74 = v207;
    sub_100194C44(v207, v202, type metadata accessor for InheritanceInvitationRecord);
    sub_100194C44(v74, v25, type metadata accessor for InheritanceInvitationRecord);
    swift_errorRetain();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      v209[0] = v207;
      *v77 = 136315650;
      v78 = v206;
      v79 = *(v206 + 16);
      v80 = v142 + *(v141 + 36);
      v81 = v199;
      LODWORD(v202) = v76;
      v82 = v200;
      v79(v199, v80, v200);
      v192 = type metadata accessor for InheritanceInvitationRecord;
      sub_100195024(v142, type metadata accessor for InheritanceInvitationRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v193 = v75;
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v141;
      v85 = v8;
      v87 = v86;
      (*(v78 + 8))(v81, v82);
      v88 = sub_10021145C(v83, v87, v209);

      *(v77 + 4) = v88;
      *(v77 + 12) = 2080;
      type metadata accessor for LocalCache();
      v89 = v201;
      sub_100307F40();
      v90 = v204;
      URL.appendingPathComponent(_:isDirectory:)();
      v91 = *(v190 + 1);
      v91(v89, v85);
      v92 = *(v84 + 36);
      v93 = v198;
      UUID.uuidString.getter();
      v94 = v191;
      URL.appendingPathComponent(_:)();

      v91(v90, v85);
      sub_100195024(v93, v192);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      v91(v94, v85);
      v98 = sub_10021145C(v95, v97, v209);

      *(v77 + 14) = v98;
      *(v77 + 22) = 2112;
      v99 = _convertErrorToNSError(_:)();
      *(v77 + 24) = v99;
      v100 = v203;
      *v203 = v99;
      v75 = v193;
      _os_log_impl(&_mh_execute_header, v193, v202, "Local Cache: Error adding record %s with URL %s to local disk: %@", v77, 0x20u);
      sub_100008D3C(v100, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v25, type metadata accessor for InheritanceInvitationRecord);
      sub_100195024(v142, type metadata accessor for InheritanceInvitationRecord);
    }

    v101 = v195;
    *v195 = v140;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v197(v101);
  }

  else
  {
    v198 = v132;
    v202 = 0x8000000100330380;
    v190 = v137;
    v137(v136, v8);
    v143 = v207;
    v144 = v183;
    sub_100194C44(v207, v183, type metadata accessor for InheritanceInvitationRecord);
    v145 = v184;
    sub_100194C44(v143, v184, type metadata accessor for InheritanceInvitationRecord);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v209[0] = v203;
      *v148 = 136315394;
      LODWORD(v189) = v147;
      v149 = v205;
      v150 = v206;
      v151 = *(v206 + 16);
      v152 = v144 + *(v205 + 36);
      v188 = v146;
      v153 = v199;
      v154 = v200;
      v151(v199, v152, v200);
      v187 = type metadata accessor for InheritanceInvitationRecord;
      sub_100195024(v144, type metadata accessor for InheritanceInvitationRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v155 = v145;
      v156 = dispatch thunk of CustomStringConvertible.description.getter();
      v157 = v204;
      v158 = v150;
      v159 = v8;
      v161 = v160;
      (*(v158 + 8))(v153, v154);
      v162 = sub_10021145C(v156, v161, v209);

      *(v148 + 4) = v162;
      *(v148 + 12) = 2080;
      v163 = v148;
      v164 = v201;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v165 = v190;
      v190(v164, v159);
      v166 = v155 + *(v149 + 36);
      UUID.uuidString.getter();
      v167 = v191;
      URL.appendingPathComponent(_:)();

      v165(v157, v159);
      sub_100195024(v155, v187);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v168 = dispatch thunk of CustomStringConvertible.description.getter();
      v170 = v169;
      v171 = v167;
      v138 = v182;
      v165(v171, v159);
      v172 = sub_10021145C(v168, v170, v209);

      *(v163 + 14) = v172;
      v173 = v188;
      _os_log_impl(&_mh_execute_header, v188, v189, "Local Cache: Successfully saved record to local disk %s, %s", v163, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v145, type metadata accessor for InheritanceInvitationRecord);
      sub_100195024(v144, type metadata accessor for InheritanceInvitationRecord);
    }

    v174 = v181;
    v101 = v195;
    sub_100194C44(v207, v195, type metadata accessor for InheritanceInvitationRecord);
    swift_storeEnumTagMultiPayload();
    v197(v101);
    sub_100012324(v174, v192);
    sub_100012324(v138, v193);
  }

  return sub_100008D3C(v101, &qword_1003E1290, &unk_1003444C0);
}

uint64_t sub_10018AE88(uint64_t a1, uint64_t *a2, uint64_t (*a3)(), int a4, void (*a5)(void *), uint64_t a6)
{
  v196 = a6;
  v197 = a5;
  LODWORD(v188) = a4;
  v187 = a3;
  v193 = a2;
  v207 = a1;
  v194 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v6 = *(*(v194 - 8) + 64);
  __chkstk_darwin(v194);
  v195 = (&v175 - v7);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v186 = (&v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v201 = &v175 - v14;
  v15 = __chkstk_darwin(v13);
  v204 = &v175 - v16;
  __chkstk_darwin(v15);
  v18 = &v175 - v17;
  v200 = type metadata accessor for UUID();
  v206 = *(v200 - 8);
  v19 = *(v206 + 64);
  __chkstk_darwin(v200);
  v199 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for BenefactorInfoRecord();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v202 = &v175 - v27;
  v28 = __chkstk_darwin(v26);
  v184 = &v175 - v29;
  v30 = __chkstk_darwin(v28);
  v183 = &v175 - v31;
  v32 = __chkstk_darwin(v30);
  v189 = &v175 - v33;
  v34 = __chkstk_darwin(v32);
  v185 = (&v175 - v35);
  v36 = __chkstk_darwin(v34);
  v38 = &v175 - v37;
  __chkstk_darwin(v36);
  v40 = &v175 - v39;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_100008D04(v41, qword_1003FAAE8);
  v43 = v207;
  sub_100194C44(v207, v40, type metadata accessor for BenefactorInfoRecord);
  sub_100194C44(v43, v38, type metadata accessor for BenefactorInfoRecord);
  v203 = v42;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v191 = v18;
  v190 = v9;
  v198 = v25;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v205 = v21;
    v48 = v47;
    v192 = swift_slowAlloc();
    v209[0] = v192;
    *v48 = 136315394;
    v49 = *(v206 + 16);
    v50 = &v40[*(v205 + 28)];
    LODWORD(v182) = v45;
    v51 = v199;
    v52 = v200;
    v49(v199, v50, v200);
    v181 = type metadata accessor for BenefactorInfoRecord;
    sub_100195024(v40, type metadata accessor for BenefactorInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    (*(v206 + 8))(v51, v52);
    v56 = sub_10021145C(v53, v55, v209);

    *(v48 + 4) = v56;
    *(v48 + 12) = 2080;
    type metadata accessor for LocalCache();
    v57 = v201;
    sub_100307F40();
    v58 = v204;
    URL.appendingPathComponent(_:isDirectory:)();
    v59 = v9;
    v60 = v58;
    v61 = v59[1];
    v61(v57, v8);
    v62 = &v38[*(v205 + 28)];
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v61(v60, v8);
    sub_100195024(v38, v181);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    v61(v18, v8);
    v25 = v198;
    v66 = sub_10021145C(v63, v65, v209);

    *(v48 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v44, v182, "Local Cache: Saving record: %s at path: %s", v48, 0x16u);
    swift_arrayDestroy();

    v21 = v205;
  }

  else
  {
    sub_100195024(v38, type metadata accessor for BenefactorInfoRecord);
    sub_100195024(v40, type metadata accessor for BenefactorInfoRecord);
  }

  v67 = v193;
  v68 = v193[2];
  sub_100195084(&unk_1003E0E80, type metadata accessor for BenefactorInfoRecord);

  v69 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v192 = v70;
  v71 = v69;

  v72 = v67[5];

  v73 = objc_autoreleasePoolPush();
  sub_10030348C(v71, v192, &v208, v209);
  v180 = 0;
  v181 = v71;
  objc_autoreleasePoolPop(v73);

  v182 = v209[0];
  v193 = v209[1];
  v103 = v207;
  v104 = v185;
  sub_100194C44(v207, v185, type metadata accessor for BenefactorInfoRecord);
  v105 = v189;
  sub_100194C44(v103, v189, type metadata accessor for BenefactorInfoRecord);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();
  v108 = os_log_type_enabled(v106, v107);
  v205 = v21;
  if (v108)
  {
    v109 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v209[0] = v179;
    *v109 = 136315394;
    v110 = v206;
    v111 = *(v206 + 16);
    v112 = v104 + *(v21 + 28);
    v113 = v199;
    v178 = v107;
    v114 = v200;
    v111(v199, v112, v200);
    v177 = type metadata accessor for BenefactorInfoRecord;
    sub_100195024(v104, type metadata accessor for BenefactorInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v185 = v106;
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v116;
    (*(v110 + 8))(v113, v114);
    v118 = sub_10021145C(v115, v117, v209);

    v176 = v109;
    *(v109 + 4) = v118;
    *(v109 + 12) = 2080;
    type metadata accessor for LocalCache();
    v119 = v201;
    sub_100307F40();
    v120 = v204;
    URL.appendingPathComponent(_:isDirectory:)();
    v121 = v190;
    v122 = *(v190 + 1);
    v122(v119, v8);
    v123 = v189;
    v124 = v189 + *(v21 + 28);
    UUID.uuidString.getter();
    v125 = v191;
    URL.appendingPathComponent(_:)();

    v122(v120, v8);
    sub_100195024(v123, v177);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v126 = dispatch thunk of CustomStringConvertible.description.getter();
    v128 = v127;
    v122(v125, v8);
    v25 = v198;
    v129 = sub_10021145C(v126, v128, v209);

    v130 = v176;
    *(v176 + 14) = v129;
    v131 = v185;
    _os_log_impl(&_mh_execute_header, v185, v178, "Local Cache: Successfully encrypted record %s, %s", v130, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v105, type metadata accessor for BenefactorInfoRecord);
    sub_100195024(v104, type metadata accessor for BenefactorInfoRecord);

    v125 = v191;
    v121 = v190;
  }

  v132 = type metadata accessor for LocalCache();
  v133 = v204;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v134 = v121[1];
  v134(v133, v8);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v125, 0);
  v134(v125, v8);
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v134(v133, v8);
  v135 = v207 + *(v205 + 28);
  UUID.uuidString.getter();
  v136 = v186;
  URL.appendingPathComponent(_:)();
  v137 = v134;

  v134(v125, v8);
  v138 = v182;
  v139 = v193;
  v140 = v180;
  sub_10030A77C(v182, v193, v136, v187, v188);
  if (v140)
  {
    v137(v136, v8);
    sub_100012324(v138, v139);
    sub_100012324(v181, v192);
    v141 = v205;
    v142 = v202;
    v74 = v207;
    sub_100194C44(v207, v202, type metadata accessor for BenefactorInfoRecord);
    sub_100194C44(v74, v25, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      v209[0] = v207;
      *v77 = 136315650;
      v78 = v206;
      v79 = *(v206 + 16);
      v80 = v142 + *(v141 + 28);
      v81 = v199;
      LODWORD(v202) = v76;
      v82 = v200;
      v79(v199, v80, v200);
      v192 = type metadata accessor for BenefactorInfoRecord;
      sub_100195024(v142, type metadata accessor for BenefactorInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v193 = v75;
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v141;
      v85 = v8;
      v87 = v86;
      (*(v78 + 8))(v81, v82);
      v88 = sub_10021145C(v83, v87, v209);

      *(v77 + 4) = v88;
      *(v77 + 12) = 2080;
      type metadata accessor for LocalCache();
      v89 = v201;
      sub_100307F40();
      v90 = v204;
      URL.appendingPathComponent(_:isDirectory:)();
      v91 = *(v190 + 1);
      v91(v89, v85);
      v92 = *(v84 + 28);
      v93 = v198;
      UUID.uuidString.getter();
      v94 = v191;
      URL.appendingPathComponent(_:)();

      v91(v90, v85);
      sub_100195024(v93, v192);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      v91(v94, v85);
      v98 = sub_10021145C(v95, v97, v209);

      *(v77 + 14) = v98;
      *(v77 + 22) = 2112;
      v99 = _convertErrorToNSError(_:)();
      *(v77 + 24) = v99;
      v100 = v203;
      *v203 = v99;
      v75 = v193;
      _os_log_impl(&_mh_execute_header, v193, v202, "Local Cache: Error adding record %s with URL %s to local disk: %@", v77, 0x20u);
      sub_100008D3C(v100, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v25, type metadata accessor for BenefactorInfoRecord);
      sub_100195024(v142, type metadata accessor for BenefactorInfoRecord);
    }

    v101 = v195;
    *v195 = v140;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v197(v101);
  }

  else
  {
    v198 = v132;
    v202 = 0x80000001003303D0;
    v190 = v137;
    v137(v136, v8);
    v143 = v207;
    v144 = v183;
    sub_100194C44(v207, v183, type metadata accessor for BenefactorInfoRecord);
    v145 = v184;
    sub_100194C44(v143, v184, type metadata accessor for BenefactorInfoRecord);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v209[0] = v203;
      *v148 = 136315394;
      LODWORD(v189) = v147;
      v149 = v205;
      v150 = v206;
      v151 = *(v206 + 16);
      v152 = v144 + *(v205 + 28);
      v188 = v146;
      v153 = v199;
      v154 = v200;
      v151(v199, v152, v200);
      v187 = type metadata accessor for BenefactorInfoRecord;
      sub_100195024(v144, type metadata accessor for BenefactorInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v155 = v145;
      v156 = dispatch thunk of CustomStringConvertible.description.getter();
      v157 = v204;
      v158 = v150;
      v159 = v8;
      v161 = v160;
      (*(v158 + 8))(v153, v154);
      v162 = sub_10021145C(v156, v161, v209);

      *(v148 + 4) = v162;
      *(v148 + 12) = 2080;
      v163 = v148;
      v164 = v201;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v165 = v190;
      v190(v164, v159);
      v166 = v155 + *(v149 + 28);
      UUID.uuidString.getter();
      v167 = v191;
      URL.appendingPathComponent(_:)();

      v165(v157, v159);
      sub_100195024(v155, v187);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v168 = dispatch thunk of CustomStringConvertible.description.getter();
      v170 = v169;
      v171 = v167;
      v138 = v182;
      v165(v171, v159);
      v172 = sub_10021145C(v168, v170, v209);

      *(v163 + 14) = v172;
      v173 = v188;
      _os_log_impl(&_mh_execute_header, v188, v189, "Local Cache: Successfully saved record to local disk %s, %s", v163, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v145, type metadata accessor for BenefactorInfoRecord);
      sub_100195024(v144, type metadata accessor for BenefactorInfoRecord);
    }

    v174 = v181;
    v101 = v195;
    sub_100194C44(v207, v195, type metadata accessor for BenefactorInfoRecord);
    swift_storeEnumTagMultiPayload();
    v197(v101);
    sub_100012324(v174, v192);
    sub_100012324(v138, v193);
  }

  return sub_100008D3C(v101, &unk_1003E1DD0, &qword_1003444D0);
}

uint64_t sub_10018C3A4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(), int a4, void (*a5)(void *), uint64_t a6)
{
  v196 = a6;
  v197 = a5;
  LODWORD(v188) = a4;
  v187 = a3;
  v193 = a2;
  v207 = a1;
  v194 = sub_100005814(&qword_1003E0E70, &unk_10034A420);
  v6 = *(*(v194 - 8) + 64);
  __chkstk_darwin(v194);
  v195 = (&v175 - v7);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v186 = (&v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v201 = &v175 - v14;
  v15 = __chkstk_darwin(v13);
  v204 = &v175 - v16;
  __chkstk_darwin(v15);
  v18 = &v175 - v17;
  v200 = type metadata accessor for UUID();
  v206 = *(v200 - 8);
  v19 = *(v206 + 64);
  __chkstk_darwin(v200);
  v199 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for BeneficiaryManifestRecord();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v202 = &v175 - v27;
  v28 = __chkstk_darwin(v26);
  v184 = &v175 - v29;
  v30 = __chkstk_darwin(v28);
  v183 = &v175 - v31;
  v32 = __chkstk_darwin(v30);
  v189 = &v175 - v33;
  v34 = __chkstk_darwin(v32);
  v185 = (&v175 - v35);
  v36 = __chkstk_darwin(v34);
  v38 = &v175 - v37;
  __chkstk_darwin(v36);
  v40 = &v175 - v39;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_100008D04(v41, qword_1003FAAE8);
  v43 = v207;
  sub_100194C44(v207, v40, type metadata accessor for BeneficiaryManifestRecord);
  sub_100194C44(v43, v38, type metadata accessor for BeneficiaryManifestRecord);
  v203 = v42;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v191 = v18;
  v190 = v9;
  v198 = v25;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v205 = v21;
    v48 = v47;
    v192 = swift_slowAlloc();
    v209[0] = v192;
    *v48 = 136315394;
    v49 = *(v206 + 16);
    v50 = &v40[*(v205 + 24)];
    LODWORD(v182) = v45;
    v51 = v199;
    v52 = v200;
    v49(v199, v50, v200);
    v181 = type metadata accessor for BeneficiaryManifestRecord;
    sub_100195024(v40, type metadata accessor for BeneficiaryManifestRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    (*(v206 + 8))(v51, v52);
    v56 = sub_10021145C(v53, v55, v209);

    *(v48 + 4) = v56;
    *(v48 + 12) = 2080;
    type metadata accessor for LocalCache();
    v57 = v201;
    sub_100307F40();
    v58 = v204;
    URL.appendingPathComponent(_:isDirectory:)();
    v59 = v9;
    v60 = v58;
    v61 = v59[1];
    v61(v57, v8);
    v62 = &v38[*(v205 + 24)];
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v61(v60, v8);
    sub_100195024(v38, v181);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    v61(v18, v8);
    v25 = v198;
    v66 = sub_10021145C(v63, v65, v209);

    *(v48 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v44, v182, "Local Cache: Saving record: %s at path: %s", v48, 0x16u);
    swift_arrayDestroy();

    v21 = v205;
  }

  else
  {
    sub_100195024(v38, type metadata accessor for BeneficiaryManifestRecord);
    sub_100195024(v40, type metadata accessor for BeneficiaryManifestRecord);
  }

  v67 = v193;
  v68 = v193[2];
  sub_100195084(&qword_1003E0E78, type metadata accessor for BeneficiaryManifestRecord);

  v69 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v192 = v70;
  v71 = v69;

  v72 = v67[5];

  v73 = objc_autoreleasePoolPush();
  sub_10030348C(v71, v192, &v208, v209);
  v180 = 0;
  v181 = v71;
  objc_autoreleasePoolPop(v73);

  v182 = v209[0];
  v193 = v209[1];
  v103 = v207;
  v104 = v185;
  sub_100194C44(v207, v185, type metadata accessor for BeneficiaryManifestRecord);
  v105 = v189;
  sub_100194C44(v103, v189, type metadata accessor for BeneficiaryManifestRecord);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();
  v108 = os_log_type_enabled(v106, v107);
  v205 = v21;
  if (v108)
  {
    v109 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v209[0] = v179;
    *v109 = 136315394;
    v110 = v206;
    v111 = *(v206 + 16);
    v112 = v104 + *(v21 + 24);
    v113 = v199;
    v178 = v107;
    v114 = v200;
    v111(v199, v112, v200);
    v177 = type metadata accessor for BeneficiaryManifestRecord;
    sub_100195024(v104, type metadata accessor for BeneficiaryManifestRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v185 = v106;
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v116;
    (*(v110 + 8))(v113, v114);
    v118 = sub_10021145C(v115, v117, v209);

    v176 = v109;
    *(v109 + 4) = v118;
    *(v109 + 12) = 2080;
    type metadata accessor for LocalCache();
    v119 = v201;
    sub_100307F40();
    v120 = v204;
    URL.appendingPathComponent(_:isDirectory:)();
    v121 = v190;
    v122 = *(v190 + 1);
    v122(v119, v8);
    v123 = v189;
    v124 = v189 + *(v21 + 24);
    UUID.uuidString.getter();
    v125 = v191;
    URL.appendingPathComponent(_:)();

    v122(v120, v8);
    sub_100195024(v123, v177);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
    v126 = dispatch thunk of CustomStringConvertible.description.getter();
    v128 = v127;
    v122(v125, v8);
    v25 = v198;
    v129 = sub_10021145C(v126, v128, v209);

    v130 = v176;
    *(v176 + 14) = v129;
    v131 = v185;
    _os_log_impl(&_mh_execute_header, v185, v178, "Local Cache: Successfully encrypted record %s, %s", v130, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v105, type metadata accessor for BeneficiaryManifestRecord);
    sub_100195024(v104, type metadata accessor for BeneficiaryManifestRecord);

    v125 = v191;
    v121 = v190;
  }

  v132 = type metadata accessor for LocalCache();
  v133 = v204;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v134 = v121[1];
  v134(v133, v8);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v125, 0);
  v134(v125, v8);
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v134(v133, v8);
  v135 = v207 + *(v205 + 24);
  UUID.uuidString.getter();
  v136 = v186;
  URL.appendingPathComponent(_:)();
  v137 = v134;

  v134(v125, v8);
  v138 = v182;
  v139 = v193;
  v140 = v180;
  sub_10030A77C(v182, v193, v136, v187, v188);
  if (v140)
  {
    v137(v136, v8);
    sub_100012324(v138, v139);
    sub_100012324(v181, v192);
    v141 = v205;
    v142 = v202;
    v74 = v207;
    sub_100194C44(v207, v202, type metadata accessor for BeneficiaryManifestRecord);
    sub_100194C44(v74, v25, type metadata accessor for BeneficiaryManifestRecord);
    swift_errorRetain();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      v209[0] = v207;
      *v77 = 136315650;
      v78 = v206;
      v79 = *(v206 + 16);
      v80 = v142 + *(v141 + 24);
      v81 = v199;
      LODWORD(v202) = v76;
      v82 = v200;
      v79(v199, v80, v200);
      v192 = type metadata accessor for BeneficiaryManifestRecord;
      sub_100195024(v142, type metadata accessor for BeneficiaryManifestRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v193 = v75;
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v141;
      v85 = v8;
      v87 = v86;
      (*(v78 + 8))(v81, v82);
      v88 = sub_10021145C(v83, v87, v209);

      *(v77 + 4) = v88;
      *(v77 + 12) = 2080;
      type metadata accessor for LocalCache();
      v89 = v201;
      sub_100307F40();
      v90 = v204;
      URL.appendingPathComponent(_:isDirectory:)();
      v91 = *(v190 + 1);
      v91(v89, v85);
      v92 = *(v84 + 24);
      v93 = v198;
      UUID.uuidString.getter();
      v94 = v191;
      URL.appendingPathComponent(_:)();

      v91(v90, v85);
      sub_100195024(v93, v192);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      v91(v94, v85);
      v98 = sub_10021145C(v95, v97, v209);

      *(v77 + 14) = v98;
      *(v77 + 22) = 2112;
      v99 = _convertErrorToNSError(_:)();
      *(v77 + 24) = v99;
      v100 = v203;
      *v203 = v99;
      v75 = v193;
      _os_log_impl(&_mh_execute_header, v193, v202, "Local Cache: Error adding record %s with URL %s to local disk: %@", v77, 0x20u);
      sub_100008D3C(v100, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v25, type metadata accessor for BeneficiaryManifestRecord);
      sub_100195024(v142, type metadata accessor for BeneficiaryManifestRecord);
    }

    v101 = v195;
    *v195 = v140;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v197(v101);
  }

  else
  {
    v198 = v132;
    v202 = 0x80000001003303A0;
    v190 = v137;
    v137(v136, v8);
    v143 = v207;
    v144 = v183;
    sub_100194C44(v207, v183, type metadata accessor for BeneficiaryManifestRecord);
    v145 = v184;
    sub_100194C44(v143, v184, type metadata accessor for BeneficiaryManifestRecord);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v209[0] = v203;
      *v148 = 136315394;
      LODWORD(v189) = v147;
      v149 = v205;
      v150 = v206;
      v151 = *(v206 + 16);
      v152 = v144 + *(v205 + 24);
      v188 = v146;
      v153 = v199;
      v154 = v200;
      v151(v199, v152, v200);
      v187 = type metadata accessor for BeneficiaryManifestRecord;
      sub_100195024(v144, type metadata accessor for BeneficiaryManifestRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v155 = v145;
      v156 = dispatch thunk of CustomStringConvertible.description.getter();
      v157 = v204;
      v158 = v150;
      v159 = v8;
      v161 = v160;
      (*(v158 + 8))(v153, v154);
      v162 = sub_10021145C(v156, v161, v209);

      *(v148 + 4) = v162;
      *(v148 + 12) = 2080;
      v163 = v148;
      v164 = v201;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v165 = v190;
      v190(v164, v159);
      v166 = v155 + *(v149 + 24);
      UUID.uuidString.getter();
      v167 = v191;
      URL.appendingPathComponent(_:)();

      v165(v157, v159);
      sub_100195024(v155, v187);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL);
      v168 = dispatch thunk of CustomStringConvertible.description.getter();
      v170 = v169;
      v171 = v167;
      v138 = v182;
      v165(v171, v159);
      v172 = sub_10021145C(v168, v170, v209);

      *(v163 + 14) = v172;
      v173 = v188;
      _os_log_impl(&_mh_execute_header, v188, v189, "Local Cache: Successfully saved record to local disk %s, %s", v163, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v145, type metadata accessor for BeneficiaryManifestRecord);
      sub_100195024(v144, type metadata accessor for BeneficiaryManifestRecord);
    }

    v174 = v181;
    v101 = v195;
    sub_100194C44(v207, v195, type metadata accessor for BeneficiaryManifestRecord);
    swift_storeEnumTagMultiPayload();
    v197(v101);
    sub_100012324(v174, v192);
    sub_100012324(v138, v193);
  }

  return sub_100008D3C(v101, &qword_1003E0E70, &unk_10034A420);
}

uint64_t sub_10018D8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v51 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v8 = type metadata accessor for UUID();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for InheritanceHealthRecord();
  v48 = *(v54 - 8);
  v12 = *(v48 + 64);
  v13 = __chkstk_darwin(v54);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAE8);
  sub_100194C44(a1, v15, type metadata accessor for InheritanceHealthRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v45 = v4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v46 = a1;
    v44 = v21;
    v55[0] = v21;
    *v20 = 136315394;
    v22 = v47;
    (*(v47 + 16))(v11, &v15[*(v54 + 28)], v8);
    sub_100195024(v15, type metadata accessor for InheritanceHealthRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v22 + 8))(v11, v8);
    v26 = sub_10021145C(v23, v25, v55);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v55);
    _os_log_impl(&_mh_execute_header, v17, v18, "Storage Controller: Saving record to shared DB, recordID: %s, type: %s", v20, 0x16u);
    swift_arrayDestroy();
    a1 = v46;

    v4 = v45;
  }

  else
  {
    sub_100195024(v15, type metadata accessor for InheritanceHealthRecord);
  }

  v27 = v50;
  v28 = v52;
  (*(v50 + 16))(v7, v52 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v27 + 8))(v7, v4);
  v29 = sub_1000080F8(v55, v55[3]);
  v30 = v49;
  sub_100194C44(a1, v49, type metadata accessor for InheritanceHealthRecord);
  v31 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v32 = (v12 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_100194EC4(v30, v33 + v31, type metadata accessor for InheritanceHealthRecord);
  *(v33 + v32) = v28;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v53;
  *v34 = v51;
  v34[1] = v35;
  v36 = *v29;
  v37 = qword_1003D7EB0;

  if (v37 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v54 + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v38 = &qword_1003FA9F0;
  }

  v39 = *v38;
  v40 = v38[1];

  v41 = sub_1002E2BC4(v39, v40);

  v42 = [v41 sharedCloudDatabase];

  sub_100175660(a1, v42, sub_100190774, v33);

  return sub_10000839C(v55);
}

uint64_t sub_10018DF38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v69 = a4;
  v70 = a5;
  v63 = a3;
  v68 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  __chkstk_darwin(v6);
  v9 = &v60 - v8;
  v10 = type metadata accessor for UUID();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  __chkstk_darwin(v10);
  v62 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for InheritanceHealthRecord();
  v13 = *(*(v61 - 8) + 64);
  v14 = __chkstk_darwin(v61);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v60 - v18;
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = (&v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v28 = (&v60 - v27);
  sub_100012D04(a1, &v60 - v27, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAE8);
    sub_100194C44(v68, v16, type metadata accessor for InheritanceHealthRecord);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71[0] = v68;
      *v33 = 136315650;
      v35 = v66;
      v34 = v67;
      v36 = *(v66 + 16);
      v37 = &v16[*(v61 + 28)];
      LODWORD(v64) = v32;
      v38 = v62;
      v36(v62, v37, v67);
      sub_100195024(v16, type metadata accessor for InheritanceHealthRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v35 + 8))(v38, v34);
      v42 = sub_10021145C(v39, v41, v71);

      *(v33 + 4) = v42;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v71);
      *(v33 + 22) = 2112;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 24) = v43;
      v44 = v65;
      *v65 = v43;
      _os_log_impl(&_mh_execute_header, v31, v64, "Storage Controller: Failed to save record shared DB, recordID: %s, type: %s, error: %@", v33, 0x20u);
      sub_100008D3C(v44, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v16, type metadata accessor for InheritanceHealthRecord);
    }

    *v26 = v29;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v69(v26);

    return sub_100008D3C(v26, &unk_1003E10C0, &qword_100346A70);
  }

  else
  {
    sub_100194EC4(v28, v21, type metadata accessor for InheritanceHealthRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100008D04(v45, qword_1003FAAE8);
    sub_100194C44(v68, v19, type metadata accessor for InheritanceHealthRecord);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v71[0] = v68;
      *v48 = 136315394;
      v49 = v62;
      v51 = v66;
      v50 = v67;
      (*(v66 + 16))(v62, &v19[*(v61 + 28)], v67);
      sub_100195024(v19, type metadata accessor for InheritanceHealthRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      (*(v51 + 8))(v49, v50);
      v55 = sub_10021145C(v52, v54, v71);

      *(v48 + 4) = v55;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v71);
      _os_log_impl(&_mh_execute_header, v46, v47, "Storage Controller: Successfully to saved record to shared DB, recordID: %s, type: %s", v48, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v19, type metadata accessor for InheritanceHealthRecord);
    }

    v57 = v64;
    v58 = v65;
    (*(v64 + 16))(v9, v63 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v65);
    Dependency.wrappedValue.getter();
    (*(v57 + 8))(v9, v58);
    v59 = *sub_1000080F8(v71, v71[3]);
    sub_10017F2E8(v21, 0, 2, v69, v70);
    sub_100195024(v21, type metadata accessor for InheritanceHealthRecord);
    return sub_10000839C(v71);
  }
}

uint64_t sub_10018E7A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10018E9D4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10018F5E4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100012324(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10018E7A4(v13, a3, a4, &v12);
  v10 = v4;
  sub_100012324(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10018EB64@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_10018F824(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_10018EC2C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100012324(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100012324(v6, v5);
    *v3 = xmmword_10033F8D0;
    sub_100012324(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_10018F03C(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_100012324(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_10033F8D0;
    sub_100012324(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_10018F03C(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

void *sub_10018EFD0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_10018F03C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_10018F0F0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10018F16C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_100195084(&unk_1003DA8A0, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10018F34C(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_10018F34C(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_100195084(&unk_1003DA8A0, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_10018F34C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100195084(&unk_1003DA8A0, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10018F42C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10018F47C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = _swiftEmptyArrayStorage;
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = (a2 + result + 32);
      v7 = &_swiftEmptyArrayStorage[4];
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          sub_100005814(&unk_1003DA8C0, &qword_10033EA30);
          v13 = swift_allocObject();
          v14 = 2 * j__malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10018F5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10018E7A4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_10018F69C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_100015D6C(a3, a4);
          return sub_10018E9D4(v13, a2, a3, a4) & 1;
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