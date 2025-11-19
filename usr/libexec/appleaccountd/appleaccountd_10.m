uint64_t sub_10011BB74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10011BC44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10011BCF4()
{
  sub_10011BD78();
  if (v0 <= 0x3F)
  {
    sub_10000F7D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10011BD78()
{
  result = qword_1003DE758;
  if (!qword_1003DE758)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1003DE758);
  }

  return result;
}

uint64_t sub_10011BE14(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v33 = a4;
  v34 = a3;
  v5 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v33 - v7);
  v9 = type metadata accessor for CustodianshipRecords(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CustodianshipRecordBuilder.Components(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005814(&unk_1003DE910, &unk_100343190);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v33 - v19);
  sub_100012D04(a1, &v33 - v19, &unk_1003DE910, &unk_100343190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA88);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = _convertErrorToNSError(_:)();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error building custodian record: %@", v25, 0xCu);
      sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);
    }

    *v8 = v21;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v34(v8);

    return sub_100008D3C(v8, &unk_1003D91C0, &unk_10033FA50);
  }

  else
  {
    sub_100120820(v20, v16, type metadata accessor for CustodianshipRecordBuilder.Components);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAA88);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Custodian components fetched, building record...", v32, 2u);
    }

    sub_10011C294(v16, v12);
    sub_100120458(v12, v8, type metadata accessor for CustodianshipRecords);
    swift_storeEnumTagMultiPayload();
    v34(v8);
    sub_100008D3C(v8, &unk_1003D91C0, &unk_10033FA50);
    sub_1001204C0(v12, type metadata accessor for CustodianshipRecords);
    return sub_1001204C0(v16, type metadata accessor for CustodianshipRecordBuilder.Components);
  }
}

id sub_10011C294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a1;
  v154 = a2;
  v167 = type metadata accessor for CustodianshipRecordBuilder.Components(0);
  v3 = *(*(v167 - 8) + 64);
  __chkstk_darwin(v167);
  v152 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for CustodianHealthRecord();
  v5 = *(*(v151 - 8) + 64);
  __chkstk_darwin(v151);
  v153 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for SHA256();
  v135 = *(v136 - 8);
  v7 = *(v135 + 64);
  __chkstk_darwin(v136);
  v134 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for SHA256Digest();
  v138 = *(v139 - 8);
  v9 = *(v138 + 64);
  __chkstk_darwin(v139);
  v137 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for CustodianRecoveryInfoRecord();
  v11 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v170 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v150 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v148 = &v134 - v18;
  __chkstk_darwin(v17);
  v20 = (&v134 - v19);
  v21 = type metadata accessor for UUID();
  v171 = *(v21 - 8);
  v172 = v21;
  v22 = v171[8];
  v23 = __chkstk_darwin(v21);
  v166 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v165 = &v134 - v26;
  v27 = __chkstk_darwin(v25);
  *&v164 = &v134 - v28;
  __chkstk_darwin(v27);
  v163 = &v134 - v29;
  v30 = type metadata accessor for CustodianRecord();
  v31 = *(*(v30 - 1) + 64);
  __chkstk_darwin(v30);
  v168 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ContactsHelper();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  Dependency.init(dependencyId:config:)();
  v37 = *(v2 + 176);
  v38 = [v37 handle];
  v39 = v38;
  v40 = v38;
  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = String._bridgeToObjectiveC()();
  }

  v41 = v38;
  v42 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  Dependency.wrappedValue.getter();
  v43 = [v174 contactForHandle:v40];

  swift_unknownObjectRelease();
  if (v43)
  {
    v44 = [objc_allocWithZone(AALocalContactInfo) initWithHandle:v39 contact:v43];
  }

  else
  {

    v44 = 0;
  }

  swift_setDeallocating();
  (*(*(v42 - 8) + 8))(v36 + OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager, v42);
  v45 = *(*v36 + 48);
  v46 = *(*v36 + 52);
  swift_deallocClassInstance();
  result = [objc_opt_self() currentInfo];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v48 = result;
  v49 = [result qualifiedBuildVersion];

  v50 = v169;
  if (v49)
  {
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v159 = v52;
    v160 = v51;
  }

  else
  {
    v159 = 0;
    v160 = 0;
  }

  UUID.init()();
  v161 = v171[2];
  v162 = v171 + 2;
  v161(v164, v50, v172);
  v53 = [v37 handle];
  v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v145 = v54;

  v147 = v44;
  if (!v44)
  {
    v141 = 0;
    v140 = 0;
    v144 = 0;
    v58 = &v173;
LABEL_18:
    *(v58 - 32) = 0;
    goto LABEL_19;
  }

  v55 = [v44 firstName];
  if (v55)
  {
    v56 = v55;
    v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v143 = v57;
  }

  else
  {
    v144 = 0;
    v143 = 0;
  }

  v59 = [v44 lastName];
  if (!v59)
  {
    v141 = 0;
    v58 = &v170;
    goto LABEL_18;
  }

  v60 = v59;
  v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v140 = v61;

LABEL_19:
  v62 = v167;
  v158 = v50 + *(v167 + 28);
  sub_100012D04(v158, v20, &unk_1003DE920, &unk_10033F9A8);
  v63 = type metadata accessor for RecoveryKeys(0);
  v64 = *(v63 - 8);
  v156 = *(v64 + 48);
  v157 = v63;
  v155 = v64 + 48;
  if (v156(v20, 1) == 1)
  {
    sub_100008D3C(v20, &unk_1003DE920, &unk_10033F9A8);
    v65 = 0;
    v66 = 0xF000000000000000;
  }

  else
  {
    v65 = *v20;
    v66 = v20[1];
    sub_100015D6C(*v20, v66);
    sub_1001204C0(v20, type metadata accessor for RecoveryKeys);
  }

  v67 = *(v50 + *(v62 + 32));
  v69 = v171;
  v68 = v172;
  v70 = v168;
  v71 = v168 + v30[16];
  v142 = v171[7];
  v142(v71, 1, 1, v172);
  v72 = v69[4];
  v72(v70, v163, v68);
  v73 = v70 + v30[5];
  v171 = v69 + 4;
  v72(v73, v164, v68);
  v74 = (v70 + v30[6]);
  v75 = v145;
  *v74 = v146;
  v74[1] = v75;
  v76 = (v70 + v30[7]);
  v77 = v143;
  *v76 = v144;
  v76[1] = v77;
  v78 = (v70 + v30[8]);
  v79 = v140;
  *v78 = v141;
  v78[1] = v79;
  *(v70 + v30[9]) = 1;
  v80 = (v70 + v30[10]);
  *v80 = v65;
  v80[1] = v66;
  v81 = v30[11];
  v164 = xmmword_10033F8D0;
  *(v70 + v81) = xmmword_10033F8D0;
  v82 = v30[12];
  LODWORD(v163) = v67;
  *(v70 + v82) = v67;
  v83 = (v70 + v30[13]);
  v84 = v159;
  *v83 = v160;
  v83[1] = v84;
  v85 = (v70 + v30[14]);
  *v85 = 0;
  v85[1] = 0;
  v86 = v70 + v30[15];
  *v86 = 0;
  *(v86 + 8) = 1;

  UUID.init()();
  v161(v166, v50, v68);
  v87 = (v50 + *(v167 + 24));
  v88 = v87[3];
  v167 = v87[2];
  v89 = *v87;
  v90 = v87[1];
  v91 = v148;
  sub_100012D04(v158, v148, &unk_1003DE920, &unk_10033F9A8);
  if ((v156)(v91, 1, v157) == 1)
  {

    sub_100015D6C(v89, v90);
    sub_100008D3C(v91, &unk_1003DE920, &unk_10033F9A8);
    v92 = 0;
    v93 = 0xF000000000000000;
  }

  else
  {
    v92 = *(v91 + 16);
    v93 = *(v91 + 24);

    sub_100015D6C(v89, v90);
    sub_100015D6C(v92, v93);
    sub_1001204C0(v91, type metadata accessor for RecoveryKeys);
  }

  v94 = v149;
  v95 = v170;
  v96 = v172;
  v142(v170 + *(v149 + 44), 1, 1, v172);
  v72(v95, v165, v96);
  v72(v95 + v94[5], v166, v96);
  v97 = (v95 + v94[6]);
  *v97 = v167;
  v97[1] = v88;
  v98 = (v95 + v94[7]);
  *v98 = v89;
  v98[1] = v90;
  v99 = (v95 + v94[8]);
  *v99 = v92;
  v99[1] = v93;
  *(v95 + v94[9]) = v164;
  v100 = v163;
  *(v95 + v94[10]) = v163;
  v101 = (v95 + v94[12]);
  v102 = v159;
  *v101 = v160;
  v101[1] = v102;
  v103 = v150;
  sub_100012D04(v158, v150, &unk_1003DE920, &unk_10033F9A8);
  if ((v156)(v103, 1, v157) == 1)
  {
    sub_100008D3C(v103, &unk_1003DE920, &unk_10033F9A8);
    v104 = 0;
    v105 = 0xF000000000000000;
  }

  else
  {
    v106 = *(v103 + 16);
    v107 = *(v103 + 24);
    sub_100015D6C(v106, v107);
    sub_1001204C0(v103, type metadata accessor for RecoveryKeys);
    sub_100120888(&unk_1003DA8A0, &type metadata accessor for SHA256);
    v108 = v134;
    v109 = v136;
    dispatch thunk of HashFunction.init()();
    sub_100015D6C(v106, v107);
    sub_10018F16C(v106, v107);
    sub_100012324(v106, v107);
    v110 = v137;
    dispatch thunk of HashFunction.finalize()();
    (*(v135 + 8))(v108, v109);
    sub_100120888(&qword_1003DE938, &type metadata accessor for SHA256Digest);
    v111 = v139;
    v112 = Digest.makeIterator()();
    v114 = sub_10018F47C(v112, v113);

    v104 = sub_10018F97C(v114);
    v105 = v115;

    sub_100012324(v106, v107);
    (*(v138 + 8))(v110, v111);
  }

  v116 = v153;
  v117 = v152;
  v118 = v169;
  UUID.init()();
  v119 = v151;
  v161((v116 + *(v151 + 20)), v118, v172);
  v120 = v116 + v119[6];
  Date.init(timeIntervalSince1970:)();
  v121 = (v116 + v119[7]);
  *v121 = v104;
  v121[1] = v105;
  *(v116 + v119[8]) = v164;
  *(v116 + v119[9]) = v100;
  v122 = v116 + v119[10];
  *v122 = 0;
  *(v122 + 8) = 1;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v123 = type metadata accessor for Logger();
  sub_100008D04(v123, qword_1003FAA88);
  sub_100120458(v118, v117, type metadata accessor for CustodianshipRecordBuilder.Components);
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v174 = v127;
    *v126 = 136315138;
    sub_100120888(&qword_1003D9150, &type metadata accessor for UUID);
    v128 = dispatch thunk of CustomStringConvertible.description.getter();
    v130 = v129;
    sub_1001204C0(v117, type metadata accessor for CustodianshipRecordBuilder.Components);
    v131 = sub_10021145C(v128, v130, &v174);

    *(v126 + 4) = v131;
    _os_log_impl(&_mh_execute_header, v124, v125, "Custodianship records %s built successfully.", v126, 0xCu);
    sub_10000839C(v127);
  }

  else
  {

    sub_1001204C0(v117, type metadata accessor for CustodianshipRecordBuilder.Components);
  }

  v132 = v154;
  sub_100120820(v168, v154, type metadata accessor for CustodianRecord);
  v133 = type metadata accessor for CustodianshipRecords(0);
  sub_100120820(v170, v132 + *(v133 + 20), type metadata accessor for CustodianRecoveryInfoRecord);
  return sub_100120820(v116, v132 + *(v133 + 24), type metadata accessor for CustodianHealthRecord);
}

uint64_t sub_10011D29C()
{
  sub_10000839C((v0 + 16));
  sub_10000839C((v0 + 56));
  sub_10000839C((v0 + 96));
  sub_10000839C((v0 + 136));

  v1 = OBJC_IVAR____TtC13appleaccountd26CustodianshipRecordBuilder__analyticsReporter;
  v2 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10011D394()
{
  sub_10000F7D4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10011D444(uint64_t a1, char a2, void (*a3)(uint64_t *), void *a4, uint64_t a5, uint64_t a6, void (**a7)(void, void))
{
  v13 = sub_100005814(&unk_1003DE910, &unk_100343190);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v24 - v15);
  if ((a2 & 1) == 0)
  {
    return sub_10011D670(a6, a7, a1 & 1, a3, a4);
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAA88);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  sub_1000A6B60(a1, 1);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = _convertErrorToNSError(_:)();
    *(v20 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "Error fetching manatee status: %@", v20, 0xCu);
    sub_100008D3C(v21, &unk_1003D9140, &qword_10033E640);
  }

  *v16 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  a3(v16);
  return sub_100008D3C(v16, &unk_1003DE910, &unk_100343190);
}

uint64_t sub_10011D670(uint64_t a1, void (**a2)(void, void), int a3, void (*a4)(void *), void *a5)
{
  v6 = v5;
  v127 = a4;
  v121 = a3;
  v122 = a2;
  v9 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
  v119 = *(v9 - 8);
  v10 = *(v119 + 8);
  v11 = __chkstk_darwin(v9 - 8);
  v123 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v12;
  __chkstk_darwin(v11);
  v126 = &v105 - v13;
  v108 = sub_100005814(&unk_1003DE910, &unk_100343190);
  v14 = *(*(v108 - 1) + 64);
  __chkstk_darwin(v108);
  v109 = (&v105 - v15);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v118 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v105 - v21;
  __chkstk_darwin(v20);
  v24 = &v105 - v23;
  v25 = *(v17 + 16);
  v110 = a1;
  v25(&v105 - v23, a1, v16);
  v112 = v25;
  v113 = v17 + 16;
  v25(v22, v24, v16);
  v26 = *(v17 + 80);
  v27 = (v26 + 24) & ~v26;
  v117 = v18;
  v111 = v26;
  v28 = (v27 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v27 + v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v116 = v26 | 7;
  v30 = swift_allocObject();
  *(v30 + 16) = v6;
  v31 = v30 + v27;
  v32 = v16;
  v33 = v121;
  v114 = *(v17 + 32);
  v115 = v17 + 32;
  v114(v31, v24, v32);
  v34 = v30 + v28;
  v35 = v122;
  *v34 = v122;
  *(v34 + 8) = v33;
  v124 = v30;
  v36 = (v30 + v29);
  *v36 = v127;
  v36[1] = a5;
  v37 = objc_opt_self();
  v125 = a5;

  v38 = v35;

  if ([v37 simulate2FAFA])
  {
    v122 = v17;
    v121 = v33 & 1;
    v39 = type metadata accessor for RecoveryKeys(0);
    (*(*(v39 - 8) + 56))(v126, 1, 1, v39);
    v40 = v6[22];
    v109 = kAAAnalyticsEventCustodianSetupOwnerGenerateEncryptedCPRK;
    v41 = [v40 altDSID];
    v107 = v32;
    if (v41)
    {
      v42 = v41;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v62 = v22;
    v63 = v111;
    v110 = ~v111;
    v64 = [v40 telemetryFlowID];
    if (v64)
    {
      v65 = v64;
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;
    }

    else
    {
      v66 = 0;
      v68 = 0;
    }

    sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
    v109 = sub_100245D38(v109, v43, v45, v66, v68);
    v69 = [objc_allocWithZone(AKCustodianContext) init];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v69 setCustodianUUID:isa];

    v106 = v38;
    v71 = [v38 aa_altDSID];
    v108 = v69;
    [v69 setAltDSID:v71];

    v72 = [v40 custodianSetupToken];
    [v69 setCustodianSetupToken:v72];

    v105 = sub_1000080F8(v6 + 2, v6[5]);
    v73 = swift_allocObject();
    swift_weakInit();
    v74 = v118;
    v75 = v107;
    v112(v118, v62, v107);
    sub_100012D04(v126, v123, &unk_1003DE920, &unk_10033F9A8);
    v76 = (v63 + 32) & v110;
    v77 = (v117 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = v119[80];
    v119 = v62;
    v79 = (v77 + v78 + 8) & ~v78;
    v80 = v79 + v120;
    v81 = swift_allocObject();
    v82 = v109;
    *(v81 + 16) = v109;
    *(v81 + 24) = v73;
    v114(v81 + v76, v74, v75);
    v83 = v106;
    *(v81 + v77) = v106;
    sub_1001203C4(v123, v81 + v79);
    *(v81 + v80) = v121;
    v84 = v81 + (v80 & 0xFFFFFFFFFFFFFFF8);
    v85 = v125;
    *(v84 + 8) = v127;
    *(v84 + 16) = v85;
    v86 = v82;

    v87 = v83;
    v88 = v108;
    sub_100119640(v108, sub_100120434, v81);

    sub_100008D3C(v126, &unk_1003DE920, &unk_10033F9A8);
    (v122)[1](v119, v75);
  }

  (*(v17 + 8))(v22, v32);
  if (v33)
  {
    v46 = v6[22];
    v47 = kAAAnalyticsEventCustodianSetupOwnerGenerateCustodianRecoveryKey;
    v48 = [v46 altDSID];
    if (v48)
    {
      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    v89 = [v46 telemetryFlowID];
    if (v89)
    {
      v90 = v89;
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;
    }

    else
    {
      v91 = 0;
      v93 = 0;
    }

    sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
    v94 = sub_100245D38(v47, v50, v52, v91, v93);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_100008D04(v95, qword_1003FAA88);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "Manatee available. Creating Custodian Recovery Keys in OctagonTrust.", v98, 2u);
    }

    v99 = sub_1000080F8(v6 + 12, v6[15]);
    v100 = swift_allocObject();
    swift_weakInit();
    v101 = *v99;
    v102 = v94;
    v103 = v124;

    v104 = v125;

    sub_10001ADDC(v110, v101, v94, v100, sub_1001202D0, v103, v127, v104);
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_100008D04(v53, qword_1003FAA88);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "Manatee unavailable. Not creating Custodian Recovery Keys in OctagonTrust.", v56, 2u);
  }

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "Not proceeding with IdMS Setup without recovery keys.", v59, 2u);
  }

  type metadata accessor for AACustodianError(0);
  v128 = -7023;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100120888(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v60 = v109;
  *v109 = v129;
  swift_storeEnumTagMultiPayload();
  v127(v60);

  return sub_100008D3C(v60, &unk_1003DE910, &unk_100343190);
}

void sub_10011E184(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  v55 = a6;
  v56 = a7;
  v54 = a5;
  v59 = a4;
  v52 = a1;
  v9 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
  v50 = *(v9 - 8);
  v53 = *(v50 + 64);
  __chkstk_darwin(v9 - 8);
  v58 = &v46 - v10;
  v51 = type metadata accessor for UUID();
  v49 = *(v51 - 8);
  v11 = *(v49 + 64);
  __chkstk_darwin(v51);
  v57 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[22];
  v13 = kAAAnalyticsEventCustodianSetupOwnerGenerateEncryptedCPRK;
  v14 = [v12 altDSID];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = [v12 telemetryFlowID];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v48 = sub_100245D38(v13, v16, v18, v21, v23);
  v24 = [objc_allocWithZone(AKCustodianContext) init];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v24 setCustodianUUID:isa];

  v26 = [v59 aa_altDSID];
  v47 = v24;
  [v24 setAltDSID:v26];

  v27 = [v12 custodianSetupToken];
  [v24 setCustodianSetupToken:v27];

  v46 = sub_1000080F8(a2 + 2, a2[5]);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v49;
  v30 = a3;
  v31 = v51;
  (*(v49 + 16))(v57, v30, v51);
  sub_100012D04(v52, v58, &unk_1003DE920, &unk_10033F9A8);
  v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v33 = (v11 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v50 + 80) + v33 + 8) & ~*(v50 + 80);
  v35 = v34 + v53;
  v36 = (v34 + v53) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v48;
  *(v37 + 16) = v48;
  *(v37 + 24) = v28;
  (*(v29 + 32))(v37 + v32, v57, v31);
  v39 = v58;
  v40 = v59;
  *(v37 + v33) = v59;
  sub_1001203C4(v39, v37 + v34);
  *(v37 + v35) = v54 & 1;
  v41 = v37 + v36;
  v42 = v56;
  *(v41 + 8) = v55;
  *(v41 + 16) = v42;
  v43 = v38;

  v44 = v40;

  v45 = v47;
  sub_100119640(v47, sub_100120C70, v37);
}

uint64_t sub_10011E5C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v38[1] = a7;
  v39 = a6;
  v42 = a5;
  v43 = a4;
  v44 = a3;
  v38[0] = sub_100005814(&unk_1003DE910, &unk_100343190);
  v9 = *(*(v38[0] - 8) + 64);
  __chkstk_darwin(v38[0]);
  v11 = (v38 - v10);
  v12 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v38 - v14;
  v16 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v38 - v19;
  v21 = type metadata accessor for RecoveryKeys(0);
  v40 = *(v21 - 8);
  v41 = v21;
  v22 = *(v40 + 64);
  __chkstk_darwin(v21);
  v24 = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100005814(&qword_1003D8EF8, &qword_10033EB18);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (v38 - v27);
  if (a2)
  {
    sub_1000D2954(a1);
  }

  sub_100012D04(a1, v28, &qword_1003D8EF8, &qword_10033EB18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v17 + 16))(v20, Strong + OBJC_IVAR____TtC13appleaccountd26CustodianshipRecordBuilder__analyticsReporter, v16);
      Dependency.wrappedValue.getter();

      (*(v17 + 8))(v20, v16);
      swift_getObjectType();
      sub_100246FA8(a2);
      swift_unknownObjectRelease();
    }

    *v11 = v29;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v39(v11);

    return sub_100008D3C(v11, &unk_1003DE910, &unk_100343190);
  }

  else
  {
    v32 = a2;
    sub_100120820(v28, v24, type metadata accessor for RecoveryKeys);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA88);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Created Custodian Recovery Keys in OctagonTrust. Proceeding to IdMS Setup.", v36, 2u);
    }

    swift_beginAccess();
    v37 = swift_weakLoadStrong();
    if (v37)
    {
      (*(v17 + 16))(v20, v37 + OBJC_IVAR____TtC13appleaccountd26CustodianshipRecordBuilder__analyticsReporter, v16);
      Dependency.wrappedValue.getter();

      (*(v17 + 8))(v20, v16);
      swift_getObjectType();
      sub_100246FA8(v32);
      swift_unknownObjectRelease();
    }

    sub_100120458(v24, v15, type metadata accessor for RecoveryKeys);
    (*(v40 + 56))(v15, 0, 1, v41);
    v43(v15);
    sub_100008D3C(v15, &unk_1003DE920, &unk_10033F9A8);
    return sub_1001204C0(v24, type metadata accessor for RecoveryKeys);
  }
}

uint64_t sub_10011EB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7, void (*a8)(uint64_t *), uint64_t a9)
{
  v37 = a7;
  v35 = a4;
  v36 = a6;
  v38 = a5;
  v42 = a9;
  v43 = a8;
  v12 = a1 + 8;
  v11 = *a1;
  v41 = sub_100005814(&unk_1003DE910, &unk_100343190);
  v13 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v40 = (&v34 - v14);
  v15 = type metadata accessor for CustodianshipRecordBuilder.Components(0);
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v34 - v22;
  v39 = a2;
  if (a2)
  {
    sub_1000D2968(a1);
    v24 = *a1;
    if (*(a1 + 32))
    {
LABEL_3:
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        (*(v20 + 16))(v23, Strong + OBJC_IVAR____TtC13appleaccountd26CustodianshipRecordBuilder__analyticsReporter, v19);
        Dependency.wrappedValue.getter();

        (*(v20 + 8))(v23, v19);
        swift_getObjectType();
        sub_100246FA8(v39);
        swift_unknownObjectRelease();
      }

      v26 = v40;
      *v40 = v24;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v43(v26);
      return sub_100008D3C(v26, &unk_1003DE910, &unk_100343190);
    }
  }

  else
  {
    v24 = v11;
    if (*(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v34 = v24;
  v45 = *v12;
  v46 = *(v12 + 16);
  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (v28)
  {
    (*(v20 + 16))(v23, v28 + OBJC_IVAR____TtC13appleaccountd26CustodianshipRecordBuilder__analyticsReporter, v19);
    Dependency.wrappedValue.getter();

    (*(v20 + 8))(v23, v19);
    swift_getObjectType();
    sub_100246FA8(v39);
    swift_unknownObjectRelease();
  }

  v29 = type metadata accessor for UUID();
  (*(*(v29 - 8) + 16))(v18, v35, v29);
  sub_100012D04(v36, &v18[v15[7]], &unk_1003DE920, &unk_10033F9A8);
  v30 = v38;
  *&v18[v15[5]] = v38;
  v31 = &v18[v15[6]];
  *v31 = v34;
  *(v31 + 8) = v45;
  *(v31 + 3) = v46;
  v18[v15[8]] = v37 & 1;
  v32 = v40;
  sub_100120458(v18, v40, type metadata accessor for CustodianshipRecordBuilder.Components);
  swift_storeEnumTagMultiPayload();
  sub_100012D04(a1, v44, &qword_1003DE930, &unk_1003431A0);
  v33 = v30;
  v43(v32);
  sub_100008D3C(v32, &unk_1003DE910, &unk_100343190);
  return sub_1001204C0(v18, type metadata accessor for CustodianshipRecordBuilder.Components);
}

uint64_t sub_10011EFA4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, void *), uint64_t a5, void *a6)
{
  v37 = a5;
  v38 = a6;
  v35 = a3;
  v36 = a4;
  v7 = sub_100005814(&unk_1003D91C0, &unk_10033FA50);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v35 - v9);
  v11 = type metadata accessor for CustodianshipRecords(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustodianshipRecordBuilder.Components(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&unk_1003DE910, &unk_100343190);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v35 - v21);
  sub_100012D04(a1, &v35 - v21, &unk_1003DE910, &unk_100343190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA88);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = _convertErrorToNSError(_:)();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error building custodian record: %@", v27, 0xCu);
      sub_100008D3C(v28, &unk_1003D9140, &qword_10033E640);
    }

    *v10 = v23;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_100041854(v10, v35, v36, v37, v38);

    return sub_100008D3C(v10, &unk_1003D91C0, &unk_10033FA50);
  }

  else
  {
    sub_100120820(v22, v18, type metadata accessor for CustodianshipRecordBuilder.Components);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAA88);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Custodian components fetched, building record...", v34, 2u);
    }

    sub_10011C294(v18, v14);
    sub_100120458(v14, v10, type metadata accessor for CustodianshipRecords);
    swift_storeEnumTagMultiPayload();
    sub_100041854(v10, v35, v36, v37, v38);
    sub_100008D3C(v10, &unk_1003D91C0, &unk_10033FA50);
    sub_1001204C0(v14, type metadata accessor for CustodianshipRecords);
    return sub_1001204C0(v18, type metadata accessor for CustodianshipRecordBuilder.Components);
  }
}

void sub_10011F428(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, void *), uint64_t a5, void *a6)
{
  v76 = sub_100005814(&unk_1003DE910, &unk_100343190);
  v12 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v14 = (&v67 - v13);
  v70 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v69 = *(v70 - 8);
  v15 = *(v69 + 64);
  __chkstk_darwin(v70);
  v68 = &v67 - v16;
  v17 = type metadata accessor for UUID();
  v72 = *(v17 - 8);
  v73 = v17;
  v18 = *(v72 + 64);
  v19 = __chkstk_darwin(v17);
  v20 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v71 = &v67 - v21;
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v77 = a4;
  v22[4] = a5;
  v22[5] = a6;
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = sub_10011FFA0;
  v79 = v23;
  v23[4] = v22;
  v24 = *(*sub_1000080F8(a1 + 7, a1[10]) + 16);
  swift_retain_n();
  v80 = a5;
  swift_retain_n();
  v78 = a6;

  v25 = [v24 aa_primaryAppleAccount];
  if (!v25)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100008D04(v61, qword_1003FAA88);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Not logged in to AppleAccount, unable to complete setup", v64, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v82[0] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100120888(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v14 = aBlock[0];
    swift_storeEnumTagMultiPayload();

    v65 = v80;

    v51 = v78;
    v66 = v78;
    sub_10011EFA4(v14, a2, a3, v77, v65, v66);

    sub_100008D3C(v14, &unk_1003DE910, &unk_100343190);

    goto LABEL_20;
  }

  v26 = v25;
  v74 = a3;
  v75 = a2;
  v27 = sub_1000080F8(a1 + 7, a1[10]);
  v28 = *v27;
  v29 = [*(*v27 + 16) aa_primaryAppleAccount];
  if (!v29)
  {
    goto LABEL_10;
  }

  v30 = v29;
  v31 = *(v28 + 16);
  v32 = [v29 aa_altDSID];
  v33 = [v31 aa_authKitAccountForAltDSID:v32];

  if (!v33 || (v34 = [*(v28 + 24) canHaveCustodianForAccount:v33], v33, !v34))
  {
LABEL_10:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100008D04(v52, qword_1003FAA88);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    v55 = os_log_type_enabled(v53, v54);
    v57 = v74;
    v56 = v75;
    if (v55)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Account is ineligible to have a custodian, unable to complete setup", v58, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v82[0] = -7012;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100120888(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v14 = aBlock[0];
    swift_storeEnumTagMultiPayload();

    v59 = v80;

    v51 = v78;
    v60 = v78;
    sub_10011EFA4(v14, v56, v57, v77, v59, v60);

    sub_100008D3C(v14, &unk_1003DE910, &unk_100343190);

LABEL_20:

    goto LABEL_21;
  }

  v35 = v71;
  UUID.init()();
  v36 = sub_1000080F8(a1 + 17, a1[20]);
  v38 = v72;
  v37 = v73;
  (*(v72 + 16))(v20, v35, v73);
  v39 = (*(v38 + 80) + 40) & ~*(v38 + 80);
  v40 = (v18 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v79;
  *(v41 + 2) = sub_10011FFEC;
  *(v41 + 3) = v42;
  *(v41 + 4) = a1;
  (*(v38 + 32))(&v41[v39], v20, v37);
  *&v41[v40] = v26;
  v43 = v69;
  v44 = *v36 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage;
  v45 = v68;
  v46 = v70;
  (*(v69 + 16))(v68, v44, v70);

  v47 = v26;
  Dependency.wrappedValue.getter();
  (*(v43 + 8))(v45, v46);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (qword_1003D7EC0 != -1)
  {
    swift_once();
  }

  v48 = sub_1002E2BC4(qword_1003FA9D0, qword_1003FA9D8);
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1001200D8;
  *(v49 + 24) = v41;
  aBlock[4] = sub_100016014;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003AA538;
  v50 = _Block_copy(aBlock);

  [v48 accountInfoWithCompletionHandler:v50];
  _Block_release(v50);

  sub_10000839C(v82);
  (*(v72 + 8))(v71, v73);

  v51 = v78;
LABEL_21:
}

void sub_10011FDD0(uint64_t a1, uint64_t a2, void (*a3)(char *, void *), uint64_t a4, void *a5)
{
  v10 = qword_1003D7F38;

  v11 = a5;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA88);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Begin building custodianship records.", v15, 2u);
  }

  v17 = v11;

  sub_10011F428(v16, a1, a2, a3, a4, v17);
}

uint64_t sub_10011FF58()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10011FFAC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10011FFF8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1001200D8(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10011D444(a1, a2 & 1, v7, v8, v9, v2 + v6, v10);
}

uint64_t sub_10012018C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001201C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001201DC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  v8 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16);
}

void sub_1001202D0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = (v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_10011E184(a1, v6, v1 + v4, v8, v9, v11, v12);
}

uint64_t sub_100120388()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001203C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100120458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001204C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100120520()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_100005814(&unk_1003DE920, &unk_10033F9A8) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v5 + 64);

  v8 = *(v0 + 24);

  v9 = *(v2 + 8);
  v9(v0 + v3, v1);

  v10 = v0 + v6;
  v11 = type metadata accessor for RecoveryKeys(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v6, 1, v11))
  {
    sub_100012324(*v10, *(v10 + 8));
    sub_100012324(*(v10 + 16), *(v10 + 24));
    v9(v10 + *(v11 + 24), v1);
  }

  v12 = (v6 + v7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v12 + 16);

  return _swift_deallocObject(v0, v12 + 24);
}

uint64_t sub_1001206FC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100005814(&unk_1003DE920, &unk_10033F9A8) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  return sub_10011EB2C(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), v1 + v7, *(v1 + v7 + *(v6 + 64)), *(v1 + ((v7 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v7 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_100120820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100120888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001208E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100120A28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100005814(&unk_1003DE920, &unk_10033F9A8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100120B58()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100016034(319, &qword_1003DE9A8, ACAccount_ptr);
    if (v1 <= 0x3F)
    {
      sub_100120C14();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100120C14()
{
  if (!qword_1003DE9B0)
  {
    type metadata accessor for RecoveryKeys(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003DE9B0);
    }
  }
}

BOOL sub_100120C74(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_100120D40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 72) = a7;
  *(v9 + 80) = v8;
  *(v9 + 285) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 284) = a4;
  *(v9 + 40) = a2;
  *(v9 + 48) = a3;
  *(v9 + 32) = a1;
  v10 = type metadata accessor for ShareMessageContext(0);
  *(v9 + 88) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v9 + 96) = swift_task_alloc();
  v12 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v9 + 104) = v12;
  v13 = *(v12 - 8);
  *(v9 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v9 + 120) = swift_task_alloc();
  v15 = type metadata accessor for CloudShareInfo();
  *(v9 + 128) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v9 + 136) = swift_task_alloc();
  v17 = type metadata accessor for CustodianRecoveryInfoRecord();
  *(v9 + 144) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v9 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_100120EB0, 0, 0);
}

uint64_t sub_100120EB0()
{
  v48 = v0;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = type metadata accessor for Logger();
  *(v0 + 160) = sub_100008D04(v4, qword_1003FAA88);
  sub_10013AEFC(v3, v1, type metadata accessor for CustodianRecoveryInfoRecord);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  if (v7)
  {
    v9 = *(v0 + 144);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = *(v9 + 20);
    type metadata accessor for UUID();
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10013AF64(v8, type metadata accessor for CustodianRecoveryInfoRecord);
    v17 = sub_10021145C(v14, v16, &v46);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10021145C(v11, v10, &v46);
    _os_log_impl(&_mh_execute_header, v5, v6, "Sharing custodianship %s records with: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10013AF64(v8, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v18 = *(v0 + 144);
  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v21 = *(v0 + 104);
  v42 = *(v0 + 285);
  v22 = *(v0 + 80);
  v41 = *(v0 + 72);
  v24 = *(v0 + 56);
  v23 = *(v0 + 64);
  v43 = *(v0 + 40);
  v44 = *(v0 + 48);
  v25 = *(v0 + 32);
  (*(v20 + 16))(v19, v22 + OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__analyticsReporter, v21);
  Dependency.wrappedValue.getter();
  (*(v20 + 8))(v19, v21);
  v45 = *(v0 + 16);
  v46 = 0;
  *(v0 + 168) = v45;
  v47 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v46 = 0xD000000000000013;
  v47 = 0x800000010032EF20;
  *(v0 + 280) = *(v18 + 20);
  *(v0 + 176) = type metadata accessor for UUID();
  *(v0 + 184) = sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v28 = v46;
  v27 = v47;
  *(v0 + 192) = v47;
  v29 = swift_allocObject();
  *(v0 + 200) = v29;
  *(v29 + 16) = v22;
  *(v29 + 24) = v24;
  *(v29 + 32) = v23;
  *(v29 + 40) = v41;
  *(v29 + 48) = v42 & 1;
  v30 = swift_task_alloc();
  *(v0 + 208) = v30;
  v30[2] = v22;
  v30[3] = v25;
  v30[4] = v43;
  v30[5] = v44;
  v31 = type metadata accessor for ExponentialRetryScheduler();

  v32 = ExponentialRetryScheduler.__allocating_init(maxRetries:)();
  *(v0 + 216) = v32;
  v33 = swift_allocObject();
  *(v0 + 224) = v33;
  *(v33 + 16) = 0;
  *(v0 + 24) = v32;
  v34 = swift_task_alloc();
  *(v0 + 232) = v34;
  v34[2] = v33;
  v34[3] = sub_100133A10;
  v34[4] = v29;
  v34[5] = v28;
  v34[6] = v27;
  v34[7] = &unk_100343270;
  v34[8] = v30;
  v34[9] = v45;
  v34[10] = 1;
  v35 = swift_allocObject();
  *(v0 + 240) = v35;
  *(v35 + 16) = sub_100122764;
  *(v35 + 24) = 0;
  v36 = async function pointer to RetryScheduler.schedule<A>(_:shouldRetry:)[1];
  v37 = swift_task_alloc();
  *(v0 + 248) = v37;
  *v37 = v0;
  v37[1] = sub_100121420;
  v39 = *(v0 + 128);
  v38 = *(v0 + 136);

  return RetryScheduler.schedule<A>(_:shouldRetry:)(v38, &unk_100343280, v34, sub_10005237C, v35, v31, v39, &protocol witness table for ExponentialRetryScheduler);
}

uint64_t sub_100121420()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v9 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_1001217DC;
  }

  else
  {
    v6 = v2[29];
    v5 = v2[30];
    v7 = v2[24];

    v4 = sub_100121550;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100121550()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 280);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v20 = *(v0 + 136);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v21 = *(v0 + 284);
  v22 = *(v0 + 285);
  v10 = *(v0 + 32);

  swift_unknownObjectRelease();

  (*(*(v6 - 8) + 16))(v8, v10 + v5, v6);
  sub_10013AEFC(v20, v8 + *(v9 + 20), type metadata accessor for CloudShareInfo);
  *(v8 + *(v9 + 24)) = v21;
  v11 = swift_task_alloc();
  *(v0 + 264) = v11;
  *v11 = v0;
  v11[1] = sub_1001216C8;
  v12 = *(v0 + 96);
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);

  return sub_100122864(v12, v17, v18, v15, v16, v13, v22 & 1);
}

uint64_t sub_1001216C8()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_100121B88;
  }

  else
  {
    v3 = sub_100121ABC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001217DC()
{
  v35 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);

  swift_unknownObjectRelease();

  v9 = *(v0 + 256);
  v11 = *(v0 + 176);
  v10 = *(v0 + 184);
  v12 = *(v0 + 280);
  v13 = *(v0 + 160);
  v14 = *(v0 + 32);
  _StringGuts.grow(_:)(46);

  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v34[0] = 0x7272652068746977;
  v34[1] = 0xEB0000000020726FLL;
  v16 = _convertErrorToNSError(_:)();
  v17 = [v16 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x7272652068746977;
  v22._object = 0xEB0000000020726FLL;
  String.append(_:)(v22);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34[0] = v26;
    *v25 = 136315138;
    v27 = sub_10021145C(0xD00000000000002CLL, 0x800000010032EF40, v34);

    *(v25 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s", v25, 0xCu);
    sub_10000839C(v26);
  }

  else
  {
  }

  v28 = *(v0 + 152);
  v29 = *(v0 + 136);
  v30 = *(v0 + 120);
  v31 = *(v0 + 96);
  swift_willThrow();

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100121ABC()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  sub_10013AF64(v0[12], type metadata accessor for ShareMessageContext);
  sub_10013AF64(v2, type metadata accessor for CloudShareInfo);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100121B88()
{
  v28 = v0;
  v1 = *(v0 + 136);
  sub_10013AF64(*(v0 + 96), type metadata accessor for ShareMessageContext);
  sub_10013AF64(v1, type metadata accessor for CloudShareInfo);
  v2 = *(v0 + 272);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 280);
  v6 = *(v0 + 160);
  v7 = *(v0 + 32);
  _StringGuts.grow(_:)(46);

  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v27[0] = 0x7272652068746977;
  v27[1] = 0xEB0000000020726FLL;
  v9 = _convertErrorToNSError(_:)();
  v10 = [v9 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x7272652068746977;
  v15._object = 0xEB0000000020726FLL;
  String.append(_:)(v15);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27[0] = v19;
    *v18 = 136315138;
    v20 = sub_10021145C(0xD00000000000002CLL, 0x800000010032EF40, v27);

    *(v18 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s", v18, 0xCu);
    sub_10000839C(v19);
  }

  else
  {
  }

  v21 = *(v0 + 152);
  v22 = *(v0 + 136);
  v23 = *(v0 + 120);
  v24 = *(v0 + 96);
  swift_willThrow();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100121E58()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);
  v1 = OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__notificationManager;
  v4 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__analyticsReporter;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AcceptedStatusHandler()
{
  result = qword_1003DEA30;
  if (!qword_1003DEA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100122004()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100122160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v15 = *v7;
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1000082A8;

  return sub_100132C10(a1, a2, a4, a5, a6, a7 & 1);
}

id sub_100122250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27[-1] - v13;
  v15 = kAAAnalyticsEventCustodianSetupProcessAcceptCreateRecoveryInfoShare;
  (*(v11 + 16))(&v27[-1] - v13, a1 + OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__accountStore, v10);
  v16 = v15;
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v14, v10);
  v17 = [*(*sub_1000080F8(v27 v27[3]) + 16)];
  if (v17 && (v18 = v17, v19 = [v17 aa_altDSID], v18, v19))
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);

  v23 = sub_100245D38(v16, v20, v22, a2, a3);
  sub_10000839C(v27);
  if (v23)
  {
    v24 = v23;
    sub_100245E08(a4, a5 & 1);
  }

  return v23;
}

uint64_t sub_100122468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_100122490, 0, 0);
}

uint64_t sub_100122490()
{
  v1 = *(v0 + 56);
  v8 = *(v0 + 40);
  *(v0 + 16) = *sub_1000080F8((*(v0 + 32) + 96), *(*(v0 + 32) + 120));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = v0 + 16;
  *(v2 + 24) = v8;
  *(v2 + 40) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = type metadata accessor for CloudShareInfo();
  *v4 = v0;
  v4[1] = sub_1001225C4;
  v6 = *(v0 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000014, 0x800000010032DA40, sub_100094870, v2, v5);
}

uint64_t sub_1001225C4()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100122700, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100122700()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_100122764()
{
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  if (swift_dynamicCast())
  {
    v0 = sub_100133C24(&off_1003A38B8);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.code.getter();
    v1 = sub_100120C74(v4, v0);

    v2 = !v1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_100122864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 144) = a6;
  *(v8 + 152) = v7;
  *(v8 + 264) = a7;
  *(v8 + 128) = a4;
  *(v8 + 136) = a5;
  *(v8 + 112) = a2;
  *(v8 + 120) = a3;
  *(v8 + 104) = a1;
  v9 = type metadata accessor for ShareMessageContext(0);
  *(v8 + 160) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v11 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v8 + 184) = v11;
  v12 = *(v11 - 8);
  *(v8 + 192) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v14 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  *(v8 + 208) = v14;
  v15 = *(v14 - 8);
  *(v8 + 216) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1001229E4, 0, 0);
}

uint64_t sub_1001229E4()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  (*(v2 + 16))(v1, *(v0 + 152) + OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__accountStore, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = [*(*sub_1000080F8((v0 + 16) *(v0 + 40)) + 16)];
  if (v4 && (v5 = v4, v6 = [v4 aa_altDSID], v5, v6))
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v11 = *(v0 + 192);
  v10 = *(v0 + 200);
  v12 = *(v0 + 184);
  v13 = *(v0 + 152);
  v15 = *(v0 + 128);
  v14 = *(v0 + 136);
  sub_10000839C((v0 + 16));
  v16 = kAAAnalyticsEventCustodianSetupProcessAcceptSendRecoveryInfoMessage;
  (*(v11 + 16))(v10, v13 + OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__analyticsReporter, v12);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v10, v12);
  *(v0 + 232) = *(v0 + 80);
  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);

  v17 = v16;
  v18 = sub_100245D38(v17, v7, v9, v15, v14);
  *(v0 + 240) = v18;
  if (v18)
  {
    v19 = *(v0 + 264);
    v20 = *(v0 + 144);
    v21 = v18;
    sub_100245E08(v20, v19 & 1);
  }

  sub_100257274(v17);
  v22 = *(v0 + 264);
  v23 = *sub_1000080F8((*(v0 + 152) + 16), *(*(v0 + 152) + 40));
  v24 = swift_task_alloc();
  *(v0 + 248) = v24;
  *v24 = v0;
  v24[1] = sub_100122ED4;
  v25 = *(v0 + 144);
  v26 = *(v0 + 112);
  v27 = *(v0 + 120);
  v28 = *(v0 + 104);

  return sub_1000E9600(v28, v26, v27, v25, v22 & 1);
}

uint64_t sub_100122ED4()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_10012337C;
  }

  else
  {
    v3 = sub_100122FE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100122FE8()
{
  v35 = v0;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[13];
  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA88);
  sub_10013AEFC(v3, v2, type metadata accessor for ShareMessageContext);
  sub_10013AEFC(v3, v1, type metadata accessor for ShareMessageContext);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[21];
  v9 = v0[22];
  if (!v7)
  {

    sub_10013AF64(v8, type metadata accessor for ShareMessageContext);
    sub_10013AF64(v9, type metadata accessor for ShareMessageContext);
    v24 = v0[30];
    if (!v24)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = v0[20];
  v11 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v11 = 136315394;
  v12 = *(v10 + 20);
  type metadata accessor for URL();
  sub_10013AFC4(&qword_1003DD590, &type metadata accessor for URL);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  v15 = v14;
  sub_10013AF64(v9, type metadata accessor for ShareMessageContext);
  v16 = sub_10021145C(v13, v15, &v34);

  *(v11 + 4) = v16;
  *(v11 + 12) = 2080;
  v17 = v8 + *(v10 + 20);
  v18 = *(v17 + *(type metadata accessor for CloudShareInfo() + 24));
  v0[12] = v18;
  v19 = v18;
  sub_100005814(&qword_1003DEBC0, &unk_100343298);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  sub_10013AF64(v8, type metadata accessor for ShareMessageContext);
  v23 = sub_10021145C(v20, v22, &v34);

  *(v11 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v5, v6, "CKShare sent with url: %s and token: %s", v11, 0x16u);
  swift_arrayDestroy();

  v24 = v0[30];
  if (v24)
  {
LABEL_7:
    v25 = v0[29];
    [v24 updateTaskResultWithError:0];
    swift_getObjectType();
    v26 = v24;
    sub_100246FA8(v24);
  }

LABEL_8:
  v28 = v0[28];
  v27 = v0[29];
  v29 = v0[25];
  v31 = v0[21];
  v30 = v0[22];
  swift_unknownObjectRelease();

  v32 = v0[1];

  return v32();
}

uint64_t sub_10012337C()
{
  v1 = v0[32];
  v2 = v0[30];
  swift_getErrorValue();
  v3 = v0[7];
  v4 = v0[9];
  sub_1002DEA80(v0[8]);
  if (v2)
  {
    v6 = v0[29];
    v5 = v0[30];
    v7 = v5;
    swift_errorRetain();
    v8 = _convertErrorToNSError(_:)();
    [v7 updateTaskResultWithError:v8];

    swift_getObjectType();
    v9 = v7;
    sub_100246FA8(v5);
  }

  else
  {
    swift_errorRetain();
    v9 = 0;
  }

  v10 = v0[29];
  swift_willThrow();

  swift_unknownObjectRelease();
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAA88);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed to send CKShare message: %@", v14, 0xCu);
    sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
  }

  v17 = v0[28];
  v18 = v0[25];
  v20 = v0[21];
  v19 = v0[22];

  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_100123608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = type metadata accessor for CloudShareInfo();
  v5[23] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v5[27] = v8;
  v9 = *(v8 - 8);
  v5[28] = v9;
  v10 = *(v9 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v5[31] = v11;
  v12 = *(v11 - 8);
  v5[32] = v12;
  v13 = *(v12 + 64) + 15;
  v5[33] = swift_task_alloc();
  v14 = type metadata accessor for CustodianRecoveryInfoRecord();
  v5[34] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();

  return _swift_task_switch(sub_10012384C, 0, 0);
}

uint64_t sub_10012384C()
{
  v19 = v0;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = type metadata accessor for Logger();
  *(v0 + 392) = sub_100008D04(v2, qword_1003FAA58);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10021145C(v6, v5, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching the cloudkit participant information, handle: %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v9 = *(*(v0 + 152) + *(*(v0 + 272) + 40));
  *(v0 + 496) = v9;
  if (v9 == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v10 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v10 = &qword_1003FA9C0;
  }

  v11 = *v10;
  v12 = v10[1];

  v13 = sub_1002E2BC4(v11, v12);
  *(v0 + 400) = v13;

  v14 = swift_task_alloc();
  *(v0 + 408) = v14;
  *v14 = v0;
  v14[1] = sub_100123B04;
  v16 = *(v0 + 160);
  v15 = *(v0 + 168);

  return sub_100253614(v16, v15, v13);
}

uint64_t sub_100123B04(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 408);
  v7 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {
    v5 = sub_100123F60;
  }

  else
  {
    v5 = sub_100123C18;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100123C18()
{
  v33 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  [*(v0 + 416) setPermission:*(v0 + 176)];
  sub_10013AEFC(v5, v1, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_10013AEFC(v5, v3, type metadata accessor for CustodianRecoveryInfoRecord);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 376);
  v10 = *(v0 + 384);
  if (v8)
  {
    v31 = v7;
    v12 = *(v0 + 256);
    v11 = *(v0 + 264);
    v13 = *(v0 + 248);
    v30 = *(v0 + 168);
    v28 = *(v0 + 272);
    v29 = *(v0 + 160);
    v14 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v14 = 136315650;
    (*(v12 + 16))(v11, v10, v13);
    sub_10013AF64(v10, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_10021145C(v15, v17, &v32);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = v9 + *(v28 + 20);
    v20 = UUID.uuidString.getter();
    v22 = v21;
    sub_10013AF64(v9, type metadata accessor for CustodianRecoveryInfoRecord);
    v23 = sub_10021145C(v20, v22, &v32);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_10021145C(v29, v30, &v32);
    _os_log_impl(&_mh_execute_header, v6, v31, "Creating new share, recordID: %s, zone: %s, participant: %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 384), type metadata accessor for CustodianRecoveryInfoRecord);

    sub_10013AF64(v9, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v24 = swift_task_alloc();
  *(v0 + 432) = v24;
  *v24 = v0;
  v24[1] = sub_100124854;
  v25 = *(v0 + 416);
  v26 = *(v0 + 152);

  return sub_100134490(v26, v25);
}

uint64_t sub_100123F60()
{
  v92 = v0;
  v1 = *(v0 + 424);
  *(v0 + 456) = v1;
  v2 = *(v0 + 392);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);

  sub_10013AEFC(v6, v3, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_10013AEFC(v6, v4, type metadata accessor for CustodianRecoveryInfoRecord);

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 328);
  v10 = *(v0 + 336);
  if (v9)
  {
    v75 = *(v0 + 272);
    v87 = v8;
    log = v7;
    v13 = *(v0 + 256);
    v12 = *(v0 + 264);
    v14 = *(v0 + 248);
    v79 = *(v0 + 160);
    v82 = *(v0 + 168);
    v15 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v15 = 138413058;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v16;
    *v77 = v16;
    *(v15 + 12) = 2080;
    (*(v13 + 16))(v12, v10, v14);
    sub_10013AF64(v10, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_10021145C(v17, v19, v91);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2080;
    v21 = v11 + *(v75 + 20);
    v22 = UUID.uuidString.getter();
    v24 = v23;
    sub_10013AF64(v11, type metadata accessor for CustodianRecoveryInfoRecord);
    v25 = sub_10021145C(v22, v24, v91);

    *(v15 + 24) = v25;
    *(v15 + 32) = 2080;
    *(v15 + 34) = sub_10021145C(v79, v82, v91);
    _os_log_impl(&_mh_execute_header, log, v87, "Error occured when creating a CKShare %@, recordID: %s, zone: %s, participant: %s", v15, 0x2Au);
    sub_100008D3C(v77, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 336), type metadata accessor for CustodianRecoveryInfoRecord);

    sub_10013AF64(v11, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v26 = *(v0 + 72);
    *(v0 + 464) = v26;
    *(v0 + 96) = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003DA8D0, type metadata accessor for CKError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v27 = *(v0 + 88);
    *(v0 + 104) = v27;
    _BridgedStoredNSError.code.getter();

    v28 = sub_1002DF114(*(v0 + 112), v26);
    if (v28)
    {
      v29 = *(v0 + 392);
      v31 = *(v0 + 312);
      v30 = *(v0 + 320);
      v32 = *(v0 + 168);
      v33 = *(v0 + 152);

      sub_10013AEFC(v33, v30, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AEFC(v33, v31, type metadata accessor for CustodianRecoveryInfoRecord);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 312);
      v38 = *(v0 + 320);
      if (v36)
      {
        loga = v35;
        v40 = *(v0 + 256);
        v39 = *(v0 + 264);
        v41 = *(v0 + 248);
        v85 = *(v0 + 168);
        v80 = *(v0 + 272);
        v83 = *(v0 + 160);
        v42 = swift_slowAlloc();
        v91[0] = swift_slowAlloc();
        *v42 = 136315650;
        (*(v40 + 16))(v39, v38, v41);
        sub_10013AF64(v38, type metadata accessor for CustodianRecoveryInfoRecord);
        sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        (*(v40 + 8))(v39, v41);
        v46 = sub_10021145C(v43, v45, v91);

        *(v42 + 4) = v46;
        *(v42 + 12) = 2080;
        v47 = v37 + *(v80 + 20);
        v48 = UUID.uuidString.getter();
        v50 = v49;
        sub_10013AF64(v37, type metadata accessor for CustodianRecoveryInfoRecord);
        v51 = sub_10021145C(v48, v50, v91);

        *(v42 + 14) = v51;
        *(v42 + 22) = 2080;
        *(v42 + 24) = sub_10021145C(v83, v85, v91);
        _os_log_impl(&_mh_execute_header, v34, loga, "Error is client-server conflict, so checking if the record is already shared recordID: %s, zone: %s, participant: %s", v42, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10013AF64(*(v0 + 320), type metadata accessor for CustodianRecoveryInfoRecord);

        sub_10013AF64(v37, type metadata accessor for CustodianRecoveryInfoRecord);
      }

      v69 = swift_task_alloc();
      *(v0 + 472) = v69;
      *v69 = v0;
      v69[1] = sub_100126044;
      v70 = *(v0 + 152);

      return sub_1001326E8(v70);
    }
  }

  v52 = *(v0 + 392);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Error is not of client-server conflict, so not fetching the existing share from server", v55, 2u);
  }

  swift_getErrorValue();
  v56 = *(v0 + 16);
  sub_100255F6C(-7065, *(v0 + 24), *(v0 + 32));
  swift_willThrow();

  v58 = *(v0 + 376);
  v57 = *(v0 + 384);
  v60 = *(v0 + 360);
  v59 = *(v0 + 368);
  v62 = *(v0 + 344);
  v61 = *(v0 + 352);
  v64 = *(v0 + 328);
  v63 = *(v0 + 336);
  v66 = *(v0 + 312);
  v65 = *(v0 + 320);
  v71 = *(v0 + 304);
  v72 = *(v0 + 296);
  v73 = *(v0 + 288);
  v74 = *(v0 + 280);
  v76 = *(v0 + 264);
  v78 = *(v0 + 240);
  v81 = *(v0 + 232);
  v84 = *(v0 + 208);
  v86 = *(v0 + 200);
  v88 = *(v0 + 192);

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_100124854(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 432);
  v7 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v5 = sub_100125744;
  }

  else
  {
    v5 = sub_100124968;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100124968()
{
  v173 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 392);
  v3 = *(v0 + 360);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  sub_10013AEFC(v5, *(v0 + 368), type metadata accessor for CustodianRecoveryInfoRecord);
  sub_10013AEFC(v5, v3, type metadata accessor for CustodianRecoveryInfoRecord);

  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 360);
  v11 = *(v0 + 368);
  v167 = v0;
  if (v9)
  {
    v162 = v8;
    v13 = *(v0 + 256);
    v12 = *(v0 + 264);
    v14 = *(v0 + 248);
    v152 = *(v0 + 168);
    v142 = *(v0 + 272);
    v148 = *(v0 + 160);
    v15 = swift_slowAlloc();
    v172[0] = swift_slowAlloc();
    *v15 = 136315650;
    (*(v13 + 16))(v12, v11, v14);
    sub_10013AF64(v11, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_10021145C(v16, v18, v172);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = v10 + *(v142 + 20);
    v21 = UUID.uuidString.getter();
    v23 = v22;
    sub_10013AF64(v10, type metadata accessor for CustodianRecoveryInfoRecord);
    v24 = sub_10021145C(v21, v23, v172);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_10021145C(v148, v152, v172);
    _os_log_impl(&_mh_execute_header, v7, v162, "CKShare created successfully for recordID: %s, zone: %s, participant: %s", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(v11, type metadata accessor for CustodianRecoveryInfoRecord);

    sub_10013AF64(v10, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v25 = [*(v0 + 440) participants];
  sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v32 = *(v0 + 416);
      v33 = CKShareParticipant.participantID.getter();
      v35 = v34;
      if (v33 == CKShareParticipant.participantID.getter() && v35 == v36)
      {
        v0 = v167;
        v39 = *(v167 + 416);
        v40 = *(v167 + 400);

        goto LABEL_25;
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        v0 = v167;
        v41 = *(v167 + 416);

        goto LABEL_25;
      }

      ++v28;
      v0 = v167;
      if (v31 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:
  v42 = *(v0 + 416);

  v30 = 0;
LABEL_25:

  v44 = *(v0 + 440);
  v43 = *(v0 + 448);
  v45 = v30;
  v46 = sub_100253D68(v30);

  if (v43)
  {

LABEL_27:
    v48 = *(v0 + 376);
    v47 = *(v0 + 384);
    v50 = *(v0 + 360);
    v49 = *(v0 + 368);
    v52 = *(v0 + 344);
    v51 = *(v0 + 352);
    v54 = *(v0 + 328);
    v53 = *(v0 + 336);
    v56 = *(v0 + 312);
    v55 = *(v0 + 320);
    v127 = *(v0 + 304);
    v128 = *(v0 + 296);
    v130 = *(v0 + 288);
    v133 = *(v0 + 280);
    v137 = *(v0 + 264);
    v143 = *(v0 + 240);
    v149 = *(v0 + 232);
    v153 = *(v0 + 208);
    v157 = *(v0 + 200);
    v163 = *(v0 + 192);

    v57 = *(v0 + 8);
    goto LABEL_42;
  }

  v58 = [v44 URL];
  if (!v58)
  {
    v66 = *(v0 + 392);
    v67 = *(v0 + 344);
    v68 = *(v0 + 168);
    v69 = *(v0 + 152);
    sub_10013AEFC(v69, *(v0 + 352), type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AEFC(v69, v67, type metadata accessor for CustodianRecoveryInfoRecord);

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    v72 = os_log_type_enabled(v70, v71);
    v74 = *(v0 + 344);
    v73 = *(v0 + 352);
    if (v72)
    {
      v155 = v71;
      v76 = *(v0 + 256);
      v75 = *(v0 + 264);
      v165 = v44;
      v77 = *(v0 + 248);
      v144 = *(v0 + 168);
      v134 = *(v0 + 272);
      v138 = *(v0 + 160);
      v159 = v46;
      v78 = swift_slowAlloc();
      v172[0] = swift_slowAlloc();
      *v78 = 136315650;
      (*(v76 + 16))(v75, v73, v77);
      sub_10013AF64(v73, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      v82 = v77;
      v44 = v165;
      (*(v76 + 8))(v75, v82);
      v83 = sub_10021145C(v79, v81, v172);

      *(v78 + 4) = v83;
      *(v78 + 12) = 2080;
      v84 = v74 + *(v134 + 20);
      v85 = UUID.uuidString.getter();
      v87 = v86;
      v0 = v167;
      sub_10013AF64(v74, type metadata accessor for CustodianRecoveryInfoRecord);
      v88 = sub_10021145C(v85, v87, v172);

      *(v78 + 14) = v88;
      *(v78 + 22) = 2080;
      *(v78 + 24) = sub_10021145C(v138, v144, v172);
      _os_log_impl(&_mh_execute_header, v70, v155, "Share URL missing in CKShare, recordID: %s, zone: %s, participant: %s", v78, 0x20u);
      swift_arrayDestroy();

      v46 = v159;
    }

    else
    {
      sub_10013AF64(*(v0 + 352), type metadata accessor for CustodianRecoveryInfoRecord);

      sub_10013AF64(v74, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    type metadata accessor for AACustodianError(0);
    *(v0 + 136) = -7067;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v171 = *(v0 + 128);
    swift_willThrow();

    goto LABEL_27;
  }

  v154 = v45;
  v158 = v46;
  v59 = *(v0 + 496);
  v61 = *(v0 + 232);
  v60 = *(v0 + 240);
  v63 = *(v0 + 216);
  v62 = *(v0 + 224);
  v64 = v58;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v62 + 16))(v61, v60, v63);
  v164 = v44;
  if (v59 == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v65 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v65 = &qword_1003FA9C0;
  }

  v89 = v167;
  v168 = *(v167 + 392);
  v90 = v89[29];
  v91 = v89[27];
  v139 = v89[26];
  v145 = v89[25];
  v150 = v89[24];
  v92 = v89[23];
  v93 = v89[21];
  v94 = v89[18];
  v96 = *v65;
  v95 = v65[1];
  v97 = *(v89[28] + 32);

  v97(v94, v90, v91);
  v98 = (v94 + *(v92 + 20));
  *v98 = v96;
  v98[1] = v95;
  v135 = v92;
  *(v94 + *(v92 + 24)) = v158;
  sub_10013AEFC(v94, v139, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v94, v145, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v94, v150, type metadata accessor for CloudShareInfo);

  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.default.getter();

  v101 = os_log_type_enabled(v99, v100);
  v169 = v89[30];
  v103 = v89[27];
  v102 = v89[28];
  v105 = v89[25];
  v104 = v89[26];
  v106 = v89[24];
  if (v101)
  {
    v140 = v89[20];
    v146 = v89[21];
    v107 = swift_slowAlloc();
    v172[0] = swift_slowAlloc();
    *v107 = 136315906;
    sub_10013AFC4(&qword_1003DD590, &type metadata accessor for URL);
    v131 = v100;
    v108 = dispatch thunk of CustomStringConvertible.description.getter();
    v160 = v103;
    v110 = v109;
    sub_10013AF64(v104, type metadata accessor for CloudShareInfo);
    v111 = sub_10021145C(v108, v110, v172);

    *(v107 + 4) = v111;
    *(v107 + 12) = 2080;
    v112 = (v105 + *(v135 + 20));
    v114 = *v112;
    v113 = v112[1];

    sub_10013AF64(v105, type metadata accessor for CloudShareInfo);
    v115 = sub_10021145C(v114, v113, v172);

    *(v107 + 14) = v115;
    *(v107 + 22) = 2080;
    *(v107 + 24) = sub_10021145C(v140, v146, v172);
    *(v107 + 32) = 1024;
    LODWORD(v115) = *(v106 + *(v135 + 24)) != 0;
    sub_10013AF64(v106, type metadata accessor for CloudShareInfo);
    *(v107 + 34) = v115;
    _os_log_impl(&_mh_execute_header, v99, v131, "Returning share information with shareURL: %s, container: %s, participant: %s, hasToken: %{BOOL}d", v107, 0x26u);
    swift_arrayDestroy();

    (*(v102 + 8))(v169, v160);
  }

  else
  {
    sub_10013AF64(v89[24], type metadata accessor for CloudShareInfo);

    sub_10013AF64(v105, type metadata accessor for CloudShareInfo);
    sub_10013AF64(v104, type metadata accessor for CloudShareInfo);
    (*(v102 + 8))(v169, v103);
  }

  v117 = v89[47];
  v116 = v89[48];
  v118 = v89[45];
  v119 = v89[46];
  v121 = v89[43];
  v120 = v89[44];
  v123 = v89[41];
  v122 = v89[42];
  v124 = v89[39];
  v125 = v89[40];
  v129 = v89[38];
  v132 = v89[37];
  v136 = v89[36];
  v141 = v89[35];
  v147 = v89[33];
  v151 = v89[30];
  v156 = v89[29];
  v161 = v89[26];
  v166 = v89[25];
  v170 = v89[24];

  v57 = v89[1];
LABEL_42:

  return v57();
}

uint64_t sub_100125744()
{
  v93 = v0;

  v1 = *(v0 + 448);
  v2 = *(v0 + 416);
  *(v0 + 456) = v1;
  v3 = *(v0 + 392);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);

  sub_10013AEFC(v7, v4, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_10013AEFC(v7, v5, type metadata accessor for CustodianRecoveryInfoRecord);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 328);
  v11 = *(v0 + 336);
  if (v10)
  {
    v76 = *(v0 + 272);
    v88 = v9;
    log = v8;
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = *(v0 + 248);
    v80 = *(v0 + 160);
    v83 = *(v0 + 168);
    v16 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v92[0] = swift_slowAlloc();
    *v16 = 138413058;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v17;
    *v78 = v17;
    *(v16 + 12) = 2080;
    (*(v14 + 16))(v13, v11, v15);
    sub_10013AF64(v11, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = sub_10021145C(v18, v20, v92);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2080;
    v22 = v12 + *(v76 + 20);
    v23 = UUID.uuidString.getter();
    v25 = v24;
    sub_10013AF64(v12, type metadata accessor for CustodianRecoveryInfoRecord);
    v26 = sub_10021145C(v23, v25, v92);

    *(v16 + 24) = v26;
    *(v16 + 32) = 2080;
    *(v16 + 34) = sub_10021145C(v80, v83, v92);
    _os_log_impl(&_mh_execute_header, log, v88, "Error occured when creating a CKShare %@, recordID: %s, zone: %s, participant: %s", v16, 0x2Au);
    sub_100008D3C(v78, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 336), type metadata accessor for CustodianRecoveryInfoRecord);

    sub_10013AF64(v12, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v27 = *(v0 + 72);
    *(v0 + 464) = v27;
    *(v0 + 96) = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003DA8D0, type metadata accessor for CKError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = *(v0 + 88);
    *(v0 + 104) = v28;
    _BridgedStoredNSError.code.getter();

    v29 = sub_1002DF114(*(v0 + 112), v27);
    if (v29)
    {
      v30 = *(v0 + 392);
      v32 = *(v0 + 312);
      v31 = *(v0 + 320);
      v33 = *(v0 + 168);
      v34 = *(v0 + 152);

      sub_10013AEFC(v34, v31, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AEFC(v34, v32, type metadata accessor for CustodianRecoveryInfoRecord);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 312);
      v39 = *(v0 + 320);
      if (v37)
      {
        loga = v36;
        v41 = *(v0 + 256);
        v40 = *(v0 + 264);
        v42 = *(v0 + 248);
        v86 = *(v0 + 168);
        v81 = *(v0 + 272);
        v84 = *(v0 + 160);
        v43 = swift_slowAlloc();
        v92[0] = swift_slowAlloc();
        *v43 = 136315650;
        (*(v41 + 16))(v40, v39, v42);
        sub_10013AF64(v39, type metadata accessor for CustodianRecoveryInfoRecord);
        sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v46 = v45;
        (*(v41 + 8))(v40, v42);
        v47 = sub_10021145C(v44, v46, v92);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2080;
        v48 = v38 + *(v81 + 20);
        v49 = UUID.uuidString.getter();
        v51 = v50;
        sub_10013AF64(v38, type metadata accessor for CustodianRecoveryInfoRecord);
        v52 = sub_10021145C(v49, v51, v92);

        *(v43 + 14) = v52;
        *(v43 + 22) = 2080;
        *(v43 + 24) = sub_10021145C(v84, v86, v92);
        _os_log_impl(&_mh_execute_header, v35, loga, "Error is client-server conflict, so checking if the record is already shared recordID: %s, zone: %s, participant: %s", v43, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10013AF64(*(v0 + 320), type metadata accessor for CustodianRecoveryInfoRecord);

        sub_10013AF64(v38, type metadata accessor for CustodianRecoveryInfoRecord);
      }

      v70 = swift_task_alloc();
      *(v0 + 472) = v70;
      *v70 = v0;
      v70[1] = sub_100126044;
      v71 = *(v0 + 152);

      return sub_1001326E8(v71);
    }
  }

  v53 = *(v0 + 392);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "Error is not of client-server conflict, so not fetching the existing share from server", v56, 2u);
  }

  swift_getErrorValue();
  v57 = *(v0 + 16);
  sub_100255F6C(-7065, *(v0 + 24), *(v0 + 32));
  swift_willThrow();

  v59 = *(v0 + 376);
  v58 = *(v0 + 384);
  v61 = *(v0 + 360);
  v60 = *(v0 + 368);
  v63 = *(v0 + 344);
  v62 = *(v0 + 352);
  v65 = *(v0 + 328);
  v64 = *(v0 + 336);
  v67 = *(v0 + 312);
  v66 = *(v0 + 320);
  v72 = *(v0 + 304);
  v73 = *(v0 + 296);
  v74 = *(v0 + 288);
  v75 = *(v0 + 280);
  v77 = *(v0 + 264);
  v79 = *(v0 + 240);
  v82 = *(v0 + 232);
  v85 = *(v0 + 208);
  v87 = *(v0 + 200);
  v89 = *(v0 + 192);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_100126044(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 472);
  v7 = *v2;
  *(v3 + 480) = a1;
  *(v3 + 488) = v1;

  if (v1)
  {
    v5 = sub_1001271D0;
  }

  else
  {
    v5 = sub_100126158;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100126158()
{
  v192 = v0;
  v1 = *(v0 + 480);
  if (!v1)
  {
    v24 = *(v0 + 456);
    v25 = *(v0 + 392);
    v26 = *(v0 + 280);
    v27 = *(v0 + 168);
    v28 = *(v0 + 152);
    sub_10013AEFC(v28, *(v0 + 288), type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AEFC(v28, v26, type metadata accessor for CustodianRecoveryInfoRecord);

    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 456);
      v32 = *(v0 + 288);
      v33 = *(v0 + 264);
      v158 = *(v0 + 272);
      v165 = *(v0 + 280);
      v35 = *(v0 + 248);
      v34 = *(v0 + 256);
      v176 = *(v0 + 160);
      v182 = *(v0 + 168);
      v36 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v191[0] = swift_slowAlloc();
      *v36 = 138413058;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v37;
      *v170 = v37;
      *(v36 + 12) = 2080;
      (*(v34 + 16))(v33, v32, v35);
      sub_10013AF64(v32, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v34 + 8))(v33, v35);
      v41 = sub_10021145C(v38, v40, v191);

      *(v36 + 14) = v41;
      *(v36 + 22) = 2080;
      v42 = v165 + *(v158 + 20);
      v43 = UUID.uuidString.getter();
      v45 = v44;
      sub_10013AF64(v165, type metadata accessor for CustodianRecoveryInfoRecord);
      v46 = sub_10021145C(v43, v45, v191);

      *(v36 + 24) = v46;
      *(v36 + 32) = 2080;
      *(v36 + 34) = sub_10021145C(v176, v182, v191);
      _os_log_impl(&_mh_execute_header, v29, v30, "Couldn't find existing share, so throwing the same error %@, recordID: %s, zone: %s, participant: %s", v36, 0x2Au);
      sub_100008D3C(v170, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      v55 = *(v0 + 280);
      sub_10013AF64(*(v0 + 288), type metadata accessor for CustodianRecoveryInfoRecord);

      sub_10013AF64(v55, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v56 = *(v0 + 456);
    v57 = *(v0 + 464);
    swift_getErrorValue();
    v58 = *(v0 + 40);
    sub_100255F6C(-7065, *(v0 + 48), *(v0 + 56));
    swift_willThrow();

    goto LABEL_27;
  }

  v2 = *(v0 + 392);
  v3 = *(v0 + 296);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  sub_10013AEFC(v5, *(v0 + 304), type metadata accessor for CustodianRecoveryInfoRecord);
  sub_10013AEFC(v5, v3, type metadata accessor for CustodianRecoveryInfoRecord);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  if (v8)
  {
    v181 = v7;
    v12 = *(v0 + 256);
    v11 = *(v0 + 264);
    v13 = *(v0 + 248);
    v169 = *(v0 + 168);
    v157 = *(v0 + 272);
    v164 = *(v0 + 160);
    v14 = swift_slowAlloc();
    v191[0] = swift_slowAlloc();
    *v14 = 136315650;
    (*(v12 + 16))(v11, v10, v13);
    sub_10013AF64(v10, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_10021145C(v15, v17, v191);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = v9 + *(v157 + 20);
    v20 = UUID.uuidString.getter();
    v22 = v21;
    sub_10013AF64(v9, type metadata accessor for CustodianRecoveryInfoRecord);
    v23 = sub_10021145C(v20, v22, v191);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_10021145C(v164, v169, v191);
    _os_log_impl(&_mh_execute_header, v6, v181, "Found existing CKShare, recordID: %s, zone: %s, participant: %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 304), type metadata accessor for CustodianRecoveryInfoRecord);

    sub_10013AF64(v9, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v47 = v1;
  v48 = [v47 participants];
  sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
  v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v49 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v51 = 0;
    while (1)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v51 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v52 = *(v49 + 8 * v51 + 32);
      }

      v53 = v52;
      v54 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (([v52 isCurrentUser] & 1) == 0)
      {

        goto LABEL_25;
      }

      ++v51;
      if (v54 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:

  v53 = 0;
LABEL_25:
  v59 = *(v0 + 456);

  v60 = *(v0 + 488);
  v61 = v53;
  v62 = sub_100253D68(v53);

  if (v60)
  {

LABEL_27:
    v64 = *(v0 + 376);
    v63 = *(v0 + 384);
    v65 = *(v0 + 360);
    v66 = *(v0 + 368);
    v68 = *(v0 + 344);
    v67 = *(v0 + 352);
    v70 = *(v0 + 328);
    v69 = *(v0 + 336);
    v72 = *(v0 + 312);
    v71 = *(v0 + 320);
    v142 = *(v0 + 304);
    v143 = *(v0 + 296);
    v145 = *(v0 + 288);
    v148 = *(v0 + 280);
    v152 = *(v0 + 264);
    v159 = *(v0 + 240);
    v166 = *(v0 + 232);
    v171 = *(v0 + 208);
    v177 = *(v0 + 200);
    v183 = *(v0 + 192);

    v73 = *(v0 + 8);
    goto LABEL_28;
  }

  v75 = [v47 URL];
  if (!v75)
  {
    v185 = v47;
    v83 = *(v0 + 392);
    v84 = *(v0 + 344);
    v85 = *(v0 + 168);
    v86 = *(v0 + 152);
    sub_10013AEFC(v86, *(v0 + 352), type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AEFC(v86, v84, type metadata accessor for CustodianRecoveryInfoRecord);

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    v89 = os_log_type_enabled(v87, v88);
    v91 = *(v0 + 344);
    v90 = *(v0 + 352);
    if (v89)
    {
      v172 = v88;
      v93 = *(v0 + 256);
      v92 = *(v0 + 264);
      v188 = v61;
      v94 = *(v0 + 248);
      v160 = *(v0 + 168);
      v149 = *(v0 + 272);
      v153 = *(v0 + 160);
      v95 = swift_slowAlloc();
      v191[0] = swift_slowAlloc();
      *v95 = 136315650;
      (*(v93 + 16))(v92, v90, v94);
      sub_10013AF64(v90, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v97;
      v99 = v94;
      v61 = v188;
      (*(v93 + 8))(v92, v99);
      v100 = sub_10021145C(v96, v98, v191);

      *(v95 + 4) = v100;
      *(v95 + 12) = 2080;
      v101 = v91 + *(v149 + 20);
      v102 = UUID.uuidString.getter();
      v104 = v103;
      sub_10013AF64(v91, type metadata accessor for CustodianRecoveryInfoRecord);
      v105 = sub_10021145C(v102, v104, v191);

      *(v95 + 14) = v105;
      *(v95 + 22) = 2080;
      *(v95 + 24) = sub_10021145C(v153, v160, v191);
      _os_log_impl(&_mh_execute_header, v87, v172, "Share URL missing in CKShare, recordID: %s, zone: %s, participant: %s", v95, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10013AF64(*(v0 + 352), type metadata accessor for CustodianRecoveryInfoRecord);

      sub_10013AF64(v91, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    type metadata accessor for AACustodianError(0);
    *(v0 + 136) = -7067;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v190 = *(v0 + 128);
    swift_willThrow();

    goto LABEL_27;
  }

  v178 = v62;
  v76 = *(v0 + 496);
  v78 = *(v0 + 232);
  v77 = *(v0 + 240);
  v80 = *(v0 + 216);
  v79 = *(v0 + 224);
  v81 = v75;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v79 + 16))(v78, v77, v80);
  if (v76 == 1)
  {
    v184 = v47;
    v187 = v61;
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v82 = &qword_1003FA9D0;
  }

  else
  {
    v184 = v47;
    v187 = v61;
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v82 = &qword_1003FA9C0;
  }

  v106 = *(v0 + 232);
  v107 = *(v0 + 216);
  v154 = *(v0 + 208);
  v161 = *(v0 + 200);
  v108 = *(v0 + 184);
  v167 = *(v0 + 192);
  v173 = *(v0 + 392);
  v109 = *(v0 + 168);
  v110 = *(v0 + 144);
  v112 = *v82;
  v111 = v82[1];
  v113 = *(*(v0 + 224) + 32);

  v113(v110, v106, v107);
  v114 = (v110 + *(v108 + 20));
  *v114 = v112;
  v114[1] = v111;
  v150 = v108;
  *(v110 + *(v108 + 24)) = v178;
  sub_10013AEFC(v110, v154, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v110, v161, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v110, v167, type metadata accessor for CloudShareInfo);

  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.default.getter();

  v117 = os_log_type_enabled(v115, v116);
  v179 = *(v0 + 240);
  v118 = *(v0 + 216);
  v119 = *(v0 + 224);
  v121 = *(v0 + 200);
  v120 = *(v0 + 208);
  v122 = *(v0 + 192);
  if (v117)
  {
    v155 = *(v0 + 160);
    v162 = *(v0 + 168);
    v123 = swift_slowAlloc();
    v191[0] = swift_slowAlloc();
    *v123 = 136315906;
    sub_10013AFC4(&qword_1003DD590, &type metadata accessor for URL);
    v146 = v116;
    v124 = dispatch thunk of CustomStringConvertible.description.getter();
    v174 = v118;
    v126 = v125;
    sub_10013AF64(v120, type metadata accessor for CloudShareInfo);
    v127 = sub_10021145C(v124, v126, v191);

    *(v123 + 4) = v127;
    *(v123 + 12) = 2080;
    v128 = (v121 + *(v150 + 20));
    v130 = *v128;
    v129 = v128[1];

    sub_10013AF64(v121, type metadata accessor for CloudShareInfo);
    v131 = sub_10021145C(v130, v129, v191);

    *(v123 + 14) = v131;
    *(v123 + 22) = 2080;
    *(v123 + 24) = sub_10021145C(v155, v162, v191);
    *(v123 + 32) = 1024;
    LODWORD(v131) = *(v122 + *(v150 + 24)) != 0;
    sub_10013AF64(v122, type metadata accessor for CloudShareInfo);
    *(v123 + 34) = v131;
    _os_log_impl(&_mh_execute_header, v115, v146, "Returning share information with shareURL: %s, container: %s, participant: %s, hasToken: %{BOOL}d", v123, 0x26u);
    swift_arrayDestroy();

    (*(v119 + 8))(v179, v174);
  }

  else
  {
    sub_10013AF64(*(v0 + 192), type metadata accessor for CloudShareInfo);

    sub_10013AF64(v121, type metadata accessor for CloudShareInfo);
    sub_10013AF64(v120, type metadata accessor for CloudShareInfo);
    (*(v119 + 8))(v179, v118);
  }

  v133 = *(v0 + 376);
  v132 = *(v0 + 384);
  v134 = *(v0 + 360);
  v135 = *(v0 + 368);
  v137 = *(v0 + 344);
  v136 = *(v0 + 352);
  v139 = *(v0 + 328);
  v138 = *(v0 + 336);
  v141 = *(v0 + 312);
  v140 = *(v0 + 320);
  v144 = *(v0 + 304);
  v147 = *(v0 + 296);
  v151 = *(v0 + 288);
  v156 = *(v0 + 280);
  v163 = *(v0 + 264);
  v168 = *(v0 + 240);
  v175 = *(v0 + 232);
  v180 = *(v0 + 208);
  v186 = *(v0 + 200);
  v189 = *(v0 + 192);

  v73 = *(v0 + 8);
LABEL_28:

  return v73();
}

uint64_t sub_1001271D0()
{
  v1 = *(v0 + 456);

  v24 = *(v0 + 488);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v7 = *(v0 + 344);
  v6 = *(v0 + 352);
  v9 = *(v0 + 328);
  v8 = *(v0 + 336);
  v11 = *(v0 + 312);
  v10 = *(v0 + 320);
  v14 = *(v0 + 304);
  v15 = *(v0 + 296);
  v16 = *(v0 + 288);
  v17 = *(v0 + 280);
  v18 = *(v0 + 264);
  v19 = *(v0 + 240);
  v20 = *(v0 + 232);
  v21 = *(v0 + 208);
  v22 = *(v0 + 200);
  v23 = *(v0 + 192);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100127340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = type metadata accessor for CloudShareInfo();
  v5[19] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v5[23] = v8;
  v9 = *(v8 - 8);
  v5[24] = v9;
  v10 = *(v9 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v5[27] = v11;
  v12 = *(v11 - 8);
  v5[28] = v12;
  v13 = *(v12 + 64) + 15;
  v5[29] = swift_task_alloc();
  v14 = type metadata accessor for BeneficiaryInfoRecord();
  v5[30] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();

  return _swift_task_switch(sub_100127584, 0, 0);
}

uint64_t sub_100127584()
{
  v19 = v0;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = type metadata accessor for Logger();
  *(v0 + 360) = sub_100008D04(v2, qword_1003FAA58);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10021145C(v6, v5, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching the cloudkit participant information, handle: %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v9 = *(*(v0 + 120) + *(*(v0 + 240) + 40));
  *(v0 + 464) = v9;
  if (v9 == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v10 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v10 = &qword_1003FA9F0;
  }

  v11 = *v10;
  v12 = v10[1];

  v13 = sub_1002E2BC4(v11, v12);
  *(v0 + 368) = v13;

  v14 = swift_task_alloc();
  *(v0 + 376) = v14;
  *v14 = v0;
  v14[1] = sub_10012783C;
  v16 = *(v0 + 128);
  v15 = *(v0 + 136);

  return sub_100253614(v16, v15, v13);
}

uint64_t sub_10012783C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v7 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {
    v5 = sub_100127C8C;
  }

  else
  {
    v5 = sub_100127950;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100127950()
{
  v32 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  [*(v0 + 384) setPermission:*(v0 + 144)];
  sub_10013AEFC(v5, v1, type metadata accessor for BeneficiaryInfoRecord);
  sub_10013AEFC(v5, v3, type metadata accessor for BeneficiaryInfoRecord);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  if (v8)
  {
    v30 = v7;
    v11 = *(v0 + 232);
    v12 = *(v0 + 240);
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v28 = *(v0 + 128);
    v29 = *(v0 + 136);
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v15 = 136315650;
    (*(v13 + 16))(v11, v10 + *(v12 + 32), v14);
    sub_10013AF64(v10, type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v11, v14);
    v19 = sub_10021145C(v16, v18, &v31);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    sub_10013AF64(v9, type metadata accessor for BeneficiaryInfoRecord);
    v23 = sub_10021145C(v20, v22, &v31);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_10021145C(v28, v29, &v31);
    _os_log_impl(&_mh_execute_header, v6, v30, "Creating new share, recordID: %s, zone: %s, participant: %s", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 352), type metadata accessor for BeneficiaryInfoRecord);

    sub_10013AF64(v9, type metadata accessor for BeneficiaryInfoRecord);
  }

  v24 = swift_task_alloc();
  *(v0 + 400) = v24;
  *v24 = v0;
  v24[1] = sub_1001284CC;
  v25 = *(v0 + 384);
  v26 = *(v0 + 120);

  return sub_100135E88(v26, v25);
}

uint64_t sub_100127C8C()
{
  v87 = v0;
  v1 = *(v0 + 392);
  *(v0 + 424) = v1;
  v2 = *(v0 + 360);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);

  sub_10013AEFC(v6, v3, type metadata accessor for BeneficiaryInfoRecord);
  sub_10013AEFC(v6, v4, type metadata accessor for BeneficiaryInfoRecord);

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 296);
  v10 = *(v0 + 304);
  if (v9)
  {
    v82 = v8;
    v12 = *(v0 + 232);
    v13 = *(v0 + 240);
    log = v7;
    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    v75 = *(v0 + 128);
    v77 = *(v0 + 136);
    v16 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v86[0] = swift_slowAlloc();
    *v16 = 138413058;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v17;
    *v73 = v17;
    *(v16 + 12) = 2080;
    (*(v14 + 16))(v12, v10 + *(v13 + 32), v15);
    sub_10013AF64(v10, type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v14 + 8))(v12, v15);
    v21 = sub_10021145C(v18, v20, v86);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2080;
    v22 = UUID.uuidString.getter();
    v24 = v23;
    sub_10013AF64(v11, type metadata accessor for BeneficiaryInfoRecord);
    v25 = sub_10021145C(v22, v24, v86);

    *(v16 + 24) = v25;
    *(v16 + 32) = 2080;
    *(v16 + 34) = sub_10021145C(v75, v77, v86);
    _os_log_impl(&_mh_execute_header, log, v82, "Error occured when creating a CKShare %@, recordID: %s, zone: %s, participant: %s", v16, 0x2Au);
    sub_100008D3C(v73, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 304), type metadata accessor for BeneficiaryInfoRecord);

    sub_10013AF64(v11, type metadata accessor for BeneficiaryInfoRecord);
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v26 = *(v0 + 72);
    *(v0 + 432) = v26;
    if (sub_1002DECC8(v26))
    {
      v27 = *(v0 + 360);
      v28 = *(v0 + 280);
      v29 = *(v0 + 136);
      v30 = *(v0 + 120);
      sub_10013AEFC(v30, *(v0 + 288), type metadata accessor for BeneficiaryInfoRecord);
      sub_10013AEFC(v30, v28, type metadata accessor for BeneficiaryInfoRecord);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 280);
      v35 = *(v0 + 288);
      if (v33)
      {
        loga = v32;
        v36 = *(v0 + 232);
        v37 = *(v0 + 240);
        v39 = *(v0 + 216);
        v38 = *(v0 + 224);
        v78 = *(v0 + 128);
        v80 = *(v0 + 136);
        v40 = swift_slowAlloc();
        v86[0] = swift_slowAlloc();
        *v40 = 136315650;
        (*(v38 + 16))(v36, v35 + *(v37 + 32), v39);
        sub_10013AF64(v35, type metadata accessor for BeneficiaryInfoRecord);
        sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        (*(v38 + 8))(v36, v39);
        v44 = sub_10021145C(v41, v43, v86);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2080;
        v45 = UUID.uuidString.getter();
        v47 = v46;
        sub_10013AF64(v34, type metadata accessor for BeneficiaryInfoRecord);
        v48 = sub_10021145C(v45, v47, v86);

        *(v40 + 14) = v48;
        *(v40 + 22) = 2080;
        *(v40 + 24) = sub_10021145C(v78, v80, v86);
        _os_log_impl(&_mh_execute_header, v31, loga, "Error is client-server conflict, so checking if the record is already shared recordID: %s, zone: %s, participant: %s", v40, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10013AF64(*(v0 + 288), type metadata accessor for BeneficiaryInfoRecord);

        sub_10013AF64(v34, type metadata accessor for BeneficiaryInfoRecord);
      }

      v66 = swift_task_alloc();
      *(v0 + 440) = v66;
      *v66 = v0;
      v66[1] = sub_100129BF8;
      v67 = *(v0 + 120);

      return sub_1001376F4(v67);
    }
  }

  v49 = *(v0 + 360);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "Error is not of client-server conflict, so not fetching the existing share from server", v52, 2u);
  }

  swift_getErrorValue();
  v53 = *(v0 + 16);
  sub_100255F6C(-7065, *(v0 + 24), *(v0 + 32));
  swift_willThrow();

  v55 = *(v0 + 344);
  v54 = *(v0 + 352);
  v57 = *(v0 + 328);
  v56 = *(v0 + 336);
  v59 = *(v0 + 312);
  v58 = *(v0 + 320);
  v61 = *(v0 + 296);
  v60 = *(v0 + 304);
  v63 = *(v0 + 280);
  v62 = *(v0 + 288);
  v68 = *(v0 + 272);
  v69 = *(v0 + 264);
  v70 = *(v0 + 256);
  v71 = *(v0 + 248);
  v72 = *(v0 + 232);
  v74 = *(v0 + 208);
  v76 = *(v0 + 200);
  v79 = *(v0 + 176);
  v81 = *(v0 + 168);
  v83 = *(v0 + 160);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1001284CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  v7 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v5 = sub_1001293AC;
  }

  else
  {
    v5 = sub_1001285E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001285E0()
{
  v172 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 360);
  v3 = *(v0 + 328);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  sub_10013AEFC(v5, *(v0 + 336), type metadata accessor for BeneficiaryInfoRecord);
  sub_10013AEFC(v5, v3, type metadata accessor for BeneficiaryInfoRecord);

  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 328);
  v11 = *(v0 + 336);
  v166 = v0;
  if (v9)
  {
    v160 = v8;
    v12 = *(v0 + 232);
    v13 = *(v0 + 240);
    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    v147 = *(v0 + 128);
    loga = *(v0 + 136);
    v16 = swift_slowAlloc();
    v171[0] = swift_slowAlloc();
    *v16 = 136315650;
    (*(v14 + 16))(v12, v11 + *(v13 + 32), v15);
    sub_10013AF64(v11, type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v12, v15);
    v20 = sub_10021145C(v17, v19, v171);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = UUID.uuidString.getter();
    v23 = v22;
    sub_10013AF64(v10, type metadata accessor for BeneficiaryInfoRecord);
    v24 = sub_10021145C(v21, v23, v171);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_10021145C(v147, loga, v171);
    _os_log_impl(&_mh_execute_header, v7, v160, "CKShare created successfully for recordID: %s, zone: %s, participant: %s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(v11, type metadata accessor for BeneficiaryInfoRecord);

    sub_10013AF64(v10, type metadata accessor for BeneficiaryInfoRecord);
  }

  v25 = [*(v0 + 408) participants];
  sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v32 = *(v0 + 384);
      v33 = CKShareParticipant.participantID.getter();
      v35 = v34;
      if (v33 == CKShareParticipant.participantID.getter() && v35 == v36)
      {
        v0 = v166;
        v39 = *(v166 + 384);
        v40 = *(v166 + 368);

        goto LABEL_25;
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        v0 = v166;
        v41 = *(v166 + 384);

        goto LABEL_25;
      }

      ++v28;
      v0 = v166;
      if (v31 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:
  v42 = *(v0 + 384);

  v30 = 0;
LABEL_25:

  v44 = *(v0 + 408);
  v43 = *(v0 + 416);
  v45 = v30;
  v46 = sub_100253D68(v30);

  if (v43)
  {

LABEL_27:
    v48 = *(v0 + 344);
    v47 = *(v0 + 352);
    v50 = *(v0 + 328);
    v49 = *(v0 + 336);
    v52 = *(v0 + 312);
    v51 = *(v0 + 320);
    v54 = *(v0 + 296);
    v53 = *(v0 + 304);
    v56 = *(v0 + 280);
    v55 = *(v0 + 288);
    v128 = *(v0 + 272);
    v129 = *(v0 + 264);
    v131 = *(v0 + 256);
    v134 = *(v0 + 248);
    v138 = *(v0 + 232);
    v143 = *(v0 + 208);
    v148 = *(v0 + 200);
    logb = *(v0 + 176);
    v157 = *(v0 + 168);
    v161 = *(v0 + 160);

    v57 = *(v0 + 8);
    goto LABEL_42;
  }

  v58 = [v44 URL];
  if (!v58)
  {
    v66 = *(v0 + 360);
    v67 = *(v0 + 312);
    v68 = *(v0 + 136);
    v69 = *(v0 + 120);
    sub_10013AEFC(v69, *(v0 + 320), type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AEFC(v69, v67, type metadata accessor for BeneficiaryInfoRecord);

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    v72 = os_log_type_enabled(v70, v71);
    v74 = *(v0 + 312);
    v73 = *(v0 + 320);
    if (v72)
    {
      logc = v70;
      v149 = v71;
      v76 = *(v0 + 232);
      v75 = *(v0 + 240);
      v77 = v44;
      v79 = *(v0 + 216);
      v78 = *(v0 + 224);
      v135 = *(v0 + 128);
      v139 = *(v0 + 136);
      v163 = v46;
      v80 = swift_slowAlloc();
      v171[0] = swift_slowAlloc();
      *v80 = 136315650;
      (*(v78 + 16))(v76, v73 + *(v75 + 32), v79);
      sub_10013AF64(v73, type metadata accessor for BeneficiaryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v84 = v79;
      v44 = v77;
      (*(v78 + 8))(v76, v84);
      v85 = sub_10021145C(v81, v83, v171);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2080;
      v86 = UUID.uuidString.getter();
      v88 = v87;
      v0 = v166;
      sub_10013AF64(v74, type metadata accessor for BeneficiaryInfoRecord);
      v89 = sub_10021145C(v86, v88, v171);

      *(v80 + 14) = v89;
      *(v80 + 22) = 2080;
      *(v80 + 24) = sub_10021145C(v135, v139, v171);
      _os_log_impl(&_mh_execute_header, logc, v149, "Share URL missing in CKShare, recordID: %s, zone: %s, participant: %s", v80, 0x20u);
      swift_arrayDestroy();

      v46 = v163;
    }

    else
    {
      sub_10013AF64(*(v0 + 320), type metadata accessor for BeneficiaryInfoRecord);

      sub_10013AF64(v74, type metadata accessor for BeneficiaryInfoRecord);
    }

    type metadata accessor for AACustodianError(0);
    *(v0 + 104) = -7067;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v170 = *(v0 + 96);
    swift_willThrow();

    goto LABEL_27;
  }

  v162 = v46;
  log = v45;
  v59 = *(v0 + 464);
  v61 = *(v0 + 200);
  v60 = *(v0 + 208);
  v63 = *(v0 + 184);
  v62 = *(v0 + 192);
  v64 = v58;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v62 + 16))(v61, v60, v63);
  v158 = v44;
  if (v59 == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v65 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v65 = &qword_1003FA9F0;
  }

  v90 = v166;
  v167 = *(v166 + 360);
  v91 = v90[25];
  v92 = v90[23];
  v140 = v90[22];
  v144 = v90[21];
  v150 = v90[20];
  v93 = v90[19];
  v94 = v90[17];
  v95 = v90[14];
  v97 = *v65;
  v96 = v65[1];
  v98 = *(v90[24] + 32);

  v98(v95, v91, v92);
  v99 = (v95 + *(v93 + 20));
  *v99 = v97;
  v99[1] = v96;
  v136 = v93;
  *(v95 + *(v93 + 24)) = v162;
  sub_10013AEFC(v95, v140, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v95, v144, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v95, v150, type metadata accessor for CloudShareInfo);

  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.default.getter();

  v102 = os_log_type_enabled(v100, v101);
  v168 = v90[26];
  v104 = v90[23];
  v103 = v90[24];
  v106 = v90[21];
  v105 = v90[22];
  v107 = v90[20];
  if (v102)
  {
    v141 = v90[16];
    v145 = v90[17];
    v108 = swift_slowAlloc();
    v171[0] = swift_slowAlloc();
    *v108 = 136315906;
    sub_10013AFC4(&qword_1003DD590, &type metadata accessor for URL);
    v132 = v101;
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v164 = v104;
    v111 = v110;
    sub_10013AF64(v105, type metadata accessor for CloudShareInfo);
    v112 = sub_10021145C(v109, v111, v171);

    *(v108 + 4) = v112;
    *(v108 + 12) = 2080;
    v113 = (v106 + *(v136 + 20));
    v115 = *v113;
    v114 = v113[1];

    sub_10013AF64(v106, type metadata accessor for CloudShareInfo);
    v116 = sub_10021145C(v115, v114, v171);

    *(v108 + 14) = v116;
    *(v108 + 22) = 2080;
    *(v108 + 24) = sub_10021145C(v141, v145, v171);
    *(v108 + 32) = 1024;
    LODWORD(v116) = *(v107 + *(v136 + 24)) != 0;
    sub_10013AF64(v107, type metadata accessor for CloudShareInfo);
    *(v108 + 34) = v116;
    _os_log_impl(&_mh_execute_header, v100, v132, "Returning share information with shareURL: %s, container: %s, participant: %s, hasToken: %{BOOL}d", v108, 0x26u);
    swift_arrayDestroy();

    (*(v103 + 8))(v168, v164);
  }

  else
  {
    sub_10013AF64(v90[20], type metadata accessor for CloudShareInfo);

    sub_10013AF64(v106, type metadata accessor for CloudShareInfo);
    sub_10013AF64(v105, type metadata accessor for CloudShareInfo);
    (*(v103 + 8))(v168, v104);
  }

  v118 = v90[43];
  v117 = v90[44];
  v119 = v90[41];
  v120 = v90[42];
  v122 = v90[39];
  v121 = v90[40];
  v124 = v90[37];
  v123 = v90[38];
  v125 = v90[35];
  v126 = v90[36];
  v130 = v90[34];
  v133 = v90[33];
  v137 = v90[32];
  v142 = v90[31];
  v146 = v90[29];
  v151 = v90[26];
  logd = v90[25];
  v159 = v90[22];
  v165 = v90[21];
  v169 = v90[20];

  v57 = v90[1];
LABEL_42:

  return v57();
}

uint64_t sub_1001293AC()
{
  v88 = v0;

  v1 = *(v0 + 416);
  v2 = *(v0 + 384);
  *(v0 + 424) = v1;
  v3 = *(v0 + 360);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);

  sub_10013AEFC(v7, v4, type metadata accessor for BeneficiaryInfoRecord);
  sub_10013AEFC(v7, v5, type metadata accessor for BeneficiaryInfoRecord);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);
  if (v10)
  {
    v83 = v9;
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    log = v8;
    v16 = *(v0 + 216);
    v15 = *(v0 + 224);
    v76 = *(v0 + 128);
    v78 = *(v0 + 136);
    v17 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v87[0] = swift_slowAlloc();
    *v17 = 138413058;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v18;
    *v74 = v18;
    *(v17 + 12) = 2080;
    (*(v15 + 16))(v13, v11 + *(v14 + 32), v16);
    sub_10013AF64(v11, type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v15 + 8))(v13, v16);
    v22 = sub_10021145C(v19, v21, v87);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2080;
    v23 = UUID.uuidString.getter();
    v25 = v24;
    sub_10013AF64(v12, type metadata accessor for BeneficiaryInfoRecord);
    v26 = sub_10021145C(v23, v25, v87);

    *(v17 + 24) = v26;
    *(v17 + 32) = 2080;
    *(v17 + 34) = sub_10021145C(v76, v78, v87);
    _os_log_impl(&_mh_execute_header, log, v83, "Error occured when creating a CKShare %@, recordID: %s, zone: %s, participant: %s", v17, 0x2Au);
    sub_100008D3C(v74, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 304), type metadata accessor for BeneficiaryInfoRecord);

    sub_10013AF64(v12, type metadata accessor for BeneficiaryInfoRecord);
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v27 = *(v0 + 72);
    *(v0 + 432) = v27;
    if (sub_1002DECC8(v27))
    {
      v28 = *(v0 + 360);
      v29 = *(v0 + 280);
      v30 = *(v0 + 136);
      v31 = *(v0 + 120);
      sub_10013AEFC(v31, *(v0 + 288), type metadata accessor for BeneficiaryInfoRecord);
      sub_10013AEFC(v31, v29, type metadata accessor for BeneficiaryInfoRecord);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 280);
      v36 = *(v0 + 288);
      if (v34)
      {
        loga = v33;
        v37 = *(v0 + 232);
        v38 = *(v0 + 240);
        v40 = *(v0 + 216);
        v39 = *(v0 + 224);
        v79 = *(v0 + 128);
        v81 = *(v0 + 136);
        v41 = swift_slowAlloc();
        v87[0] = swift_slowAlloc();
        *v41 = 136315650;
        (*(v39 + 16))(v37, v36 + *(v38 + 32), v40);
        sub_10013AF64(v36, type metadata accessor for BeneficiaryInfoRecord);
        sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v43;
        (*(v39 + 8))(v37, v40);
        v45 = sub_10021145C(v42, v44, v87);

        *(v41 + 4) = v45;
        *(v41 + 12) = 2080;
        v46 = UUID.uuidString.getter();
        v48 = v47;
        sub_10013AF64(v35, type metadata accessor for BeneficiaryInfoRecord);
        v49 = sub_10021145C(v46, v48, v87);

        *(v41 + 14) = v49;
        *(v41 + 22) = 2080;
        *(v41 + 24) = sub_10021145C(v79, v81, v87);
        _os_log_impl(&_mh_execute_header, v32, loga, "Error is client-server conflict, so checking if the record is already shared recordID: %s, zone: %s, participant: %s", v41, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10013AF64(*(v0 + 288), type metadata accessor for BeneficiaryInfoRecord);

        sub_10013AF64(v35, type metadata accessor for BeneficiaryInfoRecord);
      }

      v67 = swift_task_alloc();
      *(v0 + 440) = v67;
      *v67 = v0;
      v67[1] = sub_100129BF8;
      v68 = *(v0 + 120);

      return sub_1001376F4(v68);
    }
  }

  v50 = *(v0 + 360);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Error is not of client-server conflict, so not fetching the existing share from server", v53, 2u);
  }

  swift_getErrorValue();
  v54 = *(v0 + 16);
  sub_100255F6C(-7065, *(v0 + 24), *(v0 + 32));
  swift_willThrow();

  v56 = *(v0 + 344);
  v55 = *(v0 + 352);
  v58 = *(v0 + 328);
  v57 = *(v0 + 336);
  v60 = *(v0 + 312);
  v59 = *(v0 + 320);
  v62 = *(v0 + 296);
  v61 = *(v0 + 304);
  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v69 = *(v0 + 272);
  v70 = *(v0 + 264);
  v71 = *(v0 + 256);
  v72 = *(v0 + 248);
  v73 = *(v0 + 232);
  v75 = *(v0 + 208);
  v77 = *(v0 + 200);
  v80 = *(v0 + 176);
  v82 = *(v0 + 168);
  v84 = *(v0 + 160);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_100129BF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 440);
  v7 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v5 = sub_10012AD7C;
  }

  else
  {
    v5 = sub_100129D0C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100129D0C()
{
  v191 = v0;
  v1 = *(v0 + 448);
  if (!v1)
  {
    v24 = *(v0 + 424);
    v25 = *(v0 + 360);
    v26 = *(v0 + 248);
    v27 = *(v0 + 136);
    v28 = *(v0 + 120);
    sub_10013AEFC(v28, *(v0 + 256), type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AEFC(v28, v26, type metadata accessor for BeneficiaryInfoRecord);

    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 424);
      v32 = *(v0 + 256);
      v156 = *(v0 + 248);
      v181 = v30;
      v33 = *(v0 + 232);
      v34 = *(v0 + 240);
      v36 = *(v0 + 216);
      v35 = *(v0 + 224);
      v168 = *(v0 + 128);
      logb = *(v0 + 136);
      v37 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v190[0] = swift_slowAlloc();
      *v37 = 138413058;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v38;
      *v163 = v38;
      *(v37 + 12) = 2080;
      (*(v35 + 16))(v33, v32 + *(v34 + 32), v36);
      sub_10013AF64(v32, type metadata accessor for BeneficiaryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v35 + 8))(v33, v36);
      v42 = sub_10021145C(v39, v41, v190);

      *(v37 + 14) = v42;
      *(v37 + 22) = 2080;
      v43 = UUID.uuidString.getter();
      v45 = v44;
      sub_10013AF64(v156, type metadata accessor for BeneficiaryInfoRecord);
      v46 = sub_10021145C(v43, v45, v190);

      *(v37 + 24) = v46;
      *(v37 + 32) = 2080;
      *(v37 + 34) = sub_10021145C(v168, logb, v190);
      _os_log_impl(&_mh_execute_header, v29, v181, "Couldn't find existing share, so throwing the same error %@, recordID: %s, zone: %s, participant: %s", v37, 0x2Au);
      sub_100008D3C(v163, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      v55 = *(v0 + 248);
      sub_10013AF64(*(v0 + 256), type metadata accessor for BeneficiaryInfoRecord);

      sub_10013AF64(v55, type metadata accessor for BeneficiaryInfoRecord);
    }

    v56 = *(v0 + 424);
    v57 = *(v0 + 432);
    swift_getErrorValue();
    v58 = *(v0 + 40);
    sub_100255F6C(-7065, *(v0 + 48), *(v0 + 56));
    swift_willThrow();

    goto LABEL_27;
  }

  v2 = *(v0 + 360);
  v3 = *(v0 + 264);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  sub_10013AEFC(v5, *(v0 + 272), type metadata accessor for BeneficiaryInfoRecord);
  sub_10013AEFC(v5, v3, type metadata accessor for BeneficiaryInfoRecord);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 264);
  v10 = *(v0 + 272);
  if (v8)
  {
    v180 = v7;
    v11 = *(v0 + 232);
    v12 = *(v0 + 240);
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v162 = *(v0 + 128);
    v167 = *(v0 + 136);
    v15 = swift_slowAlloc();
    v190[0] = swift_slowAlloc();
    *v15 = 136315650;
    (*(v13 + 16))(v11, v10 + *(v12 + 32), v14);
    sub_10013AF64(v10, type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v11, v14);
    v19 = sub_10021145C(v16, v18, v190);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    sub_10013AF64(v9, type metadata accessor for BeneficiaryInfoRecord);
    v23 = sub_10021145C(v20, v22, v190);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_10021145C(v162, v167, v190);
    _os_log_impl(&_mh_execute_header, v6, v180, "Found existing CKShare, recordID: %s, zone: %s, participant: %s", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 272), type metadata accessor for BeneficiaryInfoRecord);

    sub_10013AF64(v9, type metadata accessor for BeneficiaryInfoRecord);
  }

  v47 = v1;
  v48 = [v47 participants];
  sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
  v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v49 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v51 = 0;
    while (1)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v51 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v52 = *(v49 + 8 * v51 + 32);
      }

      v53 = v52;
      v54 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (([v52 isCurrentUser] & 1) == 0)
      {

        goto LABEL_25;
      }

      ++v51;
      if (v54 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:

  v53 = 0;
LABEL_25:
  v59 = *(v0 + 424);

  v60 = *(v0 + 456);
  v61 = v53;
  v62 = sub_100253D68(v53);

  if (v60)
  {

LABEL_27:
    v64 = *(v0 + 344);
    v63 = *(v0 + 352);
    v65 = *(v0 + 328);
    v66 = *(v0 + 336);
    v68 = *(v0 + 312);
    v67 = *(v0 + 320);
    v70 = *(v0 + 296);
    v69 = *(v0 + 304);
    v72 = *(v0 + 280);
    v71 = *(v0 + 288);
    v142 = *(v0 + 272);
    v143 = *(v0 + 264);
    v145 = *(v0 + 256);
    v148 = *(v0 + 248);
    v151 = *(v0 + 232);
    v157 = *(v0 + 208);
    v164 = *(v0 + 200);
    v169 = *(v0 + 176);
    logc = *(v0 + 168);
    v182 = *(v0 + 160);

    v73 = *(v0 + 8);
    goto LABEL_28;
  }

  v75 = [v47 URL];
  if (!v75)
  {
    v184 = v47;
    v83 = *(v0 + 360);
    v84 = *(v0 + 312);
    v85 = *(v0 + 136);
    v86 = *(v0 + 120);
    sub_10013AEFC(v86, *(v0 + 320), type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AEFC(v86, v84, type metadata accessor for BeneficiaryInfoRecord);

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    v89 = os_log_type_enabled(v87, v88);
    v91 = *(v0 + 312);
    v90 = *(v0 + 320);
    if (v89)
    {
      logd = v87;
      v170 = v88;
      v93 = *(v0 + 232);
      v92 = *(v0 + 240);
      v187 = v61;
      v95 = *(v0 + 216);
      v94 = *(v0 + 224);
      v152 = *(v0 + 128);
      v158 = *(v0 + 136);
      v96 = swift_slowAlloc();
      v190[0] = swift_slowAlloc();
      *v96 = 136315650;
      (*(v94 + 16))(v93, v90 + *(v92 + 32), v95);
      sub_10013AF64(v90, type metadata accessor for BeneficiaryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v98;
      v100 = v95;
      v61 = v187;
      (*(v94 + 8))(v93, v100);
      v101 = sub_10021145C(v97, v99, v190);

      *(v96 + 4) = v101;
      *(v96 + 12) = 2080;
      v102 = UUID.uuidString.getter();
      v104 = v103;
      sub_10013AF64(v91, type metadata accessor for BeneficiaryInfoRecord);
      v105 = sub_10021145C(v102, v104, v190);

      *(v96 + 14) = v105;
      *(v96 + 22) = 2080;
      *(v96 + 24) = sub_10021145C(v152, v158, v190);
      _os_log_impl(&_mh_execute_header, logd, v170, "Share URL missing in CKShare, recordID: %s, zone: %s, participant: %s", v96, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10013AF64(*(v0 + 320), type metadata accessor for BeneficiaryInfoRecord);

      sub_10013AF64(v91, type metadata accessor for BeneficiaryInfoRecord);
    }

    type metadata accessor for AACustodianError(0);
    *(v0 + 104) = -7067;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v189 = *(v0 + 96);
    swift_willThrow();

    goto LABEL_27;
  }

  log = v62;
  v76 = *(v0 + 464);
  v78 = *(v0 + 200);
  v77 = *(v0 + 208);
  v80 = *(v0 + 184);
  v79 = *(v0 + 192);
  v81 = v75;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v79 + 16))(v78, v77, v80);
  if (v76 == 1)
  {
    v183 = v47;
    v186 = v61;
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v82 = &qword_1003FAA00;
  }

  else
  {
    v183 = v47;
    v186 = v61;
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v82 = &qword_1003FA9F0;
  }

  v106 = *(v0 + 200);
  v107 = *(v0 + 184);
  v153 = *(v0 + 176);
  v159 = *(v0 + 168);
  v108 = *(v0 + 152);
  v165 = *(v0 + 160);
  v171 = *(v0 + 360);
  v109 = *(v0 + 136);
  v110 = *(v0 + 112);
  v112 = *v82;
  v111 = v82[1];
  v113 = *(*(v0 + 192) + 32);

  v113(v110, v106, v107);
  v114 = (v110 + *(v108 + 20));
  *v114 = v112;
  v114[1] = v111;
  v149 = v108;
  *(v110 + *(v108 + 24)) = log;
  sub_10013AEFC(v110, v153, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v110, v159, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v110, v165, type metadata accessor for CloudShareInfo);

  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.default.getter();

  v117 = os_log_type_enabled(v115, v116);
  loga = *(v0 + 208);
  v118 = *(v0 + 184);
  v119 = *(v0 + 192);
  v121 = *(v0 + 168);
  v120 = *(v0 + 176);
  v122 = *(v0 + 160);
  if (v117)
  {
    v154 = *(v0 + 128);
    v160 = *(v0 + 136);
    v123 = swift_slowAlloc();
    v190[0] = swift_slowAlloc();
    *v123 = 136315906;
    sub_10013AFC4(&qword_1003DD590, &type metadata accessor for URL);
    v146 = v116;
    v124 = dispatch thunk of CustomStringConvertible.description.getter();
    v172 = v118;
    v126 = v125;
    sub_10013AF64(v120, type metadata accessor for CloudShareInfo);
    v127 = sub_10021145C(v124, v126, v190);

    *(v123 + 4) = v127;
    *(v123 + 12) = 2080;
    v128 = (v121 + *(v149 + 20));
    v130 = *v128;
    v129 = v128[1];

    sub_10013AF64(v121, type metadata accessor for CloudShareInfo);
    v131 = sub_10021145C(v130, v129, v190);

    *(v123 + 14) = v131;
    *(v123 + 22) = 2080;
    *(v123 + 24) = sub_10021145C(v154, v160, v190);
    *(v123 + 32) = 1024;
    LODWORD(v131) = *(v122 + *(v149 + 24)) != 0;
    sub_10013AF64(v122, type metadata accessor for CloudShareInfo);
    *(v123 + 34) = v131;
    _os_log_impl(&_mh_execute_header, v115, v146, "Returning share information with shareURL: %s, container: %s, participant: %s, hasToken: %{BOOL}d", v123, 0x26u);
    swift_arrayDestroy();

    (*(v119 + 8))(loga, v172);
  }

  else
  {
    sub_10013AF64(*(v0 + 160), type metadata accessor for CloudShareInfo);

    sub_10013AF64(v121, type metadata accessor for CloudShareInfo);
    sub_10013AF64(v120, type metadata accessor for CloudShareInfo);
    (*(v119 + 8))(loga, v118);
  }

  v133 = *(v0 + 344);
  v132 = *(v0 + 352);
  v134 = *(v0 + 328);
  v135 = *(v0 + 336);
  v137 = *(v0 + 312);
  v136 = *(v0 + 320);
  v139 = *(v0 + 296);
  v138 = *(v0 + 304);
  v141 = *(v0 + 280);
  v140 = *(v0 + 288);
  v144 = *(v0 + 272);
  v147 = *(v0 + 264);
  v150 = *(v0 + 256);
  v155 = *(v0 + 248);
  v161 = *(v0 + 232);
  v166 = *(v0 + 208);
  v173 = *(v0 + 200);
  loge = *(v0 + 176);
  v185 = *(v0 + 168);
  v188 = *(v0 + 160);

  v73 = *(v0 + 8);
LABEL_28:

  return v73();
}

uint64_t sub_10012AD7C()
{
  v1 = *(v0 + 424);

  v24 = *(v0 + 456);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  v9 = *(v0 + 296);
  v8 = *(v0 + 304);
  v11 = *(v0 + 280);
  v10 = *(v0 + 288);
  v14 = *(v0 + 272);
  v15 = *(v0 + 264);
  v16 = *(v0 + 256);
  v17 = *(v0 + 248);
  v18 = *(v0 + 232);
  v19 = *(v0 + 208);
  v20 = *(v0 + 200);
  v21 = *(v0 + 176);
  v22 = *(v0 + 168);
  v23 = *(v0 + 160);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10012AEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = type metadata accessor for CloudShareInfo();
  v5[19] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v5[23] = v8;
  v9 = *(v8 - 8);
  v5[24] = v9;
  v10 = *(v9 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v5[27] = v11;
  v12 = *(v11 - 8);
  v5[28] = v12;
  v13 = *(v12 + 64) + 15;
  v5[29] = swift_task_alloc();
  v14 = type metadata accessor for InheritanceHealthRecord();
  v5[30] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();

  return _swift_task_switch(sub_10012B130, 0, 0);
}

uint64_t sub_10012B130()
{
  v19 = v0;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = type metadata accessor for Logger();
  *(v0 + 360) = sub_100008D04(v2, qword_1003FAA58);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10021145C(v6, v5, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching the cloudkit participant information, handle: %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v9 = *(*(v0 + 120) + *(*(v0 + 240) + 36));
  *(v0 + 464) = v9;
  if (v9 == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v10 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v10 = &qword_1003FA9F0;
  }

  v11 = *v10;
  v12 = v10[1];

  v13 = sub_1002E2BC4(v11, v12);
  *(v0 + 368) = v13;

  v14 = swift_task_alloc();
  *(v0 + 376) = v14;
  *v14 = v0;
  v14[1] = sub_10012B3E8;
  v16 = *(v0 + 128);
  v15 = *(v0 + 136);

  return sub_100253614(v16, v15, v13);
}

uint64_t sub_10012B3E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v7 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {
    v5 = sub_10012B838;
  }

  else
  {
    v5 = sub_10012B4FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10012B4FC()
{
  v32 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  [*(v0 + 384) setPermission:*(v0 + 144)];
  sub_10013AEFC(v5, v1, type metadata accessor for InheritanceHealthRecord);
  sub_10013AEFC(v5, v3, type metadata accessor for InheritanceHealthRecord);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  if (v8)
  {
    v30 = v7;
    v11 = *(v0 + 232);
    v12 = *(v0 + 240);
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v28 = *(v0 + 128);
    v29 = *(v0 + 136);
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v15 = 136315650;
    (*(v13 + 16))(v11, v10 + *(v12 + 28), v14);
    sub_10013AF64(v10, type metadata accessor for InheritanceHealthRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v11, v14);
    v19 = sub_10021145C(v16, v18, &v31);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    sub_10013AF64(v9, type metadata accessor for InheritanceHealthRecord);
    v23 = sub_10021145C(v20, v22, &v31);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_10021145C(v28, v29, &v31);
    _os_log_impl(&_mh_execute_header, v6, v30, "Creating new share, recordID: %s, zone: %s, participant: %s", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 352), type metadata accessor for InheritanceHealthRecord);

    sub_10013AF64(v9, type metadata accessor for InheritanceHealthRecord);
  }

  v24 = swift_task_alloc();
  *(v0 + 400) = v24;
  *v24 = v0;
  v24[1] = sub_10012C078;
  v25 = *(v0 + 384);
  v26 = *(v0 + 120);

  return sub_100138A0C(v26, v25);
}

uint64_t sub_10012B838()
{
  v87 = v0;
  v1 = *(v0 + 392);
  *(v0 + 424) = v1;
  v2 = *(v0 + 360);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);

  sub_10013AEFC(v6, v3, type metadata accessor for InheritanceHealthRecord);
  sub_10013AEFC(v6, v4, type metadata accessor for InheritanceHealthRecord);

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 296);
  v10 = *(v0 + 304);
  if (v9)
  {
    v82 = v8;
    v12 = *(v0 + 232);
    v13 = *(v0 + 240);
    log = v7;
    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    v75 = *(v0 + 128);
    v77 = *(v0 + 136);
    v16 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v86[0] = swift_slowAlloc();
    *v16 = 138413058;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v17;
    *v73 = v17;
    *(v16 + 12) = 2080;
    (*(v14 + 16))(v12, v10 + *(v13 + 28), v15);
    sub_10013AF64(v10, type metadata accessor for InheritanceHealthRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v14 + 8))(v12, v15);
    v21 = sub_10021145C(v18, v20, v86);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2080;
    v22 = UUID.uuidString.getter();
    v24 = v23;
    sub_10013AF64(v11, type metadata accessor for InheritanceHealthRecord);
    v25 = sub_10021145C(v22, v24, v86);

    *(v16 + 24) = v25;
    *(v16 + 32) = 2080;
    *(v16 + 34) = sub_10021145C(v75, v77, v86);
    _os_log_impl(&_mh_execute_header, log, v82, "Error occured when creating a CKShare %@, recordID: %s, zone: %s, participant: %s", v16, 0x2Au);
    sub_100008D3C(v73, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 304), type metadata accessor for InheritanceHealthRecord);

    sub_10013AF64(v11, type metadata accessor for InheritanceHealthRecord);
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v26 = *(v0 + 72);
    *(v0 + 432) = v26;
    if (sub_1002DECC8(v26))
    {
      v27 = *(v0 + 360);
      v28 = *(v0 + 280);
      v29 = *(v0 + 136);
      v30 = *(v0 + 120);
      sub_10013AEFC(v30, *(v0 + 288), type metadata accessor for InheritanceHealthRecord);
      sub_10013AEFC(v30, v28, type metadata accessor for InheritanceHealthRecord);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 280);
      v35 = *(v0 + 288);
      if (v33)
      {
        loga = v32;
        v36 = *(v0 + 232);
        v37 = *(v0 + 240);
        v39 = *(v0 + 216);
        v38 = *(v0 + 224);
        v78 = *(v0 + 128);
        v80 = *(v0 + 136);
        v40 = swift_slowAlloc();
        v86[0] = swift_slowAlloc();
        *v40 = 136315650;
        (*(v38 + 16))(v36, v35 + *(v37 + 28), v39);
        sub_10013AF64(v35, type metadata accessor for InheritanceHealthRecord);
        sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        (*(v38 + 8))(v36, v39);
        v44 = sub_10021145C(v41, v43, v86);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2080;
        v45 = UUID.uuidString.getter();
        v47 = v46;
        sub_10013AF64(v34, type metadata accessor for InheritanceHealthRecord);
        v48 = sub_10021145C(v45, v47, v86);

        *(v40 + 14) = v48;
        *(v40 + 22) = 2080;
        *(v40 + 24) = sub_10021145C(v78, v80, v86);
        _os_log_impl(&_mh_execute_header, v31, loga, "Error is client-server conflict, so checking if the record is already shared recordID: %s, zone: %s, participant: %s", v40, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10013AF64(*(v0 + 288), type metadata accessor for InheritanceHealthRecord);

        sub_10013AF64(v34, type metadata accessor for InheritanceHealthRecord);
      }

      v66 = swift_task_alloc();
      *(v0 + 440) = v66;
      *v66 = v0;
      v66[1] = sub_10012D7A4;
      v67 = *(v0 + 120);

      return sub_10013A278(v67);
    }
  }

  v49 = *(v0 + 360);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "Error is not of client-server conflict, so not fetching the existing share from server", v52, 2u);
  }

  swift_getErrorValue();
  v53 = *(v0 + 16);
  sub_100255F6C(-7065, *(v0 + 24), *(v0 + 32));
  swift_willThrow();

  v55 = *(v0 + 344);
  v54 = *(v0 + 352);
  v57 = *(v0 + 328);
  v56 = *(v0 + 336);
  v59 = *(v0 + 312);
  v58 = *(v0 + 320);
  v61 = *(v0 + 296);
  v60 = *(v0 + 304);
  v63 = *(v0 + 280);
  v62 = *(v0 + 288);
  v68 = *(v0 + 272);
  v69 = *(v0 + 264);
  v70 = *(v0 + 256);
  v71 = *(v0 + 248);
  v72 = *(v0 + 232);
  v74 = *(v0 + 208);
  v76 = *(v0 + 200);
  v79 = *(v0 + 176);
  v81 = *(v0 + 168);
  v83 = *(v0 + 160);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_10012C078(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  v7 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v5 = sub_10012CF58;
  }

  else
  {
    v5 = sub_10012C18C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10012C18C()
{
  v172 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 360);
  v3 = *(v0 + 328);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  sub_10013AEFC(v5, *(v0 + 336), type metadata accessor for InheritanceHealthRecord);
  sub_10013AEFC(v5, v3, type metadata accessor for InheritanceHealthRecord);

  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 328);
  v11 = *(v0 + 336);
  v166 = v0;
  if (v9)
  {
    v160 = v8;
    v12 = *(v0 + 232);
    v13 = *(v0 + 240);
    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    v147 = *(v0 + 128);
    loga = *(v0 + 136);
    v16 = swift_slowAlloc();
    v171[0] = swift_slowAlloc();
    *v16 = 136315650;
    (*(v14 + 16))(v12, v11 + *(v13 + 28), v15);
    sub_10013AF64(v11, type metadata accessor for InheritanceHealthRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v12, v15);
    v20 = sub_10021145C(v17, v19, v171);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = UUID.uuidString.getter();
    v23 = v22;
    sub_10013AF64(v10, type metadata accessor for InheritanceHealthRecord);
    v24 = sub_10021145C(v21, v23, v171);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_10021145C(v147, loga, v171);
    _os_log_impl(&_mh_execute_header, v7, v160, "CKShare created successfully for recordID: %s, zone: %s, participant: %s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(v11, type metadata accessor for InheritanceHealthRecord);

    sub_10013AF64(v10, type metadata accessor for InheritanceHealthRecord);
  }

  v25 = [*(v0 + 408) participants];
  sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v32 = *(v0 + 384);
      v33 = CKShareParticipant.participantID.getter();
      v35 = v34;
      if (v33 == CKShareParticipant.participantID.getter() && v35 == v36)
      {
        v0 = v166;
        v39 = *(v166 + 384);
        v40 = *(v166 + 368);

        goto LABEL_25;
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        v0 = v166;
        v41 = *(v166 + 384);

        goto LABEL_25;
      }

      ++v28;
      v0 = v166;
      if (v31 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:
  v42 = *(v0 + 384);

  v30 = 0;
LABEL_25:

  v44 = *(v0 + 408);
  v43 = *(v0 + 416);
  v45 = v30;
  v46 = sub_100253D68(v30);

  if (v43)
  {

LABEL_27:
    v48 = *(v0 + 344);
    v47 = *(v0 + 352);
    v50 = *(v0 + 328);
    v49 = *(v0 + 336);
    v52 = *(v0 + 312);
    v51 = *(v0 + 320);
    v54 = *(v0 + 296);
    v53 = *(v0 + 304);
    v56 = *(v0 + 280);
    v55 = *(v0 + 288);
    v128 = *(v0 + 272);
    v129 = *(v0 + 264);
    v131 = *(v0 + 256);
    v134 = *(v0 + 248);
    v138 = *(v0 + 232);
    v143 = *(v0 + 208);
    v148 = *(v0 + 200);
    logb = *(v0 + 176);
    v157 = *(v0 + 168);
    v161 = *(v0 + 160);

    v57 = *(v0 + 8);
    goto LABEL_42;
  }

  v58 = [v44 URL];
  if (!v58)
  {
    v66 = *(v0 + 360);
    v67 = *(v0 + 312);
    v68 = *(v0 + 136);
    v69 = *(v0 + 120);
    sub_10013AEFC(v69, *(v0 + 320), type metadata accessor for InheritanceHealthRecord);
    sub_10013AEFC(v69, v67, type metadata accessor for InheritanceHealthRecord);

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    v72 = os_log_type_enabled(v70, v71);
    v74 = *(v0 + 312);
    v73 = *(v0 + 320);
    if (v72)
    {
      logc = v70;
      v149 = v71;
      v76 = *(v0 + 232);
      v75 = *(v0 + 240);
      v77 = v44;
      v79 = *(v0 + 216);
      v78 = *(v0 + 224);
      v135 = *(v0 + 128);
      v139 = *(v0 + 136);
      v163 = v46;
      v80 = swift_slowAlloc();
      v171[0] = swift_slowAlloc();
      *v80 = 136315650;
      (*(v78 + 16))(v76, v73 + *(v75 + 28), v79);
      sub_10013AF64(v73, type metadata accessor for InheritanceHealthRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v84 = v79;
      v44 = v77;
      (*(v78 + 8))(v76, v84);
      v85 = sub_10021145C(v81, v83, v171);

      *(v80 + 4) = v85;
      *(v80 + 12) = 2080;
      v86 = UUID.uuidString.getter();
      v88 = v87;
      v0 = v166;
      sub_10013AF64(v74, type metadata accessor for InheritanceHealthRecord);
      v89 = sub_10021145C(v86, v88, v171);

      *(v80 + 14) = v89;
      *(v80 + 22) = 2080;
      *(v80 + 24) = sub_10021145C(v135, v139, v171);
      _os_log_impl(&_mh_execute_header, logc, v149, "Share URL missing in CKShare, recordID: %s, zone: %s, participant: %s", v80, 0x20u);
      swift_arrayDestroy();

      v46 = v163;
    }

    else
    {
      sub_10013AF64(*(v0 + 320), type metadata accessor for InheritanceHealthRecord);

      sub_10013AF64(v74, type metadata accessor for InheritanceHealthRecord);
    }

    type metadata accessor for AACustodianError(0);
    *(v0 + 104) = -7067;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v170 = *(v0 + 96);
    swift_willThrow();

    goto LABEL_27;
  }

  v162 = v46;
  log = v45;
  v59 = *(v0 + 464);
  v61 = *(v0 + 200);
  v60 = *(v0 + 208);
  v63 = *(v0 + 184);
  v62 = *(v0 + 192);
  v64 = v58;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v62 + 16))(v61, v60, v63);
  v158 = v44;
  if (v59 == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v65 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v65 = &qword_1003FA9F0;
  }

  v90 = v166;
  v167 = *(v166 + 360);
  v91 = v90[25];
  v92 = v90[23];
  v140 = v90[22];
  v144 = v90[21];
  v150 = v90[20];
  v93 = v90[19];
  v94 = v90[17];
  v95 = v90[14];
  v97 = *v65;
  v96 = v65[1];
  v98 = *(v90[24] + 32);

  v98(v95, v91, v92);
  v99 = (v95 + *(v93 + 20));
  *v99 = v97;
  v99[1] = v96;
  v136 = v93;
  *(v95 + *(v93 + 24)) = v162;
  sub_10013AEFC(v95, v140, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v95, v144, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v95, v150, type metadata accessor for CloudShareInfo);

  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.default.getter();

  v102 = os_log_type_enabled(v100, v101);
  v168 = v90[26];
  v104 = v90[23];
  v103 = v90[24];
  v106 = v90[21];
  v105 = v90[22];
  v107 = v90[20];
  if (v102)
  {
    v141 = v90[16];
    v145 = v90[17];
    v108 = swift_slowAlloc();
    v171[0] = swift_slowAlloc();
    *v108 = 136315906;
    sub_10013AFC4(&qword_1003DD590, &type metadata accessor for URL);
    v132 = v101;
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v164 = v104;
    v111 = v110;
    sub_10013AF64(v105, type metadata accessor for CloudShareInfo);
    v112 = sub_10021145C(v109, v111, v171);

    *(v108 + 4) = v112;
    *(v108 + 12) = 2080;
    v113 = (v106 + *(v136 + 20));
    v115 = *v113;
    v114 = v113[1];

    sub_10013AF64(v106, type metadata accessor for CloudShareInfo);
    v116 = sub_10021145C(v115, v114, v171);

    *(v108 + 14) = v116;
    *(v108 + 22) = 2080;
    *(v108 + 24) = sub_10021145C(v141, v145, v171);
    *(v108 + 32) = 1024;
    LODWORD(v116) = *(v107 + *(v136 + 24)) != 0;
    sub_10013AF64(v107, type metadata accessor for CloudShareInfo);
    *(v108 + 34) = v116;
    _os_log_impl(&_mh_execute_header, v100, v132, "Returning share information with shareURL: %s, container: %s, participant: %s, hasToken: %{BOOL}d", v108, 0x26u);
    swift_arrayDestroy();

    (*(v103 + 8))(v168, v164);
  }

  else
  {
    sub_10013AF64(v90[20], type metadata accessor for CloudShareInfo);

    sub_10013AF64(v106, type metadata accessor for CloudShareInfo);
    sub_10013AF64(v105, type metadata accessor for CloudShareInfo);
    (*(v103 + 8))(v168, v104);
  }

  v118 = v90[43];
  v117 = v90[44];
  v119 = v90[41];
  v120 = v90[42];
  v122 = v90[39];
  v121 = v90[40];
  v124 = v90[37];
  v123 = v90[38];
  v125 = v90[35];
  v126 = v90[36];
  v130 = v90[34];
  v133 = v90[33];
  v137 = v90[32];
  v142 = v90[31];
  v146 = v90[29];
  v151 = v90[26];
  logd = v90[25];
  v159 = v90[22];
  v165 = v90[21];
  v169 = v90[20];

  v57 = v90[1];
LABEL_42:

  return v57();
}

uint64_t sub_10012CF58()
{
  v88 = v0;

  v1 = *(v0 + 416);
  v2 = *(v0 + 384);
  *(v0 + 424) = v1;
  v3 = *(v0 + 360);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);

  sub_10013AEFC(v7, v4, type metadata accessor for InheritanceHealthRecord);
  sub_10013AEFC(v7, v5, type metadata accessor for InheritanceHealthRecord);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 296);
  v11 = *(v0 + 304);
  if (v10)
  {
    v83 = v9;
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    log = v8;
    v16 = *(v0 + 216);
    v15 = *(v0 + 224);
    v76 = *(v0 + 128);
    v78 = *(v0 + 136);
    v17 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v87[0] = swift_slowAlloc();
    *v17 = 138413058;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v18;
    *v74 = v18;
    *(v17 + 12) = 2080;
    (*(v15 + 16))(v13, v11 + *(v14 + 28), v16);
    sub_10013AF64(v11, type metadata accessor for InheritanceHealthRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v15 + 8))(v13, v16);
    v22 = sub_10021145C(v19, v21, v87);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2080;
    v23 = UUID.uuidString.getter();
    v25 = v24;
    sub_10013AF64(v12, type metadata accessor for InheritanceHealthRecord);
    v26 = sub_10021145C(v23, v25, v87);

    *(v17 + 24) = v26;
    *(v17 + 32) = 2080;
    *(v17 + 34) = sub_10021145C(v76, v78, v87);
    _os_log_impl(&_mh_execute_header, log, v83, "Error occured when creating a CKShare %@, recordID: %s, zone: %s, participant: %s", v17, 0x2Au);
    sub_100008D3C(v74, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 304), type metadata accessor for InheritanceHealthRecord);

    sub_10013AF64(v12, type metadata accessor for InheritanceHealthRecord);
  }

  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v27 = *(v0 + 72);
    *(v0 + 432) = v27;
    if (sub_1002DECC8(v27))
    {
      v28 = *(v0 + 360);
      v29 = *(v0 + 280);
      v30 = *(v0 + 136);
      v31 = *(v0 + 120);
      sub_10013AEFC(v31, *(v0 + 288), type metadata accessor for InheritanceHealthRecord);
      sub_10013AEFC(v31, v29, type metadata accessor for InheritanceHealthRecord);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 280);
      v36 = *(v0 + 288);
      if (v34)
      {
        loga = v33;
        v37 = *(v0 + 232);
        v38 = *(v0 + 240);
        v40 = *(v0 + 216);
        v39 = *(v0 + 224);
        v79 = *(v0 + 128);
        v81 = *(v0 + 136);
        v41 = swift_slowAlloc();
        v87[0] = swift_slowAlloc();
        *v41 = 136315650;
        (*(v39 + 16))(v37, v36 + *(v38 + 28), v40);
        sub_10013AF64(v36, type metadata accessor for InheritanceHealthRecord);
        sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v43;
        (*(v39 + 8))(v37, v40);
        v45 = sub_10021145C(v42, v44, v87);

        *(v41 + 4) = v45;
        *(v41 + 12) = 2080;
        v46 = UUID.uuidString.getter();
        v48 = v47;
        sub_10013AF64(v35, type metadata accessor for InheritanceHealthRecord);
        v49 = sub_10021145C(v46, v48, v87);

        *(v41 + 14) = v49;
        *(v41 + 22) = 2080;
        *(v41 + 24) = sub_10021145C(v79, v81, v87);
        _os_log_impl(&_mh_execute_header, v32, loga, "Error is client-server conflict, so checking if the record is already shared recordID: %s, zone: %s, participant: %s", v41, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10013AF64(*(v0 + 288), type metadata accessor for InheritanceHealthRecord);

        sub_10013AF64(v35, type metadata accessor for InheritanceHealthRecord);
      }

      v67 = swift_task_alloc();
      *(v0 + 440) = v67;
      *v67 = v0;
      v67[1] = sub_10012D7A4;
      v68 = *(v0 + 120);

      return sub_10013A278(v68);
    }
  }

  v50 = *(v0 + 360);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Error is not of client-server conflict, so not fetching the existing share from server", v53, 2u);
  }

  swift_getErrorValue();
  v54 = *(v0 + 16);
  sub_100255F6C(-7065, *(v0 + 24), *(v0 + 32));
  swift_willThrow();

  v56 = *(v0 + 344);
  v55 = *(v0 + 352);
  v58 = *(v0 + 328);
  v57 = *(v0 + 336);
  v60 = *(v0 + 312);
  v59 = *(v0 + 320);
  v62 = *(v0 + 296);
  v61 = *(v0 + 304);
  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v69 = *(v0 + 272);
  v70 = *(v0 + 264);
  v71 = *(v0 + 256);
  v72 = *(v0 + 248);
  v73 = *(v0 + 232);
  v75 = *(v0 + 208);
  v77 = *(v0 + 200);
  v80 = *(v0 + 176);
  v82 = *(v0 + 168);
  v84 = *(v0 + 160);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_10012D7A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 440);
  v7 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v5 = sub_10013B030;
  }

  else
  {
    v5 = sub_10012D8B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10012D8B8()
{
  v191 = v0;
  v1 = *(v0 + 448);
  if (!v1)
  {
    v24 = *(v0 + 424);
    v25 = *(v0 + 360);
    v26 = *(v0 + 248);
    v27 = *(v0 + 136);
    v28 = *(v0 + 120);
    sub_10013AEFC(v28, *(v0 + 256), type metadata accessor for InheritanceHealthRecord);
    sub_10013AEFC(v28, v26, type metadata accessor for InheritanceHealthRecord);

    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 424);
      v32 = *(v0 + 256);
      v156 = *(v0 + 248);
      v181 = v30;
      v33 = *(v0 + 232);
      v34 = *(v0 + 240);
      v36 = *(v0 + 216);
      v35 = *(v0 + 224);
      v168 = *(v0 + 128);
      logb = *(v0 + 136);
      v37 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v190[0] = swift_slowAlloc();
      *v37 = 138413058;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v38;
      *v163 = v38;
      *(v37 + 12) = 2080;
      (*(v35 + 16))(v33, v32 + *(v34 + 28), v36);
      sub_10013AF64(v32, type metadata accessor for InheritanceHealthRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      (*(v35 + 8))(v33, v36);
      v42 = sub_10021145C(v39, v41, v190);

      *(v37 + 14) = v42;
      *(v37 + 22) = 2080;
      v43 = UUID.uuidString.getter();
      v45 = v44;
      sub_10013AF64(v156, type metadata accessor for InheritanceHealthRecord);
      v46 = sub_10021145C(v43, v45, v190);

      *(v37 + 24) = v46;
      *(v37 + 32) = 2080;
      *(v37 + 34) = sub_10021145C(v168, logb, v190);
      _os_log_impl(&_mh_execute_header, v29, v181, "Couldn't find existing share, so throwing the same error %@, recordID: %s, zone: %s, participant: %s", v37, 0x2Au);
      sub_100008D3C(v163, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      v55 = *(v0 + 248);
      sub_10013AF64(*(v0 + 256), type metadata accessor for InheritanceHealthRecord);

      sub_10013AF64(v55, type metadata accessor for InheritanceHealthRecord);
    }

    v56 = *(v0 + 424);
    v57 = *(v0 + 432);
    swift_getErrorValue();
    v58 = *(v0 + 40);
    sub_100255F6C(-7065, *(v0 + 48), *(v0 + 56));
    swift_willThrow();

    goto LABEL_27;
  }

  v2 = *(v0 + 360);
  v3 = *(v0 + 264);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  sub_10013AEFC(v5, *(v0 + 272), type metadata accessor for InheritanceHealthRecord);
  sub_10013AEFC(v5, v3, type metadata accessor for InheritanceHealthRecord);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 264);
  v10 = *(v0 + 272);
  if (v8)
  {
    v180 = v7;
    v11 = *(v0 + 232);
    v12 = *(v0 + 240);
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v162 = *(v0 + 128);
    v167 = *(v0 + 136);
    v15 = swift_slowAlloc();
    v190[0] = swift_slowAlloc();
    *v15 = 136315650;
    (*(v13 + 16))(v11, v10 + *(v12 + 28), v14);
    sub_10013AF64(v10, type metadata accessor for InheritanceHealthRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v11, v14);
    v19 = sub_10021145C(v16, v18, v190);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    sub_10013AF64(v9, type metadata accessor for InheritanceHealthRecord);
    v23 = sub_10021145C(v20, v22, v190);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_10021145C(v162, v167, v190);
    _os_log_impl(&_mh_execute_header, v6, v180, "Found existing CKShare, recordID: %s, zone: %s, participant: %s", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10013AF64(*(v0 + 272), type metadata accessor for InheritanceHealthRecord);

    sub_10013AF64(v9, type metadata accessor for InheritanceHealthRecord);
  }

  v47 = v1;
  v48 = [v47 participants];
  sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
  v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v49 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v51 = 0;
    while (1)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v51 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v52 = *(v49 + 8 * v51 + 32);
      }

      v53 = v52;
      v54 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (([v52 isCurrentUser] & 1) == 0)
      {

        goto LABEL_25;
      }

      ++v51;
      if (v54 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:

  v53 = 0;
LABEL_25:
  v59 = *(v0 + 424);

  v60 = *(v0 + 456);
  v61 = v53;
  v62 = sub_100253D68(v53);

  if (v60)
  {

LABEL_27:
    v64 = *(v0 + 344);
    v63 = *(v0 + 352);
    v65 = *(v0 + 328);
    v66 = *(v0 + 336);
    v68 = *(v0 + 312);
    v67 = *(v0 + 320);
    v70 = *(v0 + 296);
    v69 = *(v0 + 304);
    v72 = *(v0 + 280);
    v71 = *(v0 + 288);
    v142 = *(v0 + 272);
    v143 = *(v0 + 264);
    v145 = *(v0 + 256);
    v148 = *(v0 + 248);
    v151 = *(v0 + 232);
    v157 = *(v0 + 208);
    v164 = *(v0 + 200);
    v169 = *(v0 + 176);
    logc = *(v0 + 168);
    v182 = *(v0 + 160);

    v73 = *(v0 + 8);
    goto LABEL_28;
  }

  v75 = [v47 URL];
  if (!v75)
  {
    v184 = v47;
    v83 = *(v0 + 360);
    v84 = *(v0 + 312);
    v85 = *(v0 + 136);
    v86 = *(v0 + 120);
    sub_10013AEFC(v86, *(v0 + 320), type metadata accessor for InheritanceHealthRecord);
    sub_10013AEFC(v86, v84, type metadata accessor for InheritanceHealthRecord);

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    v89 = os_log_type_enabled(v87, v88);
    v91 = *(v0 + 312);
    v90 = *(v0 + 320);
    if (v89)
    {
      logd = v87;
      v170 = v88;
      v93 = *(v0 + 232);
      v92 = *(v0 + 240);
      v187 = v61;
      v95 = *(v0 + 216);
      v94 = *(v0 + 224);
      v152 = *(v0 + 128);
      v158 = *(v0 + 136);
      v96 = swift_slowAlloc();
      v190[0] = swift_slowAlloc();
      *v96 = 136315650;
      (*(v94 + 16))(v93, v90 + *(v92 + 28), v95);
      sub_10013AF64(v90, type metadata accessor for InheritanceHealthRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v98;
      v100 = v95;
      v61 = v187;
      (*(v94 + 8))(v93, v100);
      v101 = sub_10021145C(v97, v99, v190);

      *(v96 + 4) = v101;
      *(v96 + 12) = 2080;
      v102 = UUID.uuidString.getter();
      v104 = v103;
      sub_10013AF64(v91, type metadata accessor for InheritanceHealthRecord);
      v105 = sub_10021145C(v102, v104, v190);

      *(v96 + 14) = v105;
      *(v96 + 22) = 2080;
      *(v96 + 24) = sub_10021145C(v152, v158, v190);
      _os_log_impl(&_mh_execute_header, logd, v170, "Share URL missing in CKShare, recordID: %s, zone: %s, participant: %s", v96, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10013AF64(*(v0 + 320), type metadata accessor for InheritanceHealthRecord);

      sub_10013AF64(v91, type metadata accessor for InheritanceHealthRecord);
    }

    type metadata accessor for AACustodianError(0);
    *(v0 + 104) = -7067;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v189 = *(v0 + 96);
    swift_willThrow();

    goto LABEL_27;
  }

  log = v62;
  v76 = *(v0 + 464);
  v78 = *(v0 + 200);
  v77 = *(v0 + 208);
  v80 = *(v0 + 184);
  v79 = *(v0 + 192);
  v81 = v75;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v79 + 16))(v78, v77, v80);
  if (v76 == 1)
  {
    v183 = v47;
    v186 = v61;
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v82 = &qword_1003FAA00;
  }

  else
  {
    v183 = v47;
    v186 = v61;
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v82 = &qword_1003FA9F0;
  }

  v106 = *(v0 + 200);
  v107 = *(v0 + 184);
  v153 = *(v0 + 176);
  v159 = *(v0 + 168);
  v108 = *(v0 + 152);
  v165 = *(v0 + 160);
  v171 = *(v0 + 360);
  v109 = *(v0 + 136);
  v110 = *(v0 + 112);
  v112 = *v82;
  v111 = v82[1];
  v113 = *(*(v0 + 192) + 32);

  v113(v110, v106, v107);
  v114 = (v110 + *(v108 + 20));
  *v114 = v112;
  v114[1] = v111;
  v149 = v108;
  *(v110 + *(v108 + 24)) = log;
  sub_10013AEFC(v110, v153, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v110, v159, type metadata accessor for CloudShareInfo);
  sub_10013AEFC(v110, v165, type metadata accessor for CloudShareInfo);

  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.default.getter();

  v117 = os_log_type_enabled(v115, v116);
  loga = *(v0 + 208);
  v118 = *(v0 + 184);
  v119 = *(v0 + 192);
  v121 = *(v0 + 168);
  v120 = *(v0 + 176);
  v122 = *(v0 + 160);
  if (v117)
  {
    v154 = *(v0 + 128);
    v160 = *(v0 + 136);
    v123 = swift_slowAlloc();
    v190[0] = swift_slowAlloc();
    *v123 = 136315906;
    sub_10013AFC4(&qword_1003DD590, &type metadata accessor for URL);
    v146 = v116;
    v124 = dispatch thunk of CustomStringConvertible.description.getter();
    v172 = v118;
    v126 = v125;
    sub_10013AF64(v120, type metadata accessor for CloudShareInfo);
    v127 = sub_10021145C(v124, v126, v190);

    *(v123 + 4) = v127;
    *(v123 + 12) = 2080;
    v128 = (v121 + *(v149 + 20));
    v130 = *v128;
    v129 = v128[1];

    sub_10013AF64(v121, type metadata accessor for CloudShareInfo);
    v131 = sub_10021145C(v130, v129, v190);

    *(v123 + 14) = v131;
    *(v123 + 22) = 2080;
    *(v123 + 24) = sub_10021145C(v154, v160, v190);
    *(v123 + 32) = 1024;
    LODWORD(v131) = *(v122 + *(v149 + 24)) != 0;
    sub_10013AF64(v122, type metadata accessor for CloudShareInfo);
    *(v123 + 34) = v131;
    _os_log_impl(&_mh_execute_header, v115, v146, "Returning share information with shareURL: %s, container: %s, participant: %s, hasToken: %{BOOL}d", v123, 0x26u);
    swift_arrayDestroy();

    (*(v119 + 8))(loga, v172);
  }

  else
  {
    sub_10013AF64(*(v0 + 160), type metadata accessor for CloudShareInfo);

    sub_10013AF64(v121, type metadata accessor for CloudShareInfo);
    sub_10013AF64(v120, type metadata accessor for CloudShareInfo);
    (*(v119 + 8))(loga, v118);
  }

  v133 = *(v0 + 344);
  v132 = *(v0 + 352);
  v134 = *(v0 + 328);
  v135 = *(v0 + 336);
  v137 = *(v0 + 312);
  v136 = *(v0 + 320);
  v139 = *(v0 + 296);
  v138 = *(v0 + 304);
  v141 = *(v0 + 280);
  v140 = *(v0 + 288);
  v144 = *(v0 + 272);
  v147 = *(v0 + 264);
  v150 = *(v0 + 256);
  v155 = *(v0 + 248);
  v161 = *(v0 + 232);
  v166 = *(v0 + 208);
  v173 = *(v0 + 200);
  loge = *(v0 + 176);
  v185 = *(v0 + 168);
  v188 = *(v0 + 160);

  v73 = *(v0 + 8);
LABEL_28:

  return v73();
}

uint64_t sub_10012E928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v20;
  v8[3] = v21;
  v13 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  v8[4] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v8[5] = swift_task_alloc();
  v15 = *(*(type metadata accessor for CloudShareInfo() - 8) + 64) + 15;
  v16 = swift_task_alloc();
  v8[6] = v16;
  v17 = swift_task_alloc();
  v8[7] = v17;
  *v17 = v8;
  v17[1] = sub_10012EA84;

  return sub_100123608(v16, a5, a6, a7, a8);
}

uint64_t sub_10012EA84()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10013B038;
  }

  else
  {
    v3 = sub_10013B018;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012EB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v20;
  v8[3] = v21;
  v13 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  v8[4] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v8[5] = swift_task_alloc();
  v15 = *(*(type metadata accessor for CloudShareInfo() - 8) + 64) + 15;
  v16 = swift_task_alloc();
  v8[6] = v16;
  v17 = swift_task_alloc();
  v8[7] = v17;
  *v17 = v8;
  v17[1] = sub_10012ECF4;

  return sub_100127340(v16, a5, a6, a7, a8);
}

uint64_t sub_10012ECF4()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10012EEFC;
  }

  else
  {
    v3 = sub_10012EE08;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012EE08()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  sub_10013AEFC(v1, v2, type metadata accessor for CloudShareInfo);
  swift_storeEnumTagMultiPayload();
  v5(v2);
  sub_100008D3C(v2, &unk_1003E1070, &unk_100344CE0);
  sub_10013AF64(v1, type metadata accessor for CloudShareInfo);
  v7 = v0[5];
  v6 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10012EEFC()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  *v2 = v0[8];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v4(v2);

  sub_100008D3C(v2, &unk_1003E1070, &unk_100344CE0);
  v6 = v0[5];
  v5 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10012EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v20;
  v8[3] = v21;
  v13 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  v8[4] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v8[5] = swift_task_alloc();
  v15 = *(*(type metadata accessor for CloudShareInfo() - 8) + 64) + 15;
  v16 = swift_task_alloc();
  v8[6] = v16;
  v17 = swift_task_alloc();
  v8[7] = v17;
  *v17 = v8;
  v17[1] = sub_10012EA84;

  return sub_10012AEEC(v16, a5, a6, a7, a8);
}

uint64_t sub_10012F118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = v10;
  v8[23] = v11;
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[16] = a3;
  v8[17] = a4;
  v8[15] = a2;
  return _swift_task_switch(sub_10012F150, 0, 0);
}

uint64_t sub_10012F150()
{
  v27 = v2;
  v3 = v2[15];
  v4 = swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = v2[16];
  *(v2[15] + 16) = v7;
  if (v8)
  {
    v9 = v2[17];
    v0 = (v2[16])(v4);
  }

  else
  {
    v0 = 0;
  }

  v2[24] = v0;
  v1 = v2[19];
  if (v1)
  {
    if (qword_1003D7F20 == -1)
    {
LABEL_7:
      v10 = v2[15];
      v11 = type metadata accessor for Logger();
      sub_100008D04(v11, qword_1003FAA40);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = v2[18];
        v15 = v2[15];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v26 = v17;
        *v16 = 136315394;
        *(v16 + 4) = sub_10021145C(v14, v1, &v26);
        *(v16 + 12) = 2048;
        swift_beginAccess();
        *(v16 + 14) = *(v15 + 16);

        _os_log_impl(&_mh_execute_header, v12, v13, "Performing: %s, attempt: %ld...", v16, 0x16u);
        sub_10000839C(v17);
      }

      else
      {
        v18 = v2[15];
      }

      goto LABEL_11;
    }

LABEL_19:
    swift_once();
    goto LABEL_7;
  }

LABEL_11:
  if (v0)
  {
    v19 = v0;
    v0 = [v19 eventName];
    if (!v0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = String._bridgeToObjectiveC()();
    }
  }

  sub_100257274(v0);
  v20 = v2[20];

  v25 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  v2[25] = v22;
  *v22 = v2;
  v22[1] = sub_10012F6E0;
  v23 = v2[21];

  return v25();
}

uint64_t sub_10012F6E0()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_10012FA20;
  }

  else
  {
    v3 = sub_10012F7F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10012F7F4()
{
  v16 = v0;
  v1 = v0[19];
  if (v1)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = v0[15];
    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAA40);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[18];
      v7 = v0[15];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_10021145C(v6, v1, &v15);
      *(v8 + 12) = 2048;
      swift_beginAccess();
      *(v8 + 14) = *(v7 + 16);

      _os_log_impl(&_mh_execute_header, v4, v5, "✅ %s - successfully completed after %ld attempts!", v8, 0x16u);
      sub_10000839C(v9);
    }

    else
    {
      v10 = v0[15];
    }
  }

  v11 = v0[24];
  if (v11)
  {
    [v11 updateTaskResultWithError:0];
    v12 = v0[24];
    if (!v0[22])
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = 0;
  if (v0[22])
  {
LABEL_10:
    swift_getObjectType();
    sub_100246FA8(v12);
    v12 = v0[24];
  }

LABEL_11:

  v13 = v0[1];

  return v13();
}

uint64_t sub_10012FA20()
{
  v22 = v0;
  v1 = v0[26];
  v2 = v0[19];
  if (v2)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAA40);

    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[23];
      v7 = v0[18];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v8 = 136315650;
      *(v8 + 4) = sub_10021145C(v7, v2, &v21);
      *(v8 + 12) = 2048;
      *(v8 + 14) = v6;
      *(v8 + 22) = 2112;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "❌ %s - failed with error after %ld retries: %@", v8, 0x20u);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v10);
    }
  }

  v12 = v0[24];
  if (v12)
  {
    swift_getErrorValue();
    v13 = v0[5];
    v14 = v0[6];
    v15 = v0[7];
    v16 = v12;
    sub_1002DEA80(v14);
    v17 = _convertErrorToNSError(_:)();

    [v16 updateTaskResultWithError:v17];

    v18 = v0[24];
    if (!v0[22])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v18 = 0;
  if (v0[22])
  {
LABEL_9:
    swift_getObjectType();
    sub_100246FA8(v18);
    v18 = v0[24];
  }

LABEL_10:
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_10012FCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = v10;
  v8[24] = v11;
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a3;
  v8[18] = a4;
  v8[15] = a1;
  v8[16] = a2;
  return _swift_task_switch(sub_10012FD10, 0, 0);
}

uint64_t sub_10012FD10()
{
  v28 = v2;
  v3 = v2[16];
  v4 = swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = v2[17];
  *(v2[16] + 16) = v7;
  if (v8)
  {
    v9 = v2[18];
    v0 = (v2[17])(v4);
  }

  else
  {
    v0 = 0;
  }

  v2[25] = v0;
  v1 = v2[20];
  if (v1)
  {
    if (qword_1003D7F20 == -1)
    {
LABEL_7:
      v10 = v2[16];
      v11 = type metadata accessor for Logger();
      sub_100008D04(v11, qword_1003FAA40);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = v2[19];
        v15 = v2[16];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v27 = v17;
        *v16 = 136315394;
        *(v16 + 4) = sub_10021145C(v14, v1, &v27);
        *(v16 + 12) = 2048;
        swift_beginAccess();
        *(v16 + 14) = *(v15 + 16);

        _os_log_impl(&_mh_execute_header, v12, v13, "Performing: %s, attempt: %ld...", v16, 0x16u);
        sub_10000839C(v17);
      }

      else
      {
        v18 = v2[16];
      }

      goto LABEL_11;
    }

LABEL_19:
    swift_once();
    goto LABEL_7;
  }

LABEL_11:
  if (v0)
  {
    v19 = v0;
    v0 = [v19 eventName];
    if (!v0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = String._bridgeToObjectiveC()();
    }
  }

  sub_100257274(v0);
  v20 = v2[21];

  v26 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  v2[26] = v22;
  *v22 = v2;
  v22[1] = sub_1001302A8;
  v23 = v2[22];
  v24 = v2[15];

  return v26(v24);
}

uint64_t sub_1001302A8()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1001305E8;
  }

  else
  {
    v3 = sub_1001303BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001303BC()
{
  v16 = v0;
  v1 = v0[20];
  if (v1)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = v0[16];
    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAA40);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[19];
      v7 = v0[16];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_10021145C(v6, v1, &v15);
      *(v8 + 12) = 2048;
      swift_beginAccess();
      *(v8 + 14) = *(v7 + 16);

      _os_log_impl(&_mh_execute_header, v4, v5, "✅ %s - successfully completed after %ld attempts!", v8, 0x16u);
      sub_10000839C(v9);
    }

    else
    {
      v10 = v0[16];
    }
  }

  v11 = v0[25];
  if (v11)
  {
    [v11 updateTaskResultWithError:0];
    v12 = v0[25];
    if (!v0[23])
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = 0;
  if (v0[23])
  {
LABEL_10:
    swift_getObjectType();
    sub_100246FA8(v12);
    v12 = v0[25];
  }

LABEL_11:

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001305E8()
{
  v22 = v0;
  v1 = v0[27];
  v2 = v0[20];
  if (v2)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAA40);

    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[24];
      v7 = v0[19];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v8 = 136315650;
      *(v8 + 4) = sub_10021145C(v7, v2, &v21);
      *(v8 + 12) = 2048;
      *(v8 + 14) = v6;
      *(v8 + 22) = 2112;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "❌ %s - failed with error after %ld retries: %@", v8, 0x20u);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v10);
    }
  }

  v12 = v0[25];
  if (v12)
  {
    swift_getErrorValue();
    v13 = v0[5];
    v14 = v0[6];
    v15 = v0[7];
    v16 = v12;
    sub_1002DEA80(v14);
    v17 = _convertErrorToNSError(_:)();

    [v16 updateTaskResultWithError:v17];

    v18 = v0[25];
    if (!v0[23])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v18 = 0;
  if (v0[23])
  {
LABEL_9:
    swift_getObjectType();
    sub_100246FA8(v18);
    v18 = v0[25];
  }

LABEL_10:
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_1001308A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = v10;
  v8[24] = v11;
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a3;
  v8[18] = a4;
  v8[15] = a1;
  v8[16] = a2;
  return _swift_task_switch(sub_1001308D8, 0, 0);
}

uint64_t sub_1001308D8()
{
  v28 = v2;
  v3 = v2[16];
  v4 = swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = v2[17];
  *(v2[16] + 16) = v7;
  if (v8)
  {
    v9 = v2[18];
    v0 = (v2[17])(v4);
  }

  else
  {
    v0 = 0;
  }

  v2[25] = v0;
  v1 = v2[20];
  if (v1)
  {
    if (qword_1003D7F20 == -1)
    {
LABEL_7:
      v10 = v2[16];
      v11 = type metadata accessor for Logger();
      sub_100008D04(v11, qword_1003FAA40);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = v2[19];
        v15 = v2[16];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v27 = v17;
        *v16 = 136315394;
        *(v16 + 4) = sub_10021145C(v14, v1, &v27);
        *(v16 + 12) = 2048;
        swift_beginAccess();
        *(v16 + 14) = *(v15 + 16);

        _os_log_impl(&_mh_execute_header, v12, v13, "Performing: %s, attempt: %ld...", v16, 0x16u);
        sub_10000839C(v17);
      }

      else
      {
        v18 = v2[16];
      }

      goto LABEL_11;
    }

LABEL_19:
    swift_once();
    goto LABEL_7;
  }

LABEL_11:
  if (v0)
  {
    v19 = v0;
    v0 = [v19 eventName];
    if (!v0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v0 = String._bridgeToObjectiveC()();
    }
  }

  sub_100257274(v0);
  v20 = v2[21];

  v26 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  v2[26] = v22;
  *v22 = v2;
  v22[1] = sub_100130E70;
  v23 = v2[22];
  v24 = v2[15];

  return v26(v24);
}

uint64_t sub_100130E70()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_10013B03C;
  }

  else
  {
    v3 = sub_10013B028;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100130F84(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v79 = a2;
  v80 = a5;
  v78 = a4;
  v7 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v65 - v9);
  v11 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v72 = v65 - v13;
  v75 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v74 = *(v75 - 8);
  v14 = *(v74 + 64);
  __chkstk_darwin(v75);
  v16 = v65 - v15;
  v17 = type metadata accessor for UUID();
  v67 = *(v17 - 8);
  v18 = *(v67 + 64);
  __chkstk_darwin(v17);
  v20 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CustodianRecoveryInfoRecord();
  v69 = *(v21 - 8);
  v22 = *(v69 + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v71 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v70 = v65 - v25;
  __chkstk_darwin(v24);
  v27 = v65 - v26;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_100008D04(v68, qword_1003FAA88);
  v77 = a1;
  sub_10013AEFC(a1, v27, type metadata accessor for CustodianRecoveryInfoRecord);

  v28 = Logger.logObject.getter();
  v29 = a3;
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v28, v30);
  v73 = v29;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v65[2] = v7;
    v33 = v32;
    v34 = swift_slowAlloc();
    v66 = v10;
    v65[1] = v34;
    v84[0] = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_10021145C(v79, v29, v84);
    *(v33 + 12) = 2080;
    v35 = v67;
    (*(v67 + 16))(v20, v27, v17);
    sub_10013AF64(v27, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    (*(v35 + 8))(v20, v17);
    v39 = sub_10021145C(v36, v38, v84);

    *(v33 + 14) = v39;
    *(v33 + 22) = 2080;
    *(v33 + 24) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, v84);
    _os_log_impl(&_mh_execute_header, v28, v30, "Storage Controller: Attempting to share a record zone with participant: %s, recordID: %s, type: %s", v33, 0x20u);
    swift_arrayDestroy();
    v10 = v66;
  }

  else
  {
    sub_10013AF64(v27, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v40 = v74;
  v41 = v75;
  (*(v74 + 16))(v16, v76 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v75);
  Dependency.wrappedValue.getter();
  (*(v40 + 8))(v16, v41);
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  v42 = swift_dynamicCast();
  v43 = v77;
  if (v42)
  {
    sub_10003E950(v81, v84);
    v76 = sub_1000080F8(v84, v84[3]);
    v44 = v70;
    sub_10013AEFC(v43, v70, type metadata accessor for CustodianRecoveryInfoRecord);
    v45 = *(v69 + 80);
    v46 = (v45 + 32) & ~v45;
    v47 = v22 + 7;
    v48 = swift_allocObject();
    v49 = v73;
    *(v48 + 16) = v79;
    *(v48 + 24) = v49;
    sub_100135E20(v44, v48 + v46, type metadata accessor for CustodianRecoveryInfoRecord);
    v50 = (v48 + ((v47 + v46) & 0xFFFFFFFFFFFFFFF8));
    v51 = v80;
    *v50 = v78;
    v50[1] = v51;
    v78 = *v76;
    v52 = type metadata accessor for TaskPriority();
    v53 = v72;
    (*(*(v52 - 8) + 56))(v72, 1, 1, v52);
    v54 = v43;
    v55 = v71;
    sub_10013AEFC(v54, v71, type metadata accessor for CustodianRecoveryInfoRecord);
    v56 = (v45 + 40) & ~v45;
    v57 = (v47 + v56) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    v58[2] = 0;
    v58[3] = 0;
    v58[4] = v78;
    sub_100135E20(v55, v58 + v56, type metadata accessor for CustodianRecoveryInfoRecord);
    v59 = (v58 + v57);
    *v59 = v79;
    v59[1] = v49;
    v59[2] = 3;
    v60 = (v58 + ((v57 + 31) & 0xFFFFFFFFFFFFFFF8));
    *v60 = sub_100134058;
    v60[1] = v48;
    swift_bridgeObjectRetain_n();

    sub_1000BCD5C(0, 0, v53, &unk_1003432C0, v58);

    return sub_10000839C(v84);
  }

  else
  {
    v82 = 0;
    memset(v81, 0, sizeof(v81));
    sub_100008D3C(v81, &unk_1003DB050, &qword_10033FA60);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    sub_100008D04(v68, qword_1003FAAE8);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Storage Controller: This is unexpected! Cloud storage does not conform to CloudKitSharing protocol.", v64, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v83 = -7000;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v10 = v84[0];
    swift_storeEnumTagMultiPayload();
    v78(v10);
    return sub_100008D3C(v10, &unk_1003E1070, &unk_100344CE0);
  }
}

uint64_t sub_100131914(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v61 = a6;
  v62 = a5;
  v57 = a2;
  v59 = type metadata accessor for UUID();
  v9 = *(v59 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v59);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CustodianRecoveryInfoRecord();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v54 - v17;
  v19 = type metadata accessor for CloudShareInfo();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23);
  v27 = (&v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v29 = (&v54 - v28);
  sub_100135DB0(a1, &v54 - v28);
  v60 = v23;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v29;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAA88);
    sub_10013AEFC(a4, v16, type metadata accessor for CustodianRecoveryInfoRecord);

    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v63 = v56;
      *v34 = 136315906;
      *(v34 + 4) = sub_10021145C(v57, a3, &v63);
      *(v34 + 12) = 2080;
      v35 = v58;
      v36 = v59;
      (*(v9 + 16))(v58, v16, v59);
      sub_10013AF64(v16, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v9 + 8))(v35, v36);
      v40 = sub_10021145C(v37, v39, &v63);

      *(v34 + 14) = v40;
      *(v34 + 22) = 2080;
      *(v34 + 24) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, &v63);
      *(v34 + 32) = 2112;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 34) = v41;
      v42 = v55;
      *v55 = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "Storage Controller: Failed to shared a record zone with participant: %s, recordID: %s, type: %s, error: %@", v34, 0x2Au);
      sub_100008D3C(v42, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10013AF64(v16, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    *v27 = v30;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v62(v27);

    return sub_100008D3C(v27, &unk_1003E1070, &unk_100344CE0);
  }

  else
  {
    sub_100135E20(v29, v22, type metadata accessor for CloudShareInfo);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100008D04(v43, qword_1003FAA88);
    sub_10013AEFC(a4, v18, type metadata accessor for CustodianRecoveryInfoRecord);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v63 = v56;
      *v46 = 136315650;
      *(v46 + 4) = sub_10021145C(v57, a3, &v63);
      *(v46 + 12) = 2080;
      v47 = v58;
      v48 = v59;
      (*(v9 + 16))(v58, v18, v59);
      sub_10013AF64(v18, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v9 + 8))(v47, v48);
      v52 = sub_10021145C(v49, v51, &v63);

      *(v46 + 14) = v52;
      *(v46 + 22) = 2080;
      *(v46 + 24) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, &v63);
      _os_log_impl(&_mh_execute_header, v44, v45, "Storage Controller: Successfully shared a record zone with participant: %s, recordID: %s, type: %s", v46, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10013AF64(v18, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    sub_10013AEFC(v22, v27, type metadata accessor for CloudShareInfo);
    swift_storeEnumTagMultiPayload();
    v62(v27);
    sub_100008D3C(v27, &unk_1003E1070, &unk_100344CE0);
    return sub_10013AF64(v22, type metadata accessor for CloudShareInfo);
  }
}

uint64_t sub_100132128(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t sub_100132164(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_100005814(&unk_1003DEBD0, &qword_1003432B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  v15 = *a2;
  (*(v11 + 16))(&v19 - v13, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v14, v10);
  sub_100130F84(a3, a4, a5, sub_100133DF4, v17);
}

uint64_t sub_1001322D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a4;
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1000082A8;

  return sub_10012E928(a1, a2, a3, v15, a5, a6, a7, a8);
}

void *sub_1001323C8(uint64_t a1)
{
  v2 = type metadata accessor for EntityIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100005814(&qword_1003DEC48, &qword_100343370);
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
      sub_10013AFC4(&qword_1003DEC50, &type metadata accessor for EntityIdentifier);
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
          sub_10013AFC4(&qword_1003DEC58, &type metadata accessor for EntityIdentifier);
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

uint64_t sub_1001326E8(uint64_t a1)
{
  v1[31] = a1;
  v2 = type metadata accessor for UUID();
  v1[32] = v2;
  v3 = *(v2 - 8);
  v1[33] = v3;
  v4 = *(v3 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_1001327D8, 0, 0);
}

uint64_t sub_1001327D8()
{
  v1 = v0[38];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = *(v3 + 16);
  v0[39] = v5;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = type metadata accessor for CustodianRecoveryInfoRecord();
  v7 = *(v6 + 20);
  v0[41] = UUID.uuidString.getter();
  v0[42] = v8;
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(v0[31] + *(v6 + 40)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v9 = &qword_1003FA9C0;
  }

  v10 = *v9;
  v11 = v9[1];

  v12 = sub_1002E2BC4(v10, v11);

  v13 = [v12 privateCloudDatabase];
  v0[43] = v13;

  sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
  v14 = UUID.uuidString.getter();
  v16 = v15;
  v17._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17._object = v18;
  v19._countAndFlagsBits = v14;
  v19._object = v16;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v19, v17).super.isa;
  v0[44] = isa;
  sub_100016034(0, &qword_1003DEC08, CKRecordID_ptr);
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  v24 = isa;
  v25._countAndFlagsBits = v21;
  v25._object = v23;
  v26 = CKRecordID.init(recordName:zoneID:)(v25, v24).super.isa;
  v0[45] = v26;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_100132B00;
  v27 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003DEC10, &qword_1003432F8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000B070;
  v0[13] = &unk_1003AA700;
  v0[14] = v27;
  [v13 fetchRecordWithID:v26 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100132B00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_10013B02C;
  }

  else
  {
    v3 = sub_10013B034;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100132C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 280) = a6;
  *(v7 + 128) = a5;
  *(v7 + 136) = v6;
  *(v7 + 112) = a3;
  *(v7 + 120) = a4;
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  *(v7 + 144) = RecoveryRecordsRequest;
  v9 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v7 + 160) = v10;
  v11 = *(v10 - 8);
  *(v7 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  v13 = *(*(type metadata accessor for CustodianRecoveryInfoRecord() - 8) + 64) + 15;
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  v14 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  *(v7 + 200) = v14;
  v15 = *(v14 - 8);
  *(v7 + 208) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_100132DB8, 0, 0);
}

uint64_t sub_100132DB8()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  (*(v2 + 16))(v1, *(v0 + 136) + OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__accountStore, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = [*(*sub_1000080F8((v0 + 16) *(v0 + 40)) + 16)];
  if (v4 && (v5 = v4, v6 = [v4 aa_altDSID], v5, v6))
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v11 = *(v0 + 168);
  v10 = *(v0 + 176);
  v12 = *(v0 + 160);
  v13 = *(v0 + 136);
  v14 = *(v0 + 112);
  v15 = *(v0 + 120);
  sub_10000839C((v0 + 16));
  v16 = kAAAnalyticsEventCustodianSetupProcessAcceptFetchRecoveryInfo;
  (*(v11 + 16))(v10, v13 + OBJC_IVAR____TtC13appleaccountd21AcceptedStatusHandler__analyticsReporter, v12);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v10, v12);
  *(v0 + 224) = *(v0 + 80);
  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);

  v17 = v16;

  v18 = sub_100245D38(v17, v7, v9, v14, v15);
  *(v0 + 232) = v18;
  if (v18)
  {
    v19 = *(v0 + 280);
    v20 = *(v0 + 128);
    v21 = v18;
    sub_100245E08(v20, v19 & 1);
  }

  sub_100257274(v17);
  v23 = *(v0 + 144);
  v22 = *(v0 + 152);
  v24 = *(v0 + 136);
  v25 = *(v0 + 112);
  v38 = *(v0 + 120);
  v26 = *(v0 + 96);
  v27 = type metadata accessor for CustodianRecord();
  *(v0 + 240) = v27;
  v28 = *(v27 + 20);
  v29 = type metadata accessor for UUID();
  (*(*(v29 - 8) + 16))(v22, v26 + v28, v29);
  *(v22 + v23[5]) = 1;
  v30 = v22 + v23[6];
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v22 + v23[7]) = 1;
  v31 = (v22 + v23[8]);
  *v31 = v7;
  v31[1] = v9;
  v32 = (v22 + v23[9]);
  *v32 = v25;
  v32[1] = v38;
  v33 = *sub_1000080F8((v24 + 56), *(v24 + 80));

  v34 = swift_task_alloc();
  *(v0 + 248) = v34;
  *v34 = v0;
  v34[1] = sub_100133250;
  v35 = *(v0 + 184);
  v36 = *(v0 + 152);

  return sub_100021548(v35, v36, 0, 0);
}

uint64_t sub_100133250()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_1001334DC;
  }

  else
  {
    v3 = sub_100133364;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100133364()
{
  v1 = *(v0 + 232);
  sub_10013AF64(*(v0 + 152), type metadata accessor for FetchRecoveryRecordsRequest);
  if (v1)
  {
    v2 = *(v0 + 232);
    [v2 updateTaskResultWithError:0];
    swift_getObjectType();
    v3 = v2;
    sub_100246FA8(v2);
  }

  v4 = *(v0 + 240);
  v5 = *(v0 + 224);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 280);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  swift_unknownObjectRelease();
  sub_100135E20(v6, v7, type metadata accessor for CustodianRecoveryInfoRecord);
  v11 = (v10 + *(v4 + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v0 + 264) = v14;
  *v14 = v0;
  v14[1] = sub_100133674;
  v15 = *(v0 + 192);
  v16 = *(v0 + 128);
  v17 = *(v0 + 136);
  v18 = *(v0 + 112);
  v19 = *(v0 + 120);

  return sub_100120D40(v15, v12, v13, v9 == 1, v18, v19, v16, v8 & 1);
}

uint64_t sub_1001334DC()
{
  sub_10013AF64(v0[19], type metadata accessor for FetchRecoveryRecordsRequest);
  v1 = v0[32];
  v2 = v0[29];
  swift_getErrorValue();
  v3 = v0[7];
  v4 = v0[9];
  sub_1002DEA80(v0[8]);
  if (v2)
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = v5;
    swift_errorRetain();
    v8 = _convertErrorToNSError(_:)();
    [v7 updateTaskResultWithError:v8];

    swift_getObjectType();
    v9 = v7;
    sub_100246FA8(v5);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = v0[28];
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v11 = v0[27];
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[22];
  v15 = v0[19];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100133674()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_100133914;
  }

  else
  {
    v3 = sub_100133788;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100133788()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Processing custodian accepted complete", v4, 2u);
  }

  v5 = v0[27];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v9 = v0[19];

  [objc_opt_self() postRecoveryContactChangedNotification];
  sub_10013AF64(v6, type metadata accessor for CustodianRecoveryInfoRecord);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100133914()
{
  sub_10013AF64(v0[24], type metadata accessor for CustodianRecoveryInfoRecord);
  v1 = v0[34];
  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v6 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001339D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 49);
}

uint64_t sub_100133A20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000082A8;

  return sub_100122468(a1, v4, v5, v7, v6);
}

uint64_t sub_100133AF0(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000EF88;

  return sub_10012FCD8(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_100133BE4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32);
}

Swift::Int sub_100133C24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003DEBC8, &qword_1003432A8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100133D60()
{
  v1 = sub_100005814(&unk_1003DEBD0, &qword_1003432B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100133DF4(uint64_t a1)
{
  v2 = *(*(sub_100005814(&unk_1003DEBD0, &qword_1003432B0) - 8) + 80);

  return sub_10030B6D0(a1);
}

uint64_t sub_100133E70()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 24);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);
  v8 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v9 = (v0 + v2 + v1[8]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100012324(*v9, v10);
  }

  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v11 = v1[11];
  if (!(*(v6 + 48))(v4 + v11, 1, v5))
  {
    v7(v4 + v11, v5);
  }

  v12 = (v16 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v1[12] + 8);

  v14 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16);
}

uint64_t sub_100134058(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecoveryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_100131914(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_1001340FC()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = *(v0 + 32);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2, v6);
  v8(v0 + v2 + v1[5], v6);
  v9 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v10 = (v0 + v2 + v1[8]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100012324(*v10, v11);
  }

  sub_100012324(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v12 = v1[11];
  if (!(*(v7 + 48))(v5 + v12, 1, v6))
  {
    v8(v5 + v12, v6);
  }

  v13 = (v19 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 31) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v5 + v1[12] + 8);

  v16 = *(v0 + v13 + 8);

  v17 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16);
}

void sub_100134300()
{
  v2 = v1;
  v3 = *(type metadata accessor for CustodianRecoveryInfoRecord() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);
  v14 = *(v0 + 16);
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v12 = *(v0 + v5);
  v11 = *(v0 + v5 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1000082A8;

  JUMPOUT(0x1001322D0);
}

uint64_t sub_100134490(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for UUID();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = *(*(sub_100005814(&qword_1003E7500, &qword_10033EC30) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for CustodianRecoveryInfoRecord();
  v2[17] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1001345E8, 0, 0);
}

uint64_t sub_1001345E8()
{
  v1 = v0[17];
  v3 = v0[10];
  v2 = v0[11];
  sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
  v4 = v3 + *(v1 + 20);
  v5 = UUID.uuidString.getter();
  v7 = v6;
  v8._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8._object = v9;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v10, v8).super.isa;
  v0[22] = isa;
  v12 = [objc_allocWithZone(CKShare) initWithRecordZoneID:isa];
  v0[23] = v12;
  [v12 addParticipant:v2];
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(v0[10] + *(v0[17] + 40)) == 1)
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

  v0[24] = [v16 privateCloudDatabase];

  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v17 = swift_allocObject();
  v0[25] = v17;
  *(v17 + 16) = xmmword_1003431D0;
  *(v17 + 32) = v12;
  v18 = async function pointer to CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)[1];
  v19 = v12;
  v20 = swift_task_alloc();
  v0[26] = v20;
  *v20 = v0;
  v20[1] = sub_10013487C;

  return CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(v17, _swiftEmptyArrayStorage, 0, 1);
}

uint64_t sub_10013487C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 208);
  v9 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {
    v6 = sub_100135980;
  }

  else
  {
    v7 = v4[25];

    v6 = sub_10013499C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10013499C()
{
  v155 = v0;
  v2 = v0[27];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[27] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v150 = v0[27];

  v10 = 0;
  v153 = v0;
  if (!v8)
  {
    while (1)
    {
LABEL_5:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v4 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v19 = v0[27];
    v20 = v0[28];

    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA58);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Saved share record not found.", v24, 2u);
    }

    v25 = v0[23];
    v26 = v0[24];
    v27 = v0[22];

    type metadata accessor for AACustodianError(0);
    v0[9] = -7066;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = v0[8];
    swift_willThrow();

    goto LABEL_16;
  }

  while (1)
  {
    v11 = v10;
LABEL_8:
    v12 = v0[23];
    v13 = __clz(__rbit64(v8)) | (v11 << 6);
    v14 = *(v150[6] + 8 * v13);
    v15 = v150[7] + 16 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    sub_100016034(0, &qword_1003DEC00, NSObject_ptr);
    v1 = v14;
    sub_100135D08(v16, v17);
    v18 = [v12 recordID];
    LOBYTE(v12) = static NSObject.== infix(_:_:)();

    if (v12)
    {
      break;
    }

    v8 &= v8 - 1;
    sub_10005A40C(v16, v17);
    v10 = v11;
    v0 = v153;
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v150 = v16;
  v0 = v153;
  v57 = v153[27];
  v56 = v153[28];

  if (v17)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v58 = v153[21];
    v59 = v153[10];
    v60 = type metadata accessor for Logger();
    sub_100008D04(v60, qword_1003FAA58);
    sub_10013AEFC(v59, v58, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_errorRetain();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    sub_10005A40C(v150, 1);
    v63 = os_log_type_enabled(v61, v62);
    v64 = v153[21];
    if (v63)
    {
      v65 = v153[13];
      v66 = v153[14];
      v67 = v153[12];
      v68 = swift_slowAlloc();
      loga = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v154[0] = v149;
      *v68 = 138412546;
      swift_errorRetain();
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 4) = v69;
      loga->isa = v69;
      *(v68 + 12) = 2080;
      (*(v65 + 16))(v66, v64, v67);
      sub_10013AF64(v64, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      v0 = v153;
      (*(v65 + 8))(v66, v67);
      v73 = sub_10021145C(v70, v72, v154);

      *(v68 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v61, v62, "Error creating CKShare: %@, recordID: %s", v68, 0x16u);
      sub_100008D3C(loga, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v149);
    }

    else
    {
      sub_10013AF64(v153[21], type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v89 = v0[23];
    v88 = v0[24];
    v90 = v0[22];
    swift_willThrow();
    sub_10005A40C(v150, 1);

LABEL_16:
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v29 = v0[18];
    v30 = v0[10];
    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAA58);
    sub_10013AEFC(v30, v29, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[18];
    if (v34)
    {
      v37 = v0[13];
      v36 = v0[14];
      v38 = v0[12];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v154[0] = v151;
      *v39 = 136315394;
      (*(v37 + 16))(v36, v35, v38);
      sub_10013AF64(v35, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v37 + 8))(v36, v38);
      v44 = sub_10021145C(v41, v43, v154);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2112;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v45;
      *v40 = v45;
      _os_log_impl(&_mh_execute_header, v32, v33, "Error performing modify operation when sharing record with recordID: %s, error: %@", v39, 0x16u);
      sub_100008D3C(v40, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v151);
    }

    else
    {
      sub_10013AF64(v0[18], type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v47 = v0[20];
    v46 = v0[21];
    v49 = v0[18];
    v48 = v0[19];
    v51 = v0[15];
    v50 = v0[16];
    v152 = v0[14];
    swift_getErrorValue();
    v52 = v0[2];
    v53 = v0[4];
    sub_1002DEA80(v0[3]);
    swift_willThrow();

    v54 = v0[1];

    return v54();
  }

  objc_opt_self();
  v74 = swift_dynamicCastObjCClass();
  v75 = qword_1003D7F28;
  if (!v74)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_100008D04(v91, qword_1003FAA58);
    v92 = v150;
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    sub_10005A40C(v150, 0);
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v154[0] = v96;
      *v95 = 136315138;
      swift_getObjectType();
      v97 = _typeName(_:qualified:)();
      v99 = sub_10021145C(v97, v98, v154);

      *(v95 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v93, v94, "Saved share record is of unexpected type. Expected CKShare, but found %s.", v95, 0xCu);
      sub_10000839C(v96);
    }

    v100 = v153[23];
    v101 = v153[24];
    v102 = v153[22];
    type metadata accessor for AACustodianError(0);
    v153[7] = -7083;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v103 = v153[6];
    swift_willThrow();

    sub_10005A40C(v150, 0);
    goto LABEL_16;
  }

  v148 = v74;
  v76 = v150;
  if (v75 != -1)
  {
    swift_once();
  }

  v78 = v153[19];
  v77 = v153[20];
  v79 = v153[10];
  v80 = type metadata accessor for Logger();
  sub_100008D04(v80, qword_1003FAA58);
  sub_10013AEFC(v79, v77, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_10013AEFC(v79, v78, type metadata accessor for CustodianRecoveryInfoRecord);
  v81 = v76;
  v1 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();
  sub_10005A40C(v150, 0);
  if (os_log_type_enabled(v1, v82))
  {
    v145 = v82;
    v9 = swift_slowAlloc();
    v154[0] = swift_slowAlloc();
    *v9 = 136315650;
    v83 = [v148 URL];
    if (v83)
    {
      v84 = v153;
      v85 = v153[15];
      v86 = v83;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v87 = 0;
    }

    else
    {
LABEL_44:
      v87 = 1;
      v84 = v153;
    }

    v110 = v84[15];
    v109 = v84[16];
    v111 = type metadata accessor for URL();
    v112 = *(v111 - 8);
    (*(v112 + 56))(v110, v87, 1, v111);
    sub_100135D14(v110, v109);
    v113 = (*(v112 + 48))(v109, 1, v111);
    v114 = v84[16];
    log = v1;
    if (v113 == 1)
    {
      sub_100008D3C(v114, &qword_1003E7500, &qword_10033EC30);
      v115 = 0xE500000000000000;
      v116 = 0x3E6C696E3CLL;
    }

    else
    {
      v116 = URL.absoluteString.getter();
      v115 = v117;
      (*(v112 + 8))(v114, v111);
    }

    v143 = v84[23];
    v144 = v84[24];
    v142 = v84[22];
    v118 = v84[20];
    v119 = v153[19];
    v120 = v153[17];
    v121 = v153[14];
    v122 = v153[13];
    v123 = v153[12];
    v124 = sub_10021145C(v116, v115, v154);

    *(v9 + 4) = v124;
    *(v9 + 12) = 2080;
    (*(v122 + 16))(v121, v118, v123);
    sub_10013AF64(v118, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v125 = dispatch thunk of CustomStringConvertible.description.getter();
    v127 = v126;
    (*(v122 + 8))(v121, v123);
    v128 = sub_10021145C(v125, v127, v154);

    *(v9 + 14) = v128;
    *(v9 + 22) = 2080;
    v129 = v119 + *(v120 + 20);
    v130 = UUID.uuidString.getter();
    v132 = v131;
    v108 = v153;
    sub_10013AF64(v119, type metadata accessor for CustodianRecoveryInfoRecord);
    v133 = sub_10021145C(v130, v132, v154);

    *(v9 + 24) = v133;
    _os_log_impl(&_mh_execute_header, log, v145, "Successfully created CKShare %s for recordID: %s, zone: %s", v9, 0x20u);
    swift_arrayDestroy();

    sub_10005A40C(v150, 0);
  }

  else
  {
    v104 = v153[23];
    v105 = v153[24];
    v106 = v153[22];
    v107 = v153[19];
    sub_10013AF64(v153[20], type metadata accessor for CustodianRecoveryInfoRecord);

    sub_10005A40C(v150, 0);
    sub_10013AF64(v107, type metadata accessor for CustodianRecoveryInfoRecord);
    v108 = v153;
  }

  v135 = v108[20];
  v134 = v108[21];
  v137 = v108[18];
  v136 = v108[19];
  v139 = v108[15];
  v138 = v108[16];
  v140 = v108[14];

  v141 = v108[1];

  return v141(v148);
}

uint64_t sub_100135980()
{
  v36 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];

  v5 = v0[29];
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v6 = v0[18];
  v7 = v0[10];
  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA58);
  sub_10013AEFC(v7, v6, type metadata accessor for CustodianRecoveryInfoRecord);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[18];
  if (v11)
  {
    v13 = v0[13];
    v14 = v0[14];
    v15 = v0[12];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v16 = 136315394;
    (*(v13 + 16))(v14, v12, v15);
    sub_10013AF64(v12, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v13 + 8))(v14, v15);
    v21 = sub_10021145C(v18, v20, &v35);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v17 = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error performing modify operation when sharing record with recordID: %s, error: %@", v16, 0x16u);
    sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v33);
  }

  else
  {
    sub_10013AF64(v0[18], type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v24 = v0[20];
  v23 = v0[21];
  v26 = v0[18];
  v25 = v0[19];
  v28 = v0[15];
  v27 = v0[16];
  v34 = v0[14];
  swift_getErrorValue();
  v29 = v0[2];
  v30 = v0[4];
  sub_1002DEA80(v0[3]);
  swift_willThrow();

  v31 = v0[1];

  return v31();
}

id sub_100135D08(void *a1, char a2)
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

uint64_t sub_100135D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100135DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100135E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100135E88(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for UUID();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = *(*(sub_100005814(&qword_1003E7500, &qword_10033EC30) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for BeneficiaryInfoRecord();
  v2[17] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100135FE0, 0, 0);
}

uint64_t sub_100135FE0()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
  v3 = UUID.uuidString.getter();
  v5 = v4;
  v6._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6._object = v7;
  v8._countAndFlagsBits = v3;
  v8._object = v5;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v8, v6).super.isa;
  v0[22] = isa;
  v10 = [objc_allocWithZone(CKShare) initWithRecordZoneID:isa];
  v0[23] = v10;
  [v10 addParticipant:v2];
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(v0[10] + *(v0[17] + 40)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v11 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v11 = &qword_1003FA9F0;
  }

  v12 = *v11;
  v13 = v11[1];

  v14 = sub_1002E2BC4(v12, v13);

  v0[24] = [v14 privateCloudDatabase];

  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v15 = swift_allocObject();
  v0[25] = v15;
  *(v15 + 16) = xmmword_1003431D0;
  *(v15 + 32) = v10;
  v16 = async function pointer to CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)[1];
  v17 = v10;
  v18 = swift_task_alloc();
  v0[26] = v18;
  *v18 = v0;
  v18[1] = sub_100136268;

  return CKDatabase.modifyRecords(saving:deleting:savePolicy:atomically:)(v15, _swiftEmptyArrayStorage, 0, 1);
}

uint64_t sub_100136268(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 208);
  v9 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {
    v6 = sub_100137364;
  }

  else
  {
    v7 = v4[25];

    v6 = sub_100136388;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100136388()
{
  v156 = v0;
  v1 = v0[27];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[27] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v151 = v0[27];

  v9 = 0;
  v154 = v0;
  if (!v7)
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v3 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v19 = v0[27];
    v20 = v0[28];

    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA58);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Saved share record not found.", v24, 2u);
    }

    v25 = v0[23];
    v26 = v0[24];
    v27 = v0[22];

    type metadata accessor for AACustodianError(0);
    v0[9] = -7066;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = v0[8];
    swift_willThrow();

    goto LABEL_16;
  }

  while (1)
  {
    v10 = v9;
LABEL_8:
    v11 = v0[23];
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(v151[6] + 8 * v12);
    v14 = v151[7] + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    sub_100016034(0, &qword_1003DEC00, NSObject_ptr);
    v17 = v13;
    sub_100135D08(v15, v16);
    v18 = [v11 recordID];
    LOBYTE(v11) = static NSObject.== infix(_:_:)();

    if (v11)
    {
      break;
    }

    v7 &= v7 - 1;
    sub_10005A40C(v15, v16);
    v9 = v10;
    v0 = v154;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v151 = v15;
  v0 = v154;
  v57 = v154[27];
  v56 = v154[28];

  if (v16)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v58 = v154[21];
    v59 = v154[10];
    v60 = type metadata accessor for Logger();
    sub_100008D04(v60, qword_1003FAA58);
    sub_10013AEFC(v59, v58, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    sub_10005A40C(v151, 1);
    v63 = os_log_type_enabled(v61, v62);
    v64 = v154[21];
    if (v63)
    {
      v65 = v154[17];
      v66 = v154[13];
      v67 = v154[14];
      v68 = v154[12];
      v69 = swift_slowAlloc();
      logb = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v155[0] = v150;
      *v69 = 138412546;
      swift_errorRetain();
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v69 + 4) = v70;
      logb->isa = v70;
      *(v69 + 12) = 2080;
      (*(v66 + 16))(v67, v64 + *(v65 + 32), v68);
      sub_10013AF64(v64, type metadata accessor for BeneficiaryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      v0 = v154;
      (*(v66 + 8))(v67, v68);
      v74 = sub_10021145C(v71, v73, v155);

      *(v69 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v61, v62, "Error creating CKShare: %@, recordID: %s", v69, 0x16u);
      sub_100008D3C(logb, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v150);
    }

    else
    {
      sub_10013AF64(v154[21], type metadata accessor for BeneficiaryInfoRecord);
    }

    v89 = v0[23];
    v88 = v0[24];
    v90 = v0[22];
    swift_willThrow();
    sub_10005A40C(v151, 1);

LABEL_16:
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v29 = v0[18];
    v30 = v0[10];
    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAA58);
    sub_10013AEFC(v30, v29, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[18];
    if (v34)
    {
      v36 = v0[17];
      v38 = v0[13];
      v37 = v0[14];
      v39 = v0[12];
      v40 = swift_slowAlloc();
      loga = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v155[0] = v152;
      *v40 = 136315394;
      (*(v38 + 16))(v37, v35 + *(v36 + 32), v39);
      sub_10013AF64(v35, type metadata accessor for BeneficiaryInfoRecord);
      sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      (*(v38 + 8))(v37, v39);
      v44 = sub_10021145C(v41, v43, v155);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2112;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v45;
      loga->isa = v45;
      _os_log_impl(&_mh_execute_header, v32, v33, "Error performing modify operation when sharing record with recordID: %s, error: %@", v40, 0x16u);
      sub_100008D3C(loga, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v152);
    }

    else
    {
      sub_10013AF64(v0[18], type metadata accessor for BeneficiaryInfoRecord);
    }

    v47 = v0[20];
    v46 = v0[21];
    v49 = v0[18];
    v48 = v0[19];
    v51 = v0[15];
    v50 = v0[16];
    v153 = v0[14];
    swift_getErrorValue();
    v52 = v0[2];
    v53 = v0[4];
    sub_1002DEA80(v0[3]);
    swift_willThrow();

    v54 = v0[1];

    return v54();
  }

  objc_opt_self();
  v75 = swift_dynamicCastObjCClass();
  v76 = qword_1003D7F28;
  if (!v75)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_100008D04(v91, qword_1003FAA58);
    v92 = v151;
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    sub_10005A40C(v151, 0);
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v155[0] = v96;
      *v95 = 136315138;
      swift_getObjectType();
      v97 = _typeName(_:qualified:)();
      v99 = sub_10021145C(v97, v98, v155);

      *(v95 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v93, v94, "Saved share record is of unexpected type. Expected CKShare, but found %s.", v95, 0xCu);
      sub_10000839C(v96);
    }

    v100 = v154[23];
    v101 = v154[24];
    v102 = v154[22];
    type metadata accessor for AACustodianError(0);
    v154[7] = -7083;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10013AFC4(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v103 = v154[6];
    swift_willThrow();

    sub_10005A40C(v151, 0);
    goto LABEL_16;
  }

  v149 = v75;
  v77 = v151;
  if (v76 != -1)
  {
    swift_once();
  }

  v78 = v154[19];
  v10 = v154[20];
  v79 = v154[10];
  v80 = type metadata accessor for Logger();
  sub_100008D04(v80, qword_1003FAA58);
  sub_10013AEFC(v79, v10, type metadata accessor for BeneficiaryInfoRecord);
  sub_10013AEFC(v79, v78, type metadata accessor for BeneficiaryInfoRecord);
  v81 = v77;
  v82 = Logger.logObject.getter();
  LOBYTE(v10) = static os_log_type_t.default.getter();
  sub_10005A40C(v151, 0);
  if (os_log_type_enabled(v82, v10))
  {
    v8 = swift_slowAlloc();
    v155[0] = swift_slowAlloc();
    *v8 = 136315650;
    v83 = [v149 URL];
    log = v82;
    if (v83)
    {
      v84 = v154;
      v85 = v154[15];
      v86 = v83;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v87 = 0;
    }

    else
    {
LABEL_44:
      v87 = 1;
      v84 = v154;
    }

    v110 = v84[15];
    v109 = v84[16];
    v111 = v84;
    v112 = type metadata accessor for URL();
    v113 = *(v112 - 8);
    (*(v113 + 56))(v110, v87, 1, v112);
    sub_100135D14(v110, v109);
    v114 = (*(v113 + 48))(v109, 1, v112);
    v115 = v111[16];
    v145 = v10;
    if (v114 == 1)
    {
      sub_100008D3C(v115, &qword_1003E7500, &qword_10033EC30);
      v116 = 0xE500000000000000;
      v117 = 0x3E6C696E3CLL;
    }

    else
    {
      v117 = URL.absoluteString.getter();
      v116 = v118;
      (*(v113 + 8))(v115, v112);
    }

    v108 = v154;
    v143 = v154[23];
    v144 = v154[24];
    v142 = v154[22];
    v120 = v154[19];
    v119 = v154[20];
    v121 = v154[17];
    v123 = v154[13];
    v122 = v154[14];
    v124 = v154[12];
    v125 = sub_10021145C(v117, v116, v155);

    *(v8 + 4) = v125;
    *(v8 + 12) = 2080;
    (*(v123 + 16))(v122, v119 + *(v121 + 32), v124);
    sub_10013AF64(v119, type metadata accessor for BeneficiaryInfoRecord);
    sub_10013AFC4(&qword_1003D9150, &type metadata accessor for UUID);
    v126 = dispatch thunk of CustomStringConvertible.description.getter();
    v128 = v127;
    (*(v123 + 8))(v122, v124);
    v129 = sub_10021145C(v126, v128, v155);

    *(v8 + 14) = v129;
    *(v8 + 22) = 2080;
    v130 = UUID.uuidString.getter();
    v132 = v131;
    sub_10013AF64(v120, type metadata accessor for BeneficiaryInfoRecord);
    v133 = sub_10021145C(v130, v132, v155);

    *(v8 + 24) = v133;
    _os_log_impl(&_mh_execute_header, log, v145, "Successfully created CKShare %s for recordID: %s, zone: %s", v8, 0x20u);
    swift_arrayDestroy();

    sub_10005A40C(v151, 0);
  }

  else
  {
    v104 = v154[23];
    v105 = v154[24];
    v106 = v154[22];
    v107 = v154[19];
    sub_10013AF64(v154[20], type metadata accessor for BeneficiaryInfoRecord);

    sub_10005A40C(v151, 0);
    sub_10013AF64(v107, type metadata accessor for BeneficiaryInfoRecord);
    v108 = v154;
  }

  v135 = v108[20];
  v134 = v108[21];
  v137 = v108[18];
  v136 = v108[19];
  v139 = v108[15];
  v138 = v108[16];
  v140 = v108[14];

  v141 = v108[1];

  return v141(v149);
}