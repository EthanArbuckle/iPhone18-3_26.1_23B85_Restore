uint64_t sub_10017DA48(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v171 = a1;
  v3 = v2;
  v5 = sub_1001D0680();
  v176 = *(v5 - 8);
  v6 = *(v176 + 64);
  __chkstk_darwin(v5, v7);
  v161 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_100011AC0(&qword_10022FEF0, &qword_1001E1BC0);
  v9 = *(*(v172 - 8) + 64);
  __chkstk_darwin(v172, v10);
  v175 = &v140 - v11;
  v12 = sub_100011AC0(&qword_10022FEF8, &qword_1001E1BC8);
  v13 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12 - 8, v14);
  v165 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15, v17);
  v178 = &v140 - v19;
  __chkstk_darwin(v18, v20);
  v174 = &v140 - v21;
  v158 = type metadata accessor for ThimbledEvent();
  v22 = *(*(v158 - 8) + 64);
  __chkstk_darwin(v158, v23);
  v160 = (&v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v157 = *(v159 - 8);
  v25 = *(v157 + 64);
  __chkstk_darwin(v159, v26);
  v156 = &v140 - v27;
  v145 = type metadata accessor for TrustedRequestConfiguration();
  v28 = *(*(v145 - 8) + 64);
  v30 = __chkstk_darwin(v145, v29);
  v154 = &v140 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v32);
  v152 = &v140 - v33;
  v150 = sub_1001CFD60();
  v149 = *(v150 - 8);
  v34 = *(v149 + 64);
  v36 = __chkstk_darwin(v150, v35);
  v146 = &v140 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36, v38);
  v147 = &v140 - v39;
  v163 = type metadata accessor for RateLimitTimingDetails(0);
  v40 = *(*(v163 - 8) + 64);
  v42 = __chkstk_darwin(v163, v41);
  v162 = (&v140 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v42, v44);
  v151 = &v140 - v45;
  v148 = type metadata accessor for RateLimitConfiguration(0);
  v153 = *(v148 - 8);
  v46 = *(v153 + 64);
  __chkstk_darwin(v148, v47);
  v155 = (&v140 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_1001D0FF0();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49, v52);
  v54 = &v140 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1001D06D0();
  v56 = *(v55 - 8);
  v57 = v56[8];
  v59 = __chkstk_darwin(v55, v58);
  v169 = &v140 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v59, v61);
  v64 = &v140 - v63;
  __chkstk_darwin(v62, v65);
  v66 = v49;
  v68 = &v140 - v67;
  (*(v50 + 16))(v54, v171, v66);

  sub_100129638(v54, a2, v68);
  v69 = *(*v3 + 392);
  v70 = v56[2];
  v179 = v55;
  v167 = v70;
  v168 = v56 + 2;
  v70(v64, v68, v55);

  v71 = sub_1001D0E50();
  v72 = sub_1001D1DD0();

  v73 = os_log_type_enabled(v71, v72);
  v173 = v56;
  v177 = v68;
  v164 = v3;
  if (v73)
  {
    v74 = swift_slowAlloc();
    v166 = v5;
    v75 = v74;
    v182 = swift_slowAlloc();
    *v75 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v180 = sub_1001D23A0();
    v181 = v76;
    v183._countAndFlagsBits = 58;
    v183._object = 0xE100000000000000;
    sub_1001D18B0(v183);
    v77 = sub_1000954E0(v180, v181, &v182);

    *(v75 + 4) = v77;
    *(v75 + 12) = 2080;
    v78 = sub_1001D0620();
    v80 = v79;
    v171 = v56[1];
    v171(v64, v179);
    v81 = sub_1000954E0(v78, v80, &v182);

    *(v75 + 14) = v81;
    _os_log_impl(&_mh_execute_header, v71, v72, "%s %s", v75, 0x16u);
    swift_arrayDestroy();

    v5 = v166;
  }

  else
  {

    v171 = v56[1];
    v171(v64, v179);
  }

  v82 = sub_1001D0640();
  v84 = v174;
  v83 = v175;
  v85 = v178;
  if (v82)
  {
    v86 = sub_1001D05D0();
    if ((v87 & 1) == 0)
    {
      v166 = v5;
      v88 = *&v86;
      v89 = v164;
      v90 = v164 + qword_100243500;
      v91 = v145;
      v92 = *(v145 + 112);
      v93 = (v164 + qword_100243500 + *(v145 + 108));
      v94 = v93[1];
      v143 = *v93;
      v95 = *(v164 + qword_100243500 + v92 + 8);
      v142 = *(v164 + qword_100243500 + v92);

      v144 = v94;

      v141 = sub_1001D0890();
      v140 = v96;
      v97 = sub_1001D0870();
      if (*(v90 + *(v91 + 76)) == 1)
      {
        v98 = sub_1001A6DA4(&off_10021CA38);
        swift_arrayDestroy();

        v99 = v170;
        v100 = sub_1001A735C(v97, v98, v89);
        v101 = v99;

        swift_bridgeObjectRelease_n();

        v97 = v100;
      }

      else
      {
        v101 = v170;
      }

      v102 = sub_10015A2E8(v97);
      v170 = v101;

      v103 = v147;
      _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
      v104 = v152;
      sub_1001AFCB4(v90, v152, type metadata accessor for TrustedRequestConfiguration);
      v105 = v149;
      v106 = v146;
      v107 = v150;
      (*(v149 + 16))(v146, v103, v150);
      v108 = *(v104 + 64);
      v109 = v154;
      sub_1001AFCB4(v104, v154, type metadata accessor for TrustedRequestConfiguration);
      v110 = v162;
      *v162 = 0.0;
      if (v88 < 0.0)
      {
        v111 = 0.0;
      }

      else
      {
        v111 = v88;
      }

      v112 = *(v109 + 56);
      if (*(v109 + 48) >= v111)
      {
        v113 = v111;
      }

      else
      {
        v113 = *(v109 + 48);
      }

      v110[1] = v113;
      v114 = v110 + *(v163 + 24);
      sub_1001CFCE0();
      v115 = *(v105 + 8);
      v115(v106, v107);
      sub_1001AFB98(v104, type metadata accessor for TrustedRequestConfiguration);
      v115(v103, v107);
      if (v108 == 0.0)
      {
        v108 = *(v109 + 64);
      }

      sub_1001AFB98(v109, type metadata accessor for TrustedRequestConfiguration);
      v116 = 1.0;
      if (v108 <= 1.0)
      {
        v116 = v108;
      }

      if (v108 < 0.0)
      {
        v116 = 0.0;
      }

      v117 = v162;
      *(v162 + *(v163 + 28)) = v113 * v116;
      v118 = v151;
      sub_1001B0368(v117, v151, type metadata accessor for RateLimitTimingDetails);
      v119 = v155;
      v120 = v144;
      *v155 = v143;
      v119[1] = v120;
      v119[2] = v142;
      v119[3] = v95;
      v121 = v140;
      v119[4] = v141;
      v119[5] = v121;
      v119[6] = v102;
      sub_1001B0368(v118, v119 + *(v148 + 20), type metadata accessor for RateLimitTimingDetails);
      v122 = *(*v164 + 360);
      sub_100011AC0(&qword_100227AE8, &qword_1001D3680);
      v123 = *(v153 + 72);
      v124 = (*(v153 + 80) + 32) & ~*(v153 + 80);
      v125 = swift_allocObject();
      *(v125 + 16) = xmmword_1001D39F0;
      sub_1001AFCB4(v119, v125 + v124, type metadata accessor for RateLimitConfiguration);
      *v160 = v125;
      swift_storeEnumTagMultiPayload();
      sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
      v126 = v156;
      sub_1001D1BC0();
      (*(v157 + 8))(v126, v159);
      sub_1001AFB98(v119, type metadata accessor for RateLimitConfiguration);
      v5 = v166;
      v84 = v174;
      v83 = v175;
      v85 = v178;
    }
  }

  sub_1001D0690();
  v127 = v176;
  (*(v176 + 104))(v85, enum case for RopesResponseMetadata.Code.ok(_:), v5);
  (*(v127 + 56))(v85, 0, 1, v5);
  v128 = *(v172 + 48);
  sub_10001208C(v84, v83, &qword_10022FEF8, &qword_1001E1BC8);
  sub_10001208C(v85, v83 + v128, &qword_10022FEF8, &qword_1001E1BC8);
  v129 = *(v127 + 48);
  if (v129(v83, 1, v5) != 1)
  {
    v133 = v165;
    sub_10001208C(v83, v165, &qword_10022FEF8, &qword_1001E1BC8);
    v134 = v129(v83 + v128, 1, v5);
    v131 = v179;
    if (v134 != 1)
    {
      v136 = v176;
      v137 = v83 + v128;
      v138 = v161;
      (*(v176 + 32))(v161, v137, v5);
      sub_1001B0458(&qword_10022FF00, &type metadata accessor for RopesResponseMetadata.Code);
      LODWORD(v175) = sub_1001D1790();
      v139 = *(v136 + 8);
      v139(v138, v5);
      sub_100011F00(v178, &qword_10022FEF8, &qword_1001E1BC8);
      sub_100011F00(v84, &qword_10022FEF8, &qword_1001E1BC8);
      v139(v133, v5);
      sub_100011F00(v83, &qword_10022FEF8, &qword_1001E1BC8);
      v132 = v177;
      if (v175)
      {
        return (v171)(v132, v131);
      }

LABEL_28:
      v167(v169, v132, v131);
      sub_1001D0200();
      sub_1001B0458(&qword_1002292F0, &type metadata accessor for PrivateCloudComputeError);
      swift_allocError();
      sub_1001D01A0();
      swift_willThrow();
      return (v171)(v132, v131);
    }

    sub_100011F00(v178, &qword_10022FEF8, &qword_1001E1BC8);
    sub_100011F00(v84, &qword_10022FEF8, &qword_1001E1BC8);
    (*(v176 + 8))(v133, v5);
LABEL_27:
    sub_100011F00(v83, &qword_10022FEF0, &qword_1001E1BC0);
    v132 = v177;
    goto LABEL_28;
  }

  sub_100011F00(v85, &qword_10022FEF8, &qword_1001E1BC8);
  sub_100011F00(v84, &qword_10022FEF8, &qword_1001E1BC8);
  v130 = v129(v83 + v128, 1, v5);
  v131 = v179;
  if (v130 != 1)
  {
    goto LABEL_27;
  }

  sub_100011F00(v83, &qword_10022FEF8, &qword_1001E1BC8);
  v132 = v177;
  return (v171)(v132, v131);
}

uint64_t sub_10017EADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for TrustedRequestConfiguration();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration(0);
  v12 = *(*(v50 - 8) + 64);
  v14 = __chkstk_darwin(v50, v13);
  v51 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14, v16);
  v18 = &v46[-v17];
  v19 = sub_1001CFD60();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8, v21);
  v23 = &v46[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_100011AC0(&qword_100229348, &unk_1001D64C0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8, v26);
  v28 = &v46[-v27];
  _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
  sub_1001AFCB4(a1, v18, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
  sub_1001AFCB4(a2 + qword_100243500, v11, type metadata accessor for TrustedRequestConfiguration);
  sub_10012B050(v23, v18, v11, v28);
  v29 = type metadata accessor for RateLimitConfiguration(0);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    v48 = a3;
    v49 = v3;
    sub_100011F00(v28, &qword_100229348, &unk_1001D64C0);
    v31 = *(*a2 + 392);
    sub_1001AFCB4(a1, v51, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);

    v32 = sub_1001D0E50();
    v33 = sub_1001D1DE0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v47 = v33;
      v35 = v34;
      v54 = swift_slowAlloc();
      *v35 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v52 = sub_1001D23A0();
      v53 = v36;
      v55._countAndFlagsBits = 58;
      v55._object = 0xE100000000000000;
      sub_1001D18B0(v55);
      v37 = sub_1000954E0(v52, v53, &v54);

      *(v35 + 4) = v37;
      *(v35 + 12) = 2080;
      v38 = v51;
      sub_1001AFCB4(v51, v18, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      v39 = sub_1001D1820();
      v41 = v40;
      sub_1001AFB98(v38, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
      v42 = sub_1000954E0(v39, v41, &v54);

      *(v35 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v32, v47, "%s unable to process rate limit configuration %s", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001AFB98(v51, type metadata accessor for Proto_Ropes_RateLimit_RateLimitConfiguration);
    }

    v43 = 1;
    v44 = v48;
  }

  else
  {
    sub_1001B0368(v28, a3, type metadata accessor for RateLimitConfiguration);
    v43 = 0;
    v44 = a3;
  }

  return (*(v30 + 56))(v44, v43, 1, v29);
}

uint64_t sub_10017EFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 160) = a6;
  *(v7 + 88) = a4;
  *(v7 + 96) = a5;
  *(v7 + 72) = a2;
  *(v7 + 80) = a3;
  v9 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest(0);
  *(v7 + 104) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 64) = a7;

  return _swift_task_switch(sub_10017F078, 0, 0);
}

uint64_t sub_10017F078()
{
  v35 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  *(swift_task_alloc() + 16) = v3;
  sub_1001B0458(&qword_1002299C0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  sub_1001D0B50();

  result = sub_1001A89CC(v1, 0, 1, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest, &qword_1002299C0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  *(v0 + 120) = result;
  *(v0 + 128) = v5;
  v6 = v5 >> 62;
  v30 = result;
  v31 = v5;
  if ((v5 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v5);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(result + 16);
  v8 = *(result + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v7 = HIDWORD(result) - result;
  }

LABEL_11:
  v10 = *(v0 + 88);
  result = swift_beginAccess();
  v11 = *(v10 + 16);
  v12 = __OFSUB__(v11, v7);
  v13 = v11 - v7;
  if (v12)
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = *(v0 + 72);
  *(*(v0 + 88) + 16) = v13;
  v15 = *(*v14 + 392);
  swift_retain_n();

  v16 = sub_1001D0E50();
  v17 = sub_1001D1DD0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 88);
    v29 = *(v0 + 96);
    v19 = *(v0 + 72);
    v20 = *(v0 + 160);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v22;
    *v21 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v33 = sub_1001D23A0();
    v34 = v23;
    v37._countAndFlagsBits = 2629690;
    v37._object = 0xE300000000000000;
    sub_1001D18B0(v37);
    v38._countAndFlagsBits = sub_10016B71C(v29, v20);
    sub_1001D18B0(v38);

    v39._countAndFlagsBits = 41;
    v39._object = 0xE100000000000000;
    sub_1001D18B0(v39);
    v24 = sub_1000954E0(v33, v34, &v32);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2048;
    swift_beginAccess();
    v25 = *(v18 + 16);

    *(v21 + 14) = v25;

    _os_log_impl(&_mh_execute_header, v16, v17, "%s Sending auth message on data stream. Remaining budget before ready for more chunks: %ld", v21, 0x16u);
    sub_100011CF0(v22);
  }

  else
  {
    v26 = *(v0 + 88);
  }

  sub_1001D1090();
  sub_100012038(v30, v31);
  v27 = sub_1001D1060();
  *(v0 + 136) = v27;
  v28 = swift_task_alloc();
  *(v0 + 144) = v28;
  *v28 = v0;
  v28[1] = sub_10017F584;

  return (sub_100138CDC)(v30, v31, v27, 0, &type metadata for NWAsyncConnection.Outbound, &protocol witness table for NWAsyncConnection.Outbound);
}

uint64_t sub_10017F584()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = v2[17];
  v6 = v2[16];
  v7 = v2[15];

  sub_100011E48(v7, v6);
  if (v0)
  {
    v8 = sub_10017F778;
  }

  else
  {
    v8 = sub_10017F6EC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10017F6EC()
{
  v1 = v0[14];
  sub_100011E48(v0[15], v0[16]);
  sub_1001AFB98(v1, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10017F778()
{
  sub_100011E48(v0[15], v0[16]);
  v1 = v0[19];
  sub_1001AFB98(v0[14], type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10017F804(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 336) = v18;
  *(v8 + 320) = v17;
  *(v8 + 304) = a8;
  *(v8 + 312) = v16;
  *(v8 + 617) = a7;
  *(v8 + 288) = a5;
  *(v8 + 296) = a6;
  *(v8 + 616) = a4;
  *(v8 + 272) = a2;
  *(v8 + 280) = a3;
  v9 = sub_1001D20D0();
  *(v8 + 344) = v9;
  v10 = *(v9 - 8);
  *(v8 + 352) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  v12 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest(0);
  *(v8 + 368) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 200) = v16;

  return _swift_task_switch(sub_10017F920, 0, 0);
}

void sub_10017F920()
{
  v108 = v0;
  v1 = *(v0 + 288);
  *(v0 + 384) = *(*v1 + 392);

  v2 = sub_1001D0E50();
  v3 = sub_1001D1DD0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v102 = *(v0 + 296);
    v5 = *(v0 + 617);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v105 = v7;
    *v6 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v106 = sub_1001D23A0();
    v107 = v8;
    v110._countAndFlagsBits = 2629690;
    v110._object = 0xE300000000000000;
    sub_1001D18B0(v110);
    v111._countAndFlagsBits = sub_10016B71C(v102, v5);
    sub_1001D18B0(v111);

    v112._countAndFlagsBits = 41;
    v112._object = 0xE100000000000000;
    sub_1001D18B0(v112);
    v9 = sub_1000954E0(v106, v107, &v105);

    *(v6 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Received user data to forward to server", v6, 0xCu);
    sub_100011CF0(v7);
  }

  if (*(v0 + 616) == 1)
  {
    v10 = *(v0 + 280);
    **(v0 + 304) = 1;
    v11 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v11 != 2 || *(*(v0 + 272) + 16) == *(*(v0 + 272) + 24))
      {
        goto LABEL_20;
      }
    }

    else if (v11)
    {
      if (*(v0 + 272) == *(v0 + 272) >> 32)
      {
LABEL_20:
        sub_1001D1090();
        v33 = sub_1001D1060();
        *(v0 + 392) = v33;
        v34 = swift_task_alloc();
        *(v0 + 400) = v34;
        *v34 = v0;
        v34[1] = sub_100180AF4;
        v35 = 0;
        v36 = 0xF000000000000000;
        v37 = v33;
        v38 = 1;
LABEL_81:

        (sub_100138CDC)(v35, v36, v37, v38, &type metadata for NWAsyncConnection.Outbound, &protocol witness table for NWAsyncConnection.Outbound);
        return;
      }
    }

    else if (!*(v0 + 286))
    {
      goto LABEL_20;
    }
  }

  v13 = *(v0 + 368);
  v12 = *(v0 + 376);
  v14 = *(v0 + 280);
  v15 = *(v0 + 288);
  v16 = *(v0 + 272);
  v17 = swift_task_alloc();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  sub_1001B0458(&qword_1002299C0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  sub_1001D0B50();

  v18 = sub_1001A89CC(v12, *(v15 + qword_100243500 + 24), 0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest, &qword_1002299C0, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  *(v0 + 416) = v18;
  *(v0 + 424) = v19;
  v20 = v18;
  v21 = v19;
  v22 = *(v0 + 320);
  *(v0 + 432) = *(*(v0 + 288) + *(**(v0 + 288) + 368));
  sub_100164990();
  v23 = v21 >> 62;
  if (*v22)
  {
    v24 = *(v0 + 288);

    v25 = sub_1001D0E50();
    LODWORD(v1) = sub_1001D1DD0();

    if (os_log_type_enabled(v25, v1))
    {
      v26 = *(v0 + 288);
      v102 = *(v0 + 296);
      LODWORD(v101) = *(v0 + 617);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v105 = v28;
      *v27 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v106 = sub_1001D23A0();
      v107 = v29;
      v113._countAndFlagsBits = 2629690;
      v113._object = 0xE300000000000000;
      sub_1001D18B0(v113);
      v114._countAndFlagsBits = sub_10016B71C(v102, v101);
      sub_1001D18B0(v114);

      v115._countAndFlagsBits = 41;
      v115._object = 0xE100000000000000;
      sub_1001D18B0(v115);
      v30 = sub_1000954E0(v106, v107, &v105);

      *(v27 + 4) = v30;
      v23 = v21 >> 62;
      _os_log_impl(&_mh_execute_header, v25, v1, "%s Sending message on data stream, ready for more chunks received", v27, 0xCu);
      sub_100011CF0(v28);
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        v31 = BYTE6(v21);
LABEL_34:
        *(v0 + 440) = v31;
        *(v0 + 256) = *(v0 + 312);
        sub_1001D1090();
        v44 = sub_1001D1060();
        *(v0 + 448) = v44;
        v45 = swift_task_alloc();
        *(v0 + 456) = v45;
        *v45 = v0;
        v45[1] = sub_100180CC0;
        v38 = *(v0 + 616);
        v35 = v20;
        v36 = v21;
        v37 = v44;
        goto LABEL_81;
      }

      goto LABEL_29;
    }

    if (v23 != 2)
    {
      v31 = 0;
      goto LABEL_34;
    }

    v40 = *(v20 + 16);
    v39 = *(v20 + 24);
    v41 = __OFSUB__(v39, v40);
    v31 = v39 - v40;
    if (!v41)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  else if (v23 <= 1)
  {
    if (v23)
    {
      if (__OFSUB__(HIDWORD(v20), v20))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v32 = HIDWORD(v20) - v20;
    }

    else
    {
      v32 = BYTE6(v21);
    }

    goto LABEL_36;
  }

  if (v23 == 2)
  {
    v43 = *(v20 + 16);
    v42 = *(v20 + 24);
    v32 = v42 - v43;
    if (__OFSUB__(v42, v43))
    {
      __break(1u);
LABEL_29:
      LODWORD(v31) = HIDWORD(v20) - v20;
      if (!__OFSUB__(HIDWORD(v20), v20))
      {
        v31 = v31;
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_85;
    }
  }

  else
  {
    v32 = 0;
  }

LABEL_36:
  v46 = *(v0 + 328);
  swift_beginAccess();
  v47 = *(v46 + 16);
  v48 = *(v0 + 328);
  v49 = *(v0 + 288);
  if (v47 >= v32)
  {
    v58 = *(v0 + 328);
    swift_retain_n();

    v50 = sub_1001D0E50();
    v59 = sub_1001D1DD0();

    v60 = os_log_type_enabled(v50, v59);
    v61 = *(v0 + 328);
    if (v60)
    {
      v101 = *(v0 + 296);
      v104 = v59;
      v62 = *(v0 + 288);
      v100 = *(v0 + 617);
      v49 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v105 = v102;
      *v49 = 136315394;
      LODWORD(v1) = v23;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v106 = sub_1001D23A0();
      v107 = v63;
      v119._countAndFlagsBits = 2629690;
      v119._object = 0xE300000000000000;
      sub_1001D18B0(v119);
      v120._countAndFlagsBits = sub_10016B71C(v101, v100);
      sub_1001D18B0(v120);

      v121._countAndFlagsBits = 41;
      v121._object = 0xE100000000000000;
      sub_1001D18B0(v121);
      v64 = sub_1000954E0(v106, v107, &v105);

      *(v49 + 4) = v64;
      *(v49 + 12) = 2048;
      swift_beginAccess();
      v65 = *(v61 + 16);

      *(v49 + 14) = v65;

      _os_log_impl(&_mh_execute_header, v50, v104, "%s Sending message on data stream, within initial budget: %ld", v49, 0x16u);
      sub_100011CF0(v102);
    }

    else
    {
      v67 = *(v0 + 328);
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        v68 = BYTE6(v21);
        goto LABEL_59;
      }

LABEL_56:
      LODWORD(v68) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v68 = v68;
LABEL_59:
      *(v0 + 584) = v68;
      *(v0 + 208) = *(v0 + 312);
      sub_1001D1090();
      v73 = sub_1001D1060();
      *(v0 + 592) = v73;
      v74 = swift_task_alloc();
      *(v0 + 600) = v74;
      *v74 = v0;
      v74[1] = sub_100183394;
      v38 = *(v0 + 616);
      v35 = v20;
      v36 = v21;
      v37 = v73;
      goto LABEL_81;
    }

    if (v23 != 2)
    {
      v68 = 0;
      goto LABEL_59;
    }

    v70 = *(v20 + 16);
    v69 = *(v20 + 24);
    v41 = __OFSUB__(v69, v70);
    v68 = v69 - v70;
    if (!v41)
    {
      goto LABEL_59;
    }

    __break(1u);
  }

  else
  {
    sub_100012038(v20, v21);

    sub_100012038(v20, v21);

    v50 = sub_1001D0E50();
    v51 = sub_1001D1DD0();

    if (!os_log_type_enabled(v50, v51))
    {
      v66 = *(v0 + 328);

      sub_100011E48(v20, v21);

      sub_100011E48(v20, v21);
      goto LABEL_64;
    }

    LOBYTE(v102) = v51;
    v103 = v23;
    v52 = *(v0 + 288);
    v53 = *(v0 + 296);
    v54 = *(v0 + 617);
    v49 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v105 = v101;
    *v49 = 136315650;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v106 = sub_1001D23A0();
    v107 = v55;
    v116._countAndFlagsBits = 2629690;
    v116._object = 0xE300000000000000;
    sub_1001D18B0(v116);
    LODWORD(v1) = v103;
    v117._countAndFlagsBits = sub_10016B71C(v53, v54);
    sub_1001D18B0(v117);

    v118._countAndFlagsBits = 41;
    v118._object = 0xE100000000000000;
    sub_1001D18B0(v118);
    v56 = sub_1000954E0(v106, v107, &v105);

    *(v49 + 4) = v56;
    *(v49 + 12) = 2048;
    if (v103 <= 1)
    {
      if (v103)
      {
        sub_100011E48(v20, v21);
        LODWORD(v57) = HIDWORD(v20) - v20;
        if (__OFSUB__(HIDWORD(v20), v20))
        {
LABEL_88:
          __break(1u);
          return;
        }

        v57 = v57;
      }

      else
      {
        sub_100011E48(v20, v21);
        v57 = BYTE6(v21);
      }

      goto LABEL_63;
    }
  }

  if (v1 == 2)
  {
    v72 = *(v20 + 16);
    v71 = *(v20 + 24);
    sub_100011E48(v20, v21);
    v57 = v71 - v72;
    if (!__OFSUB__(v71, v72))
    {
      goto LABEL_63;
    }

    __break(1u);
    goto LABEL_56;
  }

  sub_100011E48(v20, v21);
  v57 = 0;
LABEL_63:
  v75 = *(v0 + 328);
  *(v49 + 14) = v57;
  sub_100011E48(v20, v21);
  *(v49 + 22) = 2048;
  swift_beginAccess();
  v76 = *(v75 + 16);

  *(v49 + 24) = v76;

  _os_log_impl(&_mh_execute_header, v50, v102, "%s Sending message on data stream (%ld bytes), above initial budget: %ld bytes", v49, 0x20u);
  sub_100011CF0(v101);

LABEL_64:

  v77 = *(v0 + 328);
  swift_beginAccess();
  v78 = *(v77 + 16);
  if (v78 >= 1)
  {
    sub_100012038(v20, v21);
    sub_10007A708(v78, v20, v21, &v106);
    v79 = v106;
    v80 = v107;
    *(v0 + 472) = v106;
    *(v0 + 480) = v80;
    v81 = v80 >> 62;
    if ((v80 >> 62) > 1)
    {
      if (v81 != 2)
      {
        v82 = 0;
        goto LABEL_80;
      }

      v97 = *(v79 + 16);
      v96 = *(v79 + 24);
      v41 = __OFSUB__(v96, v97);
      v82 = v96 - v97;
      if (!v41)
      {
        goto LABEL_80;
      }

      __break(1u);
    }

    else if (!v81)
    {
      v82 = BYTE6(v80);
      goto LABEL_80;
    }

    LODWORD(v82) = HIDWORD(v79) - v79;
    if (__OFSUB__(HIDWORD(v79), v79))
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v82 = v82;
LABEL_80:
    *(v0 + 488) = v82;
    *(v0 + 240) = *(v0 + 312);
    sub_1001D1090();
    v98 = sub_1001D1060();
    *(v0 + 496) = v98;
    v99 = swift_task_alloc();
    *(v0 + 504) = v99;
    *v99 = v0;
    v99[1] = sub_100181654;
    v35 = v79;
    v36 = v80;
    v37 = v98;
    v38 = 0;
    goto LABEL_81;
  }

  sub_100012038(v20, v21);
  *(v0 + 528) = v21;
  *(v0 + 520) = v20;
  v83 = *(v0 + 384);
  v84 = *(v0 + 288);

  v85 = sub_1001D0E50();
  v86 = sub_1001D1DD0();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = *(v0 + 288);
    v88 = *(v0 + 296);
    v89 = *(v0 + 617);
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v105 = v91;
    *v90 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v106 = sub_1001D23A0();
    v107 = v92;
    v122._countAndFlagsBits = 2629690;
    v122._object = 0xE300000000000000;
    sub_1001D18B0(v122);
    v123._countAndFlagsBits = sub_10016B71C(v88, v89);
    sub_1001D18B0(v123);

    v124._countAndFlagsBits = 41;
    v124._object = 0xE100000000000000;
    sub_1001D18B0(v124);
    v93 = sub_1000954E0(v106, v107, &v105);

    *(v90 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v85, v86, "%s Waiting on ready for more chunks signal", v90, 0xCu);
    sub_100011CF0(v91);
  }

  v94 = swift_task_alloc();
  *(v0 + 536) = v94;
  *v94 = v0;
  v94[1] = sub_100182484;
  v95 = *(v0 + 336);

  sub_10013F08C(v94);
}

uint64_t sub_100180AF4()
{
  v2 = *(*v1 + 400);
  v3 = *v1;
  v3[51] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100180C48, 0, 0);
  }

  else
  {
    v4 = v3[49];

    v5 = v3[47];
    v6 = v3[45];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_100180C48()
{
  v1 = v0[49];

  v2 = v0[51];
  v3 = v0[47];
  v4 = v0[45];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100180CC0()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v7 = *v1;
  *(*v1 + 464) = v0;

  v4 = *(v2 + 448);

  if (v0)
  {
    v5 = sub_100181210;
  }

  else
  {
    v5 = sub_100180DE4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100180DE4(uint64_t a1)
{
  v2 = v1[58];
  v3 = v1[54];
  v5 = v1[44];
  v4 = v1[45];
  v6 = v1[43];
  sub_1001428C0(a1, v2 != 0);
  v7 = *(*v3 + 184);
  v8 = *(*v3 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v5 + 8))(v4, v6);
  v9 = v1[23];
  v10 = v1[24];
  v11 = (v3 + *(*v3 + 144));
  os_unfair_lock_lock(v11);
  v12 = v11 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v14 = &v12[*(result + 96)];
  if (v2)
  {
    if ((v14[8] & 0xFE) != 2)
    {
      v14[8] = 3;
      swift_errorRetain();
    }

    v16 = v1[52];
    v15 = v1[53];
    v17 = v1[47];
    os_unfair_lock_unlock(v11);
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    v18 = swift_willThrowTypedImpl();
    sub_100142304(v18, 1);
    sub_100011E48(v16, v15);
    sub_1001AFB98(v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
    v19 = v1[47];
    v20 = v1[45];

    v21 = v1[1];
    goto LABEL_17;
  }

  v22 = *v14;
  v23 = v14 + 8;
  if (v14[8] > 1u)
  {
    if (v14[8] - 2 >= 2)
    {
      if (!v22)
      {
        sub_1001D2030(49);

        v37._countAndFlagsBits = sub_10011C5EC(0, 4u);
        sub_1001D18B0(v37);

        v38._object = 0x80000001001E7630;
        v38._countAndFlagsBits = 0xD000000000000020;
        sub_1001D18B0(v38);
        return sub_1001D2180();
      }

      *v14 = v1[55];
      v14[8] = 0;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (!v14[8])
  {
    v24 = v1[55];
    v25 = __OFADD__(v22, v24);
    v26 = v22 + v24;
    if (!v25)
    {
      v27 = 0;
      *v14 = v26;
LABEL_15:
      *v23 = v27;
      goto LABEL_16;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v28 = v1[55];
  v25 = __OFADD__(v22, v28);
  v29 = v22 + v28;
  if (v25)
  {
    goto LABEL_22;
  }

  *v14 = v29;
  v14[8] = 1;
  if (!v22)
  {
LABEL_14:
    v30 = &v12[*(result + 112)];
    *v30 = v9;
    *(v30 + 1) = v10;
    v23 = v30 + 16;
    v27 = 1;
    goto LABEL_15;
  }

LABEL_16:
  v32 = v1[52];
  v31 = v1[53];
  v33 = v1[47];
  os_unfair_lock_unlock(v11);
  sub_100011E48(v32, v31);
  sub_1001AFB98(v33, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  v34 = v1[47];
  v35 = v1[45];

  v21 = v1[1];
LABEL_17:

  return v21();
}

uint64_t sub_100181210()
{
  v1 = v0[58];
  v2 = v0[54];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  sub_1001428C0(v1, v1 != 0);
  v6 = *(*v2 + 184);
  v7 = *(*v2 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v4 + 8))(v3, v5);
  v8 = v0[23];
  v9 = v0[24];
  v10 = (v2 + *(*v2 + 144));
  os_unfair_lock_lock(v10);
  v11 = v10 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v13 = &v11[*(result + 96)];
  if (v1)
  {
    if ((v13[8] & 0xFE) != 2)
    {
      *v13 = v1;
      v13[8] = 3;
      swift_errorRetain();
    }

    v15 = v0[52];
    v14 = v0[53];
    v16 = v0[47];
    os_unfair_lock_unlock(v10);
    v0[33] = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);
    sub_100011E48(v15, v14);
    sub_1001AFB98(v16, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
    v17 = v0[47];
    v18 = v0[45];

    v19 = v0[1];
    goto LABEL_17;
  }

  v20 = *v13;
  v21 = v13 + 8;
  if (v13[8] > 1u)
  {
    if (v13[8] - 2 >= 2)
    {
      if (!v20)
      {
        sub_1001D2030(49);

        v35._countAndFlagsBits = sub_10011C5EC(0, 4u);
        sub_1001D18B0(v35);

        v36._object = 0x80000001001E7630;
        v36._countAndFlagsBits = 0xD000000000000020;
        sub_1001D18B0(v36);
        return sub_1001D2180();
      }

      *v13 = v0[55];
      v13[8] = 0;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (!v13[8])
  {
    v22 = v0[55];
    v23 = __OFADD__(v20, v22);
    v24 = v20 + v22;
    if (!v23)
    {
      v25 = 0;
      *v13 = v24;
LABEL_15:
      *v21 = v25;
      goto LABEL_16;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v26 = v0[55];
  v23 = __OFADD__(v20, v26);
  v27 = v20 + v26;
  if (v23)
  {
    goto LABEL_22;
  }

  *v13 = v27;
  v13[8] = 1;
  if (!v20)
  {
LABEL_14:
    v28 = &v11[*(result + 112)];
    *v28 = v8;
    *(v28 + 1) = v9;
    v21 = v28 + 16;
    v25 = 1;
    goto LABEL_15;
  }

LABEL_16:
  v30 = v0[52];
  v29 = v0[53];
  v31 = v0[47];
  os_unfair_lock_unlock(v10);
  sub_100011E48(v30, v29);
  sub_1001AFB98(v31, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  v32 = v0[47];
  v33 = v0[45];

  v19 = v0[1];
LABEL_17:

  return v19();
}

uint64_t sub_100181654()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v7 = *v1;
  *(*v1 + 512) = v0;

  v4 = *(v2 + 496);

  if (v0)
  {
    v5 = sub_100181DF0;
  }

  else
  {
    v5 = sub_100181778;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_100181778(uint64_t a1)
{
  v58 = v1;
  v2 = *(v1 + 512);
  v3 = *(v1 + 432);
  v5 = *(v1 + 352);
  v4 = *(v1 + 360);
  v6 = *(v1 + 344);
  sub_1001428C0(a1, v2 != 0);
  v7 = *(*v3 + 184);
  v8 = *(*v3 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v5 + 8))(v4, v6);
  v9 = *(v1 + 168);
  v10 = *(v1 + 176);
  v11 = (v3 + *(*v3 + 144));
  os_unfair_lock_lock(v11);
  v12 = v11 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v13 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v14 = &v12[*(v13 + 96)];
  if (v2)
  {
    if ((v14[8] & 0xFE) != 2)
    {
      v14[8] = 3;
      swift_errorRetain();
    }

    v16 = *(v1 + 472);
    v15 = *(v1 + 480);
    v18 = *(v1 + 416);
    v17 = *(v1 + 424);
    v19 = *(v1 + 376);
    os_unfair_lock_unlock(v11);
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    v20 = swift_willThrowTypedImpl();
    sub_100142304(v20, 1);
    sub_100011E48(v16, v15);
    sub_100011E48(v18, v17);
    sub_1001AFB98(v19, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
    v21 = *(v1 + 376);
    v22 = *(v1 + 360);

    v23 = *(v1 + 8);

    v23();
    return;
  }

  v24 = *v14;
  v25 = v14 + 8;
  if (v14[8] > 1u)
  {
    if (v14[8] - 2 < 2)
    {
      goto LABEL_18;
    }

    if (!v24)
    {
      sub_1001D2030(49);

      *&v57 = 0x2064696C61766E49;
      *(&v57 + 1) = 0xEF203A6574617473;
      v63._countAndFlagsBits = sub_10011C5EC(0, 4u);
      sub_1001D18B0(v63);

      v64._object = 0x80000001001E7630;
      v64._countAndFlagsBits = 0xD000000000000020;
      sub_1001D18B0(v64);
      sub_1001D2180();
      return;
    }

    *v14 = *(v1 + 488);
    v14[8] = 0;
    goto LABEL_16;
  }

  if (!v14[8])
  {
    v26 = *(v1 + 488);
    v27 = __OFADD__(v24, v26);
    v28 = v24 + v26;
    if (v27)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    *v14 = v28;
    goto LABEL_17;
  }

  v29 = *(v1 + 488);
  v27 = __OFADD__(v24, v29);
  v30 = v24 + v29;
  if (v27)
  {
LABEL_36:
    __break(1u);
    return;
  }

  *v14 = v30;
  v14[8] = 1;
  if (!v24)
  {
LABEL_16:
    v31 = &v12[*(v13 + 112)];
    *v31 = v9;
    *(v31 + 1) = v10;
    v25 = v31 + 16;
LABEL_17:
    *v25 = 0;
  }

LABEL_18:
  v32 = *(v1 + 480) >> 62;
  os_unfair_lock_unlock(v11);
  if (v32 > 1)
  {
    if (v32 != 2)
    {
      v33 = 0;
      goto LABEL_28;
    }

    v34 = *(*(v1 + 472) + 16);
    v35 = *(*(v1 + 472) + 24);
    v33 = v35 - v34;
    if (!__OFSUB__(v35, v34))
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v32)
  {
LABEL_25:
    v36 = *(v1 + 472);
    v37 = *(v1 + 476);
    v27 = __OFSUB__(v37, v36);
    v38 = v37 - v36;
    if (!v27)
    {
      v33 = v38;
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_35;
  }

  v33 = *(v1 + 486);
LABEL_28:
  v40 = *(v1 + 472);
  v39 = *(v1 + 480);
  v42 = *(v1 + 416);
  v41 = *(v1 + 424);
  sub_100012038(v42, v41);
  sub_100183E34(v33, v42, v41, &v57);
  sub_100011E48(v40, v39);
  *(v1 + 520) = v57;
  v43 = *(v1 + 384);
  v44 = *(v1 + 288);

  v45 = sub_1001D0E50();
  v46 = sub_1001D1DD0();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v1 + 288);
    v48 = *(v1 + 296);
    v49 = *(v1 + 617);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v56 = v51;
    *v50 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    *&v57 = sub_1001D23A0();
    *(&v57 + 1) = v52;
    v60._countAndFlagsBits = 2629690;
    v60._object = 0xE300000000000000;
    sub_1001D18B0(v60);
    v61._countAndFlagsBits = sub_10016B71C(v48, v49);
    sub_1001D18B0(v61);

    v62._countAndFlagsBits = 41;
    v62._object = 0xE100000000000000;
    sub_1001D18B0(v62);
    v53 = sub_1000954E0(v57, *(&v57 + 1), &v56);

    *(v50 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v45, v46, "%s Waiting on ready for more chunks signal", v50, 0xCu);
    sub_100011CF0(v51);
  }

  v54 = swift_task_alloc();
  *(v1 + 536) = v54;
  *v54 = v1;
  v54[1] = sub_100182484;
  v55 = *(v1 + 336);

  sub_10013F08C(v54);
}

void sub_100181DF0()
{
  v56 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 432);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = *(v0 + 344);
  sub_1001428C0(v1, v1 != 0);
  v6 = *(*v2 + 184);
  v7 = *(*v2 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v4 + 8))(v3, v5);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  v10 = (v2 + *(*v2 + 144));
  os_unfair_lock_lock(v10);
  v11 = v10 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v12 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v13 = &v11[*(v12 + 96)];
  if (v1)
  {
    if ((v13[8] & 0xFE) != 2)
    {
      *v13 = v1;
      v13[8] = 3;
      swift_errorRetain();
    }

    v15 = *(v0 + 472);
    v14 = *(v0 + 480);
    v17 = *(v0 + 416);
    v16 = *(v0 + 424);
    v18 = *(v0 + 376);
    os_unfair_lock_unlock(v10);
    *(v0 + 248) = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);
    sub_100011E48(v15, v14);
    sub_100011E48(v17, v16);
    sub_1001AFB98(v18, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
    v19 = *(v0 + 376);
    v20 = *(v0 + 360);

    v21 = *(v0 + 8);

    v21();
    return;
  }

  v22 = *v13;
  v23 = v13 + 8;
  if (v13[8] > 1u)
  {
    if (v13[8] - 2 < 2)
    {
      goto LABEL_18;
    }

    if (!v22)
    {
      sub_1001D2030(49);

      *&v55 = 0x2064696C61766E49;
      *(&v55 + 1) = 0xEF203A6574617473;
      v61._countAndFlagsBits = sub_10011C5EC(0, 4u);
      sub_1001D18B0(v61);

      v62._object = 0x80000001001E7630;
      v62._countAndFlagsBits = 0xD000000000000020;
      sub_1001D18B0(v62);
      sub_1001D2180();
      return;
    }

    *v13 = *(v0 + 488);
    v13[8] = 0;
    goto LABEL_16;
  }

  if (!v13[8])
  {
    v24 = *(v0 + 488);
    v25 = __OFADD__(v22, v24);
    v26 = v22 + v24;
    if (v25)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    *v13 = v26;
    goto LABEL_17;
  }

  v27 = *(v0 + 488);
  v25 = __OFADD__(v22, v27);
  v28 = v22 + v27;
  if (v25)
  {
LABEL_36:
    __break(1u);
    return;
  }

  *v13 = v28;
  v13[8] = 1;
  if (!v22)
  {
LABEL_16:
    v29 = &v11[*(v12 + 112)];
    *v29 = v8;
    *(v29 + 1) = v9;
    v23 = v29 + 16;
LABEL_17:
    *v23 = 0;
  }

LABEL_18:
  v30 = *(v0 + 480) >> 62;
  os_unfair_lock_unlock(v10);
  if (v30 > 1)
  {
    if (v30 != 2)
    {
      v31 = 0;
      goto LABEL_28;
    }

    v32 = *(*(v0 + 472) + 16);
    v33 = *(*(v0 + 472) + 24);
    v31 = v33 - v32;
    if (!__OFSUB__(v33, v32))
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v30)
  {
LABEL_25:
    v34 = *(v0 + 472);
    v35 = *(v0 + 476);
    v25 = __OFSUB__(v35, v34);
    v36 = v35 - v34;
    if (!v25)
    {
      v31 = v36;
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_35;
  }

  v31 = *(v0 + 486);
LABEL_28:
  v38 = *(v0 + 472);
  v37 = *(v0 + 480);
  v40 = *(v0 + 416);
  v39 = *(v0 + 424);
  sub_100012038(v40, v39);
  sub_100183E34(v31, v40, v39, &v55);
  sub_100011E48(v38, v37);
  *(v0 + 520) = v55;
  v41 = *(v0 + 384);
  v42 = *(v0 + 288);

  v43 = sub_1001D0E50();
  v44 = sub_1001D1DD0();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = *(v0 + 288);
    v46 = *(v0 + 296);
    v47 = *(v0 + 617);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v54 = v49;
    *v48 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    *&v55 = sub_1001D23A0();
    *(&v55 + 1) = v50;
    v58._countAndFlagsBits = 2629690;
    v58._object = 0xE300000000000000;
    sub_1001D18B0(v58);
    v59._countAndFlagsBits = sub_10016B71C(v46, v47);
    sub_1001D18B0(v59);

    v60._countAndFlagsBits = 41;
    v60._object = 0xE100000000000000;
    sub_1001D18B0(v60);
    v51 = sub_1000954E0(v55, *(&v55 + 1), &v54);

    *(v48 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v43, v44, "%s Waiting on ready for more chunks signal", v48, 0xCu);
    sub_100011CF0(v49);
  }

  v52 = swift_task_alloc();
  *(v0 + 536) = v52;
  *v52 = v0;
  v52[1] = sub_100182484;
  v53 = *(v0 + 336);

  sub_10013F08C(v52);
}

uint64_t sub_100182484()
{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = sub_1001828F8;
  }

  else
  {
    v3 = sub_100182598;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100182598()
{
  v28 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 288);
  **(v0 + 320) = 1;

  v3 = sub_1001D0E50();
  v4 = sub_1001D1DD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 288);
    v6 = *(v0 + 296);
    v7 = *(v0 + 617);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v26 = sub_1001D23A0();
    v27 = v10;
    v30._countAndFlagsBits = 2629690;
    v30._object = 0xE300000000000000;
    sub_1001D18B0(v30);
    v31._countAndFlagsBits = sub_10016B71C(v6, v7);
    sub_1001D18B0(v31);

    v32._countAndFlagsBits = 41;
    v32._object = 0xE100000000000000;
    sub_1001D18B0(v32);
    v11 = sub_1000954E0(v26, v27, &v25);

    *(v8 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Ready for more chunks received", v8, 0xCu);
    sub_100011CF0(v9);
  }

  v12 = *(v0 + 528);
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v15 = *(*(v0 + 520) + 16);
    v16 = *(*(v0 + 520) + 24);
    v17 = __OFSUB__(v16, v15);
    v14 = v16 - v15;
    if (!v17)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v13)
  {
    v14 = BYTE6(v12);
    goto LABEL_13;
  }

  v18 = *(v0 + 520);
  v19 = *(v0 + 524);
  v17 = __OFSUB__(v19, v18);
  LODWORD(v14) = v19 - v18;
  if (v17)
  {
    __break(1u);
    return;
  }

  v14 = v14;
LABEL_13:
  *(v0 + 552) = v14;
  *(v0 + 224) = *(v0 + 312);
  sub_1001D1090();
  v20 = sub_1001D1060();
  *(v0 + 560) = v20;
  v21 = swift_task_alloc();
  *(v0 + 568) = v21;
  *v21 = v0;
  v21[1] = sub_1001829AC;
  v22 = *(v0 + 528);
  v23 = *(v0 + 520);
  v24 = *(v0 + 616);

  (sub_100138CDC)(v23, v22, v20, v24, &type metadata for NWAsyncConnection.Outbound, &protocol witness table for NWAsyncConnection.Outbound);
}

uint64_t sub_1001828F8()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[47];
  sub_100011E48(v0[65], v0[66]);
  sub_100011E48(v1, v2);
  sub_1001AFB98(v3, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  v4 = v0[68];
  v5 = v0[47];
  v6 = v0[45];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001829AC()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *v1;
  *(*v1 + 576) = v0;

  v5 = *(v2 + 560);

  if (v0)
  {
    v6 = sub_100182F2C;
  }

  else
  {
    v6 = sub_100182AE0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100182AE0(uint64_t a1)
{
  v2 = v1[72];
  v3 = v1[54];
  v5 = v1[44];
  v4 = v1[45];
  v6 = v1[43];
  sub_1001428C0(a1, v2 != 0);
  v7 = *(*v3 + 184);
  v8 = *(*v3 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v5 + 8))(v4, v6);
  v9 = v1[19];
  v10 = v1[20];
  v11 = (v3 + *(*v3 + 144));
  os_unfair_lock_lock(v11);
  v12 = v11 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v14 = &v12[*(result + 96)];
  if (v2)
  {
    if ((v14[8] & 0xFE) != 2)
    {
      v14[8] = 3;
      swift_errorRetain();
    }

    v15 = v1[66];
    v16 = v1[65];
    v18 = v1[52];
    v17 = v1[53];
    v19 = v1[47];
    os_unfair_lock_unlock(v11);
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    v20 = swift_willThrowTypedImpl();
    sub_100142304(v20, 1);
    sub_100011E48(v16, v15);
    sub_100011E48(v18, v17);
    sub_1001AFB98(v19, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
    v21 = v1[47];
    v22 = v1[45];

    v23 = v1[1];
    goto LABEL_17;
  }

  v24 = *v14;
  v25 = v14 + 8;
  if (v14[8] > 1u)
  {
    if (v14[8] - 2 >= 2)
    {
      if (!v24)
      {
        sub_1001D2030(49);

        v40._countAndFlagsBits = sub_10011C5EC(0, 4u);
        sub_1001D18B0(v40);

        v41._object = 0x80000001001E7630;
        v41._countAndFlagsBits = 0xD000000000000020;
        sub_1001D18B0(v41);
        return sub_1001D2180();
      }

      *v14 = v1[69];
      v14[8] = 0;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (!v14[8])
  {
    v26 = v1[69];
    v27 = __OFADD__(v24, v26);
    v28 = v24 + v26;
    if (!v27)
    {
      *v14 = v28;
LABEL_15:
      *v25 = 0;
      goto LABEL_16;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v29 = v1[69];
  v27 = __OFADD__(v24, v29);
  v30 = v24 + v29;
  if (v27)
  {
    goto LABEL_22;
  }

  *v14 = v30;
  v14[8] = 1;
  if (!v24)
  {
LABEL_14:
    v31 = &v12[*(result + 112)];
    *v31 = v9;
    *(v31 + 1) = v10;
    v25 = v31 + 16;
    goto LABEL_15;
  }

LABEL_16:
  v32 = v1[66];
  v33 = v1[65];
  v35 = v1[52];
  v34 = v1[53];
  v36 = v1[47];
  os_unfair_lock_unlock(v11);
  sub_100011E48(v33, v32);
  sub_100011E48(v35, v34);
  sub_1001AFB98(v36, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  v37 = v1[47];
  v38 = v1[45];

  v23 = v1[1];
LABEL_17:

  return v23();
}

uint64_t sub_100182F2C()
{
  v1 = v0[72];
  v2 = v0[54];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  sub_1001428C0(v1, v1 != 0);
  v6 = *(*v2 + 184);
  v7 = *(*v2 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v4 + 8))(v3, v5);
  v8 = v0[19];
  v9 = v0[20];
  v10 = (v2 + *(*v2 + 144));
  os_unfair_lock_lock(v10);
  v11 = v10 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v13 = &v11[*(result + 96)];
  if (v1)
  {
    if ((v13[8] & 0xFE) != 2)
    {
      *v13 = v1;
      v13[8] = 3;
      swift_errorRetain();
    }

    v14 = v0[66];
    v15 = v0[65];
    v17 = v0[52];
    v16 = v0[53];
    v18 = v0[47];
    os_unfair_lock_unlock(v10);
    v0[29] = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);
    sub_100011E48(v15, v14);
    sub_100011E48(v17, v16);
    sub_1001AFB98(v18, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
    v19 = v0[47];
    v20 = v0[45];

    v21 = v0[1];
    goto LABEL_17;
  }

  v22 = *v13;
  v23 = v13 + 8;
  if (v13[8] > 1u)
  {
    if (v13[8] - 2 >= 2)
    {
      if (!v22)
      {
        sub_1001D2030(49);

        v38._countAndFlagsBits = sub_10011C5EC(0, 4u);
        sub_1001D18B0(v38);

        v39._object = 0x80000001001E7630;
        v39._countAndFlagsBits = 0xD000000000000020;
        sub_1001D18B0(v39);
        return sub_1001D2180();
      }

      *v13 = v0[69];
      v13[8] = 0;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (!v13[8])
  {
    v24 = v0[69];
    v25 = __OFADD__(v22, v24);
    v26 = v22 + v24;
    if (!v25)
    {
      *v13 = v26;
LABEL_15:
      *v23 = 0;
      goto LABEL_16;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v27 = v0[69];
  v25 = __OFADD__(v22, v27);
  v28 = v22 + v27;
  if (v25)
  {
    goto LABEL_22;
  }

  *v13 = v28;
  v13[8] = 1;
  if (!v22)
  {
LABEL_14:
    v29 = &v11[*(result + 112)];
    *v29 = v8;
    *(v29 + 1) = v9;
    v23 = v29 + 16;
    goto LABEL_15;
  }

LABEL_16:
  v30 = v0[66];
  v31 = v0[65];
  v33 = v0[52];
  v32 = v0[53];
  v34 = v0[47];
  os_unfair_lock_unlock(v10);
  sub_100011E48(v31, v30);
  sub_100011E48(v33, v32);
  sub_1001AFB98(v34, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  v35 = v0[47];
  v36 = v0[45];

  v21 = v0[1];
LABEL_17:

  return v21();
}

uint64_t sub_100183394()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v7 = *v1;
  *(*v1 + 608) = v0;

  v4 = *(v2 + 592);

  if (v0)
  {
    v5 = sub_100183968;
  }

  else
  {
    v5 = sub_1001834B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001834B8(uint64_t a1)
{
  v2 = v1[76];
  v3 = v1[54];
  v5 = v1[44];
  v4 = v1[45];
  v6 = v1[43];
  sub_1001428C0(a1, v2 != 0);
  v7 = *(*v3 + 184);
  v8 = *(*v3 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v5 + 8))(v4, v6);
  v9 = v1[17];
  v10 = v1[18];
  v11 = (v3 + *(*v3 + 144));
  os_unfair_lock_lock(v11);
  v12 = v11 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v14 = &v12[*(result + 96)];
  if (v2)
  {
    if ((v14[8] & 0xFE) != 2)
    {
      v14[8] = 3;
      swift_errorRetain();
    }

    v16 = v1[52];
    v15 = v1[53];
    v17 = v1[47];
    os_unfair_lock_unlock(v11);
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    v18 = swift_willThrowTypedImpl();
    sub_100142304(v18, 1);
    sub_100011E48(v16, v15);
    sub_1001AFB98(v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
    v19 = v1[47];
    v20 = v1[45];

    v21 = v1[1];
    goto LABEL_27;
  }

  v22 = *v14;
  if (v14[8] > 1u)
  {
    if (v14[8] - 2 < 2)
    {
      goto LABEL_15;
    }

    if (!v22)
    {
      sub_1001D2030(49);

      v45._countAndFlagsBits = sub_10011C5EC(0, 4u);
      sub_1001D18B0(v45);

      v46._object = 0x80000001001E7630;
      v46._countAndFlagsBits = 0xD000000000000020;
      sub_1001D18B0(v46);
      return sub_1001D2180();
    }

    *v14 = v1[73];
    v14[8] = 0;
    goto LABEL_14;
  }

  if (v14[8])
  {
    v26 = v1[73];
    v24 = __OFADD__(v22, v26);
    v27 = v22 + v26;
    if (v24)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    *v14 = v27;
    v14[8] = 1;
    if (!v22)
    {
LABEL_14:
      v28 = &v12[*(result + 112)];
      *v28 = v9;
      *(v28 + 1) = v10;
      v28[16] = 1;
    }
  }

  else
  {
    v23 = v1[73];
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    *v14 = v25;
    v14[8] = 0;
  }

LABEL_15:
  v29 = v1[47];
  v30 = v1[53] >> 62;
  os_unfair_lock_unlock(v11);
  sub_1001AFB98(v29, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  v31 = v1[52];
  v32 = v1[53];
  if (v30 <= 1)
  {
    if (!v30)
    {
      v33 = v1[53];
      sub_100011E48(v31, v32);
      v34 = BYTE6(v33);
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v30 != 2)
  {
    sub_100011E48(v31, v32);
    v34 = 0;
    goto LABEL_25;
  }

  v35 = *(v31 + 16);
  v36 = *(v31 + 24);
  v31 = sub_100011E48(v31, v32);
  v24 = __OFSUB__(v36, v35);
  v34 = v36 - v35;
  if (v24)
  {
    __break(1u);
LABEL_22:
    v37 = HIDWORD(v31);
    v38 = v31;
    result = sub_100011E48(v31, v32);
    if (__OFSUB__(v37, v38))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v34 = v37 - v38;
  }

LABEL_25:
  v39 = v1[41];
  result = swift_beginAccess();
  v40 = *(v39 + 16);
  v24 = __OFSUB__(v40, v34);
  v41 = v40 - v34;
  if (v24)
  {
    __break(1u);
    goto LABEL_32;
  }

  *(v1[41] + 16) = v41;
  v42 = v1[47];
  v43 = v1[45];

  v21 = v1[1];
LABEL_27:

  return v21();
}

uint64_t sub_100183968()
{
  v1 = v0[76];
  v2 = v0[54];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  sub_1001428C0(v1, v1 != 0);
  v6 = *(*v2 + 184);
  v7 = *(*v2 + 152);
  sub_1001D20F0();
  sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
  sub_1001D2500();
  sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
  sub_1001D2110();
  (*(v4 + 8))(v3, v5);
  v8 = v0[17];
  v9 = v0[18];
  v10 = (v2 + *(*v2 + 144));
  os_unfair_lock_lock(v10);
  v11 = v10 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  result = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v13 = &v11[*(result + 96)];
  if (v1)
  {
    if ((v13[8] & 0xFE) != 2)
    {
      *v13 = v1;
      v13[8] = 3;
      swift_errorRetain();
    }

    v15 = v0[52];
    v14 = v0[53];
    v16 = v0[47];
    os_unfair_lock_unlock(v10);
    v0[27] = v1;
    sub_100011AC0(&qword_100227A58, &qword_1001D3600);
    swift_willThrowTypedImpl();
    sub_100142304(v1, 1);
    sub_100011E48(v15, v14);
    sub_1001AFB98(v16, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
    v17 = v0[47];
    v18 = v0[45];

    v19 = v0[1];
    goto LABEL_27;
  }

  v20 = *v13;
  if (v13[8] > 1u)
  {
    if (v13[8] - 2 < 2)
    {
      goto LABEL_15;
    }

    if (!v20)
    {
      sub_1001D2030(49);

      v43._countAndFlagsBits = sub_10011C5EC(0, 4u);
      sub_1001D18B0(v43);

      v44._object = 0x80000001001E7630;
      v44._countAndFlagsBits = 0xD000000000000020;
      sub_1001D18B0(v44);
      return sub_1001D2180();
    }

    *v13 = v0[73];
    v13[8] = 0;
    goto LABEL_14;
  }

  if (v13[8])
  {
    v24 = v0[73];
    v22 = __OFADD__(v20, v24);
    v25 = v20 + v24;
    if (v22)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    *v13 = v25;
    v13[8] = 1;
    if (!v20)
    {
LABEL_14:
      v26 = &v11[*(result + 112)];
      *v26 = v8;
      *(v26 + 1) = v9;
      v26[16] = 1;
    }
  }

  else
  {
    v21 = v0[73];
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    *v13 = v23;
    v13[8] = 0;
  }

LABEL_15:
  v27 = v0[47];
  v28 = v0[53] >> 62;
  os_unfair_lock_unlock(v10);
  sub_1001AFB98(v27, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeRequest);
  v29 = v0[52];
  v30 = v0[53];
  if (v28 <= 1)
  {
    if (!v28)
    {
      v31 = v0[53];
      sub_100011E48(v29, v30);
      v32 = BYTE6(v31);
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v28 != 2)
  {
    sub_100011E48(v29, v30);
    v32 = 0;
    goto LABEL_25;
  }

  v33 = *(v29 + 16);
  v34 = *(v29 + 24);
  v29 = sub_100011E48(v29, v30);
  v22 = __OFSUB__(v34, v33);
  v32 = v34 - v33;
  if (v22)
  {
    __break(1u);
LABEL_22:
    v35 = HIDWORD(v29);
    v36 = v29;
    result = sub_100011E48(v29, v30);
    if (__OFSUB__(v35, v36))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v32 = v35 - v36;
  }

LABEL_25:
  v37 = v0[41];
  result = swift_beginAccess();
  v38 = *(v37 + 16);
  v22 = __OFSUB__(v38, v32);
  v39 = v38 - v32;
  if (v22)
  {
    __break(1u);
    goto LABEL_32;
  }

  *(v0[41] + 16) = v39;
  v40 = v0[47];
  v41 = v0[45];

  v19 = v0[1];
LABEL_27:

  return v19();
}

uint64_t sub_100183E34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_100088598(v10, v9, a2, a3);
    if (v6 && v11 < v6)
    {
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = sub_100088534(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = sub_1001CFBC0();
    v17 = v16;
    result = sub_100011E48(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

void sub_100183F84(uint64_t a1)
{
  v1 = *(*a1 + 392);

  oslog = sub_1001D0E50();
  v2 = sub_1001D1DD0();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v8 = sub_1001D23A0();
    v9 = v5;
    v12._countAndFlagsBits = 58;
    v12._object = 0xE100000000000000;
    sub_1001D18B0(v12);
    v6 = sub_1000954E0(v8, v9, &v10);

    *(v3 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v2, "%s Leaving runNodesStreams", v3, 0xCu);
    sub_100011CF0(v4);
  }
}

uint64_t sub_100184120(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000130E0;

  return sub_1001841BC(a1, a2);
}

uint64_t sub_1001841BC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for ThimbledEvent();
  v2[6] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v5 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v2[8] = v5;
  v6 = *(v5 - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = sub_100011AC0(&qword_10022FE68, &qword_1001E1A70);
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100184320, 0, 0);
}

uint64_t sub_100184320()
{
  v1 = v0[13];
  v2 = v0[4];
  v3 = sub_100008F3C(0, 32, 0, &_swiftEmptyArrayStorage);
  sub_100011AC0(&qword_10022FDB8, &qword_1001E1888);
  sub_1001D1BF0();
  v0[14] = v3;
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_100184414;
  v6 = v0[13];
  v7 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v7);
}

uint64_t sub_100184414()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_100184510, 0, 0);
}

uint64_t sub_100184510()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 112);
  if (v1)
  {
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_100008F3C((v4 > 1), v5 + 1, 1, *(v0 + 112));
    }

    *(v3 + 2) = v5 + 1;
    v6 = &v3[16 * v5];
    *(v6 + 4) = v2;
    *(v6 + 5) = v1;
    *(v0 + 112) = v3;
    v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_100184414;
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);

    return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v10);
  }

  else
  {
    v11 = *(v0 + 80);
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = *(v0 + 40);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    v17 = *(**(v16 + *(*v16 + 368)) + 288);
    *v14 = v3;
    *(v14 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
    sub_1001D1BC0();
    (*(v13 + 8))(v11, v12);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100184730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[125] = a8;
  v8[124] = a7;
  v8[123] = a6;
  v8[122] = a5;
  v8[121] = a4;
  v8[120] = a3;
  v8[119] = a2;
  v8[118] = a1;
  v9 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  v8[126] = v9;
  v8[127] = *(v9 + 64);
  v8[128] = swift_task_alloc();
  v10 = sub_100011AC0(&qword_10022FDB0, &qword_1001E1880);
  v8[129] = v10;
  v11 = *(v10 - 8);
  v8[130] = v11;
  v8[131] = *(v11 + 64);
  v8[132] = swift_task_alloc();
  v12 = *(*(sub_100011AC0(&qword_100229350, &unk_1001D6BA0) - 8) + 64) + 15;
  v8[133] = swift_task_alloc();
  v13 = *(*(type metadata accessor for ValidatedAttestation() - 8) + 64) + 15;
  v8[134] = swift_task_alloc();
  v14 = type metadata accessor for ValidatedAttestationOrAttestation();
  v8[135] = v14;
  v15 = *(v14 - 8);
  v8[136] = v15;
  v8[137] = *(v15 + 64);
  v8[138] = swift_task_alloc();
  v8[139] = swift_task_alloc();
  v8[140] = swift_task_alloc();
  v8[141] = swift_task_alloc();
  v8[142] = swift_task_alloc();
  v8[143] = swift_task_alloc();
  v8[144] = swift_task_alloc();
  v8[145] = swift_task_alloc();
  v8[146] = swift_task_alloc();
  v8[147] = swift_task_alloc();
  v8[148] = swift_task_alloc();
  v8[149] = swift_task_alloc();
  v8[150] = swift_task_alloc();
  v16 = *(*(sub_100011AC0(&qword_10022FDC8, &qword_1001E18D8) - 8) + 64) + 15;
  v8[151] = swift_task_alloc();
  v17 = sub_100011AC0(&qword_10022FDD0, &unk_1001E18E0);
  v8[152] = v17;
  v18 = *(v17 - 8);
  v8[153] = v18;
  v19 = *(v18 + 64) + 15;
  v8[154] = swift_task_alloc();
  v20 = *(*(type metadata accessor for NodeStreamController.StateMachine(0) - 8) + 64) + 15;
  v8[155] = swift_task_alloc();

  return _swift_task_switch(sub_100184AA4, 0, 0);
}

uint64_t sub_100184AA4()
{
  v1 = *(v0 + 952);
  v2 = qword_100243500;
  *(v0 + 1248) = qword_100243500;
  LOBYTE(v2) = *(v1 + v2 + 72);
  *(v0 + 705) = v2;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(v0 + 1240);
    v5 = type metadata accessor for NodeStreamController(0);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    v3 = swift_allocObject();
    v8 = (v3 + OBJC_IVAR____TtC20privatecloudcomputed20NodeStreamController_stateLock);
    *v4 = sub_1000DB568(&_swiftEmptyArrayStorage);
    type metadata accessor for NodeStreamController.StateMachine.State(0);
    swift_storeEnumTagMultiPayload();
    *v8 = 0;
    v9 = *(sub_100011AC0(&qword_10022D550, &qword_1001DE508) + 28);
    v10 = sub_100011AC0(&qword_10022FDD8, &qword_1001E18F0);
    bzero(v8 + v9, *(*(v10 - 8) + 64));
    sub_1001B0368(v4, v8 + v9, type metadata accessor for NodeStreamController.StateMachine);
    v1 = *(v0 + 952);
  }

  *(v0 + 1256) = v3;
  v11 = *(v0 + 1232);
  v12 = *(v0 + 960);
  *(v0 + 936) = &_swiftEmptySetSingleton;
  *(v0 + 928) = &_swiftEmptySetSingleton;
  sub_100011AC0(&qword_10022FDE0, &qword_1001E18F8);
  sub_1001D1CD0(32);
  sub_1001D1CD0(32);
  sub_100011AC0(&qword_10022FD30, &qword_1001E1720);
  sub_1001D1BF0();
  *(v0 + 1264) = *(*v1 + 392);
  *(v0 + 1272) = qword_1002434F8;
  v13 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v14 = swift_task_alloc();
  *(v0 + 1280) = v14;
  *v14 = v0;
  v14[1] = sub_100184CE4;
  v15 = *(v0 + 1232);
  v16 = *(v0 + 1216);
  v17 = *(v0 + 1208);

  return AsyncStream.Iterator.next(isolation:)(v17, 0, 0, v16);
}

uint64_t sub_100184CE4()
{
  v1 = *(*v0 + 1280);
  v3 = *v0;

  return _swift_task_switch(sub_100184DE0, 0, 0);
}

uint64_t sub_100184DE0()
{
  v195 = v0;
  v1 = *(v0 + 1208);
  if ((*(*(v0 + 1088) + 48))(v1, 1, *(v0 + 1080)) == 1)
  {
    v2 = *(v0 + 1264);
    v3 = *(v0 + 952);
    (*(*(v0 + 1224) + 8))(*(v0 + 1232), *(v0 + 1216));
    v4 = *(v0 + 928);

    v5 = *(v0 + 936);
    *(v0 + 1288) = v5;
    swift_bridgeObjectRetain_n();

    v6 = sub_1001D0E50();
    v7 = sub_1001D1DD0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 1272);
      v9 = *(v0 + 952);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v192 = v11;
      *v10 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v193 = sub_1001D23A0();
      v194 = v12;
      v197._countAndFlagsBits = 58;
      v197._object = 0xE100000000000000;
      sub_1001D18B0(v197);
      v13 = sub_1000954E0(v193, v194, &v192);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2048;
      v14 = *(v5 + 16);

      *(v10 + 14) = v14;

      _os_log_impl(&_mh_execute_header, v6, v7, "%s Not expecting more attestations. Running with %ld attestations", v10, 0x16u);
      sub_100011CF0(v11);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v28 = sub_1000DB760(&_swiftEmptyArrayStorage);
    v29 = swift_allocObject();
    *(v0 + 1296) = v29;
    *(v29 + 16) = 0;
    *(v0 + 1304) = 0;
    *(v0 + 1320) = &_swiftEmptyArrayStorage;
    *(v0 + 1312) = v28;
    *(v0 + 706) = 0;
    *(v0 + 1328) = 0;
    v30 = async function pointer to TaskGroup.next(isolation:)[1];
    v31 = swift_task_alloc();
    *(v0 + 1336) = v31;
    v27 = sub_100011AC0(&qword_10022FDE8, &qword_1001E1900);
    *v31 = v0;
    v31[1] = sub_100186234;
    v32 = *(v0 + 944);
    v24 = v0 + 688;
    v25 = 0;
    v26 = 0;

    return TaskGroup.next(isolation:)(v24, v25, v26, v27);
  }

  v15 = *(v0 + 1200);
  v16 = *(v0 + 1192);
  sub_1001B0368(v1, v15, type metadata accessor for ValidatedAttestationOrAttestation);
  sub_1001AFCB4(v15, v16, type metadata accessor for ValidatedAttestationOrAttestation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *(v0 + 1192);
  if (EnumCaseMultiPayload == 1)
  {
    v19 = *(v18 + 16);
    *(v0 + 208) = *v18;
    *(v0 + 224) = v19;
    v20 = *(v18 + 32);
    v21 = *(v18 + 48);
    v22 = *(v18 + 80);
    *(v0 + 272) = *(v18 + 64);
    *(v0 + 288) = v22;
    *(v0 + 240) = v20;
    *(v0 + 256) = v21;
    v23 = *(v18 + 96);
    v24 = sub_10005AF88(v0 + 208);
  }

  else
  {
    v23 = *(v18 + *(sub_100011AC0(qword_10022E650, &unk_1001DF500) + 48));
    v24 = sub_1001AFB98(v18, type metadata accessor for ValidatedAttestation);
  }

  if (v23 < 0)
  {
    __break(1u);
    return TaskGroup.next(isolation:)(v24, v25, v26, v27);
  }

  v33 = *(v0 + 1184);
  v34 = *(v0 + 1080);
  sub_1001AFCB4(*(v0 + 1200), v33, type metadata accessor for ValidatedAttestationOrAttestation);
  LODWORD(v34) = swift_getEnumCaseMultiPayload();
  sub_1001AFB98(v33, type metadata accessor for ValidatedAttestationOrAttestation);
  if (v34 == 1)
  {
    v35 = *(*(v0 + 928) + 16);
    if (v35 >= *(*(v0 + 952) + *(v0 + 1248) + 16))
    {
      v45 = *(v0 + 1264);
      sub_1001AFCB4(*(v0 + 1200), *(v0 + 1168), type metadata accessor for ValidatedAttestationOrAttestation);
      swift_retain_n();
      v46 = sub_1001D0E50();
      v47 = sub_1001D1DE0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = *(v0 + 1272);
        v49 = *(v0 + 1104);
        v183 = *(v0 + 1168);
        v186 = *(v0 + 1080);
        v50 = *(v0 + 952);
        v51 = swift_slowAlloc();
        *(v0 + 888) = swift_slowAlloc();
        *v51 = 136315906;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        *(v0 + 744) = sub_1001D23A0();
        *(v0 + 752) = v52;
        v198._countAndFlagsBits = 2629690;
        v198._object = 0xE300000000000000;
        sub_1001D18B0(v198);
        *(v0 + 728) = 0x202C65646F6ELL;
        *(v0 + 736) = 0xE600000000000000;
        *(v0 + 912) = v23;
        v199._countAndFlagsBits = sub_1001D23A0();
        sub_1001D18B0(v199);

        sub_1001D18B0(*(v0 + 728));

        v200._countAndFlagsBits = 41;
        v200._object = 0xE100000000000000;
        sub_1001D18B0(v200);
        v53 = sub_1000954E0(*(v0 + 744), *(v0 + 752), (v0 + 888));

        *(v51 + 4) = v53;
        *(v51 + 12) = 2080;
        sub_1001B0368(v183, v49, type metadata accessor for ValidatedAttestationOrAttestation);
        v54 = swift_getEnumCaseMultiPayload();
        v55 = *(v0 + 1104);
        if (v54 == 1)
        {
          v56 = v55[1];
          *(v0 + 112) = *v55;
          *(v0 + 128) = v56;
          v57 = v55[2];
          v58 = v55[3];
          v59 = v55[5];
          *(v0 + 176) = v55[4];
          *(v0 + 192) = v59;
          *(v0 + 144) = v57;
          *(v0 + 160) = v58;
          v61 = *(v0 + 112);
          v60 = *(v0 + 120);

          sub_10005AF88(v0 + 112);
        }

        else
        {
          v154 = *(v0 + 1072);
          sub_1001B0368(v55, v154, type metadata accessor for ValidatedAttestation);
          v61 = *v154;
          v60 = v154[1];

          sub_1001AFB98(v154, type metadata accessor for ValidatedAttestation);
        }

        v151 = *(v0 + 1200);
        v155 = *(v0 + 952) + *(v0 + 1248);
        v156 = sub_1000954E0(v61, v60, (v0 + 888));

        *(v51 + 14) = v156;
        *(v51 + 22) = 2048;
        *(v51 + 24) = v35;
        *(v51 + 32) = 2048;
        v157 = *(v155 + 8);

        *(v51 + 34) = v157;

        _os_log_impl(&_mh_execute_header, v46, v47, "%s ignoring node %s; already have %ld attestations out of %ld max", v51, 0x2Au);
        goto LABEL_53;
      }

      v147 = *(v0 + 1200);
      v148 = *(v0 + 1168);
      goto LABEL_46;
    }

    v36 = *(v0 + 1080);
    sub_1001AFCB4(*(v0 + 1200), *(v0 + 1176), type metadata accessor for ValidatedAttestationOrAttestation);
    v37 = swift_getEnumCaseMultiPayload();
    v38 = *(v0 + 1176);
    if (v37 == 1)
    {
      v39 = v38[1];
      *(v0 + 592) = *v38;
      *(v0 + 608) = v39;
      v40 = v38[2];
      v41 = v38[3];
      v42 = v38[5];
      *(v0 + 656) = v38[4];
      *(v0 + 672) = v42;
      *(v0 + 624) = v40;
      *(v0 + 640) = v41;
      v43 = *(v0 + 592);
      v44 = *(v0 + 600);

      sub_10005AF88(v0 + 592);
    }

    else
    {
      v62 = *(v0 + 1072);
      sub_1001B0368(v38, v62, type metadata accessor for ValidatedAttestation);
      v43 = *v62;
      v44 = v62[1];

      sub_1001AFB98(v62, type metadata accessor for ValidatedAttestation);
    }

    sub_1000603EC((v0 + 712), v43, v44);
    v63 = *(v0 + 720);
  }

  v64 = *(v0 + 1080);
  v65 = *(v0 + 936);
  sub_1001AFCB4(*(v0 + 1200), *(v0 + 1160), type metadata accessor for ValidatedAttestationOrAttestation);
  v66 = swift_getEnumCaseMultiPayload();
  v67 = *(v0 + 1160);
  if (v66 == 1)
  {
    v68 = v67[1];
    *(v0 + 304) = *v67;
    *(v0 + 320) = v68;
    v69 = v67[2];
    v70 = v67[3];
    v71 = v67[5];
    *(v0 + 368) = v67[4];
    *(v0 + 384) = v71;
    *(v0 + 336) = v69;
    *(v0 + 352) = v70;
    v73 = *(v0 + 304);
    v72 = *(v0 + 312);

    sub_10005AF88(v0 + 304);
    if (!*(v65 + 16))
    {
      goto LABEL_33;
    }
  }

  else
  {
    v74 = *(v0 + 1072);
    sub_1001B0368(v67, v74, type metadata accessor for ValidatedAttestation);
    v73 = *v74;
    v72 = v74[1];

    sub_1001AFB98(v74, type metadata accessor for ValidatedAttestation);
    if (!*(v65 + 16))
    {
LABEL_33:
      v82 = *(v0 + 1248);
      v83 = *(v0 + 952);

      v84 = *(v65 + 16);
      v85 = *(v83 + v82 + 8);
      if (v84 < v85)
      {
        v86 = *(v0 + 1080);
        sub_1001AFCB4(*(v0 + 1200), *(v0 + 1152), type metadata accessor for ValidatedAttestationOrAttestation);
        v87 = swift_getEnumCaseMultiPayload();
        v88 = *(v0 + 1152);
        v191 = v23;
        if (v87 == 1)
        {
          v89 = v88[1];
          *(v0 + 400) = *v88;
          *(v0 + 416) = v89;
          v90 = v88[2];
          v91 = v88[3];
          v92 = v88[5];
          *(v0 + 464) = v88[4];
          *(v0 + 480) = v92;
          *(v0 + 432) = v90;
          *(v0 + 448) = v91;
          v93 = *(v0 + 408);
          v167 = *(v0 + 400);

          sub_10005AF88(v0 + 400);
        }

        else
        {
          v130 = *(v0 + 1072);
          sub_1001B0368(v88, v130, type metadata accessor for ValidatedAttestation);
          v93 = v130[1];
          v167 = *v130;

          sub_1001AFB98(v130, type metadata accessor for ValidatedAttestation);
        }

        v131 = *(v0 + 1200);
        v132 = *(v0 + 1136);
        v172 = *(v0 + 1088);
        v173 = *(v0 + 1096);
        v133 = *(v0 + 1064);
        v182 = *(v0 + 1256);
        v185 = v133;
        v134 = *(v0 + 1056);
        v135 = *(v0 + 1040);
        v136 = *(v0 + 1032);
        v169 = v132;
        v170 = v136;
        v137 = *(v0 + 1024);
        v171 = v134;
        v175 = *(v0 + 1048);
        v177 = *(v0 + 1016);
        v174 = *(v0 + 1008);
        v168 = *(v0 + 992);
        v179 = *(v0 + 976);
        v180 = *(v0 + 984);
        v166 = *(v0 + 968);
        v178 = *(v0 + 952);
        v190 = *(v0 + 944);
        sub_1000603EC((v0 + 808), v167, v93);
        v138 = *(v0 + 816);

        v139 = sub_1001D1BA0();
        (*(*(v139 - 8) + 56))(v133, 1, 1, v139);
        sub_1001AFCB4(v131, v132, type metadata accessor for ValidatedAttestationOrAttestation);
        (*(v135 + 16))(v134, v166, v136);
        sub_1001AFCB4(v168, v137, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
        v140 = (*(v172 + 80) + 49) & ~*(v172 + 80);
        v141 = (v173 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
        v142 = (*(v135 + 80) + v141 + 8) & ~*(v135 + 80);
        v143 = (v175 + v142 + 7) & 0xFFFFFFFFFFFFFFF8;
        v144 = (v143 + 15) & 0xFFFFFFFFFFFFFFF8;
        v176 = (*(v174 + 80) + v144 + 8) & ~*(v174 + 80);
        v145 = swift_allocObject();
        *(v145 + 16) = 0;
        *(v145 + 24) = 0;
        *(v145 + 32) = v178;
        *(v145 + 40) = v191;
        *(v145 + 48) = 0;
        sub_1001B0368(v169, v145 + v140, type metadata accessor for ValidatedAttestationOrAttestation);
        *(v145 + v141) = v182;
        (*(v135 + 32))(v145 + v142, v171, v170);
        *(v145 + v143) = v179;
        *(v145 + v144) = v180;
        sub_1001B0368(v137, v145 + v176, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

        sub_10015C7D4(v185, &unk_1001E1910, v145, &unk_100222CD8, &qword_10022FDC0, &qword_1001E18A8, &unk_1001E1928);
        sub_100011F00(v185, &qword_100229350, &unk_1001D6BA0);
        v146 = v131;
        goto LABEL_57;
      }

      v94 = *(v0 + 1264);
      v95 = *(v0 + 952);
      sub_1001AFCB4(*(v0 + 1200), *(v0 + 1144), type metadata accessor for ValidatedAttestationOrAttestation);
      swift_retain_n();
      v46 = sub_1001D0E50();
      v96 = sub_1001D1DE0();
      if (os_log_type_enabled(v46, v96))
      {
        v188 = v96;
        v97 = *(v0 + 1272);
        v98 = *(v0 + 1128);
        v181 = *(v0 + 1144);
        v184 = *(v0 + 1080);
        v99 = *(v0 + 952);
        v100 = swift_slowAlloc();
        *(v0 + 856) = swift_slowAlloc();
        *v100 = 136315906;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        *(v0 + 824) = sub_1001D23A0();
        *(v0 + 832) = v101;
        v201._countAndFlagsBits = 2629690;
        v201._object = 0xE300000000000000;
        sub_1001D18B0(v201);
        *(v0 + 840) = 0x202C65646F6ELL;
        *(v0 + 848) = 0xE600000000000000;
        *(v0 + 864) = v23;
        v202._countAndFlagsBits = sub_1001D23A0();
        sub_1001D18B0(v202);

        sub_1001D18B0(*(v0 + 840));

        v203._countAndFlagsBits = 41;
        v203._object = 0xE100000000000000;
        sub_1001D18B0(v203);
        v102 = sub_1000954E0(*(v0 + 824), *(v0 + 832), (v0 + 856));

        *(v100 + 4) = v102;
        *(v100 + 12) = 2080;
        sub_1001B0368(v181, v98, type metadata accessor for ValidatedAttestationOrAttestation);
        v103 = swift_getEnumCaseMultiPayload();
        v104 = *(v0 + 1128);
        if (v103 == 1)
        {
          v105 = v104[1];
          *(v0 + 16) = *v104;
          *(v0 + 32) = v105;
          v106 = v104[2];
          v107 = v104[3];
          v108 = v104[5];
          *(v0 + 80) = v104[4];
          *(v0 + 96) = v108;
          *(v0 + 48) = v106;
          *(v0 + 64) = v107;
          v110 = *(v0 + 16);
          v109 = *(v0 + 24);

          sub_10005AF88(v0 + 16);
        }

        else
        {
          v150 = *(v0 + 1072);
          sub_1001B0368(v104, v150, type metadata accessor for ValidatedAttestation);
          v110 = *v150;
          v109 = v150[1];

          sub_1001AFB98(v150, type metadata accessor for ValidatedAttestation);
        }

        v151 = *(v0 + 1200);
        v152 = *(v0 + 952);
        v153 = sub_1000954E0(v110, v109, (v0 + 856));

        *(v100 + 14) = v153;
        *(v100 + 22) = 2048;
        *(v100 + 24) = v84;
        *(v100 + 32) = 2048;

        *(v100 + 34) = v85;

        _os_log_impl(&_mh_execute_header, v46, v188, "%s ignoring node %s; already have %ld attestations out of %ld max", v100, 0x2Au);
LABEL_53:
        swift_arrayDestroy();

LABEL_56:

        v146 = v151;
        goto LABEL_57;
      }

      v147 = *(v0 + 1200);
      v148 = *(v0 + 1144);
LABEL_46:
      v149 = *(v0 + 952);

      goto LABEL_48;
    }
  }

  v75 = *(v65 + 40);
  sub_1001D2580();
  sub_1001D1880();
  v76 = sub_1001D25C0();
  v77 = -1 << *(v65 + 32);
  v78 = v76 & ~v77;
  if (((*(v65 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
  {
    goto LABEL_33;
  }

  v79 = ~v77;
  while (1)
  {
    v80 = (*(v65 + 48) + 16 * v78);
    v81 = *v80 == v73 && v80[1] == v72;
    if (v81 || (sub_1001D2470() & 1) != 0)
    {
      break;
    }

    v78 = (v78 + 1) & v79;
    if (((*(v65 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v111 = *(v0 + 1264);
  v112 = *(v0 + 1200);
  v113 = *(v0 + 1120);
  v114 = *(v0 + 952);

  sub_1001AFCB4(v112, v113, type metadata accessor for ValidatedAttestationOrAttestation);

  v46 = sub_1001D0E50();
  v115 = sub_1001D1DD0();

  if (os_log_type_enabled(v46, v115))
  {
    v116 = *(v0 + 1272);
    v117 = *(v0 + 1112);
    v187 = *(v0 + 1120);
    v189 = *(v0 + 1080);
    v118 = *(v0 + 952);
    v119 = swift_slowAlloc();
    *(v0 + 880) = swift_slowAlloc();
    *v119 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    *(v0 + 776) = sub_1001D23A0();
    *(v0 + 784) = v120;
    v204._countAndFlagsBits = 2629690;
    v204._object = 0xE300000000000000;
    sub_1001D18B0(v204);
    *(v0 + 792) = 0x202C65646F6ELL;
    *(v0 + 800) = 0xE600000000000000;
    *(v0 + 872) = v23;
    v205._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v205);

    sub_1001D18B0(*(v0 + 792));

    v206._countAndFlagsBits = 41;
    v206._object = 0xE100000000000000;
    sub_1001D18B0(v206);
    v121 = sub_1000954E0(*(v0 + 776), *(v0 + 784), (v0 + 880));

    *(v119 + 4) = v121;
    *(v119 + 12) = 2080;
    sub_1001B0368(v187, v117, type metadata accessor for ValidatedAttestationOrAttestation);
    v122 = swift_getEnumCaseMultiPayload();
    v123 = *(v0 + 1112);
    if (v122 == 1)
    {
      v124 = v123[1];
      *(v0 + 496) = *v123;
      *(v0 + 512) = v124;
      v125 = v123[2];
      v126 = v123[3];
      v127 = v123[5];
      *(v0 + 560) = v123[4];
      *(v0 + 576) = v127;
      *(v0 + 528) = v125;
      *(v0 + 544) = v126;
      v129 = *(v0 + 496);
      v128 = *(v0 + 504);

      sub_10005AF88(v0 + 496);
    }

    else
    {
      v158 = *(v0 + 1072);
      sub_1001B0368(v123, v158, type metadata accessor for ValidatedAttestation);
      v129 = *v158;
      v128 = v158[1];

      sub_1001AFB98(v158, type metadata accessor for ValidatedAttestation);
    }

    v151 = *(v0 + 1200);
    v159 = sub_1000954E0(v129, v128, (v0 + 880));

    *(v119 + 14) = v159;
    _os_log_impl(&_mh_execute_header, v46, v115, "%s already have a node with identifier %s, conflict", v119, 0x16u);
    swift_arrayDestroy();

    goto LABEL_56;
  }

  v147 = *(v0 + 1200);
  v148 = *(v0 + 1120);
LABEL_48:

  sub_1001AFB98(v148, type metadata accessor for ValidatedAttestationOrAttestation);
  v146 = v147;
LABEL_57:
  sub_1001AFB98(v146, type metadata accessor for ValidatedAttestationOrAttestation);
  v160 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v161 = swift_task_alloc();
  *(v0 + 1280) = v161;
  *v161 = v0;
  v161[1] = sub_100184CE4;
  v162 = *(v0 + 1232);
  v163 = *(v0 + 1216);
  v164 = *(v0 + 1208);

  return AsyncStream.Iterator.next(isolation:)(v164, 0, 0, v163);
}

uint64_t sub_100186234()
{
  v1 = *(*v0 + 1336);
  v3 = *v0;

  return _swift_task_switch(sub_100186330, 0, 0);
}

uint64_t sub_100186330(unint64_t a1)
{
  v128 = v2;
  LODWORD(v6) = *(v2 + 704);
  if (v6 != 255)
  {
    v7 = *(v2 + 1328);
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
    }

    else
    {
      v123 = *(v2 + 688);
      v1 = *(v2 + 696);
      v9 = *(v2 + 1288);
      v10 = *(v2 + 1264);
      v11 = *(v2 + 952);
      swift_bridgeObjectRetain_n();

      v3 = sub_1001D0E50();
      v4 = sub_1001D1DD0();

      v12 = os_log_type_enabled(v3, v4);
      v5 = *(v2 + 1288);
      if (!v12)
      {
        v34 = *(v2 + 1288);
        swift_bridgeObjectRelease_n();

        v5 = v123;
        if ((v6 & 1) == 0)
        {
LABEL_6:
          if (!v1)
          {
            sub_1001ADC8C(v5, 0, v6);
            v59 = 1;
            v58 = 1;
LABEL_64:
            *(v2 + 707) = v58;
            *(v2 + 706) = v59;
LABEL_65:
            *(v2 + 1328) = v8;
            v104 = async function pointer to TaskGroup.next(isolation:)[1];
            v105 = swift_task_alloc();
            *(v2 + 1336) = v105;
            v65 = sub_100011AC0(&qword_10022FDE8, &qword_1001E1900);
            *v105 = v2;
            v105[1] = sub_100186234;
            v106 = *(v2 + 944);
            v55 = v2 + 688;
            v63 = 0;
            v64 = 0;

            return TaskGroup.next(isolation:)(v55, v63, v64, v65);
          }

          if (v1 == 1)
          {
            sub_1001ADC8C(v5, 1uLL, v6);
            goto LABEL_65;
          }

          v61 = *(v2 + 1312);
          sub_1001ADC70(v1, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 904) = v61;
          v55 = sub_1000066C4(v5);
          v66 = *(v61 + 16);
          v67 = (v63 & 1) == 0;
          v39 = __OFADD__(v66, v67);
          v68 = v66 + v67;
          if (!v39)
          {
            LOBYTE(v3) = v63;
            v4 = v2 + 904;
            if (*(*(v2 + 1312) + 24) < v68)
            {
              sub_10000E498(v68, isUniquelyReferenced_nonNull_native);
              v69 = *v4;
              v55 = sub_1000066C4(v5);
              if ((v3 & 1) != (v63 & 1))
              {
LABEL_33:
                *(*(v2 + 1296) + 16) = *(v2 + 707);

                return sub_1001D24F0();
              }

LABEL_47:
              v51 = *v4;
              if (v3)
              {
LABEL_48:
                v94 = v51[7];
                v95 = *(v94 + 8 * v55);
                *(v94 + 8 * v55) = v1;

LABEL_58:
                v100 = *(v2 + 1320);
                swift_errorRetain();
                v101 = swift_isUniquelyReferenced_nonNull_native();
                v60 = *(v2 + 1320);
                if ((v101 & 1) == 0)
                {
                  v60 = sub_100009858(0, v60[2] + 1, 1, *(v2 + 1320));
                }

                v103 = v60[2];
                v102 = v60[3];
                if (v103 >= v102 >> 1)
                {
                  v60 = sub_100009858((v102 > 1), v103 + 1, 1, v60);
                }

                sub_1001ADC8C(v5, v1, v6);
                v60[2] = v103 + 1;
                v60[v103 + 4] = v1;
                v58 = *(v2 + 707);
                v59 = *(v2 + 706);
                goto LABEL_63;
              }

LABEL_56:
              v51[(v55 >> 6) + 8] |= 1 << v55;
              *(v51[6] + 8 * v55) = v5;
              *(v51[7] + 8 * v55) = v1;
              v98 = v51[2];
              v39 = __OFADD__(v98, 1);
              v99 = v98 + 1;
              if (v39)
              {
                __break(1u);
                return TaskGroup.next(isolation:)(v55, v63, v64, v65);
              }

              v51[2] = v99;
              goto LABEL_58;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_47;
            }

LABEL_55:
            v97 = v55;
            sub_100010E14();
            v55 = v97;
            v51 = *v4;
            if (v3)
            {
              goto LABEL_48;
            }

            goto LABEL_56;
          }

LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_12:
        v35 = *(v2 + 1312);
        sub_1001ADC54(v5, v1, v6);
        sub_1001ADC70(v1, 1);
        v4 = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 920) = v35;
        a1 = sub_1000066C4(v5);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v39 = __OFADD__(v37, v38);
        v40 = v37 + v38;
        if (!v39)
        {
          LOBYTE(v3) = v36;
          if (*(*(v2 + 1312) + 24) < v40)
          {
            sub_10000E498(v40, v4);
            v41 = *(v2 + 920);
            a1 = sub_1000066C4(v5);
            if ((v3 & 1) != (v42 & 1))
            {
              goto LABEL_33;
            }

LABEL_24:
            v51 = *(v2 + 920);
            v52 = *(v2 + 1304);
            if (v3)
            {
              v53 = v51[7];
              v54 = *(v53 + 8 * a1);
              *(v53 + 8 * a1) = v1;

              sub_1001ADC8C(v5, v1, v6);
            }

            else
            {
              v51[(a1 >> 6) + 8] |= 1 << a1;
              *(v51[6] + 8 * a1) = v5;
              *(v51[7] + 8 * a1) = v1;

              v55 = sub_1001ADC8C(v5, v1, v6);
              v56 = v51[2];
              v39 = __OFADD__(v56, 1);
              v57 = v56 + 1;
              if (v39)
              {
                __break(1u);
                goto LABEL_54;
              }

              v51[2] = v57;
            }

            v58 = *(v2 + 707);
            v59 = *(v2 + 706);
            v60 = *(v2 + 1320);
            *(v2 + 1304) = v1;
LABEL_63:
            *(v2 + 1320) = v60;
            *(v2 + 1312) = v51;
            goto LABEL_64;
          }

          if (v4)
          {
            goto LABEL_24;
          }

LABEL_52:
          v96 = a1;
          sub_100010E14();
          a1 = v96;
          goto LABEL_24;
        }

LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v119 = v6;
      v121 = v1;
      v13 = *(v2 + 1272);
      v1 = v8;
      v14 = *(v2 + 952);
      v15 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *(v2 + 896) = v6;
      *v15 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v8 = v1;
      *(v2 + 760) = sub_1001D23A0();
      *(v2 + 768) = v16;
      v130._countAndFlagsBits = 58;
      v130._object = 0xE100000000000000;
      sub_1001D18B0(v130);
      v17 = sub_1000954E0(*(v2 + 760), *(v2 + 768), (v2 + 896));

      *(v15 + 4) = v17;
      *(v15 + 12) = 2048;
      v18 = *(v5 + 16);

      if (!__OFSUB__(v18, v1))
      {
        v19 = *(v2 + 1288);
        *(v15 + 14) = v18 - v1;

        _os_log_impl(&_mh_execute_header, v3, v4, "%s Node substream task finished. Remaining: %ld", v15, 0x16u);
        sub_100011CF0(v6);

        v1 = v121;
        LOBYTE(v6) = v119;
        v5 = v123;
        if ((v119 & 1) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  v20 = *(v2 + 1288);
  v21 = *(v2 + 1264);
  v22 = *(v2 + 952);
  *(*(v2 + 1296) + 16) = *(v2 + 707);
  swift_bridgeObjectRetain_n();

  v23 = sub_1001D0E50();
  v24 = sub_1001D1DD0();

  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v2 + 1288);
  if (v25)
  {
    v27 = *(v2 + 1272);
    v28 = *(v2 + 952);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v125 = v30;
    *v29 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v126 = sub_1001D23A0();
    v127 = v31;
    v131._countAndFlagsBits = 58;
    v131._object = 0xE100000000000000;
    sub_1001D18B0(v131);
    v32 = sub_1000954E0(v126, v127, &v125);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2048;
    v33 = *(v26 + 16);

    *(v29 + 14) = v33;

    _os_log_impl(&_mh_execute_header, v23, v24, "%s All %ld node substreams have finished", v29, 0x16u);
    sub_100011CF0(v30);
  }

  else
  {
    v43 = *(v2 + 1288);
    swift_bridgeObjectRelease_n();
  }

  if (*(v2 + 705) == 1)
  {
    v44 = *(v2 + 1320);
    v45 = *(v2 + 1288);

    v46 = swift_task_alloc();
    *(v2 + 1344) = v46;
    *v46 = v2;
    v46[1] = sub_100186E08;
    v47 = *(v2 + 1000);

    return sub_10013F3E4();
  }

  v49 = *(v2 + 1320);
  if (*(v2 + 706))
  {
    v50 = *(v2 + 1320);

LABEL_42:
    v82 = *(v2 + 1304);
    sub_10018A4A0(*(v2 + 952), *(v2 + 1296));

    v124 = 0;
    v122 = 0;
    goto LABEL_43;
  }

  v70 = *(v49 + 16);
  v71 = *(*(v2 + 1288) + 16);

  if (v70 == v71 && *(v49 + 16))
  {
    v72 = *(v2 + 1320);
    v73 = *(v2 + 1304);
    sub_100089BE4();
    v74 = swift_allocError();
    *v75 = 5906;
    *(v75 + 8) = v72;

    v76 = v74;
  }

  else
  {
    v77 = *(v2 + 1320);
    v78 = *(v2 + 1304);

    if (!v78)
    {
      goto LABEL_42;
    }

    v76 = *(v2 + 1304);
  }

  v79 = *(v2 + 1296);
  v80 = *(v2 + 952);
  v81 = *(v80 + *(*v80 + 368));
  v124 = v76;
  sub_10016A96C(v76);
  sub_10018A4A0(v80, v79);
  v122 = 1;
LABEL_43:
  v83 = *(v2 + 1312);
  v84 = *(v2 + 1296);
  v85 = *(v2 + 1256);
  v86 = *(v2 + 1240);
  v87 = *(v2 + 1232);
  v88 = *(v2 + 1208);
  v89 = *(v2 + 1200);
  v90 = *(v2 + 1192);
  v91 = *(v2 + 1184);
  v92 = *(v2 + 1176);
  v107 = *(v2 + 1168);
  v108 = *(v2 + 1160);
  v109 = *(v2 + 1152);
  v110 = *(v2 + 1144);
  v111 = *(v2 + 1136);
  v112 = *(v2 + 1128);
  v113 = *(v2 + 1120);
  v114 = *(v2 + 1112);
  v115 = *(v2 + 1104);
  v116 = *(v2 + 1072);
  v117 = *(v2 + 1064);
  v118 = *(v2 + 1056);
  v120 = *(v2 + 1024);

  v93 = *(v2 + 8);

  return v93(v124, v122);
}

uint64_t sub_100186E08(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1344);
  v7 = *v2;
  *(v3 + 1352) = a1;
  *(v3 + 1360) = v1;

  if (v1)
  {
    v5 = sub_100187144;
  }

  else
  {
    v5 = sub_100186F20;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100186F20()
{
  result = v0[169];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (*(v0[164] + 16) && (v2 = sub_1000066C4(result), (v3 & 1) != 0))
    {
      v4 = v0[163];
      v5 = v0[162];
      v6 = v0[119];
      v33 = *(*(v0[164] + 56) + 8 * v2);
      swift_errorRetain();
      sub_10018A4A0(v6, v5);
      v32 = 1;
    }

    else
    {
      v7 = v0[163];
      sub_10018A4A0(v0[119], v0[162]);
      v33 = 0;
      v32 = 0;
    }

    v8 = v0[164];
    v9 = v0[162];
    v10 = v0[157];
    v11 = v0[155];
    v12 = v0[154];
    v13 = v0[151];
    v14 = v0[150];
    v15 = v0[149];
    v16 = v0[148];
    v17 = v0[147];
    v19 = v0[146];
    v20 = v0[145];
    v21 = v0[144];
    v22 = v0[143];
    v23 = v0[142];
    v24 = v0[141];
    v25 = v0[140];
    v26 = v0[139];
    v27 = v0[138];
    v28 = v0[134];
    v29 = v0[133];
    v30 = v0[132];
    v31 = v0[128];

    v18 = v0[1];

    return v18(v33, v32);
  }

  return result;
}

uint64_t sub_100187144()
{
  v27 = v0[170];
  v1 = v0[163];
  sub_10018A4A0(v0[119], v0[162]);

  v2 = v0[164];
  v3 = v0[162];
  v4 = v0[157];
  v5 = v0[155];
  v6 = v0[154];
  v7 = v0[151];
  v8 = v0[150];
  v9 = v0[149];
  v10 = v0[148];
  v11 = v0[147];
  v14 = v0[146];
  v15 = v0[145];
  v16 = v0[144];
  v17 = v0[143];
  v18 = v0[142];
  v19 = v0[141];
  v20 = v0[140];
  v21 = v0[139];
  v22 = v0[138];
  v23 = v0[134];
  v24 = v0[133];
  v25 = v0[132];
  v26 = v0[128];

  v12 = v0[1];

  return v12(v27, 1);
}

uint64_t sub_100187310(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 96) = v14;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 33) = a3;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  v9 = *(*(type metadata accessor for ValidatedAttestation() - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v10 = type metadata accessor for ValidatedAttestationOrAttestation();
  *(v8 + 112) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_10018740C, 0, 0);
}

uint64_t sub_10018740C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 40) + 392);
  sub_1001AFCB4(v2, *(v0 + 144), type metadata accessor for ValidatedAttestationOrAttestation);
  sub_1001AFCB4(v2, v1, type metadata accessor for ValidatedAttestationOrAttestation);

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    v54 = v5;
    v8 = *(v0 + 128);
    v52 = *(v0 + 112);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = *(v0 + 33);
    v12 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v12 = 136315650;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v56 = sub_1001D23A0();
    v57 = v13;
    v60._countAndFlagsBits = 2629690;
    v60._object = 0xE300000000000000;
    sub_1001D18B0(v60);
    v61._countAndFlagsBits = sub_10016B71C(v10, v11);
    sub_1001D18B0(v61);

    v62._countAndFlagsBits = 41;
    v62._object = 0xE100000000000000;
    sub_1001D18B0(v62);
    v14 = sub_1000954E0(v56, v57, &v59);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    sub_1001B0368(v7, v8, type metadata accessor for ValidatedAttestationOrAttestation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = *(v0 + 128);
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v16;
      v17 = v16[1];
      v19 = v16[5];
      v20 = v16[7];
      v21 = v16[9];
      v22 = v16[11];
      sub_10002683C(v16[2], v16[3]);
    }

    else
    {
      v24 = *(v0 + 104);
      sub_1001B0368(v16, v24, type metadata accessor for ValidatedAttestation);
      v18 = *v24;
      v17 = v24[1];

      sub_1001AFB98(v24, type metadata accessor for ValidatedAttestation);
    }

    v25 = *(v0 + 136);
    v27 = *(v0 + 112);
    v26 = *(v0 + 120);
    v28 = sub_1000954E0(v18, v17, &v59);

    *(v12 + 14) = v28;
    *(v12 + 22) = 2080;
    sub_1001B0368(v25, v26, type metadata accessor for ValidatedAttestationOrAttestation);
    v29 = swift_getEnumCaseMultiPayload();
    v30 = *(v0 + 120);
    if (v29 == 1)
    {
      v31 = v30[1];
      v32 = v30[2];
      v34 = v30[3];
      v33 = v30[4];
      v35 = v30[5];
      v36 = v30[7];
      v37 = v4;
      v38 = v30[9];
      v53 = v30[11];

      sub_10002683C(v32, v34);

      v4 = v37;
    }

    else
    {
      v39 = *(v0 + 104);
      sub_1001B0368(v30, v39, type metadata accessor for ValidatedAttestation);
      v33 = *(v39 + 32);
      v35 = *(v39 + 40);

      sub_1001AFB98(v39, type metadata accessor for ValidatedAttestation);
    }

    v40 = sub_1000954E0(v33, v35, &v59);

    *(v12 + 24) = v40;
    _os_log_impl(&_mh_execute_header, v4, v54, "%s Creating node stream subtask for node: %s cloudOSVersion:%s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 136);

    sub_1001AFB98(v23, type metadata accessor for ValidatedAttestationOrAttestation);
    sub_1001AFB98(v7, type metadata accessor for ValidatedAttestationOrAttestation);
  }

  v55 = *(v0 + 56);
  v41 = *(v0 + 33);
  v43 = *(v0 + 40);
  v42 = *(v0 + 48);
  v44 = sub_100011AC0(&qword_10022FDF0, &qword_1001E1948);
  v45 = sub_100011AC0(&qword_10022FDC0, &qword_1001E18A8);
  v46 = swift_task_alloc();
  *(v0 + 152) = v46;
  v47 = *(v0 + 72);
  v48 = *(v0 + 88);
  *(v46 + 16) = v55;
  *(v46 + 32) = v43;
  *(v46 + 40) = v42;
  *(v46 + 48) = v41;
  *(v46 + 56) = v47;
  *(v46 + 72) = v48;
  v49 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v50 = swift_task_alloc();
  *(v0 + 160) = v50;
  *v50 = v0;
  v50[1] = sub_1001879A4;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v44, v45, 0, 0, &unk_1001E1958, v46, v44);
}

uint64_t sub_1001879A4()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_100187ABC, 0, 0);
}

uint64_t sub_100187ABC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  sub_10018A0D4(*(v0 + 40), *(v0 + 48), *(v0 + 33), *(v0 + 56), &static os_log_type_t.debug.getter, "%s Leaving node stream subtask for node: %s");
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);

  v9 = *(v0 + 8);

  return v9(v6, v7, v8);
}

uint64_t sub_100187BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v17;
  *(v8 + 96) = v18;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 25) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  v9 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) - 8);
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 + 64);
  *(v8 + 120) = swift_task_alloc();
  v10 = sub_100011AC0(&qword_10022FDB0, &qword_1001E1880);
  *(v8 + 128) = v10;
  v11 = *(v10 - 8);
  *(v8 + 136) = v11;
  *(v8 + 144) = *(v11 + 64);
  *(v8 + 152) = swift_task_alloc();
  v12 = *(*(sub_100011AC0(&qword_100229350, &unk_1001D6BA0) - 8) + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v13 = type metadata accessor for ValidatedAttestationOrAttestation();
  *(v8 + 168) = v13;
  v14 = *(v13 - 8);
  *(v8 + 176) = v14;
  *(v8 + 184) = *(v14 + 64);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100187D9C, 0, 0);
}

uint64_t sub_100187D9C()
{
  v1 = *(v0 + 168);
  sub_1001AFCB4(*(v0 + 40), *(v0 + 200), type metadata accessor for ValidatedAttestationOrAttestation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 200);
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[5];
    v8 = v3[7];
    v9 = v3[9];
    v10 = v3[11];
    v11 = v3[12];

    sub_10002683C(v5, v6);
  }

  else
  {
    v11 = *(v3 + *(sub_100011AC0(qword_10022E650, &unk_1001DF500) + 48));
    sub_1001AFB98(v3, type metadata accessor for ValidatedAttestation);
  }

  *(v0 + 208) = v11;
  v69 = v11;
  v70 = *(v0 + 48);
  if (v70)
  {
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);
    v15 = *(v0 + 160);
    v67 = *(v0 + 25);
    v16 = *(v0 + 56);
    v65 = *(v0 + 64);
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    v19 = sub_1001D1BA0();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    sub_1001AFCB4(v17, v12, type metadata accessor for ValidatedAttestationOrAttestation);
    v20 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v62 = v13 + 7;
    v21 = (v20 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v70;
    sub_1001B0368(v12, v22 + v20, type metadata accessor for ValidatedAttestationOrAttestation);
    *(v22 + v21) = v16;
    v23 = v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v23 = v65;
    v23[8] = v67;

    sub_10015C7D4(v15, &unk_1001E1988, v22, &unk_100222D50, &qword_10022FDF0, &qword_1001E1948, &unk_1001E19A8);
    sub_100011F00(v15, &qword_100229350, &unk_1001D6BA0);
    v66 = *(v0 + 48);
  }

  else
  {
    v66 = 0;
    v62 = *(v0 + 184) + 7;
  }

  v24 = *(v0 + 192);
  v26 = *(v0 + 152);
  v25 = *(v0 + 160);
  v64 = v25;
  v27 = *(v0 + 136);
  v51 = v26;
  v52 = *(v0 + 144);
  v29 = *(v0 + 120);
  v28 = *(v0 + 128);
  v49 = *(v0 + 176);
  v50 = v28;
  v55 = v29;
  v56 = *(v0 + 112);
  v54 = *(v0 + 104);
  v30 = *(v0 + 96);
  v31 = *(v0 + 72);
  v60 = *(v0 + 80);
  v61 = *(v0 + 88);
  v59 = *(v0 + 25);
  v57 = *(v0 + 56);
  v58 = *(v0 + 64);
  v32 = *(v0 + 40);
  v68 = *(v0 + 32);
  v33 = sub_1001D1BA0();
  (*(*(v33 - 8) + 56))(v25, 1, 1, v33);
  sub_1001AFCB4(v32, v24, type metadata accessor for ValidatedAttestationOrAttestation);
  v48 = v27;
  (*(v27 + 16))(v26, v31, v28);
  sub_1001AFCB4(v30, v29, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);
  v34 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v35 = (v34 + v62) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (*(v27 + 80) + v36 + 9) & ~*(v27 + 80);
  v63 = (v52 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (*(v54 + 80) + v39 + 8) & ~*(v54 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  sub_1001B0368(v24, v41 + v34, type metadata accessor for ValidatedAttestationOrAttestation);
  *(v41 + v35) = v57;
  v42 = v41 + v36;
  *v42 = v58;
  *(v42 + 8) = v59;
  (*(v48 + 32))(v41 + v37, v51, v50);
  *(v41 + v63) = v69;
  *(v41 + v53) = v60;
  *(v41 + v38) = v61;
  *(v41 + v39) = v66;
  sub_1001B0368(v55, v41 + v40, type metadata accessor for NWAsyncConnection.OHTTPStreamFactory);

  sub_10015C7D4(v64, &unk_1001E1970, v41, &unk_100222D50, &qword_10022FDF0, &qword_1001E1948, &unk_1001E19A8);
  sub_100011F00(v64, &qword_100229350, &unk_1001D6BA0);
  v43 = async function pointer to TaskGroup.next(isolation:)[1];
  v44 = swift_task_alloc();
  *(v0 + 216) = v44;
  v45 = sub_100011AC0(&qword_10022FDF8, &qword_1001E1978);
  *v44 = v0;
  v44[1] = sub_10018839C;
  v46 = *(v0 + 32);

  return TaskGroup.next(isolation:)(v0 + 16, 0, 0, v45);
}

uint64_t sub_10018839C()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return _swift_task_switch(sub_100188498, 0, 0);
}

void sub_100188498()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == 255)
  {
    __break(1u);
  }

  else
  {
    v3 = **(v0 + 32);
    sub_100011AC0(&qword_10022FDF0, &qword_1001E1948);
    sub_1001D1AE0();
    if ((v2 & 1) == 0 && v1 <= 2)
    {
      v1 = qword_1001E1CB8[v1];
    }

    v5 = *(v0 + 192);
    v4 = *(v0 + 200);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 120);

    v9 = *(v0 + 8);
    v10 = *(v0 + 208);

    v9(v10, v1, v2 & 1);
  }
}

uint64_t sub_100188594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 128) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(*(type metadata accessor for ValidatedAttestation() - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  v7 = type metadata accessor for ValidatedAttestationOrAttestation();
  *(v5 + 56) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100188674, 0, 0);
}

uint64_t sub_100188674()
{
  v1 = v0[7];
  sub_1001AFCB4(v0[3], v0[10], type metadata accessor for ValidatedAttestationOrAttestation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[10];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *v3;
    v4 = v3[1];
    v6 = v3[5];
    v7 = v3[7];
    v8 = v3[9];
    v9 = v3[11];
    sub_10002683C(v3[2], v3[3]);
  }

  else
  {
    v10 = v0[6];
    sub_1001B0368(v3, v10, type metadata accessor for ValidatedAttestation);
    v5 = *v10;
    v4 = v10[1];

    sub_1001AFB98(v10, type metadata accessor for ValidatedAttestation);
  }

  v0[11] = v4;
  v11 = v0[2];
  v12 = swift_task_alloc();
  v0[12] = v12;
  v12[2] = v11;
  v12[3] = v5;
  v12[4] = v4;
  v13 = swift_task_alloc();
  v0[13] = v13;
  v13[2] = v11;
  v13[3] = v5;
  v13[4] = v4;
  v14 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v15 = swift_task_alloc();
  v0[14] = v15;
  *v15 = v0;
  v15[1] = sub_100188860;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v15, &unk_1001E1998, v12, sub_1001AEF1C, v13, 0, 0, &type metadata for () + 8);
}

uint64_t sub_100188860()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_100188A24;
  }

  else
  {
    v6 = v2[12];
    v5 = v2[13];
    v7 = v2[11];

    v4 = sub_100188998;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100188998()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_100188A24()
{
  v41 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);

  v7 = *(*v5 + 392);
  sub_1001AFCB4(v6, v4, type metadata accessor for ValidatedAttestationOrAttestation);

  v8 = sub_1001D0E50();
  v9 = sub_1001D1DD0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 64);
    v36 = *(v0 + 72);
    v37 = *(v0 + 56);
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
    v13 = *(v0 + 128);
    v14 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v14 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v39 = sub_1001D23A0();
    v40 = v15;
    v43._countAndFlagsBits = 2629690;
    v43._object = 0xE300000000000000;
    sub_1001D18B0(v43);
    v44._countAndFlagsBits = sub_10016B71C(v12, v13);
    sub_1001D18B0(v44);

    v45._countAndFlagsBits = 41;
    v45._object = 0xE100000000000000;
    sub_1001D18B0(v45);
    v16 = sub_1000954E0(v39, v40, &v38);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2080;
    sub_1001B0368(v36, v10, type metadata accessor for ValidatedAttestationOrAttestation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = *(v0 + 64);
    if (EnumCaseMultiPayload == 1)
    {
      v20 = *v18;
      v19 = v18[1];
      v21 = v18[5];
      v22 = v18[7];
      v23 = v18[9];
      v24 = v18[11];
      sub_10002683C(v18[2], v18[3]);
    }

    else
    {
      v27 = *(v0 + 48);
      sub_1001B0368(v18, v27, type metadata accessor for ValidatedAttestation);
      v20 = *v27;
      v19 = v27[1];

      sub_1001AFB98(v27, type metadata accessor for ValidatedAttestation);
    }

    v28 = *(v0 + 120);
    v29 = sub_1000954E0(v20, v19, &v38);

    *(v14 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s cancelled node stream %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v25 = *(v0 + 120);
    v26 = *(v0 + 72);

    sub_1001AFB98(v26, type metadata accessor for ValidatedAttestationOrAttestation);
  }

  v31 = *(v0 + 72);
  v30 = *(v0 + 80);
  v32 = *(v0 + 64);
  v33 = *(v0 + 48);

  v34 = *(v0 + 8);

  return v34(2);
}

uint64_t sub_100188DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = type metadata accessor for NWAsyncConnection.Inbound(0);
  v7[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v10 = *(*(type metadata accessor for NWConnectionWrapper.State(0) - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v11 = sub_1001CFDA0();
  v7[15] = v11;
  v12 = *(v11 - 8);
  v7[16] = v12;
  v13 = *(v12 + 64) + 15;
  v7[17] = swift_task_alloc();
  v14 = sub_1001D02F0();
  v7[18] = v14;
  v15 = *(v14 - 8);
  v7[19] = v15;
  v16 = *(v15 + 64) + 15;
  v7[20] = swift_task_alloc();
  v17 = sub_1001D0E60();
  v7[21] = v17;
  v18 = *(v17 - 8);
  v7[22] = v18;
  v19 = *(v18 + 64) + 15;
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();

  return _swift_task_switch(sub_100188FD4, 0, 0);
}

void sub_100188FD4()
{
  if ((v0[6] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v25 = v0;
    v1 = v0[11];
    v2 = v0[5];
    v3 = *v2;
    v0[25] = *v2;
    v4 = v2[1];
    v0[26] = v4;
    v5 = (v2 + *(type metadata accessor for ValidatedAttestation() + 32));
    v0[27] = *v5;
    v0[28] = v5[1];
    v6 = *(*v1 + 392);

    v7 = sub_1001D0E50();
    v8 = sub_1001D1E00();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[15];
      v10 = v0[11];
      v20 = v0[6];
      v11 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v11 = 136315394;
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v22 = sub_1001D23A0();
      v23 = v12;
      v27._countAndFlagsBits = 2629690;
      v27._object = 0xE300000000000000;
      sub_1001D18B0(v27);
      v24._countAndFlagsBits = 0x202C65646F6ELL;
      v24._object = 0xE600000000000000;
      v0[4] = v20;
      v28._countAndFlagsBits = sub_1001D23A0();
      sub_1001D18B0(v28);

      sub_1001D18B0(v24);

      v29._countAndFlagsBits = 41;
      v29._object = 0xE100000000000000;
      sub_1001D18B0(v29);
      v13 = sub_1000954E0(v22, v23, &v21);

      *(v11 + 4) = v13;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1000954E0(v3, v4, &v21);
      _os_log_impl(&_mh_execute_header, v7, v8, "%s starting node stream to %s; creating request...", v11, 0x16u);
      swift_arrayDestroy();
    }

    v14 = v0[10];
    v16 = v0[5];
    v15 = v0[6];
    v0[29] = *(v16 + 104);
    v0[30] = *(v16 + 112);
    v24._countAndFlagsBits = 0x202C65646F6ELL;
    v24._object = 0xE600000000000000;
    v0[2] = v15;
    v30._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v30);

    object = v24._object;
    v0[31] = v24._countAndFlagsBits;
    v0[32] = object;
    v18 = *(v14 + 16);
    v19 = swift_task_alloc();
    v0[33] = v19;
    *v19 = v0;
    v19[1] = sub_100189338;

    sub_10013F08C(v19);
  }
}

uint64_t sub_100189338()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = *(v2 + 256);

    v5 = sub_100189B24;
  }

  else
  {
    v5 = sub_100189454;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100189454()
{
  v72 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  sub_1001D11A0();
  v5 = *(v3 + 8);

  sub_100012038(v1, v2);
  v6 = sub_1001D10F0();
  *(v0 + 280) = v6;
  if (v6)
  {
    v66 = *(v0 + 248);
    v8 = *(v0 + 184);
    v7 = *(v0 + 192);
    v9 = *(v0 + 176);
    v69 = *(v0 + 168);
    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 128);
    v64 = *(v0 + 120);
    v67 = *(v0 + 112);
    v63 = *(v0 + 80);
    v65 = v6;
    sub_100015A10(0, &qword_100229300, OS_dispatch_queue_ptr);
    *(v0 + 288) = sub_1001D1E40();
    v15 = *(type metadata accessor for NWAsyncConnection.OHTTPStreamFactory(0) + 28);
    (*(v10 + 104))(v11, enum case for TC2LogCategory.network(_:), v12);
    sub_1001D08B0();
    (*(v10 + 8))(v11, v12);
    v16 = *(v9 + 16);
    v16(v8, v7, v69);
    (*(v14 + 16))(v13, v63 + v15, v64);
    v17 = type metadata accessor for NWConnectionWrapper(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    *(v0 + 296) = v20;
    v21 = (v20 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_stateLock);
    v22 = sub_100011AC0(&qword_10022F108, &qword_1001E0830);
    (*(*(v22 - 8) + 56))(v67, 1, 2, v22);
    *v21 = 0;
    v23 = *(sub_100011AC0(&qword_10022F110, &qword_1001E0620) + 28);
    v24 = sub_100011AC0(&qword_10022F118, &unk_1001E0628);
    bzero(v21 + v23, *(*(v24 - 8) + 64));
    sub_1001B0368(v67, v21 + v23, type metadata accessor for NWConnectionWrapper.State);
    *(v20 + 16) = v65;
    v68 = v16;
    v16((v20 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger), v8, v69);
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);

    v70 = sub_1001D23A0();
    v71 = v25;
    v80._countAndFlagsBits = 1130045498;
    v80._object = 0xE400000000000000;
    sub_1001D18B0(v80);
    *(v0 + 24) = sub_1001D1000();
    v81._countAndFlagsBits = sub_1001D23A0();
    sub_1001D18B0(v81);

    v82._countAndFlagsBits = 2629725;
    v82._object = 0xE300000000000000;
    sub_1001D18B0(v82);
    sub_1001D18B0(v66);
    v83._countAndFlagsBits = 41;
    v83._object = 0xE100000000000000;
    sub_1001D18B0(v83);
    v26 = v71;
    v27 = (v20 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix);
    *v27 = v70;
    v27[1] = v26;
    *(v20 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_readyEvent) = 0;
    v28 = *(v20 + 16);

    sub_1001D10B0();
    (*(v14 + 8))(v13, v64);
    v29 = *(v9 + 8);
    *(v0 + 304) = v29;
    *(v0 + 312) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v8, v69);
    *(v0 + 320) = OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logger;

    v30 = sub_1001D0E50();
    v31 = sub_1001D1DD0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v70 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1000954E0(*(v20 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v20 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v70);
      _os_log_impl(&_mh_execute_header, v30, v31, "%s start", v32, 0xCu);
      sub_100011CF0(v33);
    }

    v34 = *(v0 + 256);
    v35 = *(v0 + 192);
    v36 = *(v0 + 168);
    v38 = *(v0 + 96);
    v37 = *(v0 + 104);
    v39 = *(v20 + 16);
    sub_1001D1170();
    v68(v37 + *(v38 + 20), v35, v36);
    v40 = *(v38 + 24);
    sub_100011AC0(qword_100227990, &unk_1001D34D0);
    v41 = swift_allocObject();
    *(v41 + 20) = 0;
    swift_retain_n();

    *(v41 + 16) = 0;
    *(v37 + v40) = v41;
    *v37 = v20;
    v42 = swift_task_alloc();
    *(v0 + 328) = v42;
    *v42 = v0;
    v42[1] = sub_100189BCC;
    v44 = *(v0 + 216);
    v43 = *(v0 + 224);
    v45 = *(v0 + 200);
    v46 = *(v0 + 208);
    v47 = *(v0 + 104);
    v48 = *(v0 + 88);
    v50 = *(v0 + 64);
    v49 = *(v0 + 72);
    v52 = *(v0 + 48);
    v51 = *(v0 + 56);
    v78 = v52;
    v79 = v50;
    v76 = v44;
    v77 = v43;
    v75 = v49;
    v74 = 0;

    return sub_10018A690(v42, v47, v20, v51, v48, v45, v46, v52);
  }

  else
  {
    v54 = *(v0 + 256);

    sub_100141174();
    swift_allocError();
    *v55 = 0;
    swift_willThrow();
    v57 = *(v0 + 184);
    v56 = *(v0 + 192);
    v58 = *(v0 + 160);
    v59 = *(v0 + 136);
    v61 = *(v0 + 104);
    v60 = *(v0 + 112);

    v62 = *(v0 + 8);

    return v62();
  }
}

uint64_t sub_100189B24()
{
  v1 = v0[34];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[20];
  v5 = v0[17];
  v7 = v0[13];
  v6 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100189BCC()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_100189EDC;
  }

  else
  {
    v3 = sub_100189CE0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100189CE0()
{
  v24 = v0;
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[13];

  sub_1001AFB98(v3, type metadata accessor for NWAsyncConnection.Inbound);

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[37];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000954E0(*(v6 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v6 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v23);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s cancel", v7, 0xCu);
    sub_100011CF0(v8);
  }

  v9 = v0[38];
  v10 = v0[39];
  v11 = v0[36];
  v12 = v0[35];
  v14 = v0[23];
  v13 = v0[24];
  v15 = v0[21];
  v19 = v0[20];
  v20 = v0[17];
  v21 = v0[14];
  v22 = v0[13];
  v16 = *(v0[37] + 16);
  sub_1001D1180();

  v9(v13, v15);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100189EDC()
{
  v26 = v0;
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[13];

  sub_1001AFB98(v3, type metadata accessor for NWAsyncConnection.Inbound);

  v4 = sub_1001D0E50();
  v5 = sub_1001D1E00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[37];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000954E0(*(v6 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix), *(v6 + OBJC_IVAR____TtC20privatecloudcomputed19NWConnectionWrapper_logPrefix + 8), &v25);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s cancel", v7, 0xCu);
    sub_100011CF0(v8);
  }

  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[36];
  v12 = v0[35];
  v13 = v0[24];
  v14 = v0[21];
  v15 = *(v0[37] + 16);
  sub_1001D1180();

  v10(v13, v14);

  v16 = v0[42];
  v18 = v0[23];
  v17 = v0[24];
  v19 = v0[20];
  v20 = v0[17];
  v22 = v0[13];
  v21 = v0[14];

  v23 = v0[1];

  return v23();
}

void sub_10018A0D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), const char *a6)
{
  v42 = a6;
  v41 = a3;
  v40 = a2;
  v9 = type metadata accessor for ValidatedAttestation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ValidatedAttestationOrAttestation();
  v15 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14, v16);
  v19 = (&v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17, v20);
  v22 = &v38 - v21;
  v23 = *(*a1 + 392);
  sub_1001AFCB4(a4, &v38 - v21, type metadata accessor for ValidatedAttestationOrAttestation);

  v24 = sub_1001D0E50();
  v25 = a5();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = v39;
    *v26 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v43 = sub_1001D23A0();
    v44 = v27;
    v46._countAndFlagsBits = 2629690;
    v46._object = 0xE300000000000000;
    sub_1001D18B0(v46);
    v47._countAndFlagsBits = sub_10016B71C(v40, v41);
    sub_1001D18B0(v47);

    v48._countAndFlagsBits = 41;
    v48._object = 0xE100000000000000;
    sub_1001D18B0(v48);
    v28 = sub_1000954E0(v43, v44, &v45);

    *(v26 + 4) = v28;
    *(v26 + 12) = 2080;
    sub_1001B0368(v22, v19, type metadata accessor for ValidatedAttestationOrAttestation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v19;
      v29 = v19[1];
      v31 = v19[2];
      v32 = v19[3];
      v33 = v19[5];
      v34 = v19[7];
      v35 = v19[9];
      v36 = v19[11];
      sub_10002683C(v31, v32);
    }

    else
    {
      sub_1001B0368(v19, v13, type metadata accessor for ValidatedAttestation);
      v30 = *v13;
      v29 = v13[1];

      sub_1001AFB98(v13, type metadata accessor for ValidatedAttestation);
    }

    v37 = sub_1000954E0(v30, v29, &v45);

    *(v26 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v24, v25, v42, v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001AFB98(v22, type metadata accessor for ValidatedAttestationOrAttestation);
  }
}

void sub_10018A4A0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 392);
  swift_retain_n();

  v4 = sub_1001D0E50();
  v5 = sub_1001D1DD0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v11 = sub_1001D23A0();
    v12 = v8;
    v14._countAndFlagsBits = 58;
    v14._object = 0xE100000000000000;
    sub_1001D18B0(v14);
    v9 = sub_1000954E0(v11, v12, &v13);

    *(v6 + 4) = v9;
    *(v6 + 12) = 1024;
    swift_beginAccess();
    v10 = *(a2 + 16);

    *(v6 + 14) = v10;

    _os_log_impl(&_mh_execute_header, v4, v5, "%s Leaving runNodesStreams taskGroup. Success: %{BOOL}d", v6, 0x12u);
    sub_100011CF0(v7);
  }

  else
  {
  }
}

uint64_t sub_10018A690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 4184) = v60;
  *(v8 + 4168) = v59;
  *(v8 + 4152) = v58;
  *(v8 + 817) = v57;
  *(v8 + 4144) = a8;
  *(v8 + 4136) = a7;
  *(v8 + 4128) = a6;
  *(v8 + 4120) = a5;
  *(v8 + 4112) = a2;
  v10 = sub_100011AC0(&qword_10022F188, &qword_1001E06F0);
  *(v8 + 4192) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v8 + 4200) = swift_task_alloc();
  v12 = type metadata accessor for Proto_PrivateCloudCompute_ResponseContext(0);
  *(v8 + 4208) = v12;
  v13 = *(v12 - 8);
  *(v8 + 4216) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 4224) = swift_task_alloc();
  *(v8 + 4232) = swift_task_alloc();
  v15 = *(*(sub_100011AC0(&qword_100229940, &qword_1001E19D0) - 8) + 64) + 15;
  *(v8 + 4240) = swift_task_alloc();
  *(v8 + 4248) = swift_task_alloc();
  *(v8 + 4256) = swift_task_alloc();
  v16 = sub_100011AC0(&qword_10022FE08, &qword_1001E19D8);
  *(v8 + 4264) = v16;
  v17 = *(v16 - 8);
  *(v8 + 4272) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 4280) = swift_task_alloc();
  v19 = sub_1001D1470();
  *(v8 + 4288) = v19;
  v20 = *(v19 - 8);
  *(v8 + 4296) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 4304) = swift_task_alloc();
  v22 = sub_1001D1460();
  *(v8 + 4312) = v22;
  v23 = *(v22 - 8);
  *(v8 + 4320) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 4328) = swift_task_alloc();
  v25 = sub_1001D20D0();
  *(v8 + 4336) = v25;
  v26 = *(v25 - 8);
  *(v8 + 4344) = v26;
  v27 = *(v26 + 64) + 15;
  *(v8 + 4352) = swift_task_alloc();
  v28 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  *(v8 + 4360) = v28;
  v29 = *(*(v28 - 8) + 64) + 15;
  *(v8 + 4368) = swift_task_alloc();
  *(v8 + 4376) = swift_task_alloc();
  *(v8 + 4384) = swift_task_alloc();
  v30 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  *(v8 + 4392) = v30;
  v31 = *(*(v30 - 8) + 64) + 15;
  *(v8 + 4400) = swift_task_alloc();
  *(v8 + 4408) = swift_task_alloc();
  v32 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  *(v8 + 4416) = v32;
  v33 = *(*(v32 - 8) + 64) + 15;
  *(v8 + 4424) = swift_task_alloc();
  *(v8 + 4432) = swift_task_alloc();
  *(v8 + 4440) = swift_task_alloc();
  v34 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
  *(v8 + 4448) = v34;
  v35 = *(v34 - 8);
  *(v8 + 4456) = v35;
  v36 = *(v35 + 64) + 15;
  *(v8 + 4464) = swift_task_alloc();
  *(v8 + 4472) = swift_task_alloc();
  v37 = *(*(sub_100011AC0(&qword_10022FD78, &qword_1001E1830) - 8) + 64) + 15;
  *(v8 + 4480) = swift_task_alloc();
  v38 = sub_100011AC0(&qword_10022FD80, &qword_1001E1838);
  *(v8 + 4488) = v38;
  v39 = *(v38 - 8);
  *(v8 + 4496) = v39;
  v40 = *(v39 + 64) + 15;
  *(v8 + 4504) = swift_task_alloc();
  v41 = sub_100011AC0(&qword_100229600, &qword_1001E1840);
  *(v8 + 4512) = v41;
  v42 = *(*(v41 - 8) + 64) + 15;
  *(v8 + 4520) = swift_task_alloc();
  v43 = type metadata accessor for NWAsyncConnection.Inbound(0);
  *(v8 + 4528) = v43;
  v44 = *(*(v43 - 8) + 64) + 15;
  *(v8 + 4536) = swift_task_alloc();
  v45 = *(*(sub_100011AC0(&qword_10022FD88, &qword_1001E1848) - 8) + 64) + 15;
  *(v8 + 4544) = swift_task_alloc();
  v46 = sub_100011AC0(&qword_10022FE10, &qword_1001E19E0);
  *(v8 + 4552) = v46;
  v47 = *(v46 - 8);
  *(v8 + 4560) = v47;
  v48 = *(v47 + 64) + 15;
  *(v8 + 4568) = swift_task_alloc();
  v49 = sub_100011AC0(&qword_10022FE18, &qword_1001E19E8);
  *(v8 + 4576) = v49;
  v50 = *(v49 - 8);
  *(v8 + 4584) = v50;
  v51 = *(v50 + 64) + 15;
  *(v8 + 4592) = swift_task_alloc();
  v52 = sub_100011AC0(&qword_10022FE20, &qword_1001E19F0);
  *(v8 + 4600) = v52;
  v53 = *(v52 - 8);
  *(v8 + 4608) = v53;
  *(v8 + 4616) = *(v53 + 64);
  *(v8 + 4624) = swift_task_alloc();
  *(v8 + 4632) = swift_task_alloc();
  *(v8 + 4088) = a3;
  v54 = swift_task_alloc();
  *(v8 + 4640) = v54;
  *v54 = v8;
  v54[1] = sub_10018ADB0;

  return sub_10013F08C(v54);
}

uint64_t sub_10018ADB0()
{
  v2 = *(*v1 + 4640);
  v5 = *v1;
  *(*v1 + 4648) = v0;

  if (v0)
  {
    v3 = sub_10018B0E8;
  }

  else
  {
    v3 = sub_10018AEC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10018AEC4()
{
  v1 = v0[515];
  v0[582] = *(v1 + *(*v1 + 368));
  v2 = swift_task_alloc();
  v0[583] = v2;
  *(v2 + 16) = v0 + 511;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[584] = v3;
  *v3 = v0;
  v3[1] = sub_10018AFCC;
  v4 = v0[517];
  v5 = v0[516];

  return (sub_100166D64)(v5, v4, &unk_1001E1A00, v2);
}

uint64_t sub_10018AFCC()
{
  v2 = *v1;
  v3 = *(*v1 + 4672);
  v7 = *v1;
  *(*v1 + 4680) = v0;

  if (v0)
  {
    v4 = sub_10018B704;
  }

  else
  {
    v5 = *(v2 + 4664);

    v4 = sub_10018B2EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10018B0E8()
{
  v32 = v0[581];
  v1 = v0[579];
  v2 = v0[578];
  v3 = v0[574];
  v4 = v0[571];
  v5 = v0[568];
  v6 = v0[567];
  v7 = v0[565];
  v8 = v0[563];
  v9 = v0[560];
  v10 = v0[559];
  v13 = v0[558];
  v14 = v0[555];
  v15 = v0[554];
  v16 = v0[553];
  v17 = v0[551];
  v18 = v0[550];
  v19 = v0[548];
  v20 = v0[547];
  v21 = v0[546];
  v22 = v0[544];
  v23 = v0[541];
  v24 = v0[538];
  v25 = v0[535];
  v26 = v0[532];
  v27 = v0[531];
  v28 = v0[530];
  v29 = v0[529];
  v30 = v0[528];
  v31 = v0[525];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10018B2EC()
{
  v30 = *(v0 + 4656);
  v1 = *(v0 + 4632);
  v2 = *(v0 + 4624);
  v19 = *(v0 + 4616);
  v3 = *(v0 + 4608);
  v4 = *(v0 + 4600);
  v5 = *(v0 + 4592);
  v6 = *(v0 + 4568);
  v7 = *(v0 + 4560);
  v8 = *(v0 + 4552);
  v21 = *(v0 + 4536);
  v22 = *(v0 + 4544);
  v27 = *(v0 + 4520);
  v28 = *(v0 + 4512);
  v23 = *(v0 + 4528);
  v24 = *(v0 + 4496);
  v25 = *(v0 + 4488);
  v26 = *(v0 + 4504);
  v29 = *(v0 + 4184);
  v9 = *(v0 + 4120);
  v20 = *(v0 + 4112);
  (*(v7 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v8);
  sub_1001D1BB0();
  (*(v7 + 8))(v6, v8);
  (*(v3 + 16))(v2, v1, v4);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v3 + 32))(v11 + v10, v2, v4);
  v12 = swift_allocObject();
  *(v0 + 4688) = v12;
  *(v12 + 16) = &unk_1001E1A18;
  *(v12 + 24) = v11;

  swift_asyncLet_begin();
  sub_1001AFCB4(v20, v21, type metadata accessor for NWAsyncConnection.Inbound);
  sub_1001B0458(&qword_10022EE88, type metadata accessor for NWAsyncConnection.Inbound);
  sub_1001D2390();
  (*(v24 + 16))(v26, v22, v25);
  sub_100024B78(&qword_10022FD90, &qword_10022FD80, &qword_1001E1838);
  sub_1001D1C90();
  v13 = v27 + *(v28 + 80);
  *v13 = 0;
  *(v13 + 8) = 2;
  *(v27 + *(v28 + 76)) = xmmword_1001D3A00;
  v14 = *v9;
  *(v0 + 4696) = *(*v9 + 392);
  *(v0 + 4704) = qword_1002434F8;
  *(v0 + 4712) = qword_100243500;
  *(v0 + 4720) = *(*v29 + 88);
  *(v0 + 4728) = *(v14 + 280);
  *(v0 + 4736) = *(*v30 + 144);
  *(v0 + 818) = 256;
  v15 = swift_task_alloc();
  *(v0 + 4744) = v15;
  *v15 = v0;
  v15[1] = sub_10018B910;
  v16 = *(v0 + 4520);
  v17 = *(v0 + 4480);

  return sub_10007FB14(v17);
}

uint64_t sub_10018B704()
{
  v1 = v0[583];

  v33 = v0[585];
  v2 = v0[579];
  v3 = v0[578];
  v4 = v0[574];
  v5 = v0[571];
  v6 = v0[568];
  v7 = v0[567];
  v8 = v0[565];
  v9 = v0[563];
  v10 = v0[560];
  v11 = v0[559];
  v14 = v0[558];
  v15 = v0[555];
  v16 = v0[554];
  v17 = v0[553];
  v18 = v0[551];
  v19 = v0[550];
  v20 = v0[548];
  v21 = v0[547];
  v22 = v0[546];
  v23 = v0[544];
  v24 = v0[541];
  v25 = v0[538];
  v26 = v0[535];
  v27 = v0[532];
  v28 = v0[531];
  v29 = v0[530];
  v30 = v0[529];
  v31 = v0[528];
  v32 = v0[525];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10018B910()
{
  v2 = *(*v1 + 4744);
  v5 = *v1;
  *(*v1 + 4752) = v0;

  if (v0)
  {
    v3 = sub_10018E490;
  }

  else
  {
    v3 = sub_10018BA24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10018BA24()
{
  v398 = v0;
  v1 = *(v0 + 4480);
  if ((*(*(v0 + 4456) + 48))(v1, 1, *(v0 + 4448)) == 1)
  {
    v2 = *(v0 + 4592);
    v3 = *(v0 + 4576);
    sub_100011F00(*(v0 + 4520), &qword_100229600, &qword_1001E1840);
    sub_1001D1BD0();

    return _swift_asyncLet_get(v0 + 16);
  }

  v4 = *(v0 + 4696);
  v5 = *(v0 + 4472);
  v6 = *(v0 + 4464);
  v7 = *(v0 + 4136);
  v8 = *(v0 + 4120);
  sub_1001B0368(v1, v5, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  sub_1001AFCB4(v5, v6, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);

  v9 = sub_1001D0E50();
  v10 = sub_1001D1DD0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 4704);
    v368 = *(v0 + 4440);
    v374 = *(v0 + 4464);
    logd = *(v0 + 4416);
    v12 = *(v0 + 4144);
    v358 = *(v0 + 4128);
    v363 = *(v0 + 4136);
    v13 = *(v0 + 4120);
    v14 = *(v0 + 817);
    v15 = swift_slowAlloc();
    v396 = swift_slowAlloc();
    *v15 = 136315650;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    *(v0 + 3736) = sub_1001D23A0();
    *(v0 + 3744) = v16;
    v400._countAndFlagsBits = 2629690;
    v400._object = 0xE300000000000000;
    sub_1001D18B0(v400);
    v401._countAndFlagsBits = sub_10016B71C(v12, v14);
    sub_1001D18B0(v401);

    v402._countAndFlagsBits = 41;
    v402._object = 0xE100000000000000;
    sub_1001D18B0(v402);
    v17 = sub_1000954E0(*(v0 + 3736), *(v0 + 3744), &v396);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1000954E0(v358, v363, &v396);
    *(v15 + 22) = 2080;
    sub_10001208C(v374, v368, &qword_100229930, &qword_1001D7198);
    v18 = sub_1001D1820();
    v20 = v19;
    sub_1001AFB98(v374, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    v21 = sub_1000954E0(v18, v20, &v396);

    *(v15 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s Received message from node %s: %s", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = *(v0 + 4464);

    sub_1001AFB98(v22, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  }

  if (*(v0 + 819) == 1)
  {
    if (*(v0 + 4152))
    {
      v23 = *(v0 + 4696);
      v24 = *(v0 + 4168);
      v25 = *(v0 + 4136);
      v26 = *(v0 + 4120);

      v27 = sub_1001D0E50();
      v28 = sub_1001D1DD0();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = *(v0 + 4704);
        v30 = *(v0 + 4168);
        v31 = *(v0 + 4160);
        v32 = *(v0 + 4144);
        v359 = v32;
        v364 = *(v0 + 4128);
        v33 = *(v0 + 4120);
        v34 = 0xE000000000000000;
        if (v30)
        {
          v34 = *(v0 + 4168);
        }

        log = v34;
        if (!v30)
        {
          v31 = 0;
        }

        v369 = *(v0 + 4136);
        v375 = v31;
        v35 = *(v0 + 817);
        v36 = swift_slowAlloc();
        v396 = swift_slowAlloc();
        *v36 = 136315650;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        *(v0 + 3928) = sub_1001D23A0();
        *(v0 + 3936) = v37;
        v403._countAndFlagsBits = 2629690;
        v403._object = 0xE300000000000000;
        sub_1001D18B0(v403);
        v404._countAndFlagsBits = sub_10016B71C(v359, v35);
        sub_1001D18B0(v404);

        v405._countAndFlagsBits = 41;
        v405._object = 0xE100000000000000;
        sub_1001D18B0(v405);
        v38 = sub_1000954E0(*(v0 + 3928), *(v0 + 3936), &v396);

        *(v36 + 4) = v38;
        *(v36 + 12) = 2080;
        *(v36 + 14) = sub_1000954E0(v364, v369, &v396);
        *(v36 + 22) = 2080;

        v39 = sub_1000954E0(v375, log, &v396);

        *(v36 + 24) = v39;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s Node has received data, cancelling all other node streams. nodeID=%s udid=%s", v36, 0x20u);
        swift_arrayDestroy();
      }

      v40 = *(v0 + 4176);
      v41 = *(v0 + 4152);
      v42 = sub_1001157F8(*(v0 + 4128), *(v0 + 4136));
      if (v40 < 0)
      {
        __break(1u);
        goto LABEL_121;
      }

      v43 = *(v0 + 4176);
      v44 = *(v0 + 4152);
      v45 = (*(v0 + 4656) + *(v0 + 4736));
      os_unfair_lock_lock(v45);
      v46 = v45 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
      v47 = &v46[*(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 156)];
      *v47 = v43;
      v47[8] = 0;
      os_unfair_lock_unlock(v45);
    }

    v48 = *(v0 + 4656);
    sub_100168E14(*(v0 + 4128), *(v0 + 4136));
  }

  v49 = *(v0 + 4432);
  sub_10001208C(*(v0 + 4472), v49, &qword_100229930, &qword_1001D7198);
  v50 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
  {
    v51 = *(v0 + 4472);
    v52 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse;
LABEL_116:
    sub_1001AFB98(v51, v52);
    v186 = *(v0 + 818);
    goto LABEL_117;
  }

  sub_10001208C(*(v0 + 4432), *(v0 + 4424), &qword_100229930, &qword_1001D7198);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = *(v0 + 4696);
  v55 = *(v0 + 4424);
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v70 = *(v0 + 4408);
      v71 = *(v0 + 4400);
      v72 = *(v0 + 4120);
      sub_1001B0368(v55, v70, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
      sub_1001AFCB4(v70, v71, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);

      v73 = sub_1001D0E50();
      v74 = sub_1001D1DD0();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = *(v0 + 4704);
        v377 = *(v0 + 4400);
        v76 = *(v0 + 4392);
        v77 = *(v0 + 4144);
        v78 = *(v0 + 4120);
        v79 = *(v0 + 817);
        v80 = swift_slowAlloc();
        v396 = swift_slowAlloc();
        *v80 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        *(v0 + 3864) = sub_1001D23A0();
        *(v0 + 3872) = v81;
        v409._countAndFlagsBits = 2629690;
        v409._object = 0xE300000000000000;
        sub_1001D18B0(v409);
        v410._countAndFlagsBits = sub_10016B71C(v77, v79);
        sub_1001D18B0(v410);

        v411._countAndFlagsBits = 41;
        v411._object = 0xE100000000000000;
        sub_1001D18B0(v411);
        v82 = sub_1000954E0(*(v0 + 3864), *(v0 + 3872), &v396);

        *(v80 + 4) = v82;
        *(v80 + 12) = 2080;
        *(v0 + 4096) = v76;
        sub_100011AC0(&qword_10022FDA0, &qword_1001E1858);
        *(v0 + 3880) = sub_1001D1830();
        *(v0 + 3888) = v83;
        v412._countAndFlagsBits = 2618;
        v412._object = 0xE200000000000000;
        sub_1001D18B0(v412);
        v84 = *(v0 + 3880);
        v85 = *(v0 + 3888);
        sub_1001B0458(&qword_100229A18, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
        v86 = sub_1001D0B30();
        v88 = v87;
        *(v0 + 3896) = v84;
        *(v0 + 3904) = v85;

        v413._countAndFlagsBits = v86;
        v413._object = v88;
        sub_1001D18B0(v413);

        v89 = *(v0 + 3896);
        v90 = *(v0 + 3904);
        sub_1001AFB98(v377, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
        v91 = sub_1000954E0(v89, v90, &v396);

        *(v80 + 14) = v91;
        _os_log_impl(&_mh_execute_header, v73, v74, "%s Response summary: %s", v80, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v131 = *(v0 + 4400);

        sub_1001AFB98(v131, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
      }

      v132 = *(v0 + 4752);
      sub_1001A9AA8(*(v0 + 4408));
      *(v0 + 4776) = v132;
      if (!v132)
      {
        v188 = *(v0 + 4656);
        sub_1001699DC(*(v0 + 4128), *(v0 + 4136), 0);
        v189 = (v188 + *(*v188 + 144));
        os_unfair_lock_lock(v189);
        v190 = v189 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
        v191 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 144);
        v192 = *&v190[v191];
        if (*(v192 + 16))
        {
          v193 = sub_100006028(*(v0 + 4128), *(v0 + 4136));
          if (v194)
          {
            v195 = (v0 + 3400);
            v196 = (*(v192 + 56) + (v193 << 7));
            v197 = *v196;
            v198 = v196[1];
            v199 = v196[3];
            *(v0 + 1880) = v196[2];
            *(v0 + 1896) = v199;
            *(v0 + 1848) = v197;
            *(v0 + 1864) = v198;
            v200 = v196[4];
            v201 = v196[5];
            v202 = v196[6];
            *(v0 + 1953) = *(v196 + 105);
            *(v0 + 1928) = v201;
            *(v0 + 1944) = v202;
            *(v0 + 1912) = v200;
            v203 = *(v0 + 1848);
            v204 = *(v0 + 1856);
            v206 = v196[2];
            v205 = v196[3];
            *(v0 + 3400) = v196[1];
            *(v0 + 3416) = v206;
            *(v0 + 3432) = v205;
            v208 = v196[5];
            v207 = v196[6];
            v209 = v196[4];
            *(v0 + 3489) = *(v196 + 105);
            *(v0 + 3464) = v208;
            *(v0 + 3480) = v207;
            *(v0 + 3448) = v209;
            if (v203 >> 62 == 1 && (v203 & 1) == 0)
            {
              v210 = v0 + 1464;
              v330 = *(v0 + 4136);
              logi = *(v0 + 4128);
              *(v0 + 1080) = 0x4000000000000001;
              *(v0 + 1088) = v204;
              v331 = *(v0 + 3480);
              *(v0 + 1160) = *(v0 + 3464);
              *(v0 + 1176) = v331;
              *(v0 + 1185) = *(v0 + 3489);
              v332 = *(v0 + 3416);
              *(v0 + 1096) = *v195;
              *(v0 + 1112) = v332;
              v333 = *(v0 + 3448);
              *(v0 + 1128) = *(v0 + 3432);
              *(v0 + 1144) = v333;

              sub_10001208C(v0 + 1848, v0 + 1336, &qword_100230150, &unk_1001D3700);
              sub_10001208C(v0 + 1080, v0 + 1208, &qword_100230150, &unk_1001D3700);
              v334 = *&v190[v191];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v396 = *&v190[v191];
              sub_10001B1A4((v0 + 1080), logi, v330, isUniquelyReferenced_nonNull_native);

              *&v190[v191] = v396;
              *(v0 + 1464) = 0x4000000000000001;
              *(v0 + 1472) = v204;
              v336 = *(v0 + 3480);
              *(v0 + 1544) = *(v0 + 3464);
              *(v0 + 1560) = v336;
              *(v0 + 1569) = *(v0 + 3489);
              v337 = *(v0 + 3416);
              *(v0 + 1480) = *v195;
              *(v0 + 1496) = v337;
              v338 = *(v0 + 3448);
              *(v0 + 1512) = *(v0 + 3432);
              *(v0 + 1528) = v338;
            }

            else
            {
              v210 = v0 + 1720;
              *(v0 + 1720) = v203;
              *(v0 + 1728) = v204;
              v211 = *(v0 + 3480);
              *(v0 + 1800) = *(v0 + 3464);
              *(v0 + 1816) = v211;
              *(v0 + 1825) = *(v0 + 3489);
              v212 = *(v0 + 3416);
              *(v0 + 1736) = *v195;
              *(v0 + 1752) = v212;
              v213 = *(v0 + 3448);
              *(v0 + 1768) = *(v0 + 3432);
              *(v0 + 1784) = v213;
              sub_10001208C(v0 + 1848, v0 + 1592, &qword_100230150, &unk_1001D3700);
            }

            sub_100011F00(v210, &qword_100230150, &unk_1001D3700);
          }
        }

        v130 = *(v0 + 4472);
        v339 = *(v0 + 4408);
        os_unfair_lock_unlock(v189);
        sub_1001AFB98(v339, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
LABEL_114:
        v187 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse;
        goto LABEL_115;
      }

      v133 = *(v0 + 4656);
      v134 = *(v0 + 4544);
      v135 = *(v0 + 4520);
      v136 = *(v0 + 4472);
      v137 = *(v0 + 4432);
      v138 = *(v0 + 4408);
      v139 = *(v0 + 4136);
      v140 = *(v0 + 4128);
      swift_errorRetain();
      sub_1001699DC(v140, v139, v132);

      swift_willThrow();
      sub_1001AFB98(v138, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
      sub_1001AFB98(v136, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
      sub_100011F00(v135, &qword_100229600, &qword_1001E1840);
      sub_100011F00(v134, &qword_10022FD88, &qword_1001E1848);
      sub_100011F00(v137, &qword_100229930, &qword_1001D7198);
      v42 = v0 + 16;
      goto LABEL_82;
    }

    v108 = *(v0 + 4384);
    v109 = *(v0 + 4376);
    v110 = *(v0 + 4120);
    sub_1001B0368(v55, v108, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    sub_1001AFCB4(v108, v109, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);

    v111 = sub_1001D0E50();
    v112 = sub_1001D1DD0();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = *(v0 + 4704);
      v379 = *(v0 + 4376);
      v114 = *(v0 + 4360);
      v115 = *(v0 + 4144);
      v116 = *(v0 + 4120);
      v117 = *(v0 + 817);
      v118 = swift_slowAlloc();
      v396 = swift_slowAlloc();
      *v118 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      *(v0 + 3832) = sub_1001D23A0();
      *(v0 + 3840) = v119;
      v417._countAndFlagsBits = 2629690;
      v417._object = 0xE300000000000000;
      sub_1001D18B0(v417);
      v418._countAndFlagsBits = sub_10016B71C(v115, v117);
      sub_1001D18B0(v418);

      v419._countAndFlagsBits = 41;
      v419._object = 0xE100000000000000;
      sub_1001D18B0(v419);
      v120 = sub_1000954E0(*(v0 + 3832), *(v0 + 3840), &v396);

      *(v118 + 4) = v120;
      *(v118 + 12) = 2080;
      *(v0 + 3992) = v114;
      sub_100011AC0(&qword_10022FD98, &qword_1001E1850);
      *(v0 + 3848) = sub_1001D1830();
      *(v0 + 3856) = v121;
      v420._countAndFlagsBits = 2618;
      v420._object = 0xE200000000000000;
      sub_1001D18B0(v420);
      v122 = *(v0 + 3848);
      v123 = *(v0 + 3856);
      sub_1001B0458(&qword_100229A48, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      v124 = sub_1001D0B30();
      v126 = v125;
      *(v0 + 3800) = v122;
      *(v0 + 3808) = v123;

      v421._countAndFlagsBits = v124;
      v421._object = v126;
      sub_1001D18B0(v421);

      v127 = *(v0 + 3800);
      v128 = *(v0 + 3808);
      sub_1001AFB98(v379, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      v129 = sub_1000954E0(v127, v128, &v396);

      *(v118 + 14) = v129;
      _os_log_impl(&_mh_execute_header, v111, v112, "%s Received request execution log entry: %s", v118, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v141 = *(v0 + 4376);

      sub_1001AFB98(v141, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    }

    if (*(*(v0 + 4120) + *(v0 + 4712) + 72) != 1)
    {
      v130 = *(v0 + 4384);
      sub_1001AFB98(*(v0 + 4472), type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
      v187 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry;
LABEL_115:
      v52 = v187;
      v51 = v130;
      goto LABEL_116;
    }

    v96 = *(v0 + 4384);
    v142 = &v96[*(*(v0 + 4360) + 24)];
    v143 = v142[1];
    if (v143 >> 60 != 15)
    {
      v144 = *(v0 + 4752);
      v380 = *(v0 + 4576);
      logf = *(v0 + 4592);
      v145 = *(v0 + 4328);
      v347 = *(v0 + 4320);
      v350 = *(v0 + 4656);
      v346 = *(v0 + 4312);
      v146 = *(v0 + 4304);
      v147 = *(v0 + 4296);
      v148 = *(v0 + 4288);
      v360 = *(v0 + 4280);
      v365 = *(v0 + 4272);
      v371 = *(v0 + 4264);
      v353 = *(v0 + 4128);
      v355 = *(v0 + 4136);
      v149 = *v142;
      sub_100089C38(*v142, v143);
      sub_1001B0458(&qword_100229378, &type metadata accessor for SHA256);
      sub_1001D1440();
      sub_100012038(v149, v143);
      sub_100158DE0(v149, v143);
      sub_100011E48(v149, v143);
      sub_1001D1430();
      (*(v147 + 8))(v146, v148);
      *(v0 + 3648) = v346;
      *(v0 + 3656) = sub_1001B0458(&qword_100229380, &type metadata accessor for SHA256Digest);
      v150 = sub_10003B47C((v0 + 3624));
      (*(v347 + 16))(v150, v145, v346);
      sub_100024DC8((v0 + 3624), *(v0 + 3648));
      sub_1001CF8E0();
      v151 = *(v0 + 3816);
      v152 = *(v0 + 3824);
      sub_100011CF0((v0 + 3624));
      v153 = sub_1001CFBF0(0);
      v155 = v154;
      sub_100011E48(v151, v152);
      (*(v347 + 8))(v145, v346);
      v156 = (v350 + *(*v350 + 144));
      os_unfair_lock_lock(v156);
      v157 = v156 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
      *(v0 + 3512) = v153;
      *(v0 + 3520) = v155;
      *(v0 + 3528) = 0;
      *(v0 + 3536) = v149;
      *(v0 + 3544) = v143;
      *(v0 + 3552) = v353;
      *(v0 + 3560) = v355;
      *(v0 + 3568) = 0u;
      v158 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 148);
      swift_bridgeObjectRetain_n();

      sub_100012038(v149, v143);
      v159 = *&v157[v158];
      v160 = swift_isUniquelyReferenced_nonNull_native();
      v396 = *&v157[v158];
      *&v157[v158] = 0x8000000000000000;
      sub_10001B348(v0 + 3512, v153, v155, v160);

      *&v157[v158] = v396;
      os_unfair_lock_unlock(v156);
      *(v0 + 3704) = v153;
      *(v0 + 3712) = v155;
      *(v0 + 3720) = v149;
      *(v0 + 3728) = v143;
      sub_1001D1BC0();
      (*(v365 + 8))(v360, v371);
      v96 = *(v0 + 4384);
    }

    if (*v96)
    {
      v161 = (*(v0 + 4656) + *(**(v0 + 4656) + 144));
      os_unfair_lock_lock(v161);
      v162 = v161 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
      v163 = *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 144);
      v164 = *&v162[v163];
      if (*(v164 + 16))
      {
        v165 = sub_100006028(*(v0 + 4128), *(v0 + 4136));
        if (v166)
        {
          v167 = *(v0 + 4136);
          logg = *(v0 + 4128);
          v168 = (*(v164 + 56) + (v165 << 7));
          v169 = v168[3];
          v171 = *v168;
          v170 = v168[1];
          *(v0 + 2392) = v168[2];
          *(v0 + 2408) = v169;
          *(v0 + 2360) = v171;
          *(v0 + 2376) = v170;
          v173 = v168[5];
          v172 = v168[6];
          v174 = v168[4];
          *(v0 + 2465) = *(v168 + 105);
          *(v0 + 2440) = v173;
          *(v0 + 2456) = v172;
          *(v0 + 2424) = v174;
          v175 = v168[3];
          v177 = *v168;
          v176 = v168[1];
          *(v0 + 3160) = v168[2];
          *(v0 + 3176) = v175;
          *(v0 + 3128) = v177;
          *(v0 + 3144) = v176;
          v179 = v168[5];
          v178 = v168[6];
          v180 = v168[4];
          *(v0 + 3240) = *(v168 + 14);
          *(v0 + 3208) = v179;
          *(v0 + 3224) = v178;
          *(v0 + 3192) = v180;
          memmove((v0 + 824), v168, 0x78uLL);
          *(v0 + 944) = 1;

          sub_10001208C(v0 + 2360, v0 + 2488, &qword_100230150, &unk_1001D3700);
          sub_10001208C(v0 + 824, v0 + 2616, &qword_100230150, &unk_1001D3700);
          v181 = *&v162[v163];
          v182 = swift_isUniquelyReferenced_nonNull_native();
          v396 = *&v162[v163];
          *&v162[v163] = 0x8000000000000000;
          sub_10001B1A4((v0 + 824), logg, v167, v182);

          *&v162[v163] = v396;
          v183 = *(v0 + 3208);
          *(v0 + 2296) = *(v0 + 3192);
          *(v0 + 2312) = v183;
          *(v0 + 2328) = *(v0 + 3224);
          *(v0 + 2344) = *(v0 + 3240);
          v184 = *(v0 + 3144);
          *(v0 + 2232) = *(v0 + 3128);
          *(v0 + 2248) = v184;
          v185 = *(v0 + 3176);
          *(v0 + 2264) = *(v0 + 3160);
          *(v0 + 2280) = v185;
          *(v0 + 2352) = 1;
          sub_100011F00(v0 + 2232, &qword_100230150, &unk_1001D3700);
        }
      }

      os_unfair_lock_unlock(v161);
      v96 = *(v0 + 4384);
      v186 = 1;
      goto LABEL_59;
    }

LABEL_58:
    v186 = *(v0 + 818);
LABEL_59:
    v216 = *(v0 + 4256);
    v217 = *(v0 + 4216);
    v218 = *(v0 + 4208);
    v219 = *(*(v0 + 4360) + 28);
    sub_10001208C(&v96[v219], v216, &qword_100229940, &qword_1001E19D0);
    v220 = *(v217 + 48);
    if (v220(v216, 1, v218) == 1)
    {
      v221 = *(v0 + 4384);
      v222 = *(v0 + 4256);
      sub_1001AFB98(*(v0 + 4472), type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
      sub_100011F00(v222, &qword_100229940, &qword_1001E19D0);
      sub_1001AFB98(v221, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
LABEL_117:
      sub_100011F00(*(v0 + 4432), &qword_100229930, &qword_1001D7198);
      *(v0 + 819) = 0;
      *(v0 + 818) = v186;
      v340 = swift_task_alloc();
      *(v0 + 4744) = v340;
      *v340 = v0;
      v340[1] = sub_10018B910;
      v341 = *(v0 + 4520);
      v342 = *(v0 + 4480);

      return sub_10007FB14(v342);
    }

    v223 = *(v0 + 4120) + *(v0 + 4712);
    sub_100011F00(*(v0 + 4256), &qword_100229940, &qword_1001E19D0);
    if (*(v223 + *(type metadata accessor for TrustedRequestConfiguration() + 96)))
    {
      v224 = *(v0 + 4696);
      v225 = *(v0 + 4120);
      sub_1001AFCB4(*(v0 + 4384), *(v0 + 4368), type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);

      v226 = sub_1001D0E50();
      v227 = sub_1001D1DD0();

      if (os_log_type_enabled(v226, v227))
      {
        v381 = v227;
        logb = v226;
        v228 = *(v0 + 4704);
        v356 = *(v0 + 4248);
        v361 = *(v0 + 4368);
        v366 = *(v0 + 4208);
        v351 = *(v0 + 4144);
        v354 = *(v0 + 4360);
        v229 = *(v0 + 4120);
        v348 = *(v0 + 817);
        v230 = swift_slowAlloc();
        v372 = swift_slowAlloc();
        *(v0 + 4104) = v372;
        *v230 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        *(v0 + 3784) = sub_1001D23A0();
        *(v0 + 3792) = v231;
        v422._countAndFlagsBits = 2629690;
        v422._object = 0xE300000000000000;
        sub_1001D18B0(v422);
        v423._countAndFlagsBits = sub_10016B71C(v351, v348);
        sub_1001D18B0(v423);

        v424._countAndFlagsBits = 41;
        v424._object = 0xE100000000000000;
        sub_1001D18B0(v424);
        v232 = sub_1000954E0(*(v0 + 3784), *(v0 + 3792), (v0 + 4104));

        *(v230 + 4) = v232;
        *(v230 + 12) = 1024;
        sub_10001208C(v361 + *(v354 + 28), v356, &qword_100229940, &qword_1001E19D0);
        v233 = v220(v356, 1, v366);
        v234 = *(v0 + 4248);
        v235 = *(v0 + 4232);
        if (v233 == 1)
        {
          v236 = *(v0 + 4208);
          *v235 = 0;
          *(v235 + 8) = 0;
          *(v235 + 16) = xmmword_1001D7160;
          *(v235 + 32) = 0xC000000000000000;
          v237 = v235 + *(v236 + 32);
          _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
          if (v220(v234, 1, v236) != 1)
          {
            sub_100011F00(*(v0 + 4248), &qword_100229940, &qword_1001E19D0);
          }
        }

        else
        {
          sub_1001B0368(*(v0 + 4248), v235, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
        }

        v313 = *(v0 + 4368);
        v314 = *(v0 + 4232);
        v315 = *v314;
        sub_1001AFB98(v314, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
        sub_1001AFB98(v313, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
        *(v230 + 14) = v315;
        v226 = logb;
        _os_log_impl(&_mh_execute_header, logb, v381, "%s received AEAD for response bypass contextID=%u", v230, 0x12u);
        sub_100011CF0(v372);
      }

      else
      {
        sub_1001AFB98(*(v0 + 4368), type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      }

      v316 = *(v0 + 4240);
      v317 = *(v0 + 4208);
      sub_10001208C(&v96[v219], v316, &qword_100229940, &qword_1001E19D0);
      v318 = v220(v316, 1, v317);
      v319 = *(v0 + 4240);
      v320 = *(v0 + 4224);
      if (v318 == 1)
      {
        v321 = *(v0 + 4208);
        *v320 = 0;
        *(v320 + 8) = 0;
        *(v320 + 16) = xmmword_1001D7160;
        *(v320 + 32) = 0xC000000000000000;
        v322 = v320 + *(v321 + 32);
        _s20privatecloudcomputed38Proto_Ropes_HttpService_InvokeResponseV18ReadyForMoreChunksVAEycfC_0();
        if (v220(v319, 1, v321) != 1)
        {
          sub_100011F00(*(v0 + 4240), &qword_100229940, &qword_1001E19D0);
        }
      }

      else
      {
        sub_1001B0368(*(v0 + 4240), v320, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
      }

      v323 = *(v0 + 4472);
      v324 = *(v0 + 4384);
      v325 = *(v0 + 4224);
      v326 = *(v0 + 4200);
      v327 = *(v0 + 4192);
      v328 = (*(v0 + 4184) + *(v0 + 4720));
      os_unfair_lock_lock(v328);
      v329 = *(sub_100011AC0(&qword_10022F148, &qword_1001E06B0) + 28);
      sub_1001AFCB4(v325, v326, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
      swift_storeEnumTagMultiPayload();
      sub_10019ACD8(v326);
      sub_100011F00(v326, &qword_10022F188, &qword_1001E06F0);
      os_unfair_lock_unlock(v328);
      sub_1001AFB98(v323, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
      sub_1001AFB98(v325, type metadata accessor for Proto_PrivateCloudCompute_ResponseContext);
      sub_1001AFB98(v324, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      goto LABEL_117;
    }

    goto LABEL_81;
  }

  if (!EnumCaseMultiPayload)
  {
    v56 = *(v0 + 4120);
    v57 = *v55;
    v58 = v55[1];

    sub_100012038(v57, v58);
    v59 = sub_1001D0E50();
    v60 = sub_1001D1DD0();

    sub_100011E48(v57, v58);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = *(v0 + 4704);
      v376 = *(v0 + 4144);
      loge = *(v0 + 4472);
      v62 = *(v0 + 4120);
      v370 = *(v0 + 817);
      v63 = swift_slowAlloc();
      v396 = swift_slowAlloc();
      *v63 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      *(v0 + 3912) = sub_1001D23A0();
      *(v0 + 3920) = v64;
      v406._countAndFlagsBits = 2629690;
      v406._object = 0xE300000000000000;
      sub_1001D18B0(v406);
      v407._countAndFlagsBits = sub_10016B71C(v376, v370);
      sub_1001D18B0(v407);

      v408._countAndFlagsBits = 41;
      v408._object = 0xE100000000000000;
      sub_1001D18B0(v408);
      v65 = sub_1000954E0(*(v0 + 3912), *(v0 + 3920), &v396);

      *(v63 + 4) = v65;
      *(v63 + 12) = 2080;
      sub_100012038(v57, v58);
      v66 = sub_1001CFB50();
      v68 = v67;
      sub_100011E48(v57, v58);
      v69 = sub_1000954E0(v66, v68, &v396);

      *(v63 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v59, v60, "%s Received responseUuid. Ignoring. uuidData=%s", v63, 0x16u);
      swift_arrayDestroy();

      sub_100011E48(v57, v58);
      v52 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse;
      v51 = loge;
      goto LABEL_116;
    }

    v130 = *(v0 + 4472);
    sub_100011E48(v57, v58);

    goto LABEL_114;
  }

  v92 = *(v0 + 4120);
  v93 = *v55;
  *(v0 + 4760) = *v55;
  v94 = v55[1];
  *(v0 + 4768) = v94;
  sub_100012038(v93, v94);

  sub_100012038(v93, v94);
  v95 = sub_1001D0E50();
  v96 = sub_1001D1DD0();

  if (!os_log_type_enabled(v95, v96))
  {
    sub_100011E48(v93, v94);
    sub_100011E48(v93, v94);
    goto LABEL_70;
  }

  loga = v93;
  v97 = *(v0 + 4704);
  v98 = v94;
  v99 = *(v0 + 4144);
  v100 = *(v0 + 4120);
  v101 = *(v0 + 817);
  v102 = swift_slowAlloc();
  v378 = swift_slowAlloc();
  *(v0 + 3944) = v378;
  *v102 = 136315394;
  sub_1001CFDA0();
  sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
  *(v0 + 3768) = sub_1001D23A0();
  *(v0 + 3776) = v103;
  v414._countAndFlagsBits = 2629690;
  v414._object = 0xE300000000000000;
  sub_1001D18B0(v414);
  v104 = v99;
  v94 = v98;
  v415._countAndFlagsBits = sub_10016B71C(v104, v101);
  sub_1001D18B0(v415);

  v416._countAndFlagsBits = 41;
  v416._object = 0xE100000000000000;
  sub_1001D18B0(v416);
  v105 = sub_1000954E0(*(v0 + 3768), *(v0 + 3776), (v0 + 3944));

  *(v102 + 4) = v105;
  *(v102 + 12) = 2048;
  v106 = v98 >> 62;
  if ((v98 >> 62) > 1)
  {
    v93 = loga;
    if (v106 != 2)
    {
      sub_100011E48(loga, v98);
      v107 = 0;
      goto LABEL_69;
    }

    isa = loga[2].isa;
    v215 = loga[3].isa;
    sub_100011E48(loga, v98);
    v107 = v215 - isa;
    if (!__OFSUB__(v215, isa))
    {
      goto LABEL_69;
    }

    __break(1u);
    goto LABEL_58;
  }

  v93 = loga;
  if (v106)
  {
    v42 = sub_100011E48(loga, v98);
    LODWORD(v107) = HIDWORD(loga) - loga;
    if (!__OFSUB__(HIDWORD(loga), loga))
    {
      v107 = v107;
      goto LABEL_69;
    }

LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  sub_100011E48(loga, v98);
  v107 = BYTE6(v98);
LABEL_69:
  *(v102 + 14) = v107;
  sub_100011E48(v93, v98);
  _os_log_impl(&_mh_execute_header, v95, v96, "%s Received payload %ld bytes from node", v102, 0x16u);
  sub_100011CF0(v378);

LABEL_70:

  v238 = *(v0 + 4120) + *(v0 + 4712);
  v42 = type metadata accessor for TrustedRequestConfiguration();
  if (*(v238 + *(v42 + 96)) == 1)
  {
    v239 = *(v0 + 4696);

    v240 = sub_1001D0E50();
    v241 = sub_1001D1DE0();

    if (os_log_type_enabled(v240, v241))
    {
      v242 = *(v0 + 4704);
      logh = *(v0 + 4144);
      v243 = v94;
      v244 = v93;
      v245 = *(v0 + 4120);
      v382 = *(v0 + 817);
      v246 = swift_slowAlloc();
      v247 = swift_slowAlloc();
      v395 = v247;
      *v246 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v93 = v244;
      v94 = v243;
      v396 = sub_1001D23A0();
      v397 = v248;
      v425._countAndFlagsBits = 2629690;
      v425._object = 0xE300000000000000;
      sub_1001D18B0(v425);
      v426._countAndFlagsBits = sub_10016B71C(logh, v382);
      sub_1001D18B0(v426);

      v427._countAndFlagsBits = 41;
      v427._object = 0xE100000000000000;
      sub_1001D18B0(v427);
      v249 = sub_1000954E0(v396, v397, &v395);

      *(v246 + 4) = v249;
      _os_log_impl(&_mh_execute_header, v240, v241, "%s Trusted proxy request did not expect response on node stream", v246, 0xCu);
      sub_100011CF0(v247);
    }

    v250 = *(v0 + 4544);
    v251 = *(v0 + 4520);
    v252 = *(v0 + 4472);
    v253 = *(v0 + 4432);
    sub_100089BE4();
    *(v0 + 4784) = swift_allocError();
    *v254 = 5917;
    *(v254 + 8) = &_swiftEmptyArrayStorage;
    swift_willThrow();
    sub_100011E48(v93, v94);
    sub_1001AFB98(v252, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    sub_100011F00(v251, &qword_100229600, &qword_1001E1840);
    sub_100011F00(v250, &qword_10022FD88, &qword_1001E1848);
    sub_100011F00(v253, &qword_100229930, &qword_1001D7198);
    v42 = v0 + 16;
    goto LABEL_82;
  }

  v255 = v94 >> 62;
  if ((v94 >> 62) > 1)
  {
    if (v255 != 2)
    {
      v256 = 0;
      goto LABEL_88;
    }

    v258 = *(v93 + 16);
    v257 = *(v93 + 24);
    v256 = v257 - v258;
    if (!__OFSUB__(v257, v258))
    {
      goto LABEL_88;
    }

    __break(1u);
LABEL_81:
    v259 = *(v0 + 4544);
    v260 = *(v0 + 4520);
    v261 = *(v0 + 4472);
    v262 = *(v0 + 4432);
    v263 = *(v0 + 4384);
    sub_100089BE4();
    *(v0 + 4808) = swift_allocError();
    *v264 = 5918;
    *(v264 + 8) = &_swiftEmptyArrayStorage;
    swift_willThrow();
    sub_1001AFB98(v261, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    sub_100011F00(v260, &qword_100229600, &qword_1001E1840);
    sub_100011F00(v259, &qword_10022FD88, &qword_1001E1848);
    sub_1001AFB98(v263, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
    sub_100011F00(v262, &qword_100229930, &qword_1001D7198);
    v42 = v0 + 16;
LABEL_82:

    return _swift_asyncLet_finish(v42);
  }

  if (v255)
  {
    if (!__OFSUB__(HIDWORD(v93), v93))
    {
      v256 = HIDWORD(v93) - v93;
      goto LABEL_88;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v256 = BYTE6(v94);
LABEL_88:
  v265 = (*(v0 + 4656) + *(**(v0 + 4656) + 144));
  os_unfair_lock_lock(v265);
  v266 = v265 + *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v267 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v268 = *(v267 + 144);
  v269 = *&v266[v268];
  if (!*(v269 + 16))
  {
    goto LABEL_100;
  }

  v270 = v267;
  v42 = sub_100006028(*(v0 + 4128), *(v0 + 4136));
  if ((v271 & 1) == 0)
  {
    goto LABEL_100;
  }

  logc = v94;
  v272 = (v0 + 3288);
  v273 = (*(v269 + 56) + (v42 << 7));
  v274 = *v273;
  v275 = v273[1];
  v276 = v273[3];
  *(v0 + 2008) = v273[2];
  *(v0 + 2024) = v276;
  *(v0 + 1976) = v274;
  *(v0 + 1992) = v275;
  v277 = v273[4];
  v278 = v273[5];
  v279 = v273[6];
  *(v0 + 2081) = *(v273 + 105);
  *(v0 + 2056) = v278;
  *(v0 + 2072) = v279;
  *(v0 + 2040) = v277;
  v280 = *(v0 + 1976);
  v281 = *(v0 + 1984);
  v283 = v273[2];
  v282 = v273[3];
  *(v0 + 3288) = v273[1];
  *(v0 + 3304) = v283;
  *(v0 + 3320) = v282;
  v285 = v273[5];
  v284 = v273[6];
  v286 = v273[4];
  *(v0 + 3377) = *(v273 + 105);
  *(v0 + 3352) = v285;
  *(v0 + 3368) = v284;
  *(v0 + 3336) = v286;
  if (v280 >> 62 != 1)
  {
    v302 = v0 + 696;
    *(v0 + 696) = v280;
    *(v0 + 704) = v281;
    v306 = *(v0 + 3368);
    *(v0 + 776) = *(v0 + 3352);
    *(v0 + 792) = v306;
    *(v0 + 801) = *(v0 + 3377);
    v307 = *(v0 + 3304);
    *(v0 + 712) = *v272;
    *(v0 + 728) = v307;
    v308 = *(v0 + 3336);
    *(v0 + 744) = *(v0 + 3320);
    *(v0 + 760) = v308;
    sub_10001208C(v0 + 1976, v0 + 3000, &qword_100230150, &unk_1001D3700);
    goto LABEL_99;
  }

  v362 = v256;
  v287 = v281 + v256;
  if (__OFADD__(v281, v256))
  {
    goto LABEL_123;
  }

  v288 = *(v0 + 4136);
  v373 = v287;
  v383 = *(v0 + 4128);
  v367 = v280 & 0x4000000000000001;
  *(v0 + 952) = v280 & 0x4000000000000001;
  *(v0 + 960) = v287;
  v289 = *(v0 + 3368);
  *(v0 + 1032) = *(v0 + 3352);
  *(v0 + 1048) = v289;
  *(v0 + 1057) = *(v0 + 3377);
  v290 = *(v0 + 3304);
  *(v0 + 968) = *v272;
  *(v0 + 984) = v290;
  v291 = *(v0 + 3336);
  *(v0 + 1000) = *(v0 + 3320);
  *(v0 + 1016) = v291;

  sub_10001208C(v0 + 1976, v0 + 2872, &qword_100230150, &unk_1001D3700);
  sub_10001208C(v0 + 952, v0 + 2744, &qword_100230150, &unk_1001D3700);
  v292 = *&v266[v268];
  v293 = swift_isUniquelyReferenced_nonNull_native();
  v396 = *&v266[v268];
  sub_10001B1A4((v0 + 952), v383, v288, v293);

  *&v266[v268] = v396;
  v294 = &v266[*(v270 + 100)];
  v295 = v294[3];
  if (v295 >> 61 == 2)
  {
    v297 = *v294;
    v296 = v294[1];
    v298 = v294[2];
    if (!v298)
    {
      v299 = *(v0 + 4656);
      v357 = *(v0 + 4352);
      v345 = *(v0 + 4344);
      v352 = *(v0 + 4336);
      v344 = *(*v299 + 184);
      v349 = *v294;
      v300 = *(*v299 + 152);
      v384 = v294[1];
      sub_1001D20F0();
      sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);

      sub_1001D2500();
      sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
      v94 = logc;
      sub_1001D2110();
      v297 = v349;
      (*(v345 + 8))(v357, v352);
      v42 = sub_1001AF240(v349, v384, 0, v295);
      v298 = 0;
      v296 = v384;
      v301 = &v266[*(v270 + 132)];
      *v301 = *(v0 + 3752);
      v301[16] = 0;
    }

    if (!__OFADD__(v298, v362))
    {
      *v294 = v297;
      v294[1] = v296;
      v294[2] = v298 + v362;
      v294[3] = v295;
      goto LABEL_97;
    }

LABEL_124:
    __break(1u);
    return _swift_asyncLet_finish(v42);
  }

LABEL_97:
  v302 = v0 + 2104;
  *(v0 + 2104) = v367;
  *(v0 + 2112) = v373;
  v303 = *(v0 + 3368);
  *(v0 + 2184) = *(v0 + 3352);
  *(v0 + 2200) = v303;
  *(v0 + 2209) = *(v0 + 3377);
  v304 = *(v0 + 3304);
  *(v0 + 2120) = *v272;
  *(v0 + 2136) = v304;
  v305 = *(v0 + 3336);
  *(v0 + 2152) = *(v0 + 3320);
  *(v0 + 2168) = v305;
LABEL_99:
  sub_100011F00(v302, &qword_100230150, &unk_1001D3700);
LABEL_100:
  v309 = *(v0 + 4728);
  v310 = *(v0 + 4120);
  os_unfair_lock_unlock(v265);
  v311 = *(v310 + v309);
  v312 = swift_task_alloc();
  *(v0 + 4792) = v312;
  *v312 = v0;
  v312[1] = sub_10018F198;

  return sub_1001116C0(v93, v94);
}

uint64_t sub_10018E490()
{
  *(v0 + 4040) = *(v0 + 4752);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_10018E520, 0, 0);
}

uint64_t sub_10018E520()
{
  v1 = *(v0 + 4544);
  sub_100011F00(*(v0 + 4520), &qword_100229600, &qword_1001E1840);
  sub_100011F00(v1, &qword_10022FD88, &qword_1001E1848);

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_10018E5D0()
{
  v1 = v0[586];
  v2 = v0[579];
  v3 = v0[576];
  v4 = v0[575];
  (*(v0[573] + 8))(v0[574], v0[572]);
  (*(v3 + 8))(v2, v4);

  v36 = v0[594];
  v5 = v0[579];
  v6 = v0[578];
  v7 = v0[574];
  v8 = v0[571];
  v9 = v0[568];
  v10 = v0[567];
  v11 = v0[565];
  v12 = v0[563];
  v13 = v0[560];
  v14 = v0[559];
  v17 = v0[558];
  v18 = v0[555];
  v19 = v0[554];
  v20 = v0[553];
  v21 = v0[551];
  v22 = v0[550];
  v23 = v0[548];
  v24 = v0[547];
  v25 = v0[546];
  v26 = v0[544];
  v27 = v0[541];
  v28 = v0[538];
  v29 = v0[535];
  v30 = v0[532];
  v31 = v0[531];
  v32 = v0[530];
  v33 = v0[529];
  v34 = v0[528];
  v35 = v0[525];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10018E83C()
{
  v36 = v0;
  if (*(*(v0 + 4120) + *(v0 + 4712) + 72) == 1 && (*(v0 + 818) & 1) == 0)
  {
    v1 = *(v0 + 4696);
    v2 = *(v0 + 4136);
    v3 = *(v0 + 4120);

    v4 = sub_1001D0E50();
    v5 = sub_1001D1DE0();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 4704);
      v7 = *(v0 + 4144);
      v29 = *(v0 + 4128);
      v31 = *(v0 + 4136);
      v8 = *(v0 + 4120);
      v9 = *(v0 + 817);
      v10 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v10 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v34 = sub_1001D23A0();
      v35 = v11;
      v38._countAndFlagsBits = 2629690;
      v38._object = 0xE300000000000000;
      sub_1001D18B0(v38);
      v39._countAndFlagsBits = sub_10016B71C(v7, v9);
      sub_1001D18B0(v39);

      v40._countAndFlagsBits = 41;
      v40._object = 0xE100000000000000;
      sub_1001D18B0(v40);
      v12 = sub_1000954E0(v34, v35, &v33);

      *(v10 + 4) = v12;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_1000954E0(v29, v31, &v33);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s Didn't receive final request execution log entry nodeID=%s", v10, 0x16u);
      swift_arrayDestroy();
    }
  }

  v13 = *(v0 + 4696);
  v14 = *(v0 + 4656);
  v15 = *(v0 + 4120);
  sub_10016A3F4(*(v0 + 4128), *(v0 + 4136));

  v16 = sub_1001D0E50();
  v17 = sub_1001D1DD0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 4704);
    v19 = *(v0 + 4144);
    v30 = *(v0 + 4136);
    v32 = *(v0 + 4544);
    v28 = *(v0 + 4128);
    v20 = *(v0 + 4120);
    v21 = *(v0 + 817);
    v22 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v22 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v34 = sub_1001D23A0();
    v35 = v23;
    v41._countAndFlagsBits = 2629690;
    v41._object = 0xE300000000000000;
    sub_1001D18B0(v41);
    v42._countAndFlagsBits = sub_10016B71C(v19, v21);
    sub_1001D18B0(v42);

    v43._countAndFlagsBits = 41;
    v43._object = 0xE100000000000000;
    sub_1001D18B0(v43);
    v24 = sub_1000954E0(v34, v35, &v33);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_1000954E0(v28, v30, &v33);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s Received all messages in node stream: %s", v22, 0x16u);
    swift_arrayDestroy();

    v25 = v32;
  }

  else
  {
    v26 = *(v0 + 4544);

    v25 = v26;
  }

  sub_100011F00(v25, &qword_10022FD88, &qword_1001E1848);

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_10018ECDC()
{
  v1 = v0[586];
  v2 = v0[579];
  v3 = v0[576];
  v4 = v0[575];
  (*(v0[573] + 8))(v0[574], v0[572]);
  (*(v3 + 8))(v2, v4);

  v36 = v0[597];
  v5 = v0[579];
  v6 = v0[578];
  v7 = v0[574];
  v8 = v0[571];
  v9 = v0[568];
  v10 = v0[567];
  v11 = v0[565];
  v12 = v0[563];
  v13 = v0[560];
  v14 = v0[559];
  v17 = v0[558];
  v18 = v0[555];
  v19 = v0[554];
  v20 = v0[553];
  v21 = v0[551];
  v22 = v0[550];
  v23 = v0[548];
  v24 = v0[547];
  v25 = v0[546];
  v26 = v0[544];
  v27 = v0[541];
  v28 = v0[538];
  v29 = v0[535];
  v30 = v0[532];
  v31 = v0[531];
  v32 = v0[530];
  v33 = v0[529];
  v34 = v0[528];
  v35 = v0[525];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10018EF48()
{
  v1 = v0[586];
  v2 = v0[579];
  v3 = v0[576];
  v4 = v0[575];
  (*(v0[573] + 8))(v0[574], v0[572]);
  (*(v3 + 8))(v2, v4);

  v36 = v0[598];
  v5 = v0[579];
  v6 = v0[578];
  v7 = v0[574];
  v8 = v0[571];
  v9 = v0[568];
  v10 = v0[567];
  v11 = v0[565];
  v12 = v0[563];
  v13 = v0[560];
  v14 = v0[559];
  v17 = v0[558];
  v18 = v0[555];
  v19 = v0[554];
  v20 = v0[553];
  v21 = v0[551];
  v22 = v0[550];
  v23 = v0[548];
  v24 = v0[547];
  v25 = v0[546];
  v26 = v0[544];
  v27 = v0[541];
  v28 = v0[538];
  v29 = v0[535];
  v30 = v0[532];
  v31 = v0[531];
  v32 = v0[530];
  v33 = v0[529];
  v34 = v0[528];
  v35 = v0[525];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10018F198()
{
  v2 = *(*v1 + 4792);
  v5 = *v1;
  *(*v1 + 4800) = v0;

  if (v0)
  {
    v3 = sub_10018F3A8;
  }

  else
  {
    v3 = sub_10018F2AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10018F2AC()
{
  v1 = *(v0 + 4472);
  sub_100011E48(*(v0 + 4760), *(v0 + 4768));
  sub_1001AFB98(v1, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  LOBYTE(v1) = *(v0 + 818);
  sub_100011F00(*(v0 + 4432), &qword_100229930, &qword_1001D7198);
  *(v0 + 819) = 0;
  *(v0 + 818) = v1;
  v2 = swift_task_alloc();
  *(v0 + 4744) = v2;
  *v2 = v0;
  v2[1] = sub_10018B910;
  v3 = *(v0 + 4520);
  v4 = *(v0 + 4480);

  return sub_10007FB14(v4);
}

uint64_t sub_10018F3A8()
{
  v1 = v0[568];
  v2 = v0[565];
  v3 = v0[559];
  v4 = v0[554];
  sub_100011E48(v0[595], v0[596]);
  sub_1001AFB98(v3, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  sub_100011F00(v2, &qword_100229600, &qword_1001E1840);
  sub_100011F00(v1, &qword_10022FD88, &qword_1001E1848);
  sub_100011F00(v4, &qword_100229930, &qword_1001D7198);

  return _swift_asyncLet_finish(v0 + 2);
}

uint64_t sub_10018F4AC()
{
  v1 = v0[586];
  v2 = v0[579];
  v3 = v0[576];
  v4 = v0[575];
  (*(v0[573] + 8))(v0[574], v0[572]);
  (*(v3 + 8))(v2, v4);

  v36 = v0[600];
  v5 = v0[579];
  v6 = v0[578];
  v7 = v0[574];
  v8 = v0[571];
  v9 = v0[568];
  v10 = v0[567];
  v11 = v0[565];
  v12 = v0[563];
  v13 = v0[560];
  v14 = v0[559];
  v17 = v0[558];
  v18 = v0[555];
  v19 = v0[554];
  v20 = v0[553];
  v21 = v0[551];
  v22 = v0[550];
  v23 = v0[548];
  v24 = v0[547];
  v25 = v0[546];
  v26 = v0[544];
  v27 = v0[541];
  v28 = v0[538];
  v29 = v0[535];
  v30 = v0[532];
  v31 = v0[531];
  v32 = v0[530];
  v33 = v0[529];
  v34 = v0[528];
  v35 = v0[525];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10018F718()
{
  v1 = v0[586];
  v2 = v0[579];
  v3 = v0[576];
  v4 = v0[575];
  (*(v0[573] + 8))(v0[574], v0[572]);
  (*(v3 + 8))(v2, v4);

  v36 = v0[601];
  v5 = v0[579];
  v6 = v0[578];
  v7 = v0[574];
  v8 = v0[571];
  v9 = v0[568];
  v10 = v0[567];
  v11 = v0[565];
  v12 = v0[563];
  v13 = v0[560];
  v14 = v0[559];
  v17 = v0[558];
  v18 = v0[555];
  v19 = v0[554];
  v20 = v0[553];
  v21 = v0[551];
  v22 = v0[550];
  v23 = v0[548];
  v24 = v0[547];
  v25 = v0[546];
  v26 = v0[544];
  v27 = v0[541];
  v28 = v0[538];
  v29 = v0[535];
  v30 = v0[532];
  v31 = v0[531];
  v32 = v0[530];
  v33 = v0[529];
  v34 = v0[528];
  v35 = v0[525];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10018F984()
{
  v1 = v0[586];
  v2 = v0[579];
  v3 = v0[578];
  v4 = v0[576];
  v5 = v0[575];
  v6 = v0[571];
  v7 = v0[568];
  v8 = v0[567];
  v11 = v0[565];
  v12 = v0[563];
  v13 = v0[560];
  v14 = v0[559];
  v15 = v0[558];
  v16 = v0[555];
  v17 = v0[554];
  v18 = v0[553];
  v19 = v0[551];
  v20 = v0[550];
  v21 = v0[548];
  v22 = v0[547];
  v23 = v0[546];
  v24 = v0[544];
  v25 = v0[541];
  v26 = v0[538];
  v27 = v0[535];
  v28 = v0[532];
  v29 = v0[531];
  v30 = v0[530];
  v31 = v0[529];
  v32 = v0[528];
  v33 = v0[525];
  (*(v0[573] + 8))(v0[574], v0[572]);
  (*(v4 + 8))(v2, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10018FBD4(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(*(sub_100011AC0(&qword_10022FE40, &qword_1001E1A40) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = sub_100011AC0(&qword_10022FE48, &qword_1001E1A48);
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10018FCD8, 0, 0);
}

uint64_t sub_10018FCD8()
{
  v1 = v0[6];
  if (*(v1 + qword_100243500 + 72) == 1)
  {
    v2 = v0[11];
    v3 = v0[7];
    sub_100011AC0(&qword_10022FE20, &qword_1001E19F0);
    sub_1001D1BF0();
    v0[12] = *(*v1 + 368);
    v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_10018FE2C;
    v6 = v0[11];
    v7 = v0[9];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v7);
  }

  else
  {
    v8 = v0[11];
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10018FE2C()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_10018FF28, 0, 0);
}

uint64_t sub_10018FF28()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[14] = v2;
  v0[15] = v1;
  v3 = v0[4];
  v4 = v0[5];
  v0[16] = v3;
  v0[17] = v4;
  if (v1)
  {
    v5 = *(v0[6] + v0[12]);

    sub_1001AF358(v2, v1, v3, v4);
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_1001900A0;
    v7 = v0[8];
    v8 = v0[6];

    JUMPOUT(0x10011FFD0);
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  v9 = v0[11];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001900A0()
{
  v2 = *(*v1 + 144);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1001902C8;
  }

  else
  {
    v3 = sub_1001901B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001901B8()
{
  v1 = v0[8];
  sub_1001AF3A4(v0[14], v0[15], v0[16], v0[17]);
  v2 = type metadata accessor for ValidatedProxiedAttestation();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_100011F00(v1, &qword_10022FE40, &qword_1001E1A40);
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_10018FE2C;
  v5 = v0[11];
  v6 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v6);
}

uint64_t sub_1001902C8()
{
  v1 = v0[8];
  sub_1001AF3A4(v0[14], v0[15], v0[16], v0[17]);
  v2 = type metadata accessor for ValidatedProxiedAttestation();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_100011F00(v1, &qword_10022FE40, &qword_1001E1A40);
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_10018FE2C;
  v5 = v0[11];
  v6 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v6);
}

uint64_t sub_1001903D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 520) = a5;
  *(v5 + 216) = a3;
  *(v5 + 224) = a4;
  *(v5 + 208) = a2;
  v6 = sub_1001D20D0();
  *(v5 + 232) = v6;
  v7 = *(v6 - 8);
  *(v5 + 240) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  v9 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry(0);
  *(v5 + 256) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  v11 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary(0);
  *(v5 + 280) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  v13 = sub_100011AC0(&qword_100229930, &qword_1001D7198);
  *(v5 + 304) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  v15 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse(0);
  *(v5 + 336) = v15;
  v16 = *(v15 - 8);
  *(v5 + 344) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  v18 = *(*(sub_100011AC0(&qword_10022FD78, &qword_1001E1830) - 8) + 64) + 15;
  *(v5 + 368) = swift_task_alloc();
  v19 = sub_100011AC0(&qword_10022FD80, &qword_1001E1838);
  *(v5 + 376) = v19;
  v20 = *(v19 - 8);
  *(v5 + 384) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 392) = swift_task_alloc();
  v22 = sub_100011AC0(&qword_100229600, &qword_1001E1840);
  *(v5 + 400) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v5 + 408) = swift_task_alloc();
  v24 = type metadata accessor for NWAsyncConnection.Inbound(0);
  *(v5 + 416) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v5 + 424) = swift_task_alloc();
  v26 = *(*(sub_100011AC0(&qword_10022FD88, &qword_1001E1848) - 8) + 64) + 15;
  *(v5 + 432) = swift_task_alloc();

  return _swift_task_switch(sub_100190718, 0, 0);
}

uint64_t sub_100190718()
{
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[52];
  v4 = v0[49];
  v5 = v0[50];
  v6 = v0[47];
  v7 = v0[48];
  v8 = v0[27];
  sub_1001AFCB4(v0[26], v0[53], type metadata accessor for NWAsyncConnection.Inbound);
  sub_1001B0458(&qword_10022EE88, type metadata accessor for NWAsyncConnection.Inbound);
  sub_1001D2390();
  (*(v7 + 16))(v4, v1, v6);
  sub_100024B78(&qword_10022FD90, &qword_10022FD80, &qword_1001E1838);
  sub_1001D1C90();
  v9 = v2 + *(v5 + 80);
  *v9 = 0;
  *(v9 + 8) = 2;
  *(v2 + *(v5 + 76)) = xmmword_1001D3A00;
  v10 = *v8;
  v11 = qword_1002434F8;
  v0[55] = *(*v8 + 392);
  v0[56] = v11;
  v0[57] = *(v10 + 368);
  v0[58] = *(v10 + 280);
  v12 = swift_task_alloc();
  v0[59] = v12;
  *v12 = v0;
  v12[1] = sub_100190954;
  v13 = v0[51];
  v14 = v0[46];

  return sub_10007FB14(v14);
}

uint64_t sub_100190954()
{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_10019201C;
  }

  else
  {
    v3 = sub_100190A68;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100190A68()
{
  v193 = v0;
  v1 = v0;
  v2 = v0[46];
  v3 = (*(v0[43] + 48))(v2, 1, v0[42]);
  v4 = v0[55];
  if (v3 == 1)
  {
    v5 = v1[27];
    sub_100011F00(v1[51], &qword_100229600, &qword_1001E1840);

    v6 = sub_1001D0E50();
    v7 = sub_1001D1DD0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v1[56];
      v184 = v1[54];
      v9 = v1[27];
      v10 = v1[28];
      v11 = *(v1 + 520);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v190 = v13;
      *v12 = 136315138;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v191 = sub_1001D23A0();
      v192 = v14;
      v195._countAndFlagsBits = 2629690;
      v195._object = 0xE300000000000000;
      sub_1001D18B0(v195);
      v196._countAndFlagsBits = sub_10016B71C(v10, v11);
      sub_1001D18B0(v196);

      v197._countAndFlagsBits = 41;
      v197._object = 0xE100000000000000;
      sub_1001D18B0(v197);
      v15 = sub_1000954E0(v191, v192, &v190);

      *(v12 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Received all messages on response bypass", v12, 0xCu);
      sub_100011CF0(v13);

      v16 = v184;
    }

    else
    {
      v33 = v1[54];

      v16 = v33;
    }

    sub_100011F00(v16, &qword_10022FD88, &qword_1001E1848);
    v35 = v1[53];
    v34 = v1[54];
    v36 = v1[51];
    v37 = v1[49];
    v39 = v1[45];
    v38 = v1[46];
    v40 = v1[44];
    v42 = v1[40];
    v41 = v1[41];
    v43 = v1;
    v44 = v1[39];
    v167 = v43[37];
    v169 = v43[36];
    v173 = v43[34];
    v177 = v43[33];
    v186 = v43[31];

    v45 = v43[1];
    goto LABEL_8;
  }

  v18 = v1[44];
  v17 = v1[45];
  v19 = v1[27];
  sub_1001B0368(v2, v17, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  sub_1001AFCB4(v17, v18, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);

  v20 = sub_1001D0E50();
  v21 = sub_1001D1DD0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v1[56];
    v172 = v1[41];
    v176 = v1[44];
    v185 = v1[38];
    v23 = v1[27];
    v24 = v1[28];
    v25 = *(v1 + 520);
    v26 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    *v26 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v1[20] = sub_1001D23A0();
    v1[21] = v27;
    v198._countAndFlagsBits = 2629690;
    v198._object = 0xE300000000000000;
    sub_1001D18B0(v198);
    v199._countAndFlagsBits = sub_10016B71C(v24, v25);
    sub_1001D18B0(v199);

    v200._countAndFlagsBits = 41;
    v200._object = 0xE100000000000000;
    sub_1001D18B0(v200);
    v28 = sub_1000954E0(v1[20], v1[21], &v191);

    *(v26 + 4) = v28;
    *(v26 + 12) = 2080;
    sub_10001208C(v176, v172, &qword_100229930, &qword_1001D7198);
    v29 = sub_1001D1820();
    v31 = v30;
    sub_1001AFB98(v176, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    v32 = sub_1000954E0(v29, v31, &v191);

    *(v26 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s Received message on response bypass: %s", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v47 = v1[44];

    sub_1001AFB98(v47, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  }

  v48 = v1[40];
  sub_10001208C(v1[45], v48, &qword_100229930, &qword_1001D7198);
  v49 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.OneOf_Type(0);
  if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
  {
    v50 = v1[45];
LABEL_37:
    sub_1001AFB98(v50, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
    sub_100011F00(v1[40], &qword_100229930, &qword_1001D7198);
    v149 = swift_task_alloc();
    v1[59] = v149;
    *v149 = v1;
    v149[1] = sub_100190954;
    v150 = v1[51];
    v151 = v1[46];

    return sub_10007FB14(v151);
  }

  sub_10001208C(v1[40], v1[39], &qword_100229930, &qword_1001D7198);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v52 = v1[55];
  v53 = v1[39];
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v68 = v1[36];
      v69 = v1[37];
      v70 = v1[27];
      sub_1001B0368(v53, v69, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
      sub_1001AFCB4(v69, v68, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);

      v71 = sub_1001D0E50();
      v72 = sub_1001D1DD0();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = v1[56];
        v74 = v1[35];
        v179 = v1[36];
        v75 = v1[27];
        v76 = v1[28];
        v77 = *(v1 + 520);
        v78 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        *v78 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        v1[12] = sub_1001D23A0();
        v1[13] = v79;
        v204._countAndFlagsBits = 2629690;
        v204._object = 0xE300000000000000;
        sub_1001D18B0(v204);
        v205._countAndFlagsBits = sub_10016B71C(v76, v77);
        sub_1001D18B0(v205);

        v206._countAndFlagsBits = 41;
        v206._object = 0xE100000000000000;
        sub_1001D18B0(v206);
        v80 = sub_1000954E0(v1[12], v1[13], &v191);

        *(v78 + 4) = v80;
        *(v78 + 12) = 2080;
        v1[25] = v74;
        sub_100011AC0(&qword_10022FDA0, &qword_1001E1858);
        v1[14] = sub_1001D1830();
        v1[15] = v81;
        v207._countAndFlagsBits = 2618;
        v207._object = 0xE200000000000000;
        sub_1001D18B0(v207);
        v82 = v1[14];
        v83 = v1[15];
        sub_1001B0458(&qword_100229A18, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
        v84 = sub_1001D0B30();
        v86 = v85;
        v1[16] = v82;
        v1[17] = v83;

        v208._countAndFlagsBits = v84;
        v208._object = v86;
        sub_1001D18B0(v208);

        v87 = v1[16];
        v88 = v1[17];
        sub_1001AFB98(v179, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
        v89 = sub_1000954E0(v87, v88, &v191);

        *(v78 + 14) = v89;
        _os_log_impl(&_mh_execute_header, v71, v72, "%s Received responseSummary on response bypass responseSummary=%s", v78, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v127 = v1[36];

        sub_1001AFB98(v127, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
      }

      v128 = v1[60];
      sub_1001A9AA8(v1[37]);
      if (v128)
      {
        v129 = v1[54];
        v130 = v1[51];
        v131 = v1[45];
        v132 = v1[40];
        sub_1001AFB98(v1[37], type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary);
        sub_1001AFB98(v131, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
        sub_100011F00(v130, &qword_100229600, &qword_1001E1840);
        sub_100011F00(v129, &qword_10022FD88, &qword_1001E1848);
        sub_100011F00(v132, &qword_100229930, &qword_1001D7198);
        v134 = v1[53];
        v133 = v1[54];
        v135 = v1[51];
        v136 = v1[49];
        v138 = v1[45];
        v137 = v1[46];
        v139 = v1[44];
        v140 = v1;
        v143 = v1 + 40;
        v142 = v1[40];
        v141 = v143[1];
        v144 = v140[39];
        v166 = v140[37];
        v168 = v140[36];
        v171 = v140[34];
        v175 = v140[33];
        v182 = v140[31];

        v45 = v140[1];
LABEL_8:

        return v45();
      }

      v126 = v1[45];
      v147 = v1[37];
      v148 = type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse.ResponseSummary;
    }

    else
    {
      v104 = v1[33];
      v105 = v1[34];
      v106 = v1[27];
      sub_1001B0368(v53, v105, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      sub_1001AFCB4(v105, v104, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);

      v107 = sub_1001D0E50();
      v108 = sub_1001D1DD0();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = v1[56];
        v181 = v1[34];
        v187 = v1[45];
        v170 = v1[33];
        v110 = v1[32];
        v112 = v1[27];
        v111 = v1[28];
        v113 = *(v1 + 520);
        v114 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        *v114 = 136315394;
        sub_1001CFDA0();
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        v1[2] = sub_1001D23A0();
        v1[3] = v115;
        v212._countAndFlagsBits = 2629690;
        v212._object = 0xE300000000000000;
        sub_1001D18B0(v212);
        v213._countAndFlagsBits = sub_10016B71C(v111, v113);
        sub_1001D18B0(v213);

        v214._countAndFlagsBits = 41;
        v214._object = 0xE100000000000000;
        sub_1001D18B0(v214);
        v116 = sub_1000954E0(v1[2], v1[3], &v191);

        *(v114 + 4) = v116;
        *(v114 + 12) = 2080;
        v1[23] = v110;
        sub_100011AC0(&qword_10022FD98, &qword_1001E1850);
        v1[4] = sub_1001D1830();
        v1[5] = v117;
        v215._countAndFlagsBits = 2618;
        v215._object = 0xE200000000000000;
        sub_1001D18B0(v215);
        v119 = v1[4];
        v118 = v1[5];
        sub_1001B0458(&qword_100229A48, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
        v120 = sub_1001D0B30();
        v122 = v121;
        v1[6] = v119;
        v1[7] = v118;

        v216._countAndFlagsBits = v120;
        v216._object = v122;
        sub_1001D18B0(v216);

        v123 = v1[6];
        v124 = v1[7];
        sub_1001AFB98(v170, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
        v125 = sub_1000954E0(v123, v124, &v191);

        *(v114 + 14) = v125;
        _os_log_impl(&_mh_execute_header, v107, v108, "%s Unexpected requestExecutionLogEntry on response bypass entry=%s", v114, 0x16u);
        swift_arrayDestroy();

        sub_1001AFB98(v181, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
        goto LABEL_27;
      }

      v126 = v1[45];
      v146 = v1[33];
      v145 = v1[34];

      sub_1001AFB98(v146, type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry);
      v147 = v145;
      v148 = type metadata accessor for Proto_PrivateCloudCompute_RequestExecutionLogEntry;
    }

    sub_1001AFB98(v147, v148);
LABEL_36:
    v50 = v126;
    goto LABEL_37;
  }

  if (!EnumCaseMultiPayload)
  {
    v54 = v1[27];
    v55 = *v53;
    v56 = v53[1];

    sub_100012038(v55, v56);
    v57 = sub_1001D0E50();
    v58 = sub_1001D1DD0();

    sub_100011E48(v55, v56);
    if (os_log_type_enabled(v57, v58))
    {
      v59 = v1[56];
      v60 = v1[27];
      v178 = v1[28];
      v187 = v1[45];
      v174 = *(v1 + 520);
      v61 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      *v61 = 136315394;
      sub_1001CFDA0();
      sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v1[18] = sub_1001D23A0();
      v1[19] = v62;
      v201._countAndFlagsBits = 2629690;
      v201._object = 0xE300000000000000;
      sub_1001D18B0(v201);
      v202._countAndFlagsBits = sub_10016B71C(v178, v174);
      sub_1001D18B0(v202);

      v203._countAndFlagsBits = 41;
      v203._object = 0xE100000000000000;
      sub_1001D18B0(v203);
      v63 = sub_1000954E0(v1[18], v1[19], &v191);

      *(v61 + 4) = v63;
      *(v61 + 12) = 2080;
      sub_100012038(v55, v56);
      v64 = sub_1001CFB50();
      v66 = v65;
      sub_100011E48(v55, v56);
      v67 = sub_1000954E0(v64, v66, &v191);

      *(v61 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v57, v58, "%s Received responseUuid on response bypass. Ignoring. uuidData=%s", v61, 0x16u);
      swift_arrayDestroy();

      sub_100011E48(v55, v56);
LABEL_27:
      v50 = v187;
      goto LABEL_37;
    }

    v126 = v1[45];
    sub_100011E48(v55, v56);

    goto LABEL_36;
  }

  v90 = v1[27];
  v91 = *v53;
  v1[61] = *v53;
  v92 = v53[1];
  v1[62] = v92;
  sub_100012038(v91, v92);

  sub_100012038(v91, v92);
  v93 = sub_1001D0E50();
  v94 = sub_1001D1DD0();

  if (os_log_type_enabled(v93, v94))
  {
    v188 = v94;
    v95 = v1[56];
    v96 = v1[27];
    v97 = v1[28];
    v98 = *(v1 + 520);
    v99 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v1[24] = v180;
    *v99 = 136315394;
    sub_1001CFDA0();
    sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
    v1[10] = sub_1001D23A0();
    v1[11] = v100;
    v209._countAndFlagsBits = 2629690;
    v209._object = 0xE300000000000000;
    sub_1001D18B0(v209);
    v210._countAndFlagsBits = sub_10016B71C(v97, v98);
    sub_1001D18B0(v210);

    v211._countAndFlagsBits = 41;
    v211._object = 0xE100000000000000;
    sub_1001D18B0(v211);
    v101 = sub_1000954E0(v1[10], v1[11], v1 + 24);

    *(v99 + 4) = v101;
    *(v99 + 12) = 2048;
    v102 = v92 >> 62;
    if ((v92 >> 62) > 1)
    {
      if (v102 != 2)
      {
        sub_100011E48(v91, v92);
        v103 = 0;
        goto LABEL_47;
      }

      v153 = *(v91 + 16);
      v152 = *(v91 + 24);
      sub_100011E48(v91, v92);
      v103 = v152 - v153;
      if (!__OFSUB__(v152, v153))
      {
        goto LABEL_47;
      }

      __break(1u);
    }

    else if (!v102)
    {
      sub_100011E48(v91, v92);
      v103 = BYTE6(v92);
LABEL_47:
      *(v99 + 14) = v103;
      sub_100011E48(v91, v92);
      _os_log_impl(&_mh_execute_header, v93, v188, "%s Received payload %ld bytes on response bypass", v99, 0x16u);
      sub_100011CF0(v180);

      goto LABEL_48;
    }

    result = sub_100011E48(v91, v92);
    LODWORD(v103) = HIDWORD(v91) - v91;
    if (__OFSUB__(HIDWORD(v91), v91))
    {
      __break(1u);
      return result;
    }

    v103 = v103;
    goto LABEL_47;
  }

  sub_100011E48(v91, v92);
  sub_100011E48(v91, v92);
LABEL_48:

  v154 = *(v1[27] + v1[57]);
  v155 = (v154 + *(*v154 + 144));
  os_unfair_lock_lock(v155);
  v156 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
  v157 = v155 + v156 + *(sub_100011AC0(&unk_100230120, &qword_1001DEF40) + 132);
  if (v157[16] == 1)
  {
    v189 = v91;
    v158 = v1[30];
    v159 = v1[31];
    v160 = v1[29];
    v183 = *(*v154 + 184);
    v161 = *(*v154 + 152);
    sub_1001D20F0();
    sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
    sub_1001D2500();
    sub_1001B0458(&qword_100229580, &type metadata accessor for ContinuousClock.Instant);
    sub_1001D2110();
    (*(v158 + 8))(v159, v160);
    v91 = v189;
    *v157 = *(v1 + 4);
    v157[16] = 0;
  }

  v162 = v1[58];
  v163 = v1[27];
  os_unfair_lock_unlock(v155);
  v164 = *(v163 + v162);
  v165 = swift_task_alloc();
  v1[63] = v165;
  *v165 = v1;
  v165[1] = sub_10019220C;

  return sub_1001116C0(v91, v92);
}

uint64_t sub_10019201C()
{
  *(v0 + 176) = *(v0 + 480);
  sub_100011AC0(&qword_100227A58, &qword_1001D3600);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1001920B0, 0, 0);
}

uint64_t sub_1001920B0()
{
  v1 = v0[54];
  sub_100011F00(v0[51], &qword_100229600, &qword_1001E1840);
  sub_100011F00(v1, &qword_10022FD88, &qword_1001E1848);
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[51];
  v5 = v0[49];
  v7 = v0[45];
  v6 = v0[46];
  v8 = v0[44];
  v10 = v0[40];
  v9 = v0[41];
  v11 = v0[39];
  v14 = v0[37];
  v15 = v0[36];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[31];
  v19 = v0[60];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10019220C()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_10019240C;
  }

  else
  {
    v3 = sub_100192320;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100192320()
{
  v1 = v0[45];
  sub_100011E48(v0[61], v0[62]);
  sub_1001AFB98(v1, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  sub_100011F00(v0[40], &qword_100229930, &qword_1001D7198);
  v2 = swift_task_alloc();
  v0[59] = v2;
  *v2 = v0;
  v2[1] = sub_100190954;
  v3 = v0[51];
  v4 = v0[46];

  return sub_10007FB14(v4);
}

uint64_t sub_10019240C()
{
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[45];
  v4 = v0[40];
  sub_100011E48(v0[61], v0[62]);
  sub_1001AFB98(v3, type metadata accessor for Proto_PrivateCloudCompute_PrivateCloudComputeResponse);
  sub_100011F00(v2, &qword_100229600, &qword_1001E1840);
  sub_100011F00(v1, &qword_10022FD88, &qword_1001E1848);
  sub_100011F00(v4, &qword_100229930, &qword_1001D7198);
  v6 = v0[53];
  v5 = v0[54];
  v7 = v0[51];
  v8 = v0[49];
  v10 = v0[45];
  v9 = v0[46];
  v11 = v0[44];
  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[39];
  v17 = v0[37];
  v18 = v0[36];
  v19 = v0[34];
  v20 = v0[33];
  v21 = v0[31];
  v22 = v0[64];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001925B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v316 = a6;
  v314 = a4;
  v315 = a8;
  v295 = a5;
  v296 = a7;
  v293 = a1;
  v294 = a3;
  v313 = a2;
  v306 = a9;
  v318 = a14;
  v321 = a12;
  v312 = a10;
  v14 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v292 = &v260 - v17;
  v18 = sub_1001CFD60();
  v290 = *(v18 - 8);
  v291 = v18;
  v19 = *(v290 + 64);
  __chkstk_darwin(v18, v20);
  v272 = &v260 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1001D1BA0();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8, v24);
  v289 = &v260 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8, v28);
  v305 = &v260 - v29;
  v30 = sub_100011AC0(&qword_10022FF30, &unk_1001E1C70);
  v287 = *(v30 - 8);
  v288 = v30;
  v31 = *(v287 + 64);
  __chkstk_darwin(v30, v32);
  v286 = &v260 - v33;
  v34 = sub_100011AC0(&qword_100229328, &qword_1001D6480);
  v284 = *(v34 - 8);
  v285 = v34;
  v35 = *(v284 + 64);
  __chkstk_darwin(v34, v36);
  v283 = &v260 - v37;
  v38 = sub_100011AC0(&qword_1002292A0, &qword_1001D6410);
  v280 = *(v38 - 8);
  v281 = v38;
  v39 = *(v280 + 64);
  v41 = __chkstk_darwin(v38, v40);
  v279 = &v260 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v41, v43);
  v277 = &v260 - v45;
  __chkstk_darwin(v44, v46);
  v276 = (&v260 - v47);
  v311 = sub_100011AC0(&qword_1002292F8, &unk_1001E1C80);
  v302 = *(v311 - 8);
  v48 = *(v302 + 64);
  v50 = __chkstk_darwin(v311, v49);
  v282 = &v260 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v50, v52);
  v278 = &v260 - v54;
  __chkstk_darwin(v53, v55);
  v275 = &v260 - v56;
  v307 = sub_100011AC0(&qword_1002292A8, &qword_1001D6418);
  v303 = *(v307 - 8);
  v57 = *(v303 + 64);
  v59 = __chkstk_darwin(v307, v58);
  v300 = &v260 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59, v61);
  v304 = &v260 - v62;
  v299 = sub_100011AC0(&qword_10022FF38, &qword_1001E1C90);
  v309 = *(v299 - 1);
  v63 = *(v309 + 64);
  v65 = __chkstk_darwin(v299, v64);
  v274 = &v260 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __chkstk_darwin(v65, v67);
  v273 = &v260 - v69;
  __chkstk_darwin(v68, v70);
  v72 = &v260 - v71;
  v73 = sub_100011AC0(&qword_100229298, &unk_1001D6400);
  v298 = *(v73 - 8);
  v74 = *(v298 + 64);
  v76 = __chkstk_darwin(v73, v75);
  v78 = &v260 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __chkstk_darwin(v76, v79);
  v82 = &v260 - v81;
  v84 = __chkstk_darwin(v80, v83);
  v86 = &v260 - v85;
  v88 = __chkstk_darwin(v84, v87);
  v90 = &v260 - v89;
  __chkstk_darwin(v88, v91);
  v93 = &v260 - v92;
  v308 = sub_1001D02E0();
  v320 = *(v308 - 8);
  v94 = *(v320 + 64);
  v96 = __chkstk_darwin(v308, v95);
  v297 = &v260 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v96, v98);
  v319 = &v260 - v99;
  v100 = v317;
  v101 = sub_10012C59C(a11);
  v317 = v100;
  if (v100)
  {
    sub_100011F00(v312, &qword_1002288B0, &qword_1001D5FC0);
    sub_100088D84(v318);

    v103 = a11;
    return sub_100011CF0(v103);
  }

  v265 = v93;
  v266 = v82;
  v269 = v101;
  v270 = v90;
  v260 = v72;
  v261 = v86;
  v267 = v78;
  v268 = v102;
  v301 = v73;
  v104 = a11[3];
  v105 = a11[4];
  v106 = sub_100024DC8(a11, v104);
  v107 = v318;
  sub_1000884D8(v318, &v334);
  v271 = sub_100106E64(v106, v107, v321, v104, v105);
  sub_100088D84(v107);
  v108 = a11[3];
  v109 = a11[4];
  v310 = a11;
  sub_100024DC8(a11, v108);
  v336 = &type metadata for SystemInfo;
  v337 = &protocol witness table for SystemInfo;
  v110 = swift_allocObject();
  v334 = v110;
  v111 = v107[9];
  v110[9] = v107[8];
  v110[10] = v111;
  v110[11] = v107[10];
  v112 = v107[5];
  v110[5] = v107[4];
  v110[6] = v112;
  v113 = v107[7];
  v110[7] = v107[6];
  v110[8] = v113;
  v114 = v107[1];
  v110[1] = *v107;
  v110[2] = v114;
  v115 = v107[3];
  v110[3] = v107[2];
  v110[4] = v115;
  Configuration.environment(systemInfo:)(&v334, v108, v109, v319);
  sub_100011CF0(&v334);
  v116 = v320;
  v117 = v297;
  v118 = v308;
  (*(v320 + 104))(v297, enum case for TC2Environment.liveon(_:), v308);
  sub_1001B0458(&qword_10022FF40, &type metadata accessor for TC2Environment);
  sub_1001D1950();
  sub_1001D1950();
  if (v334 == v332 && v335 == v333)
  {
    v119 = 1;
  }

  else
  {
    v119 = sub_1001D2470();
  }

  v120 = v270;
  v121 = *(v116 + 8);
  v320 = v116 + 8;
  v270 = v121;
  v121(v117, v118);

  v122 = v310;
  v123 = v310[4];
  sub_100024DC8(v310, v310[3]);
  sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  v124 = (v298 + 8);
  v318 = (v298 + 8);
  if (v119)
  {
    v125 = v265;
    sub_1001D0370();
    sub_1001B04A0(&qword_100230310, &qword_100228AA8, &qword_1001D5BC0);
    sub_1001D0210();
    v297 = *v124;
    (v297)(v125, v301);
    v126._countAndFlagsBits = v334;
    v127 = v335;
    if (v335)
    {
      v334 = 0x5F736F637270;
      v335 = 0xE600000000000000;
      v126._object = v127;
      sub_1001D18B0(v126);

      v262 = 0;
      v263 = 0;
      v264 = v335;
      v265 = v334;
    }

    else
    {
      v264 = 0;
      v265 = v334;
      v262 = 0;
      v263 = 0;
    }

    v122 = v310;
  }

  else
  {
    sub_1001D0380();
    v298 = sub_1001B04A0(&qword_100230310, &qword_100228AA8, &qword_1001D5BC0);
    sub_1001D0210();
    v128 = *v124;
    v129 = v301;
    (*v124)(v120, v301);
    v264 = v335;
    v265 = v334;
    v130 = v122[3];
    v297 = v122[4];
    sub_100024DC8(v122, v130);
    sub_1001D0470();
    sub_1001D0210();
    v297 = v128;
    (v128)(v120, v129);
    v262 = v335;
    v263 = v334;
  }

  v131 = v304;
  v132 = v122[4];
  sub_100024DC8(v122, v122[3]);
  if (v271)
  {
    sub_100011AC0(&qword_100228A88, &qword_1001E1CA0);
    v133 = v260;
    sub_1001D04E0();
    v304 = sub_1001B04A0(&qword_10022FF60, &qword_100228A88, &qword_1001E1CA0);
    sub_1001D0210();
    v134 = *(v309 + 8);
    v135 = v133;
    v136 = v299;
    v309 += 8;
    v134(v135, v299);
    if (v335)
    {
      v137 = sub_100105E34();
      v139 = 2;
      if ((v138 & 1) == 0)
      {
        v139 = v137;
      }
    }

    else
    {
      v139 = v334;
    }

    v160 = v273;
    v161 = v139 & ~(v139 >> 63);
    if (v161 >= 2)
    {
      v161 = 2;
    }

    v298 = v161;
    v162 = v122[4];
    sub_100024DC8(v122, v122[3]);
    sub_1001D04D0();
    sub_1001D0210();
    v134(v160, v136);
    if (v335 == 1)
    {
      v163 = sub_100105B84();
      v165 = 4;
      if ((v164 & 1) == 0)
      {
        v165 = v163;
      }
    }

    else
    {
      v165 = v334;
    }

    if (v165 <= 1)
    {
      v165 = 1;
    }

    if (v165 >= 4)
    {
      v166 = 4;
    }

    else
    {
      v166 = v165;
    }

    v167 = v310;
    v168 = v310[4];
    sub_100024DC8(v310, v310[3]);
    v169 = v274;
    sub_1001D04F0();
    sub_1001D0210();
    v134(v169, v299);
    v170 = v334;
    v309 = v166;
    if (v335)
    {
      v170 = v166 - v298;
    }

    v171 = v170 & ~(v170 >> 63);
    if (v171 >= 4)
    {
      v171 = 4;
    }

    v299 = v171;
    v172 = v167[4];
    sub_100024DC8(v167, v167[3]);
    v173 = v275;
    sub_1001D0460();
    sub_1001D0210();
    (*(v302 + 8))(v173, v311);
    LODWORD(v304) = v334;
    v174 = v303;
    v152 = v300;
    goto LABEL_65;
  }

  sub_1001D03E0();
  sub_1001D0210();
  v141 = v303 + 8;
  v140 = *(v303 + 8);
  v142 = v307;
  v140(v131, v307);
  v143 = v334;
  v144 = sub_1001050A8();
  if (v145)
  {
    v146 = v143;
  }

  else
  {
    v146 = v144;
  }

  if (v143 < v146)
  {
    v146 = v143;
  }

  v298 = v146;
  v147 = v122[4];
  sub_100024DC8(v122, v122[3]);
  sub_1001D03C0();
  sub_1001D0210();
  v299 = v140;
  v140(v131, v142);
  v148 = v334;
  v149 = [objc_opt_self() currentEstimates];
  sub_100015A10(0, &qword_10022FF48, RDEstimate_ptr);
  v150 = sub_1001D19D0();

  if (v150 >> 62)
  {
    result = sub_1001D2190();
  }

  else
  {
    result = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v152 = v300;
  v309 = v141;
  if (!result)
  {

    goto LABEL_50;
  }

  if ((v150 & 0xC000000000000001) != 0)
  {
    goto LABEL_73;
  }

  if (!*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  for (i = *(v150 + 32); ; i = sub_1001D2040())
  {
    v154 = i;

    v155 = [v154 countryCode];

    if (v155)
    {
      v156 = sub_1001D17D0();
      v158 = v157;

      v159 = v156;
    }

    else
    {
LABEL_50:
      v159 = 0;
      v158 = 0;
    }

    v175 = sub_100104D84(v159, v158);
    v177 = v176;

    if (v177)
    {
      v178 = v148;
    }

    else
    {
      v178 = v175;
    }

    if (v148 >= v178)
    {
      v179 = v178;
    }

    else
    {
      v179 = v148;
    }

    v180 = v310[4];
    sub_100024DC8(v310, v310[3]);
    v148 = &type metadata for Int;
    v181 = v304;
    sub_1001D03F0();
    sub_1001D0210();
    (v299)(v181, v307);
    v309 = v179;
    v182 = v179 - v298;
    if (__OFSUB__(v179, v298))
    {
      __break(1u);
      goto LABEL_72;
    }

    v183 = v334;
    v174 = v303;
    if ((v334 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    ;
  }

  LODWORD(v304) = 0;
  if (v334 >= v182)
  {
    v183 = v182;
  }

  if (v182 <= 0)
  {
    v184 = 0;
  }

  else
  {
    v184 = v183;
  }

  v299 = v184;
  v167 = v310;
LABEL_65:
  v303 = a13;
  v185 = v167[4];
  sub_100024DC8(v167, v167[3]);
  sub_1001D04C0();
  sub_1001D0210();
  (*(v174 + 8))(v152, v307);
  v307 = v338;
  v186 = v167[4];
  sub_100024DC8(v167, v167[3]);
  v187 = sub_100011AC0(&qword_100228AA8, &qword_1001D5BC0);
  v188 = v261;
  v273 = v187;
  sub_1001D0340();
  v274 = sub_1001B04A0(&qword_100230310, &qword_100228AA8, &qword_1001D5BC0);
  sub_1001D0210();
  (v297)(v188, v301);
  v300 = v334;
  v275 = v335;
  v189 = v167[4];
  sub_100024DC8(v167, v167[3]);
  v190 = v276;
  sub_1001D0510();
  sub_1001D0210();
  v191 = v281;
  v192 = *(v280 + 8);
  v192(v190, v281);
  v193 = v331;
  v194 = v167[3];
  v280 = v167[4];
  sub_100024DC8(v167, v194);
  v195 = v277;
  sub_1001D04A0();
  sub_1001D0210();
  v192(v195, v191);
  v196 = v330;
  v197 = v167[3];
  v280 = v167[4];
  sub_100024DC8(v167, v197);
  v198 = v279;
  sub_1001D0490();
  sub_1001D0210();
  v192(v198, v191);
  v199 = v329;
  v200 = v167[4];
  sub_100024DC8(v167, v167[3]);
  v201 = v278;
  sub_1001D0400();
  sub_1001D0210();
  v261 = *(v302 + 8);
  v261(v201, v311);
  LODWORD(v302) = v328;
  v202 = sub_1001D02B0();
  v280 = v203;
  v281 = v202;
  LODWORD(v279) = sub_1001D0280();
  v276 = type metadata accessor for TrustedRequestConfiguration();
  v204 = v306 + v276[16];
  sub_1001D02C0();
  v205 = sub_1001D0290();
  v277 = v206;
  v278 = v205;
  v207 = v167[4];
  sub_100024DC8(v167, v167[3]);
  v208 = v283;
  sub_1001D03A0();
  sub_1001D0210();
  (*(v284 + 8))(v208, v285);
  v284 = v333;
  v285 = v332;
  v209 = v167[4];
  sub_100024DC8(v167, v167[3]);
  v210 = v282;
  sub_1001D0500();
  sub_1001D0210();
  v261(v210, v311);
  LODWORD(v311) = v327;
  v211 = v167[4];
  sub_100024DC8(v167, v167[3]);
  v212 = v266;
  sub_1001D0360();
  sub_1001D0210();
  v213 = v301;
  v214 = v297;
  (v297)(v212, v301);
  v282 = v326;
  v283 = v325;
  v215 = v167[3];
  v266 = v167[4];
  sub_100024DC8(v167, v215);
  v216 = v267;
  sub_1001D0320();
  sub_1001D0210();
  (v214)(v216, v213);
  v217 = v323;
  v301 = v324;
  v218 = v167[4];
  sub_100024DC8(v167, v167[3]);
  sub_100011AC0(&qword_10022FF50, &qword_1001E1C98);
  v219 = v286;
  sub_1001D0440();
  sub_1001B04A0(&qword_10022FF58, &qword_10022FF50, &qword_1001E1C98);
  sub_1001D0210();
  (*(v287 + 8))(v219, v288);
  LODWORD(v288) = v322;
  v220 = v312;
  sub_10001208C(v312, v305, &qword_1002288B0, &qword_1001D5FC0);
  v221 = v289;
  sub_1001D1C40();
  LODWORD(v297) = sub_10012D7B8(v221);
  v222 = v292;
  sub_100104730(v292);
  v224 = v290;
  v223 = v291;
  v225 = (*(v290 + 48))(v222, 1, v291);
  v318 = v217;
  if (v225 == 1)
  {

    sub_100011F00(v220, &qword_1002288B0, &qword_1001D5FC0);
    v270(v319, v308);
    sub_100011F00(v222, &qword_100227A38, &unk_1001D35F0);
    v226 = 1;
  }

  else
  {
    v227 = v272;
    (*(v224 + 32))(v272, v222, v223);
    sub_1001CFD00();
    v229 = v228;

    sub_100011F00(v220, &qword_1002288B0, &qword_1001D5FC0);
    (*(v224 + 8))(v227, v223);
    v270(v319, v308);
    v226 = v229 < -129600.0;
  }

  LODWORD(v321) = v226;
  v230 = v276;
  v231 = v306;
  v232 = (v306 + v276[20]);
  v233 = (v306 + v276[21]);
  v234 = v276[22];
  v320 = v276[23];
  v235 = (v306 + v234);
  v236 = (v306 + v276[25]);
  v237 = v276[29];
  v238 = (v306 + v276[28]);
  v239 = sub_1001CFDA0();
  (*(*(v239 - 8) + 56))(v231 + v237, 1, 1, v239);
  v240 = v230[30];
  v241 = v230[31];
  v242 = v309;
  *v231 = v298;
  *(v231 + 8) = v242;
  v243 = v307;
  *(v231 + 16) = v299;
  *(v231 + 24) = v243;
  v244 = v275;
  *(v231 + 32) = v300;
  *(v231 + 40) = v244;
  *(v231 + 72) = v271;
  *(v231 + 73) = v302;
  v245 = v280;
  *(v231 + 80) = v281;
  *(v231 + 88) = v245;
  *(v231 + 96) = v279 & 1;
  *(v231 + 48) = v193;
  *(v231 + 56) = v196;
  *(v231 + 64) = v199;
  v246 = (v231 + v230[17]);
  *v246 = v278;
  v246[1] = v277;
  v247 = (v231 + v230[18]);
  *v247 = v285;
  v247[1] = v284;
  *(v231 + v230[19]) = v311;
  v248 = v282;
  *v232 = v283;
  v232[1] = v248;
  v249 = v301;
  *v233 = v318;
  v233[1] = v249;
  v250 = v264;
  *v235 = v265;
  v235[1] = v250;
  *(v231 + v320) = v288;
  *(v231 + v230[24]) = v304;
  v251 = v262;
  *v236 = v263;
  v236[1] = v251;
  v252 = (v231 + v230[26]);
  *v252 = v293;
  v252[1] = v313;
  v253 = (v231 + v230[27]);
  *v253 = v294;
  v253[1] = v314;
  v254 = (v231 + v240);
  v255 = v316;
  *v254 = v295;
  v254[1] = v255;
  v256 = v315;
  *v238 = v296;
  v238[1] = v256;
  v257 = v231 + v241;
  sub_10001BAC8(v305, v231 + v237, &qword_1002288B0, &qword_1001D5FC0);
  v258 = (v231 + v230[32]);
  v259 = v268;
  *v258 = v269;
  v258[1] = v259;
  *(v231 + v230[33]) = v297;
  BYTE4(v258) = BYTE4(v303);
  *v257 = v303;
  *(v257 + 4) = BYTE4(v258) & 1;
  *(v231 + v230[34]) = v321;
  v103 = v310;
  return sub_100011CF0(v103);
}

uint64_t sub_100193F70(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(char *, char *, uint64_t), uint64_t a6, NSObject *a7, uint64_t a8, uint64_t a9, void (*a10)(void, void, void))
{
  v11 = v10;
  v503 = a8;
  v502 = a7;
  v528 = a5;
  v530 = a3;
  v485 = a1;
  v15 = sub_100011AC0(&qword_100229350, &unk_1001D6BA0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v437 - v18;
  v20 = sub_1001D02E0();
  v479 = *(v20 - 8);
  v480 = v20;
  v21 = *(v479 + 64);
  __chkstk_darwin(v20, v22);
  v478 = &v437 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1001D0DC0();
  v492 = *(v24 - 8);
  v493 = v24;
  v25 = *(v492 + 64);
  v27 = __chkstk_darwin(v24, v26);
  v490 = &v437 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v488 = &v437 - v30;
  v489 = sub_1001D0DF0();
  v506 = *(v489 - 8);
  v31 = *(v506 + 64);
  v33 = __chkstk_darwin(v489, v32);
  v487 = &v437 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33, v35);
  v477 = &v437 - v36;
  v37 = sub_1001CFDD0();
  v475 = *(v37 - 8);
  v476 = v37;
  v38 = *(v475 + 64);
  __chkstk_darwin(v37, v39);
  v474 = &v437 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1001D20D0();
  v471 = *(v41 - 8);
  v472 = v41;
  v42 = *(v471 + 64);
  __chkstk_darwin(v41, v43);
  v470 = &v437 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001CFD60();
  v468 = *(v45 - 8);
  v469 = v45;
  v46 = *(v468 + 64);
  __chkstk_darwin(v45, v47);
  v467 = &v437 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100011AC0(&unk_100230120, &qword_1001DEF40);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8, v51);
  v466 = &v437 - v52;
  v53 = type metadata accessor for BiomeReporter();
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53 - 8, v55);
  v498 = &v437 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v517 = sub_1001D0E60();
  v494 = *(v517 - 1);
  v57 = *(v494 + 64);
  v59 = __chkstk_darwin(v517, v58);
  v483 = &v437 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v59, v61);
  v473 = &v437 - v63;
  __chkstk_darwin(v62, v64);
  v512 = &v437 - v65;
  v66 = sub_1001D02F0();
  v515 = *(v66 - 8);
  v67 = *(v515 + 64);
  __chkstk_darwin(v66, v68);
  v499 = &v437 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1001CF7E0();
  v71 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70 - 8, v72);
  v486 = (&v437 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  v521 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  v496 = *(v521 - 8);
  v74 = *(v496 + 64);
  v76 = __chkstk_darwin(v521, v75);
  v509 = &v437 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76, v78);
  v520 = &v437 - v79;
  v522 = sub_1001D20F0();
  v495 = *(v522 - 8);
  v80 = *(v495 + 64);
  v82 = __chkstk_darwin(v522, v81);
  v491 = &v437 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v82, v84);
  v519 = &v437 - v85;
  v86 = sub_100011AC0(&qword_100229520, &unk_1001DEF70);
  v87 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86 - 8, v88);
  v513 = &v437 - v89;
  v523 = sub_1001D08A0();
  v514 = *(v523 - 8);
  v90 = *(v514 + 64);
  v92 = __chkstk_darwin(v523, v91);
  v497 = &v437 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __chkstk_darwin(v92, v94);
  v508 = &v437 - v96;
  v482 = v97;
  __chkstk_darwin(v95, v98);
  v518 = &v437 - v99;
  v464 = type metadata accessor for IncomingUserDataReader.State(0);
  v100 = *(*(v464 - 8) + 64);
  __chkstk_darwin(v464, v101);
  v465 = &v437 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for OutgoingUserDataWriter.StateMachine(0);
  v104 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103 - 8, v105);
  v463 = (&v437 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
  v526 = sub_1001CFDA0();
  v525 = *(v526 - 8);
  v107 = *(v525 + 64);
  v109 = __chkstk_darwin(v526, v108);
  v516 = &v437 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __chkstk_darwin(v109, v111);
  v505 = &v437 - v113;
  v115 = __chkstk_darwin(v112, v114);
  v507 = &v437 - v116;
  v118 = __chkstk_darwin(v115, v117);
  v510 = &v437 - v119;
  v121 = __chkstk_darwin(v118, v120);
  v511 = &v437 - v122;
  v124 = __chkstk_darwin(v121, v123);
  v484 = (&v437 - v125);
  v127 = __chkstk_darwin(v124, v126);
  v462 = &v437 - v128;
  v481 = v129;
  __chkstk_darwin(v127, v130);
  v524 = &v437 - v131;
  v132 = sub_100011AC0(&qword_1002288B0, &qword_1001D5FC0);
  v133 = *(*(v132 - 8) + 64);
  v135 = __chkstk_darwin(v132 - 8, v134);
  v504 = &v437 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v135, v137);
  v500 = (&v437 - v138);
  v139 = sub_100011AC0(&qword_10022FC60, &unk_1001E15A8);
  v140 = *(*(v139 - 8) + 64);
  __chkstk_darwin(v139 - 8, v141);
  v501 = &v437 - v142;
  v143 = type metadata accessor for TrustedRequestConfiguration();
  v144 = *(*(v143 - 8) + 64);
  v146 = __chkstk_darwin(v143, v145);
  v148 = __chkstk_darwin(v146, v147);
  v150 = __chkstk_darwin(v148, &v437 - v149);
  v156 = *v10;
  v157 = (v11 + v156[38]);
  v158 = *v157;
  v159 = v157[1];
  if (a4)
  {
    if ((*(v11 + v156[39]) & 1) == 0)
    {

      v170 = sub_1001D0E50();
      v182 = sub_1001D1DE0();

      if (os_log_type_enabled(v170, v182))
      {
        v183 = swift_slowAlloc();
        *&v560[0] = swift_slowAlloc();
        *v183 = 136315650;
        *(v183 + 4) = sub_1000954E0(v158, v159, v560);
        *(v183 + 12) = 2080;
        v184 = sub_1000954E0(v530, a4, v560);

        *(v183 + 14) = v184;
        *(v183 + 22) = 2080;
        *(v183 + 24) = sub_1000954E0(0xD000000000000036, 0x80000001001E3190, v560);
        _os_log_impl(&_mh_execute_header, v170, v182, "client not allowed to override %s with %s. Need entitlement %s", v183, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
LABEL_29:
      }

      goto LABEL_30;
    }

    v458 = v150;
    v459 = v154;
    v460 = &v437 - v152;
    v461 = v151;
    v451 = v155;
    v452 = v153;
    v453 = v66;
    v454 = a2;
    v455 = v19;
    v529 = a4;
  }

  else
  {
    v458 = v150;
    v459 = v154;
    v460 = &v437 - v152;
    v461 = v151;
    v451 = v155;
    v452 = v153;
    v453 = v66;
    v454 = a2;
    v455 = v19;

    v530 = v158;
    v529 = v159;
  }

  v457 = a10;
  v456 = a9;
  v160 = v156[30];
  v527 = v11;
  v161 = *(v11 + v160);

  v162 = sub_100105760();
  v163 = v162 + 5;
  v164 = v162[2] + 1;
  do
  {
    if (!--v164)
    {

      v186 = v500;
      sub_10001208C(v456, v500, &qword_1002288B0, &qword_1001D5FC0);
      v187 = v527;
      sub_100044698(v527 + qword_100243518, &v537);
      v188 = (v187 + *(*v187 + 248));
      v189 = v188[9];
      v560[8] = v188[8];
      v560[9] = v189;
      v560[10] = v188[10];
      v190 = v188[5];
      v560[4] = v188[4];
      v560[5] = v190;
      v191 = v188[6];
      v560[7] = v188[7];
      v560[6] = v191;
      v192 = v188[1];
      v560[0] = *v188;
      v560[1] = v192;
      v193 = v188[2];
      v560[3] = v188[3];
      v560[2] = v193;
      v194 = v503;

      v195 = v529;

      sub_1000884D8(v560, &v549);
      v436 = v161;
      v196 = v501;
      sub_1001925B0(v158, v159, v530, v195, v528, a6, v502, v194, v501, v186, &v537, v436, v457 | ((HIDWORD(v457) & 1) << 32), v560);
      (*(v459 + 56))(v196, 0, 1, v458);
      sub_1001B0368(v196, v460, type metadata accessor for TrustedRequestConfiguration);
      v197 = v524;
      sub_1001CFD90();
      v198 = v525;
      v200 = v525 + 16;
      v199 = *(v525 + 16);
      v201 = v462;
      v202 = v526;
      v199(v462, v197, v526);
      v199(v484, v485, v202);
      v203 = sub_1001D0E50();
      v204 = sub_1001D1E00();
      v205 = os_log_type_enabled(v203, v204);
      v530 = v200;
      v528 = v199;
      if (v205)
      {
        v206 = swift_slowAlloc();
        v500 = v206;
        v503 = swift_slowAlloc();
        *&v549 = v503;
        *v206 = 136315394;
        sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
        v502 = v203;
        v207 = sub_1001D23A0();
        v209 = v208;
        v210 = v484;
        LODWORD(v501) = v204;
        v211 = *(v198 + 8);
        v211(v201, v202);
        v212 = sub_1000954E0(v207, v209, &v549);

        v213 = v500;
        *(v500 + 1) = v212;
        *(v213 + 12) = 2080;
        v214 = sub_1001D23A0();
        v216 = v215;
        v211(v210, v202);
        v217 = sub_1000954E0(v214, v216, &v549);

        *(v213 + 14) = v217;
        v218 = v502;
        _os_log_impl(&_mh_execute_header, v502, v501, "server id=%s set for request against client id=%s", v213, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v219 = *(v198 + 8);
        v219(v484, v202);
        v219(v201, v202);
      }

      v220 = v465;
      v221 = type metadata accessor for OutgoingUserDataWriter(0);
      v222 = *(v221 + 48);
      v223 = *(v221 + 52);
      v224 = swift_allocObject();
      v225 = (v224 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_stateLock);
      v226 = sub_1001D0110();
      v227 = v463;
      *v463 = *v226;
      type metadata accessor for OutgoingUserDataWriter.StateMachine.State(0);
      swift_storeEnumTagMultiPayload();
      *v225 = 0;

      v228 = *(sub_100011AC0(&qword_10022D778, &qword_1001DE630) + 28);
      v229 = sub_100011AC0(&qword_10022FC68, &qword_1001E15B8);
      bzero(v225 + v228, *(*(v229 - 8) + 64));
      sub_1001B0368(v227, v225 + v228, type metadata accessor for OutgoingUserDataWriter.StateMachine);
      v465 = v224;
      *(v224 + OBJC_IVAR____TtC20privatecloudcomputed22OutgoingUserDataWriter_waiterIDGenerator) = 0;
      v230 = type metadata accessor for IncomingUserDataReader(0);
      v231 = *(v230 + 48);
      v232 = *(v230 + 52);
      v501 = swift_allocObject();
      v233 = *v226;
      v548 = v233;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v235 = v514;
      if (*(v233 + 16) < 4 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000F79D8(isUniquelyReferenced_nonNull_native, 4, 1);
        v233 = v548;
      }

      v236 = *(sub_100011AC0(&qword_10022D2D8, &unk_1001DE470) + 64);
      *v220 = v233;
      *(v220 + 8) = 0;
      v237 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
      (*(*(v237 - 8) + 56))(v220 + v236, 1, 1, v237);
      swift_storeEnumTagMultiPayload();
      v238 = v501 + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock;
      *(v501 + OBJC_IVAR____TtC20privatecloudcomputed22IncomingUserDataReader_stateLock) = 0;

      v239 = *(sub_100011AC0(&qword_10022D1F0, &qword_1001E15C0) + 28);
      v240 = sub_100011AC0(&qword_10022FC70, &qword_1001E15C8);
      bzero((v238 + v239), *(*(v240 - 8) + 64));
      sub_1001B0368(v220, v238 + v239, type metadata accessor for IncomingUserDataReader.State);

      v241 = v526;
      v242 = v528;
      v528(v511, v485, v526);
      v242(v510, v524, v241);
      v484 = type metadata accessor for TrustedRequestConfiguration;
      sub_1001AFCB4(v460, v461, type metadata accessor for TrustedRequestConfiguration);
      v502 = *(v235 + 16);
      v503 = v235 + 16;
      (v502)(v518, v454, v523);
      v243 = v527;
      v244 = *(v527 + *(*v527 + 264));
      sub_10001208C(v527 + *(*v527 + 272), v513, &qword_100229520, &unk_1001DEF70);
      v245 = *v243;
      v450 = *(v243 + *(*v243 + 280));
      v246 = v188[9];
      v545 = v188[8];
      v546 = v246;
      v547 = v188[10];
      v247 = v188[5];
      v541 = v188[4];
      v542 = v247;
      v248 = v188[6];
      v544 = v188[7];
      v543 = v248;
      v249 = v188[1];
      v537 = *v188;
      v538 = v249;
      v250 = v188[3];
      v539 = v188[2];
      v540 = v250;
      v456 = *(v243 + *(v245 + 288));
      v251 = *(v245 + 296);
      v252 = *(v495 + 16);
      v485 = (v495 + 16);
      v500 = v252;
      (v252)(v519, v243 + v251, v522);
      v253 = *(*v243 + 328);
      v254 = *(v496 + 16);
      v462 = (v496 + 16);
      v457 = v254;
      v254(v520, v243 + v253, v521);
      v255 = sub_100011AC0(&qword_10022FC78, &qword_1001E15D0);
      v256 = *(v255 + 48);
      v257 = *(v255 + 52);
      v258 = swift_allocObject();
      v259 = *(*v258 + 344);
      v464 = sub_1001CF820();
      v260 = *(v464 + 48);
      v261 = *(v464 + 52);
      swift_allocObject();
      v463 = v244;

      v262 = v465;

      v263 = v501;

      sub_1000884D8(&v537, &v549);

      v264 = sub_1001CF810();
      sub_1001CF7C0();
      sub_1001CF7F0();
      *(v258 + v259) = v264;
      *(v258 + *(*v258 + 376)) = 1;
      *(v258 + *(*v258 + 384)) = 2;
      v439 = *(*v258 + 392);
      v265 = v515;
      v266 = v499;
      v267 = v453;
      v446 = *(v515 + 104);
      v447 = v515 + 104;
      v446(v499, enum case for TC2LogCategory.trustedRequest(_:), v453);
      sub_1001D08B0();
      v268 = *(v265 + 8);
      v515 = v265 + 8;
      v448 = v268;
      v268(v266, v267);
      v449 = qword_1002434F0;
      v269 = v526;
      v270 = v528;
      v528((v258 + qword_1002434F0), v511, v526);
      v271 = qword_1002434F8;
      v272 = v269;
      v270(v258 + qword_1002434F8, v510, v269);
      v445 = v258 + qword_100243500;
      sub_1001AFCB4(v461, v258 + qword_100243500, v484);
      (v502)(v258 + qword_100243508, v518, v523);
      *(v258 + *(*v258 + 272)) = v262;
      *(v258 + *(*v258 + 280)) = v263;
      *(v258 + *(*v258 + 296)) = v244;
      sub_10001208C(v513, v258 + *(*v258 + 304), &qword_100229520, &unk_1001DEF70);
      *(v258 + *(*v258 + 312)) = v450;
      v273 = (v258 + *(*v258 + 320));
      v274 = v538;
      *v273 = v537;
      v273[1] = v274;
      v275 = v542;
      v273[4] = v541;
      v273[5] = v275;
      v276 = v540;
      v273[2] = v539;
      v273[3] = v276;
      v277 = v547;
      v278 = v545;
      v273[9] = v546;
      v273[10] = v277;
      v279 = v544;
      v273[6] = v543;
      v273[7] = v279;
      v273[8] = v278;
      *(v258 + *(*v258 + 328)) = v456;
      (v500)(v258 + *(*v258 + 336), v519, v522);
      v280 = v521;
      v281 = v457;
      (v457)(v258 + *(*v258 + 360), v520, v521);
      v270(v507, (v258 + v449), v272);
      v270(v505, (v258 + v271), v272);
      v282 = v458;
      v283 = v458[28];
      v284 = v461;
      v285 = (v461 + v458[27]);
      v287 = *v285;
      v286 = v285[1];
      v441 = v287;
      v437 = v286;
      v288 = v458[29];
      v289 = (v461 + v458[30]);
      v291 = *v289;
      v290 = v289[1];
      v440 = v291;
      v449 = v290;
      v292 = *(v461 + v283 + 8);
      v442 = *(v461 + v283);
      v450 = v292;
      sub_10001208C(v461 + v288, v504, &qword_1002288B0, &qword_1001D5FC0);
      v293 = *(v284 + 88);
      v443 = *(v284 + 80);
      v456 = v293;
      v444 = *(v284 + v282[33]);
      (v502)(v508, v518, v523);
      v294 = *(v494 + 16);
      v484 = (v494 + 16);
      v295 = v439;
      v296 = v517;
      (v294)(v512, v258 + v439, v517);
      v297 = v294;
      v458 = v294;
      v281(v509, v520, v280);
      v298 = v491;
      v299 = v522;
      (v500)(v491, v519, v522);
      v300 = v273[9];
      v557 = v273[8];
      v558 = v300;
      v559 = v273[10];
      v301 = v273[5];
      v553 = v273[4];
      v554 = v301;
      v302 = v273[6];
      v556 = v273[7];
      v555 = v302;
      v303 = v273[1];
      v549 = *v273;
      v550 = v303;
      v304 = v273[2];
      v552 = v273[3];
      v551 = v304;
      v438 = v258;
      v297(v498, v258 + v295, v296);
      LODWORD(v439) = *(v445 + 72);
      v305 = sub_100011AC0(&qword_10022FC80, &qword_1001E15D8);
      v306 = *(v305 + 48);
      v307 = *(v305 + 52);
      v445 = v305;
      v308 = swift_allocObject();
      v309 = (v308 + *(*v308 + 144));

      v310 = v437;

      sub_1000884D8(&v549, &v533);
      v311 = v466;
      sub_10015D464(v466);
      *v309 = 0;
      v312 = *(sub_100011AC0(&qword_10022E308, &qword_1001E15E0) + 28);
      v313 = sub_100011AC0(&qword_10022FC88, &qword_1001E15E8);
      bzero(v309 + v312, *(*(v313 - 8) + 64));
      sub_1000DBEF4(v311, v309 + v312, &unk_100230120, &qword_1001DEF40);
      v314 = *(*v308 + 344);
      v315 = *(v464 + 48);
      v316 = *(v464 + 52);
      swift_allocObject();
      v317 = sub_1001CF810();
      sub_1001CF7C0();
      sub_1001CF7F0();
      *(v308 + v314) = v317;
      v318 = v526;
      v319 = v528;
      v528((v308 + *(*v308 + 160)), v507, v526);
      v466 = *(*v308 + 168);
      v319(v308 + v466, v505, v318);
      (v500)(v308 + *(*v308 + 152), v298, v299);
      v320 = v467;
      _s20privatecloudcomputed8LRUCacheC10addToCache3now5valueSb10Foundation4DateV_xtFfA__0();
      (*(v468 + 32))(v308 + *(*v308 + 176), v320, v469);
      sub_1001B0458(&qword_100229578, &type metadata accessor for ContinuousClock);
      v321 = v470;
      sub_1001D2500();
      (*(v471 + 32))(v308 + *(*v308 + 184), v321, v472);
      v322 = (v308 + *(*v308 + 192));
      v323 = v440;
      *v322 = v441;
      v322[1] = v310;
      v324 = (v308 + *(*v308 + 200));
      v325 = v449;
      *v324 = v323;
      v324[1] = v325;
      v326 = (v308 + *(*v308 + 208));
      v327 = v450;
      *v326 = v442;
      v326[1] = v327;
      sub_10001208C(v504, v308 + *(*v308 + 216), &qword_1002288B0, &qword_1001D5FC0);
      v328 = (v308 + *(*v308 + 224));
      v486 = v328;
      v329 = v456;
      *v328 = v443;
      v328[1] = v329;
      *(v308 + *(*v308 + 232)) = v444;
      (v502)(v308 + *(*v308 + 240), v508, v523);
      *(v308 + *(*v308 + 248)) = v439;
      v330 = (v308 + *(*v308 + 256));
      v331 = v558;
      v330[8] = v557;
      v330[9] = v331;
      v330[10] = v559;
      v332 = v554;
      v330[4] = v553;
      v330[5] = v332;
      v333 = v556;
      v330[6] = v555;
      v330[7] = v333;
      v334 = v550;
      *v330 = v549;
      v330[1] = v334;
      v335 = v552;
      v330[2] = v551;
      v330[3] = v335;
      v336 = v474;
      sub_1001CFDC0();
      (*(v475 + 32))(v308 + *(*v308 + 264), v336, v476);
      v337 = *(*v308 + 272);
      v338 = v517;
      v339 = v458;
      (v458)(&v337[v308], v512, v517);
      v500 = sub_1001B0458(&qword_100228AF8, &type metadata accessor for UUID);
      v533 = sub_1001D23A0();
      v534 = v340;
      v561._countAndFlagsBits = 58;
      v561._object = 0xE100000000000000;
      sub_1001D18B0(v561);
      v341 = v534;
      v342 = (v308 + *(*v308 + 280));
      *v342 = v533;
      v342[1] = v341;
      v476 = v342;
      (v457)(v308 + *(*v308 + 288), v509, v521);
      v485 = v337;
      (v339)(v473, &v337[v308], v338);
      v343 = v477;
      sub_1001D0DD0();
      v344 = *(*v308 + 296);
      v345 = v506;
      v346 = v489;
      (*(v506 + 32))(v308 + v344, v343, v489);
      v347 = *(v345 + 16);
      v347(v343, v308 + v344, v346);
      sub_1001D0DE0();
      v348 = v488;
      sub_1001D0DA0();
      v349 = *(v345 + 8);
      v506 = v345 + 8;
      v349(v343, v346);
      v350 = *(*v308 + 304);
      v351 = v492;
      v352 = v348;
      v353 = v493;
      (*(v492 + 32))(v308 + v350, v352, v493);
      v347(v487, v308 + v344, v346);
      v354 = *(v351 + 16);
      v355 = v490;
      v354(v490, v308 + v350, v353);
      v356 = sub_1001D0DE0();
      v357 = sub_1001D1E90();
      if (sub_1001D1ED0())
      {
        v358 = swift_slowAlloc();
        *v358 = 0;
        v359 = sub_1001D0DB0();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v356, v357, v359, "FullTrustedRequest", "", v358, 2u);
        v355 = v490;
      }

      v360 = v493;
      v354(v488, v355, v493);
      v361 = sub_1001D0E30();
      v362 = *(v361 + 48);
      v363 = *(v361 + 52);
      swift_allocObject();
      v364 = sub_1001D0E20();
      (*(v492 + 8))(v355, v360);
      v349(v487, v489);
      *(v308 + *(*v308 + 312)) = v364;
      v366 = *v486;
      v365 = v486[1];
      v368 = v478;
      v367 = v479;
      v369 = v480;
      (*(v479 + 104))(v478, enum case for TC2Environment.production(_:), v480);

      v370 = sub_1001D02B0();
      v372 = v371;
      (*(v367 + 8))(v368, v369);
      if (v366 == v370 && v365 == v372)
      {

        v373 = v516;
        v374 = v483;
      }

      else
      {
        v375 = sub_1001D2470();

        v373 = v516;
        v374 = v483;
        if ((v375 & 1) == 0)
        {
          v405 = *(v495 + 8);
          v405(v491, v522);
          v496 = *(v496 + 8);
          (v496)(v509, v521);
          (*(v494 + 8))(v512, v517);
          v517 = *(v514 + 8);
          v406 = v523;
          (v517)(v508, v523);
          sub_100011F00(v504, &qword_1002288B0, &qword_1001D5FC0);
          v407 = *(v525 + 8);
          v506 = (v525 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v408 = v526;
          v407(v505, v526);
          v407(v507, v408);
          (v496)(v520, v521);
          v405(v519, v522);
          v398 = v406;
          sub_100011F00(v513, &qword_100229520, &unk_1001DEF70);
          (v517)(v518, v406);
          sub_1001AFB98(v461, type metadata accessor for TrustedRequestConfiguration);
          v407(v510, v408);
          v407(v511, v408);
          v396 = v408;
          v399 = v528;
          v528((v308 + *(*v308 + 320)), (v308 + v466), v408);
LABEL_48:
          *(v308 + *(*v308 + 328)) = v463;
          sub_1001B0368(v498, v308 + *(*v308 + 336), type metadata accessor for BiomeReporter);
          v409 = v438;
          *(v438 + *(*v438 + 368)) = v308;
          v410 = sub_1001D1BA0();
          (*(*(v410 - 8) + 56))(v455, 1, 1, v410);
          sub_1001AFCB4(v460, v452, type metadata accessor for TrustedRequestConfiguration);
          (v502)(v497, v454, v398);
          v399(v516, v524, v396);
          v411 = (*(v459 + 80) + 48) & ~*(v459 + 80);
          v412 = v514;
          v413 = (v451 + *(v514 + 80) + v411) & ~*(v514 + 80);
          v414 = v525;
          v415 = (v482 + *(v525 + 80) + v413) & ~*(v525 + 80);
          v416 = swift_allocObject();
          *(v416 + 2) = 0;
          *(v416 + 3) = 0;
          *(v416 + 4) = v527;
          *(v416 + 5) = v409;
          sub_1001B0368(v452, &v416[v411], type metadata accessor for TrustedRequestConfiguration);
          (*(v412 + 32))(&v416[v413], v497, v398);
          v417 = *(v414 + 32);
          v525 = v414 + 32;
          v418 = v516;
          v419 = v526;
          v417(&v416[v415], v516, v526);

          v420 = sub_10008F210(0, 0, v455, &unk_1001E15F8, v416);
          v528(v418, v524, v419);
          v421 = *(v409 + *(*v409 + 368));
          v536 = &off_100220C58;
          v535 = v445;
          v533 = v421;
          v422 = type metadata accessor for TrustedRequestXPCProxy();
          v423 = *(v422 + 48);
          v424 = *(v422 + 52);
          v425 = swift_allocObject();
          v426 = v499;
          v427 = v453;
          v446(v499, enum case for TC2LogCategory.trustedRequestXPCProxy(_:), v453);
          swift_retain_n();
          sub_1001D08B0();
          v448(v426, v427);
          v428 = OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_jsonEncoder;
          v429 = *(v464 + 48);
          v430 = *(v464 + 52);
          swift_allocObject();
          *(v425 + v428) = sub_1001CF810();
          *(v425 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_callIDs) = 0;
          *(v425 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_outgoingUserDataWriter) = v465;
          *(v425 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_incomingUserDataReader) = v501;
          *(v425 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_task) = v420;
          sub_100044698(&v533, v425 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_cancellationObserver);
          v531 = sub_1001D23A0();
          v532 = v431;
          v562._countAndFlagsBits = 58;
          v562._object = 0xE100000000000000;
          sub_1001D18B0(v562);

          v432 = v531;
          v433 = v532;
          v434 = *(v525 - 24);
          v434(v418, v419);
          v434(v524, v419);
          sub_1001AFB98(v460, type metadata accessor for TrustedRequestConfiguration);
          sub_100011CF0(&v533);

          result = v425;
          v435 = (v425 + OBJC_IVAR____TtC20privatecloudcomputed22TrustedRequestXPCProxy_logPrefix);
          *v435 = v432;
          v435[1] = v433;
          return result;
        }
      }

      sub_1001CFD90();
      v376 = v308 + *(*v308 + 320);
      v377 = v525;
      v378 = v526;
      (*(v525 + 32))(v376, v373, v526);
      v379 = v517;
      (v458)(v374, &v485[v308], v517);

      v380 = sub_1001D0E50();
      v381 = sub_1001D1E00();
      v382 = v381;
      if (os_log_type_enabled(v380, v381))
      {
        v383 = swift_slowAlloc();
        v533 = swift_slowAlloc();
        *v383 = 136315394;
        LODWORD(v492) = v382;
        v384 = *v476;
        v385 = v476[1];

        v386 = sub_1000954E0(v384, v385, &v533);

        *(v383 + 4) = v386;
        *(v383 + 12) = 2080;
        v387 = v516;
        v528(v516, v376, v378);
        v388 = sub_1001D23A0();
        v390 = v389;

        v493 = *(v525 + 8);
        v506 = (v525 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v493(v387, v378);
        v391 = sub_1000954E0(v388, v390, &v533);

        *(v383 + 14) = v391;
        _os_log_impl(&_mh_execute_header, v380, v492, "%s RequestIDForEventReporting: %s", v383, 0x16u);
        swift_arrayDestroy();

        v392 = *(v494 + 8);
        v393 = v517;
        v392(v483, v517);
        v495 = *(v495 + 8);
        (v495)(v491, v522);
        v496 = *(v496 + 8);
        v394 = v521;
        (v496)(v509, v521);
        v392(v512, v393);
        v517 = *(v514 + 8);
        v395 = v523;
        (v517)(v508, v523);
        sub_100011F00(v504, &qword_1002288B0, &qword_1001D5FC0);
        v396 = v526;
        v397 = v493;
        v493(v505, v526);
        v397(v507, v396);
        (v496)(v520, v394);
        (v495)(v519, v522);
        v398 = v395;
        sub_100011F00(v513, &qword_100229520, &unk_1001DEF70);
        (v517)(v518, v395);
        v399 = v528;
        sub_1001AFB98(v461, type metadata accessor for TrustedRequestConfiguration);
        v397(v510, v396);
        v397(v511, v396);
      }

      else
      {

        v400 = *(v494 + 8);
        v400(v374, v379);
        v495 = *(v495 + 8);
        (v495)(v491, v522);
        v496 = *(v496 + 8);
        (v496)(v509, v521);
        v400(v512, v379);
        v401 = *(v514 + 8);
        v402 = v523;
        v401(v508, v523);
        sub_100011F00(v504, &qword_1002288B0, &qword_1001D5FC0);
        v403 = v377 + 8;
        v404 = *(v377 + 8);
        v506 = v403 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v404(v505, v378);
        v404(v507, v378);
        (v496)(v520, v521);
        (v495)(v519, v522);
        v398 = v402;
        sub_100011F00(v513, &qword_100229520, &unk_1001DEF70);
        v401(v518, v402);
        sub_1001AFB98(v461, type metadata accessor for TrustedRequestConfiguration);
        v404(v510, v378);
        v404(v511, v378);
        v396 = v378;
        v399 = v528;
      }

      goto LABEL_48;
    }

    v166 = *(v163 - 1);
    v165 = *v163;
    if (v166 == v530 && v165 == v529)
    {
      break;
    }

    v168 = *(v163 - 1);
    v169 = *v163;
    if (sub_1001D2470())
    {
      break;
    }

    if (a6 && (v166 == v528 && v165 == a6 || (sub_1001D2470() & 1) != 0))
    {
      break;
    }

    if (v166 == v158 && v165 == v159)
    {
      break;
    }

    v163 += 2;
  }

  while ((sub_1001D2470() & 1) == 0);

  v170 = sub_1001D0E50();
  v171 = sub_1001D1DE0();

  if (!os_log_type_enabled(v170, v171))
  {
    goto LABEL_29;
  }

  v172 = swift_slowAlloc();
  v527 = swift_slowAlloc();
  *&v560[0] = v527;
  *v172 = 136315906;
  v173 = sub_1001D19E0();
  v175 = v174;

  v176 = sub_1000954E0(v173, v175, v560);

  *(v172 + 4) = v176;
  *(v172 + 12) = 2080;
  v177 = v529;

  v178 = sub_1000954E0(v530, v177, v560);

  *(v172 + 14) = v178;
  *(v172 + 22) = 2080;
  if (a6)
  {
    v179 = v528;
  }

  else
  {
    v179 = 7104878;
  }

  if (a6)
  {
    v180 = a6;
  }

  else
  {
    v180 = 0xE300000000000000;
  }

  v181 = sub_1000954E0(v179, v180, v560);

  *(v172 + 24) = v181;
  *(v172 + 32) = 2080;
  *(v172 + 34) = sub_1000954E0(v158, v159, v560);
  _os_log_impl(&_mh_execute_header, v170, v171, "bundleId blocked by server, exiting trusted request with blockedBundleIds=%s, bundleId=%s, originatingBundleId=%s), clientBundleIdentifier=%s", v172, 0x2Au);
  swift_arrayDestroy();

LABEL_30:

  return 0;
}