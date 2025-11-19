uint64_t sub_10005EDD4()
{
  v1[22] = v0;
  v2 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v4 = *(v3 + 64) + 15;
  v1[25] = swift_task_alloc();
  v5 = type metadata accessor for CustodianRecoveryInfoRecord();
  v1[26] = v5;
  v6 = *(v5 - 8);
  v1[27] = v6;
  v7 = *(v6 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v1[30] = v8;
  v9 = *(v8 - 8);
  v1[31] = v9;
  v10 = *(v9 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v11 = *(*(sub_100005814(&unk_1003D91B0, qword_1003444F0) - 8) + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v1[43] = RecoveryRecordsRequest;
  v13 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v14 = type metadata accessor for CustodianRecord();
  v1[46] = v14;
  v15 = *(v14 - 8);
  v1[47] = v15;
  v16 = *(v15 + 64) + 15;
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v17 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v1[62] = v17;
  v18 = *(v17 - 8);
  v1[63] = v18;
  v19 = *(v18 + 64) + 15;
  v1[64] = swift_task_alloc();
  v20 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v1[65] = v20;
  v21 = *(v20 - 8);
  v1[66] = v21;
  v22 = *(v21 + 64) + 15;
  v1[67] = swift_task_alloc();

  return _swift_task_switch(sub_10005F20C, 0, 0);
}

uint64_t sub_10005F20C()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[68] = sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching contact list whoCanHelpMe by refreshing record state from cloud", v4, 2u);
  }

  v5 = v0[67];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[22];

  (*(v6 + 16))(v5, v8 + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController, v7);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v5, v7);
  sub_1000080F8(v0 + 2, v0[5]);
  v9 = type metadata accessor for CustodianStorageController();
  v10 = swift_task_alloc();
  v0[69] = v10;
  *v10 = v0;
  v10[1] = sub_10005F464;

  return (sub_1000308CC)(v9, &off_1003A4C78);
}

uint64_t sub_10005F464(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 552);
  v7 = *v2;
  *(v3 + 560) = a1;
  *(v3 + 568) = v1;

  if (v1)
  {
    v5 = sub_100066898;
  }

  else
  {
    v5 = sub_10005F57C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10005F57C()
{
  v192 = v0;
  v1 = *(v0 + 560);
  sub_10000839C((v0 + 16));
  v2 = *(v1 + 16);
  *(v0 + 576) = v2;
  if (v2)
  {
    v4 = *(v0 + 504);
    v3 = *(v0 + 512);
    v5 = *(v0 + 496);
    v6 = *(v0 + 376);
    (*(v4 + 16))(v3, *(v0 + 176) + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__idmsHandler, v5);
    Dependency.wrappedValue.getter();
    (*(v4 + 8))(v3, v5);
    v7 = sub_1000080F8((v0 + 56), *(v0 + 80));
    v8 = *v7;
    os_unfair_lock_lock(*(*v7 + 40));
    v9 = *(v8 + 16);
    *(v8 + 16) = 0;

    os_unfair_lock_unlock(*(v8 + 40));
    sub_10000839C((v0 + 56));
    v10 = sub_100308BAC(_swiftEmptyArrayStorage);
    v11 = 0;
    *(v0 + 864) = *(v6 + 80);
    *(v0 + 584) = *(v6 + 72);
    while (1)
    {
      *(v0 + 608) = v10;
      *(v0 + 600) = v11;
      *(v0 + 876) = 1;
      *(v0 + 592) = v10;
      v12 = *(v0 + 488);
      v13 = *(v0 + 368);
      sub_100070E78(*(v0 + 560) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 584) * v11, v12, type metadata accessor for CustodianRecord);
      if (*(v12 + *(v13 + 36)) == 2)
      {
        break;
      }

      sub_100070B00(*(v0 + 488), type metadata accessor for CustodianRecord);
      *(v0 + 624) = v10;
      *(v0 + 616) = v10;
      v11 = *(v0 + 600) + 1;
      if (v11 == *(v0 + 576))
      {
        *(v0 + 752) = v10;
        type metadata accessor for CustodianDefaults();
        result = swift_initStackObject();
        *(v0 + 760) = result;
        *(v0 + 152) = _swiftEmptyArrayStorage;
        *(v0 + 776) = _swiftEmptyArrayStorage;
        *(v0 + 768) = 0;
        v15 = *(v0 + 560);
        if (*(v15 + 16))
        {
          v16 = *(v0 + 544);
          v18 = *(v0 + 464);
          v17 = *(v0 + 472);
          v20 = *(v0 + 448);
          v19 = *(v0 + 456);
          sub_100070E78(v15 + ((*(v0 + 864) + 32) & ~*(v0 + 864)), v17, type metadata accessor for CustodianRecord);
          sub_100070E78(v17, v18, type metadata accessor for CustodianRecord);
          sub_100070E78(v17, v19, type metadata accessor for CustodianRecord);
          sub_100070E78(v17, v20, type metadata accessor for CustodianRecord);
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.default.getter();
          v23 = os_log_type_enabled(v21, v22);
          v24 = *(v0 + 456);
          v25 = *(v0 + 464);
          v26 = *(v0 + 448);
          if (v23)
          {
            v27 = *(v0 + 368);
            v185 = *(v0 + 240);
            v28 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            v191[0] = v189;
            *v28 = 134218498;
            v187 = v22;
            v29 = *(v25 + *(v27 + 36));
            sub_100070B00(v25, type metadata accessor for CustodianRecord);
            *(v28 + 4) = v29;
            *(v28 + 12) = 1024;
            LODWORD(v29) = *(v24 + *(v27 + 36)) == 2;
            sub_100070B00(v24, type metadata accessor for CustodianRecord);
            *(v28 + 14) = v29;
            *(v28 + 18) = 2080;
            v30 = *(v27 + 20);
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
            v31 = dispatch thunk of CustomStringConvertible.description.getter();
            v33 = v32;
            sub_100070B00(v26, type metadata accessor for CustodianRecord);
            v34 = sub_10021145C(v31, v33, v191);

            *(v28 + 20) = v34;
            _os_log_impl(&_mh_execute_header, v21, v187, "CustodianRecord status: %ld, isAccepted: %{BOOL}d, for custodianID: %s", v28, 0x1Cu);
            sub_10000839C(v189);
          }

          else
          {
            sub_100070B00(*(v0 + 456), type metadata accessor for CustodianRecord);
            sub_100070B00(v25, type metadata accessor for CustodianRecord);

            sub_100070B00(v26, type metadata accessor for CustodianRecord);
          }

          v65 = *(v0 + 472);
          if (*(v65 + *(*(v0 + 368) + 36)) == 2)
          {
            v66 = *(v0 + 544);
            sub_100070E78(v65, *(v0 + 440), type metadata accessor for CustodianRecord);
            v67 = Logger.logObject.getter();
            v68 = static os_log_type_t.default.getter();
            v69 = os_log_type_enabled(v67, v68);
            v70 = *(v0 + 440);
            if (v69)
            {
              v71 = *(v0 + 368);
              v72 = *(v0 + 240);
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              v191[0] = v74;
              *v73 = 136315138;
              v75 = *(v71 + 20);
              sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
              v76 = dispatch thunk of CustomStringConvertible.description.getter();
              v78 = v77;
              sub_100070B00(v70, type metadata accessor for CustodianRecord);
              v79 = sub_10021145C(v76, v78, v191);

              *(v73 + 4) = v79;
              _os_log_impl(&_mh_execute_header, v67, v68, "Checking if CustodianRecoveryInfoRecord exist for custodianID: %s", v73, 0xCu);
              sub_10000839C(v74);
            }

            else
            {

              sub_100070B00(v70, type metadata accessor for CustodianRecord);
            }

            if (*(*(v0 + 752) + 16) && (v100 = sub_10031AF8C(*(v0 + 472) + *(*(v0 + 368) + 20)), (v101 & 1) != 0))
            {
              sub_100070E78(*(*(v0 + 752) + 56) + *(*(v0 + 216) + 72) * v100, *(v0 + 280), type metadata accessor for CustodianRecoveryInfoRecord);
              v102 = 0;
            }

            else
            {
              v102 = 1;
            }

            v103 = *(v0 + 272);
            v104 = *(v0 + 280);
            v105 = *(v0 + 208);
            v106 = *(v0 + 216);
            (*(v106 + 56))(v104, v102, 1, v105);
            sub_100012D04(v104, v103, &unk_1003D91B0, qword_1003444F0);
            v107 = (*(v106 + 48))(v103, 1, v105);
            v108 = *(v0 + 544);
            v109 = *(v0 + 472);
            v110 = *(v0 + 272);
            if (v107 == 1)
            {
              v111 = *(v0 + 424);
              sub_100008D3C(v110, &unk_1003D91B0, qword_1003444F0);
              sub_100070E78(v109, v111, type metadata accessor for CustodianRecord);
              v112 = Logger.logObject.getter();
              v113 = static os_log_type_t.error.getter();
              v114 = os_log_type_enabled(v112, v113);
              v115 = *(v0 + 424);
              if (v114)
              {
                v116 = *(v0 + 368);
                v117 = *(v0 + 240);
                v118 = swift_slowAlloc();
                v119 = swift_slowAlloc();
                v191[0] = v119;
                *v118 = 136315138;
                v120 = *(v116 + 20);
                sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
                v121 = dispatch thunk of CustomStringConvertible.description.getter();
                v123 = v122;
                sub_100070B00(v115, type metadata accessor for CustodianRecord);
                v124 = sub_10021145C(v121, v123, v191);

                *(v118 + 4) = v124;
                _os_log_impl(&_mh_execute_header, v112, v113, "CustodianRecoveryInfoRecord not found for custodianID: %s", v118, 0xCu);
                sub_10000839C(v119);
              }

              else
              {

                sub_100070B00(v115, type metadata accessor for CustodianRecord);
              }

              *(v0 + 878) = 0;
              v146 = *(v0 + 544);
              sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
              v147 = Logger.logObject.getter();
              v148 = static os_log_type_t.default.getter();
              v149 = os_log_type_enabled(v147, v148);
              v150 = *(v0 + 416);
              if (v149)
              {
                v151 = *(v0 + 368);
                v152 = *(v0 + 240);
                v153 = swift_slowAlloc();
                v154 = swift_slowAlloc();
                v191[0] = v154;
                *v153 = 136315138;
                v155 = *(v151 + 20);
                sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
                v156 = dispatch thunk of CustomStringConvertible.description.getter();
                v158 = v157;
                sub_100070B00(v150, type metadata accessor for CustodianRecord);
                v159 = sub_10021145C(v156, v158, v191);

                *(v153 + 4) = v159;
                _os_log_impl(&_mh_execute_header, v147, v148, "Checking if setup finalized from server for custodianID: %s", v153, 0xCu);
                sub_10000839C(v154);
              }

              else
              {

                sub_100070B00(v150, type metadata accessor for CustodianRecord);
              }

              v163 = *(v0 + 472);
              v164 = *(v0 + 176);
              v127 = swift_task_alloc();
              *(v0 + 808) = v127;
              *(v127 + 16) = v164;
              *(v127 + 24) = v163;
              v165 = swift_task_alloc();
              *(v0 + 816) = v165;
              *v165 = v0;
              v165[1] = sub_100064B38;
              v129 = &unk_10033F4D0;
              v130 = 0x800000010032D620;
              v131 = 0xD000000000000015;
            }

            else
            {
              v132 = *(v0 + 432);
              sub_100070D64(v110, *(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
              sub_100070E78(v109, v132, type metadata accessor for CustodianRecord);
              v133 = Logger.logObject.getter();
              v134 = static os_log_type_t.default.getter();
              v135 = os_log_type_enabled(v133, v134);
              v136 = *(v0 + 432);
              if (v135)
              {
                v137 = *(v0 + 368);
                v138 = *(v0 + 240);
                v139 = swift_slowAlloc();
                v140 = swift_slowAlloc();
                v191[0] = v140;
                *v139 = 136315138;
                v141 = *(v137 + 20);
                sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
                v142 = dispatch thunk of CustomStringConvertible.description.getter();
                v144 = v143;
                sub_100070B00(v136, type metadata accessor for CustodianRecord);
                v145 = sub_10021145C(v142, v144, v191);

                *(v139 + 4) = v145;
                _os_log_impl(&_mh_execute_header, v133, v134, "Found CustodianRecoveryInfoRecord, check if CKShare accepted - custodianID: %s", v139, 0xCu);
                sub_10000839C(v140);
              }

              else
              {

                sub_100070B00(v136, type metadata accessor for CustodianRecord);
              }

              v160 = *(v0 + 224);
              v161 = *(v0 + 176);
              v127 = swift_task_alloc();
              *(v0 + 784) = v127;
              *(v127 + 16) = v161;
              *(v127 + 24) = v160;
              v162 = swift_task_alloc();
              *(v0 + 792) = v162;
              *v162 = v0;
              v162[1] = sub_100064734;
              v129 = &unk_10033F4E0;
              v131 = 0xD000000000000016;
              v130 = 0x800000010032D640;
            }
          }

          else
          {
            *(v0 + 880) = 0;
            *(v0 + 832) = v10;
            v80 = *(v0 + 544);
            v81 = Logger.logObject.getter();
            v82 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v81, v82))
            {
              v83 = swift_slowAlloc();
              *v83 = 67109376;
              *(v83 + 8) = 1024;
              *(v83 + 10) = 0;
              _os_log_impl(&_mh_execute_header, v81, v82, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v83, 0xEu);
            }

            v84 = *(v0 + 544);
            v85 = *(v0 + 472);
            v86 = *(v0 + 408);

            sub_100070E78(v85, v86, type metadata accessor for CustodianRecord);
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.default.getter();
            v89 = os_log_type_enabled(v87, v88);
            v90 = *(v0 + 408);
            if (v89)
            {
              v91 = *(v0 + 368);
              v92 = *(v0 + 240);
              v93 = swift_slowAlloc();
              v94 = swift_slowAlloc();
              v191[0] = v94;
              *v93 = 136315138;
              v95 = *(v91 + 20);
              sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
              v96 = dispatch thunk of CustomStringConvertible.description.getter();
              v98 = v97;
              sub_100070B00(v90, type metadata accessor for CustodianRecord);
              v99 = sub_10021145C(v96, v98, v191);

              *(v93 + 4) = v99;
              _os_log_impl(&_mh_execute_header, v87, v88, " Checking if CRK exist at security layer for custodianID: %s", v93, 0xCu);
              sub_10000839C(v94);
            }

            else
            {

              sub_100070B00(v90, type metadata accessor for CustodianRecord);
            }

            v125 = *(v0 + 472);
            v126 = *(v0 + 176);
            v127 = swift_task_alloc();
            *(v0 + 840) = v127;
            *(v127 + 16) = v126;
            *(v127 + 24) = v125;
            v128 = swift_task_alloc();
            *(v0 + 848) = v128;
            *v128 = v0;
            v128[1] = sub_100064FE4;
            v129 = &unk_10033F4B8;
            v130 = 0xEF74736978652D52;
            v131 = 0x4B432D6B63656863;
          }

          return sub_1000699F4(v131, v130, v129, v127);
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    v51 = *(v0 + 488);
    v52 = *(v0 + 360);
    v53 = *(v0 + 344);
    v54 = *(v0 + 240);
    v55 = *(v0 + 248);
    v56 = *(v0 + 176);
    v57 = *(*(v0 + 368) + 20);
    *(v0 + 868) = v57;
    v58 = *(v55 + 16);
    *(v0 + 632) = v58;
    *(v0 + 640) = (v55 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v58(v52, v51 + v57, v54);
    *(v52 + v53[5]) = 0;
    v59 = v52 + v53[6];
    *v59 = 0;
    *(v59 + 8) = 1;
    *(v52 + v53[7]) = 1;
    v60 = (v52 + v53[8]);
    *v60 = 0;
    v60[1] = 0;
    v61 = (v52 + v53[9]);
    *v61 = 0;
    v61[1] = 0;
    v62 = swift_task_alloc();
    *(v0 + 648) = v62;
    *(v62 + 16) = v56;
    *(v62 + 24) = v52;
    v63 = swift_task_alloc();
    *(v0 + 656) = v63;
    *v63 = v0;
    v63[1] = sub_100060884;
    v64 = *(v0 + 336);

    return sub_10006A3C0(v64, 0xD000000000000019, 0x800000010032D600, &unk_10033F4F0, v62);
  }

  else
  {
    v35 = *(v0 + 560);
    v36 = *(v0 + 544);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "FetchCustodians found 0 records", v39, 2u);
    }

    v40 = *(v0 + 536);
    v41 = *(v0 + 512);
    v43 = *(v0 + 480);
    v42 = *(v0 + 488);
    v44 = *(v0 + 464);
    v45 = *(v0 + 472);
    v47 = *(v0 + 448);
    v46 = *(v0 + 456);
    v49 = *(v0 + 432);
    v48 = *(v0 + 440);
    v166 = *(v0 + 424);
    v167 = *(v0 + 416);
    v168 = *(v0 + 408);
    v169 = *(v0 + 400);
    v170 = *(v0 + 392);
    v171 = *(v0 + 384);
    v172 = *(v0 + 360);
    v173 = *(v0 + 352);
    v174 = *(v0 + 336);
    v175 = *(v0 + 328);
    v176 = *(v0 + 320);
    v177 = *(v0 + 312);
    v178 = *(v0 + 304);
    v179 = *(v0 + 296);
    v180 = *(v0 + 288);
    v181 = *(v0 + 280);
    v182 = *(v0 + 272);
    v183 = *(v0 + 264);
    v184 = *(v0 + 256);
    v186 = *(v0 + 232);
    v188 = *(v0 + 224);
    v190 = *(v0 + 200);

    v50 = *(v0 + 8);

    return v50(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100060884()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v4 = *v1;

  v5 = *(v2 + 648);
  if (v0)
  {

    v6 = sub_100066A98;
  }

  else
  {

    v6 = sub_1000609CC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000609CC()
{
  v194 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 868);
  v3 = *(v0 + 488);
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  v189 = *(v9 + 56);
  v191 = *(v0 + 640);
  v189(v5, 0, 1, v8);
  v1(v6, v3 + v2, v7);
  sub_100012D04(v5, v4, &unk_1003D91B0, qword_1003444F0);
  v10 = *(v9 + 48);
  if (v10(v4, 1, v8) == 1)
  {
    v11 = *(v0 + 608);
    v12 = *(v0 + 264);
    sub_100008D3C(*(v0 + 328), &unk_1003D91B0, qword_1003444F0);
    v13 = sub_10031AF8C(v12);
    if (v14)
    {
      v15 = v13;
      v16 = *(v0 + 592);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 168) = v16;
      if (isUniquelyReferenced_nonNull_native)
      {
        v18 = (v0 + 592);
      }

      else
      {
LABEL_56:
        v18 = (v0 + 168);
        sub_1002D0004();
      }

      v19 = *v18;
      v20 = *(v0 + 320);
      v21 = *(v0 + 216);
      (*(*(v0 + 248) + 8))(*(v19 + 48) + *(*(v0 + 248) + 72) * v15, *(v0 + 240));
      sub_100070D64(*(v19 + 56) + *(v21 + 72) * v15, v20, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_1001C3F38(v15, v19);
      v22 = 0;
      v23 = v19;
    }

    else
    {
      v23 = *(v0 + 608);
      v19 = *(v0 + 592);
      v22 = 1;
    }

    v30 = *(v0 + 488);
    v31 = *(v0 + 320);
    v32 = *(v0 + 264);
    v33 = *(v0 + 240);
    v34 = *(v0 + 248);
    v35 = *(v0 + 216) + 56;
    v189(v31, v22, 1, *(v0 + 208));
    sub_100008D3C(v31, &unk_1003D91B0, qword_1003444F0);
    (*(v34 + 8))(v32, v33);
    sub_100070B00(v30, type metadata accessor for CustodianRecord);
  }

  else
  {
    v19 = *(v0 + 592);
    v24 = *(v0 + 488);
    v25 = *(v0 + 264);
    v26 = *(v0 + 240);
    v27 = *(v0 + 248);
    v28 = *(v0 + 232);
    sub_100070D64(*(v0 + 328), v28, type metadata accessor for CustodianRecoveryInfoRecord);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v193 = v19;
    sub_1002CF140(v28, v25, v29);
    (*(v27 + 8))(v25, v26);
    sub_100070B00(v24, type metadata accessor for CustodianRecord);
    v23 = v19;
  }

  v36 = *(v0 + 876);
  v15 = *(v0 + 360);
  v37 = *(v0 + 336);
  v38 = (v10(v37, 1, *(v0 + 208)) != 1) & v36;
  sub_100008D3C(v37, &unk_1003D91B0, qword_1003444F0);
  v39 = type metadata accessor for FetchRecoveryRecordsRequest;
  v40 = v15;
  while (1)
  {
    sub_100070B00(v40, v39);
    *(v0 + 624) = v23;
    *(v0 + 616) = v19;
    v41 = *(v0 + 600) + 1;
    if (v41 == *(v0 + 576))
    {
      break;
    }

    *(v0 + 608) = v23;
    *(v0 + 600) = v41;
    *(v0 + 876) = v38;
    *(v0 + 592) = v19;
    v15 = *(v0 + 488);
    v42 = *(v0 + 368);
    sub_100070E78(*(v0 + 560) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 584) * v41, v15, type metadata accessor for CustodianRecord);
    v40 = *(v0 + 488);
    if (*(v15 + *(v42 + 36)) == 2)
    {
      v74 = *(v0 + 360);
      v75 = *(v0 + 344);
      v76 = *(v0 + 240);
      v77 = *(v0 + 248);
      v78 = *(v0 + 176);
      v79 = *(*(v0 + 368) + 20);
      *(v0 + 868) = v79;
      v80 = *(v77 + 16);
      *(v0 + 632) = v80;
      *(v0 + 640) = (v77 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v80(v74, v40 + v79, v76);
      *(v74 + v75[5]) = 0;
      v81 = v74 + v75[6];
      *v81 = 0;
      *(v81 + 8) = 1;
      *(v74 + v75[7]) = 1;
      v82 = (v74 + v75[8]);
      *v82 = 0;
      v82[1] = 0;
      v83 = (v74 + v75[9]);
      *v83 = 0;
      v83[1] = 0;
      v84 = swift_task_alloc();
      *(v0 + 648) = v84;
      *(v84 + 16) = v78;
      *(v84 + 24) = v74;
      v85 = swift_task_alloc();
      *(v0 + 656) = v85;
      *v85 = v0;
      v85[1] = sub_100060884;
      v86 = *(v0 + 336);

      return sub_10006A3C0(v86, 0xD000000000000019, 0x800000010032D600, &unk_10033F4F0, v84);
    }

    v39 = type metadata accessor for CustodianRecord;
  }

  if (v38)
  {
    *(v0 + 752) = v23;
    type metadata accessor for CustodianDefaults();
    *(v0 + 760) = swift_initStackObject();
    *(v0 + 152) = _swiftEmptyArrayStorage;
    *(v0 + 776) = _swiftEmptyArrayStorage;
    *(v0 + 768) = 0;
    v43 = *(v0 + 560);
    if (!*(v43 + 16))
    {
      __break(1u);
      goto LABEL_56;
    }

    v44 = *(v0 + 544);
    v46 = *(v0 + 464);
    v45 = *(v0 + 472);
    v48 = *(v0 + 448);
    v47 = *(v0 + 456);
    sub_100070E78(v43 + ((*(v0 + 864) + 32) & ~*(v0 + 864)), v45, type metadata accessor for CustodianRecord);
    sub_100070E78(v45, v46, type metadata accessor for CustodianRecord);
    sub_100070E78(v45, v47, type metadata accessor for CustodianRecord);
    sub_100070E78(v45, v48, type metadata accessor for CustodianRecord);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 456);
    v53 = *(v0 + 464);
    v54 = *(v0 + 448);
    if (v51)
    {
      v55 = *(v0 + 368);
      v188 = *(v0 + 240);
      v56 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v193 = v192;
      *v56 = 134218498;
      v190 = v50;
      v57 = *(v53 + *(v55 + 36));
      sub_100070B00(v53, type metadata accessor for CustodianRecord);
      *(v56 + 4) = v57;
      *(v56 + 12) = 1024;
      LODWORD(v57) = *(v52 + *(v55 + 36)) == 2;
      sub_100070B00(v52, type metadata accessor for CustodianRecord);
      *(v56 + 14) = v57;
      *(v56 + 18) = 2080;
      v58 = *(v55 + 20);
      sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      sub_100070B00(v54, type metadata accessor for CustodianRecord);
      v62 = sub_10021145C(v59, v61, &v193);

      *(v56 + 20) = v62;
      _os_log_impl(&_mh_execute_header, v49, v190, "CustodianRecord status: %ld, isAccepted: %{BOOL}d, for custodianID: %s", v56, 0x1Cu);
      sub_10000839C(v192);
    }

    else
    {
      sub_100070B00(*(v0 + 456), type metadata accessor for CustodianRecord);
      sub_100070B00(v53, type metadata accessor for CustodianRecord);

      sub_100070B00(v54, type metadata accessor for CustodianRecord);
    }

    v87 = *(v0 + 472);
    if (*(v87 + *(*(v0 + 368) + 36)) == 2)
    {
      v88 = *(v0 + 544);
      sub_100070E78(v87, *(v0 + 440), type metadata accessor for CustodianRecord);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.default.getter();
      v91 = os_log_type_enabled(v89, v90);
      v92 = *(v0 + 440);
      if (v91)
      {
        v93 = *(v0 + 368);
        v94 = *(v0 + 240);
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v193 = v96;
        *v95 = 136315138;
        v97 = *(v93 + 20);
        sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
        v98 = dispatch thunk of CustomStringConvertible.description.getter();
        v100 = v99;
        sub_100070B00(v92, type metadata accessor for CustodianRecord);
        v101 = sub_10021145C(v98, v100, &v193);

        *(v95 + 4) = v101;
        _os_log_impl(&_mh_execute_header, v89, v90, "Checking if CustodianRecoveryInfoRecord exist for custodianID: %s", v95, 0xCu);
        sub_10000839C(v96);
      }

      else
      {

        sub_100070B00(v92, type metadata accessor for CustodianRecord);
      }

      if (*(*(v0 + 752) + 16) && (v122 = sub_10031AF8C(*(v0 + 472) + *(*(v0 + 368) + 20)), (v123 & 1) != 0))
      {
        sub_100070E78(*(*(v0 + 752) + 56) + *(*(v0 + 216) + 72) * v122, *(v0 + 280), type metadata accessor for CustodianRecoveryInfoRecord);
        v124 = 0;
      }

      else
      {
        v124 = 1;
      }

      v125 = *(v0 + 272);
      v126 = *(v0 + 280);
      v127 = *(v0 + 208);
      v128 = *(v0 + 216);
      (*(v128 + 56))(v126, v124, 1, v127);
      sub_100012D04(v126, v125, &unk_1003D91B0, qword_1003444F0);
      v129 = (*(v128 + 48))(v125, 1, v127);
      v130 = *(v0 + 544);
      v131 = *(v0 + 472);
      v132 = *(v0 + 272);
      if (v129 == 1)
      {
        v133 = *(v0 + 424);
        sub_100008D3C(v132, &unk_1003D91B0, qword_1003444F0);
        sub_100070E78(v131, v133, type metadata accessor for CustodianRecord);
        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.error.getter();
        v136 = os_log_type_enabled(v134, v135);
        v137 = *(v0 + 424);
        if (v136)
        {
          v138 = *(v0 + 368);
          v139 = *(v0 + 240);
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v193 = v141;
          *v140 = 136315138;
          v142 = *(v138 + 20);
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
          v143 = dispatch thunk of CustomStringConvertible.description.getter();
          v145 = v144;
          sub_100070B00(v137, type metadata accessor for CustodianRecord);
          v146 = sub_10021145C(v143, v145, &v193);

          *(v140 + 4) = v146;
          _os_log_impl(&_mh_execute_header, v134, v135, "CustodianRecoveryInfoRecord not found for custodianID: %s", v140, 0xCu);
          sub_10000839C(v141);
        }

        else
        {

          sub_100070B00(v137, type metadata accessor for CustodianRecord);
        }

        *(v0 + 878) = 0;
        v168 = *(v0 + 544);
        sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.default.getter();
        v171 = os_log_type_enabled(v169, v170);
        v172 = *(v0 + 416);
        if (v171)
        {
          v173 = *(v0 + 368);
          v174 = *(v0 + 240);
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v193 = v176;
          *v175 = 136315138;
          v177 = *(v173 + 20);
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
          v178 = dispatch thunk of CustomStringConvertible.description.getter();
          v180 = v179;
          sub_100070B00(v172, type metadata accessor for CustodianRecord);
          v181 = sub_10021145C(v178, v180, &v193);

          *(v175 + 4) = v181;
          _os_log_impl(&_mh_execute_header, v169, v170, "Checking if setup finalized from server for custodianID: %s", v175, 0xCu);
          sub_10000839C(v176);
        }

        else
        {

          sub_100070B00(v172, type metadata accessor for CustodianRecord);
        }

        v185 = *(v0 + 472);
        v186 = *(v0 + 176);
        v149 = swift_task_alloc();
        *(v0 + 808) = v149;
        *(v149 + 16) = v186;
        *(v149 + 24) = v185;
        v187 = swift_task_alloc();
        *(v0 + 816) = v187;
        *v187 = v0;
        v187[1] = sub_100064B38;
        v151 = &unk_10033F4D0;
        v152 = 0x800000010032D620;
        v153 = 0xD000000000000015;
      }

      else
      {
        v154 = *(v0 + 432);
        sub_100070D64(v132, *(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
        sub_100070E78(v131, v154, type metadata accessor for CustodianRecord);
        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.default.getter();
        v157 = os_log_type_enabled(v155, v156);
        v158 = *(v0 + 432);
        if (v157)
        {
          v159 = *(v0 + 368);
          v160 = *(v0 + 240);
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          v193 = v162;
          *v161 = 136315138;
          v163 = *(v159 + 20);
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
          v164 = dispatch thunk of CustomStringConvertible.description.getter();
          v166 = v165;
          sub_100070B00(v158, type metadata accessor for CustodianRecord);
          v167 = sub_10021145C(v164, v166, &v193);

          *(v161 + 4) = v167;
          _os_log_impl(&_mh_execute_header, v155, v156, "Found CustodianRecoveryInfoRecord, check if CKShare accepted - custodianID: %s", v161, 0xCu);
          sub_10000839C(v162);
        }

        else
        {

          sub_100070B00(v158, type metadata accessor for CustodianRecord);
        }

        v182 = *(v0 + 224);
        v183 = *(v0 + 176);
        v149 = swift_task_alloc();
        *(v0 + 784) = v149;
        *(v149 + 16) = v183;
        *(v149 + 24) = v182;
        v184 = swift_task_alloc();
        *(v0 + 792) = v184;
        *v184 = v0;
        v184[1] = sub_100064734;
        v151 = &unk_10033F4E0;
        v153 = 0xD000000000000016;
        v152 = 0x800000010032D640;
      }
    }

    else
    {
      *(v0 + 880) = 0;
      *(v0 + 832) = v23;
      v102 = *(v0 + 544);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 67109376;
        *(v105 + 8) = 1024;
        *(v105 + 10) = 0;
        _os_log_impl(&_mh_execute_header, v103, v104, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v105, 0xEu);
      }

      v106 = *(v0 + 544);
      v107 = *(v0 + 472);
      v108 = *(v0 + 408);

      sub_100070E78(v107, v108, type metadata accessor for CustodianRecord);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.default.getter();
      v111 = os_log_type_enabled(v109, v110);
      v112 = *(v0 + 408);
      if (v111)
      {
        v113 = *(v0 + 368);
        v114 = *(v0 + 240);
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v193 = v116;
        *v115 = 136315138;
        v117 = *(v113 + 20);
        sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
        v118 = dispatch thunk of CustomStringConvertible.description.getter();
        v120 = v119;
        sub_100070B00(v112, type metadata accessor for CustodianRecord);
        v121 = sub_10021145C(v118, v120, &v193);

        *(v115 + 4) = v121;
        _os_log_impl(&_mh_execute_header, v109, v110, " Checking if CRK exist at security layer for custodianID: %s", v115, 0xCu);
        sub_10000839C(v116);
      }

      else
      {

        sub_100070B00(v112, type metadata accessor for CustodianRecord);
      }

      v147 = *(v0 + 472);
      v148 = *(v0 + 176);
      v149 = swift_task_alloc();
      *(v0 + 840) = v149;
      *(v149 + 16) = v148;
      *(v149 + 24) = v147;
      v150 = swift_task_alloc();
      *(v0 + 848) = v150;
      *v150 = v0;
      v150[1] = sub_100064FE4;
      v151 = &unk_10033F4B8;
      v152 = 0xEF74736978652D52;
      v153 = 0x4B432D6B63656863;
    }

    return sub_1000699F4(v153, v152, v151, v149);
  }

  else
  {
    v63 = *(v0 + 544);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "One or more CustodianRecoveryInfoRecord not found in local disk, so fetching sharedDB records from cloud", v66, 2u);
    }

    v68 = *(v0 + 192);
    v67 = *(v0 + 200);
    v70 = *(v0 + 176);
    v69 = *(v0 + 184);

    (*(v68 + 16))(v67, v70 + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__storageController, v69);
    Dependency.wrappedValue.getter();
    (*(v68 + 8))(v67, v69);
    v71 = *sub_1000080F8((v0 + 96), *(v0 + 120));
    v72 = swift_task_alloc();
    *(v0 + 664) = v72;
    *v72 = v0;
    v72[1] = sub_100061DFC;

    return sub_10030D2B0();
  }
}

uint64_t sub_100061DFC()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v7 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v4 = *(v2 + 560);

    v5 = sub_100063058;
  }

  else
  {
    v5 = sub_100061F18;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100061F18()
{
  v159 = v0;
  v1 = *(v0 + 544);
  sub_10000839C((v0 + 96));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refetching the missing CustodianRecoveryInfoRecord from local disk after fetching sharedDB records from cloud", v4, 2u);
  }

  v5 = 0;
  v6 = *(v0 + 624);
  v7 = *(v0 + 616);
  while (1)
  {
    *(v0 + 696) = v6;
    *(v0 + 688) = v5;
    *(v0 + 680) = v7;
    v8 = *(v0 + 480);
    v9 = *(v0 + 368);
    sub_100070E78(*(v0 + 560) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 584) * v5, v8, type metadata accessor for CustodianRecord);
    v10 = *(v9 + 20);
    *(v0 + 872) = v10;
    if (!*(v6 + 16))
    {
      break;
    }

    v11 = sub_10031AF8C(v8 + v10);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v13 = *(v0 + 480);
    v14 = *(v0 + 312);
    v15 = *(v0 + 208);
    v16 = *(v0 + 216);
    sub_100070E78(*(v6 + 56) + *(v16 + 72) * v11, v14, type metadata accessor for CustodianRecoveryInfoRecord);
    (*(v16 + 56))(v14, 0, 1, v15);
    sub_100070B00(v13, type metadata accessor for CustodianRecord);
    sub_100008D3C(v14, &unk_1003D91B0, qword_1003444F0);
    v5 = *(v0 + 688) + 1;
    if (v5 == *(v0 + 576))
    {
      *(v0 + 752) = v6;
      type metadata accessor for CustodianDefaults();
      result = swift_initStackObject();
      *(v0 + 760) = result;
      *(v0 + 152) = _swiftEmptyArrayStorage;
      *(v0 + 776) = _swiftEmptyArrayStorage;
      *(v0 + 768) = 0;
      v18 = *(v0 + 560);
      if (*(v18 + 16))
      {
        v19 = *(v0 + 544);
        v21 = *(v0 + 464);
        v20 = *(v0 + 472);
        v23 = *(v0 + 448);
        v22 = *(v0 + 456);
        sub_100070E78(v18 + ((*(v0 + 864) + 32) & ~*(v0 + 864)), v20, type metadata accessor for CustodianRecord);
        sub_100070E78(v20, v21, type metadata accessor for CustodianRecord);
        sub_100070E78(v20, v22, type metadata accessor for CustodianRecord);
        sub_100070E78(v20, v23, type metadata accessor for CustodianRecord);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        v26 = os_log_type_enabled(v24, v25);
        v27 = *(v0 + 456);
        v28 = *(v0 + 464);
        v29 = *(v0 + 448);
        if (v26)
        {
          v30 = *(v0 + 368);
          v155 = *(v0 + 240);
          v31 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v158 = v157;
          *v31 = 134218498;
          v156 = v25;
          v32 = *(v28 + *(v30 + 36));
          sub_100070B00(v28, type metadata accessor for CustodianRecord);
          *(v31 + 4) = v32;
          *(v31 + 12) = 1024;
          LODWORD(v32) = *(v27 + *(v30 + 36)) == 2;
          sub_100070B00(v27, type metadata accessor for CustodianRecord);
          *(v31 + 14) = v32;
          *(v31 + 18) = 2080;
          v33 = *(v30 + 20);
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
          v34 = dispatch thunk of CustomStringConvertible.description.getter();
          v36 = v35;
          sub_100070B00(v29, type metadata accessor for CustodianRecord);
          v37 = sub_10021145C(v34, v36, &v158);

          *(v31 + 20) = v37;
          _os_log_impl(&_mh_execute_header, v24, v156, "CustodianRecord status: %ld, isAccepted: %{BOOL}d, for custodianID: %s", v31, 0x1Cu);
          sub_10000839C(v157);
        }

        else
        {
          sub_100070B00(*(v0 + 456), type metadata accessor for CustodianRecord);
          sub_100070B00(v28, type metadata accessor for CustodianRecord);

          sub_100070B00(v29, type metadata accessor for CustodianRecord);
        }

        v54 = *(v0 + 472);
        if (*(v54 + *(*(v0 + 368) + 36)) == 2)
        {
          v55 = *(v0 + 544);
          sub_100070E78(v54, *(v0 + 440), type metadata accessor for CustodianRecord);
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.default.getter();
          v58 = os_log_type_enabled(v56, v57);
          v59 = *(v0 + 440);
          if (v58)
          {
            v60 = *(v0 + 368);
            v61 = *(v0 + 240);
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v158 = v63;
            *v62 = 136315138;
            v64 = *(v60 + 20);
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
            v65 = dispatch thunk of CustomStringConvertible.description.getter();
            v67 = v66;
            sub_100070B00(v59, type metadata accessor for CustodianRecord);
            v68 = sub_10021145C(v65, v67, &v158);

            *(v62 + 4) = v68;
            _os_log_impl(&_mh_execute_header, v56, v57, "Checking if CustodianRecoveryInfoRecord exist for custodianID: %s", v62, 0xCu);
            sub_10000839C(v63);
          }

          else
          {

            sub_100070B00(v59, type metadata accessor for CustodianRecord);
          }

          if (*(*(v0 + 752) + 16) && (v89 = sub_10031AF8C(*(v0 + 472) + *(*(v0 + 368) + 20)), (v90 & 1) != 0))
          {
            sub_100070E78(*(*(v0 + 752) + 56) + *(*(v0 + 216) + 72) * v89, *(v0 + 280), type metadata accessor for CustodianRecoveryInfoRecord);
            v91 = 0;
          }

          else
          {
            v91 = 1;
          }

          v92 = *(v0 + 272);
          v93 = *(v0 + 280);
          v94 = *(v0 + 208);
          v95 = *(v0 + 216);
          (*(v95 + 56))(v93, v91, 1, v94);
          sub_100012D04(v93, v92, &unk_1003D91B0, qword_1003444F0);
          v96 = (*(v95 + 48))(v92, 1, v94);
          v97 = *(v0 + 544);
          v98 = *(v0 + 472);
          v99 = *(v0 + 272);
          if (v96 == 1)
          {
            v100 = *(v0 + 424);
            sub_100008D3C(v99, &unk_1003D91B0, qword_1003444F0);
            sub_100070E78(v98, v100, type metadata accessor for CustodianRecord);
            v101 = Logger.logObject.getter();
            v102 = static os_log_type_t.error.getter();
            v103 = os_log_type_enabled(v101, v102);
            v104 = *(v0 + 424);
            if (v103)
            {
              v105 = *(v0 + 368);
              v106 = *(v0 + 240);
              v107 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v158 = v108;
              *v107 = 136315138;
              v109 = *(v105 + 20);
              sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
              v110 = dispatch thunk of CustomStringConvertible.description.getter();
              v112 = v111;
              sub_100070B00(v104, type metadata accessor for CustodianRecord);
              v113 = sub_10021145C(v110, v112, &v158);

              *(v107 + 4) = v113;
              _os_log_impl(&_mh_execute_header, v101, v102, "CustodianRecoveryInfoRecord not found for custodianID: %s", v107, 0xCu);
              sub_10000839C(v108);
            }

            else
            {

              sub_100070B00(v104, type metadata accessor for CustodianRecord);
            }

            *(v0 + 878) = 0;
            v135 = *(v0 + 544);
            sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
            v136 = Logger.logObject.getter();
            v137 = static os_log_type_t.default.getter();
            v138 = os_log_type_enabled(v136, v137);
            v139 = *(v0 + 416);
            if (v138)
            {
              v140 = *(v0 + 368);
              v141 = *(v0 + 240);
              v142 = swift_slowAlloc();
              v143 = swift_slowAlloc();
              v158 = v143;
              *v142 = 136315138;
              v144 = *(v140 + 20);
              sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
              v145 = dispatch thunk of CustomStringConvertible.description.getter();
              v147 = v146;
              sub_100070B00(v139, type metadata accessor for CustodianRecord);
              v148 = sub_10021145C(v145, v147, &v158);

              *(v142 + 4) = v148;
              _os_log_impl(&_mh_execute_header, v136, v137, "Checking if setup finalized from server for custodianID: %s", v142, 0xCu);
              sub_10000839C(v143);
            }

            else
            {

              sub_100070B00(v139, type metadata accessor for CustodianRecord);
            }

            v152 = *(v0 + 472);
            v153 = *(v0 + 176);
            v116 = swift_task_alloc();
            *(v0 + 808) = v116;
            *(v116 + 16) = v153;
            *(v116 + 24) = v152;
            v154 = swift_task_alloc();
            *(v0 + 816) = v154;
            *v154 = v0;
            v154[1] = sub_100064B38;
            v118 = &unk_10033F4D0;
            v119 = 0x800000010032D620;
            v120 = 0xD000000000000015;
          }

          else
          {
            v121 = *(v0 + 432);
            sub_100070D64(v99, *(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
            sub_100070E78(v98, v121, type metadata accessor for CustodianRecord);
            v122 = Logger.logObject.getter();
            v123 = static os_log_type_t.default.getter();
            v124 = os_log_type_enabled(v122, v123);
            v125 = *(v0 + 432);
            if (v124)
            {
              v126 = *(v0 + 368);
              v127 = *(v0 + 240);
              v128 = swift_slowAlloc();
              v129 = swift_slowAlloc();
              v158 = v129;
              *v128 = 136315138;
              v130 = *(v126 + 20);
              sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
              v131 = dispatch thunk of CustomStringConvertible.description.getter();
              v133 = v132;
              sub_100070B00(v125, type metadata accessor for CustodianRecord);
              v134 = sub_10021145C(v131, v133, &v158);

              *(v128 + 4) = v134;
              _os_log_impl(&_mh_execute_header, v122, v123, "Found CustodianRecoveryInfoRecord, check if CKShare accepted - custodianID: %s", v128, 0xCu);
              sub_10000839C(v129);
            }

            else
            {

              sub_100070B00(v125, type metadata accessor for CustodianRecord);
            }

            v149 = *(v0 + 224);
            v150 = *(v0 + 176);
            v116 = swift_task_alloc();
            *(v0 + 784) = v116;
            *(v116 + 16) = v150;
            *(v116 + 24) = v149;
            v151 = swift_task_alloc();
            *(v0 + 792) = v151;
            *v151 = v0;
            v151[1] = sub_100064734;
            v118 = &unk_10033F4E0;
            v120 = 0xD000000000000016;
            v119 = 0x800000010032D640;
          }
        }

        else
        {
          *(v0 + 880) = 0;
          *(v0 + 832) = v6;
          v69 = *(v0 + 544);
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            *v72 = 67109376;
            *(v72 + 8) = 1024;
            *(v72 + 10) = 0;
            _os_log_impl(&_mh_execute_header, v70, v71, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v72, 0xEu);
          }

          v73 = *(v0 + 544);
          v74 = *(v0 + 472);
          v75 = *(v0 + 408);

          sub_100070E78(v74, v75, type metadata accessor for CustodianRecord);
          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.default.getter();
          v78 = os_log_type_enabled(v76, v77);
          v79 = *(v0 + 408);
          if (v78)
          {
            v80 = *(v0 + 368);
            v81 = *(v0 + 240);
            v82 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v158 = v83;
            *v82 = 136315138;
            v84 = *(v80 + 20);
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
            v85 = dispatch thunk of CustomStringConvertible.description.getter();
            v87 = v86;
            sub_100070B00(v79, type metadata accessor for CustodianRecord);
            v88 = sub_10021145C(v85, v87, &v158);

            *(v82 + 4) = v88;
            _os_log_impl(&_mh_execute_header, v76, v77, " Checking if CRK exist at security layer for custodianID: %s", v82, 0xCu);
            sub_10000839C(v83);
          }

          else
          {

            sub_100070B00(v79, type metadata accessor for CustodianRecord);
          }

          v114 = *(v0 + 472);
          v115 = *(v0 + 176);
          v116 = swift_task_alloc();
          *(v0 + 840) = v116;
          *(v116 + 16) = v115;
          *(v116 + 24) = v114;
          v117 = swift_task_alloc();
          *(v0 + 848) = v117;
          *v117 = v0;
          v117[1] = sub_100064FE4;
          v118 = &unk_10033F4B8;
          v119 = 0xEF74736978652D52;
          v120 = 0x4B432D6B63656863;
        }

        return sub_1000699F4(v120, v119, v118, v116);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  v39 = *(v0 + 344);
  v38 = *(v0 + 352);
  v40 = *(v0 + 312);
  v41 = *(v0 + 240);
  v42 = *(v0 + 248);
  v43 = *(v0 + 208);
  v44 = *(v0 + 216);
  v45 = *(v0 + 176);
  v46 = *(v44 + 56);
  *(v0 + 704) = v46;
  *(v0 + 712) = (v44 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v46(v40, 1, 1, v43);
  sub_100008D3C(v40, &unk_1003D91B0, qword_1003444F0);
  v47 = *(v42 + 16);
  *(v0 + 720) = v47;
  *(v0 + 728) = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v47(v38, v8 + v10, v41);
  *(v38 + v39[5]) = 0;
  v48 = v38 + v39[6];
  *v48 = 0;
  *(v48 + 8) = 1;
  *(v38 + v39[7]) = 1;
  v49 = (v38 + v39[8]);
  *v49 = 0;
  v49[1] = 0;
  v50 = (v38 + v39[9]);
  *v50 = 0;
  v50[1] = 0;
  v51 = swift_task_alloc();
  *(v0 + 736) = v51;
  *(v51 + 16) = v45;
  *(v51 + 24) = v38;
  v52 = swift_task_alloc();
  *(v0 + 744) = v52;
  *v52 = v0;
  v52[1] = sub_100063264;
  v53 = *(v0 + 304);

  return sub_10006A3C0(v53, 0xD000000000000019, 0x800000010032D600, &unk_10033F4A0, v51);
}

uint64_t sub_100063058()
{
  v1 = v0[78];
  sub_10000839C(v0 + 12);

  v36 = v0[84];
  v2 = v0[67];
  v3 = v0[64];
  v5 = v0[60];
  v4 = v0[61];
  v7 = v0[58];
  v6 = v0[59];
  v9 = v0[56];
  v8 = v0[57];
  v11 = v0[54];
  v10 = v0[55];
  v14 = v0[53];
  v15 = v0[52];
  v16 = v0[51];
  v17 = v0[50];
  v18 = v0[49];
  v19 = v0[48];
  v20 = v0[45];
  v21 = v0[44];
  v22 = v0[42];
  v23 = v0[41];
  v24 = v0[40];
  v25 = v0[39];
  v26 = v0[38];
  v27 = v0[37];
  v28 = v0[36];
  v29 = v0[35];
  v30 = v0[34];
  v31 = v0[33];
  v32 = v0[32];
  v33 = v0[29];
  v34 = v0[28];
  v35 = v0[25];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100063264()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v4 = *v1;

  v5 = *(v2 + 736);
  if (v0)
  {

    v6 = sub_100067EC8;
  }

  else
  {

    v6 = sub_1000633AC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000633AC()
{
  v191 = v0;
  v187 = *(v0 + 728);
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 872);
  v4 = *(v0 + 480);
  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  v7 = *(v0 + 256);
  v8 = *(v0 + 240);
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);
  (*(v0 + 704))(v6, 0, 1, v9);
  v1(v7, v4 + v3, v8);
  sub_100012D04(v6, v5, &unk_1003D91B0, qword_1003444F0);
  if ((*(v10 + 48))(v5, 1, v9) != 1)
  {
    v23 = *(v0 + 680);
    v24 = *(v0 + 480);
    v25 = *(v0 + 304);
    v27 = *(v0 + 248);
    v26 = *(v0 + 256);
    v29 = *(v0 + 232);
    v28 = *(v0 + 240);
    sub_100070D64(*(v0 + 296), v29, type metadata accessor for CustodianRecoveryInfoRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v190 = v23;
    sub_1002CF140(v29, v26, isUniquelyReferenced_nonNull_native);
    (*(v27 + 8))(v26, v28);
    sub_100008D3C(v25, &unk_1003D91B0, qword_1003444F0);
    sub_100070B00(v24, type metadata accessor for CustodianRecord);
    v19 = v23;
    v15 = v23;
    goto LABEL_9;
  }

  v11 = *(v0 + 696);
  v12 = *(v0 + 256);
  sub_100008D3C(*(v0 + 296), &unk_1003D91B0, qword_1003444F0);
  v13 = sub_10031AF8C(v12);
  if ((v14 & 1) == 0)
  {
    v15 = *(v0 + 696);
    v19 = *(v0 + 680);
    v22 = 1;
    goto LABEL_8;
  }

  v15 = v13;
  v16 = *(v0 + 680);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 160) = v16;
  if (!v17)
  {
    goto LABEL_50;
  }

  v18 = (v0 + 680);
  while (1)
  {
    v19 = *v18;
    v20 = *(v0 + 288);
    v21 = *(v0 + 216);
    (*(*(v0 + 248) + 8))(*(v19 + 48) + *(*(v0 + 248) + 72) * v15, *(v0 + 240));
    sub_100070D64(*(v19 + 56) + *(v21 + 72) * v15, v20, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_1001C3F38(v15, v19);
    v22 = 0;
    v15 = v19;
LABEL_8:
    v31 = *(v0 + 712);
    v188 = *(v0 + 480);
    v32 = *(v0 + 304);
    v33 = *(v0 + 288);
    v34 = *(v0 + 248);
    v35 = *(v0 + 256);
    v36 = *(v0 + 240);
    (*(v0 + 704))(v33, v22, 1, *(v0 + 208));
    sub_100008D3C(v33, &unk_1003D91B0, qword_1003444F0);
    (*(v34 + 8))(v35, v36);
    sub_100008D3C(v32, &unk_1003D91B0, qword_1003444F0);
    sub_100070B00(v188, type metadata accessor for CustodianRecord);
LABEL_9:
    sub_100070B00(*(v0 + 352), type metadata accessor for FetchRecoveryRecordsRequest);
    v37 = *(v0 + 688) + 1;
    if (v37 != *(v0 + 576))
    {
      break;
    }

LABEL_13:
    *(v0 + 752) = v15;
    type metadata accessor for CustodianDefaults();
    *(v0 + 760) = swift_initStackObject();
    *(v0 + 152) = _swiftEmptyArrayStorage;
    *(v0 + 776) = _swiftEmptyArrayStorage;
    *(v0 + 768) = 0;
    v47 = *(v0 + 560);
    if (*(v47 + 16))
    {
      v48 = *(v0 + 544);
      v50 = *(v0 + 464);
      v49 = *(v0 + 472);
      v52 = *(v0 + 448);
      v51 = *(v0 + 456);
      sub_100070E78(v47 + ((*(v0 + 864) + 32) & ~*(v0 + 864)), v49, type metadata accessor for CustodianRecord);
      sub_100070E78(v49, v50, type metadata accessor for CustodianRecord);
      sub_100070E78(v49, v51, type metadata accessor for CustodianRecord);
      sub_100070E78(v49, v52, type metadata accessor for CustodianRecord);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 456);
      v57 = *(v0 + 464);
      v58 = *(v0 + 448);
      if (v55)
      {
        v59 = *(v0 + 368);
        v185 = *(v0 + 240);
        v60 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v190 = v189;
        *v60 = 134218498;
        v186 = v54;
        v61 = *(v57 + *(v59 + 36));
        sub_100070B00(v57, type metadata accessor for CustodianRecord);
        *(v60 + 4) = v61;
        *(v60 + 12) = 1024;
        LODWORD(v61) = *(v56 + *(v59 + 36)) == 2;
        sub_100070B00(v56, type metadata accessor for CustodianRecord);
        *(v60 + 14) = v61;
        *(v60 + 18) = 2080;
        v62 = *(v59 + 20);
        sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        sub_100070B00(v58, type metadata accessor for CustodianRecord);
        v66 = sub_10021145C(v63, v65, &v190);

        *(v60 + 20) = v66;
        _os_log_impl(&_mh_execute_header, v53, v186, "CustodianRecord status: %ld, isAccepted: %{BOOL}d, for custodianID: %s", v60, 0x1Cu);
        sub_10000839C(v189);
      }

      else
      {
        sub_100070B00(*(v0 + 456), type metadata accessor for CustodianRecord);
        sub_100070B00(v57, type metadata accessor for CustodianRecord);

        sub_100070B00(v58, type metadata accessor for CustodianRecord);
      }

      v84 = *(v0 + 472);
      if (*(v84 + *(*(v0 + 368) + 36)) == 2)
      {
        v85 = *(v0 + 544);
        sub_100070E78(v84, *(v0 + 440), type metadata accessor for CustodianRecord);
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();
        v88 = os_log_type_enabled(v86, v87);
        v89 = *(v0 + 440);
        if (v88)
        {
          v90 = *(v0 + 368);
          v91 = *(v0 + 240);
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v190 = v93;
          *v92 = 136315138;
          v94 = *(v90 + 20);
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
          v95 = dispatch thunk of CustomStringConvertible.description.getter();
          v97 = v96;
          sub_100070B00(v89, type metadata accessor for CustodianRecord);
          v98 = sub_10021145C(v95, v97, &v190);

          *(v92 + 4) = v98;
          _os_log_impl(&_mh_execute_header, v86, v87, "Checking if CustodianRecoveryInfoRecord exist for custodianID: %s", v92, 0xCu);
          sub_10000839C(v93);
        }

        else
        {

          sub_100070B00(v89, type metadata accessor for CustodianRecord);
        }

        if (*(*(v0 + 752) + 16) && (v119 = sub_10031AF8C(*(v0 + 472) + *(*(v0 + 368) + 20)), (v120 & 1) != 0))
        {
          sub_100070E78(*(*(v0 + 752) + 56) + *(*(v0 + 216) + 72) * v119, *(v0 + 280), type metadata accessor for CustodianRecoveryInfoRecord);
          v121 = 0;
        }

        else
        {
          v121 = 1;
        }

        v122 = *(v0 + 272);
        v123 = *(v0 + 280);
        v124 = *(v0 + 208);
        v125 = *(v0 + 216);
        (*(v125 + 56))(v123, v121, 1, v124);
        sub_100012D04(v123, v122, &unk_1003D91B0, qword_1003444F0);
        v126 = (*(v125 + 48))(v122, 1, v124);
        v127 = *(v0 + 544);
        v128 = *(v0 + 472);
        v129 = *(v0 + 272);
        if (v126 == 1)
        {
          v130 = *(v0 + 424);
          sub_100008D3C(v129, &unk_1003D91B0, qword_1003444F0);
          sub_100070E78(v128, v130, type metadata accessor for CustodianRecord);
          v131 = Logger.logObject.getter();
          v132 = static os_log_type_t.error.getter();
          v133 = os_log_type_enabled(v131, v132);
          v134 = *(v0 + 424);
          if (v133)
          {
            v135 = *(v0 + 368);
            v136 = *(v0 + 240);
            v137 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            v190 = v138;
            *v137 = 136315138;
            v139 = *(v135 + 20);
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
            v140 = dispatch thunk of CustomStringConvertible.description.getter();
            v142 = v141;
            sub_100070B00(v134, type metadata accessor for CustodianRecord);
            v143 = sub_10021145C(v140, v142, &v190);

            *(v137 + 4) = v143;
            _os_log_impl(&_mh_execute_header, v131, v132, "CustodianRecoveryInfoRecord not found for custodianID: %s", v137, 0xCu);
            sub_10000839C(v138);
          }

          else
          {

            sub_100070B00(v134, type metadata accessor for CustodianRecord);
          }

          *(v0 + 878) = 0;
          v165 = *(v0 + 544);
          sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
          v166 = Logger.logObject.getter();
          v167 = static os_log_type_t.default.getter();
          v168 = os_log_type_enabled(v166, v167);
          v169 = *(v0 + 416);
          if (v168)
          {
            v170 = *(v0 + 368);
            v171 = *(v0 + 240);
            v172 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            v190 = v173;
            *v172 = 136315138;
            v174 = *(v170 + 20);
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
            v175 = dispatch thunk of CustomStringConvertible.description.getter();
            v177 = v176;
            sub_100070B00(v169, type metadata accessor for CustodianRecord);
            v178 = sub_10021145C(v175, v177, &v190);

            *(v172 + 4) = v178;
            _os_log_impl(&_mh_execute_header, v166, v167, "Checking if setup finalized from server for custodianID: %s", v172, 0xCu);
            sub_10000839C(v173);
          }

          else
          {

            sub_100070B00(v169, type metadata accessor for CustodianRecord);
          }

          v182 = *(v0 + 472);
          v183 = *(v0 + 176);
          v146 = swift_task_alloc();
          *(v0 + 808) = v146;
          *(v146 + 16) = v183;
          *(v146 + 24) = v182;
          v184 = swift_task_alloc();
          *(v0 + 816) = v184;
          *v184 = v0;
          v184[1] = sub_100064B38;
          v148 = &unk_10033F4D0;
          v149 = 0x800000010032D620;
          v150 = 0xD000000000000015;
        }

        else
        {
          v151 = *(v0 + 432);
          sub_100070D64(v129, *(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
          sub_100070E78(v128, v151, type metadata accessor for CustodianRecord);
          v152 = Logger.logObject.getter();
          v153 = static os_log_type_t.default.getter();
          v154 = os_log_type_enabled(v152, v153);
          v155 = *(v0 + 432);
          if (v154)
          {
            v156 = *(v0 + 368);
            v157 = *(v0 + 240);
            v158 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            v190 = v159;
            *v158 = 136315138;
            v160 = *(v156 + 20);
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
            v161 = dispatch thunk of CustomStringConvertible.description.getter();
            v163 = v162;
            sub_100070B00(v155, type metadata accessor for CustodianRecord);
            v164 = sub_10021145C(v161, v163, &v190);

            *(v158 + 4) = v164;
            _os_log_impl(&_mh_execute_header, v152, v153, "Found CustodianRecoveryInfoRecord, check if CKShare accepted - custodianID: %s", v158, 0xCu);
            sub_10000839C(v159);
          }

          else
          {

            sub_100070B00(v155, type metadata accessor for CustodianRecord);
          }

          v179 = *(v0 + 224);
          v180 = *(v0 + 176);
          v146 = swift_task_alloc();
          *(v0 + 784) = v146;
          *(v146 + 16) = v180;
          *(v146 + 24) = v179;
          v181 = swift_task_alloc();
          *(v0 + 792) = v181;
          *v181 = v0;
          v181[1] = sub_100064734;
          v148 = &unk_10033F4E0;
          v150 = 0xD000000000000016;
          v149 = 0x800000010032D640;
        }
      }

      else
      {
        *(v0 + 880) = 0;
        *(v0 + 832) = v15;
        v99 = *(v0 + 544);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          *v102 = 67109376;
          *(v102 + 8) = 1024;
          *(v102 + 10) = 0;
          _os_log_impl(&_mh_execute_header, v100, v101, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v102, 0xEu);
        }

        v103 = *(v0 + 544);
        v104 = *(v0 + 472);
        v105 = *(v0 + 408);

        sub_100070E78(v104, v105, type metadata accessor for CustodianRecord);
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.default.getter();
        v108 = os_log_type_enabled(v106, v107);
        v109 = *(v0 + 408);
        if (v108)
        {
          v110 = *(v0 + 368);
          v111 = *(v0 + 240);
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v190 = v113;
          *v112 = 136315138;
          v114 = *(v110 + 20);
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
          v115 = dispatch thunk of CustomStringConvertible.description.getter();
          v117 = v116;
          sub_100070B00(v109, type metadata accessor for CustodianRecord);
          v118 = sub_10021145C(v115, v117, &v190);

          *(v112 + 4) = v118;
          _os_log_impl(&_mh_execute_header, v106, v107, " Checking if CRK exist at security layer for custodianID: %s", v112, 0xCu);
          sub_10000839C(v113);
        }

        else
        {

          sub_100070B00(v109, type metadata accessor for CustodianRecord);
        }

        v144 = *(v0 + 472);
        v145 = *(v0 + 176);
        v146 = swift_task_alloc();
        *(v0 + 840) = v146;
        *(v146 + 16) = v145;
        *(v146 + 24) = v144;
        v147 = swift_task_alloc();
        *(v0 + 848) = v147;
        *v147 = v0;
        v147[1] = sub_100064FE4;
        v148 = &unk_10033F4B8;
        v149 = 0xEF74736978652D52;
        v150 = 0x4B432D6B63656863;
      }

      return sub_1000699F4(v150, v149, v148, v146);
    }

    __break(1u);
LABEL_50:
    v18 = (v0 + 160);
    sub_1002D0004();
  }

  while (1)
  {
    *(v0 + 696) = v15;
    *(v0 + 688) = v37;
    *(v0 + 680) = v19;
    v38 = *(v0 + 480);
    v39 = *(v0 + 368);
    sub_100070E78(*(v0 + 560) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 584) * v37, v38, type metadata accessor for CustodianRecord);
    v40 = *(v39 + 20);
    *(v0 + 872) = v40;
    if (!*(v15 + 16))
    {
      break;
    }

    v41 = sub_10031AF8C(v38 + v40);
    if ((v42 & 1) == 0)
    {
      break;
    }

    v43 = *(v0 + 480);
    v44 = *(v0 + 312);
    v45 = *(v0 + 208);
    v46 = *(v0 + 216);
    sub_100070E78(*(v15 + 56) + *(v46 + 72) * v41, v44, type metadata accessor for CustodianRecoveryInfoRecord);
    (*(v46 + 56))(v44, 0, 1, v45);
    sub_100070B00(v43, type metadata accessor for CustodianRecord);
    sub_100008D3C(v44, &unk_1003D91B0, qword_1003444F0);
    v37 = *(v0 + 688) + 1;
    if (v37 == *(v0 + 576))
    {
      goto LABEL_13;
    }
  }

  v68 = *(v0 + 344);
  v67 = *(v0 + 352);
  v69 = *(v0 + 312);
  v70 = *(v0 + 240);
  v71 = *(v0 + 248);
  v72 = *(v0 + 208);
  v73 = *(v0 + 216);
  v74 = *(v0 + 176);
  v75 = *(v73 + 56);
  *(v0 + 704) = v75;
  *(v0 + 712) = (v73 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v75(v69, 1, 1, v72);
  sub_100008D3C(v69, &unk_1003D91B0, qword_1003444F0);
  v76 = *(v71 + 16);
  *(v0 + 720) = v76;
  *(v0 + 728) = (v71 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v76(v67, v38 + v40, v70);
  *(v67 + v68[5]) = 0;
  v77 = v67 + v68[6];
  *v77 = 0;
  *(v77 + 8) = 1;
  *(v67 + v68[7]) = 1;
  v78 = (v67 + v68[8]);
  *v78 = 0;
  v78[1] = 0;
  v79 = (v67 + v68[9]);
  *v79 = 0;
  v79[1] = 0;
  v80 = swift_task_alloc();
  *(v0 + 736) = v80;
  *(v80 + 16) = v74;
  *(v80 + 24) = v67;
  v81 = swift_task_alloc();
  *(v0 + 744) = v81;
  *v81 = v0;
  v81[1] = sub_100063264;
  v82 = *(v0 + 304);

  return sub_10006A3C0(v82, 0xD000000000000019, 0x800000010032D600, &unk_10033F4A0, v80);
}

uint64_t sub_100064734(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 792);
  v6 = *v2;
  *(v4 + 800) = v1;

  v7 = *(v4 + 784);
  if (v1)
  {
    v8 = *(v4 + 560);

    v9 = sub_100069250;
  }

  else
  {
    *(v4 + 877) = a1 & 1;

    v9 = sub_100064890;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100064890()
{
  v21 = v0;
  sub_100070B00(*(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
  *(v0 + 878) = *(v0 + 877);
  v1 = *(v0 + 544);
  sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 416);
  if (v4)
  {
    v6 = *(v0 + 368);
    v7 = *(v0 + 240);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v10 = *(v6 + 20);
    sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_100070B00(v5, type metadata accessor for CustodianRecord);
    v14 = sub_10021145C(v11, v13, &v20);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if setup finalized from server for custodianID: %s", v8, 0xCu);
    sub_10000839C(v9);
  }

  else
  {

    sub_100070B00(v5, type metadata accessor for CustodianRecord);
  }

  v15 = *(v0 + 472);
  v16 = *(v0 + 176);
  v17 = swift_task_alloc();
  *(v0 + 808) = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = swift_task_alloc();
  *(v0 + 816) = v18;
  *v18 = v0;
  v18[1] = sub_100064B38;

  return sub_1000699F4(0xD000000000000015, 0x800000010032D620, &unk_10033F4D0, v17);
}

uint64_t sub_100064B38(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 816);
  v6 = *v2;
  *(v4 + 824) = v1;

  v7 = *(v4 + 808);
  if (v1)
  {
    v8 = *(v4 + 560);

    v9 = sub_1000694B8;
  }

  else
  {
    *(v4 + 879) = a1 & 1;

    v9 = sub_100064C94;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100064C94()
{
  v30 = v0;
  sub_100008D3C(*(v0 + 280), &unk_1003D91B0, qword_1003444F0);
  v1 = *(v0 + 879);
  v2 = *(v0 + 878);
  v3 = *(v0 + 752);
  *(v0 + 881) = v2;
  *(v0 + 880) = v1;
  *(v0 + 832) = v3;
  v4 = *(v0 + 544);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = v2;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v1;
    _os_log_impl(&_mh_execute_header, v5, v6, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v7, 0xEu);
  }

  v8 = *(v0 + 544);
  v9 = *(v0 + 472);
  v10 = *(v0 + 408);

  sub_100070E78(v9, v10, type metadata accessor for CustodianRecord);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 408);
  if (v13)
  {
    v15 = *(v0 + 368);
    v16 = *(v0 + 240);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136315138;
    v19 = *(v15 + 20);
    sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_100070B00(v14, type metadata accessor for CustodianRecord);
    v23 = sub_10021145C(v20, v22, &v29);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v11, v12, " Checking if CRK exist at security layer for custodianID: %s", v17, 0xCu);
    sub_10000839C(v18);
  }

  else
  {

    sub_100070B00(v14, type metadata accessor for CustodianRecord);
  }

  v24 = *(v0 + 472);
  v25 = *(v0 + 176);
  v26 = swift_task_alloc();
  *(v0 + 840) = v26;
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  v27 = swift_task_alloc();
  *(v0 + 848) = v27;
  *v27 = v0;
  v27[1] = sub_100064FE4;

  return sub_1000699F4(0x4B432D6B63656863, 0xEF74736978652D52, &unk_10033F4B8, v26);
}

uint64_t sub_100064FE4(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 848);
  v8 = *v2;
  *(v3 + 882) = a1;
  *(v3 + 856) = v1;

  if (v1)
  {
    v5 = sub_100066654;
  }

  else
  {
    v6 = *(v3 + 840);

    v5 = sub_100065104;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100065104()
{
  v224 = v0;
  v1 = *(v0 + 544);
  sub_100070E78(*(v0 + 472), *(v0 + 400), type metadata accessor for CustodianRecord);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 882);
    v5 = *(v0 + 400);
    v6 = *(v0 + 368);
    v7 = *(v0 + 240);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v223[0] = v9;
    *v8 = 67109378;
    *(v8 + 4) = v4;
    *(v8 + 8) = 2080;
    v10 = *(v6 + 20);
    sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_100070B00(v5, type metadata accessor for CustodianRecord);
    v14 = sub_10021145C(v11, v13, v223);

    *(v8 + 10) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "is CRK exist at security layer: %{BOOL}d, for custodianID: %s", v8, 0x12u);
    sub_10000839C(v9);
  }

  else
  {
    v15 = *(v0 + 400);

    sub_100070B00(v15, type metadata accessor for CustodianRecord);
  }

  v16 = *(v0 + 882);
  v17 = *(v0 + 760);
  v18 = *(v0 + 544);
  v19 = *(v0 + 472);
  v20 = *(v0 + 392);
  v21 = v19 + *(*(v0 + 368) + 20);
  v22 = UUID.uuidString.getter();
  v24 = sub_100070F9C(v22, v23);

  v25 = v16 & ~v24 & 1;
  sub_100070E78(v19, v20, type metadata accessor for CustodianRecord);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 882);
    v29 = *(v0 + 392);
    v30 = *(v0 + 368);
    v220 = *(v0 + 240);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v223[0] = v32;
    *v31 = 134218754;
    *(v31 + 4) = v25;
    *(v31 + 12) = 1024;
    *(v31 + 14) = v28;
    *(v31 + 18) = 1024;
    *(v31 + 20) = v24 & 1;
    *(v31 + 24) = 2080;
    v33 = *(v30 + 20);
    sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    sub_100070B00(v29, type metadata accessor for CustodianRecord);
    v37 = sub_10021145C(v34, v36, v223);

    *(v31 + 26) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "Final preflight status - %ld, after comparing CRK status(isExist: %{BOOL}d and last preflight run status(isFailed: %{BOOL}d), for custodianID: %s", v31, 0x22u);
    sub_10000839C(v32);
  }

  else
  {
    v38 = *(v0 + 392);

    sub_100070B00(v38, type metadata accessor for CustodianRecord);
  }

  v39 = *(v0 + 881);
  v40 = *(v0 + 880);
  v41 = *(v0 + 472);
  v42 = *(v0 + 384);
  sub_100016034(0, &qword_1003DA1F8, AATrustedContact_ptr);
  sub_100070E78(v41, v42, type metadata accessor for CustodianRecord);
  sub_10005E9A0(v42, v39, v40, v25);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v195 = *((*(v0 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v43 = *(v0 + 576);
  v44 = *(v0 + 472);
  v45 = *(v0 + 768) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v46 = *(v0 + 152);
  result = sub_100070B00(v44, type metadata accessor for CustodianRecord);
  if (v45 == v43)
  {
    v48 = *(v0 + 560);
    v49 = *(v0 + 544);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 760);
    v221 = v46;
    if (v52)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v223[0] = v55;
      *v54 = 136315138;

      v56 = Array.description.getter();
      v58 = v57;

      v59 = sub_10021145C(v56, v58, v223);

      *(v54 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v50, v51, "Returning trusted contacts after checking with server statuses: %s", v54, 0xCu);
      sub_10000839C(v55);
    }

    else
    {
    }

    v82 = *(v0 + 832);

    v83 = *(v0 + 536);
    v84 = *(v0 + 512);
    v85 = *(v0 + 480);
    v86 = *(v0 + 488);
    v88 = *(v0 + 464);
    v87 = *(v0 + 472);
    v90 = *(v0 + 448);
    v89 = *(v0 + 456);
    v92 = *(v0 + 432);
    v91 = *(v0 + 440);
    v196 = *(v0 + 424);
    v197 = *(v0 + 416);
    v198 = *(v0 + 408);
    v199 = *(v0 + 400);
    v200 = *(v0 + 392);
    v201 = *(v0 + 384);
    v202 = *(v0 + 360);
    v203 = *(v0 + 352);
    v204 = *(v0 + 336);
    v205 = *(v0 + 328);
    v206 = *(v0 + 320);
    v207 = *(v0 + 312);
    v208 = *(v0 + 304);
    v209 = *(v0 + 296);
    v210 = *(v0 + 288);
    v211 = *(v0 + 280);
    v212 = *(v0 + 272);
    v213 = *(v0 + 264);
    v214 = *(v0 + 256);
    v215 = *(v0 + 232);
    v217 = *(v0 + 224);
    v219 = *(v0 + 200);

    v93 = *(v0 + 8);

    return v93(v221);
  }

  else
  {
    v60 = *(v0 + 832);
    v61 = *(v0 + 768) + 1;
    *(v0 + 776) = v46;
    *(v0 + 768) = v61;
    v62 = *(v0 + 560);
    if (v61 >= *(v62 + 16))
    {
      __break(1u);
    }

    else
    {
      v63 = *(v0 + 544);
      v65 = *(v0 + 464);
      v64 = *(v0 + 472);
      v67 = *(v0 + 448);
      v66 = *(v0 + 456);
      sub_100070E78(v62 + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 584) * v61, v64, type metadata accessor for CustodianRecord);
      sub_100070E78(v64, v65, type metadata accessor for CustodianRecord);
      sub_100070E78(v64, v66, type metadata accessor for CustodianRecord);
      sub_100070E78(v64, v67, type metadata accessor for CustodianRecord);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 456);
      v72 = *(v0 + 464);
      v73 = *(v0 + 448);
      if (v70)
      {
        v222 = v60;
        v74 = *(v0 + 368);
        v216 = *(v0 + 240);
        v75 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        v223[0] = v218;
        *v75 = 134218498;
        v76 = *(v72 + *(v74 + 36));
        sub_100070B00(v72, type metadata accessor for CustodianRecord);
        *(v75 + 4) = v76;
        *(v75 + 12) = 1024;
        LODWORD(v76) = *(v71 + *(v74 + 36)) == 2;
        sub_100070B00(v71, type metadata accessor for CustodianRecord);
        *(v75 + 14) = v76;
        *(v75 + 18) = 2080;
        v77 = *(v74 + 20);
        sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
        v78 = dispatch thunk of CustomStringConvertible.description.getter();
        v80 = v79;
        sub_100070B00(v73, type metadata accessor for CustodianRecord);
        v81 = sub_10021145C(v78, v80, v223);
        v60 = v222;

        *(v75 + 20) = v81;
        _os_log_impl(&_mh_execute_header, v68, v69, "CustodianRecord status: %ld, isAccepted: %{BOOL}d, for custodianID: %s", v75, 0x1Cu);
        sub_10000839C(v218);
      }

      else
      {
        sub_100070B00(*(v0 + 456), type metadata accessor for CustodianRecord);
        sub_100070B00(v72, type metadata accessor for CustodianRecord);

        sub_100070B00(v73, type metadata accessor for CustodianRecord);
      }

      v94 = *(v0 + 472);
      if (*(v94 + *(*(v0 + 368) + 36)) == 2)
      {
        v95 = *(v0 + 544);
        sub_100070E78(v94, *(v0 + 440), type metadata accessor for CustodianRecord);
        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.default.getter();
        v98 = os_log_type_enabled(v96, v97);
        v99 = *(v0 + 440);
        if (v98)
        {
          v100 = *(v0 + 368);
          v101 = *(v0 + 240);
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v223[0] = v103;
          *v102 = 136315138;
          v104 = *(v100 + 20);
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
          v105 = dispatch thunk of CustomStringConvertible.description.getter();
          v107 = v106;
          sub_100070B00(v99, type metadata accessor for CustodianRecord);
          v108 = sub_10021145C(v105, v107, v223);

          *(v102 + 4) = v108;
          _os_log_impl(&_mh_execute_header, v96, v97, "Checking if CustodianRecoveryInfoRecord exist for custodianID: %s", v102, 0xCu);
          sub_10000839C(v103);
        }

        else
        {

          sub_100070B00(v99, type metadata accessor for CustodianRecord);
        }

        if (*(*(v0 + 752) + 16) && (v129 = sub_10031AF8C(*(v0 + 472) + *(*(v0 + 368) + 20)), (v130 & 1) != 0))
        {
          sub_100070E78(*(*(v0 + 752) + 56) + *(*(v0 + 216) + 72) * v129, *(v0 + 280), type metadata accessor for CustodianRecoveryInfoRecord);
          v131 = 0;
        }

        else
        {
          v131 = 1;
        }

        v132 = *(v0 + 272);
        v133 = *(v0 + 280);
        v134 = *(v0 + 208);
        v135 = *(v0 + 216);
        (*(v135 + 56))(v133, v131, 1, v134);
        sub_100012D04(v133, v132, &unk_1003D91B0, qword_1003444F0);
        v136 = (*(v135 + 48))(v132, 1, v134);
        v137 = *(v0 + 544);
        v138 = *(v0 + 472);
        v139 = *(v0 + 272);
        if (v136 == 1)
        {
          v140 = *(v0 + 424);
          sub_100008D3C(v139, &unk_1003D91B0, qword_1003444F0);
          sub_100070E78(v138, v140, type metadata accessor for CustodianRecord);
          v141 = Logger.logObject.getter();
          v142 = static os_log_type_t.error.getter();
          v143 = os_log_type_enabled(v141, v142);
          v144 = *(v0 + 424);
          if (v143)
          {
            v145 = *(v0 + 368);
            v146 = *(v0 + 240);
            v147 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            v223[0] = v148;
            *v147 = 136315138;
            v149 = *(v145 + 20);
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
            v150 = dispatch thunk of CustomStringConvertible.description.getter();
            v152 = v151;
            sub_100070B00(v144, type metadata accessor for CustodianRecord);
            v153 = sub_10021145C(v150, v152, v223);

            *(v147 + 4) = v153;
            _os_log_impl(&_mh_execute_header, v141, v142, "CustodianRecoveryInfoRecord not found for custodianID: %s", v147, 0xCu);
            sub_10000839C(v148);
          }

          else
          {

            sub_100070B00(v144, type metadata accessor for CustodianRecord);
          }

          *(v0 + 878) = 0;
          v175 = *(v0 + 544);
          sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
          v176 = Logger.logObject.getter();
          v177 = static os_log_type_t.default.getter();
          v178 = os_log_type_enabled(v176, v177);
          v179 = *(v0 + 416);
          if (v178)
          {
            v180 = *(v0 + 368);
            v181 = *(v0 + 240);
            v182 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            v223[0] = v183;
            *v182 = 136315138;
            v184 = *(v180 + 20);
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
            v185 = dispatch thunk of CustomStringConvertible.description.getter();
            v187 = v186;
            sub_100070B00(v179, type metadata accessor for CustodianRecord);
            v188 = sub_10021145C(v185, v187, v223);

            *(v182 + 4) = v188;
            _os_log_impl(&_mh_execute_header, v176, v177, "Checking if setup finalized from server for custodianID: %s", v182, 0xCu);
            sub_10000839C(v183);
          }

          else
          {

            sub_100070B00(v179, type metadata accessor for CustodianRecord);
          }

          v192 = *(v0 + 472);
          v193 = *(v0 + 176);
          v156 = swift_task_alloc();
          *(v0 + 808) = v156;
          *(v156 + 16) = v193;
          *(v156 + 24) = v192;
          v194 = swift_task_alloc();
          *(v0 + 816) = v194;
          *v194 = v0;
          v194[1] = sub_100064B38;
          v158 = &unk_10033F4D0;
          v159 = 0x800000010032D620;
          v160 = 0xD000000000000015;
        }

        else
        {
          v161 = *(v0 + 432);
          sub_100070D64(v139, *(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
          sub_100070E78(v138, v161, type metadata accessor for CustodianRecord);
          v162 = Logger.logObject.getter();
          v163 = static os_log_type_t.default.getter();
          v164 = os_log_type_enabled(v162, v163);
          v165 = *(v0 + 432);
          if (v164)
          {
            v166 = *(v0 + 368);
            v167 = *(v0 + 240);
            v168 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            v223[0] = v169;
            *v168 = 136315138;
            v170 = *(v166 + 20);
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
            v171 = dispatch thunk of CustomStringConvertible.description.getter();
            v173 = v172;
            sub_100070B00(v165, type metadata accessor for CustodianRecord);
            v174 = sub_10021145C(v171, v173, v223);

            *(v168 + 4) = v174;
            _os_log_impl(&_mh_execute_header, v162, v163, "Found CustodianRecoveryInfoRecord, check if CKShare accepted - custodianID: %s", v168, 0xCu);
            sub_10000839C(v169);
          }

          else
          {

            sub_100070B00(v165, type metadata accessor for CustodianRecord);
          }

          v189 = *(v0 + 224);
          v190 = *(v0 + 176);
          v156 = swift_task_alloc();
          *(v0 + 784) = v156;
          *(v156 + 16) = v190;
          *(v156 + 24) = v189;
          v191 = swift_task_alloc();
          *(v0 + 792) = v191;
          *v191 = v0;
          v191[1] = sub_100064734;
          v158 = &unk_10033F4E0;
          v160 = 0xD000000000000016;
          v159 = 0x800000010032D640;
        }
      }

      else
      {
        *(v0 + 880) = 0;
        *(v0 + 832) = v60;
        v109 = *(v0 + 544);
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 67109376;
          *(v112 + 8) = 1024;
          *(v112 + 10) = 0;
          _os_log_impl(&_mh_execute_header, v110, v111, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v112, 0xEu);
        }

        v113 = *(v0 + 544);
        v114 = *(v0 + 472);
        v115 = *(v0 + 408);

        sub_100070E78(v114, v115, type metadata accessor for CustodianRecord);
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.default.getter();
        v118 = os_log_type_enabled(v116, v117);
        v119 = *(v0 + 408);
        if (v118)
        {
          v120 = *(v0 + 368);
          v121 = *(v0 + 240);
          v122 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v223[0] = v123;
          *v122 = 136315138;
          v124 = *(v120 + 20);
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
          v125 = dispatch thunk of CustomStringConvertible.description.getter();
          v127 = v126;
          sub_100070B00(v119, type metadata accessor for CustodianRecord);
          v128 = sub_10021145C(v125, v127, v223);

          *(v122 + 4) = v128;
          _os_log_impl(&_mh_execute_header, v116, v117, " Checking if CRK exist at security layer for custodianID: %s", v122, 0xCu);
          sub_10000839C(v123);
        }

        else
        {

          sub_100070B00(v119, type metadata accessor for CustodianRecord);
        }

        v154 = *(v0 + 472);
        v155 = *(v0 + 176);
        v156 = swift_task_alloc();
        *(v0 + 840) = v156;
        *(v156 + 16) = v155;
        *(v156 + 24) = v154;
        v157 = swift_task_alloc();
        *(v0 + 848) = v157;
        *v157 = v0;
        v157[1] = sub_100064FE4;
        v158 = &unk_10033F4B8;
        v159 = 0xEF74736978652D52;
        v160 = 0x4B432D6B63656863;
      }

      return (sub_1000699F4)(v160, v159, v158, v156);
    }
  }

  return result;
}

uint64_t sub_100066654()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[97];
  v4 = v0[70];
  v5 = v0[59];

  sub_100070B00(v5, type metadata accessor for CustodianRecord);

  v40 = v0[107];
  v6 = v0[67];
  v7 = v0[64];
  v9 = v0[60];
  v8 = v0[61];
  v11 = v0[58];
  v10 = v0[59];
  v13 = v0[56];
  v12 = v0[57];
  v15 = v0[54];
  v14 = v0[55];
  v18 = v0[53];
  v19 = v0[52];
  v20 = v0[51];
  v21 = v0[50];
  v22 = v0[49];
  v23 = v0[48];
  v24 = v0[45];
  v25 = v0[44];
  v26 = v0[42];
  v27 = v0[41];
  v28 = v0[40];
  v29 = v0[39];
  v30 = v0[38];
  v31 = v0[37];
  v32 = v0[36];
  v33 = v0[35];
  v34 = v0[34];
  v35 = v0[33];
  v36 = v0[32];
  v37 = v0[29];
  v38 = v0[28];
  v39 = v0[25];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100066898()
{
  sub_10000839C(v0 + 2);
  v35 = v0[71];
  v1 = v0[67];
  v2 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v6 = v0[58];
  v5 = v0[59];
  v8 = v0[56];
  v7 = v0[57];
  v10 = v0[54];
  v9 = v0[55];
  v13 = v0[53];
  v14 = v0[52];
  v15 = v0[51];
  v16 = v0[50];
  v17 = v0[49];
  v18 = v0[48];
  v19 = v0[45];
  v20 = v0[44];
  v21 = v0[42];
  v22 = v0[41];
  v23 = v0[40];
  v24 = v0[39];
  v25 = v0[38];
  v26 = v0[37];
  v27 = v0[36];
  v28 = v0[35];
  v29 = v0[34];
  v30 = v0[33];
  v31 = v0[32];
  v32 = v0[29];
  v33 = v0[28];
  v34 = v0[25];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100066A98()
{
  v194 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 868);
  v3 = *(v0 + 488);
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  v189 = *(v9 + 56);
  v191 = *(v0 + 640);
  v189(v5, 1, 1, v8);
  v1(v6, v3 + v2, v7);
  sub_100012D04(v5, v4, &unk_1003D91B0, qword_1003444F0);
  v10 = *(v9 + 48);
  if (v10(v4, 1, v8) == 1)
  {
    v11 = *(v0 + 608);
    v12 = *(v0 + 264);
    sub_100008D3C(*(v0 + 328), &unk_1003D91B0, qword_1003444F0);
    v13 = sub_10031AF8C(v12);
    if (v14)
    {
      v15 = v13;
      v16 = *(v0 + 592);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 168) = v16;
      if (isUniquelyReferenced_nonNull_native)
      {
        v18 = (v0 + 592);
      }

      else
      {
LABEL_56:
        v18 = (v0 + 168);
        sub_1002D0004();
      }

      v19 = *v18;
      v20 = *(v0 + 320);
      v21 = *(v0 + 216);
      (*(*(v0 + 248) + 8))(*(v19 + 48) + *(*(v0 + 248) + 72) * v15, *(v0 + 240));
      sub_100070D64(*(v19 + 56) + *(v21 + 72) * v15, v20, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_1001C3F38(v15, v19);
      v22 = 0;
      v23 = v19;
    }

    else
    {
      v23 = *(v0 + 608);
      v19 = *(v0 + 592);
      v22 = 1;
    }

    v30 = *(v0 + 488);
    v31 = *(v0 + 320);
    v32 = *(v0 + 264);
    v33 = *(v0 + 240);
    v34 = *(v0 + 248);
    v35 = *(v0 + 216) + 56;
    v189(v31, v22, 1, *(v0 + 208));
    sub_100008D3C(v31, &unk_1003D91B0, qword_1003444F0);
    (*(v34 + 8))(v32, v33);
    sub_100070B00(v30, type metadata accessor for CustodianRecord);
  }

  else
  {
    v19 = *(v0 + 592);
    v24 = *(v0 + 488);
    v25 = *(v0 + 264);
    v26 = *(v0 + 240);
    v27 = *(v0 + 248);
    v28 = *(v0 + 232);
    sub_100070D64(*(v0 + 328), v28, type metadata accessor for CustodianRecoveryInfoRecord);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v193 = v19;
    sub_1002CF140(v28, v25, v29);
    (*(v27 + 8))(v25, v26);
    sub_100070B00(v24, type metadata accessor for CustodianRecord);
    v23 = v19;
  }

  v36 = *(v0 + 876);
  v15 = *(v0 + 360);
  v37 = *(v0 + 336);
  v38 = (v10(v37, 1, *(v0 + 208)) != 1) & v36;
  sub_100008D3C(v37, &unk_1003D91B0, qword_1003444F0);
  v39 = type metadata accessor for FetchRecoveryRecordsRequest;
  v40 = v15;
  while (1)
  {
    sub_100070B00(v40, v39);
    *(v0 + 624) = v23;
    *(v0 + 616) = v19;
    v41 = *(v0 + 600) + 1;
    if (v41 == *(v0 + 576))
    {
      break;
    }

    *(v0 + 608) = v23;
    *(v0 + 600) = v41;
    *(v0 + 876) = v38;
    *(v0 + 592) = v19;
    v15 = *(v0 + 488);
    v42 = *(v0 + 368);
    sub_100070E78(*(v0 + 560) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 584) * v41, v15, type metadata accessor for CustodianRecord);
    v40 = *(v0 + 488);
    if (*(v15 + *(v42 + 36)) == 2)
    {
      v74 = *(v0 + 360);
      v75 = *(v0 + 344);
      v76 = *(v0 + 240);
      v77 = *(v0 + 248);
      v78 = *(v0 + 176);
      v79 = *(*(v0 + 368) + 20);
      *(v0 + 868) = v79;
      v80 = *(v77 + 16);
      *(v0 + 632) = v80;
      *(v0 + 640) = (v77 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v80(v74, v40 + v79, v76);
      *(v74 + v75[5]) = 0;
      v81 = v74 + v75[6];
      *v81 = 0;
      *(v81 + 8) = 1;
      *(v74 + v75[7]) = 1;
      v82 = (v74 + v75[8]);
      *v82 = 0;
      v82[1] = 0;
      v83 = (v74 + v75[9]);
      *v83 = 0;
      v83[1] = 0;
      v84 = swift_task_alloc();
      *(v0 + 648) = v84;
      *(v84 + 16) = v78;
      *(v84 + 24) = v74;
      v85 = swift_task_alloc();
      *(v0 + 656) = v85;
      *v85 = v0;
      v85[1] = sub_100060884;
      v86 = *(v0 + 336);

      return sub_10006A3C0(v86, 0xD000000000000019, 0x800000010032D600, &unk_10033F4F0, v84);
    }

    v39 = type metadata accessor for CustodianRecord;
  }

  if (v38)
  {
    *(v0 + 752) = v23;
    type metadata accessor for CustodianDefaults();
    *(v0 + 760) = swift_initStackObject();
    *(v0 + 152) = _swiftEmptyArrayStorage;
    *(v0 + 776) = _swiftEmptyArrayStorage;
    *(v0 + 768) = 0;
    v43 = *(v0 + 560);
    if (!*(v43 + 16))
    {
      __break(1u);
      goto LABEL_56;
    }

    v44 = *(v0 + 544);
    v46 = *(v0 + 464);
    v45 = *(v0 + 472);
    v48 = *(v0 + 448);
    v47 = *(v0 + 456);
    sub_100070E78(v43 + ((*(v0 + 864) + 32) & ~*(v0 + 864)), v45, type metadata accessor for CustodianRecord);
    sub_100070E78(v45, v46, type metadata accessor for CustodianRecord);
    sub_100070E78(v45, v47, type metadata accessor for CustodianRecord);
    sub_100070E78(v45, v48, type metadata accessor for CustodianRecord);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 456);
    v53 = *(v0 + 464);
    v54 = *(v0 + 448);
    if (v51)
    {
      v55 = *(v0 + 368);
      v188 = *(v0 + 240);
      v56 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v193 = v192;
      *v56 = 134218498;
      v190 = v50;
      v57 = *(v53 + *(v55 + 36));
      sub_100070B00(v53, type metadata accessor for CustodianRecord);
      *(v56 + 4) = v57;
      *(v56 + 12) = 1024;
      LODWORD(v57) = *(v52 + *(v55 + 36)) == 2;
      sub_100070B00(v52, type metadata accessor for CustodianRecord);
      *(v56 + 14) = v57;
      *(v56 + 18) = 2080;
      v58 = *(v55 + 20);
      sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      sub_100070B00(v54, type metadata accessor for CustodianRecord);
      v62 = sub_10021145C(v59, v61, &v193);

      *(v56 + 20) = v62;
      _os_log_impl(&_mh_execute_header, v49, v190, "CustodianRecord status: %ld, isAccepted: %{BOOL}d, for custodianID: %s", v56, 0x1Cu);
      sub_10000839C(v192);
    }

    else
    {
      sub_100070B00(*(v0 + 456), type metadata accessor for CustodianRecord);
      sub_100070B00(v53, type metadata accessor for CustodianRecord);

      sub_100070B00(v54, type metadata accessor for CustodianRecord);
    }

    v87 = *(v0 + 472);
    if (*(v87 + *(*(v0 + 368) + 36)) == 2)
    {
      v88 = *(v0 + 544);
      sub_100070E78(v87, *(v0 + 440), type metadata accessor for CustodianRecord);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.default.getter();
      v91 = os_log_type_enabled(v89, v90);
      v92 = *(v0 + 440);
      if (v91)
      {
        v93 = *(v0 + 368);
        v94 = *(v0 + 240);
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v193 = v96;
        *v95 = 136315138;
        v97 = *(v93 + 20);
        sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
        v98 = dispatch thunk of CustomStringConvertible.description.getter();
        v100 = v99;
        sub_100070B00(v92, type metadata accessor for CustodianRecord);
        v101 = sub_10021145C(v98, v100, &v193);

        *(v95 + 4) = v101;
        _os_log_impl(&_mh_execute_header, v89, v90, "Checking if CustodianRecoveryInfoRecord exist for custodianID: %s", v95, 0xCu);
        sub_10000839C(v96);
      }

      else
      {

        sub_100070B00(v92, type metadata accessor for CustodianRecord);
      }

      if (*(*(v0 + 752) + 16) && (v122 = sub_10031AF8C(*(v0 + 472) + *(*(v0 + 368) + 20)), (v123 & 1) != 0))
      {
        sub_100070E78(*(*(v0 + 752) + 56) + *(*(v0 + 216) + 72) * v122, *(v0 + 280), type metadata accessor for CustodianRecoveryInfoRecord);
        v124 = 0;
      }

      else
      {
        v124 = 1;
      }

      v125 = *(v0 + 272);
      v126 = *(v0 + 280);
      v127 = *(v0 + 208);
      v128 = *(v0 + 216);
      (*(v128 + 56))(v126, v124, 1, v127);
      sub_100012D04(v126, v125, &unk_1003D91B0, qword_1003444F0);
      v129 = (*(v128 + 48))(v125, 1, v127);
      v130 = *(v0 + 544);
      v131 = *(v0 + 472);
      v132 = *(v0 + 272);
      if (v129 == 1)
      {
        v133 = *(v0 + 424);
        sub_100008D3C(v132, &unk_1003D91B0, qword_1003444F0);
        sub_100070E78(v131, v133, type metadata accessor for CustodianRecord);
        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.error.getter();
        v136 = os_log_type_enabled(v134, v135);
        v137 = *(v0 + 424);
        if (v136)
        {
          v138 = *(v0 + 368);
          v139 = *(v0 + 240);
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v193 = v141;
          *v140 = 136315138;
          v142 = *(v138 + 20);
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
          v143 = dispatch thunk of CustomStringConvertible.description.getter();
          v145 = v144;
          sub_100070B00(v137, type metadata accessor for CustodianRecord);
          v146 = sub_10021145C(v143, v145, &v193);

          *(v140 + 4) = v146;
          _os_log_impl(&_mh_execute_header, v134, v135, "CustodianRecoveryInfoRecord not found for custodianID: %s", v140, 0xCu);
          sub_10000839C(v141);
        }

        else
        {

          sub_100070B00(v137, type metadata accessor for CustodianRecord);
        }

        *(v0 + 878) = 0;
        v168 = *(v0 + 544);
        sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.default.getter();
        v171 = os_log_type_enabled(v169, v170);
        v172 = *(v0 + 416);
        if (v171)
        {
          v173 = *(v0 + 368);
          v174 = *(v0 + 240);
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v193 = v176;
          *v175 = 136315138;
          v177 = *(v173 + 20);
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
          v178 = dispatch thunk of CustomStringConvertible.description.getter();
          v180 = v179;
          sub_100070B00(v172, type metadata accessor for CustodianRecord);
          v181 = sub_10021145C(v178, v180, &v193);

          *(v175 + 4) = v181;
          _os_log_impl(&_mh_execute_header, v169, v170, "Checking if setup finalized from server for custodianID: %s", v175, 0xCu);
          sub_10000839C(v176);
        }

        else
        {

          sub_100070B00(v172, type metadata accessor for CustodianRecord);
        }

        v185 = *(v0 + 472);
        v186 = *(v0 + 176);
        v149 = swift_task_alloc();
        *(v0 + 808) = v149;
        *(v149 + 16) = v186;
        *(v149 + 24) = v185;
        v187 = swift_task_alloc();
        *(v0 + 816) = v187;
        *v187 = v0;
        v187[1] = sub_100064B38;
        v151 = &unk_10033F4D0;
        v152 = 0x800000010032D620;
        v153 = 0xD000000000000015;
      }

      else
      {
        v154 = *(v0 + 432);
        sub_100070D64(v132, *(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
        sub_100070E78(v131, v154, type metadata accessor for CustodianRecord);
        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.default.getter();
        v157 = os_log_type_enabled(v155, v156);
        v158 = *(v0 + 432);
        if (v157)
        {
          v159 = *(v0 + 368);
          v160 = *(v0 + 240);
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          v193 = v162;
          *v161 = 136315138;
          v163 = *(v159 + 20);
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
          v164 = dispatch thunk of CustomStringConvertible.description.getter();
          v166 = v165;
          sub_100070B00(v158, type metadata accessor for CustodianRecord);
          v167 = sub_10021145C(v164, v166, &v193);

          *(v161 + 4) = v167;
          _os_log_impl(&_mh_execute_header, v155, v156, "Found CustodianRecoveryInfoRecord, check if CKShare accepted - custodianID: %s", v161, 0xCu);
          sub_10000839C(v162);
        }

        else
        {

          sub_100070B00(v158, type metadata accessor for CustodianRecord);
        }

        v182 = *(v0 + 224);
        v183 = *(v0 + 176);
        v149 = swift_task_alloc();
        *(v0 + 784) = v149;
        *(v149 + 16) = v183;
        *(v149 + 24) = v182;
        v184 = swift_task_alloc();
        *(v0 + 792) = v184;
        *v184 = v0;
        v184[1] = sub_100064734;
        v151 = &unk_10033F4E0;
        v153 = 0xD000000000000016;
        v152 = 0x800000010032D640;
      }
    }

    else
    {
      *(v0 + 880) = 0;
      *(v0 + 832) = v23;
      v102 = *(v0 + 544);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 67109376;
        *(v105 + 8) = 1024;
        *(v105 + 10) = 0;
        _os_log_impl(&_mh_execute_header, v103, v104, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v105, 0xEu);
      }

      v106 = *(v0 + 544);
      v107 = *(v0 + 472);
      v108 = *(v0 + 408);

      sub_100070E78(v107, v108, type metadata accessor for CustodianRecord);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.default.getter();
      v111 = os_log_type_enabled(v109, v110);
      v112 = *(v0 + 408);
      if (v111)
      {
        v113 = *(v0 + 368);
        v114 = *(v0 + 240);
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v193 = v116;
        *v115 = 136315138;
        v117 = *(v113 + 20);
        sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
        v118 = dispatch thunk of CustomStringConvertible.description.getter();
        v120 = v119;
        sub_100070B00(v112, type metadata accessor for CustodianRecord);
        v121 = sub_10021145C(v118, v120, &v193);

        *(v115 + 4) = v121;
        _os_log_impl(&_mh_execute_header, v109, v110, " Checking if CRK exist at security layer for custodianID: %s", v115, 0xCu);
        sub_10000839C(v116);
      }

      else
      {

        sub_100070B00(v112, type metadata accessor for CustodianRecord);
      }

      v147 = *(v0 + 472);
      v148 = *(v0 + 176);
      v149 = swift_task_alloc();
      *(v0 + 840) = v149;
      *(v149 + 16) = v148;
      *(v149 + 24) = v147;
      v150 = swift_task_alloc();
      *(v0 + 848) = v150;
      *v150 = v0;
      v150[1] = sub_100064FE4;
      v151 = &unk_10033F4B8;
      v152 = 0xEF74736978652D52;
      v153 = 0x4B432D6B63656863;
    }

    return sub_1000699F4(v153, v152, v151, v149);
  }

  else
  {
    v63 = *(v0 + 544);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "One or more CustodianRecoveryInfoRecord not found in local disk, so fetching sharedDB records from cloud", v66, 2u);
    }

    v68 = *(v0 + 192);
    v67 = *(v0 + 200);
    v70 = *(v0 + 176);
    v69 = *(v0 + 184);

    (*(v68 + 16))(v67, v70 + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__storageController, v69);
    Dependency.wrappedValue.getter();
    (*(v68 + 8))(v67, v69);
    v71 = *sub_1000080F8((v0 + 96), *(v0 + 120));
    v72 = swift_task_alloc();
    *(v0 + 664) = v72;
    *v72 = v0;
    v72[1] = sub_100061DFC;

    return sub_10030D2B0();
  }
}

uint64_t sub_100067EC8()
{
  v191 = v0;
  v187 = *(v0 + 728);
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 872);
  v4 = *(v0 + 480);
  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  v7 = *(v0 + 256);
  v8 = *(v0 + 240);
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);
  (*(v0 + 704))(v6, 1, 1, v9);
  v1(v7, v4 + v3, v8);
  sub_100012D04(v6, v5, &unk_1003D91B0, qword_1003444F0);
  if ((*(v10 + 48))(v5, 1, v9) != 1)
  {
    v23 = *(v0 + 680);
    v24 = *(v0 + 480);
    v25 = *(v0 + 304);
    v27 = *(v0 + 248);
    v26 = *(v0 + 256);
    v29 = *(v0 + 232);
    v28 = *(v0 + 240);
    sub_100070D64(*(v0 + 296), v29, type metadata accessor for CustodianRecoveryInfoRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v190 = v23;
    sub_1002CF140(v29, v26, isUniquelyReferenced_nonNull_native);
    (*(v27 + 8))(v26, v28);
    sub_100008D3C(v25, &unk_1003D91B0, qword_1003444F0);
    sub_100070B00(v24, type metadata accessor for CustodianRecord);
    v19 = v23;
    v15 = v23;
    goto LABEL_9;
  }

  v11 = *(v0 + 696);
  v12 = *(v0 + 256);
  sub_100008D3C(*(v0 + 296), &unk_1003D91B0, qword_1003444F0);
  v13 = sub_10031AF8C(v12);
  if ((v14 & 1) == 0)
  {
    v15 = *(v0 + 696);
    v19 = *(v0 + 680);
    v22 = 1;
    goto LABEL_8;
  }

  v15 = v13;
  v16 = *(v0 + 680);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 160) = v16;
  if (!v17)
  {
    goto LABEL_50;
  }

  v18 = (v0 + 680);
  while (1)
  {
    v19 = *v18;
    v20 = *(v0 + 288);
    v21 = *(v0 + 216);
    (*(*(v0 + 248) + 8))(*(v19 + 48) + *(*(v0 + 248) + 72) * v15, *(v0 + 240));
    sub_100070D64(*(v19 + 56) + *(v21 + 72) * v15, v20, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_1001C3F38(v15, v19);
    v22 = 0;
    v15 = v19;
LABEL_8:
    v31 = *(v0 + 712);
    v188 = *(v0 + 480);
    v32 = *(v0 + 304);
    v33 = *(v0 + 288);
    v34 = *(v0 + 248);
    v35 = *(v0 + 256);
    v36 = *(v0 + 240);
    (*(v0 + 704))(v33, v22, 1, *(v0 + 208));
    sub_100008D3C(v33, &unk_1003D91B0, qword_1003444F0);
    (*(v34 + 8))(v35, v36);
    sub_100008D3C(v32, &unk_1003D91B0, qword_1003444F0);
    sub_100070B00(v188, type metadata accessor for CustodianRecord);
LABEL_9:
    sub_100070B00(*(v0 + 352), type metadata accessor for FetchRecoveryRecordsRequest);
    v37 = *(v0 + 688) + 1;
    if (v37 != *(v0 + 576))
    {
      break;
    }

LABEL_13:
    *(v0 + 752) = v15;
    type metadata accessor for CustodianDefaults();
    *(v0 + 760) = swift_initStackObject();
    *(v0 + 152) = _swiftEmptyArrayStorage;
    *(v0 + 776) = _swiftEmptyArrayStorage;
    *(v0 + 768) = 0;
    v47 = *(v0 + 560);
    if (*(v47 + 16))
    {
      v48 = *(v0 + 544);
      v50 = *(v0 + 464);
      v49 = *(v0 + 472);
      v52 = *(v0 + 448);
      v51 = *(v0 + 456);
      sub_100070E78(v47 + ((*(v0 + 864) + 32) & ~*(v0 + 864)), v49, type metadata accessor for CustodianRecord);
      sub_100070E78(v49, v50, type metadata accessor for CustodianRecord);
      sub_100070E78(v49, v51, type metadata accessor for CustodianRecord);
      sub_100070E78(v49, v52, type metadata accessor for CustodianRecord);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 456);
      v57 = *(v0 + 464);
      v58 = *(v0 + 448);
      if (v55)
      {
        v59 = *(v0 + 368);
        v185 = *(v0 + 240);
        v60 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v190 = v189;
        *v60 = 134218498;
        v186 = v54;
        v61 = *(v57 + *(v59 + 36));
        sub_100070B00(v57, type metadata accessor for CustodianRecord);
        *(v60 + 4) = v61;
        *(v60 + 12) = 1024;
        LODWORD(v61) = *(v56 + *(v59 + 36)) == 2;
        sub_100070B00(v56, type metadata accessor for CustodianRecord);
        *(v60 + 14) = v61;
        *(v60 + 18) = 2080;
        v62 = *(v59 + 20);
        sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        sub_100070B00(v58, type metadata accessor for CustodianRecord);
        v66 = sub_10021145C(v63, v65, &v190);

        *(v60 + 20) = v66;
        _os_log_impl(&_mh_execute_header, v53, v186, "CustodianRecord status: %ld, isAccepted: %{BOOL}d, for custodianID: %s", v60, 0x1Cu);
        sub_10000839C(v189);
      }

      else
      {
        sub_100070B00(*(v0 + 456), type metadata accessor for CustodianRecord);
        sub_100070B00(v57, type metadata accessor for CustodianRecord);

        sub_100070B00(v58, type metadata accessor for CustodianRecord);
      }

      v84 = *(v0 + 472);
      if (*(v84 + *(*(v0 + 368) + 36)) == 2)
      {
        v85 = *(v0 + 544);
        sub_100070E78(v84, *(v0 + 440), type metadata accessor for CustodianRecord);
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();
        v88 = os_log_type_enabled(v86, v87);
        v89 = *(v0 + 440);
        if (v88)
        {
          v90 = *(v0 + 368);
          v91 = *(v0 + 240);
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v190 = v93;
          *v92 = 136315138;
          v94 = *(v90 + 20);
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
          v95 = dispatch thunk of CustomStringConvertible.description.getter();
          v97 = v96;
          sub_100070B00(v89, type metadata accessor for CustodianRecord);
          v98 = sub_10021145C(v95, v97, &v190);

          *(v92 + 4) = v98;
          _os_log_impl(&_mh_execute_header, v86, v87, "Checking if CustodianRecoveryInfoRecord exist for custodianID: %s", v92, 0xCu);
          sub_10000839C(v93);
        }

        else
        {

          sub_100070B00(v89, type metadata accessor for CustodianRecord);
        }

        if (*(*(v0 + 752) + 16) && (v119 = sub_10031AF8C(*(v0 + 472) + *(*(v0 + 368) + 20)), (v120 & 1) != 0))
        {
          sub_100070E78(*(*(v0 + 752) + 56) + *(*(v0 + 216) + 72) * v119, *(v0 + 280), type metadata accessor for CustodianRecoveryInfoRecord);
          v121 = 0;
        }

        else
        {
          v121 = 1;
        }

        v122 = *(v0 + 272);
        v123 = *(v0 + 280);
        v124 = *(v0 + 208);
        v125 = *(v0 + 216);
        (*(v125 + 56))(v123, v121, 1, v124);
        sub_100012D04(v123, v122, &unk_1003D91B0, qword_1003444F0);
        v126 = (*(v125 + 48))(v122, 1, v124);
        v127 = *(v0 + 544);
        v128 = *(v0 + 472);
        v129 = *(v0 + 272);
        if (v126 == 1)
        {
          v130 = *(v0 + 424);
          sub_100008D3C(v129, &unk_1003D91B0, qword_1003444F0);
          sub_100070E78(v128, v130, type metadata accessor for CustodianRecord);
          v131 = Logger.logObject.getter();
          v132 = static os_log_type_t.error.getter();
          v133 = os_log_type_enabled(v131, v132);
          v134 = *(v0 + 424);
          if (v133)
          {
            v135 = *(v0 + 368);
            v136 = *(v0 + 240);
            v137 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            v190 = v138;
            *v137 = 136315138;
            v139 = *(v135 + 20);
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
            v140 = dispatch thunk of CustomStringConvertible.description.getter();
            v142 = v141;
            sub_100070B00(v134, type metadata accessor for CustodianRecord);
            v143 = sub_10021145C(v140, v142, &v190);

            *(v137 + 4) = v143;
            _os_log_impl(&_mh_execute_header, v131, v132, "CustodianRecoveryInfoRecord not found for custodianID: %s", v137, 0xCu);
            sub_10000839C(v138);
          }

          else
          {

            sub_100070B00(v134, type metadata accessor for CustodianRecord);
          }

          *(v0 + 878) = 0;
          v165 = *(v0 + 544);
          sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
          v166 = Logger.logObject.getter();
          v167 = static os_log_type_t.default.getter();
          v168 = os_log_type_enabled(v166, v167);
          v169 = *(v0 + 416);
          if (v168)
          {
            v170 = *(v0 + 368);
            v171 = *(v0 + 240);
            v172 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            v190 = v173;
            *v172 = 136315138;
            v174 = *(v170 + 20);
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
            v175 = dispatch thunk of CustomStringConvertible.description.getter();
            v177 = v176;
            sub_100070B00(v169, type metadata accessor for CustodianRecord);
            v178 = sub_10021145C(v175, v177, &v190);

            *(v172 + 4) = v178;
            _os_log_impl(&_mh_execute_header, v166, v167, "Checking if setup finalized from server for custodianID: %s", v172, 0xCu);
            sub_10000839C(v173);
          }

          else
          {

            sub_100070B00(v169, type metadata accessor for CustodianRecord);
          }

          v182 = *(v0 + 472);
          v183 = *(v0 + 176);
          v146 = swift_task_alloc();
          *(v0 + 808) = v146;
          *(v146 + 16) = v183;
          *(v146 + 24) = v182;
          v184 = swift_task_alloc();
          *(v0 + 816) = v184;
          *v184 = v0;
          v184[1] = sub_100064B38;
          v148 = &unk_10033F4D0;
          v149 = 0x800000010032D620;
          v150 = 0xD000000000000015;
        }

        else
        {
          v151 = *(v0 + 432);
          sub_100070D64(v129, *(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
          sub_100070E78(v128, v151, type metadata accessor for CustodianRecord);
          v152 = Logger.logObject.getter();
          v153 = static os_log_type_t.default.getter();
          v154 = os_log_type_enabled(v152, v153);
          v155 = *(v0 + 432);
          if (v154)
          {
            v156 = *(v0 + 368);
            v157 = *(v0 + 240);
            v158 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            v190 = v159;
            *v158 = 136315138;
            v160 = *(v156 + 20);
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
            v161 = dispatch thunk of CustomStringConvertible.description.getter();
            v163 = v162;
            sub_100070B00(v155, type metadata accessor for CustodianRecord);
            v164 = sub_10021145C(v161, v163, &v190);

            *(v158 + 4) = v164;
            _os_log_impl(&_mh_execute_header, v152, v153, "Found CustodianRecoveryInfoRecord, check if CKShare accepted - custodianID: %s", v158, 0xCu);
            sub_10000839C(v159);
          }

          else
          {

            sub_100070B00(v155, type metadata accessor for CustodianRecord);
          }

          v179 = *(v0 + 224);
          v180 = *(v0 + 176);
          v146 = swift_task_alloc();
          *(v0 + 784) = v146;
          *(v146 + 16) = v180;
          *(v146 + 24) = v179;
          v181 = swift_task_alloc();
          *(v0 + 792) = v181;
          *v181 = v0;
          v181[1] = sub_100064734;
          v148 = &unk_10033F4E0;
          v150 = 0xD000000000000016;
          v149 = 0x800000010032D640;
        }
      }

      else
      {
        *(v0 + 880) = 0;
        *(v0 + 832) = v15;
        v99 = *(v0 + 544);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          *v102 = 67109376;
          *(v102 + 8) = 1024;
          *(v102 + 10) = 0;
          _os_log_impl(&_mh_execute_header, v100, v101, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v102, 0xEu);
        }

        v103 = *(v0 + 544);
        v104 = *(v0 + 472);
        v105 = *(v0 + 408);

        sub_100070E78(v104, v105, type metadata accessor for CustodianRecord);
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.default.getter();
        v108 = os_log_type_enabled(v106, v107);
        v109 = *(v0 + 408);
        if (v108)
        {
          v110 = *(v0 + 368);
          v111 = *(v0 + 240);
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v190 = v113;
          *v112 = 136315138;
          v114 = *(v110 + 20);
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
          v115 = dispatch thunk of CustomStringConvertible.description.getter();
          v117 = v116;
          sub_100070B00(v109, type metadata accessor for CustodianRecord);
          v118 = sub_10021145C(v115, v117, &v190);

          *(v112 + 4) = v118;
          _os_log_impl(&_mh_execute_header, v106, v107, " Checking if CRK exist at security layer for custodianID: %s", v112, 0xCu);
          sub_10000839C(v113);
        }

        else
        {

          sub_100070B00(v109, type metadata accessor for CustodianRecord);
        }

        v144 = *(v0 + 472);
        v145 = *(v0 + 176);
        v146 = swift_task_alloc();
        *(v0 + 840) = v146;
        *(v146 + 16) = v145;
        *(v146 + 24) = v144;
        v147 = swift_task_alloc();
        *(v0 + 848) = v147;
        *v147 = v0;
        v147[1] = sub_100064FE4;
        v148 = &unk_10033F4B8;
        v149 = 0xEF74736978652D52;
        v150 = 0x4B432D6B63656863;
      }

      return sub_1000699F4(v150, v149, v148, v146);
    }

    __break(1u);
LABEL_50:
    v18 = (v0 + 160);
    sub_1002D0004();
  }

  while (1)
  {
    *(v0 + 696) = v15;
    *(v0 + 688) = v37;
    *(v0 + 680) = v19;
    v38 = *(v0 + 480);
    v39 = *(v0 + 368);
    sub_100070E78(*(v0 + 560) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 584) * v37, v38, type metadata accessor for CustodianRecord);
    v40 = *(v39 + 20);
    *(v0 + 872) = v40;
    if (!*(v15 + 16))
    {
      break;
    }

    v41 = sub_10031AF8C(v38 + v40);
    if ((v42 & 1) == 0)
    {
      break;
    }

    v43 = *(v0 + 480);
    v44 = *(v0 + 312);
    v45 = *(v0 + 208);
    v46 = *(v0 + 216);
    sub_100070E78(*(v15 + 56) + *(v46 + 72) * v41, v44, type metadata accessor for CustodianRecoveryInfoRecord);
    (*(v46 + 56))(v44, 0, 1, v45);
    sub_100070B00(v43, type metadata accessor for CustodianRecord);
    sub_100008D3C(v44, &unk_1003D91B0, qword_1003444F0);
    v37 = *(v0 + 688) + 1;
    if (v37 == *(v0 + 576))
    {
      goto LABEL_13;
    }
  }

  v68 = *(v0 + 344);
  v67 = *(v0 + 352);
  v69 = *(v0 + 312);
  v70 = *(v0 + 240);
  v71 = *(v0 + 248);
  v72 = *(v0 + 208);
  v73 = *(v0 + 216);
  v74 = *(v0 + 176);
  v75 = *(v73 + 56);
  *(v0 + 704) = v75;
  *(v0 + 712) = (v73 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v75(v69, 1, 1, v72);
  sub_100008D3C(v69, &unk_1003D91B0, qword_1003444F0);
  v76 = *(v71 + 16);
  *(v0 + 720) = v76;
  *(v0 + 728) = (v71 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v76(v67, v38 + v40, v70);
  *(v67 + v68[5]) = 0;
  v77 = v67 + v68[6];
  *v77 = 0;
  *(v77 + 8) = 1;
  *(v67 + v68[7]) = 1;
  v78 = (v67 + v68[8]);
  *v78 = 0;
  v78[1] = 0;
  v79 = (v67 + v68[9]);
  *v79 = 0;
  v79[1] = 0;
  v80 = swift_task_alloc();
  *(v0 + 736) = v80;
  *(v80 + 16) = v74;
  *(v80 + 24) = v67;
  v81 = swift_task_alloc();
  *(v0 + 744) = v81;
  *v81 = v0;
  v81[1] = sub_100063264;
  v82 = *(v0 + 304);

  return sub_10006A3C0(v82, 0xD000000000000019, 0x800000010032D600, &unk_10033F4A0, v80);
}

uint64_t sub_100069250()
{
  v1 = v0[97];
  v2 = v0[94];
  v3 = v0[59];
  v4 = v0[28];
  sub_100008D3C(v0[35], &unk_1003D91B0, qword_1003444F0);
  sub_100070B00(v4, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100070B00(v3, type metadata accessor for CustodianRecord);

  v39 = v0[100];
  v5 = v0[67];
  v6 = v0[64];
  v8 = v0[60];
  v7 = v0[61];
  v10 = v0[58];
  v9 = v0[59];
  v12 = v0[56];
  v11 = v0[57];
  v14 = v0[54];
  v13 = v0[55];
  v17 = v0[53];
  v18 = v0[52];
  v19 = v0[51];
  v20 = v0[50];
  v21 = v0[49];
  v22 = v0[48];
  v23 = v0[45];
  v24 = v0[44];
  v25 = v0[42];
  v26 = v0[41];
  v27 = v0[40];
  v28 = v0[39];
  v29 = v0[38];
  v30 = v0[37];
  v31 = v0[36];
  v32 = v0[35];
  v33 = v0[34];
  v34 = v0[33];
  v35 = v0[32];
  v36 = v0[29];
  v37 = v0[28];
  v38 = v0[25];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000694B8()
{
  v1 = v0[97];
  v2 = v0[94];
  v3 = v0[59];
  sub_100008D3C(v0[35], &unk_1003D91B0, qword_1003444F0);
  sub_100070B00(v3, type metadata accessor for CustodianRecord);

  v38 = v0[103];
  v4 = v0[67];
  v5 = v0[64];
  v7 = v0[60];
  v6 = v0[61];
  v9 = v0[58];
  v8 = v0[59];
  v11 = v0[56];
  v10 = v0[57];
  v13 = v0[54];
  v12 = v0[55];
  v16 = v0[53];
  v17 = v0[52];
  v18 = v0[51];
  v19 = v0[50];
  v20 = v0[49];
  v21 = v0[48];
  v22 = v0[45];
  v23 = v0[44];
  v24 = v0[42];
  v25 = v0[41];
  v26 = v0[40];
  v27 = v0[39];
  v28 = v0[38];
  v29 = v0[37];
  v30 = v0[36];
  v31 = v0[35];
  v32 = v0[34];
  v33 = v0[33];
  v34 = v0[32];
  v35 = v0[29];
  v36 = v0[28];
  v37 = v0[25];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100069700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000697D0, 0, 0);
}

uint64_t sub_1000697D0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = *sub_1000080F8(v0 + 2, v0[5]);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1000698E0;
  v6 = v0[9];
  v7 = v0[7];

  return sub_100021548(v7, v6, 0, 0);
}

uint64_t sub_1000698E0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100070F8C;
  }

  else
  {
    v3 = sub_100070F98;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000699F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Date();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100069B00, 0, 0);
}

uint64_t sub_100069B00()
{
  v16 = v0;
  v1 = v0[14];
  Date.init()();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  v0[15] = sub_100008D04(v3, qword_1003FAA40);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10021145C(v7, v6, &v15);
    _os_log_impl(&_mh_execute_header, v4, v5, "⏳ Begin: %s...", v8, 0xCu);
    sub_10000839C(v9);
  }

  v14 = (v0[4] + *v0[4]);
  v10 = *(v0[4] + 4);
  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_100069D2C;
  v12 = v0[5];

  return v14(v0 + 18);
}

uint64_t sub_100069D2C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_10006A110;
  }

  else
  {
    v3 = sub_100069E40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100069E40()
{
  v43 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 24);
  Date.init()();
  v9 = *(v7 + 16);
  v9(v4, v3, v6);
  v9(v5, v1, v6);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v40 = *(v0 + 104);
    v41 = *(v0 + 112);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
    v16 = *(v0 + 16);
    v39 = *(v0 + 24);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_10021145C(v16, v39, &v42);
    *(v17 + 12) = 2048;
    Date.timeIntervalSince(_:)();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v13, v14);
    v21(v12, v14);
    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "⏰ Completed: %s after %f seconds", v17, 0x16u);
    sub_10000839C(v18);

    v21(v40, v14);
    v21(v41, v14);
  }

  else
  {
    v23 = *(v0 + 104);
    v22 = *(v0 + 112);
    v25 = *(v0 + 88);
    v24 = *(v0 + 96);
    v26 = *(v0 + 48);
    v27 = *(v0 + 56);

    v28 = *(v27 + 8);
    v28(v25, v26);
    v28(v24, v26);
    v28(v23, v26);
    v28(v22, v26);
  }

  v30 = *(v0 + 104);
  v29 = *(v0 + 112);
  v32 = *(v0 + 88);
  v31 = *(v0 + 96);
  v34 = *(v0 + 72);
  v33 = *(v0 + 80);
  v35 = *(v0 + 64);
  v36 = *(v0 + 144);

  v37 = *(v0 + 8);

  return v37(v36);
}

uint64_t sub_10006A110()
{
  v40 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v8 = v0[3];
  Date.init()();
  v9 = *(v6 + 16);
  v9(v4, v3, v7);
  v9(v5, v1, v7);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];
    v37 = v0[6];
    v15 = v0[2];
    v16 = v0[3];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v39 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_10021145C(v15, v16, &v39);
    *(v17 + 12) = 2048;
    Date.timeIntervalSince(_:)();
    v20 = v19;
    v21 = *(v14 + 8);
    v21(v13, v37);
    v21(v12, v37);
    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "⏰ Error: %s after %f seconds", v17, 0x16u);
    sub_10000839C(v18);
  }

  else
  {
    v23 = v0[8];
    v22 = v0[9];
    v24 = v0[6];
    v25 = v0[7];

    v21 = *(v25 + 8);
    v21(v23, v24);
    v21(v22, v24);
  }

  v26 = v0[17];
  v27 = v0[13];
  v28 = v0[14];
  v30 = v0[11];
  v29 = v0[12];
  v31 = v0[10];
  v36 = v0[9];
  v38 = v0[8];
  v32 = v0[6];
  swift_willThrow();
  v21(v31, v32);
  v21(v28, v32);

  v33 = v0[1];
  v34 = v0[17];

  return v33(0);
}

uint64_t sub_10006A3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Date();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_10006A4D0, 0, 0);
}

uint64_t sub_10006A4D0()
{
  v17 = v0;
  v1 = v0[15];
  Date.init()();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  v0[16] = sub_100008D04(v3, qword_1003FAA40);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10021145C(v7, v6, &v16);
    _os_log_impl(&_mh_execute_header, v4, v5, "⏳ Begin: %s...", v8, 0xCu);
    sub_10000839C(v9);
  }

  v15 = (v0[5] + *v0[5]);
  v10 = *(v0[5] + 4);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_10006A6FC;
  v12 = v0[6];
  v13 = v0[2];

  return v15(v13);
}

uint64_t sub_10006A6FC()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_100070F94;
  }

  else
  {
    v3 = sub_100070F90;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006A810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Date();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_10006A920, 0, 0);
}

uint64_t sub_10006A920()
{
  v17 = v0;
  v1 = v0[15];
  Date.init()();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  v0[16] = sub_100008D04(v3, qword_1003FAA40);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10021145C(v7, v6, &v16);
    _os_log_impl(&_mh_execute_header, v4, v5, "⏳ Begin: %s...", v8, 0xCu);
    sub_10000839C(v9);
  }

  v15 = (v0[5] + *v0[5]);
  v10 = *(v0[5] + 4);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_10006AB4C;
  v12 = v0[6];
  v13 = v0[2];

  return v15(v13);
}

uint64_t sub_10006AB4C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_10006AF10;
  }

  else
  {
    v3 = sub_10006AC60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006AC60()
{
  v39 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[4];
  Date.init()();
  v9 = *(v7 + 16);
  v9(v4, v3, v6);
  v9(v5, v1, v6);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[14];
  v13 = v0[15];
  v16 = v0[12];
  v15 = v0[13];
  v17 = v0[7];
  v18 = v0[8];
  if (v12)
  {
    v19 = v0[3];
    v35 = v0[4];
    v37 = v0[14];
    v20 = swift_slowAlloc();
    v36 = v13;
    v21 = swift_slowAlloc();
    v38 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_10021145C(v19, v35, &v38);
    *(v20 + 12) = 2048;
    Date.timeIntervalSince(_:)();
    v23 = v22;
    v24 = *(v18 + 8);
    v24(v16, v17);
    v24(v15, v17);
    *(v20 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "⏰ Completed: %s after %f seconds", v20, 0x16u);
    sub_10000839C(v21);

    v24(v37, v17);
    v25 = v36;
  }

  else
  {

    v24 = *(v18 + 8);
    v24(v16, v17);
    v24(v15, v17);
    v24(v14, v17);
    v25 = v13;
  }

  v24(v25, v17);
  v27 = v0[14];
  v26 = v0[15];
  v29 = v0[12];
  v28 = v0[13];
  v31 = v0[10];
  v30 = v0[11];
  v32 = v0[9];

  v33 = v0[1];

  return v33();
}

uint64_t sub_10006AF10()
{
  v38 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[4];
  Date.init()();
  v9 = *(v6 + 16);
  v9(v4, v3, v7);
  v9(v5, v1, v7);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[7];
  v16 = v0[8];
  if (v12)
  {
    v17 = v0[3];
    v18 = v0[4];
    v35 = v11;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_10021145C(v17, v18, &v37);
    *(v19 + 12) = 2048;
    Date.timeIntervalSince(_:)();
    v22 = v21;
    v23 = *(v16 + 8);
    v23(v14, v15);
    v23(v13, v15);
    *(v19 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v10, v35, "⏰ Error: %s after %f seconds", v19, 0x16u);
    sub_10000839C(v20);
  }

  else
  {

    v23 = *(v16 + 8);
    v23(v14, v15);
    v23(v13, v15);
  }

  v24 = v0[18];
  v25 = v0[14];
  v26 = v0[15];
  v28 = v0[12];
  v27 = v0[13];
  v29 = v0[11];
  v34 = v0[10];
  v36 = v0[9];
  v30 = v0[7];
  swift_willThrow();
  v23(v29, v30);
  v23(v26, v30);

  v31 = v0[1];
  v32 = v0[18];

  return v31();
}

uint64_t sub_10006B1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10006B284, 0, 0);
}

uint64_t sub_10006B284()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = *sub_1000080F8(v0 + 2, v0[5]);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_10006B394;
  v6 = v0[9];
  v7 = v0[7];

  return sub_100021548(v7, v6, 0, 0);
}

uint64_t sub_10006B394()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_10006B518;
  }

  else
  {
    v3 = sub_10006B4A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006B4A8()
{
  v1 = v0[12];
  sub_10000839C(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10006B518()
{
  v1 = v0[12];
  sub_10000839C(v0 + 2);

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_10006B588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10006B658, 0, 0);
}

uint64_t sub_10006B658()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__cloudShare, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_10006B760;
  v5 = v0[9];

  return sub_1001AD9EC(v5);
}

uint64_t sub_10006B760(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_100070F8C;
  }

  else
  {
    *(v4 + 120) = a1 & 1;
    v7 = sub_10006B88C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10006B88C()
{
  v1 = *(v0 + 96);
  **(v0 + 56) = *(v0 + 120);
  sub_10000839C((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006B908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10006B9D8, 0, 0);
}

uint64_t sub_10006B9D8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__idmsHandler, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v5 = sub_1000080F8(v0 + 2, v0[5]);
  v6 = *(type metadata accessor for CustodianRecord() + 20);
  v7 = *v5;
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_10006BB08;

  return sub_100080620(v4 + v6, 0);
}

uint64_t sub_10006BB08(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_100070F8C;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_10006BC30;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10006BC30()
{
  if (*(v0 + 120) && *(v0 + 120) == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 56);

  *v3 = v1 & 1;
  sub_10000839C((v0 + 16));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10006BD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10006BE50, 0, 0);
}

uint64_t sub_10006BE50()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];
  (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__securityController, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8(v0 + 2, v0[5]);
  sub_1000A8E58(v4);
  v6 = type metadata accessor for DaemonSecurityController(0);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_10006C000;
  v8 = v0[12];

  return (sub_10001A9FC)(v8, v6, &off_1003A49D8);
}

uint64_t sub_10006C000(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  v10 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 136) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_10006C2C8;
  }

  else
  {
    v8 = sub_10006C178;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10006C178()
{
  sub_10000839C((v0 + 16));
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 144);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "CRK exists on OT? %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 120);
  v7 = *(v0 + 96);
  **(v0 + 56) = *(v0 + 144);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10006C2C8()
{
  sub_10000839C((v0 + 16));
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 136);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 8) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 10) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "CRK exists on OT? %{BOOL}d error: %@", v7, 0x12u);
    sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
  }

  else
  {
  }

  v10 = *(v0 + 120);
  v11 = *(v0 + 96);
  **(v0 + 56) = 0;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10006C4A0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = *(*(sub_100005814(&unk_1003D91B0, qword_1003444F0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v4 = type metadata accessor for CustodianshipInfoRecord();
  v2[23] = v4;
  v5 = *(v4 - 8);
  v2[24] = v5;
  v6 = *(v5 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = type metadata accessor for NSFastEnumerationIterator();
  v2[32] = v7;
  v8 = *(v7 - 8);
  v2[33] = v8;
  v9 = *(v8 + 64) + 15;
  v2[34] = swift_task_alloc();
  v10 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v2[35] = v10;
  v11 = *(v10 - 8);
  v2[36] = v11;
  v12 = *(v11 + 64) + 15;
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_10006C6B0, 0, 0);
}

uint64_t sub_10006C6B0()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[38] = sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching contact list whoCanBeHelpedByMe", v4, 2u);
  }

  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];
  v8 = v0[20];

  (*(v6 + 16))(v5, v8 + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController, v7);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v5, v7);
  v0[15] = *sub_1000080F8(v0 + 2, v0[5]);
  v9 = swift_task_alloc();
  v0[39] = v9;
  *(v9 + 16) = v0 + 15;
  v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  v0[40] = v11;
  v12 = sub_100005814(&unk_1003E4DD0, &qword_10033F468);
  *v11 = v0;
  v11[1] = sub_10006C8E8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000018, 0x800000010032D5E0, sub_1000709F4, v9, v12);
}

uint64_t sub_10006C8E8()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = sub_10006D960;
  }

  else
  {
    v5 = *(v2 + 312);

    v4 = sub_10006CA04;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10006CA04()
{
  v157 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 128);
  sub_10000839C((v0 + 16));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v2 + 16);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetched contact list whoCanBeHelpedByMe: %ld", v5, 0xCu);
  }

  v147 = v2;
  v6 = *(v0 + 272);
  v7 = *(v0 + 256);
  v8 = *(v0 + 152);

  v9 = [v8 includedStatuses];
  v10 = _swiftEmptyArrayStorage;
  v156[0] = _swiftEmptyArrayStorage;
  NSSet.makeIterator()();
  sub_100070AA8(&unk_1003DA540, &type metadata accessor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  while (*(v0 + 80))
  {
    sub_100070AF0((v0 + 56), (v0 + 88));
    sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 144))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v156[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v156[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v13 = *(v0 + 272);
      v151 = *(v0 + 256);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v156[0];
    }

    else
    {
      v11 = *(v0 + 272);
      v12 = *(v0 + 256);
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  v15 = *(v0 + 264);
  v16 = *(v0 + 272);
  v17 = *(v0 + 256);

  (*(v15 + 8))(v16, v17);
  if (v10 >> 62)
  {
    goto LABEL_90;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v146 = v0;
    v19 = _swiftEmptyArrayStorage;
    if (i)
    {
      v20 = 0;
      v0 = v10 & 0xC000000000000001;
      v21 = v10 & 0xFFFFFFFFFFFFFF8;
      v22 = v10;
      while (1)
      {
        if (v0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(v21 + 16))
          {
            goto LABEL_88;
          }

          v23 = *(v10 + 8 * v20 + 32);
        }

        v24 = v23;
        v25 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v26 = [v23 integerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100306104(0, *(v19 + 2) + 1, 1, v19);
        }

        v28 = *(v19 + 2);
        v27 = *(v19 + 3);
        if (v28 >= v27 >> 1)
        {
          v19 = sub_100306104((v27 > 1), v28 + 1, 1, v19);
        }

        *(v19 + 2) = v28 + 1;
        *&v19[8 * v28 + 32] = v26;
        ++v20;
        v10 = v22;
        if (v25 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

LABEL_27:

    v29 = sub_1002E2014(v19);

    if (!*(v29 + 16))
    {
      v0 = v146;
      v48 = v146[38];

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v51 = v147;
      if (os_log_type_enabled(v49, v50))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "No filters applied to the contact list whoCanBeHelpedByMe", v52, 2u);
        goto LABEL_49;
      }

LABEL_50:

      goto LABEL_52;
    }

    v10 = v147;
    v30 = *(v147 + 16);

    v152 = v30;
    v0 = v146;
    if (!v30)
    {
      break;
    }

    v31 = 0;
    v32 = v146[24];
    v148 = v146[23];
    v33 = v29 + 56;
    v34 = _swiftEmptyArrayStorage;
    while (v31 < *(v10 + 16))
    {
      v35 = v146[31];
      v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v37 = *(v32 + 72);
      sub_100070E78(v10 + v36 + v37 * v31, v35, type metadata accessor for CustodianshipInfoRecord);
      if (*(v29 + 16) && (v38 = *(v35 + *(v148 + 28)), v39 = *(v29 + 40), v40 = static Hasher._hash(seed:_:)(), v41 = -1 << *(v29 + 32), v42 = v40 & ~v41, ((*(v33 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0))
      {
        v43 = ~v41;
        while (*(*(v29 + 48) + 8 * v42) != v38)
        {
          v42 = (v42 + 1) & v43;
          if (((*(v33 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        sub_100070D64(v146[31], v146[30], type metadata accessor for CustodianshipInfoRecord);
        v156[0] = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1002E0244(0, v34[2] + 1, 1);
          v34 = v156[0];
        }

        v45 = v34[2];
        v44 = v34[3];
        v46 = v34;
        if (v45 >= v44 >> 1)
        {
          sub_1002E0244(v44 > 1, v45 + 1, 1);
          v46 = v156[0];
        }

        v47 = v146[30];
        *(v46 + 16) = v45 + 1;
        sub_100070D64(v47, v46 + v36 + v45 * v37, type metadata accessor for CustodianshipInfoRecord);
        v10 = v147;
        v34 = v46;
      }

      else
      {
LABEL_30:
        sub_100070B00(v146[31], type metadata accessor for CustodianshipInfoRecord);
      }

      if (++v31 == v152)
      {
        goto LABEL_47;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    ;
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_47:
  v53 = v146[38];
  swift_bridgeObjectRelease_n();

  v49 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v54))
  {
    v51 = v34;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v156[0] = v56;
    *v55 = 136315394;
    type metadata accessor for Status(0);
    sub_100070AA8(&qword_1003D8440, type metadata accessor for Status);
    v57 = Set.description.getter();
    v59 = v58;

    v60 = sub_10021145C(v57, v59, v156);

    *(v55 + 4) = v60;
    *(v55 + 12) = 2048;
    v61 = v51[2];

    *(v55 + 14) = v61;

    _os_log_impl(&_mh_execute_header, v49, v54, "Contact list whoCanBeHelpedByMe after applying filters: %s, count %ld", v55, 0x16u);
    sub_10000839C(v56);

LABEL_49:

    goto LABEL_50;
  }

  v51 = v34;
LABEL_52:
  *(v0 + 336) = v51;
  *(v0 + 136) = _swiftEmptyArrayStorage;
  v62 = v51[2];
  *(v0 + 344) = v62;
  if (v62)
  {
    v63 = *(v0 + 192);
    v64 = *(v63 + 80);
    *(v0 + 392) = v64;
    v65 = (v64 + 32) & ~v64;
    *(v0 + 352) = *(v63 + 72);
    *(v0 + 360) = 0;
    v66 = *(v0 + 304);
    v68 = *(v0 + 224);
    v67 = *(v0 + 232);
    v69 = *(v0 + 216);
    v70 = *(v0 + 152);

    sub_100070E78(v51 + v65, v67, type metadata accessor for CustodianshipInfoRecord);
    sub_100070E78(v67, v68, type metadata accessor for CustodianshipInfoRecord);
    sub_100070E78(v67, v69, type metadata accessor for CustodianshipInfoRecord);
    v71 = v70;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = *(v0 + 224);
      v75 = *(v0 + 184);
      v149 = v75;
      v153 = *(v0 + 216);
      v76 = *(v0 + 152);
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v156[0] = v78;
      *v77 = 136315650;
      v79 = *(v75 + 20);
      type metadata accessor for UUID();
      sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      sub_100070B00(v74, type metadata accessor for CustodianshipInfoRecord);
      v83 = sub_10021145C(v80, v82, v156);

      *(v77 + 4) = v83;
      *(v77 + 12) = 2048;
      v84 = *(v153 + *(v149 + 28));
      sub_100070B00(v153, type metadata accessor for CustodianshipInfoRecord);
      *(v77 + 14) = v84;
      *(v77 + 22) = 2048;
      v85 = [v76 cachePolicy];

      *(v77 + 24) = v85;
      _os_log_impl(&_mh_execute_header, v72, v73, "Checking if CustodianRecoveryInfoRecord exist for the contact whoCanBeHelpedByMe, custodianID %s, with status: %ld, cachePolicy: %lu", v77, 0x20u);
      sub_10000839C(v78);
    }

    else
    {
      v109 = *(v0 + 216);
      v108 = *(v0 + 224);
      v110 = *(v0 + 152);

      sub_100070B00(v109, type metadata accessor for CustodianshipInfoRecord);
      sub_100070B00(v108, type metadata accessor for CustodianshipInfoRecord);
    }

    v111 = *(v0 + 232);
    v112 = *(v0 + 160);
    v113 = swift_task_alloc();
    *(v0 + 368) = v113;
    *(v113 + 16) = v111;
    *(v113 + 24) = v112;
    v114 = swift_task_alloc();
    *(v0 + 376) = v114;
    *v114 = v0;
    v114[1] = sub_10006DA64;
    v115 = *(v0 + 176);

    return sub_10006A810(v115, 0xD000000000000019, 0x800000010032D600, &unk_10033F480, v113);
  }

  v86 = *(v0 + 328);
  if ([*(v0 + 152) shouldLookUpContactInAddressBook])
  {
    v87 = *(v0 + 304);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "Request contains address book lookup for contact list whoCanBeHelpedByMe", v90, 2u);
    }

    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_93;
    }

    v91 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (2)
    {

      if (!v91)
      {
LABEL_73:

        break;
      }

      if (_swiftEmptyArrayStorage >> 62)
      {
        v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_64:
        v93 = v92;
        v94 = *(v0 + 160);
        v95 = sub_10006F874(v92, *(v0 + 152));
        if (v86)
        {
          v96 = *(v0 + 336);
          swift_bridgeObjectRelease_n();

          v97 = *(v0 + 296);
          v98 = *(v0 + 272);
          v100 = *(v0 + 240);
          v99 = *(v0 + 248);
          v102 = *(v0 + 224);
          v101 = *(v0 + 232);
          v104 = *(v0 + 208);
          v103 = *(v0 + 216);
          v105 = *(v0 + 200);
          v150 = *(v0 + 176);
          v154 = *(v0 + 168);

          v106 = *(v0 + 8);

          return v106();
        }

        v116 = v95;
        [v93 setLocalContactRepresentation:v95];

        if (v91 == 1)
        {
          goto LABEL_73;
        }

        v139 = &_swiftEmptyArrayStorage[5];
        v140 = 1;
        while (1)
        {
          if (_swiftEmptyArrayStorage >> 62)
          {
            v141 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v140 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_91;
            }

            v141 = *v139;
          }

          v142 = v141;
          v143 = v140 + 1;
          if (__OFADD__(v140, 1))
          {
            break;
          }

          v144 = *(v0 + 160);
          v86 = 0;
          v145 = sub_10006F874(v141, *(v0 + 152));
          [v142 setLocalContactRepresentation:v145];

          ++v140;
          ++v139;
          if (v143 == v91)
          {
            goto LABEL_73;
          }
        }
      }

      else
      {
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v92 = _swiftEmptyArrayStorage[4];
          goto LABEL_64;
        }

LABEL_91:
        __break(1u);
      }

      __break(1u);
LABEL_93:
      v91 = _CocoaArrayWrapper.endIndex.getter();
      continue;
    }
  }

  v117 = *(v0 + 304);
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.default.getter();
  v120 = os_log_type_enabled(v118, v119);
  v121 = *(v0 + 336);
  if (v120)
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v156[0] = v123;
    *v122 = 136315138;
    sub_100016034(0, &qword_1003DA1F8, AATrustedContact_ptr);

    v124 = Array.description.getter();
    v126 = v125;

    v127 = sub_10021145C(v124, v126, v156);

    *(v122 + 4) = v127;
    _os_log_impl(&_mh_execute_header, v118, v119, "Final contact list whoCanBeHelpedByMe to be returned: %s", v122, 0xCu);
    sub_10000839C(v123);
  }

  v128 = *(v0 + 296);
  v129 = *(v0 + 272);
  v131 = *(v0 + 240);
  v130 = *(v0 + 248);
  v133 = *(v0 + 224);
  v132 = *(v0 + 232);
  v135 = *(v0 + 208);
  v134 = *(v0 + 216);
  v136 = *(v0 + 200);
  v137 = *(v0 + 176);
  v155 = *(v0 + 168);

  v138 = *(v0 + 8);

  return v138(_swiftEmptyArrayStorage);
}

uint64_t sub_10006D960()
{
  v1 = v0[39];

  sub_10000839C(v0 + 2);
  v2 = v0[37];
  v3 = v0[34];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[25];
  v11 = v0[22];
  v14 = v0[21];
  v15 = v0[41];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10006DA64()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 368);
  if (v0)
  {

    v6 = sub_10006E7B0;
  }

  else
  {

    v6 = sub_10006DBAC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10006DBAC()
{
  v139 = v0;
  v1 = *(v0 + 176);
  v2 = type metadata accessor for CustodianRecoveryInfoRecord();
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = *(v0 + 384);
  v6 = *(v0 + 304);
  sub_100070E78(*(v0 + 232), *(v0 + 208), type metadata accessor for CustodianshipInfoRecord);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 208);
  if (v9)
  {
    v11 = v4 != 1;
    v12 = *(v0 + 184);
    v130 = v3;
    v13 = swift_slowAlloc();
    v131 = v5;
    v14 = v4;
    v15 = swift_slowAlloc();
    v138[0] = v15;
    *v13 = 67109378;
    *(v13 + 4) = v11;
    *(v13 + 8) = 2080;
    v16 = *(v12 + 20);
    type metadata accessor for UUID();
    sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_100070B00(v10, type metadata accessor for CustodianshipInfoRecord);
    v20 = sub_10021145C(v17, v19, v138);

    *(v13 + 10) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Has CustodianRecoveryInfoRecord for contact whoCanBeHelpedByMe: %{BOOL}d, custodianID %s", v13, 0x12u);
    sub_10000839C(v15);
    v4 = v14;
    v5 = v131;

    v3 = v130;
  }

  else
  {

    sub_100070B00(v10, type metadata accessor for CustodianshipInfoRecord);
  }

  v21 = *(v0 + 168);
  v22 = *(v0 + 176);
  sub_100070E78(*(v0 + 232), *(v0 + 200), type metadata accessor for CustodianshipInfoRecord);
  sub_100012D04(v22, v21, &unk_1003D91B0, qword_1003444F0);
  v23 = v3(v21, 1, v2);
  v24 = *(v0 + 168);
  if (v23 == 1)
  {
    sub_100008D3C(*(v0 + 168), &unk_1003D91B0, qword_1003444F0);
    v25 = 0;
  }

  else
  {
    v26 = (v24 + *(v2 + 48));
    v27 = *v26;
    v25 = v26[1];

    sub_100070B00(v24, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v28 = *(v0 + 200);
  v29 = *(v0 + 184);
  v30 = v28 + v29[5];
  v31.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v32 = v29[6];
  v33 = *(v28 + v29[7]);
  v34 = *(v28 + v32);
  v35 = *(v28 + v32 + 8);
  v36 = String._bridgeToObjectiveC()();
  if (v25)
  {
    v37 = String._bridgeToObjectiveC()();
  }

  else
  {
    v37 = 0;
  }

  v38 = *(v0 + 200);
  BYTE1(v129) = 1;
  LOBYTE(v129) = v4 != 1;
  [objc_allocWithZone(AATrustedContact) initWithID:v31.super.isa status:v33 handle:v36 firstName:0 lastName:0 displayName:0 isAcceptedAndShared:v129 isIdMSConfirmed:1 preflightStatus:0 otCustodianID:v37 keyCreatedOnBuild:0 repairDate:0 repairCount:?];

  sub_100070B00(v38, type metadata accessor for CustodianshipInfoRecord);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v128 = *((*(v0 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v39 = *(v0 + 344);
  v40 = *(v0 + 232);
  v41 = *(v0 + 176);
  v42 = *(v0 + 360) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v43 = *(v0 + 136);
  sub_100008D3C(v41, &unk_1003D91B0, qword_1003444F0);
  sub_100070B00(v40, type metadata accessor for CustodianshipInfoRecord);
  if (v42 == v39)
  {
    v44 = *(v0 + 336);

    if ([*(v0 + 152) shouldLookUpContactInAddressBook])
    {
      v45 = *(v0 + 304);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Request contains address book lookup for contact list whoCanBeHelpedByMe", v48, 2u);
      }

      if (v43 >> 62)
      {
        goto LABEL_50;
      }

      for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {

        if (!i)
        {
LABEL_33:

          break;
        }

        v50 = v43 & 0xFFFFFFFFFFFFFF8;
        v51 = v43 & 0xC000000000000001;
        if ((v43 & 0xC000000000000001) != 0)
        {
          v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          v52 = *(v43 + 32);
        }

        v53 = v52;
        v54 = *(v0 + 160);
        v55 = sub_10006F874(v52, *(v0 + 152));
        if (v5)
        {
          v56 = *(v0 + 336);
          swift_bridgeObjectRelease_n();

          v57 = *(v0 + 296);
          v58 = *(v0 + 272);
          v60 = *(v0 + 240);
          v59 = *(v0 + 248);
          v62 = *(v0 + 224);
          v61 = *(v0 + 232);
          v64 = *(v0 + 208);
          v63 = *(v0 + 216);
          v65 = *(v0 + 200);
          v132 = *(v0 + 176);
          v135 = *(v0 + 168);

          v66 = *(v0 + 8);

          return v66();
        }

        v97 = v55;
        [v53 setLocalContactRepresentation:v55];

        if (i == 1)
        {
          goto LABEL_33;
        }

        v120 = 5;
        while (1)
        {
          v121 = v120 - 4;
          if (v51)
          {
            v122 = v43;
            v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v121 >= *(v50 + 16))
            {
              goto LABEL_48;
            }

            v122 = v43;
            v123 = *(v43 + 8 * v120);
          }

          v124 = v123;
          v43 = v120 - 3;
          if (__OFADD__(v121, 1))
          {
            break;
          }

          v125 = *(v0 + 160);
          v5 = 0;
          v126 = sub_10006F874(v123, *(v0 + 152));
          [v124 setLocalContactRepresentation:v126];

          ++v120;
          v127 = v43 == i;
          v43 = v122;
          if (v127)
          {
            goto LABEL_33;
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        ;
      }
    }

    v98 = *(v0 + 304);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();
    v101 = os_log_type_enabled(v99, v100);
    v102 = *(v0 + 336);
    v137 = v43;
    if (v101)
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v138[0] = v104;
      *v103 = 136315138;
      sub_100016034(0, &qword_1003DA1F8, AATrustedContact_ptr);

      v105 = Array.description.getter();
      v107 = v106;

      v108 = sub_10021145C(v105, v107, v138);

      *(v103 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v99, v100, "Final contact list whoCanBeHelpedByMe to be returned: %s", v103, 0xCu);
      sub_10000839C(v104);
    }

    v109 = *(v0 + 296);
    v110 = *(v0 + 272);
    v112 = *(v0 + 240);
    v111 = *(v0 + 248);
    v114 = *(v0 + 224);
    v113 = *(v0 + 232);
    v116 = *(v0 + 208);
    v115 = *(v0 + 216);
    v117 = *(v0 + 200);
    v118 = *(v0 + 176);
    v134 = *(v0 + 168);

    v119 = *(v0 + 8);

    return v119(v137);
  }

  else
  {
    v68 = *(v0 + 352);
    v69 = *(v0 + 360) + 1;
    *(v0 + 360) = v69;
    v70 = *(v0 + 304);
    v72 = *(v0 + 224);
    v71 = *(v0 + 232);
    v73 = *(v0 + 216);
    v74 = *(v0 + 152);
    sub_100070E78(*(v0 + 336) + ((*(v0 + 392) + 32) & ~*(v0 + 392)) + v68 * v69, v71, type metadata accessor for CustodianshipInfoRecord);
    sub_100070E78(v71, v72, type metadata accessor for CustodianshipInfoRecord);
    sub_100070E78(v71, v73, type metadata accessor for CustodianshipInfoRecord);
    v75 = v74;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v0 + 216);
    v80 = *(v0 + 224);
    if (v78)
    {
      v81 = *(v0 + 184);
      v133 = v81;
      v82 = *(v0 + 152);
      v83 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v138[0] = v136;
      *v83 = 136315650;
      v84 = *(v81 + 20);
      type metadata accessor for UUID();
      sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      sub_100070B00(v80, type metadata accessor for CustodianshipInfoRecord);
      v88 = sub_10021145C(v85, v87, v138);

      *(v83 + 4) = v88;
      *(v83 + 12) = 2048;
      v89 = *(v79 + *(v133 + 28));
      sub_100070B00(v79, type metadata accessor for CustodianshipInfoRecord);
      *(v83 + 14) = v89;
      *(v83 + 22) = 2048;
      v90 = [v82 cachePolicy];

      *(v83 + 24) = v90;
      _os_log_impl(&_mh_execute_header, v76, v77, "Checking if CustodianRecoveryInfoRecord exist for the contact whoCanBeHelpedByMe, custodianID %s, with status: %ld, cachePolicy: %lu", v83, 0x20u);
      sub_10000839C(v136);
    }

    else
    {
      v91 = *(v0 + 152);

      sub_100070B00(v79, type metadata accessor for CustodianshipInfoRecord);
      sub_100070B00(v80, type metadata accessor for CustodianshipInfoRecord);
    }

    v92 = *(v0 + 232);
    v93 = *(v0 + 160);
    v94 = swift_task_alloc();
    *(v0 + 368) = v94;
    *(v94 + 16) = v92;
    *(v94 + 24) = v93;
    v95 = swift_task_alloc();
    *(v0 + 376) = v95;
    *v95 = v0;
    v95[1] = sub_10006DA64;
    v96 = *(v0 + 176);

    return sub_10006A810(v96, 0xD000000000000019, 0x800000010032D600, &unk_10033F480, v94);
  }
}

uint64_t sub_10006E7B0()
{
  v109 = v0;
  v1 = *(v0 + 176);
  v2 = type metadata accessor for CustodianRecoveryInfoRecord();
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 1, 1, v2);
  v4 = *(v0 + 304);
  sub_100070E78(*(v0 + 232), *(v0 + 208), type metadata accessor for CustodianshipInfoRecord);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 208);
  if (v7)
  {
    v9 = *(v0 + 184);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v108[0] = v11;
    *v10 = 67109378;
    *(v10 + 8) = 2080;
    v12 = *(v9 + 20);
    type metadata accessor for UUID();
    sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100070B00(v8, type metadata accessor for CustodianshipInfoRecord);
    v16 = sub_10021145C(v13, v15, v108);

    *(v10 + 10) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Has CustodianRecoveryInfoRecord for contact whoCanBeHelpedByMe: %{BOOL}d, custodianID %s", v10, 0x12u);
    sub_10000839C(v11);
  }

  else
  {

    sub_100070B00(v8, type metadata accessor for CustodianshipInfoRecord);
  }

  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  sub_100070E78(*(v0 + 232), *(v0 + 200), type metadata accessor for CustodianshipInfoRecord);
  sub_100012D04(v17, v18, &unk_1003D91B0, qword_1003444F0);
  v19 = (*(v3 + 48))(v18, 1, v2);
  v20 = *(v0 + 168);
  if (v19 == 1)
  {
    sub_100008D3C(*(v0 + 168), &unk_1003D91B0, qword_1003444F0);
    v21 = 0;
  }

  else
  {
    v22 = (v20 + *(v2 + 48));
    v23 = *v22;
    v21 = v22[1];

    sub_100070B00(v20, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v24 = *(v0 + 200);
  v25 = *(v0 + 184);
  v26 = v24 + v25[5];
  v27.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v28 = v25[6];
  v29 = *(v24 + v25[7]);
  v30 = *(v24 + v28);
  v31 = *(v24 + v28 + 8);
  v32 = String._bridgeToObjectiveC()();
  if (v21)
  {
    v33 = String._bridgeToObjectiveC()();
  }

  else
  {
    v33 = 0;
  }

  v34 = *(v0 + 200);
  LOWORD(v103) = 256;
  [objc_allocWithZone(AATrustedContact) initWithID:v27.super.isa status:v29 handle:v32 firstName:0 lastName:0 displayName:0 isAcceptedAndShared:v103 isIdMSConfirmed:1 preflightStatus:0 otCustodianID:v33 keyCreatedOnBuild:0 repairDate:0 repairCount:?];

  sub_100070B00(v34, type metadata accessor for CustodianshipInfoRecord);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v35 = *(v0 + 344);
    v36 = *(v0 + 232);
    v37 = *(v0 + 176);
    v38 = *(v0 + 360) + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v39 = *(v0 + 136);
    sub_100008D3C(v37, &unk_1003D91B0, qword_1003444F0);
    sub_100070B00(v36, type metadata accessor for CustodianshipInfoRecord);
    if (v38 != v35)
    {
      break;
    }

    v40 = *(v0 + 336);

    if (([*(v0 + 152) shouldLookUpContactInAddressBook] & 1) == 0)
    {
      goto LABEL_33;
    }

    v41 = *(v0 + 304);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Request contains address book lookup for contact list whoCanBeHelpedByMe", v44, 2u);
    }

    if (v39 >> 62)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v45 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v45)
    {
LABEL_32:

LABEL_33:
      v82 = *(v0 + 304);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();
      v85 = os_log_type_enabled(v83, v84);
      v86 = *(v0 + 336);
      if (v85)
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v108[0] = v88;
        *v87 = 136315138;
        sub_100016034(0, &qword_1003DA1F8, AATrustedContact_ptr);

        v89 = Array.description.getter();
        v91 = v90;

        v92 = sub_10021145C(v89, v91, v108);

        *(v87 + 4) = v92;
        _os_log_impl(&_mh_execute_header, v83, v84, "Final contact list whoCanBeHelpedByMe to be returned: %s", v87, 0xCu);
        sub_10000839C(v88);
      }

      v93 = *(v0 + 296);
      v94 = *(v0 + 272);
      v96 = *(v0 + 240);
      v95 = *(v0 + 248);
      v98 = *(v0 + 224);
      v97 = *(v0 + 232);
      v100 = *(v0 + 208);
      v99 = *(v0 + 216);
      v101 = *(v0 + 200);
      v105 = *(v0 + 176);
      v107 = *(v0 + 168);

      v102 = *(v0 + 8);

      return v102(v39);
    }

    v46 = 0;
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v46 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v47 = *(v39 + 8 * v46 + 32);
      }

      v48 = v47;
      v49 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      v50 = *(v0 + 160);
      v51 = sub_10006F874(v47, *(v0 + 152));
      [v48 setLocalContactRepresentation:v51];

      ++v46;
      if (v49 == v45)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v52 = *(v0 + 352);
  v53 = *(v0 + 360) + 1;
  *(v0 + 360) = v53;
  v54 = *(v0 + 304);
  v56 = *(v0 + 224);
  v55 = *(v0 + 232);
  v57 = *(v0 + 216);
  v58 = *(v0 + 152);
  sub_100070E78(*(v0 + 336) + ((*(v0 + 392) + 32) & ~*(v0 + 392)) + v52 * v53, v55, type metadata accessor for CustodianshipInfoRecord);
  sub_100070E78(v55, v56, type metadata accessor for CustodianshipInfoRecord);
  sub_100070E78(v55, v57, type metadata accessor for CustodianshipInfoRecord);
  v59 = v58;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  v62 = os_log_type_enabled(v60, v61);
  v63 = *(v0 + 216);
  v64 = *(v0 + 224);
  if (v62)
  {
    v65 = *(v0 + 184);
    v104 = v65;
    v66 = *(v0 + 152);
    v67 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v108[0] = v106;
    *v67 = 136315650;
    v68 = *(v65 + 20);
    type metadata accessor for UUID();
    sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    sub_100070B00(v64, type metadata accessor for CustodianshipInfoRecord);
    v72 = sub_10021145C(v69, v71, v108);

    *(v67 + 4) = v72;
    *(v67 + 12) = 2048;
    v73 = *(v63 + *(v104 + 28));
    sub_100070B00(v63, type metadata accessor for CustodianshipInfoRecord);
    *(v67 + 14) = v73;
    *(v67 + 22) = 2048;
    v74 = [v66 cachePolicy];

    *(v67 + 24) = v74;
    _os_log_impl(&_mh_execute_header, v60, v61, "Checking if CustodianRecoveryInfoRecord exist for the contact whoCanBeHelpedByMe, custodianID %s, with status: %ld, cachePolicy: %lu", v67, 0x20u);
    sub_10000839C(v106);
  }

  else
  {
    v75 = *(v0 + 152);

    sub_100070B00(v63, type metadata accessor for CustodianshipInfoRecord);
    sub_100070B00(v64, type metadata accessor for CustodianshipInfoRecord);
  }

  v76 = *(v0 + 232);
  v77 = *(v0 + 160);
  v78 = swift_task_alloc();
  *(v0 + 368) = v78;
  *(v78 + 16) = v76;
  *(v78 + 24) = v77;
  v79 = swift_task_alloc();
  *(v0 + 376) = v79;
  *v79 = v0;
  v79[1] = sub_10006DA64;
  v80 = *(v0 + 176);

  return sub_10006A810(v80, 0xD000000000000019, 0x800000010032D600, &unk_10033F480, v78);
}

uint64_t sub_10006F33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v3[13] = RecoveryRecordsRequest;
  v8 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10006F43C, 0, 0);
}

uint64_t sub_10006F43C()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = *(type metadata accessor for CustodianshipInfoRecord() + 20);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(v1, v7 + v8, v9);
  *(v1 + v2[5]) = 0;
  v10 = v1 + v2[6];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v1 + v2[7]) = 1;
  v11 = (v1 + v2[8]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + v2[9]);
  *v12 = 0;
  v12[1] = 0;
  (*(v4 + 16))(v3, v6 + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController, v5);
  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v3, v5);
  v13 = *sub_1000080F8(v0 + 2, v0[5]);
  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = sub_10006F5E4;
  v15 = v0[14];
  v16 = v0[7];

  return sub_100021548(v16, v15, 0, 0);
}

uint64_t sub_10006F5E4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_10006F7DC;
  }

  else
  {
    v3 = sub_10006F6F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006F6F8()
{
  v1 = v0[12];
  v2 = v0[7];
  sub_100070B00(v0[14], type metadata accessor for FetchRecoveryRecordsRequest);
  v3 = type metadata accessor for CustodianRecoveryInfoRecord();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_10000839C(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006F7DC()
{
  v1 = v0[12];
  sub_100070B00(v0[14], type metadata accessor for FetchRecoveryRecordsRequest);
  sub_10000839C(v0 + 2);

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

id sub_10006F874(void *a1, void *a2)
{
  v96 = a2;
  v98 = type metadata accessor for UUID();
  v101 = *(v98 - 8);
  v3 = *(v101 + 64);
  __chkstk_darwin(v98);
  v97 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CharacterSet();
  v100 = *(v5 - 8);
  v6 = v100[8];
  __chkstk_darwin(v5);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v93 - v12;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100008D04(v14, qword_1003FAA88);
  v16 = a1;
  v95 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v94 = v8;
    v20 = v19;
    v21 = v5;
    v22 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v16;
    *v22 = v16;
    v23 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "Finding local contact from address book to associate for %@", v20, 0xCu);
    sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);
    v5 = v21;

    v8 = v94;
  }

  (*(v10 + 16))(v13, &v99[OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__contactManager], v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  v24 = v102;
  v25 = [v16 handle];
  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  v26 = [v24 contactForHandle:v25];

  swift_unknownObjectRelease();
  v99 = v26;
  if (!v26)
  {
    goto LABEL_18;
  }

  v27 = v99;
  v28 = [v27 givenName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v102 = v29;
  v103 = v31;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_1000709A0();
  v32 = StringProtocol.trimmingCharacters(in:)();
  v34 = v33;
  v35 = v100[1];
  ++v100;
  v35(v8, v5);

  v36 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v36 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {
    goto LABEL_17;
  }

  v37 = [v27 familyName];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v102 = v38;
  v103 = v40;
  static CharacterSet.whitespacesAndNewlines.getter();
  v41 = StringProtocol.trimmingCharacters(in:)();
  v43 = v42;
  v35(v8, v5);

  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v44)
  {
LABEL_17:

LABEL_18:
    v48 = [v16 handle];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = [v16 firstName];
    if (v52)
    {
      v53 = v52;
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;
    }

    else
    {
      v54 = 0;
      v56 = 0;
    }

    v57 = [v16 lastName];
    if (v57)
    {
      v58 = v57;
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;
    }

    else
    {
      v59 = 0;
      v61 = 0;
    }

    v62 = objc_allocWithZone(AALocalContactInfo);
    v47 = sub_1000708D0(v49, v51, v54, v56, v59, v61);
    goto LABEL_25;
  }

  v45 = [v16 handle];
  if (!v45)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = String._bridgeToObjectiveC()();
  }

  v46 = [objc_allocWithZone(AALocalContactInfo) initWithHandle:v45 contact:v27];

  v47 = v46;
LABEL_25:
  v63 = v101;
  v64 = v47;
  v65 = [v16 custodianID];
  v66 = v97;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v70 = *(v63 + 8);
  v68 = v63 + 8;
  v69 = v70;
  v70(v66, v98);
  [v64 setCustodianID:isa];

  [v64 setTrustedContactStatus:{objc_msgSend(v16, "status")}];
  [v64 setIsAcceptedAndShared:{objc_msgSend(v16, "isAcceptedAndShared")}];
  [v64 setIsIdMSConfirmed:{objc_msgSend(v16, "isIdMSConfirmed")}];
  [v64 setPreflightStatus:{objc_msgSend(v16, "preflightStatus")}];

  v71 = [v96 contactType];
  if (!v71)
  {
    v72 = 1;
    goto LABEL_29;
  }

  if (v71 == 1)
  {
    v72 = 2;
LABEL_29:
    v73 = v64;
    [v73 setContactType:v72];
    v74 = v16;
    v75 = v73;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v95 = v69;
      v79 = v78;
      v80 = swift_slowAlloc();
      v101 = v68;
      v96 = v80;
      v100 = swift_slowAlloc();
      v102 = v100;
      *v79 = 136315394;
      v81 = [v74 custodianID];
      v82 = v97;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID);
      v83 = v98;
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      v95(v82, v83);
      v87 = sub_10021145C(v84, v86, &v102);

      *(v79 + 4) = v87;
      *(v79 + 12) = 2112;
      *(v79 + 14) = v75;
      v88 = v96;
      *v96 = v75;
      _os_log_impl(&_mh_execute_header, v76, v77, "Local contact representation for %s is %@", v79, 0x16u);
      sub_100008D3C(v88, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v100);
    }

    else
    {
    }

    return v64;
  }

  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&_mh_execute_header, v89, v90, "Unknown contactType is requested in the fetch trusted contact request", v91, 2u);
  }

  type metadata accessor for AACustodianError(0);
  v104 = -7000;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100070AA8(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  return v64;
}

uint64_t sub_1000702D0()
{
  v1 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__storageController;
  v6 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__idmsHandler;
  v8 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__securityController;
  v10 = sub_100005814(&qword_1003DA570, qword_10033F508);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__cloudStorage;
  v12 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__cloudShare;
  v14 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__contactManager;
  v16 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = *(*v0 + 48);
  v18 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonCustodianFetcher()
{
  result = qword_1003DA288;
  if (!qword_1003DA288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000705E0()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_10000DAB8(319, &unk_1003DB250, &qword_1003D9A30, &unk_10033F040);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_10000DAB8(319, &unk_1003DB260, &unk_1003D9860, &qword_10033F440);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_10000DAB8(319, &unk_1003DB230, &unk_1003D9830, &qword_10033E970);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_10000DAB8(319, &qword_1003E5660, &unk_1003D98D0, &unk_10033F050);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                sub_10000DAB8(319, qword_1003E9730, &unk_1003D9820, &unk_10033EFD0);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

id sub_1000708D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = String._bridgeToObjectiveC()();

LABEL_6:
  v12 = [v6 initWithHandle:v9 firstName:v10 lastName:v11];

  return v12;
}

unint64_t sub_1000709A0()
{
  result = qword_1003DA520;
  if (!qword_1003DA520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DA520);
  }

  return result;
}

uint64_t sub_1000709FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF88;

  return sub_10006F33C(a1, v5, v4);
}

uint64_t sub_100070AA8(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_100070AF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100070B00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100070B60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF88;

  return sub_10006B1B4(a1, v5, v4);
}

uint64_t sub_100070C0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082A8;

  return sub_10006BD24(a1, v5, v4);
}

uint64_t sub_100070CB8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF88;

  return sub_10006B908(a1, v5, v4);
}

uint64_t sub_100070D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100070DCC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF88;

  return sub_10006B588(a1, v5, v4);
}

uint64_t sub_100070E78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100070EE0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF88;

  return sub_100069700(a1, v5, v4);
}

uint64_t sub_100070F9C(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = *v2;
  if (qword_1003D7DC0 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  sub_100005814(&qword_1003DA618, &qword_10033F568);
  OS_dispatch_queue.sync<A>(execute:)();
  if (!*(v12 + 16))
  {
    v7 = 0;
LABEL_8:

    v10 = 2;
    return v7 & (v10 ^ 1) & (v10 != 2);
  }

  sub_1003084DC(v4, a2);
  v7 = v6;

  if (!*(v12 + 16))
  {
    goto LABEL_8;
  }

  v8 = sub_1003084DC(v4, a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(*(v12 + 56) + v8);

  return v7 & (v10 ^ 1) & (v10 != 2);
}

uint64_t sub_100071120()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100071C74();
  static DispatchQoS.unspecified.getter();
  v10[1] = _swiftEmptyArrayStorage;
  sub_100071CC0();
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_100071D18();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1003DA578 = result;
  return result;
}

uint64_t sub_100071328(uint64_t a1)
{
  v2 = *v1;
  if (qword_1003D7DC0 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  sub_100005814(&qword_1003DA618, &qword_10033F568);
  OS_dispatch_queue.sync<A>(execute:)();
  return v4;
}

void sub_100071420(unint64_t *a1@<X8>)
{
  v2 = sub_100308DB4(_swiftEmptyArrayStorage);
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAAD0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Preflight results are being fetched from UserDefaults", v6, 2u);
  }

  v7 = [objc_opt_self() getCustodianInfo];
  if (v7)
  {
    v8 = v7;
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = sub_100308EB0(_swiftEmptyArrayStorage);
  }

  AnyHashable.init<A>(_:)();
  if (*(v9 + 16) && (v10 = sub_10031B060(v21), (v11 & 1) != 0))
  {
    sub_10000DB1C(*(v9 + 56) + 32 * v10, v22);
    sub_1000526B0(v21);

    sub_100005814(&qword_1003DA618, &qword_10033F568);
    if (swift_dynamicCast())
    {

      v2 = 0xD000000000000010;

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v21[0] = v15;
        *v14 = 136315138;
        v16 = Dictionary.description.getter();
        v18 = sub_10021145C(v16, v17, v21);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Preflight results fetched from UserDefaults %s", v14, 0xCu);
        sub_10000839C(v15);

LABEL_16:

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  else
  {

    sub_1000526B0(v21);
  }

  v12 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v12, v19, "Preflight results not found in UserDefaults", v20, 2u);
    goto LABEL_16;
  }

LABEL_17:

  *a1 = v2;
}

uint64_t sub_1000717B0(uint64_t a1)
{
  v3 = *v1;
  if (qword_1003D7DC0 != -1)
  {
    swift_once();
  }

  v4 = qword_1003DA578;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100071DB4;
  *(v6 + 24) = v5;
  v10[4] = sub_100071DCC;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10030F718;
  v10[3] = &unk_1003A63C8;
  v7 = _Block_copy(v10);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100071960(uint64_t a1)
{
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAD0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19[0] = v6;
    *v5 = 136315138;
    v7 = Dictionary.description.getter();
    v9 = sub_10021145C(v7, v8, v19);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Preflight results are being set in UserDefaults: %s", v5, 0xCu);
    sub_10000839C(v6);
  }

  v10 = objc_opt_self();
  v11 = [v10 getCustodianInfo];
  if (v11)
  {
    v12 = v11;
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = sub_100308EB0(_swiftEmptyArrayStorage);
  }

  *(&v17 + 1) = 0x800000010032D690;
  AnyHashable.init<A>(_:)();
  v18 = sub_100005814(&qword_1003DA618, &qword_10033F568);
  *&v17 = a1;
  sub_100070AF0(&v17, v16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002CF328(v16, v19, isUniquelyReferenced_nonNull_native);
  sub_1000526B0(v19);
  if (*(v13 + 16))
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v10 setCustodianInfo:isa];
  }

  else
  {
  }
}

unint64_t sub_100071C74()
{
  result = qword_1003DC2B0;
  if (!qword_1003DC2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DC2B0);
  }

  return result;
}

unint64_t sub_100071CC0()
{
  result = qword_1003DAB90;
  if (!qword_1003DAB90)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DAB90);
  }

  return result;
}

unint64_t sub_100071D18()
{
  result = qword_1003DABA0;
  if (!qword_1003DABA0)
  {
    sub_100008CBC(&unk_1003E6290, &qword_10033F570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DABA0);
  }

  return result;
}

uint64_t sub_100071D7C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100071DD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100071E04()
{
  type metadata accessor for CustodianHealthCheck();
  sub_100005814(&unk_1003DA870, &unk_10033F5E0);
  result = String.init<A>(describing:)();
  qword_1003DA620 = result;
  *algn_1003DA628 = v1;
  return result;
}

uint64_t sub_100071E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a3;
  v57 = a4;
  v62 = a2;
  v6 = *v4;
  v54 = a1;
  v55 = v6;
  v61 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v59 = *(v61 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v61);
  v58 = &v50 - v8;
  v9 = type metadata accessor for URL();
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v50 - v14;
  v16 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v50 - v19;
  v21 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v50 - v24;
  (*(v22 + 16))(&v50 - v24, v5 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__accountStore, v21);
  Dependency.wrappedValue.getter();
  (*(v22 + 8))(v25, v21);
  v26 = [*(*sub_1000080F8(v64 v65) + 16)];
  if (v26 && (v27 = v26, v28 = [v26 aa_altDSID], v27, v28))
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v30;
  }

  else
  {
    v29 = 0;
    v53 = 0;
  }

  sub_10000839C(v64);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100008D04(v31, qword_1003FAAB8);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v51 = v29;
    v52 = v9;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v64[0] = v35;
    *v34 = 136315138;
    if (qword_1003D7DC8 != -1)
    {
      swift_once();
    }

    *(v34 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v64);
    _os_log_impl(&_mh_execute_header, v32, v33, "%s - started.", v34, 0xCu);
    sub_10000839C(v35);

    v9 = v52;
    v29 = v51;
  }

  else
  {
  }

  (*(v17 + 16))(v20, v5 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__custodianStorage, v16);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v20, v16);
  v36 = sub_1000080F8(v64, v65);
  v37 = swift_allocObject();
  v38 = v54;
  v37[2] = v5;
  v37[3] = v38;
  v37[4] = v62;
  v37[5] = v29;
  v39 = v56;
  v40 = v57;
  v37[6] = v53;
  v37[7] = v39;
  v41 = v55;
  v37[8] = v40;
  v37[9] = v41;
  v42 = sub_1000080F8((*v36 + 16), *(*v36 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v43 = *(v60 + 8);
  v43(v13, v9);
  v44 = v58;
  v45 = v59;
  v46 = *v42 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage;
  v47 = v61;
  (*(v59 + 16))(v58, v46, v61);
  Dependency.wrappedValue.getter();
  (*(v45 + 8))(v44, v47);
  v48 = *sub_1000080F8(v63, v63[3]);
  sub_1000328BC(v15, sub_10007CD08, v37);

  v43(v15, v9);
  sub_10000839C(v63);
  return sub_10000839C(v64);
}

uint64_t sub_1000724D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  if ((a2 & 1) == 0)
  {
    return sub_1000726EC(a1, a4, a5, a6, a7, a8, a9);
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAB8);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  sub_1000399DC(a1, 1);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v14 = 136315394;
    if (qword_1003D7DC8 != -1)
    {
      swift_once();
    }

    *(v14 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, &v19);
    *(v14 + 12) = 2112;
    v17 = _convertErrorToNSError(_:)();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s - error fetching my custodianship records: %@", v14, 0x16u);
    sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v16);
  }

  return a8(a1);
}

uint64_t sub_1000726EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v44 = a6;
  v45 = a7;
  v52 = a5;
  v13 = *v7;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v14 - 8);
  v51 = v14;
  v15 = *(v50 + 64);
  __chkstk_darwin(v14);
  v49 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v47 = *(v17 - 8);
  v48 = v17;
  v18 = *(v47 + 64);
  __chkstk_darwin(v17);
  v46 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS.QoSClass();
  v42 = *(v20 - 8);
  v43 = v20;
  v21 = *(v42 + 64);
  __chkstk_darwin(v20);
  v41 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = dispatch_group_create();
  type metadata accessor for PartialErrorHandler();
  swift_allocObject();
  v23 = sub_10031FD1C();
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = *(type metadata accessor for CustodianshipInfoRecord() - 8);
    v26 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v27 = *(v25 + 72);
    do
    {
      sub_1000745F8(v26, v53, v8, a2, a3, a4, v52, v23, v13);
      v26 += v27;
      --v24;
    }

    while (v24);
  }

  sub_100071C74();
  v29 = v41;
  v28 = v42;
  v30 = v43;
  (*(v42 + 104))(v41, enum case for DispatchQoS.QoSClass.background(_:), v43);
  v31 = static OS_dispatch_queue.global(qos:)();
  (*(v28 + 8))(v29, v30);
  v32 = swift_allocObject();
  v33 = v44;
  v34 = v45;
  v32[2] = v23;
  v32[3] = v33;
  v32[4] = v34;
  aBlock[4] = sub_10007CD80;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A66E0;
  v35 = _Block_copy(aBlock);

  v36 = v46;
  static DispatchQoS.unspecified.getter();
  v54 = _swiftEmptyArrayStorage;
  sub_10007CC70(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v37 = v49;
  v38 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v39 = v53;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();

  _Block_release(v35);

  (*(v50 + 8))(v37, v38);
  (*(v47 + 8))(v36, v48);
}

uint64_t sub_100072B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a5;
  v57 = a7;
  v58 = a3;
  v53 = a2;
  v54 = *v7;
  v55 = a6;
  v10 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v51 = *(v10 - 8);
  v11 = v51[8];
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v52 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v18;
  __chkstk_darwin(v17);
  v20 = &v45 - v19;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100008D04(v21, qword_1003FAAB8);
  v22 = *(v15 + 16);
  v60 = a1;
  v49 = v22;
  v22(v20, a1, v14);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v47 = v10;
    v48 = a4;
    v25 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v61[0] = v46;
    *v25 = 136315394;
    if (qword_1003D7DC8 != -1)
    {
      swift_once();
    }

    *(v25 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v61);
    *(v25 + 12) = 2080;
    sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v14;
    v29 = v28;
    (*(v15 + 8))(v20, v27);
    v30 = sub_10021145C(v26, v29, v61);
    v14 = v27;

    *(v25 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s - starting individual custodian health check for %s", v25, 0x16u);
    swift_arrayDestroy();

    v10 = v47;
    a4 = v48;
  }

  else
  {

    (*(v15 + 8))(v20, v14);
  }

  v31 = v51;
  v32 = v59;
  (v51[2])(v13, v59 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__custodianStorage, v10);
  Dependency.wrappedValue.getter();
  (v31[1])(v13, v10);
  v51 = sub_1000080F8(v61, v61[3]);
  v33 = v52;
  v34 = v60;
  v49(v52, v60, v14);
  v35 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v36 = (v50 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v14;
  v39 = v37;
  v40 = v53;
  *(v37 + 2) = v32;
  *(v37 + 3) = v40;
  v41 = v57;
  *(v37 + 4) = v58;
  *(v37 + 5) = a4;
  v42 = v55;
  *(v37 + 6) = v56;
  *(v37 + 7) = v42;
  *(v37 + 8) = v41;
  (*(v15 + 32))(&v37[v35], v33, v38);
  *(v39 + v36) = v54;
  v43 = *v51;

  sub_1000259E4(v34, sub_10007BA0C, v39);

  return sub_10000839C(v61);
}

uint64_t sub_1000730B8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9)
{
  v48 = a5;
  v49 = a6;
  v51 = a2;
  v50 = type metadata accessor for UUID();
  v53 = *(v50 - 8);
  v14 = *(v53 + 64);
  __chkstk_darwin(v50);
  v52 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CustodianshipInfoRecord();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v47 - v22);
  sub_100012D04(a1, &v47 - v22, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = a7;
    v49 = a8;
    v24 = *v23;
    v25 = objc_allocWithZone(type metadata accessor for CustodianshipHealthCheckAnalyticsEvent());
    *&v25[qword_1003E3F40] = _swiftEmptyArrayStorage;
    v25[qword_1003E3F48] = 0;
    v26 = &v25[qword_1003E3F50];
    *v26 = 0;
    v26[1] = 0;
    sub_100005814(&unk_1003DA880, &unk_10033F5F0);
    Dependency.init(dependencyId:config:)();
    sub_100309C2C(_swiftEmptyArrayStorage);
    v27 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
    _convertErrorToNSError(_:)();
    v28 = qword_1003E3F40;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v27 + v28) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v27 + v28) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v46 = *((*(v27 + v28) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_10024BFE4(0);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAB8);
    v31 = v52;
    v30 = v53;
    v32 = v50;
    (*(v53 + 16))(v52, a9, v50);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v35 = 136315650;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v35 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v54);
      *(v35 + 12) = 2080;
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
      v37 = v52;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v32;
      v41 = v40;
      (*(v53 + 8))(v37, v39);
      v42 = sub_10021145C(v38, v41, v54);

      *(v35 + 14) = v42;
      *(v35 + 22) = 2112;
      v43 = _convertErrorToNSError(_:)();
      *(v35 + 24) = v43;
      *v36 = v43;
      _os_log_impl(&_mh_execute_header, v33, v34, "%s - error fetching custodianship record for %s: %@", v35, 0x20u);
      sub_100008D3C(v36, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      (*(v30 + 8))(v31, v32);
    }

    v45 = v51;
    swift_errorRetain();
    v45(v24);
  }

  else
  {
    sub_10007C488(v23, v19, type metadata accessor for CustodianshipInfoRecord);
    sub_1000736A4(v19, a3, a4, v48, v49, a7, a8);
    return sub_10007C424(v19, type metadata accessor for CustodianshipInfoRecord);
  }
}

void sub_1000736A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v112 = a7;
  v107 = a1;
  v108 = a6;
  v101 = *v7;
  v12 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v104 = *(v12 - 8);
  v105 = v12;
  v13 = *(v104 + 64);
  __chkstk_darwin(v12);
  v103 = &v89 - v14;
  v15 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v102 = &v89 - v17;
  v109 = type metadata accessor for CustodianshipInfoRecord();
  v96 = *(v109 - 1);
  v18 = *(v96 + 64);
  v19 = __chkstk_darwin(v109);
  v100 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v99 = &v89 - v21;
  __chkstk_darwin(v20);
  v95 = &v89 - v22;
  v92 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v91 = *(v92 - 8);
  v23 = *(v91 + 64);
  __chkstk_darwin(v92);
  v90 = &v89 - v24;
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v93 = *(RecoveryRecordsRequest - 1);
  v26 = *(v93 + 64);
  v27 = __chkstk_darwin(RecoveryRecordsRequest);
  v97 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v28;
  __chkstk_darwin(v27);
  v30 = &v89 - v29;
  v31 = objc_allocWithZone(type metadata accessor for CustodianshipHealthCheckAnalyticsEvent());
  *&v31[qword_1003E3F40] = _swiftEmptyArrayStorage;
  v31[qword_1003E3F48] = 0;
  v32 = &v31[qword_1003E3F50];
  *v32 = 0;
  v32[1] = 0;
  sub_100005814(&unk_1003DA880, &unk_10033F5F0);
  Dependency.init(dependencyId:config:)();
  sub_100309C2C(_swiftEmptyArrayStorage);
  v33 = a5;
  v34 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
  v35 = kAAAnalyticsEventCustodianHealthCheckCustodian;
  v110 = v34;
  v98 = a4;
  if (a5)
  {
    v36 = a2;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v37 = v35;
    v38 = String._bridgeToObjectiveC()();
    v39 = v33;
  }

  else
  {
    v39 = 0;
    v36 = a2;
    swift_bridgeObjectRetain_n();
    v40 = v35;
    v38 = 0;
  }

  v41 = objc_opt_self();
  v42 = String._bridgeToObjectiveC()();

  v43 = [v41 analyticsEventWithName:v35 altDSID:v38 flowID:v42];

  v44 = v107;
  v45 = *(v107 + v109[7]) & 0xFFFFFFFFFFFFFFFELL;
  v106 = v43;
  if (v45 == 2)
  {
    v46 = v109[5];
    v47 = type metadata accessor for UUID();
    (*(*(v47 - 8) + 16))(v30, v44 + v46, v47);
    v30[RecoveryRecordsRequest[5]] = 1;
    v48 = &v30[RecoveryRecordsRequest[6]];
    *v48 = 0;
    v48[8] = 1;
    v30[RecoveryRecordsRequest[7]] = 1;
    v49 = &v30[RecoveryRecordsRequest[8]];
    *v49 = v98;
    *(v49 + 1) = v39;
    v50 = &v30[RecoveryRecordsRequest[9]];
    *v50 = v36;
    *(v50 + 1) = a3;
    v51 = v43;
    v52 = v91;
    v53 = v111;
    v54 = v90;
    v55 = v92;
    (*(v91 + 16))(v90, v111 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__custodianStorage, v92);
    Dependency.wrappedValue.getter();
    (*(v52 + 8))(v54, v55);
    v56 = sub_1000080F8(v113, v113[3]);
    v57 = v95;
    sub_10007C3BC(v44, v95, type metadata accessor for CustodianshipInfoRecord);
    v58 = (*(v96 + 80) + 56) & ~*(v96 + 80);
    v59 = swift_allocObject();
    v60 = v110;
    *(v59 + 2) = v53;
    *(v59 + 3) = v60;
    v61 = v108;
    *(v59 + 4) = v51;
    *(v59 + 5) = v61;
    *(v59 + 6) = v112;
    sub_10007C488(v57, v59 + v58, type metadata accessor for CustodianshipInfoRecord);
    *(v59 + ((v18 + v58 + 7) & 0xFFFFFFFFFFFFFFF8)) = v101;
    v62 = *v56;
    v63 = type metadata accessor for TaskPriority();
    v64 = v102;
    (*(*(v63 - 8) + 56))(v102, 1, 1, v63);
    v65 = v97;
    sub_10007C3BC(v30, v97, type metadata accessor for FetchRecoveryRecordsRequest);
    v66 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v67 = (v94 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    *(v68 + 24) = 0;
    sub_10007C488(v65, v68 + v66, type metadata accessor for FetchRecoveryRecordsRequest);
    *(v68 + v67) = v62;
    v69 = (v68 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v69 = sub_10007C048;
    v69[1] = v59;
    v70 = v106;

    v71 = v110;

    sub_1000BCD5C(0, 0, v64, &unk_10033F610, v68);

    sub_10007C424(v30, type metadata accessor for FetchRecoveryRecordsRequest);
    sub_10000839C(v113);
  }

  else
  {

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_100008D04(v72, qword_1003FAAB8);
    v73 = v99;
    sub_10007C3BC(v44, v99, type metadata accessor for CustodianshipInfoRecord);
    v74 = v100;
    sub_10007C3BC(v44, v100, type metadata accessor for CustodianshipInfoRecord);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v113[0] = swift_slowAlloc();
      *v77 = 136315650;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v77 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v113);
      *(v77 + 12) = 2080;
      v78 = v109;
      v79 = (v73 + v109[6]);
      v80 = *v79;
      v81 = v79[1];

      sub_10007C424(v73, type metadata accessor for CustodianshipInfoRecord);
      v82 = sub_10021145C(v80, v81, v113);

      *(v77 + 14) = v82;
      *(v77 + 22) = 2048;
      v83 = *(v74 + v78[7]);
      sub_10007C424(v74, type metadata accessor for CustodianshipInfoRecord);
      *(v77 + 24) = v83;
      _os_log_impl(&_mh_execute_header, v75, v76, "%s - Custodian Owner %s\nwith status %ld did not require a health check.", v77, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10007C424(v74, type metadata accessor for CustodianshipInfoRecord);

      sub_10007C424(v73, type metadata accessor for CustodianshipInfoRecord);
    }

    v84 = v106;
    v85 = v110;
    sub_10024BFE4(0);
    if (v84)
    {
      [v84 updateTaskResultWithError:0];
    }

    v86 = v103;
    v87 = v104;
    v88 = v105;
    (*(v104 + 16))(v103, v111 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__analyticsReporter, v105);
    Dependency.wrappedValue.getter();
    (*(v87 + 8))(v86, v88);
    swift_getObjectType();
    sub_100246FA8(v84);
    swift_unknownObjectRelease();
    v108(0);
  }
}

uint64_t sub_1000741AC()
{
  v1 = OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__custodianStorage;
  v2 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__storageController;
  v4 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__versionProvider;
  v6 = sub_100005814(&unk_1003DA890, &unk_10033F628);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__accountStore;
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__analyticsReporter;
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianHealthCheck()
{
  result = qword_1003DA680;
  if (!qword_1003DA680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000743D8()
{
  sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &unk_1003DA6B0, &unk_1003E55D0, &unk_100340CC0);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
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

uint64_t sub_1000745F8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = a8;
  v44 = a3;
  v45 = a7;
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v12 = type metadata accessor for CustodianshipInfoRecord();
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  v14 = __chkstk_darwin(v12);
  v15 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v35 - v16;
  v38 = a2;
  dispatch_group_enter(a2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v36 = a9;
  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAB8);
  v40 = a1;
  sub_10007C3BC(a1, v17, type metadata accessor for CustodianshipInfoRecord);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v35[1] = v9;
    v21 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v21 = 136315394;
    if (qword_1003D7DC8 != -1)
    {
      swift_once();
    }

    *(v21 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, &v46);
    *(v21 + 12) = 2080;
    v22 = *(v12 + 20);
    type metadata accessor for UUID();
    sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_10007C424(v17, type metadata accessor for CustodianshipInfoRecord);
    v26 = sub_10021145C(v23, v25, &v46);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s - performing health check for %s.", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10007C424(v17, type metadata accessor for CustodianshipInfoRecord);
  }

  v27 = v40;
  sub_10007C3BC(v40, v15, type metadata accessor for CustodianshipInfoRecord);
  v28 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v29 = (v13 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_10007C488(v15, v31 + v28, type metadata accessor for CustodianshipInfoRecord);
  v32 = v38;
  *(v31 + v29) = v39;
  *(v31 + v30) = v32;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;

  v33 = v32;
  sub_1000736A4(v27, v41, v42, v43, v45, sub_10007CF00, v31);
}

void sub_100074A04(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = type metadata accessor for CustodianshipInfoRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v32 = a4;
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    sub_10007C3BC(a2, v11, type metadata accessor for CustodianshipInfoRecord);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v31 = a3;
      v15 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v15 = 136315394;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v15 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, &v33);
      *(v15 + 12) = 2080;
      v16 = *(v8 + 20);
      type metadata accessor for UUID();
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      sub_10007C424(v11, type metadata accessor for CustodianshipInfoRecord);
      v20 = sub_10021145C(v17, v19, &v33);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s - error performing health check for %s.", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10007C424(v11, type metadata accessor for CustodianshipInfoRecord);
    }

    v21 = (a2 + *(v8 + 24));
    v22 = v21[1];
    v33 = *v21;
    v34 = v22;

    v23._countAndFlagsBits = 58;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v24 = a2 + *(v8 + 20);
    v25._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v25);

    v26 = v33;
    v27 = v34;
    v28 = swift_allocObject();
    v29 = v32;
    *(v28 + 16) = v32;
    v30 = v29;
    sub_10031F174(v26, v27, a1, sub_10007CFEC, v28);
  }

  else
  {

    dispatch_group_leave(a4);
  }
}

uint64_t sub_100074DC4(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v53 = a7;
  v57 = a5;
  v58 = a6;
  v59 = a3;
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  __chkstk_darwin(v10);
  v54 = &v51 - v12;
  v13 = type metadata accessor for CustodianshipInfoRecord();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CustodianRecoveryRecords(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100005814(&unk_1003D9210, &qword_10033ECA8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v51 - v23);
  sub_100012D04(a1, &v51 - v23, &unk_1003D9210, &qword_10033ECA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = a2;
    v52 = a4;
    v25 = *v24;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAB8);
    sub_10007C3BC(v53, v16, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v29 = 136315650;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v29 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v60);
      *(v29 + 12) = 2080;
      v31 = *(v13 + 20);
      type metadata accessor for UUID();
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_10007C424(v16, type metadata accessor for CustodianshipInfoRecord);
      v35 = sub_10021145C(v32, v34, v60);

      *(v29 + 14) = v35;
      *(v29 + 22) = 2112;
      v36 = _convertErrorToNSError(_:)();
      *(v29 + 24) = v36;
      *v30 = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "   %s - error fetching health check record for    %s: %@", v29, 0x20u);
      sub_100008D3C(v30, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_10007C424(v16, type metadata accessor for CustodianshipInfoRecord);
    }

    _convertErrorToNSError(_:)();
    v41 = qword_1003E3F40;
    v42 = v59;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v43 = v57;
    v44 = v51;
    if (*((*&v42[v41] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v42[v41] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v50 = *((*&v42[v41] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_10024BFE4(0);
    v45 = v52;
    if (v52)
    {
      v46 = _convertErrorToNSError(_:)();
      [v45 updateTaskResultWithError:v46];
    }

    v47 = v54;
    v48 = v55;
    v49 = v56;
    (*(v55 + 16))(v54, v44 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__analyticsReporter, v56);
    Dependency.wrappedValue.getter();
    (*(v48 + 8))(v47, v49);
    swift_getObjectType();
    sub_100246FA8(v45);
    swift_unknownObjectRelease();
    swift_errorRetain();
    v43(v25);
  }

  else
  {
    sub_10007C488(v24, v20, type metadata accessor for CustodianRecoveryRecords);
    v37 = swift_allocObject();
    v37[2] = a4;
    v37[3] = a2;
    v38 = v58;
    v37[4] = v57;
    v37[5] = v38;
    v39 = a4;

    sub_1000755D8(v20, v59, sub_10007C3A8, v37);

    return sub_10007C424(v20, type metadata accessor for CustodianRecoveryRecords);
  }
}

uint64_t sub_10007544C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  if (a2)
  {
    if (a1)
    {
      v13 = _convertErrorToNSError(_:)();
    }

    else
    {
      v13 = 0;
    }

    [a2 updateTaskResultWithError:v13];
  }

  (*(v9 + 16))(v12, a3 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__analyticsReporter, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v12, v8);
  swift_getObjectType();
  sub_100246FA8(a2);
  swift_unknownObjectRelease();
  return a4(a1);
}

uint64_t sub_1000755D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v121 = a3;
  v122 = a4;
  v115 = *v4;
  v7 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v112 = *(v7 - 8);
  v113 = v7;
  v8 = *(v112 + 64);
  __chkstk_darwin(v7);
  v109 = &v100 - v9;
  v117 = type metadata accessor for CustodianHealthRecord();
  v110 = *(v117 - 8);
  v10 = *(v110 + 64);
  v11 = __chkstk_darwin(v117);
  v114 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v12;
  __chkstk_darwin(v11);
  v108 = &v100 - v13;
  v14 = type metadata accessor for Date();
  v119 = *(v14 - 8);
  v120 = v14;
  v15 = *(v119 + 64);
  v16 = __chkstk_darwin(v14);
  v107 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v17;
  __chkstk_darwin(v16);
  v118 = &v100 - v18;
  v105 = sub_100005814(&unk_1003DA890, &unk_10033F628);
  v104 = *(v105 - 8);
  v19 = *(v104 + 64);
  __chkstk_darwin(v105);
  v103 = &v100 - v20;
  v21 = type metadata accessor for CustodianRecoveryRecords(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v100 - v26;
  v28 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v100 - v30;
  v32 = a1 + *(v21 + 20);
  v33 = type metadata accessor for CustodianRecoveryInfoRecord();
  sub_100012D04(v32 + *(v33 + 44), v31, &qword_1003D8B60, &unk_10033F210);
  v34 = type metadata accessor for UUID();
  v35 = *(*(v34 - 8) + 48);
  v116 = v34;
  LOBYTE(v32) = v35(v31, 1) != 1;
  v36 = v31;
  v37 = a1;
  sub_100008D3C(v36, &qword_1003D8B60, &unk_10033F210);
  v123 = a2;
  *(a2 + qword_1003E3F48) = v32;
  v38 = *(v21 + 24);
  if (sub_100076344(v37 + v38))
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100008D04(v39, qword_1003FAAB8);
    sub_10007C3BC(v37, v27, type metadata accessor for CustodianRecoveryRecords);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v124[0] = swift_slowAlloc();
      *v42 = 136315394;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v42 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v124);
      *(v42 + 12) = 2080;
      v43 = *(v21 + 24) + *(v117 + 20);
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      sub_10007C424(v27, type metadata accessor for CustodianRecoveryRecords);
      v47 = sub_10021145C(v44, v46, v124);

      *(v42 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "%s - custodian %s is due for a health check.", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10007C424(v27, type metadata accessor for CustodianRecoveryRecords);
    }

    return sub_10007686C(v37, v123, v121, v122);
  }

  else
  {
    v48 = v4;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    sub_100008D04(v102, qword_1003FAAB8);
    sub_10007C3BC(v37, v25, type metadata accessor for CustodianRecoveryRecords);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v101 = v38;
      v51 = v37;
      v52 = swift_slowAlloc();
      v124[0] = swift_slowAlloc();
      *v52 = 136315394;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v52 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v124);
      *(v52 + 12) = 2080;
      v53 = *(v21 + 24) + *(v117 + 20);
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      sub_10007C424(v25, type metadata accessor for CustodianRecoveryRecords);
      v57 = sub_10021145C(v54, v56, v124);

      *(v52 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, " %s - custodian %s has  had a recent health check, ending check early.", v52, 0x16u);
      swift_arrayDestroy();

      v38 = v101;
    }

    else
    {
      v51 = v37;

      sub_10007C424(v25, type metadata accessor for CustodianRecoveryRecords);
    }

    v59 = v104;
    v60 = *(v104 + 16);
    v101 = v48;
    v61 = v103;
    v62 = v105;
    v60(v103, v48 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__versionProvider, v105);
    Dependency.wrappedValue.getter();
    (*(v59 + 8))(v61, v62);
    v63 = sub_1000080F8(v124, v125);
    v64 = sub_10007D020(*v63);
    sub_10000839C(v124);
    v65 = v118;
    Date.init()();
    v66 = v119;
    v67 = v120;
    v68 = v107;
    (*(v119 + 16))(v107, v65, v120);
    v69 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v70 = (v106 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    (*(v66 + 32))(v71 + v69, v68, v67);
    *(v71 + v70) = xmmword_10033F590;
    v107 = v71;
    *(v71 + ((v70 + 23) & 0xFFFFFFFFFFFFFFF8)) = v64;
    v72 = v108;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    sub_100008D04(v102, qword_1003FAA88);
    sub_10007C3BC(v51 + v38, v72, type metadata accessor for CustodianHealthRecord);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v124[0] = v76;
      *v75 = 136315138;
      v77 = *(v117 + 20);
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v38;
      v81 = v80;
      sub_10007C424(v72, type metadata accessor for CustodianHealthRecord);
      v82 = sub_10021145C(v78, v81, v124);
      v38 = v79;

      *(v75 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v73, v74, "Updating custodian health record %s.", v75, 0xCu);
      sub_10000839C(v76);
    }

    else
    {

      sub_10007C424(v72, type metadata accessor for CustodianHealthRecord);
    }

    v84 = v112;
    v83 = v113;
    v85 = v109;
    (*(v112 + 16))(v109, v101 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__storageController, v113);
    Dependency.wrappedValue.getter();
    (*(v84 + 8))(v85, v83);
    v86 = sub_1000080F8(v124, v125);
    v87 = v114;
    sub_10007C3BC(v51 + v38, v114, type metadata accessor for CustodianHealthRecord);
    v88 = (*(v110 + 80) + 16) & ~*(v110 + 80);
    v89 = (v111 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
    v90 = v38;
    v91 = (v89 + 23) & 0xFFFFFFFFFFFFFFF8;
    v92 = swift_allocObject();
    sub_10007C488(v87, v92 + v88, type metadata accessor for CustodianHealthRecord);
    v93 = (v92 + v89);
    v94 = v122;
    *v93 = v121;
    v93[1] = v94;
    v95 = v92 + v91;
    v96 = v123;
    *v95 = v123;
    *(v95 + 8) = 1;
    *(v92 + ((v91 + 17) & 0xFFFFFFFFFFFFFFF8)) = v115;
    v97 = *v86;
    v98 = v107;

    v99 = v96;
    sub_100079834(v51 + v90, sub_10007C3B8, v98, 0, sub_10007C4F0, v92);

    (*(v119 + 8))(v118, v120);
    return sub_10000839C(v124);
  }
}

uint64_t sub_100076344(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;
  v11 = sub_100005814(&unk_1003DA890, &unk_10033F628);
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  if ([objc_opt_self() isNeverSkipCustodianCheckEnabled])
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAB8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Preference set to never skip health check", v19, 2u);
    }

    v20 = 1;
  }

  else
  {
    sub_10028B6C8();
    v21 = type metadata accessor for CustodianHealthRecord();
    v22 = v21;
    v23 = *(v21 + 40);
    v48 = a1;
    v24 = a1 + v23;
    if ((*(v24 + 8) & 1) == 0)
    {
      v46 = v21;
      v47 = v1;
      v25 = *v24;
      v26 = v12[2];
      v44 = OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__versionProvider;
      v45 = v26;
      v26(v15, v1 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__versionProvider, v11);
      Dependency.wrappedValue.getter();
      v42 = v12[1];
      v42(v15, v11);
      v27 = sub_1000080F8(v49, v50);
      v28 = sub_10007D020(*v27);
      sub_10000839C(v49);
      v43 = v25;
      v29 = v28 < v25;
      v22 = v46;
      if (v29)
      {
        if (qword_1003D7F48 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_100008D04(v30, qword_1003FAAB8);

        v31 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v41))
        {
          v32 = swift_slowAlloc();
          v40 = v32;
          *v32 = 134218240;
          *(v32 + 4) = v43;
          *(v32 + 12) = 2048;
          v45(v15, v47 + v44, v11);
          v33 = v31;
          Dependency.wrappedValue.getter();
          v42(v15, v11);
          v34 = sub_1000080F8(v49, v50);
          v35 = sub_10007D020(*v34);
          sub_10000839C(v49);
          v36 = v40;
          *(v40 + 14) = v35;

          _os_log_impl(&_mh_execute_header, v33, v41, " Last HealthCheck v%ld which is greater than current  known v%ld. Taking extended time  for eligibility.", v36, 0x16u);
        }

        else
        {
        }

        sub_10028B98C();
      }
    }

    (*(v4 + 16))(v8, v48 + *(v22 + 24), v3);
    Date.init(timeInterval:since:)();
    Date.init()();
    sub_10007CC70(&qword_1003DA8D8, &type metadata accessor for Date);
    v37 = dispatch thunk of static Comparable.< infix(_:_:)();
    v38 = *(v4 + 8);
    v38(v8, v3);
    v38(v10, v3);
    v20 = v37 ^ 1;
  }

  return v20 & 1;
}

uint64_t sub_10007686C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v107 = a4;
  v103 = *v4;
  v9 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v99 = *(v9 - 8);
  v100 = v9;
  v10 = *(v99 + 64);
  __chkstk_darwin(v9);
  v96 = &v86 - v11;
  v94 = type metadata accessor for CustodianHealthRecord();
  v97 = *(v94 - 8);
  v12 = *(v97 + 64);
  v13 = __chkstk_darwin(v94);
  v101 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v14;
  __chkstk_darwin(v13);
  v95 = &v86 - v15;
  v16 = type metadata accessor for Date();
  v105 = *(v16 - 8);
  v106 = v16;
  v17 = *(v105 + 64);
  v18 = __chkstk_darwin(v16);
  v93 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v104 = &v86 - v19;
  v92 = sub_100005814(&unk_1003DA890, &unk_10033F628);
  v91 = *(v92 - 8);
  v20 = *(v91 + 64);
  __chkstk_darwin(v92);
  v22 = &v86 - v21;
  v23 = type metadata accessor for CustodianRecoveryRecords(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1 + *(v25 + 20);
  v29 = v28 + *(type metadata accessor for CustodianRecoveryInfoRecord() + 32);
  v30 = *(v29 + 8);
  if (v30 >> 60 == 15)
  {
    v90 = a3;
    v102 = v5;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_100008D04(v88, qword_1003FAAB8);
    v31 = a1;
    sub_10007C3BC(a1, v27, type metadata accessor for CustodianRecoveryRecords);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v107;
    v36 = v90;
    v89 = a2;
    if (v34)
    {
      v87 = v31;
      v37 = swift_slowAlloc();
      v108[0] = swift_slowAlloc();
      *v37 = 136315394;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v37 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v108);
      *(v37 + 12) = 2080;
      v38 = *(v23 + 24) + *(v94 + 20);
      type metadata accessor for UUID();
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      sub_10007C424(v27, type metadata accessor for CustodianRecoveryRecords);
      v42 = sub_10021145C(v39, v41, v108);

      *(v37 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v32, v33, "%s - custodian %s has no recovery key, update timestamp.", v37, 0x16u);
      swift_arrayDestroy();

      v31 = v87;
      v35 = v107;
      v36 = v90;
    }

    else
    {

      sub_10007C424(v27, type metadata accessor for CustodianRecoveryRecords);
    }

    v90 = *(v23 + 24);
    v45 = swift_allocObject();
    *(v45 + 16) = v36;
    *(v45 + 24) = v35;
    v107 = v45;
    v46 = v91;
    v47 = v92;
    (*(v91 + 16))(v22, v102 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__versionProvider, v92);

    Dependency.wrappedValue.getter();
    (*(v46 + 8))(v22, v47);
    v48 = sub_1000080F8(v108, v109);
    v49 = sub_10007D020(*v48);
    sub_10000839C(v108);
    v50 = v104;
    Date.init()();
    v52 = v105;
    v51 = v106;
    v53 = v93;
    (*(v105 + 16))(v93, v50, v106);
    v54 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v55 = (v17 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    (*(v52 + 32))(v56 + v54, v53, v51);
    *(v56 + v55) = xmmword_10033F590;
    v93 = v56;
    *(v56 + ((v55 + 23) & 0xFFFFFFFFFFFFFFF8)) = v49;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    sub_100008D04(v88, qword_1003FAA88);
    v57 = v90;
    v58 = v95;
    sub_10007C3BC(v31 + v90, v95, type metadata accessor for CustodianHealthRecord);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v108[0] = v62;
      *v61 = 136315138;
      v63 = *(v94 + 20);
      type metadata accessor for UUID();
      v64 = v31;
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      sub_10007C424(v58, type metadata accessor for CustodianHealthRecord);
      v68 = sub_10021145C(v65, v67, v108);
      v31 = v64;

      *(v61 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "Updating custodian health record %s.", v61, 0xCu);
      sub_10000839C(v62);
    }

    else
    {

      sub_10007C424(v58, type metadata accessor for CustodianHealthRecord);
    }

    v70 = v99;
    v69 = v100;
    v71 = v96;
    (*(v99 + 16))(v96, v102 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__storageController, v100);
    Dependency.wrappedValue.getter();
    (*(v70 + 8))(v71, v69);
    v72 = sub_1000080F8(v108, v109);
    v73 = v101;
    sub_10007C3BC(v31 + v57, v101, type metadata accessor for CustodianHealthRecord);
    v74 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v75 = (v98 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = v31;
    v77 = (v75 + 23) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    sub_10007C488(v73, v78 + v74, type metadata accessor for CustodianHealthRecord);
    v79 = (v78 + v75);
    v80 = v107;
    *v79 = sub_10007C52C;
    v79[1] = v80;
    v81 = v78 + v77;
    v82 = v89;
    *v81 = v89;
    *(v81 + 8) = 768;
    *(v78 + ((v77 + 17) & 0xFFFFFFFFFFFFFFF8)) = v103;
    v83 = *v72;
    v84 = v93;

    v85 = v82;
    sub_100079834(v76 + v57, sub_10007D01C, v84, 0, sub_10007D018, v78);

    (*(v105 + 8))(v104, v106);
    return sub_10000839C(v108);
  }

  else
  {
    v43 = *v29;
    sub_100015D6C(*v29, *(v29 + 8));
    sub_10007736C(a1, v43, v30, a2, a3, v107);

    return sub_100015D58(v43, v30);
  }
}

uint64_t sub_10007736C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v194 = a6;
  v192 = a5;
  v195 = a4;
  v178 = a1;
  v193 = *v6;
  v188 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v187 = *(v188 - 8);
  v9 = *(v187 + 64);
  __chkstk_darwin(v188);
  v186 = &v171 - v10;
  v198 = type metadata accessor for CustodianHealthRecord();
  v189 = *(v198 - 8);
  v11 = *(v189 + 64);
  v12 = __chkstk_darwin(v198);
  v175 = &v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v191 = &v171 - v15;
  v190 = v16;
  __chkstk_darwin(v14);
  v174 = &v171 - v17;
  v18 = type metadata accessor for Date();
  v201 = *(v18 - 8);
  v202 = v18;
  v19 = *(v201 + 64);
  v20 = __chkstk_darwin(v18);
  v196 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v183 = &v171 - v23;
  v182 = v24;
  __chkstk_darwin(v22);
  v176 = &v171 - v25;
  v181 = sub_100005814(&unk_1003DA890, &unk_10033F628);
  v180 = *(v181 - 8);
  v26 = *(v180 + 64);
  __chkstk_darwin(v181);
  v179 = &v171 - v27;
  v197 = type metadata accessor for CustodianRecoveryRecords(0);
  v28 = *(*(v197 - 8) + 64);
  v29 = __chkstk_darwin(v197);
  v177 = &v171 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v173 = &v171 - v31;
  v32 = type metadata accessor for SHA256Digest();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v171 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SHA256();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v42 = &v171 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v199 = &v171 - v43;
  SHA256.init()();
  sub_10007CC70(&unk_1003DA8A0, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100015D6C(a2, a3);
  sub_10018F16C(a2, a3);
  sub_100012324(a2, a3);
  dispatch thunk of HashFunction.finalize()();
  v44 = *(v38 + 8);
  v45 = v42;
  v46 = v178;
  v44(v45, v37);
  v209 = v32;
  v210 = sub_10007CC70(&qword_1003D8D70, &type metadata accessor for SHA256Digest);
  v47 = sub_10000DBEC(&v208);
  (*(v33 + 16))(v47, v36, v32);
  sub_1000080F8(&v208, v209);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v33 + 8))(v36, v32);
  v48 = v203;
  sub_10000839C(&v208);
  v44(v199, v37);
  v49 = *(v198 + 28);
  v199 = (v46 + *(v197 + 24));
  v50 = &v199[v49];
  v51 = *v50;
  v52 = v50[1];
  v184 = *(&v48 + 1);
  v185 = v48;
  if (v52 >> 60 == 15)
  {
    if (*(&v48 + 1) >> 60 == 15)
    {
      sub_100015D6C(v48, *(&v48 + 1));
      sub_100052704(v51, v52);
      sub_100015D58(v51, v52);
LABEL_22:
      v71 = v173;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v196 = type metadata accessor for Logger();
      sub_100008D04(v196, qword_1003FAAB8);
      sub_10007C3BC(v46, v71, type metadata accessor for CustodianRecoveryRecords);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        *v74 = 136315394;
        if (qword_1003D7DC8 != -1)
        {
          swift_once();
        }

        *(v74 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, &v208);
        *(v74 + 12) = 2080;
        v75 = *(v197 + 24) + *(v198 + 20);
        type metadata accessor for UUID();
        sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
        v76 = dispatch thunk of CustomStringConvertible.description.getter();
        v78 = v77;
        sub_10007C424(v71, type metadata accessor for CustodianRecoveryRecords);
        v79 = sub_10021145C(v76, v78, &v208);

        *(v74 + 14) = v79;
        _os_log_impl(&_mh_execute_header, v72, v73, "%s - custodian %s recovery key checksum is valid.", v74, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10007C424(v71, type metadata accessor for CustodianRecoveryRecords);
      }

      v80 = v180;
      v81 = v179;
      v82 = v181;
      (*(v180 + 16))(v179, v200 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__versionProvider, v181);
      Dependency.wrappedValue.getter();
      (*(v80 + 8))(v81, v82);
      v83 = sub_1000080F8(&v208, v209);
      v84 = sub_10007D020(*v83);
      sub_10000839C(&v208);
      v85 = v176;
      Date.init()();
      v87 = v201;
      v86 = v202;
      v88 = v183;
      (*(v201 + 16))(v183, v85, v202);
      v89 = (*(v87 + 80) + 16) & ~*(v87 + 80);
      v90 = (v182 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
      v91 = swift_allocObject();
      (*(v87 + 32))(v91 + v89, v88, v86);
      *(v91 + v90) = xmmword_10033F590;
      *(v91 + ((v90 + 23) & 0xFFFFFFFFFFFFFFF8)) = v84;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      sub_100008D04(v196, qword_1003FAA88);
      v92 = v174;
      sub_10007C3BC(v199, v174, type metadata accessor for CustodianHealthRecord);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v208 = v96;
        *v95 = 136315138;
        v97 = *(v198 + 20);
        type metadata accessor for UUID();
        sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
        v98 = dispatch thunk of CustomStringConvertible.description.getter();
        v100 = v99;
        sub_10007C424(v92, type metadata accessor for CustodianHealthRecord);
        v101 = sub_10021145C(v98, v100, &v208);

        *(v95 + 4) = v101;
        _os_log_impl(&_mh_execute_header, v93, v94, "Updating custodian health record %s.", v95, 0xCu);
        sub_10000839C(v96);
      }

      else
      {

        sub_10007C424(v92, type metadata accessor for CustodianHealthRecord);
      }

      v102 = v187;
      v103 = v186;
      v104 = v188;
      (*(v187 + 16))(v186, v200 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__storageController, v188);
      Dependency.wrappedValue.getter();
      (*(v102 + 8))(v103, v104);
      v105 = sub_1000080F8(&v208, v209);
      v106 = v199;
      v107 = v191;
      sub_10007C3BC(v199, v191, type metadata accessor for CustodianHealthRecord);
      v108 = (*(v189 + 80) + 16) & ~*(v189 + 80);
      v109 = (v190 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
      v110 = (v109 + 23) & 0xFFFFFFFFFFFFFFF8;
      v111 = swift_allocObject();
      sub_10007C488(v107, v111 + v108, type metadata accessor for CustodianHealthRecord);
      v112 = (v111 + v109);
      v113 = v194;
      *v112 = v192;
      v112[1] = v113;
      v114 = v111 + v110;
      v115 = v195;
      *v114 = v195;
      *(v114 + 8) = 257;
      *(v111 + ((v110 + 17) & 0xFFFFFFFFFFFFFFF8)) = v193;
      v116 = *v105;

      v117 = v115;
      sub_100079834(v106, sub_10007D01C, v91, 0, sub_10007D018, v111);

      sub_100012324(v185, v184);
      (*(v201 + 8))(v176, v202);
      return sub_10000839C(&v208);
    }

    goto LABEL_5;
  }

  if (*(&v48 + 1) >> 60 == 15)
  {
LABEL_5:
    sub_100015D6C(v48, *(&v48 + 1));
    sub_100015D6C(v48, *(&v48 + 1));
    sub_100052704(v51, v52);
    sub_100015D58(v51, v52);
    sub_100015D58(v48, *(&v48 + 1));
    goto LABEL_6;
  }

  sub_100015D6C(v48, *(&v48 + 1));
  sub_100015D6C(v48, *(&v48 + 1));
  sub_100015D6C(v48, *(&v48 + 1));
  sub_100052704(v51, v52);
  v70 = sub_10018F69C(v51, v52, v48, *(&v48 + 1));
  sub_100015D58(v48, *(&v48 + 1));
  sub_100012324(v48, *(&v48 + 1));
  sub_100015D58(v51, v52);
  if (v70)
  {
    sub_100012324(v48, *(&v48 + 1));
    goto LABEL_22;
  }

LABEL_6:
  v174 = 0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v176 = type metadata accessor for Logger();
  v53 = sub_100008D04(v176, qword_1003FAAB8);
  v54 = v177;
  sub_10007C3BC(v46, v177, type metadata accessor for CustodianRecoveryRecords);
  sub_100015D6C(v48, *(&v48 + 1));
  sub_100052704(v51, v52);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  sub_100015D58(v51, v52);
  sub_100012324(v48, *(&v48 + 1));
  LODWORD(v178) = v56;
  if (os_log_type_enabled(v55, v56))
  {
    v172 = v55;
    v173 = v53;
    v57 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v207 = v171;
    *v57 = 136315906;
    if (qword_1003D7DC8 != -1)
    {
      swift_once();
    }

    *(v57 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, &v207);
    *(v57 + 12) = 2080;
    v58 = *(v197 + 24) + *(v198 + 20);
    type metadata accessor for UUID();
    sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
    v59 = v177;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    sub_10007C424(v59, type metadata accessor for CustodianRecoveryRecords);
    v63 = sub_10021145C(v60, v62, &v207);

    *(v57 + 14) = v63;
    *(v57 + 22) = 2080;
    if (v52 >> 60 == 15)
    {
      v64 = 0;
    }

    else
    {
      v64 = v51;
    }

    if (v52 >> 60 == 15)
    {
      v65 = 0xC000000000000000;
    }

    else
    {
      v65 = v52;
    }

    sub_100052704(v51, v52);
    v66 = sub_10007BD50(v64, v65);
    if (v67)
    {
      v68 = v66;
      v69 = v67;
      sub_100012324(v64, v65);
      goto LABEL_41;
    }

    *&v206 = v64;
    *(&v206 + 1) = v65;
    sub_100015D6C(v64, v65);
    sub_100005814(&qword_1003DA8B0, &qword_10033F638);
    if (swift_dynamicCast())
    {
      sub_10003E950(&v203, &v208);
      sub_1000080F8(&v208, v209);
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        sub_100012324(v64, v65);
        sub_1000080F8(&v208, v209);
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        v69 = *(&v203 + 1);
        v68 = v203;
        sub_10000839C(&v208);
        goto LABEL_41;
      }

      sub_10000839C(&v208);
    }

    else
    {
      v205 = 0;
      v203 = 0u;
      v204 = 0u;
      sub_100008D3C(&v203, &qword_1003DA8B8, qword_10033F640);
    }

    v68 = sub_10007BB2C(v64, v65);
    v69 = v118;
    sub_100012324(v64, v65);
LABEL_41:
    v119 = sub_10021145C(v68, v69, &v207);

    *(v57 + 24) = v119;
    *(v57 + 32) = 2080;
    sub_100015D6C(v48, *(&v48 + 1));
    v120 = sub_10007BD50(v48, *(&v48 + 1));
    if (!v121)
    {
      v206 = v48;
      sub_100015D6C(v48, *(&v48 + 1));
      sub_100005814(&qword_1003DA8B0, &qword_10033F638);
      if (swift_dynamicCast())
      {
        sub_10003E950(&v203, &v208);
        sub_1000080F8(&v208, v209);
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_100012324(v48, *(&v48 + 1));
          sub_1000080F8(&v208, v209);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v122 = *(&v203 + 1);
          v123 = v203;
          sub_10000839C(&v208);
LABEL_49:
          v124 = sub_10021145C(v123, v122, &v207);

          *(v57 + 34) = v124;
          v125 = v172;
          _os_log_impl(&_mh_execute_header, v172, v178, "%s - checksum has changed for %s. Old Hash: %s New Hash: %s", v57, 0x2Au);
          swift_arrayDestroy();

          goto LABEL_50;
        }

        sub_10000839C(&v208);
      }

      else
      {
        v205 = 0;
        v203 = 0u;
        v204 = 0u;
        sub_100008D3C(&v203, &qword_1003DA8B8, qword_10033F640);
      }

      v120 = sub_10007BB2C(v48, *(&v48 + 1));
    }

    v123 = v120;
    v122 = v121;
    sub_100012324(v48, *(&v48 + 1));
    goto LABEL_49;
  }

  sub_10007C424(v54, type metadata accessor for CustodianRecoveryRecords);
LABEL_50:
  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v208 = v129;
    *v128 = 136315138;
    if (qword_1003D7DC8 != -1)
    {
      swift_once();
    }

    *(v128 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, &v208);
    _os_log_impl(&_mh_execute_header, v126, v127, "%s - updating health record with new checksum", v128, 0xCu);
    sub_10000839C(v129);
  }

  v130 = v180;
  v131 = v179;
  v132 = v181;
  (*(v180 + 16))(v179, v200 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__versionProvider, v181);
  Dependency.wrappedValue.getter();
  (*(v130 + 8))(v131, v132);
  v133 = sub_1000080F8(&v208, v209);
  v134 = sub_10007D020(*v133);
  sub_10000839C(&v208);
  v135 = v196;
  Date.init()();
  v137 = v201;
  v136 = v202;
  v138 = v183;
  (*(v201 + 16))(v183, v135, v202);
  v139 = (*(v137 + 80) + 16) & ~*(v137 + 80);
  v140 = (v182 + v139 + 7) & 0xFFFFFFFFFFFFFFF8;
  v141 = swift_allocObject();
  (*(v137 + 32))(v141 + v139, v138, v136);
  *(v141 + v140) = v48;
  *(v141 + ((v140 + 23) & 0xFFFFFFFFFFFFFFF8)) = v134;
  sub_100015D6C(v48, *(&v48 + 1));
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  sub_100008D04(v176, qword_1003FAA88);
  v142 = v175;
  sub_10007C3BC(v199, v175, type metadata accessor for CustodianHealthRecord);
  v143 = Logger.logObject.getter();
  v144 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v208 = v146;
    *v145 = 136315138;
    v147 = *(v198 + 20);
    type metadata accessor for UUID();
    sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
    v148 = dispatch thunk of CustomStringConvertible.description.getter();
    v150 = v149;
    sub_10007C424(v142, type metadata accessor for CustodianHealthRecord);
    v151 = sub_10021145C(v148, v150, &v208);

    *(v145 + 4) = v151;
    _os_log_impl(&_mh_execute_header, v143, v144, "Updating custodian health record %s.", v145, 0xCu);
    sub_10000839C(v146);
  }

  else
  {

    sub_10007C424(v142, type metadata accessor for CustodianHealthRecord);
  }

  v152 = v187;
  v153 = v186;
  v154 = v188;
  (*(v187 + 16))(v186, v200 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__storageController, v188);
  Dependency.wrappedValue.getter();
  (*(v152 + 8))(v153, v154);
  v155 = sub_1000080F8(&v208, v209);
  v156 = v199;
  v157 = v191;
  sub_10007C3BC(v199, v191, type metadata accessor for CustodianHealthRecord);
  v158 = (*(v189 + 80) + 16) & ~*(v189 + 80);
  v159 = (v190 + v158 + 7) & 0xFFFFFFFFFFFFFFF8;
  v160 = (v159 + 23) & 0xFFFFFFFFFFFFFFF8;
  v161 = swift_allocObject();
  sub_10007C488(v157, v161 + v158, type metadata accessor for CustodianHealthRecord);
  v162 = (v161 + v159);
  v163 = v194;
  *v162 = v192;
  v162[1] = v163;
  v164 = v161 + v160;
  v165 = v195;
  *v164 = v195;
  *(v164 + 8) = 513;
  *(v161 + ((v160 + 17) & 0xFFFFFFFFFFFFFFF8)) = v193;
  v166 = *v155;

  v167 = v165;

  sub_100079834(v156, sub_10007D01C, v141, 0, sub_10007D018, v161);

  v168 = v185;
  v169 = v184;
  sub_100012324(v185, v184);

  sub_100012324(v168, v169);
  (*(v201 + 8))(v196, v202);
  return sub_10000839C(&v208);
}

void sub_100078DF4(uint64_t a1, void (*a2)())
{
  type metadata accessor for AACustodianError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10007CC70(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  a2();
}

uint64_t sub_100078EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a3;
  v34 = a5;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustodianHealthRecord();
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007C3BC(a1, v18, type metadata accessor for CustodianHealthRecord);
  (*(v11 + 16))(v14, a2, v10);
  v19 = type metadata accessor for UUID();
  v20 = *(*(v19 - 8) + 16);
  v20(a6, v18, v19);
  v20(a6 + v15[5], &v18[v15[5]], v19);
  v21 = v15[8];
  v22 = *&v18[v21];
  v23 = *&v18[v21 + 8];
  v24 = (a6 + v21);
  *v24 = v22;
  v24[1] = v23;
  (*(v11 + 32))(a6 + v15[6], v14, v10);
  *(a6 + v15[9]) = v18[v15[9]];
  v25 = v15[7];
  if (a4 >> 60 == 15)
  {
    v26 = *&v18[v25];
    v27 = *&v18[v25 + 8];
    v28 = (a6 + v25);
    *v28 = v26;
    v28[1] = v27;
    sub_100052704(v26, v27);
    v29 = v33;
  }

  else
  {
    v30 = (a6 + v25);
    v29 = v33;
    *v30 = v33;
    v30[1] = a4;
  }

  sub_100015D6C(v22, v23);
  sub_100052704(v29, a4);
  result = sub_10007C424(v18, type metadata accessor for CustodianHealthRecord);
  v32 = a6 + v15[10];
  *v32 = v34;
  *(v32 + 8) = 0;
  return result;
}

uint64_t sub_100079128(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, int a6, int a7)
{
  v45[0] = a6;
  v45[1] = a7;
  v46 = a4;
  v47 = a3;
  v10 = type metadata accessor for CustodianHealthRecord();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v45 - v15;
  v17 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v45 - v19);
  sub_100012D04(a1, v45 - v19, &qword_1003D91E8, &qword_100346AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    sub_10007C3BC(a2, v14, type metadata accessor for CustodianHealthRecord);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v48[0] = swift_slowAlloc();
      *v25 = 136315650;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v25 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v48);
      *(v25 + 12) = 2080;
      v27 = *(v10 + 20);
      type metadata accessor for UUID();
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      sub_10007C424(v14, type metadata accessor for CustodianHealthRecord);
      v31 = sub_10021145C(v28, v30, v48);

      *(v25 + 14) = v31;
      *(v25 + 22) = 2112;
      v32 = _convertErrorToNSError(_:)();
      *(v25 + 24) = v32;
      *v26 = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s - error updating custodian health record %s: %@", v25, 0x20u);
      sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_10007C424(v14, type metadata accessor for CustodianHealthRecord);
    }

    _convertErrorToNSError(_:)();
    v42 = qword_1003E3F40;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a5 + v42) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + v42) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v44 = *((*(a5 + v42) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_10024BFE4(0);
    swift_errorRetain();
    v47(v21);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAB8);
    sub_10007C3BC(a2, v16, type metadata accessor for CustodianHealthRecord);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v48[0] = swift_slowAlloc();
      *v36 = 136315394;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v36 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v48);
      *(v36 + 12) = 2080;
      v37 = *(v10 + 20);
      type metadata accessor for UUID();
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_10007C424(v16, type metadata accessor for CustodianHealthRecord);
      v41 = sub_10021145C(v38, v40, v48);

      *(v36 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s - custodian health record %s was updated.", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10007C424(v16, type metadata accessor for CustodianHealthRecord);
    }

    [objc_opt_self() postRecoveryContactChangedNotification];
    v47(0);
    sub_10024BFE4(v45[0] & 1);
    return sub_100008D3C(v20, &qword_1003D91E8, &qword_100346AC0);
  }
}

uint64_t sub_100079834(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v60 = type metadata accessor for CustodianHealthRecord();
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
  sub_10007C3BC(a1, v21, type metadata accessor for CustodianHealthRecord);
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
    sub_10007C424(v21, type metadata accessor for CustodianHealthRecord);
    sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v12 + 8))(v15, v11);
    v31 = sub_10021145C(v28, v30, v68);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v68);
    _os_log_impl(&_mh_execute_header, v23, v24, "Storage Controller: Saving record with modification to shared DB, recordID: %s, type: %s", v26, 0x16u);
    swift_arrayDestroy();
    a1 = v55;

    v10 = v54;
  }

  else
  {
    sub_10007C424(v21, type metadata accessor for CustodianHealthRecord);
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
  sub_10007C3BC(a1, v57, type metadata accessor for CustodianHealthRecord);
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = (v16 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_10007C488(v36, v41 + v37, type metadata accessor for CustodianHealthRecord);
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

  v51 = [v50 sharedCloudDatabase];

  v52 = v67;
  sub_100175070(v67, v51, sub_10007C91C, v41);

  sub_10007C424(v52, type metadata accessor for CustodianHealthRecord);
  return sub_10000839C(v68);
}

uint64_t sub_100079F20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v158 = a8;
  v157 = a7;
  v167 = a6;
  v168 = a3;
  v170 = a4;
  v171 = a5;
  v172 = a2;
  v169 = a1;
  v156 = type metadata accessor for DispatchWorkItemFlags();
  v155 = *(v156 - 8);
  v8 = *(v155 + 64);
  __chkstk_darwin(v156);
  v153 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for DispatchQoS();
  v152 = *(v154 - 8);
  v10 = *(v152 + 64);
  __chkstk_darwin(v154);
  v151 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v150 = *(v12 - 8);
  v13 = *(v150 + 64);
  v14 = __chkstk_darwin(v12);
  v148 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v149 = &v137 - v16;
  v147 = type metadata accessor for DispatchQoS.QoSClass();
  v146 = *(v147 - 8);
  v17 = *(v146 + 64);
  __chkstk_darwin(v147);
  v145 = &v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v143 = &v137 - v21;
  v163 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v162 = *(v163 - 8);
  v22 = *(v162 + 64);
  __chkstk_darwin(v163);
  v24 = &v137 - v23;
  v166 = type metadata accessor for UUID();
  v165 = *(v166 - 1);
  v25 = *(v165 + 64);
  __chkstk_darwin(v166);
  v164 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for CustodianHealthRecord();
  v159 = *(v142 - 8);
  v27 = *(v159 + 64);
  v28 = __chkstk_darwin(v142);
  v139 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v28);
  v144 = &v137 - v30;
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
  v43 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43);
  v161 = (&v137 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45);
  v48 = (&v137 - v47);
  sub_100012D04(v169, &v137 - v47, &qword_1003D91E8, &qword_100346AC0);
  v160 = v43;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v138 = v12;
    v169 = *v48;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    v50 = sub_100008D04(v49, qword_1003FAAE8);
    sub_10007C3BC(v172, v37, type metadata accessor for CustodianHealthRecord);
    swift_errorRetain();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      aBlock[0] = v162;
      *v53 = 136315650;
      v54 = v165;
      v55 = *(v165 + 16);
      v163 = v50;
      v56 = v164;
      v57 = v166;
      v55(v164, v37, v166);
      sub_10007C424(v37, type metadata accessor for CustodianHealthRecord);
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      (*(v54 + 8))(v56, v57);
      v61 = sub_10021145C(v58, v60, aBlock);

      *(v53 + 4) = v61;
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, aBlock);
      *(v53 + 22) = 2112;
      swift_errorRetain();
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 24) = v62;
      v63 = v137;
      *v137 = v62;
      _os_log_impl(&_mh_execute_header, v51, v52, "Storage Controller: Failed to save record with modification to ShareDB, recordID: %s, type: %s, error: %@", v53, 0x20u);
      sub_100008D3C(v63, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10007C424(v37, type metadata accessor for CustodianHealthRecord);
    }

    if (v167 <= 2 && (swift_getErrorValue(), (v75 = sub_1002DE99C(v179)) != 0))
    {
      v76 = v75;
      type metadata accessor for CKError(0);
      v178 = 14;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10007CC70(&qword_1003DA8D0, type metadata accessor for CKError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v77 = aBlock[0];
      v178 = aBlock[0];
      _BridgedStoredNSError.code.getter();

      v78 = sub_1002DF114(v177, v76);
      if (v78)
      {

        v79 = sub_1002DEE74(v76);
        v80 = v138;
        if (v79)
        {
          v81 = v142;
          v82 = *(v172 + *(v142 + 36));
          v83 = v79;
          v84 = v143;
          sub_1000EC0A4(v83, v82, v143);
          (*(v159 + 56))(v84, 0, 1, v81);
          v110 = v84;
          v111 = v141;
          sub_10007C488(v110, v141, type metadata accessor for CustodianHealthRecord);
          v112 = v140;
          sub_10007C3BC(v111, v140, type metadata accessor for CustodianHealthRecord);
          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.error.getter();
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
            (*(v165 + 16))(v164, v112, v166);
            sub_10007C424(v112, type metadata accessor for CustodianHealthRecord);
            sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
            v120 = dispatch thunk of CustomStringConvertible.description.getter();
            v122 = v121;
            v123 = v118;
            v76 = v117;
            (*(v116 + 8))(v123, v119);
            v124 = sub_10021145C(v120, v122, aBlock);

            *(v115 + 4) = v124;
            *(v115 + 12) = 2080;
            *(v115 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, aBlock);
            _os_log_impl(&_mh_execute_header, v113, v114, "Storage Controller: Trying to resave record with modification to shared DB after conflict resolution serverRecordID: %s, type: %s", v115, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
            sub_10007C424(v112, type metadata accessor for CustodianHealthRecord);
          }

          v125 = v141;
          sub_100079834(v141, v157, v158, v167 + 1, v170, v171);

          return sub_10007C424(v125, type metadata accessor for CustodianHealthRecord);
        }
      }

      else
      {
        v80 = v138;
      }

      if (sub_1002DF0EC(v76) || sub_1002DF0F4(v76) || sub_1002DF0FC(v76) || sub_1002DF104(v76) || sub_1002DF10C(v76))
      {
        sub_1002DEFEC();
        sub_100071C74();
        v85 = v146;
        v86 = v145;
        v87 = v147;
        (*(v146 + 104))(v145, enum case for DispatchQoS.QoSClass.default(_:), v147);
        v165 = static OS_dispatch_queue.global(qos:)();
        (*(v85 + 8))(v86, v87);
        v88 = v148;
        static DispatchTime.now()();
        v89 = v149;
        + infix(_:_:)();
        v164 = v76;
        v166 = *(v150 + 8);
        (v166)(v88, v80);
        v90 = v144;
        sub_10007C3BC(v172, v144, type metadata accessor for CustodianHealthRecord);
        v91 = (*(v159 + 80) + 16) & ~*(v159 + 80);
        v92 = (v27 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
        v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
        v94 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
        v95 = swift_allocObject();
        sub_10007C488(v90, v95 + v91, type metadata accessor for CustodianHealthRecord);
        *(v95 + v92) = v168;
        v96 = (v95 + v93);
        v97 = v158;
        *v96 = v157;
        v96[1] = v97;
        *(v95 + v94) = v167;
        v98 = (v95 + ((v94 + 15) & 0xFFFFFFFFFFFFFFF8));
        v99 = v171;
        *v98 = v170;
        v98[1] = v99;
        v175 = sub_10007CBA0;
        v176 = v95;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        v174 = &unk_1003A6668;
        v100 = _Block_copy(aBlock);

        v101 = v151;
        static DispatchQoS.unspecified.getter();
        v178 = _swiftEmptyArrayStorage;
        sub_10007CC70(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000383E4();
        v102 = v153;
        v103 = v156;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v104 = v165;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v100);

        (*(v155 + 8))(v102, v103);
        (*(v152 + 8))(v101, v154);
        (v166)(v89, v138);
      }

      v126 = v139;
      sub_10007C3BC(v172, v139, type metadata accessor for CustodianHealthRecord);
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
        (*(v165 + 16))(v164, v126, v166);
        sub_10007C424(v126, type metadata accessor for CustodianHealthRecord);
        sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
        v133 = dispatch thunk of CustomStringConvertible.description.getter();
        v135 = v134;
        (*(v130 + 8))(v131, v132);
        v136 = sub_10021145C(v133, v135, aBlock);

        *(v129 + 4) = v136;
        *(v129 + 12) = 2080;
        *(v129 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, aBlock);
        _os_log_impl(&_mh_execute_header, v127, v128, "Storage Controller: No resolution so return error recordID: %s, type: %s", v129, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10007C424(v126, type metadata accessor for CustodianHealthRecord);
      }

      v106 = v161;
      *v161 = v169;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v170(v106);
    }

    else
    {
      v106 = v161;
      *v161 = v169;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v170(v106);
    }

    return sub_100008D3C(v106, &qword_1003D91E8, &qword_100346AC0);
  }

  sub_10007C488(v48, v42, type metadata accessor for CustodianHealthRecord);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_100008D04(v64, qword_1003FAAE8);
  sub_10007C3BC(v172, v40, type metadata accessor for CustodianHealthRecord);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    aBlock[0] = v172;
    *v67 = 136315394;
    v68 = v165;
    v69 = v164;
    v70 = v166;
    (*(v165 + 16))(v164, v40, v166);
    sub_10007C424(v40, type metadata accessor for CustodianHealthRecord);
    sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID);
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    (*(v68 + 8))(v69, v70);
    v74 = sub_10021145C(v71, v73, aBlock);

    *(v67 + 4) = v74;
    *(v67 + 12) = 2080;
    *(v67 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, aBlock);
    _os_log_impl(&_mh_execute_header, v65, v66, "Storage Controller: Successfully saved record with modification to shared DB, recordID: %s, type: %s", v67, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10007C424(v40, type metadata accessor for CustodianHealthRecord);
  }

  v107 = v162;
  v108 = v163;
  (*(v162 + 16))(v24, v168 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v163);
  Dependency.wrappedValue.getter();
  (*(v107 + 8))(v24, v108);
  v109 = *sub_1000080F8(aBlock, v174);
  sub_10017E73C(v42, 0, 2, v170, v171);
  sub_10007C424(v42, type metadata accessor for CustodianHealthRecord);
  return sub_10000839C(aBlock);
}